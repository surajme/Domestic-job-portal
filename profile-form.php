    <?php



$conn = mysqli_connect('127.0.0.1','root','','information2');
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if(!mysqli_select_db($conn,'information2'))
{
     echo 'database not found';                 
}
$Name= $_POST['field1'];
$Contactno= $_POST['field2'];
$Aadhar= $_POST['field3'];
$Email= $_POST['field4'];
$Address= $_POST['field5'];
$Experience= $_POST['field6'];
$Work= $_POST['field7'];

$sql = "INSERT INTO person2 (name, contactno, aadharno, email, address, experience ,work ) VALUES ('$Name', '$Contactno', '$Aadhar',  
'$Email','$Address',
'$Experience','$Work')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
header("refresh:2; url=index.html");
?>