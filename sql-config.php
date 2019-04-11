<?php

    error_reporting(0);
    $database="information";
    $user="root";
    $password="";
    $host="localhost";
    $table="person";
    $table="person2";
    $db_present=true;

    $conn = mysqli_connect($host,$user,$password,$database);

    if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
    }

    if(!mysqli_select_db($conn,'information'))
    {
        $db_present=false;         
    }
?>