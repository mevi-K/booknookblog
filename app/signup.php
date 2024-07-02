<?php 
define("DBHOST", "localhost");
define("DBUSER", "root");
define("DBPASS", "");
define("DBNAME", "booknook");

$dsn = "mysql:dbname=" . DBNAME . ";host=" . DBHOST;

try {
    $db = new PDO($dsn, DBUSER, DBPASS, array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
    ));
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
    exit;
}

$sql = "
    SELECT Book.Title, Book.Description, Author.name AS AuthorName
    FROM Book
    JOIN book_author ON Book.Id_Book = book_author.Id_Book
    JOIN Author ON book_author.Id_Author = Author.Id_Author
";
$stmt = $db->query($sql);
$books = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookNook</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQvRVip8Qwk2Hj27yDdHXf9Edfh7hu/nqbUdhZ0hdITiIuT8/VP1LpmBx" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS\styles.css">
    
    
</head>
<body>
    <div class="container-lg bg-light">
       
        <div class="heading text-center">
            <h2>Book Descriptions</h2>
        </div>
        <div class="row">
            <?php foreach ($books as $book): ?>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <?php
                        // Generate a random image URL from Lorempicsum
                        $imageUrl = "https://picsum.photos/seed/" . urlencode($book['Title']) . "/300/180";
                        ?>
                        <img src="<?php echo $imageUrl; ?>" class="card-img-top" alt="<?php echo htmlspecialchars($book['Title']); ?>">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo htmlspecialchars($book['Title']); ?></h5>
                            <h6 class="card-subtitle mb-2 text-body-secondary"><?php echo htmlspecialchars($book['AuthorName']); ?></h6>
                            <p class="card-text"><?php echo htmlspecialchars($book['Description']); ?></p>
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
