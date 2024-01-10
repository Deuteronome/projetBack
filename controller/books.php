<?php
   $pageTitle = "La bibiothèque";
   $pageSubTitle = "Choisissez votre imaginaire";   
   
   $buttonList= [
    ["label" => "Accueil","url" => "../controller/home.php"],
    ["label" => "Bibliothèque","url" => "../controller/books.php"]
];
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bibliothèque</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
     <?php
        require_once('../view/modules/header.php');
        require_once('../view/modules/nav.php');
     ?>

     
    <main>

    </main>
</body>
</html>