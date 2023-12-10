-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2023 at 01:45 PM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`id`, `name`) VALUES
(1, 'Simona Hornig'),
(2, 'Alfonse Braikenridge'),
(3, 'Xavier Lankester'),
(4, 'Farley Bowland'),
(5, 'Packston Surtees'),
(6, 'Judd Le febre'),
(7, 'Krystle Perutto'),
(8, 'Janeva Botly'),
(9, 'Dacie Trighton'),
(10, 'Cordie Largen'),
(11, 'Ashbey Plaistowe'),
(12, 'Tallulah Allcroft'),
(13, 'Wilfrid McNae'),
(14, 'Marcia Esseby'),
(15, 'Meghan Spaunton');

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `category_id` int NOT NULL,
  `userid` int NOT NULL,
  `status` enum('published','draft','archived','') NOT NULL DEFAULT 'published',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cms_posts`
--

INSERT INTO `cms_posts` (`id`, `title`, `message`, `category_id`, `userid`, `status`, `created`, `updated`) VALUES
(1, 'Staff Accountant IV', 'Butorides striatus', 1, 1, 'draft', '2023-04-27 00:00:00', '2023-12-09 19:48:46'),
(2, 'Quality Control Specialist', 'Alectura lathami', 2, 2, 'archived', '2023-07-21 00:00:00', '2023-12-09 19:48:46'),
(3, 'Pharmacist', 'Ammospermophilus nelsoni', 3, 3, 'published', '2022-10-10 00:00:00', '2023-12-09 19:48:46'),
(4, 'Payment Adjustment Coordinator', 'Dolichitus patagonum', 4, 4, 'draft', '2023-04-25 00:00:00', '2023-12-09 19:48:46'),
(5, 'Senior Developer', 'Eumetopias jubatus', 5, 5, 'archived', '2022-08-05 00:00:00', '2023-12-09 19:48:46'),
(6, 'Nurse', 'Echimys chrysurus', 6, 6, 'published', '2023-02-01 00:00:00', '2023-12-09 19:48:46'),
(7, 'Graphic Designer', 'Neophron percnopterus', 7, 7, 'archived', '2022-11-02 00:00:00', '2023-12-09 19:48:46'),
(8, 'Software Test Engineer I', 'Calyptorhynchus magnificus', 8, 8, 'archived', '2023-06-29 00:00:00', '2023-12-09 19:48:46'),
(9, 'Community Outreach Specialist', 'Vombatus ursinus', 9, 9, 'archived', '2023-11-21 00:00:00', '2023-12-09 19:48:46'),
(10, 'Senior Developer', 'Mycteria leucocephala', 10, 10, 'published', '2022-12-08 00:00:00', '2023-12-09 19:48:46'),
(11, 'Research Associate', 'Anthropoides paradisea', 11, 11, 'draft', '2023-05-17 00:00:00', '2023-12-09 19:48:46'),
(12, 'Community Outreach Specialist', 'Bettongia penicillata', 12, 12, 'published', '2022-12-29 00:00:00', '2023-12-09 19:48:46'),
(13, 'Automation Specialist III', 'Mazama gouazoubira', 13, 13, 'published', '2023-07-21 00:00:00', '2023-12-09 19:48:46'),
(14, 'Programmer Analyst IV', 'Arctogalidia trivirgata', 14, 14, 'archived', '2023-02-28 00:00:00', '2023-12-09 19:48:46'),
(15, 'Legal Assistant', 'Pseudocheirus peregrinus', 15, 15, 'draft', '2022-06-29 00:00:00', '2023-12-09 19:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int NOT NULL,
  `deleted` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `first_name`, `last_name`, `email`, `password`, `type`, `deleted`) VALUES
(1, 'Simona', 'Hornig', 'mjentin0@t.co', 'kH__c4m/72dG2', 1, 0),
(2, 'Alfonse', 'Braikenridge', 'psellor1@edublogs.org', 'rDI/Ces{}%xK{', 0, 0),
(3, 'Xavier', 'Lankester', 'jhillatt2@last.fm', 'sV#>6?Guy\"zhcoJ', 0, 0),
(4, 'Farley', 'Bowland', 'lmccaughan3@narod.ru', 'bW~OpXnG', 0, 0),
(5, 'Packston', 'Surtees', 'lcorryer4@mlb.com', 'wUSoQ!o8=QOmAL$', 0, 0),
(6, 'Judd', 'Le febre', 'dpresnall5@flickr.com', 'zV\'?}ujfA<J', 0, 0),
(7, 'Krystle', 'Perutto', 'mgibby6@princeton.edu', 'uVPY|@Qj0dP', 0, 0),
(8, 'Janeva', 'Botly', 'ralderwick7@naver.com', 'nD>dCKQso}e4kB', 0, 0),
(9, 'Dacie', 'Trighton', 'sgavozzi8@cisco.com', 'yD|1wiHI?Z', 0, 0),
(10, 'Cordie', 'Reston', 'sreston9@gizmodo.com', 'dTr{m3~u,5<t', 0, 0),
(11, 'Ashbey', 'Plaistowe', 'wwashingtona@tinypic.com', 'zP$YdSLtrc', 0, 0),
(12, 'Tallulah', 'Allcroft', 'rgallonb@admin.ch', 'fXpc(A3iJa1w<&&V', 0, 0),
(13, 'Wilfrid', 'McNae', 'tstrelitzerc@alexa.com', 'aA0`/dN/MG', 0, 0),
(14, 'Marcia', 'Esseby', 'enorthleyd@over-blog.com', 'fRV=Mr++3', 0, 0),
(15, 'Meghan', 'Spaunton', 'dslimingse@theatlantic.com', 'bV*sM*%ycE2sn6hb', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
