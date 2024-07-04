<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #FCFEF1 ;
        }
        .login-form {
            background-color: #EDC5A2; 
            padding: 30px;
            border-radius: 10px;
            max-width: 400px;
            margin: auto;
        }
        .login-form h2 {
            color: black;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 20px;
        }
        .btn-login {
            background-color: #ECB5A1;
            border-color: #ECB5A1;
            color: black;
            border-radius: 20px;
        }
        .btn-login:hover {
            background-color: #C4AAB7;
            border-color: #C4AAB7;
            color: white;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="login-form">
        <h2>Login</h2>
        <form>
            
            <div class="form-group">
                <label for="email">Enter Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
                <label for="password">Enter Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter password" required>
            </div>
           
            <button type="submit" class="btn btn-login btn-block">Login</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
