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
$Service= $_POST['field4'];
$Cost= $_POST['field3'];
$Performance= $_POST['field7'];
$Chat= $_POST['field2'];


$sql = "INSERT INTO person3 (name, service, cost, performance, chat) VALUES ('$Name', '$Service', '$Cost',  
'$Performance','$Chat')";

if (mysqli_query($conn, $sql)) {
    header("refresh:0; url=login.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>