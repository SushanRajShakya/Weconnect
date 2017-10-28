-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2017 at 07:00 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `weconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE IF NOT EXISTS `logindetails` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `login_status` varchar(10) NOT NULL DEFAULT 'NO',
  `Last_active` varchar(100) NOT NULL DEFAULT '0000/00/00_00/00/00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Username_2` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`ID`, `Username`, `Password`, `account_type`, `login_status`, `Last_active`) VALUES
(33, 'Admin', 'admin', 'admin', 'NO', '2017/08/07_20/26/46'),
(36, 'Sushan', '4f5a196bd1ae4f5dc19267e127af76d4', 'user', 'YES', '2016/12/24_12/43/17'),
(37, 'Pravesh', 'fa830fe4e6a20d01e68733a020a3d906', 'user', 'NO', '2016/12/24_15/03/58'),
(38, 'Sir', 'dcff57c9a964f83fbf81cc75ec2e413a', 'admin', 'YES', '2016/12/24_13/51/31'),
(39, 'Heena', 'e7f4a1abdd69d6c9a5b3f8b8736ea2f3', 'user', 'NO', '2016/12/24_15/36/49'),
(40, 'Anuradha', 'f09a4ddc62a6a6c15fc213f17e91d09c', 'user', 'NO', '2016/12/24_12/36/13'),
(41, 'Teacher', '8d788385431273d11e8b43bb78f3aa41', 'admin', 'NO', '2016/12/24_15/36/48'),
(42, 'Newstudent', '1a1dc91c907325c69271ddf0c944bc72', 'user', 'NO', '0000/00/00_00/00/00'),
(43, 'Gode', 'dfcead4b83820abebe36e18e8cf3895b', 'user', 'NO', '2017/07/11_13/53/22');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Notice_subject` varchar(500) NOT NULL,
  `Notice` varchar(4000) NOT NULL,
  `Timestamp` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`ID`, `Notice_subject`, `Notice`, `Timestamp`) VALUES
(16, 'Exams', 'Exam is going  to be held soon...', '2016/12/24_10/48/47'),
(17, 'Fee Payment Final', 'All the students are supposed to pay their fees,,,,', '2016/12/24_11/07/59'),
(41, 'Final Defence', 'Final defence will be held 17th of Poush 2073. Students must submit their proposal before\n1:30 pm.Thanyou!!\n\nKantipur Engineering College,\nDhapakhel, Lalitpur.', '2016/12/24_11/02/17'),
(62, 'Merry Christmas', 'Christmas 2016', '2016/12/24_13/40/25'),
(67, 'port no', 'smtp-587\npop3-995', '2016/12/24_12/18/29'),
(68, 'Event', 'tech  bihani 3', '2016/12/24_12/22/15'),
(71, 'hello', 'notice', '2016/12/24_15/35/29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE IF NOT EXISTS `tbl_file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(200) NOT NULL,
  `Receiver` varchar(200) NOT NULL,
  `FilePath` varchar(2000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_file`
--

INSERT INTO `tbl_file` (`ID`, `Sender`, `Receiver`, `FilePath`) VALUES
(2, 'Heena', 'Pravesh', 'Untitled1.c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE IF NOT EXISTS `tbl_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(150) NOT NULL,
  `Receiver` varchar(150) NOT NULL,
  `Content` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
