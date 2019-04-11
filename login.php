<?php 

include 'sql-config.php';

session_start();


if($db_present==false){
    echo 'database not found';
}

$logged=$_SESSION['logged'];

if($logged == true){
    header("refresh:0;url=dashboard.php");
}
else{
    include 'login2.html';
}

if(isset($_POST['username'])){
    $username=$_POST['username'];
    $password=$_POST['pass'];
    $qry=mysqli_query($conn, "SELECT `username` FROM person WHERE `username` = '".$username."'");
    $numrow_username=mysqli_num_rows($qry);
    if($numrow_username == 0){
        printf("username not found");
    }
    else{
        $qry2=mysqli_query($conn, "SELECT `password` FROM person WHERE `username` = '".$username."'");
        $qry2_row=mysqli_fetch_row($qry2);
        $pass=$qry2_row[0];
        if($pass == $password){
            //printf('password correct, logged in');
            session_start();
            $_SESSION['logged'] = true;
            $_SESSION['username'] = $username;
            $qry3=mysqli_query($conn, "SELECT `name` FROM person WHERE `username` = '".$username."'");
            $qry3_row=mysqli_fetch_row($qry3);
            $name=$qry3_row[0];
            $_SESSION['name']= $name;
            mysqli_close($conn);
            header("refresh:0;url=dashboard.php");
        }
        else{
            printf('password incorect');
        }
    }
}



/*
$qry=mysqli_query($conn, "SELECT `username` FROM person");
$numrow=mysqli_num_rows($qry);
$i=0;
$j=0;
$pos=1000000000;
$present = false;
while($username_array=mysqli_fetch_row($qry)){
    if($username_array[$i] == "$username"){
        $present=true;
        $pos=$j+1;
    }
    $j=$j+1;
}

if($present == true){
    $qry2=mysqli_query($conn, "SELECT `password` FROM person WHERE `username` = '".$username."'");
    $qry2_row=mysqli_fetch_row($qry2);
    $pass=$qry2_row[0];
    if($pass == $password){
        printf('password correct, logged in');
    }
    else{
        printf('password incorect');
    }
}
else{
    printf("username not found");
}
*/


?>