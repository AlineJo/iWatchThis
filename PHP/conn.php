<?php

$PROD_DB_NAME = "iWatchThis";
$PROD_DB_USER = "root";
$PROD_DB_PASSWORD = "";

$STAG_DB_NAME = "iWatchThisStag";
$STAG_DB_USER = "root";
$STAG_DB_PASSWORD = "";

$dbName = $STAG_DB_NAME; 
$user = $STAG_DB_USER;   
$password = $STAG_DB_PASSWORD;  
$host = "localhost";
$cnn = new PDO('mysql:dbname=' . $dbName . ';host=' . $host, $user, $password);
?>