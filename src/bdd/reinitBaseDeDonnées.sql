/*user : sol_admin
mdp :silence */

/*création des tables - clés étrangères directement dans la création - attention à l'ordre de création*/
CREATE TABLE genres(
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
)ENGINE=innoDB;

CREATE TABLE utilisateurs (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur VARCHAR(255) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    mail VARCHAR(255) NOT NULL UNIQUE,
    is_admin BOOLEAN NOT NULL DEFAULT FALSE
)ENGINE=innoDB;

CREATE TABLE livres(
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL DEFAULT 'Inconnu',
    editeur VARCHAR(255),
    synopsis TEXT,
    pages SMALLINT UNSIGNED NOT NULL,
    date_edition DATE,
    photo VARCHAR(255),
    langue VARCHAR(255) NOT NULL DEFAULT 'Français',
    lieu VARCHAR(255) NOT NULL DEFAULT 'Lille',
    is_illustre BOOLEAN NOT NULL DEFAULT FALSE,
    genre_id TINYINT UNSIGNED NOT NULL DEFAULT 1,
    utilisateur_id SMALLINT UNSIGNED,
    CONSTRAINT fk_genres_livres
        FOREIGN KEY (genre_id)
        REFERENCES genres(id),
    CONSTRAINT fk_util_livres
        FOREIGN KEY (utilisateur_id)
        REFERENCES utilisateurs(id)
)ENGINE=innoDB;

CREATE VIEW livres_vw AS (
    SELECT livres.id AS id, livres.titre, livres.auteur, DATE_FORMAT(livres.date_edition, '%Y') AS 'Année' , genres.nom
    FROM livres
    INNER JOIN genres ON livres.genre_id = genres.id
    ORDER BY livres.date_edition DESC);


/*Ajout des données*/

/*genres*/

INSERT INTO genres(nom)
    VALUES  ('Non classé'),
            ('Roman'),
            ('BD'),
            ('Manga'),
            ('Roman policier'),
            ('Science-fiction'),
            ('Documentaire - éducatif'),
            ('Magazine'),
            ('Recueil'),
            ('Coaching - entrepreunariat');

/*utilisateurs */

INSERT INTO utilisateurs(nom_utilisateur, mot_de_passe, mail)
    VALUES  ('AlexMakingNoise', 'Groooaar', 'ajecode@e2c.fr'),
            ('MisterBear', 'timeToSleep', 'mb@e2c.fr'),
            ('utilisateur3', 'test', 'u3'),
            ('utilisateur4', 'test4', 'u4');

/*livres */

