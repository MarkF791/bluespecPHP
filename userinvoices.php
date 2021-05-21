<?php 
	echo file_get_contents("html/userNav.html"); 
	include('functions.php');
    if (!isLoggedIn()) {
        $_SESSION['msg'] = "You must log in first";
        header('location: login.php');
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Invoices</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
</head>
<body>
    <div class="container" style="padding-top:50px">
		<h2>Your Invoices</h2>
	<div class="content">
		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					
					?>
				</h3>
			</div>
		<?php endif ?>
		<!-- logged in user information -->

			<div>
				<?php  if (isset($_SESSION['user'])) : ?>
					<strong>Welcome <?php echo $_SESSION['user']['name']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> 
						<br>
					</small>

				<?php endif ?>
			</div>
	</div>
	</div>
	<?php
//include('../functions.php');

            $result = mysqli_query($db,"SELECT invoiceuploads.invoiceNumber, invoiceuploads.invoiceRef, invoiceuploads.date, users.name
            FROM invoiceuploads
            INNER JOIN users
            ON invoiceuploads.user_id = users.id
			WHERE invoiceuploads.user_id = '".$_SESSION['user']['id']."'");
            ?>
<?php
if (mysqli_num_rows($result) > 0) {
?>
<hr>
<div class="container" style="padding-top:50px">
<h2>Your Uploaded invoices</h2>
<hr>
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
    <form action="functions.php" method="post">
    <tr>
      <td><?php echo $row["name"]; ?></td>
      <td><?php echo $row["invoiceNumber"]; ?></td>
      <td><?php echo $row["date"]; ?></td>
      <input type="hidden" name="userID" value="<?php echo $row['user_id']; ?>">
	    <input type="hidden" name="invoiceRef" value="<?php echo $row['invoiceRef']; ?>">
      <td><input  type="submit" value="Download" name="download_btn" class="btn btn-primary" style="float: right;"></input></td>
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