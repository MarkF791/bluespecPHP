<?php include('functions.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <title>Register</title>
</head>

<body>

    <div class="container">
    <h2>Register</h2>
    <form method="post" action="register.php">
        <?php echo display_error(); ?>
        <div class="mb-3">
            <label for="input name" class="form-label">Enter your Name</label>
            <input type="text" name="name" class="form-control" id="input name" value="<?php echo $name; ?>">
        </div>
        <div class="mb-3">
            <label for="enter email" class="form-label">Email address</label>
            <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" value="<?php echo $email; ?>">
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
            <label for="enter password" class="form-label">Password</label>
            <input type="password" name="password_1" class="form-control" id="password_1">
        </div>
        <div class="mb-3">
            <label for="enter password" class="form-label">Confirm password</label>
            <input type="password" name="password_2" class="form-control" id="password_2">
        </div>
        <button type="submit" name="register_btn" class="btn btn-primary">Register</button>
        <p>
            Already a member? <a href="login.php">Sign in</a>
        </p>
    </form>
    </div>
</body>

</html>