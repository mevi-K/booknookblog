<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livres</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../CSS/styles.css">
</head>
<?php 
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    include "C:\wamp64\www\BookNook-1\app\configs\db.config.php";

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

        $sql = "
            SELECT Id_Book, Title
            FROM Book
            ORDER BY date_pub DESC
            LIMIT 12
        ";

        $stmt = $db->query($sql);
        $books = $stmt->fetchAll(PDO::FETCH_ASSOC);

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
?>
<body>
    <div class="container-lg bg-light">
        <?php 
            $navbarPath = __DIR__ . '/../app/navbar.php';
            if (file_exists($navbarPath)) {
                include_once $navbarPath;
            } else {
                echo "<p>Navbar file not found.</p>";
            }
        ?>
        <main class="mt-5 pt-3 row">
            <?php foreach ($books as $book): ?>
                <div class="col-12 col-md-6 col-lg-3 d-flex align-items-stretch justify-content-center">
                    <div class="card mb-3" style="width: 18rem;">
                        <img src="https://picsum.photos/200/300?random=<?= rand(1, 1000) ?>" class="card-img-top" 
                            alt="<?= htmlspecialchars($book['Title'], ENT_QUOTES, 'UTF-8') ?>">
                        <div class="card-body text-center">
                            <h5 class="card-title">
                                <a href="description.php?Id_Book=<?= htmlspecialchars($book['Id_Book'], ENT_QUOTES, 'UTF-8') ?>">
                                    <?= htmlspecialchars($book['Title'], ENT_QUOTES, 'UTF-8') ?>
                                </a>
                            </h5>
                            <a href="#" class="btn btn-primary">Lire</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
</body>

</html>
