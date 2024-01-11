<?php
    session_start();

    if(!isset($_SESSION['nom'])){
        header('location: ../controller/home.php');
    }

   $pageTitle = "La bibiothèque";
   $pageSubTitle = "Choisissez votre imaginaire";   
   
   $buttonList= [
    ["label" => "Accueil","url" => "../controller/home.php"],
    ["label" => "Bibliothèque","url" => "../controller/books.php"]
    ];
     
   
    require_once('../view/booksView.php');
?>

