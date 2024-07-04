<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Nook</title>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
      nav{background-color: rgba(196, 170, 183, 1);}
      .navbar-nav .nav-link {
          font-size: 18px; 
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg p-0">
      <div class="container-fluid">
        <a class="navbar-brand" href="/"><img src="/assets/images/logo.png"></a>
        <button class="navbar-toggler bg-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class=" collapse navbar-collapse " id="navbarNavDropdown">
          <ul class="navbar-nav ms-auto ">
            <li class="nav-item">
              <a class="nav-link mx-2 active text-white" aria-current="page" href="/">Accueil</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mx-2 text-white" href="/livres">Livres</a>
            </li>
          </ul>
          <ul class="navbar-nav ms-auto d-none d-lg-inline-flex">
            <li class="nav-item mx-2">
            <i class="fab fa-google-plus-square"></i><a class="nav-link text-dark h5" href="" target="blank"><i class="fab fa-google-plus-square"></i></a>
            </li>
            <li class="nav-item mx-2">
            <a class="nav-link text-white" href="/signup"><i class="bi bi-person-circle me-1"></i>Inscription</a>
            </li>
            <li class="nav-item mx-2">
            
            <a class="nav-link text-white" href="/login"><i class="bi bi-box-arrow-in-left me-1"></i></i>Connexion</a>
            
            </li>
            
          </ul>
        </div>
      </div>
    </nav>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
