<?php echo file_get_contents("html/clientheader.html"); ?>
<?php include('functions.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <title>Login</title>
</head>
<body>
    <div class="container" style="padding-top:60px">
<form method="post" action="login.php">
        <?php echo display_error(); ?>
        <div class="mb-3">
            <label for="input name" class="form-label">Enter your Name</label>
            <input type="text" name="name" class="form-control" id="input name" value="<?php echo $name; ?>">
        </div>
        <div class="mb-3">
            <label for="enter password" class="form-label">Enter your password</label>
            <input type="password" name="password" class="form-control" id="password">
        </div>
        <button type="submit" name="login_btn" class="btn btn-primary">Login</button>
        <p>
           Not Registered? <a href="register.php">Sign up</a>
        </p>
    </form>
    </div>
</body>
</html>