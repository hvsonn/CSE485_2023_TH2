-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2023 lúc 10:25 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btth02_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT  NULL ,
  `parent_id` int(11) NOT  NULL ,
  `comment` varchar(200) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);
COMMIT;
insert into comment (id, parent_id, comment, sender, date) values (1, 1, 'Great job!', 'Simona Hornigy', '2023-03-19');
insert into comment (id, parent_id, comment, sender, date) values (2, 2, 'Well done!', 'Alfonse Braikenridgt', '2022-10-07');
insert into comment (id, parent_id, comment, sender, date) values (3, 3, 'Great job!', 'Xavier Lankeste', '2023-04-10');
insert into comment (id, parent_id, comment, sender, date) values (4, 4, 'Impressive!', 'Farley Bowland', '2023-09-19');
insert into comment (id, parent_id, comment, sender, date) values (5, 5, 'Impressive!', 'Packston Surtees', '2023-01-01');
insert into comment (id, parent_id, comment, sender, date) values (6, 6, 'Fantastic!', 'Judd Le febre', '2023-02-25');
insert into comment (id, parent_id, comment, sender, date) values (7, 7, 'Keep it up!', 'Krystle Perutto', '2023-08-15');
insert into comment (id, parent_id, comment, sender, date) values (8, 8, 'Impressive!', 'Janeva Botly', '2023-10-02');
insert into comment (id, parent_id, comment, sender, date) values (9, 9, 'Bravo!', 'Dacie Trighton', '2022-05-26');
insert into comment (id, parent_id, comment, sender, date) values (10, 10, 'I love it!', 'Cordie Largen', '2022-05-27');
insert into comment (id, parent_id, comment, sender, date) values (11, 11, 'Well done!', 'Ashbey Plaistowe', '2023-12-03');
insert into comment (id, parent_id, comment, sender, date) values (12, 12, 'Great job!', 'Tallulah Allcroft', '2022-10-20');
insert into comment (id, parent_id, comment, sender, date) values (13, 13, 'Amazing work!', 'Wilfrid McNae', '2023-04-30');
insert into comment (id, parent_id, comment, sender, date) values (14, 14, 'Impressive!', 'Marcia Esseby', '2023-10-01');
insert into comment (id, parent_id, comment, sender, date) values (15, 15, 'I love it!', 'Meghan Spaunton', '2023-11-03');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
