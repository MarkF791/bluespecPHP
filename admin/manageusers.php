<?php
include('../functions.php');
echo file_get_contents("../html/adminNav.html");

            $result = mysqli_query($db,"SELECT id, name, email, user_type FROM users");
            ?>
<?php
if (mysqli_num_rows($result) > 0) {
?>
<hr>
<div class="container" style="padding-top:50px">
<h1>Manage Users</h1>
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">User type</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <?php
    $i=0;
    while($row = mysqli_fetch_array($result)) {
    ?>
    <form action="manageusers.php" method="post">
    <tr>
      <td><?php echo $row["name"]; ?></td>
      <td><?php echo $row["email"]; ?></td>
      <td><?php echo $row["user_type"]; ?></td>
      <input type="hidden" name="userID" value="<?php echo $row['id']; ?>">
      <td><input  type="submit" value="Delete User" name="delete_btn" class="btn btn-danger" style="float: right;"></input></td>
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
	</div>
</div>
</body>
</html>