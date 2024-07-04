<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Description du Livre</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../CSS/styles.css">
</head>
<body>
<?php 
    include_once "../app/connect.php"; // Include the connect.php file

    // Initialize variables with default values
    $title = 'Titre non disponible';
    $description = 'Description non disponible';
    $authorName = 'Auteur non disponible';
    $datePub = 'Date de publication non disponible';

    try {
        // Ensure Id_Book is set and valid
        if (!isset($_GET["Id_Book"]) || empty($_GET["Id_Book"])) {
            header("Location: livres.php");
            exit;
        }

        $id = $_GET["Id_Book"];

        // Adjusted SQL query to join Book, book_author, and Author tables
        $sql = "SELECT b.Title, b.Description, a.name AS AuthorName, b.date_pub
                FROM Book b
                JOIN book_author ba ON b.Id_Book = ba.Id_Book
                JOIN Author a ON ba.Id_Author = a.Id_Author
                WHERE b.Id_Book = :id";
        $requete = $db->prepare($sql);
        $requete->bindValue(":id", $id, PDO::PARAM_INT);
        $requete->execute();

        // Fetch the data
        $book = $requete->fetch(PDO::FETCH_ASSOC);

        if ($book) {
            // Update variables with fetched data
            $title = $book['Title'] ?? $title;
            $description = $book['Description'] ?? $description;
            $authorName = $book['AuthorName'] ?? $authorName;
            $datePub = $book['date_pub'] ?? $datePub;
        } else {
            http_response_code(404);
            echo "Livre non trouvé.";
            exit;
        }

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
?>
    <div class="container-lg bg-light">
        <?php 
            $navbarPath = __DIR__ . '../app/components/navbar.php';
            if (file_exists($navbarPath)) {
                include_once $navbarPath;
            } else {
                echo "<p>Navbar file not found.</p>";
            }
        ?>
        <div class="container-lg bg-light mt-5 pt-3">
            <main class="row">
                <div class="col-12">
                    <div class="card mb-3" style="width: 100%;">
                        <img src="https://picsum.photos/200/300?random=<?= rand(1, 1000) ?>" class="card-img-top" 
                            alt="<?= htmlspecialchars($title, ENT_QUOTES, 'UTF-8') ?>"
                            style="width: 100%; height: auto;">
                        <div class="card-body text-center">
                            <h5 class="card-title"><?= htmlspecialchars($title, ENT_QUOTES, 'UTF-8') ?></h5>
                            <p class="card-text" style="text-align: justify;">
                                <?= htmlspecialchars($description, ENT_QUOTES, 'UTF-8') ?>
                                <br><br>
                                <small>Auteur: <?= htmlspecialchars($authorName, ENT_QUOTES, 'UTF-8') ?></small><br>
                                <small>Date de publication: <?= htmlspecialchars($datePub, ENT_QUOTES, 'UTF-8') ?></small>
                            </p>
                            <a href="livres.php" class="btn btn-primary">Retour à la liste</a>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
</body>
</html>
