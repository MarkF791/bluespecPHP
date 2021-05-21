<?php
include('../functions.php');
echo file_get_contents("../html/adminNav.html");
?>

<div class="container d-grid gap-2" style="padding-top:70px">

<?php
$sql=mysqli_query($db,"SELECT id, name FROM users");
if(mysqli_num_rows($sql)){
$select= '<select name="select">';
while($rs=mysqli_fetch_array($sql)){
      $select.='<option value="'.$rs['id'].'">'.$rs['name'].'</option>';
  }
}
$select.='</select>';
echo $select;
?>
    <div>
        <label for="formFile" class="form-label">Please select file for upload</label>
        <input class="form-control" type="file" id="formFile">
    </div>
    <div>
    <button type="submit" role="button" name="upload_invoice" value="Upload" class="btn btn-primary">Upload</button>
    </div>
</div>
<input type="hidden" name="userID" value="<?php echo $row['id']; ?>">