<?php
// Purpose: Display the users places
// Associated with: Profile.php
// Authors: Andrea Hyder Eric Anderson

    include("../php/session.php");
?>
<?php
$servername = "localhost";
$usernamedb = "root";
$password = "pnpdbpassword1";
$usernamePerson = $_SESSION['login_user'];


// Handle error thrown for dev
if(isset($_SERVER['REQUEST_METHOD'])) {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        try{
            $conn = new PDO("mysql:host=$servername;dbname=pnpdb", $usernamedb, $password);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            // Set the username to the current logged in user:
            $username = $_SESSION['login_user'];
            // The sql query string:
            $sql = "SELECT * FROM Bookings WHERE UsernameClient = '$username'";

            // Get result set from db
            $result = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);

            // display search result for user
            myprint_r ($result);

        } catch(PDOException $e) {
            echo $e;
            exit();
        }
    }
}

function myprint_r($result) {

    // Today's date:
    $today = date("Y-m-d");

    // Counter to check that there is at least one booking:
    $counter = 0;

    for($x=0, $n=count($result); $x<$n; $x++){

        // Only show the place if the date is after today's date (or on today):
        if ($result[$x]["BookDate"] < $today) {

            // Make the counter not null, so that we don't show the "no bookings" message:
            $counter ++;

            try{
                $servername = "localhost";
                $usernamedb = "root";
                $password = "pnpdbpassword1";
                $usernamePerson = $_SESSION['login_user'];
                $conn = new PDO("mysql:host=$servername;dbname=pnpdb", $usernamedb, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                // Search Places DB for place with corresponding PlaceID so we can print the info:
                $placeID = $result[$x]["PlaceID"];
                $sql = "SELECT * FROM Places WHERE PlaceID = '$placeID'";
                $place = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);

            } catch(PDOException $e) {
                echo $e;
                exit();
            }

            // display the users past bookings
            $url = "" . $place[0]["ImgUrl"] . "0.jpg";
            echo '
            <div id="placeImage">
                  <img id ="pic" src = ' . $url . ' alt = "house" style="width: 25vw; height: 20vh;"/>
            </div>
            <div class="details">
                <div id = "title" >
                    <strong> '. $result[$x]["BookDate"] .' </strong>
                </div>
                <div>
                    ' . $place[0]["StreetName"] .
                    '<br> Host: '. $result[$x]["UsernameOwner"] .'
                </div>
                <div>
                    $ '. $place[0]["PricePerNight"] .' CAD  per night
                </div>
            </div>
            <div class = "userInfo">
                <div>
                <form id="rate" method="post" action="../php/set_rating.php">
                    Rate the Party Experience: 
						<li style = "display: inline"><input type="radio" name="rating" value="1"> 1</li>
						<li style="display: inline"><input type="radio" name="rating" value="2"> 2</li>
						<li style="display: inline"><input type="radio" name="rating" value="3"> 3</li>
						<li style="display: inline"><input type="radio" name="rating" value="4"> 4</li>
                        <li style="display: inline"><input type="radio" checked = "checked" name="rating" value="5"> 5</li>
                        <input type="hidden" name="placeId" value="'. $placeID .'">
                        <button id="submit" type="submit">Rate</button>
                </form>
                </div>
            </div>
            <br>';

        }
    }

    // If there were no places, give the user a message:
    if ($counter == 0) {
        echo 'You have no past bookings.';
    }
}

?>
