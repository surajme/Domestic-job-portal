<?php 
    
    error_reporting(0);
    session_start();
    $islogged= $_SESSION['logged'];
    if($islogged == true){
        $user=$_SESSION["username"];
        include 'search.html';
    }
    else{
        header("refresh:0; url=login.php");
    }
 mysqli_close($conn);
        
?>
