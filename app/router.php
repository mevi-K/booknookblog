<?php

$uri = parse_url($_SERVER['REQUEST_URI'])['path'];

$routes=[
    '/'=>'accueil.php',
    '/livres'=>'Livres.php',
    '/login'=>'login.php',
    '/signup'=>'signup.php',
];

function routeToController($uri, $routes)
{
  if (array_key_exists($uri, $routes)) {
    require $routes[$uri];
  } else {
    abort();
  }
}

function abort($code = 404)
{
  http_response_code($code);
  require __DIR__ . "/../app/{$code}.php";
  die();
}

routeToController($uri, $routes);
