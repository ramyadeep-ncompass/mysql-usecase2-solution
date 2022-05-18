-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 12:06 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE biodata (
  NID varchar(4),
  NAME varchar(100),
  EMAIL varchar(100),
  AGE varchar(100)
);

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`NID`, `NAME`, `EMAIL`, `AGE`) VALUES
('N001', 'RAJKUMAR\r\n', 'rajkumar\r\n', '21'),
('N002', 'GANESH\r\n', 'g@gmail.com\r\n', '20'),
('N003', 'RAGHU\r\n', '', '22'),
('N004', 'CHITRA\r\n', 'c@gmail.com\r\n', '21'),
('N005', 'PRIYA\r\n', 'priya@gmail.com\r\n', 'abc\r\n'),
('N006', 'PREM KUMAR\r\n', '', '12\r\n'),
('N007', 'KRISHNA\r\n', 'kkr123@hotmail.in\r\n', '21\r\n'),
('N008', 'PREETHI\r\n', 'preethi18@mail.com\r\n', '20\r\n'),
('N009', 'RAVI\r\n', 'ravishankar@21gmail.com\r\n', '23.5\r\n'),
('N010', 'MEENA\r\n', 'meena@yahoo.in\r\n', '20\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
