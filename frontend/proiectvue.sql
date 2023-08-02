-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2023 at 07:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiectvue`
--

-- --------------------------------------------------------

--
-- Table structure for table `arme`
--

CREATE TABLE IF NOT EXISTS `arme` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` varchar(400) NOT NULL,
  `descriere` varchar(3000) NOT NULL,
  `poza` varchar(200) NOT NULL,
  `idcategorie` int(11) NOT NULL,
  `dataadaugare` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categorii`
--

CREATE TABLE IF NOT EXISTS `categorii` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` varchar(200) NOT NULL,
  `prenume` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `telefon` varchar(10) NOT NULL,
  `dataadaugare` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` varchar(200) NOT NULL,
  `prenume` varchar(200) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `parola` varchar(300) NOT NULL,
  `dataadaugare` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` varchar(200) NOT NULL,
  `prenume` varchar(200) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `parola` varchar(300) NOT NULL,
  `dataadaugare` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

CREATE TABLE IF NOT EXISTS `pistols` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
`nume` varchar(200) NOT NULL,
`descriere` varchar(200) NOT NULL,
`dataaduagare` timestamp NOT NULL DEFAULT current_timestamp(),

`ImgSource` varchar(200) NOT NULL  ,
  PRIMARY KEY (`id`)
)

INSERT INTO pistols(nume, descriere, dataaduagare, ImgSource) 
VALUES('Carpati', 'Pistol Carpati', current_timestamp, 'https://oqtagonmedia-1224e.kxcdn.com/media/catalog/product/cache/627d1c6dd6ad1c8dba646f43d0a4e772/7/4/7459_1_.jpg.webp');

select * from pistols