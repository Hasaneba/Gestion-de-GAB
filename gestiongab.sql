-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 25 mars 2024 à 18:27
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dada`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idclient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `adress` varchar(40) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `ville` varchar(40) DEFAULT NULL,
  `telephone` int DEFAULT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `adress`, `cp`, `ville`, `telephone`) VALUES
(5, 'Mohamedsalek', 'deya', 'Sit', 6000, 'Atar', 38383838),
(8, 'negib', 'labied', 'AT34', 3477, 'NDB', 34343434),
(6, 'dah', 'sidi', 'NDB', 600, 'Zouerate', 27272727);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idcompte` int NOT NULL AUTO_INCREMENT,
  `idclient` int DEFAULT NULL,
  `numeroCompte` int DEFAULT NULL,
  `typeCompte` varchar(40) DEFAULT NULL,
  `codePin` varchar(4) DEFAULT NULL,
  `solde` float DEFAULT NULL,
  `Nombank` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idcompte`),
  KEY `idclient` (`idclient`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idcompte`, `idclient`, `numeroCompte`, `typeCompte`, `codePin`, `solde`, `Nombank`) VALUES
(18, 6, 55, 'epargne', '2323', 17600, 'BNM'),
(15, 5, 33, 'epargen', '6762', 51156, 'BMCI'),
(19, 5, 78, 'épargne', '3434', 230045, 'BMI');

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

DROP TABLE IF EXISTS `operation`;
CREATE TABLE IF NOT EXISTS `operation` (
  `idOperation` int NOT NULL AUTO_INCREMENT,
  `dateOperation` datetime DEFAULT NULL,
  `idcompte` int DEFAULT NULL,
  `typeOperation` varchar(100) DEFAULT NULL,
  `montant` int DEFAULT NULL,
  PRIMARY KEY (`idOperation`),
  KEY `idcompte` (`idcompte`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `operation`
--

INSERT INTO `operation` (`idOperation`, `dateOperation`, `idcompte`, `typeOperation`, `montant`) VALUES
(125, '2024-03-25 15:58:48', 18, 'virement', 4500),
(124, '2024-03-25 15:58:25', 18, 'retrait', 2300),
(123, '2024-03-25 15:57:59', 18, 'dépôt', 3400),
(118, '2024-03-21 15:33:04', 15, 'dépôt', 5600),
(117, '2024-03-21 15:32:52', 15, 'retrait', 1345),
(116, '2024-03-21 15:32:41', 15, 'dépôt', 56),
(115, '2024-03-21 15:29:30', 15, 'dépôt', 56),
(114, '2024-03-21 15:29:19', 15, 'retrait', 34),
(113, '2024-03-21 15:26:56', 15, 'retrait', 34),
(120, '2024-03-25 12:11:29', 18, 'dépôt', 23000),
(121, '2024-03-25 12:12:07', 18, 'retrait', 40),
(122, '2024-03-25 12:13:27', 18, 'virement', 20000),
(107, '2024-03-21 15:18:17', 15, 'virement', 4545),
(108, '2024-03-21 15:18:49', 15, 'virement', 234),
(109, '2024-03-21 15:19:57', 15, 'virement', 234),
(110, '2024-03-21 15:20:16', 15, 'virement', 555),
(111, '2024-03-21 15:23:57', 15, 'retrait', 34);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `Role` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `username`, `Email`, `password`, `Role`) VALUES
(12, 'med', 'med@gmail.com', '48551628', 'admin'),
(13, 'Ahmed', 'med@gmail.com', '48551628', 'user'),
(14, 'brahim', 'brahim', '4545', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
