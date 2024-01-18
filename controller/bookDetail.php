<?php

session_start();

if(!isset($_SESSION['nom'])){
    header('location: ../controller/home.php');
}

require_once('../model/model.php');

$bookBDD = connectDB();
$bookInfo = getBookById($bookBDD, $_POST['bookId']);




$pageTitle = $bookInfo['titre'];
$pageSubTitle = "Tout ce que vous devez savoir";   
   
$buttonList= [
["label" => "Accueil","url" => "../controller/home.php"],
["label" => "Bibliothèque","url" => "../controller/books.php"]
];
require_once('../view/bookDetailView.php');