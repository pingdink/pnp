<!DOCTYPE html>
<html>
<head>
<title>Book</title>

<link rel="stylesheet" type="text/css" href="css/general.css">

<body>

<header>
  <h1>PnP</h1>
  <!-- <p> - - - Place n Party</p> -->
</header>
<div id="Calander">
<TABLE BORDER=3 CELLSPACING=3 CELLPADDING=3> 
       
        <TR> 
        <TD COLSPAN="1" ALIGN=center><button> < </button></TD>
        <TD id="dateSelected" COLSPAN="5" ALIGN=center>January 1st</TD>
        <TD COLSPAN="1" ALIGN=center><button onclick="changeMonth()">></button></TD>
        </TR>
        <button onclick=""></button>
        <TR id=> 
        <TD ALIGN=center>Sun</TD>
        <TD ALIGN=center>Mon</TD>
        <TD ALIGN=center>Tue</TD>
        <TD ALIGN=center>Wed</TD>
        <TD ALIGN=center>Thu</TD>
        <TD ALIGN=center>Fri</TD>
        <TD ALIGN=center>Sat</TD>
        </TR>
        
        <TR> 
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center>1</TD>
        </TR>
        
        <TR> 
        <TD ALIGN=center>2</TD>
        <TD ALIGN=center>3</TD>
        <TD ALIGN=center>4</TD>
        <TD ALIGN=center>5</TD>
        <TD ALIGN=center>6</TD>
        <TD ALIGN=center>7</TD>
        <TD ALIGN=center>8</TD>
        </TR>
        
        <TR> 
        <TD ALIGN=center>9</TD>
        <TD ALIGN=center>10</TD>
        <TD ALIGN=center>11</TD>
        <TD ALIGN=center>12</TD>
        <TD ALIGN=center>13</TD>
        <TD ALIGN=center>14</TD>
        <TD ALIGN=center>15</TD>
        </TR>
        
        <TR> 
        <TD ALIGN=center>16</TD>
        <TD ALIGN=center>17</TD>
        <TD ALIGN=center>18</TD>
        <TD ALIGN=center>19</TD>
        <TD ALIGN=center>20</TD>
        <TD ALIGN=center>21</TD>
        <TD ALIGN=center>22</TD>
        </TR>
        
        <TR> 
        <TD ALIGN=center>23</TD>
        <TD ALIGN=center>24</TD>
        <TD ALIGN=center>25</TD>
        <TD ALIGN=center>26</TD>
        <TD ALIGN=center>27</TD>
        <TD ALIGN=center>28</TD>
        <TD ALIGN=center>29</TD>
        </TR>
        
        <TR> 
        <TD ALIGN=center>30</TD>
        <TD ALIGN=center>31</TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        <TD ALIGN=center></TD>
        
        </TR>
        
        </TABLE>
<<<<<<< HEAD
    </div>  
    <input type="date" id="bookDate" name="date" required>
    <button type="submit" name="username" class="postbtn" >Confirm Booking</button>
=======
    </div> 
<form method="POST" action="http://localhost/pnp/php/book_place.php">     
    <input type="date" id="booking" name="bookDate" required>
    <button type="submit" class="postbtn">Confirm Booking</button>
>>>>>>> 1585a9aa7f60dbd791bf4372dab3a93f224926ee
</form>

</body>

<script type="text/javascript">
    // // method="POST" action="http://localhost/7/output.php"
    //  function addData(input){
    //    var nameValue = document.getElementById("input").value;
    //    nameValue= input;
    //    var json = {};
    //    json.username = nameValue;
    //    console.log(json); 
 
    //    const url = "http://localhost/pnp/book_place.php";
    //     fetch(url, {
    //            method: "POST",
    //            headers: {
    //              "Content-Type": "application/json"
    //            },
    //            body: JSON.stringify(json)
    //          })
    //  }      
    //   //});
   </script>
</html>
