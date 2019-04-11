<!DOCTYPE html>
<html>
<style>
    .responstable {
  margin: 1em 0;
  width: 100%;
  overflow: hidden;
  background: #FFF;
  color: #024457;
  border-radius: 10px;
  border: 1px solid #167F92;
}
.responstable tr {
  border: 1px solid #D9E4E6;
}
.responstable tr:nth-child(odd) {
  background-color: #EAF3F3;
}
.responstable th {
  display: none;
  border: 1px solid #FFF;
  background-color: #167F92;
  color: #FFF;
  padding: 1em;
}
.responstable th:first-child {
  display: table-cell;
  text-align: center;
}
.responstable th:nth-child(2) {
  display: table-cell;
}
.responstable th:nth-child(2) span {
  display: none;
}
.responstable th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .responstable th:nth-child(2) span {
    display: block;
  }
  .responstable th:nth-child(2):after {
    display: none;
  }
}
.responstable td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.responstable td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid #D9E4E6;
}
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid #D9E4E6;
  }
}
.responstable th, .responstable td {
  text-align: left;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}

body {
  padding: 0 2em;
  font-family: Arial, sans-serif;
  color: #024457;
  background: #f2f2f2;
}
        button {
  background: #fff;
  border: solid 2px #474553;
  color: #474544;
  cursor: pointer;
  display: inline-block;
  font-family: 'Helvetica', Arial, sans-serif;
  font-size: 0.875em;
  font-weight: bold;
  outline: inherit;
  padding: 7px 35px;
  margin: 90 auto;

  text-transform: full-width;
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px #45D6D6;
}

</style>
    
    <body>
        <a href="logout.php"><button>Logout</button></a>
        
<?php
        session_start();
        $logged=$_SESSION['logged'];

if($logged == false){
    header("refresh:0;url=login.php");
}

// Create connection
$conn = mysqli_connect('127.0.0.1', 'root','','information2');
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
  $Skills= $_GET['skills'];
 /*$Location= $_POST['loc'];*/
$sql = "SELECT * FROM person2 WHERE `work`='".$Skills."'";
$result = mysqli_query($conn, $sql);
?>
  <table border="1" style="width:100%";>
  <tr>
    <th>NAME:</th>
    <th>CONTACT NO:</th>
       <th>EMAIL ID:</th>
    <th>AADHAR NO:</th>
      <th>ADDRESS:</th>
    <th>SKILLS:</th>                        
    <th>EXPERIENCE:</th>
  </tr>
         
  <?php
      error_reporting(0);
   
 while($row = mysqli_fetch_assoc($result)){
  echo "<tr>";
echo "<td>".$row ["name"]."</td>";
echo  "<td>".$row ["contactno"]."</td>";
echo "<td>".$row["email"]."</td>";
echo  "<td>".$row ["aadharno"]."</td>";
echo "<td>".$row ["address"]."</td>";
echo  "<td>".$row ["work"]."</td>";
echo "<td>".$row ["experience"]."</td>";
echo "</tr>";
}
mysqli_close($conn);
?>
        </table>
        <a href="feedback-form.html"><button>Send your Feedback</button></a>
    </body>
</html>
