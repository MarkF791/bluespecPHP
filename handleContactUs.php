<?php 
//file_get_contents("dbconnect.php");
require_once 'dbconnect.php';
// Attempt insert query execution
try{
    // Create prepared statement
    $sql = "INSERT INTO contacts (name, email, subject, message) VALUES (:name, :email, :subject, :message)";
    $stmt = $conn->prepare($sql);
    
    // Bind parameters to statement
    $stmt->bindParam(':name', $_REQUEST['name']);
    $stmt->bindParam(':email', $_REQUEST['email']);
    $stmt->bindParam(':subject', $_REQUEST['subject']);
    $stmt->bindParam(':message', $_REQUEST['message']);
    
    // Execute the prepared statement
    $stmt->execute();
    // test message to confirm data entered into database
   // echo "Message Sent.";
} catch(PDOException $e){
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
// Close connection
unset($conn);
require 'messageSent.php';

?>
