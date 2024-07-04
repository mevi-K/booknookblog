<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #FCFEF1;
        }
        .signup-form {
            background-color: #EDC5A2; 
            padding: 30px;
            border-radius: 10px;
            max-width: 400px;
            margin: auto;
        }
        .signup-form h2 {
            color: black;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 20px;
        }
        .btn-signup {
            background-color: #ECB5A1;
            border-color: #ECB5A1;
            color: black;
            border-radius: 20px;
        }
        .btn-signup:hover {
            background-color: #C4AAB7;
            border-color: #C4AAB7;
            color: white;
        }
    </style>
</head>
<body>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Display the POST data for debugging
    var_dump($_POST);
}

if (!empty($_POST)) {
    if (isset($_POST["name"], $_POST["email"], $_POST["password"]) && !empty($_POST["name"]) && !empty($_POST["email"]) && !empty($_POST["password"])) {
        // Protection of data
        $name = strip_tags($_POST["name"]);
        if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
            die("email incorrect");
        }

        // Create hashed password 
        $password = password_hash($_POST["password"], PASSWORD_ARGON2ID);

        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);

        $dsn = "mysql:host=".DBHOST.";port=".DBPORT.";dbname=".DBNAME;
        $user = DBUSER;
        $pass = DBPASS;

        try {
            $db = new PDO(
                $dsn,
                $user,
                $pass,
                array(
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
                )
            );

            $sql = "INSERT INTO `utilisateur` (`user_name`, `email_id`, `password`, `Id_role`) VALUES (:name, :email, :password, 2)";

            $query = $db->prepare($sql);
            $query->bindValue(":name", $name, PDO::PARAM_STR);
            $query->bindValue(":email", $_POST["email"], PDO::PARAM_STR);
            $query->bindValue(":password", $password, PDO::PARAM_STR);
            
            if ($query->execute()) {
                echo "User registered successfully!";
            } else {
                echo "Error: Unable to register user.";
            }

        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }

    } else {
        die("form is not complete");
    }
}
?>
<div class="container mt-5">
    <div class="signup-form">
        <h2>Sign Up</h2>
        <form method="post">
            <div class="form-group">
                <label for="name">Enter Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
            </div>
            <div class="form-group">
                <label for="email">Enter Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
                <label for="password">Enter Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" class="form-control" id="confirm-password" name="confirm-password" placeholder="Confirm password" required>
            </div>
            <button type="submit" class="btn btn-signup btn-block">Sign Up</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
