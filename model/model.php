<?php
//Connexion Bdd
function connectDB() {
    $bdd = new PDO('mysql:host=127.0.0.1:3306;dbname=silence_on_lit;charset=utf8','sol_admin', 'A(m[T-a0u(FSu8nQ');

    return $bdd;
}

//Accés lecture aux livres
function getAllBooks($bdd) {
    $sqlQuery = "SELECT * FROM `livres_vw` ORDER BY `Année` DESC";
    $logStatement = $bdd->prepare($sqlQuery);
    $logStatement->execute();
    $req = $logStatement->fetchAll();
    $logStatement->closeCursor();

    return $req;
}

function getBooksByGenre($bdd, $genre) {
    $sqlQuery = "SELECT * FROM `livres_vw` WHERE nom = :genre ORDER BY `Année` DESC";
    $logStatement = $bdd->prepare($sqlQuery);
    $logStatement->execute([
        'genre' => $genre
    ]);
    $req = $logStatement->fetchAll();
    $logStatement->closeCursor();

    return $req;
}

function getBookById($bdd, $id) {
    $sqlQuery = "SELECT * FROM livres WHERE id = :id";
    $logStatement = $bdd->prepare($sqlQuery);
    $logStatement->execute([
        'id' => $id
    ]);
    $req = $logStatement->fetch();
    $logStatement->closeCursor();

    return $req;
}



//accés en lecture aux genres
function getAllGenres($bdd) {
    $sqlQuery = "SELECT nom FROM genres ORDER BY id ASC";
    $logStatement = $bdd->prepare($sqlQuery);
    $logStatement->execute();
    $req = $logStatement->fetchAll();
    $logStatement->closeCursor();

    return $req;
}

