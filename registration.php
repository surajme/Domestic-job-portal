    <?php



$conn = mysqli_connect('127.0.0.1','root','','information');
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'information'))
{
     echo 'database not found';                 
}
$Name= $_POST['field1'];
$Contactno= $_POST['field4'];
$Email= $_POST['field3'];
$Aadhar= $_POST['field7'];
$Experience= $_POST['field2'];
$Username= $_POST['field5'];
$Password= $_POST['field6'];

$sql = "INSERT INTO person (name, contactno, emailid, aadharno, experience, username ,password) VALUES ('$Name', '$Contactno', '$Email',  
'$Aadhar','$Experience',
'$Username','$Password')";

if (mysqli_query($conn, $sql)) {
    header("refresh:0; url=login.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>