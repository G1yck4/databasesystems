-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2026 at 02:48 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labdiagnostic`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinicstaff`
--

CREATE TABLE `clinicstaff` (
  `id` int NOT NULL,
  `empid` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mi` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternate` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `datehired` date DEFAULT NULL,
  `address` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `encodedby` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logintracker`
--

CREATE TABLE `logintracker` (
  `id` int NOT NULL,
  `empid` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdate` date NOT NULL,
  `ctime` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cday` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logintracker`
--

INSERT INTO `logintracker` (`id`, `empid`, `cdate`, `ctime`, `cday`) VALUES
(1, 'EM00001', '2026-02-16', '10:47 AM', 'Monday'),
(2, 'EM00001', '2026-02-16', '10:48 AM', 'Monday'),
(3, 'EM00001', '2026-02-16', '10:52 AM', 'Monday'),
(4, 'EM00001', '2026-02-16', '11:03 AM', 'Monday'),
(5, 'EM00001', '2026-02-16', '11:11 AM', 'Monday'),
(6, 'EM00001', '2026-02-16', '11:57 AM', 'Monday'),
(7, 'EM00001', '2026-02-16', '12:00 PM', 'Monday'),
(8, 'EM00001', '2026-02-16', '03:28 PM', 'Monday'),
(9, 'EM00001', '2026-02-16', '03:45 PM', 'Monday'),
(10, 'EM00001', '2026-02-16', '03:52 PM', 'Monday'),
(11, 'EM00001', '2026-02-16', '04:00 PM', 'Monday'),
(12, 'EM00001', '2026-02-16', '04:08 PM', 'Monday'),
(13, 'EM00001', '2026-02-16', '04:14 PM', 'Monday'),
(14, 'EM00001', '2026-02-16', '04:16 PM', 'Monday'),
(15, 'EM00001', '2026-02-16', '04:22 PM', 'Monday'),
(16, 'EM00001', '2026-02-16', '04:27 PM', 'Monday'),
(17, 'EM00001', '2026-02-16', '04:35 PM', 'Monday'),
(18, 'EM00001', '2026-03-01', '11:50 PM', 'Sunday'),
(19, 'EM00001', '2026-03-08', '01:24 PM', 'Sunday'),
(20, 'EM00001', '2026-03-08', '10:22 PM', 'Sunday'),
(21, 'EM00001', '2026-03-08', '10:31 PM', 'Sunday'),
(22, 'EM00001', '2026-03-08', '10:46 PM', 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `userrights`
--

CREATE TABLE `userrights` (
  `id` int NOT NULL,
  `userid` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `empid` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upassword` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userrights`
--

INSERT INTO `userrights` (`id`, `userid`, `empid`, `username`, `upassword`) VALUES
(1, 'U0001', 'EM00001', 'lab', 'lab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinicstaff`
--
ALTER TABLE `clinicstaff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintracker`
--
ALTER TABLE `logintracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `userrights`
--
ALTER TABLE `userrights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD KEY `empid` (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinicstaff`
--
ALTER TABLE `clinicstaff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logintracker`
--
ALTER TABLE `logintracker`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userrights`
--
ALTER TABLE `userrights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
