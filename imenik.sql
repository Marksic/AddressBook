-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2015 at 11:34 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imenik`
--

-- --------------------------------------------------------

--
-- Table structure for table `adrese`
--

CREATE TABLE IF NOT EXISTS `adrese` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `grad` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ulica_br` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  UNIQUE KEY `a_id` (`a_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `imena`
--

CREATE TABLE IF NOT EXISTS `imena` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `podaci`
--

CREATE TABLE IF NOT EXISTS `podaci` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mob_tel` int(11) NOT NULL,
  `fix_tel` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id` (`p_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adrese`
--
ALTER TABLE `adrese`
  ADD CONSTRAINT `adrese_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `imena` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `podaci`
--
ALTER TABLE `podaci`
  ADD CONSTRAINT `podaci_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `imena` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
