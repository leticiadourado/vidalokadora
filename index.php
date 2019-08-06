<?php 
    include_once './db/config.php';
    include_once './includes/top.html';
    $dbcon = new mysqli($hostname, $username, $password, $db);

    include_once './includes/bottom.html';
    mysqli_close($dbcon);
?>