-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2023 lúc 10:15 AM
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
-- Cơ sở dữ liệu: `cms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_category`
--

CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
insert into cms_category (id, name) values (1, 'Simona Hornig');
insert into cms_category (id, name) values (2, 'Alfonse Braikenridge');
insert into cms_category (id, name) values (3, 'Xavier Lankester');
insert into cms_category (id, name) values (4, 'Farley Bowland');
insert into cms_category (id, name) values (5, 'Packston Surtees');
insert into cms_category (id, name) values (6, 'Judd Le febre');
insert into cms_category (id, name) values (7, 'Krystle Perutto');
insert into cms_category (id, name) values (8, 'Janeva Botly');
insert into cms_category (id, name) values (9, 'Dacie Trighton');
insert into cms_category (id, name) values (10, 'Cordie Largen');
insert into cms_category (id, name) values (11, 'Ashbey Plaistowe');
insert into cms_category (id, name) values (12, 'Tallulah Allcroft');
insert into cms_category (id, name) values (13, 'Wilfrid McNae');
insert into cms_category (id, name) values (14, 'Marcia Esseby');
insert into cms_category (id, name) values (15, 'Meghan Spaunton');
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_posts`
--

CREATE TABLE `cms_posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` enum('published','draft','archived','') NOT NULL DEFAULT 'published',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
insert into cms_posts (id, title, message, category_id, userid, status, created) values (1, 'Staff Accountant IV', 'Butorides striatus', 1, 1, 'draft', '2023-04-27');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (2, 'Quality Control Specialist', 'Alectura lathami', 2, 2, 'archived', '2023-07-21');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (3, 'Pharmacist', 'Ammospermophilus nelsoni', 3, 3, 'published', '2022-10-10');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (4, 'Payment Adjustment Coordinator', 'Dolichitus patagonum', 4, 4, 'draft', '2023-04-25');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (5, 'Senior Developer', 'Eumetopias jubatus', 5, 5, 'archived', '2022-08-05');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (6, 'Nurse', 'Echimys chrysurus', 6, 6, 'published', '2023-02-01');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (7, 'Graphic Designer', 'Neophron percnopterus', 7, 7, 'archived', '2022-11-02');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (8, 'Software Test Engineer I', 'Calyptorhynchus magnificus', 8, 8, 'archived', '2023-06-29');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (9, 'Community Outreach Specialist', 'Vombatus ursinus', 9, 9, 'archived', '2023-11-21');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (10, 'Senior Developer', 'Mycteria leucocephala', 10, 10, 'published', '2022-12-08');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (11, 'Research Associate', 'Anthropoides paradisea', 11, 11, 'draft', '2023-05-17');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (12, 'Community Outreach Specialist', 'Bettongia penicillata', 12, 12, 'published', '2022-12-29');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (13, 'Automation Specialist III', 'Mazama gouazoubira', 13, 13, 'published', '2023-07-21');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (14, 'Programmer Analyst IV', 'Arctogalidia trivirgata', 14, 14, 'archived', '2023-02-28');
insert into cms_posts (id, title, message, category_id, userid, status, created) values (15, 'Legal Assistant', 'Pseudocheirus peregrinus', 15, 15, 'draft', '2022-06-29');
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (1, 'Simona', 'Hornig', 'mjentin0@t.co', 'kH__c4m/72dG2', 1,1);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (2, 'Alfonse', 'Braikenridge', 'psellor1@edublogs.org', 'rDI/Ces{}%xK{', 0, 2);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (3, 'Xavier', 'Lankester', 'jhillatt2@last.fm', 'sV#>6?Guy"zhcoJ', 0, 3);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (4, 'Farley', 'Bowland', 'lmccaughan3@narod.ru', 'bW~OpXnG',0, 4);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (5, 'Packston', 'Surtees', 'lcorryer4@mlb.com', 'wUSoQ!o8=QOmAL$', 0, 5);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (6, 'Judd', 'Le febre', 'dpresnall5@flickr.com', 'zV''?}ujfA<J', 0, 6);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (7, 'Krystle', 'Perutto', 'mgibby6@princeton.edu', 'uVPY|@Qj0dP', 0, 7);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (8, 'Janeva', 'Botly', 'ralderwick7@naver.com', 'nD>dCKQso}e4kB', 0, 8);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (9, 'Dacie', 'Trighton', 'sgavozzi8@cisco.com', 'yD|1wiHI?Z', 0, 9);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (10, 'Cordie', 'Reston', 'sreston9@gizmodo.com', 'dTr{m\3~u,5<t', 0, 10);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (11, 'Ashbey', 'Plaistowe', 'wwashingtona@tinypic.com', 'zP$YdSLtrc', 0, 11);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (12, 'Tallulah', 'Allcroft', 'rgallonb@admin.ch', 'fXpc(A3iJa1w<&&V', 0, 12);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (13, 'Wilfrid', 'McNae', 'tstrelitzerc@alexa.com', 'aA0`/dN/MG', 0, 13);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (14, 'Marcia', 'Esseby', 'enorthleyd@over-blog.com', 'fRV=Mr++3', 0, 14);
insert into cms_user (id, first_name, last_name, email, password, type, deleted) values (15, 'Meghan', 'Spaunton', 'dslimingse@theatlantic.com', 'bV*sM*%ycE2sn6hb', 0, 15);
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
