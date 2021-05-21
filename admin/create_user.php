<?php include('../functions.php');
echo file_get_contents("../html/adminNav.html");
?>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <title>Bluespec Admin </title>
</head>

<body>
    <div class="container" style="padding-top:50px">
        <h2>Admin - create admin</h2>

        <?php echo display_error(); ?>

        <form method="post" action="create_user.php">
            <div class="mb-3">
                <label for="input name" class="form-label">Name</label>
                <input type="text" name="name" class="form-control" id="input name" value="<?php echo $name; ?>">
            </div>
            <div class="mb-3">
                <label for="enter email" class="form-label">Email address</label>
                <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" value="<?php echo $email; ?>">
            </div>
            <div class="input-group row g-3">
                <label>User type</label>
                <div class="col-auto">
                    <select class="form-select" name="user_type" id="user_type">
                        <option value=""></option>
                        <option value="admin">Admin</option>
                        <option value="user">User</option>
                    </select>
                </div>
            </div>
            <div class="mb-3">
                <label for="enter password" class="form-label">Password</label>
                <input type="password" name="password_1" class="form-control" id="password_1">
            </div>
            <div class="mb-3">
                <label for="enter password" class="form-label">Confirm password</label>
                <input type="password" name="password_2" class="form-control" id="password_2">
            </div>
            <button type="submit" name="register_btn" class="btn btn-primary"> + Create user</button>
        </form>
    </div>
</body>

</html>