INSERT INTO livres(titre, auteur, genre_id, pages, date_edition)
    VALUES  ('La fille du train', 'Paula Hawkins', 2, 453, '2016-07-01'),
            ('Le grand nul part', 'James Ellroy', 5, 635, '1998-08-01'),
            ('Les racines du mal', 'Maurice G. Dantec', 5, 744, '1995-04-01'),
            ('Les égouts de Los Angeles', 'Mickael Connely', 5, 377, '1997-11-01'),
            ('Ubik', 'Philip K. Dick', 6, 212, '1965-01-01'),
            ('Carbone Modifié', 'Richard Morgan', 6, 511, '2002-10-01'),
            ('UN AN pour gagner UN MILLION', 'Ryan Daniel Moran', 10, 302, '2022-04-14'),
            ('Les Fourmis', 'Bernard Werber', 6, 320, '1997-05-01'),
            ('Les égyptiennes', 'Christian Jacq', 2, 334, '1999-09-01'),
            ('Et Après...', 'Guillaume Musso', 2, 376, '2013-10-03'),
            ('hésitation', 'Stephenie Meyer', 2, 569, '2009-09-02'),
            ('Olé!San-Antonio', 'Fleuve Noir', 2, 48, '1972-01-01'),
            ('le livre des nombres', 'John h. Conway, Richard K.Guy', 7, 310, '1998-04-01'),
            ('ces grandes gueules qui nous gouvernent', 'Rampal', 3, 128, '1987-03-01'),
            ('maman a tort', 'michel bussi', 5, 509, '2015-05-07'),
            ('de l''amour en autistan', 'josef schovanec', 2, 211, '2015-11-05'),
            ('quand nos souvenirs viendront danser', 'virginie gimaldi', 2, 344, '2019-05-02'),
            ('le petit singe qui faisait des manières', 'wasterlain', 3, 48, '1985-01-01'),
            ('Les Fourmies ' , 'Bernard Werber' , 7, 312, '1993-04-01'),
            ("Je voudrais que quelqu'un m'attende quelque part " , "Anna Gavalda" , 2 , 156, "2005-01-15"),
            ('Les métamorphose ' , 'beatrice périgot' , 6 ,471, '2005-07-01'),
            ('un appartement à paris ' , 'guillaume musso' , 5 , 471, '2015-03-01'),
            ("l''histoire des expression francaise " , 'Frederic gersal' , 7, 98, '2018-11-26'),
            ('game over' , 'collectif' , 3 , 45, '2011-11-01'),
            ('Quand nous étions orphelins', 'Kasuo Ishiguro', 5, 538, '2009-10-01'),
            ('Maigrir en se faisant plaisir', 'Gourmand', 8, 99, '2005-06-09'),
            ('La civilisation du poisson rouge', 'Bruno Patino', 2, 161, '2020-04-01'),
            ('My Hero Acedemia', 'Kohei Horikoshi', 4, 60, '2014-01-01'),
            ('Découvrir un sens à sa vie', 'Viktor E. Frankl', 7, 177, '2013-01-01'),
            ('No Limits', 'Derib', 3, 26, '2000-01-01'),
            ('Et si c''etait vrais', 'Marc Hawkins', 2, 250, '2003-05-07'),
            ('Pourquoi pas ?', 'David NICHOLLS', 2, 453, '2013-03-01'),
            ('Colline', 'Jean GIONO', 2, 158, '2005-01-01'),
            ('Histoires macabres', 'Hitchcock', 9, 319, '1961-01-01'),
            ('La grande histoire des cités englouties', 'Collectif', 8, 98, '2020-03-01'),
            ('Trucs-en-vrac', 'Gotlib', 3, 48, '1977-01-01'),
            ('100 photo de Don McCullin pour la liberté de la presse', 'Reporters sans frontières', 9, 144, '2009-03-01'),
            ('Voyagez Lisez Frissonnez', 'Olivier BAL', 9, 106, '2023-04-01'),
            ('seuls', 'Gazzotti', 3, 56, '2000-01-01'),
            ('Marie claire ', 'Fabrice Gagnault', 8, 276, '2020-11-01'),
            ('Changer l''eau des fleurs', 'Valérie Perrin', 2, 665, '2020-01-01'),
            ('Des vies en mieux', 'Anna Gavalda', 2, 441, '2015-07-01'),
            ('tentation', 'stephenie meyer', 2, 669, '2009-01-01'),
            ('Hésitation', 'Stephenie MEYER', 2, 615, '2009-04-01'),
            ('l''âme du monde', 'Frédéric LENOIR', 2, 151, '2014-08-01'),
            ('en attendant bojangles', 'Olivier BOURDEAUT', 2, 158, '2015-01-01'),
            ('New York odyssée', 'Kristopher JANSMA', 2, 603, '2018-01-01'),
            ('aâma', 'Fredrerik PEETERS', 3, 86, '2011-10-01'),
            ('biocontact', 'collectif', 8, 97, '2020-11-01'),
            ('la 5e vague','rick yangey',2,458, '2000-01-01'),
            ('Dans les forets de siberie','Sylvain Tesson',2,290, '2000-01-01'),
            ('le démon des maths','M.Esenberger',2,268, '2000-01-01'),
            ('histoire universelle des chiffres','georges ifrah',2,937, '2000-01-01'),
            ('elever son enfant autrement','Catherine Dumonteil-kermer',2,343, '2000-01-01'),
            ('Logicomix', 'Apostolos Doxiadis, Christos Papadimitriou,Alecos Papadatos, Annie Di Donna',3,361,'2008-10-01'),
            ('La Valse lente des tortues', 'Katherine Pancol',2,752,'2008-02-01'),
            ('La liste de mes envies', 'Grégoire Delacourt',2,183,'2012-01-01'),
            ('Moi je', 'Aude Picault',3,60,'2020-10-28'),
            ('Mon prof de Zumba', 'Tome Janry',3,32,'2014-08-22'),
            ( 'L''Des souris et des hommes', 'John Steinbeck', 2, 174 , '2013-05-29'),
            ( 'L''Au fil des rues', 'Ravet Anceau', 2, 217 , '2004-05-01'),
            ( 'L''Une femme', 'Annie Ernaux', 2, 105 , '1986-04-20'),
            ( 'L''Le Robert & Collins Vocabulaire Anglais & Américain', 'Robert & Collins', 7, 394 , '1997-06-01'),
            ( 'L''Histoire Universelle Des Chiffres', 'Robert Lafont', 7, 1041 , '1994-06-01'),
            ( 'Des Textes à l oeuve', 'Romain Lancrey-Javal', 7, 524 , '2000-03-01'),
            ("De l'amour en Autistan", 'Josef Schovanec',2,240,'2016-11-01'),
            ("Auprès de moi toujours", 'Kazuo Ishiguro',2,448,'2011-01-12'),
            ("Le diable vit à Notting hill", 'Rachel Johnson',2,384,'2011-05-04'),
            ("Coluche le pavé", 'Pierre Bénichou',7,825,'2011-12-01'),
            ("La défaite du cancer", 'Dr Laurent Alexandre',7,350,'2014-10-01'),
            ("Les classiques de wolinski", 'Albin Michel',3,72,'2003-06-01');

/*prêt de livres*/

UPDATE livres
    SET utilisateur_id = 1
    WHERE id = 2 OR id = 27;

UPDATE livres
    SET utilisateur_id = 2
    WHERE id = 7 OR id = 34 OR id = 52;

UPDATE livres
    SET utilisateur_id = 3
    WHERE id = 18;