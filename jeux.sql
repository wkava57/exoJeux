-- Active: 1659692303222@@127.0.0.1@3306@if

DROP DATABASE jeuxBaseDeDonnees;

CREATE DATABASE jeuxBaseDeDonnees 
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE jeuxBaseDeDonnees.Studio(
    --UNSIGNED = toujour en num positif
    idStudio INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    nbDev INT(11) UNSIGNED NOT NULL
);

CREATE TABLE jeuxBaseDeDonnees.Genre(
    idGenre INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE jeuxBaseDeDonnees.jeux(
    idJeux INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    dateSortie DATE NOT NULL,
    pegi INT(11) UNSIGNED NOT NULL,
    idStudio INT(11) NOT NULL,
    CONSTRAINT fk_Studio_Jeux FOREIGN KEY (idStudio) REFERENCES Studio(idStudio)
);

CREATE TABLE jeuxBaseDeDonnees.Appartient(
    idGenre INT(11) UNSIGNED NOT NULL,
    idJeux INT(11) UNSIGNED NOT NULL,
    CONSTRAINT fk_Genre_Appartient FOREIGN KEY (idGenre) REFERENCES Genre(idGenre),
    CONSTRAINT fk_Jeux_Appartient FOREIGN KEY (idJeux) REFERENCES Jeux(idJeux)
);

INSERT INTO jeuxBaseDeDonnees.Studio(nom, adresse, nbDev) VALUES
("Studio 1", " 10 Rue Xavier Suliman, Paris", 10),
("Studio 2", " 30 Rue Alexandre, Meximieu", 10),
("Studio 3", " 10 Rue de la liberté, Montluel", 10);

INSERT INTO jeuxBaseDeDonnees.Jeux (titre, dateSortie, pegi, idStudio) VALUES 
("Metal", "2013-01-01", 16, 1),
("GodOffice", "2013-01-01", 18, 2),
("Univers", "2013-12-01", 16, 3);

INSERT INTO jeuxBaseDeDonnees.Genre(nom) VALUES
("Erotique"),
("Action"),
("Stratégie");

