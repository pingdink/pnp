<?php
    // Purpose: Landing page for PnP
    // Associated with sign_in_page.php and create_user.php
    // Authors: Eric Anderson, Andrea Hyder, Alana Ceci

    // manage the users sessions
    include("php/sign_in_page.php");

    if(isset($_SESSION['logout']) && $_SESSION['logout'] == TRUE){
            unset($_SESSION['login_user']);
            unset($_SESSION['login_firstName']);
            unset($_SESSION['login_lastName']);
            unset($_SESSION['login_email']);
            unset($_SESSION['login_phoneNumFormatted']);
            unset($_SESSION['login_phoneNumber']);
            unset($_SESSION['login_genderFormatted']);
            unset($_SESSION['login_gender']);
            unset($_SESSION['login_bdayFormatted']);
            unset($_SESSION['login_birthdate']);
            unset($_SESSION['login_description']);
            echo "You have been successfully logged out.";

            session_destroy();
            session_unset();
        }

	if(isset($_SESSION['redirect']))
	{
	    if($_SESSION['redirect'] == TRUE){
	        echo "You must login before accessing the page you tried to access.";
	    }
	}

?>
<!DOCTYPE html>
<html>
<head>
  <title>PnP</title>

  <!-- Scripts -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- StyleSheets -->
  <link rel="stylesheet" type="text/css" href="css/general.css">
  <link rel="stylesheet" type="text/css" href="css/index.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
</head>

<body>

  <header>
    <h1>PnP</h1>
    <p style="padding-left: 1%;"> Place n Party</p>
  </header>

  <div id="formHolder">
    <form action="" method="POST" >
      <div class="container">
        <h1>Sign In</h1>
        <p>Please <b>sign in</b> to get your party on</p>
        <hr>

        <label for="username"><b>Username</b></label>
        <input id="username" type="text" placeholder="Enter Username" name="username" required>

        <label for="psw"><b>Password</b></label>
        <input id="password" type="password" placeholder="Enter Password" name="password" required>

        <div class="clearfix">
          <button id="invalidCred" type="button" class="cancelbtn" style="display: none;" disabled>Invalid username or password</button>
          <button id="signIn" type="button" class="signupbtn">Sign In</button>
        </div>
      </div>
    </form>

  <form method="POST" action="php/create_user.php" style="border-left:1px solid #154360">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please <b>create an account</b> to get this party started</p>
      <hr>
        <label for="firstname"><b>First Name</b></label>
        <input type="text" placeholder="First Name" name="firstname" required>

        <label for="lastname"><b>Last Name</b></label>
        <input type="text" placeholder="Last Name" name="lastname" required>

        <label for="username"><b>Username</b><b id="unameTaken"> Pick a unique username to sign up!</b></label>
        <input type="text" placeholder="Create A Username" name="username" id="usernameBox" required >

        <label for="email"><b>Email</b></label>
        <input type="email" placeholder="Enter Email" name="email" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <label for="bday"><b>Birthday</b></label>
        <input type="date" name="bday" required>

        <label for="tel"><b>Telephone Number</b></label>
        <input type="tel" placeholder="Enter Phone Number ie 5142328879" name="tel" required pattern="[0-9]{10}">

        <label for="gender"><b>Gender</b></label> <br>
        <form action="">
          <input type="radio" name="gender" style="margin-bottom:15px"> Female
          <input type="radio" name="gender" style="margin-bottom:15px"> Male <br>
        </form>

        <label for="info"><b>Tell Us A Bit About You</b></label>
        <input type="text" placeholder="Description" name="info" maxlength="100" required>

        <p>By creating an account you agree to our <a href="disclaimer.html" style="color:dodgerblue">Terms & Privacy</a>.</p>

        <div class="clearfix">
          <!-- <button type="button" class="cancelbtn">Cancel</button> -->
          <button id="signup-form" type="submit" class="signupbtn" >Sign Up</button>
        </div>
      </div>
    </form>
  </div>
	<!-- ajax call to db to login existing user -->
      <script type="text/JavaScript">
              $( document ).ajaxComplete(function() {
                  // alert("complete");
              });

              $('#signIn').click(function(e) {
                e.preventDefault();
                $.ajax({
                   type: "POST",
                   url: 'php/sign_in_page.php',
                   data: {
                      username: $("#username").val(),
                      password: $("#password").val()
                    },
                   success: function(data)
                   {
                      if (data === 'ValidCredentials') {
                        window.location = 'http://34.213.205.49/pnp/views/viewingPage.php';
                      }
                      else {
                          // alert(data);
                         $("#invalidCred").show();
                      }
                   }
               });
             });
      </script>
</body>
</html>

<script type="text/javascript">

  var uniqueUsername = document.getElementById("usernameBox");

  uniqueUsername.addEventListener("focusin", myFocusFunction);
  uniqueUsername.addEventListener("focusout", myBlurFunction);

  function myFocusFunction() {
    // Nothing happens when you click on input box.
  }

  function myBlurFunction() {
    $.ajax({
         type: "POST",
         url: 'php/checkUniqueUsername.php',
         data: {
            username: $('#usernameBox').val(),
          },
         success: function(data)
         {
            // alert(username.value);
            if (data === 'ValidCredentials') {
              $("#unameTaken").hide();
              // show the sugn up button if uname unique
              $("#signup-form").show();
            }
            else if (data === 'InvalidCredentials'){
              $("#unameTaken").show();
              $("#signup-form").hide();
            }
         }
    });
  }

</script>
