<?php


// ROUTING
$uri=parse_url($_SERVER['REQUEST_URI'])['path'];

// parse : separer le path de la query - on recupere le path (au cas on a un path avec query /livres?query=...)-> objectif retourner la meme page livres cdr path et pas la query



// ROUTES PRINCIPALES 
$routes=[
    '/'=>'accueil.php',
    '/livres'=>'livres.php',
    '/login'=>'login.php',
    '/signup'=>'signup.php',
];

// si uri path existe dans routes principales-> require cette page 
if(array_key_exists($uri,$routes)){
    require $routes[$uri];
}
// si la page n'exsite pas : exemple:http://localhost:8889/livressdfg 
else{
   require'404.php';
    die();// arrêter l'execution
}