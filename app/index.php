<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Nook</title>
</head>
<body>
    <?php
        require_once "./configs/db.config.php";
        
        $dsn = "mysql:dbname=" . DBNAME . ";host=" . DBHOST . ";port=" . DBPORT;


        try {
            $db = new PDO($dsn, DBUSER, DBPASS);
            $db->exec("SET NAMES utf8");
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);


        } catch (PDOException $e) {
            die("Error: " . $e->getMessage());
        }


        require 'router.php'

    ?>
</body>
</html>
