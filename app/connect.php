<?php
// connect.php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include_once "../app/configs/db.config.php";

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
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
    exit;
}
