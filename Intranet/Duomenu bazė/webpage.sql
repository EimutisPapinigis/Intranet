-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 01:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpage`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentas`
--

CREATE TABLE `commentas` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `time` varchar(256) NOT NULL,
  `date` varchar(256) NOT NULL,
  `msg` varchar(256) NOT NULL,
  `Title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commentas`
--

INSERT INTO `commentas` (`id`, `name`, `time`, `date`, `msg`, `Title`) VALUES
(2, 'eimutis', '11:49:05 AM', '11/18/2021', 'Testeing', ''),
(3, 'eimutis', '11:50:22 AM', '11/18/2021', 'testing', ''),
(4, 'eimutis', '11:51:42 AM', '11/18/2021', 'testing', 'test'),
(5, 'eimutis', '3:12:00 PM', '11/18/2021', 'Žinutė', 'Titulas'),
(6, 'eimutis', '10:56:27 AM', '11/29/2021', 'Laba diena,\r\nTestuojama', 'Testas formato'),
(7, 'eimutis', '11:00:04 AM', '11/29/2021', 'testing,<br />\r\nlinebreaks', 'Test'),
(8, 'eimutis', '11:00:32 AM', '11/29/2021', 'spaces   ,<br />\r\n   will it disapear', 'test'),
(9, 'eimutis', '11:12:42 AM', '11/29/2021', 'text<br />\r\nlinebreak', 'Test 12:12');

-- --------------------------------------------------------

--
-- Table structure for table `darbuotojai`
--

CREATE TABLE `darbuotojai` (
  `id` int(11) NOT NULL,
  `Vardas_Pavarde` text NOT NULL,
  `Pareigos` text NOT NULL,
  `Miestas` text NOT NULL,
  `Pirmadienis` varchar(256) NOT NULL,
  `Antradienis` varchar(256) NOT NULL,
  `Treciadienis` varchar(256) NOT NULL,
  `Ketvirtadienis` varchar(256) NOT NULL,
  `Penktadienis` varchar(256) NOT NULL,
  `Sestadienis` varchar(256) NOT NULL,
  `Sekmadienis` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `darbuotojai`
--

INSERT INTO `darbuotojai` (`id`, `Vardas_Pavarde`, `Pareigos`, `Miestas`, `Pirmadienis`, `Antradienis`, `Treciadienis`, `Ketvirtadienis`, `Penktadienis`, `Sestadienis`, `Sekmadienis`) VALUES
(2, 'Eimutis Papinigis', 'Programuotojas', 'Kaunas', '13:00 - 19:00', '13:00 - 19:00', '13:00 - 19:00', '13:00 - 13:00', '13:00 - 19:00', '13:00 - 19:00', '13:00 - 19:00'),
(3, 'Eimutis Papinigis', 'Testuotojas', 'Kaunas', '12:00 - 19:11', '13:00 - 19:00', '14:00 - 19:30', '15:00 - 15:00', '16:00 - 19:00', '17:00 - 19:00', '18:00 - 19:00'),
(4, 'Test', 'test', 'test', ' - ', ' - ', ' - ', ' - ', ' - ', ' - ', ' - ');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `downloads`) VALUES
(1, '1h38m.txt', 0, 0),
(2, 'New Text Document (4).txt', 144, 0),
(3, 'multisim link for 12version.txt', 84, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gimtadieniai`
--

CREATE TABLE `gimtadieniai` (
  `id` int(11) NOT NULL,
  `Vardas_Pavarde` varchar(256) NOT NULL,
  `Tortadienis` date NOT NULL,
  `Gimimo_diena` date NOT NULL,
  `Pareigos` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gimtadieniai`
--

INSERT INTO `gimtadieniai` (`id`, `Vardas_Pavarde`, `Tortadienis`, `Gimimo_diena`, `Pareigos`) VALUES
(2, 'Eimutis Papinigis', '2021-11-22', '2021-11-15', 'Programuotojas');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `uploaded_on`, `status`, `username`) VALUES
(1, '1h38m.txt', '2021-11-25 14:15:17', '1', ''),
(2, '1h38m.txt', '2021-11-25 14:15:21', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `kontaktai`
--

CREATE TABLE `kontaktai` (
  `kontakto_id` int(11) NOT NULL,
  `Pavarde` varchar(256) NOT NULL,
  `Vardas` varchar(256) NOT NULL,
  `Pareigos` varchar(256) NOT NULL,
  `MobTelNr` varchar(256) NOT NULL,
  `darbo_vieta` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontaktai`
--

INSERT INTO `kontaktai` (`kontakto_id`, `Pavarde`, `Vardas`, `Pareigos`, `MobTelNr`, `darbo_vieta`, `email`) VALUES
(11, 'Papinigis', 'Eimutis', 'Programuotojas', '860868686', 'Ainera', 'eimantas456456@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`) VALUES
(3, 'eimutis', 'eimantas456456@gmail.com', 'd2111a7544f8f1f94101c1c4a7b3aee37decade8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentas`
--
ALTER TABLE `commentas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `darbuotojai`
--
ALTER TABLE `darbuotojai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `gimtadieniai`
--
ALTER TABLE `gimtadieniai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaktai`
--
ALTER TABLE `kontaktai`
  ADD PRIMARY KEY (`kontakto_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentas`
--
ALTER TABLE `commentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `darbuotojai`
--
ALTER TABLE `darbuotojai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gimtadieniai`
--
ALTER TABLE `gimtadieniai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kontaktai`
--
ALTER TABLE `kontaktai`
  MODIFY `kontakto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
