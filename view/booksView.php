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
        <div class="filterContainer">
            <form method="post" action="../controller/books.php">
                <label for="selectedGenre">Choisissez un genre :</label>
                <select name="selectedGenre" id="selectedGenre">
                    <option value="tous" selected>Tous les livres</option>
                    <?php
                        foreach($genreList as $genre) {
                    ?>
                            <option value="<?php echo $genre['nom'] ?>"><?php echo $genre['nom'] ?></option>
                    <?php
                        }

                    ?>
                </select>
                <input type="submit" value="Filtrer">
            </form>
        </div>
        <div class="bookContainer">
            <div class="line" id="firstLine">
                <div class="titre">Titre</div>
                <div class="auteur">Auteur</div>
                <div class="genre">Genre</div>
                <div class="annee">Année</div>
                <div class="detail">Détail</div>
            </div>

            <?php
                foreach($bookList as $book) {
                ?>
                    <div class="line">
                        <div class="titre"><?php echo $book['titre'] ?></div>
                        <div class="auteur"><?php echo $book['auteur'] ?></div>
                        <div class="genre"><?php echo $book['nom'] ?></div>
                        <div class="annee"><?php echo $book['Année'] ?></div>
                        <div class="detail">
                            <form method="post" action="../controller/bookDetail.php">
                                <input type="hidden" name="bookId" value=<?php echo $book['id'] ?>>
                                <input type="submit" value="Voir détail">
                            </form>
                        </div>
                    </div>
                <?php
                }
            ?>

       </div>
    </main>
</body>
</html>