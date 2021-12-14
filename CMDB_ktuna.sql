-- 1B
CREATE TABLE `cmdb_ktuna`.`materiel`(
    `idMat` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `typeMat` VARCHAR(20),
    `modeleMat` VARCHAR(50),
    `seMat` VARCHAR(20),
    `procMat` VARCHAR(20),
    `ramMat` TINYINT(4),
    `ddMat` VARCHAR(20),
    `ecranMat` VARCHAR(20),
    `carteGraphMat` VARCHAR(50)
);

CREATE TABLE `cmdb_ktuna`.`personnel`(
    `idPers` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `nomPers` VARCHAR(50) NOT NULL,
    `prenomPers` VARCHAR(50) NOT NULL,
    `emploiPers` VARCHAR(50) NOT NULL
);

CREATE TABLE `cmdb_ktuna`.`attribution`(
    `idMat` INT(11) NOT NULL, FOREIGN KEY (idMat) REFERENCES materiel(idMat),
    `idPers` INT(11) NOT NULL, FOREIGN KEY (idPers) REFERENCES personnel(idPers),
    `date` DATE NOT NULL
);

-- 1C
INSERT INTO materiel (typeMat,modeleMat,seMat,procMat,ramMat,ddMat,ecranMat,carteGraphMat)
VALUES
('Portable','HP Pavilion 15-eh1009nf','Windows 11', 'AMD Ryzen 5','16','512 Go Disque SSD','15.6" FHD','Carte graphique AMD Radeon'),
('Portable','HP ENVY x360 13-ay0021nf','Windows 11', 'AMD Ryzen 7','16','512 Go Disque SSD','13,3" FHD','Carte graphique AMD Radeon'),
('Portable','HP 14s-dq2026nf','Windows 11', 'Intel Core i3','8','256 Go Disque SSD','14" HD','Carte graphique Intel UHD'),
('Portable','HP Pavilion 14-dv0026nf -Argent naturel','Windows 11', 'Intel Core i3','8','256 Go Disque SSD','14" FHD','Carte graphique Intel UHD'),
('Portable','HP Pavilion 15-eh1017nf','Windows 10', 'AMD Ryze 7','16','1 To Disque SSD','15.6" FHD','Carte graphique AMD Radeon'),
('Bureau','HP 260 G4 Desktop Mini 1','Windows 10 Pro', 'Intel Core i3','4','500 Go HDD','17" FHD','Carte graphique Intel UHD'),
('Bureau','HP 260 G4 Desktop Mini 2','Windows 10 Pro', 'Intel Core i3','8','1 To HDD','21" FHD','Carte graphique Intel UHD'),
('Bureau','HP 260 G4 Desktop Mini 3','Windows 10 Pro', 'Intel Core i3','16','1 To HDD','21" FHD','Carte graphique Intel UHD'),
('Bureau','HP EliteDesk 800 G6 1','Windows 10 Pro', 'Intel Core i5','8','256 Go Disque SSD','21" FHD','Carte graphique Intel UHD 630'),
('Bureau','HP EliteDesk 800 G6 2','Windows 10 Pro', 'Intel Core i5','16','512 Go Disque SSD','21" FHD','Carte graphique Intel UHD 630'),
('Bureau','HP EliteDesk 400 G6','Windows 10 Pro', 'Intel Core i3','8','256 Go Disque SSD','19" FHD','Carte graphique Intel UHD 630');

INSERT INTO personnel (nomPers,prenomPers,emploiPers)
VALUES
('Mariveau','Jean-Louis','PDG'),
('Milot','Fabienne','Assistante de direction'),
('Rock','Fabrice','Directeur commercial'),
('Etienne','Raymond','Commercial'),
('Loper','Stéphanie','Commercial'),
('Gundberg','Frid','Commercial'),
('Fervent','Patrice','Développeur'),
('Picht','Cyndy','Directeur technique'),
('Hachram','Fenry','Développeur'),
('Bichu','Philippe','Développeur'),
('Franche','Marguerite','Développeur'),
('Dubois','Martin','Développeur'),
('Panier','Hugo','Développeur'),
('Boucher','Mélanie','Développeur'),
('Dernier','Natan','Directeur Financier'),
('Michu','Evelyne','Comptable');

INSERT INTO attribution (idPers,idMat,date)
VALUES
(1,1,'2019-01-16'),
(1,6,'2017-05-12'),
(2,7,'2020-12-25'),
(3,2,'2019-09-15'),
(4,9,'2020-10-14'),
(5,10,'2018-02-02'),
(6,11,'2019-03-05'),
(7,9,'2021-07-07'),
(8,3,'2019-05-12'),
(9,3,'2020-06-15'),
(10,4,'2018-07-10'),
(11,4,'2020-08-10'),
(12,3,'2019-09-15'),
(13,4,'2018-08-14'),
(14,4,'2017-01-29'),
(15,4,'2021-06-25'),
(16,11,'2020-08-24');

-- 1D
UPDATE `personnel` SET `emploiPers` = 'Développeur' WHERE `personnel`.`idPers` = 6;

UPDATE `materiel` SET `seMat` = 'Windows 11', `ramMat` = '16' WHERE `materiel`.`idMat` = 6;

DELETE FROM `attribution` WHERE `attribution`.`idPers` = 10;
DELETE FROM `personnel` WHERE `personnel`.`idPers` = 10;

-- 1E
SELECT
    personnel.nomPers,
    personnel.prenomPers,
    personnel.emploiPers,
    materiel.typeMat,
    materiel.modeleMat,
    materiel.seMat,
    materiel.procMat,
    materiel.ramMat,
    materiel.ddMat,
    materiel.ecranMat,
    materiel.carteGraphMat,
    attribution.date AS 'date atribution'
FROM
    `attribution`
LEFT JOIN materiel ON attribution.idMat = materiel.idMat
LEFT JOIN personnel ON attribution.idPers = personnel.idPers;