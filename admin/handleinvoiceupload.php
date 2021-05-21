<?php
/*include('../functions.php');*/
/*print_r($_POST);
print_r($_FILES);*/


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bluespec6";

$invoiceRef = uniqid(rand(), false);
$invoiceNumber = $_POST['invoiceNumber'];
$userId = $_POST['select'];
//$photoDesc = $_POST['imageDesc'];

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$db) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO invoiceuploads (user_id, invoiceNumber, invoiceRef) VALUES ('".$userId."','".$invoiceNumber."','".$invoiceRef."')";

if (mysqli_query($db, $sql)){
  //new record
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($db);
}

mysqli_close($db);

print_r($_FILES);
$allowed = array("jpg", "jpeg", "png", "pdf");
$temp = explode(".", $_FILES['newInvoice']['name']);
$extension = end($temp);

if (in_array($extension, $allowed)){

  if ($_FILES['newInvoice']['error'] > 0){

    $this->errors[] = "Return code: " . $_FILES['newInvoice']['error'] . "<br>";

  } else {

    move_uploaded_file($_FILES['newInvoice']['tmp_name'], "InvoiceUploads/".$invoiceRef);

  }

} else {
  echo "Failed to upload invoice";
}

require 'uploadinvoice.php';
 ?>
