<?php
require_once 'pdoconfig.php';
 
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    //echo message to confirm connection.
   // echo "Connected to $dbname at $host successfully.";
} catch (PDOException $pe) {
    die("Could not connect to the database $dbname :" . $pe->getMessage());
}

