<?php
    $pageTitle = "Silence On Lit!";
    $pageSubTitle = "Un temps de lecture à l'E⚁C!";    
    
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
    <title>Silence on Lit</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
     <?php
        require_once('../view/modules/header.php');
        require_once('../view/modules/nav.php');
    
     ?>

     
    <main>
        <div class="articleContainer">
            <article>
                <img src="../asset/images/pn1.jpg" alt="pn" id="home1">
                <p>Je viens par cet email vous annoncer que nous avons mis en place SOL! dans l’établissement depuis le 9 décembre 2021. Les retombées ont été immédiates et inattendues : des enfants n’aimant pas les livres se sont rapidement mis à lire. Lors du marché de Noël, une maman m’expliquait que son fils qui avait en horreur les livres et la lecture, imposait désormais à la maison de ne pas être dérangé quand il lisait. Et cela arrivait souvent ! Ce témoignage, entre autres, m’a conforté sur le bien fondé du projet.</p>
                <p>Je vous remercie pour l’accompagnement téléphonique qui a été bien utile pour me permettre de mobiliser l’équipe. Le dossier est complet et très intéressant, chaque enseignante a pu s’en imprégner. Mme G., Chef d’établissement </p>
            </article>

            <article>
                <img src="../asset/images/pn2.jpg" alt="pn" id="home2">
                <p>Nous avons été surpris et ravis de constater que malgré les difficultés de certains enfants et les profils atypiques que nous accueillons, tous ont joué le jeu ! Certains se sont découvert une passion pour la lecture et ont dévalisé la bibliothèque municipale avec laquelle nous sommes en partenariat.</p>
                <p>A côté de cela nous avons remarqué un réel bénéfice au niveau de la concentration des élèves l’après-midi. Nous avons instauré le quart d’heure de lecture après le repas, et cela a permis aux enfants de vraiment se poser et se remettre dans un bon état d’esprit pour reprendre les cours. M. L. directeur pédagogique</p>
            </article>
        </div>
    </main>
</body>
</html>