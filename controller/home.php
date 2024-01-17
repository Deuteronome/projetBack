<?php
    session_start();

    if(isset($_POST['nom'])){
        $_SESSION['nom']=$_POST['nom'];
    }

    $pageTitle = "Silence On Lit!";
    $pageSubTitle = "Un temps de lecture à l'E⚁C!";    
    
    $buttonList= [
        ["label" => "Accueil","url" => "../controller/home.php"]
       
    ];

    if(isset($_SESSION['nom'])){
        $buttonList[]=["label" => "Bibliothèque","url" => "../controller/books.php"];       
    }

    require_once('../view/homeView.php');

?>

