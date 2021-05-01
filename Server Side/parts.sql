-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 04:18 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monster`
--

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `Design_ID` varchar(50) NOT NULL,
  `Data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`Design_ID`, `Data`) VALUES
('Green Head', '  <monster design_id=\"Green Head\">\n    <image>\n      <id>head7.png</id>\n      <coordinates>96.19998168945312</coordinates>\n      <coordinates>545.7875213623047</coordinates>\n    </image>\n    <image>\n      <id>body2.PNG</id>\n      <coordinates>178.80001831054688</coordinates>\n      <coordinates>545.9625091552734</coordinates>\n    </image>\n    <image>\n      <id>hand4L.png</id>\n      <coordinates>112.60000610351562</coordinates>\n      <coordinates>467.1374969482422</coordinates>\n    </image>\n    <image>\n      <id>hand4R.png</id>\n      <coordinates>108.60000610351562</coordinates>\n      <coordinates>622.1374969482422</coordinates>\n    </image>\n    <image>\n      <id>leg4L.png</id>\n      <coordinates>279.1999969482422</coordinates>\n      <coordinates>494.31248474121094</coordinates>\n    </image>\n    <image>\n      <id>leg4R.png</id>\n      <coordinates>279.1999816894531</coordinates>\n      <coordinates>604.3124847412109</coordinates>\n    </image>\n  </monster>\n'),
('Orangy', '  <monster design_id=\"Orangy\">\n    <image>\n      <id>head6.jpg</id>\n      <coordinates>111.80001831054688</coordinates>\n      <coordinates>531.7875213623047</coordinates>\n    </image>\n    <image>\n      <id>body1.PNG</id>\n      <coordinates>211.80001831054688</coordinates>\n      <coordinates>530.9625091552734</coordinates>\n    </image>\n    <image>\n      <id>hand2L.png</id>\n      <coordinates>208.19998168945312</coordinates>\n      <coordinates>463.1374969482422</coordinates>\n    </image>\n    <image>\n      <id>hand2R.png</id>\n      <coordinates>208.19998168945312</coordinates>\n      <coordinates>602.1374969482422</coordinates>\n    </image>\n    <image>\n      <id>feet1L.PNG</id>\n      <coordinates>293.8000030517578</coordinates>\n      <coordinates>480.31248474121094</coordinates>\n    </image>\n    <image>\n      <id>feet1R.PNG</id>\n      <coordinates>300.8000183105469</coordinates>\n      <coordinates>594.3124847412109</coordinates>\n    </image>\n  </monster>\n'),
('Red Devil', '  <monster design_id=\"Red Devil\">\n    <image>\n      <id>head6.png</id>\n      <coordinates>97.19998168945312</coordinates>\n      <coordinates>530.7875213623047</coordinates>\n    </image>\n    <image>\n      <id>body1.PNG</id>\n      <coordinates>182.79998779296875</coordinates>\n      <coordinates>531.9625091552734</coordinates>\n    </image>\n    <image>\n      <id>hand1L.png</id>\n      <coordinates>177.79998779296875</coordinates>\n      <coordinates>467.1374969482422</coordinates>\n    </image>\n    <image>\n      <id>hand1R.png</id>\n      <coordinates>175.79998779296875</coordinates>\n      <coordinates>593.1374969482422</coordinates>\n    </image>\n    <image>\n      <id>feet1L.PNG</id>\n      <coordinates>263.8000030517578</coordinates>\n      <coordinates>479.31248474121094</coordinates>\n    </image>\n    <image>\n      <id>feet1R.PNG</id>\n      <coordinates>270.8000030517578</coordinates>\n      <coordinates>592.3124847412109</coordinates>\n    </image>\n  </monster>\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`Design_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
