-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 02:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fortp2_dpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_acc` int(8) NOT NULL,
  `Usname` varchar(20) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_acc`, `Usname`, `Pass`) VALUES
(1, 'AdminTest', 'ThePassword');

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `id_agent` int(8) NOT NULL,
  `AgencyName` varchar(255) NOT NULL,
  `AgencyCo` varchar(255) NOT NULL,
  `DateFound` varchar(50) NOT NULL,
  `AgencyDesc` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`id_agent`, `AgencyName`, `AgencyCo`, `DateFound`, `AgencyDesc`, `image`) VALUES
(1, 'Nijisanji', 'Anycolor Inc.', 'Febuary 2018', 'Very famous for the amount of talent they have it the moment. Branching from Japan to Chine, Indonesia, Korea, India (was), and English as globally.', 'src//Images//qloyu1e.png'),
(2, 'Hololive Production', 'Cover Corporation', 'December 2017', 'Popular with the Idol-like concept and the on of the famous group on vtuber agency worlds. Brancing from Japan to China (was), Indonesia, and English as globally', 'src//Images//trzmyn3.svg'),
(7, 'VShojo', 'Vshojo Inc.', '24 November 2020', 'A very popular agency that have one of the most freedom in term of rules', 'src//Images//3j7g5wt.svg');

-- --------------------------------------------------------

--
-- Table structure for table `talent`
--

CREATE TABLE `talent` (
  `id_talent` int(8) NOT NULL,
  `id_agent` int(8) NOT NULL,
  `TalentName` varchar(255) NOT NULL,
  `DebutDate` varchar(50) NOT NULL,
  `TalentDesc` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `talent`
--

INSERT INTO `talent` (`id_talent`, `id_agent`, `TalentName`, `DebutDate`, `TalentDesc`, `image`) VALUES
(1, 2, 'Airani Iofifteen', '12 April 2020', '\"IOFORIA~! OBISA!\" \"Pagi semua! I‚Äôm your beloved smart alien iofi from hololive Indonesia, nice to meet you!\"\r\nAn alien princess who ran away from home and come to the earth and fell in love with earth‚Äôs culture, sometimes like to tease the viewers and being a nice iomama if her fans needs it. Sometimes got crazy over gacha game.', 'src//Images//xiv50jy.jpeg'),
(2, 1, 'Hana Macchia', '13 September 2019', 'Hai! Aku Hana Macchia, dipanggilnya Hana. Saya adalah official Virtual Liver dari NIJISANJI ID. Aku mahasiswi desain yang debut untuk membuat safe space untuk orang agar merasa nyaman, terhibur, dan merasa tidak sendiri. Hana akan selalu menemanimu dan menyemangatimu di sore dan malam hari. Mari berjuang dengan kerja dan tugas bersama!', 'src//Images//13cyy8a.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_acc`);

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`id_agent`);

--
-- Indexes for table `talent`
--
ALTER TABLE `talent`
  ADD PRIMARY KEY (`id_talent`),
  ADD KEY `fromagent` (`id_agent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_acc` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `id_agent` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `talent`
--
ALTER TABLE `talent`
  MODIFY `id_talent` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `talent`
--
ALTER TABLE `talent`
  ADD CONSTRAINT `talent_ibfk_1` FOREIGN KEY (`id_agent`) REFERENCES `agency` (`id_agent`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
