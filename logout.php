<?php 
    session_start();
    $_SESSION['logged'] = false;
    $_SESSION['username'] = "";
    $_SESSION['name']="";
    header("refresh:0;url=dashboard.php");
?>