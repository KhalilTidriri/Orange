-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 16 Mars 2019 à 11:21
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `orange1`
--

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`ID`, `DATEFIN`, `CLIENT_ID`, `TYPEABONNEMENT_ID`) VALUES
(3, '2019-01-05', 1, 1),
(4, '2019-01-20', 4, 1),
(5, '2019-01-13', 5, 1),
(6, '2019-01-12', 1, 1);

--
-- Contenu de la table `achat`
--

INSERT INTO `achat` (`ID`, `MODE`, `NOM`, `CLIENT_ID`, `TYPEACHATS_ID`) VALUES
(1, 'Paiement par carte', 'IPhone X', 2, 1),
(2, 'Paiement par chèque', 'Casque Téléphonique', 4, 3),
(3, 'Paiement par chèque', 'IPhone X', 4, 1),
(4, 'Paiement par chèque', 'IPhone X', 2, 1),
(5, 'Paiement par carte', 'CLE USB', 5, 2);

--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`ID`, `ADRESSE`, `NOM`, `VILLE_ID`) VALUES
(1, 'GUELIZ', 'OrangeGueliz', 1),
(2, 'Massira 1', 'OrangeMassira', 1),
(3, 'Ain Diab', 'OrangeAinDiab', 2),
(4, 'Sidi Maarouf', 'OrangeSidiMaarouf', 2),
(5, 'Charaf', 'OrangeCharaf', 5),
(6, 'Salam', 'OrangeSalam', 5),
(7, 'Hay Riad', 'OrangeHayRiad', 3),
(8, 'Al Hafa', 'OrangeAlHafa', 4);

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID`, `DATEDENAISSANCE`, `NATIONALITE`, `NOM`, `PASSWORD`, `PRENOM`, `SEXE`, `AGENCE_ID`) VALUES
(1, '1996-02-12', 'Marocaine', 'TIDRIRI', 'test', 'Khalil', 'H', 1),
(2, '1995-12-08', 'Marocaine', 'CHERRAT', 'test', 'Sara', 'F', 4),
(3, '1989-06-10', 'Marocaine', 'HENNI', 'test', 'Mohammed', 'H', 2),
(4, '1995-11-15', 'Marocaine', 'Ait Khouya', 'test', 'Saad', 'H', 5),
(5, '1994-01-15', 'Marocaine', 'DARARI', 'test', 'Zakaria', 'H', 2);

--
-- Contenu de la table `facture`
--

INSERT INTO `facture` (`ID`, `CODE`, `DATEFINPAIEMENT`, `DATEPAIEMENT`, `MODE`, `MONTANT`, `CLIENT_ID`, `TYPEABONNEMENT_ID`) VALUES
(5, 'test', '2019-01-20', '2019-01-13', 'Paiement par carte', 500, 4, 2),
(6, 'test', '2019-01-12', '2019-01-05', 'Paiement par carte', 1250, 2, 1),
(7, 'test', '2019-01-12', '2019-01-05', 'Paiement par carte', 1000, 2, 2),
(8, 'test', '2019-01-12', '2019-01-05', 'Paiement par carte', 750, 1, 1),
(9, 'test', '2019-01-12', '2019-01-05', 'Paiement par carte', 650, 1, 2),
(10, 'test', '2019-01-12', '2019-01-05', 'Paiement par carte', 980, 1, 3),
(11, 'test', '2019-01-12', '2019-01-04', 'Paiement par carte', 750, 5, 1),
(12, 'test', '2019-01-12', '2019-01-04', 'Paiement par carte', 250, 5, 1),
(13, 'test', '2019-01-12', '2019-01-04', 'Paiement par carte', 300, 5, 1);

--
-- Contenu de la table `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', '0');

--
-- Contenu de la table `typeabonnement`
--

INSERT INTO `typeabonnement` (`ID`, `NOM`, `PRIX`) VALUES
(1, 'INTERNET', 250),
(2, 'APPELS', 300),
(3, 'SMS', 150);

--
-- Contenu de la table `typeachats`
--

INSERT INTO `typeachats` (`ID`, `NOM`, `PRIX`) VALUES
(1, 'IPhone X', 9500),
(2, 'CLE USB', 60),
(3, 'Casque Téléphonique', 120);

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`ID`, `NOM`) VALUES
(1, 'Marrakech'),
(2, 'Casablanca'),
(3, 'Rabat'),
(4, 'Tanger'),
(5, 'Agadir');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
