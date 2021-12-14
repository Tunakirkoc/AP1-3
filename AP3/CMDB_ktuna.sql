-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 déc. 2021 à 14:25
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
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`idPers`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `idPers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
