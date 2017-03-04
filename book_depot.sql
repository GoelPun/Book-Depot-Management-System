-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2015 at 01:39 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `book_depot`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_reg`
--

CREATE TABLE IF NOT EXISTS `book_reg` (
  `Store_name` varchar(30) NOT NULL,
  `isbn_no` varchar(30) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `auther` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `mrp` int(30) NOT NULL,
  `discount` double(30,4) NOT NULL,
  `selling` double(30,4) NOT NULL,
  `qunatity` int(30) NOT NULL,
  `version` varchar(30) NOT NULL,
  `alert` int(30) NOT NULL,
  PRIMARY KEY (`isbn_no`),
  UNIQUE KEY `isbn_no` (`isbn_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_reg`
--

INSERT INTO `book_reg` (`Store_name`, `isbn_no`, `book_name`, `auther`, `publisher`, `mrp`, `discount`, `selling`, `qunatity`, `version`, `alert`) VALUES
('Matrix', 'ING56VG', 'Cloud Computing', 'Fern Halper', 'Everything', 500, 10.0000, 450.0000, 48, 'Old', 3),
('VED', 'ZAR23AB', 'Programming with Java', 'Balagurusamy', 'Primer', 400, 12.0000, 352.0000, 36, 'New', 4),
('Matrix', 'RY5PDSSB', '18 Wonder of English', 'S.D. Chand', 'bilt', 200, 10.0000, 180.0000, 104, 'New', 5),
('Note Book', 'LOh12NH', 'The Complete Referance(JAVA)', 'Herbert Schildt', 'Osborne', 500, 5.0000, 475.0000, 45, 'New', 3),
('Singh', 'HGF45TR', 'RDBMS', 'Wisler', 'MTC', 562, 5.0000, 533.9000, 45, 'New', 4),
('Goyal', '1', 'Data WareHouse', 'Rupinder', 'CU', 846, 6.0000, 795.2400, 50, 'New', 3),
('Jain', '2', 'Num Stat.', 'Sharma', 'CGC', 455, 5.0000, 432.2500, 41, 'New', 7);

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `Name` varchar(40) NOT NULL,
  `Userid` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`Name`, `Userid`, `email`, `password`) VALUES
('Puneet', '13bcs', 'pg.xpression@gmail.com', '123456'),
('Mohit', 're', 'jn.mht1995@gmail.com', 'mhtjn');

-- --------------------------------------------------------

--
-- Table structure for table `distributer`
--

CREATE TABLE IF NOT EXISTS `distributer` (
  `name` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `account` int(30) NOT NULL,
  `ifcs` bigint(30) NOT NULL,
  `bname` varchar(30) NOT NULL,
  PRIMARY KEY (`ifcs`),
  UNIQUE KEY `ifcs` (`ifcs`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributer`
--

INSERT INTO `distributer` (`name`, `mobile`, `email`, `address`, `account`, `ifcs`, `bname`) VALUES
('Jasbir', '6541823974', 'singh2gamil.com', 'Mohali', 4561852, 78451245963, 'Punjab National Bank'),
('Mohit', '9514675329', 'mhj.45@outlook.com', 'Patiala', 78458961, 51462874863, 'SBI'),
('Nikhil', '7531598524', 'nikhil12@yahoo.com', 'Chandigarh', 3214565, 45615975321, 'SBI'),
('Puneet Goyal', '9646860986', 'pg.xpression@gmail.com', '151,S-5,B,Mandi Gobindgarh', 1995182, 78943216504, 'HDFC');
