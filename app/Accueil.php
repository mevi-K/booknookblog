<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $titre?></title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/assets/styles.css">

    <style>
        body {
            background-color: rgb(252, 254, 241) !important; 
        }
        .card {
            width: 280px;
            margin: 10px auto;
            background-color: rgb(236, 181, 161); 
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .carousel-control-prev-icon, .carousel-control-next-icon {
            filter: invert(41%) sepia(11%) saturate(2500%) hue-rotate(250deg) brightness(88%) contrast(95%);
        }
		h2 {
            font-family: 'Playfair Display', serif;
            font-size: 2.5em;
            color: rgb(196, 170, 183); 
           
			padding: 20px ;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }
        .h2Coupdecoeur{
            color: white;
        }
		.banner_likedbooks{
			background-color:rgba(196, 170, 183, 1); ;
		}
	
    </style>
</head>




<body>

<?php 
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    require_once __DIR__ . "/configs/db.config.php";

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

require "../app/components/navbar.php";

$query_1 = "SELECT * FROM book ORDER BY books_sold DESC LIMIT 3";
$top10books = $db->query($query_1)->fetchAll();


$query_2 = "SELECT * FROM book ORDER BY books_sold DESC LIMIT 4";
$likedbooks = $db->query($query_2)->fetchAll();

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>




<div class="container-fluid my-4">
<h2>Top des ventes</h2>
	<div class="row">
		<div class="col-sm-12">
			<div id="inam" class="carousel slide" data-interval="false">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="container">
							<div class="row">
								
                            <?php foreach($top10books as $book): ?>
                                <?php $random_pics=rand(1,100);?>
                                <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
									<div class="card" style="width: 300px;">
                                        <img src="https://picsum.photos/150/180?random=<?= $random_pics?>&grayscale" class="card-img-top" alt="...">
										
										<div class="card-body">
											<h4 class="card-title"><?= $book['Title']?></h4>
                                            <a href="description.php?id=<?=$book['Id_Book']?>" class="btn btn-dark">En savoir plus</a>
										</div>
									</div>
								</div>
                            <?php endforeach; ?>
								
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="container">
							<div class="row">
								
								
                            <?php foreach($top10books as $book): ?>
                                <?php $random_pics=rand(1,100);?>
                                <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
									<div class="card" style="width: 300px;">
                                        <img src="https://picsum.photos/150/180?random=<?= $random_pics?>&grayscale" class="card-img-top" alt="...">
										
										<div class="card-body">
											<h4 class="card-title"><?= $book['Title']?></h4>
                                            <a href="description.php?id=<?=$book['Id_Book']?>" class="btn btn-dark">En savoir plus</a>
										</div>
									</div>
								</div>
                            <?php endforeach; ?>
							</div>
						</div>
					</div>
				</div>
				<a href="#inam" class="carousel-control-prev" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a>
				<a href="#inam" class="carousel-control-next" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>
	</div>
</div>




<div class="container-fluid my-4 px-0 banner_likedbooks ">
<h2 class="h2Coupdecoeur">Nos coups de cœur de la semaine</h2>
    <div class="row mx-0"> 
        <?php foreach($likedbooks as $book): ?>
            <?php $random_pics = rand(1, 100); ?>
            <div class="col-12 col-md-6 col-lg-3 d-flex justify-content-center"> 
                <div class="card ">
                    <img src="https://picsum.photos/150/180?random=<?= $random_pics ?>&grayscale" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h4 class="card-title"><?= $book['Title'] ?></h4>
                        <a href="description.php?id=<?=$book['Id_Book']?>" class="btn btn-dark">En savoir plus</a>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<?php
require __DIR__ . "/components/footer.php";?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

