-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2023 at 01:38 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btth02_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `comment` varchar(200) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `parent_id`, `comment`, `sender`, `date`) VALUES
(1, 0, 'Great job!', 'Simona Hornigy', '2023-03-18 17:00:00'),
(2, 0, 'Well done!', 'Alfonse Braikenridgt', '2022-10-06 17:00:00'),
(3, 0, 'Great job!', 'Xavier Lankeste', '2023-04-09 17:00:00'),
(4, 0, 'Impressive!', 'Farley Bowland', '2023-09-18 17:00:00'),
(5, 5, 'Impressive!', 'Packston Surtees', '2022-12-31 17:00:00'),
(6, 6, 'Fantastic!', 'Judd Le febre', '2023-02-24 17:00:00'),
(7, 7, 'Keep it up!', 'Krystle Perutto', '2023-08-14 17:00:00'),
(8, 8, 'Impressive!', 'Janeva Botly', '2023-10-01 17:00:00'),
(9, 9, 'Bravo!', 'Dacie Trighton', '2022-05-25 17:00:00'),
(10, 10, 'I love it!', 'Cordie Largen', '2022-05-26 17:00:00'),
(11, 11, 'Well done!', 'Ashbey Plaistowe', '2023-12-02 17:00:00'),
(12, 12, 'Great job!', 'Tallulah Allcroft', '2022-10-19 17:00:00'),
(13, 13, 'Amazing work!', 'Wilfrid McNae', '2023-04-29 17:00:00'),
(14, 14, 'Impressive!', 'Marcia Esseby', '2023-09-30 17:00:00'),
(15, 15, 'I love it!', 'Meghan Spaunton', '2023-11-02 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
