<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        define("DBHOST", "localhost");
        define("DBUSER", "root");
        define("DBPASS", "");
        define("DBNAME", "booknook");

        $dsn = "mysql:dbname=" . DBNAME . ";host=" . DBHOST;

        try {
            $db = new PDO($dsn, DBUSER, DBPASS);
            $db->exec("SET NAMES utf8");
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

            echo "connected";

        } catch (PDOException $e) {
            die("Error: " . $e->getMessage());
        }
        $sql = "SELECT * FROM book";
        $requete = $db->query($sql);
        $user = $requete->fetchAll();

        echo "<pre>";
        var_dump($user);
        echo "</pre>";

    ?>
</body>
</html>
