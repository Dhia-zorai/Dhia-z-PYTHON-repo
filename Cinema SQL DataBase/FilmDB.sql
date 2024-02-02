-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 08:59 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Film`
--

-- --------------------------------------------------------

--
-- Table structure for table `Acteur`
--

CREATE TABLE IF NOT EXISTS `Acteur` (
  `codeact` varchar(10) NOT NULL,
  `nomact` text NOT NULL,
  `prenom` text NOT NULL,
  `datenais` date NOT NULL,
  PRIMARY KEY (`codeact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Cinema`
--

CREATE TABLE IF NOT EXISTS `Cinema` (
  `codecin` varchar(10) NOT NULL,
  `taillEcran` int(11) NOT NULL,
  `nomcin` text NOT NULL,
  `adrcin` text NOT NULL,
  `capacite` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`codecin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Film`
--

CREATE TABLE IF NOT EXISTS `Film` (
  `numfilm` int(11) NOT NULL AUTO_INCREMENT,
  `nomfilm` text NOT NULL,
  `genre` text NOT NULL,
  PRIMARY KEY (`numfilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Projection`
--

CREATE TABLE IF NOT EXISTS `Projection` (
  `codecin` varchar(10) NOT NULL,
  `numfilm` int(11) NOT NULL,
  `dateproj` date NOT NULL,
  PRIMARY KEY (`codecin`,`numfilm`,`dateproj`),
  KEY `numfilm` (`numfilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Projection`
--
ALTER TABLE `Projection`
  ADD CONSTRAINT `Projection_ibfk_2` FOREIGN KEY (`codecin`) REFERENCES `Cineam` (`codecin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Projection_ibfk_3` FOREIGN KEY (`numfilm`) REFERENCES `Film` (`numfilm`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
