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