<?php
$useAlternateConfig = true; // variable =true -> cas Solen+Mevi false-> cas Riham

if ($useAlternateConfig) {
    define('DBHOST', 'localhost');
    define('DBPORT', '3306');
    define('DBNAME', 'booknook');
    define('DBUSER', 'root');
    define('DBPASS', '');
} else {
    define('DBHOST', '127.0.0.1');
    define('DBPORT', '6033');
    define('DBNAME', 'booknook');
    define('DBUSER', 'db_user');
    define('DBPASS', 'db_user_pass');
}

