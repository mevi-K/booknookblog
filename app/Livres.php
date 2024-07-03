<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../CSS/styles.css">
</head>
<?php 
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    include_once "C:\wamp64\www\BookNook-1\app\configs\db.config.php";

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
            SELECT Book.Title
            FROM Book
            ORDER BY Book.date_pub DESC
            LIMIT 12
        ";

        $stmt = $db->query($sql);
        $books = $stmt->fetchAll(PDO::FETCH_ASSOC);

    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
?>
<body>

<!--Navbarre-->
<?php require __DIR__ . "/navbar.php"; ?>

<!--Contenu de la page-->
<main class="row customBgBody">
  <?php foreach($livres as $livre){ 
     $random_pics = rand(1, 100);
  ?>
        <div class ="container  mt-4 col-12 col-md-6 col-lg-3 d-flex align-items justify-content-center">
      <div class="card radiusCard" style="width: 18rem;">
        <img src="https://picsum.photos/150/180?random=<?= $random_pics?>&grayscale" class="card-img-top" alt="...">
        <div class="card-body text-center customCardStyle">
          <h5 class="card-title"><?= $livre['Title']?></h5>
          <p class="card-text" style="text-align: justify;"><?= $livre['Description']?></p>
          <a href="../Controllers/description.controller.php" class="btn btn-outline-light btnCustom">En savoir plus</a>
        </div>
    </div>
  </div>
  <?php } ?>

  <!-- Pagination -->
  <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center mt-5 customPagin">
      <?php if($page > 1): ?>
        <li class="page-item"><a class="page-link" href="?page=<?= $page - 1 ?>">Précédent</a></li>
      <?php endif; ?>
      <?php for($i = 1; $i <= $total_pages; $i++): ?>
        <li class="page-item <?= ($i == $page) ? 'active' : '' ?>"><a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a></li>
      <?php endfor; ?>
      <?php if($page < $total_pages): ?>
        <li class="page-item"><a class="page-link" href="?page=<?= $page + 1 ?>">Suivant</a></li>
      <?php endif; ?>
    </ul>
  </nav>
</main>

  <!--Footer-->
  <?php require __DIR__ . "/footer.php"; ?>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
</body>



</html>
