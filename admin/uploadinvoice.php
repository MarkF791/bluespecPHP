<?php
include('../functions.php');
echo file_get_contents("../html/adminNav.html");  ?>

<div class="container d-grid gap-2" style="padding-top:70px">
<form method="POST" action="handleinvoiceupload.php" enctype="multipart/form-data">

<?php
$sql=mysqli_query($db,"SELECT id, name FROM users");
if(mysqli_num_rows($sql)){
$select= '<select name="select">';
?>Select User
<?php
while($rs=mysqli_fetch_array($sql)){
      $select.='<option value="'.$rs['id'].'">'.$rs['name'].'</option>';
  }
}
$select.='</select>';
echo $select;
?>
  <!--  <div class="conatiner">
        <label for="formFile" class="form-label">Please select file for upload</label>
        <input class="form-control" name="newInvoice" type="file" id="formFile">
    <div>
    <button type="submit" name="upload_invoice" role="button" value="Upload" class="btn btn-primary">Upload</button>
    </div>
    </div> -->
        <label for="formFile" class="form-label">Please select file for upload</label>
        <input class="form-control" name="newInvoice" type="file" id="formFile">
        <input type="hidden" name="userID" value="<?php echo $rs['id']; ?>">
        <input class="form-control" type='text' name='invoiceNumber' placeholder='Please enter the invoice number'>
        <input type='submit'>
    </form>
</div>
<?php
$sql = "SELECT * FROM invoiceuploads";
$result = mysqli_query($db, $sql);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result)){
        echo "";
    }
}

?>  

<?php
  
//$file = $_GET["file"] .".pdf";
  
// We will be outputting a PDF
//header('Content-Type: application/pdf');
  
// It will be called downloaded.pdf
//header('Content-Disposition: attachment; filename="gfgpdf.pdf"');
  
//$imagpdf = file_put_contents($image, file_get_contents($file)); 
  
//echo $imagepdf;
?>

    <?php
//include('../functions.php');
echo file_get_contents("../html/adminNav.html");

            $result = mysqli_query($db,"SELECT invoiceuploads.invoiceNumber, invoiceuploads.invoiceRef, invoiceuploads.date, users.name
            FROM invoiceuploads
            INNER JOIN users
            ON invoiceuploads.user_id = users.id");
            ?>
<?php
if (mysqli_num_rows($result) > 0) {
?>
<hr>
<div class="container" style="padding-top:50px">
<hr>
    <h2>Uploaded Invoices</h2>
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">User</th>
      <th scope="col">Invoice Number</th>
      <th scope="col">Date uploaded</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <?php
    $i=0;
    while($row = mysqli_fetch_array($result)) {
    ?>
    <form action="uploadinvoice.php" method="post">
    <tr>
      <td><?php echo $row["name"]; ?></td>
      <td><?php echo $row["invoiceNumber"]; ?></td>
      <td><?php echo $row["date"]; ?></td>
      <input type="hidden" name="userID" value="<?php echo $row['user_id']; ?>">
    </tr>
    </form>
    <?php
         $i++;
         }
        ?>
        </tbody>
    </table>
    <?php
    }
    else{
    echo "No result found";
    }
    ?>
</div>


</body>
</html>
