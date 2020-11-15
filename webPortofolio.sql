-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 09, 2020 at 03:38 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webPortofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `text`) VALUES
(1, 'Hello, my name is Mathius Kormasela and I\'m a software developer at North Jakarta.\r\nMy abilities consist of HTML5, CSS3, JavaScript, Typescript, Node Js, Express Js, and MySQL database. This year, I have graduated from National Vocational High School in Jakarta with a major Software Engineering and last year, I won the city level student competition in Web Design and Technology.');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `subtitle`) VALUES
(1, 'Hey, I’m a Software Developer', 'Hi, I\'m Mathius a software developer from Jakarta \r\nand I\'m able to build website from scratch \r\nwith Javascript tech stack.');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `title`, `description`, `photo`) VALUES
(2, 'Student Management App', 'Build with HTML, CSS Native, Javascript Native, Express Js and MySQL Database.', 'Screenshot_2020-09-17_08-43-31-1600538587983.png'),
(5, 'Sport Website', 'Build with HTML, CSS & Javascript.', 'Screenshot_2020-09-17_08-58-06-1600540992698.png'),
(6, 'Template Online Shop', 'Build with HTML, CSS & Javascript.', 'Screenshot_2020-09-17_09-00-21-1600541038149.png'),
(7, 'Static Web Profile', 'Build with HTML, CSS, Bulma & Javascript.', 'Screenshot_2020-09-17_09-08-53-1600541082264.png'),
(9, 'Dynamic Web Profile', 'Build with HTML, CSS, Javascript, Vue Js, Node Js, Express Js & MySQL (MEVN Stack)', 'web-profile2-1602222689340.png'),
(11, 'Aplikasi Konversi Mata Uang', 'This app build use HTML, CSS dan Javascript', 'currency-converter-1602174809269.png'),
(16, 'Portofolio React', 'Build by MERN', 'kiko-1602227223732.png');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `level`) VALUES
(1, 'HTML', '95'),
(2, 'CSS', '95'),
(3, 'Javascript', '95'),
(4, 'Typescript', '85'),
(5, 'Node Js ', '90'),
(6, 'Express Js', '90'),
(7, 'Vue Js', '85'),
(8, 'MySQL', '82'),
(12, 'GIT', '80');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `photo`) VALUES
(2, 'Mathius Kormasela', 'admin@gmail.com', '$2a$08$DqG5QJjHuOBsA0iC6MVzXeY.4secWtNYY8QFoxOsKZTjzy1ePpYca', 'IMG_20181231_152552-1602226628528.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photo` (`photo`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `photo` (`photo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
