-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 déc. 2021 à 16:31
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cmdb_ktuna`
--

-- --------------------------------------------------------

--
-- Structure de la table `attribution`
--

CREATE TABLE `attribution` (
  `idMat` int(11) NOT NULL,
  `idPers` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `attribution`
--

INSERT INTO `attribution` (`idMat`, `idPers`, `date`) VALUES
(1, 1, '2019-01-16'),
(6, 1, '2017-05-12'),
(7, 2, '2020-12-25'),
(2, 3, '2019-09-15'),
(9, 4, '2020-10-14'),
(10, 5, '2018-02-02'),
(11, 6, '2019-03-05'),
(9, 7, '2021-07-07'),
(3, 8, '2019-05-12'),
(3, 9, '2020-06-15'),
(4, 11, '2020-08-10'),
(3, 12, '2019-09-15'),
(4, 13, '2018-08-14'),
(4, 14, '2017-01-29'),
(4, 15, '2021-06-25'),
(11, 16, '2020-08-24');

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `idMat` int(11) NOT NULL,
  `typeMat` varchar(20) DEFAULT NULL,
  `modeleMat` varchar(50) DEFAULT NULL,
  `seMat` varchar(20) DEFAULT NULL,
  `procMat` varchar(20) DEFAULT NULL,
  `ramMat` tinyint(4) DEFAULT NULL,
  `ddMat` varchar(20) DEFAULT NULL,
  `ecranMat` varchar(20) DEFAULT NULL,
  `carteGraphMat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`idMat`, `typeMat`, `modeleMat`, `seMat`, `procMat`, `ramMat`, `ddMat`, `ecranMat`, `carteGraphMat`) VALUES
(1, 'Portable', 'HP Pavilion 15-eh1009nf', 'Windows 11', 'AMD Ryzen 5', 16, '512 Go Disque SSD', '15.6\" FHD', 'Carte graphique AMD Radeon'),
(2, 'Portable', 'HP ENVY x360 13-ay0021nf', 'Windows 11', 'AMD Ryzen 7', 16, '512 Go Disque SSD', '13,3\" FHD', 'Carte graphique AMD Radeon'),
(3, 'Portable', 'HP 14s-dq2026nf', 'Windows 11', 'Intel Core i3', 8, '256 Go Disque SSD', '14\" HD', 'Carte graphique Intel UHD'),
(4, 'Portable', 'HP Pavilion 14-dv0026nf -Argent naturel', 'Windows 11', 'Intel Core i3', 8, '256 Go Disque SSD', '14\" FHD', 'Carte graphique Intel UHD'),
(5, 'Portable', 'HP Pavilion 15-eh1017nf', 'Windows 10', 'AMD Ryze 7', 16, '1 To Disque SSD', '15.6\" FHD', 'Carte graphique AMD Radeon'),
(6, 'Bureau', 'HP 260 G4 Desktop Mini 1', 'Windows 11', 'Intel Core i3', 16, '500 Go HDD', '17\" FHD', 'Carte graphique Intel UHD'),
(7, 'Bureau', 'HP 260 G4 Desktop Mini 2', 'Windows 10 Pro', 'Intel Core i3', 8, '1 To HDD', '21\" FHD', 'Carte graphique Intel UHD'),
(8, 'Bureau', 'HP 260 G4 Desktop Mini 3', 'Windows 10 Pro', 'Intel Core i3', 16, '1 To HDD', '21\" FHD', 'Carte graphique Intel UHD'),
(9, 'Bureau', 'HP EliteDesk 800 G6 1', 'Windows 10 Pro', 'Intel Core i5', 8, '256 Go Disque SSD', '21\" FHD', 'Carte graphique Intel UHD 630'),
(10, 'Bureau', 'HP EliteDesk 800 G6 2', 'Windows 10 Pro', 'Intel Core i5', 16, '512 Go Disque SSD', '21\" FHD', 'Carte graphique Intel UHD 630'),
(11, 'Bureau', 'HP EliteDesk 400 G6', 'Windows 10 Pro', 'Intel Core i3', 8, '256 Go Disque SSD', '19\" FHD', 'Carte graphique Intel UHD 630');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `idPers` int(11) NOT NULL,
  `nomPers` varchar(50) NOT NULL,
  `prenomPers` varchar(50) NOT NULL,
  `emploiPers` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`idPers`, `nomPers`, `prenomPers`, `emploiPers`) VALUES
(1, 'Mariveau', 'Jean-Louis', 'PDG'),
(2, 'Milot', 'Fabienne', 'Assistante de direction'),
(3, 'Rock', 'Fabrice', 'Directeur commercial'),
(4, 'Etienne', 'Raymond', 'Commercial'),
(5, 'Loper', 'Stéphanie', 'Commercial'),
(6, 'Gundberg', 'Frid', 'Développeur'),
(7, 'Fervent', 'Patrice', 'Développeur'),
(8, 'Picht', 'Cyndy', 'Directeur technique'),
(9, 'Hachram', 'Fenry', 'Développeur'),
(11, 'Franche', 'Marguerite', 'Développeur'),
(12, 'Dubois', 'Martin', 'Développeur'),
(13, 'Panier', 'Hugo', 'Développeur'),
(14, 'Boucher', 'Mélanie', 'Développeur'),
(15, 'Dernier', 'Natan', 'Directeur Financier'),
(16, 'Michu', 'Evelyne', 'Comptable');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attribution`
--
ALTER TABLE `attribution`
  ADD KEY `idMat` (`idMat`),
  ADD KEY `idPers` (`idPers`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`idMat`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`idPers`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `idMat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `idPers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attribution`
--
ALTER TABLE `attribution`
  ADD CONSTRAINT `attribution_ibfk_1` FOREIGN KEY (`idMat`) REFERENCES `materiel` (`idMat`),
  ADD CONSTRAINT `attribution_ibfk_2` FOREIGN KEY (`idPers`) REFERENCES `personnel` (`idPers`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
