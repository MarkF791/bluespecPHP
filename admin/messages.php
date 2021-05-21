<?php
include('../functions.php');
echo file_get_contents("../html/adminNav.html");

            $result = mysqli_query($db,"SELECT id, name, email, subject, message FROM contacts WHERE markRead=0 ORDER BY id desc");
            ?>
<?php
if (mysqli_num_rows($result) > 0) {
?>
<hr>
<div class="container" style="padding-top:50px">
  <h1>Messages</h1>
  <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Subject</th>
        <th scope="col">Message</th>
        <th scope="col" style="text-align:right">Mark as read</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $i=0;
      while($row = mysqli_fetch_array($result)) {
      ?>
      <form action="messages.php" method="post">
      <tr>
        <td><?php echo $row["name"]; ?></td>
        <td><?php echo $row["email"]; ?></td>
        <td><?php echo $row["subject"]; ?></td>
        <td><?php echo $row["message"]; ?></td>
        
        <input type="hidden" name="messageID" value="<?php echo $row['id']; ?>">
        <td><input type="submit" value="Read" name="read_btn" class="btn btn-primary" style="float: right;"></input></td>
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
  <?php
   $result = mysqli_query($db,"SELECT id, name, email, subject, message FROM contacts WHERE markRead=1 ORDER BY id desc");
   ?>
<?php
if (mysqli_num_rows($result) > 0) {
?>
<hr>
  <div class="container" style="padding-top:50px">
  <h1>Read Messages</h1>
  <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Subject</th>
        <th scope="col">Message</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $i=0;
      while($row = mysqli_fetch_array($result)) {
      ?>
      <form action="messages.php" method="post">
      <tr>
        <td><?php echo $row["name"]; ?></td>
        <td><?php echo $row["email"]; ?></td>
        <td><?php echo $row["subject"]; ?></td>
        <td><?php echo $row["message"]; ?></td>
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