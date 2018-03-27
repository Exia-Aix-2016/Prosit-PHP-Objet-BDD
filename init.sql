DROP TABLE IF EXISTS utilisateurs;

CREATE TABLE utilisateurs

(
    id INT NOT NULL AUTO_INCREMENT,
    pseudo VARCHAR (255) NOT NULL,
    motDePasse VARCHAR (255) NOT NULL,
    statutAdmin BOOLEAN DEFAULT 0,
    PRIMARY KEY (id)
)

ENGINE = InnoDB; -- Moteur de stockage

DROP TABLE IF EXISTS produits;

CREATE TABLE produits

(
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR (30) NOT NULL,
    prix INT UNSIGNED NOT NULL,
    description VARCHAR (200),
    solde BOOLEAN DEFAULT 0,
    urlImage VARCHAR (200) DEFAULT 'Produits/p1.jpg' ,
    PRIMARY KEY (id)
)

ENGINE = InnoDB; -- Moteur de stockage

INSERT INTO produits (nom,prix,description,solde,urlImage)
VALUES
('smartX15', '115',"Chassures basses et légère, temps ensoleillé",1,'Produits/p1.jpg'),
('greenLantXY', '159',"Chassures hautes et robustes, saison estivale",1,'Produits/p2.jpg'),
('crazyFrog2056', '174',"Chassures étanches, à l'épreuve des intempéries",0,'Produits/p3.jpg'),
('baroudClimb', '249',"Chassures hautes, tout terrains, toutes saisons",0,'Produits/p4.jpg'),
('rustik2000', '206',"Chassures confortables, terrains peu accidentés",0,'Produits/p5.jpg'),
('flexLightTT', '249',"Chassures légères, souples et tout terrains",0,'Produits/p6.jpg');


DROP TABLE IF EXISTS produits;

CREATE TABLE produits

(
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR (30) NOT NULL,
    prix INT UNSIGNED NOT NULL,
    description VARCHAR (200),
    solde BOOLEAN DEFAULT 0,
    urlImage VARCHAR (200) DEFAULT 'Produits/p1.jpg' ,
    PRIMARY KEY (id)
)

ENGINE = InnoDB; -- Moteur de stockage

INSERT INTO produits (nom,prix,description,solde,urlImage)
VALUES
('smartX15', '115',"Chassures basses et légère, temps ensoleillé",1,'Produits/p1.jpg'),
('greenLantXY', '159',"Chassures hautes et robustes, saison estivale",1,'Produits/p2.jpg'),
('crazyFrog2056', '174',"Chassures étanches, à l'épreuve des intempéries",0,'Produits/p3.jpg'),
('baroudClimb', '249',"Chassures hautes, tout terrains, toutes saisons",0,'Produits/p4.jpg'),
('rustik2000', '206',"Chassures confortables, terrains peu accidentés",0,'Produits/p5.jpg'),
('flexLightTT', '249',"Chassures légères, souples et tout terrains",0,'Produits/p6.jpg');


DROP  PROCEDURE IF EXISTS listeProduits;

DELIMITER | -- Détermine un nouveau délimiteur pour la requête globale

CREATE PROCEDURE listeProduits() -- Procédure sans paramètre

BEGIN
    Select *
	From produits;
END |


INSERT INTO utilisateurs (pseudo,motDePasse,statutAdmin)
VALUES
('Katare', 'toppot',0),
('Chap', 'elgnuj',0),
('Melon', 'middim',0),
('Wakz', 'adda',1),
('Caëlan', 'troppus',0);