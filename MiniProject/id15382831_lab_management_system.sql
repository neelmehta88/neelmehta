-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2020 at 04:40 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15382831_lab_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_room`
--

CREATE TABLE `info_room` (
  `ID` int(225) NOT NULL,
  `room_name` varchar(225) NOT NULL,
  `room_no` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_room`
--

INSERT INTO `info_room` (`ID`, `room_name`, `room_no`) VALUES
(23, 'DBMS', 109),
(26, 'LD', 121),
(29, 'IP', 106),
(30, 'IOT', 110),
(35, 'DSA', 103);

-- --------------------------------------------------------

--
-- Table structure for table `info_user`
--

CREATE TABLE `info_user` (
  `ID` int(225) NOT NULL,
  `u_name` varchar(225) NOT NULL,
  `u_pass` varchar(225) NOT NULL,
  `u_type` varchar(225) NOT NULL,
  `room_no` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_user`
--

INSERT INTO `info_user` (`ID`, `u_name`, `u_pass`, `u_type`, `room_no`) VALUES
(4, 'ANIKET', 'asd', 'Lab-Assistent', 110);

-- --------------------------------------------------------

--
-- Table structure for table `list_of_item`
--

CREATE TABLE `list_of_item` (
  `ID` int(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `model` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `brand` varchar(225) NOT NULL,
  `quantity` int(225) NOT NULL,
  `quantity_left` int(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(225) NOT NULL,
  `room_no` int(225) NOT NULL,
  `price_per_item` int(225) NOT NULL,
  `serial_ID` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_of_item`
--

INSERT INTO `list_of_item` (`ID`, `image`, `model`, `category`, `brand`, `quantity`, `quantity_left`, `status`, `description`, `type`, `room_no`, `price_per_item`, `serial_ID`) VALUES
(1, '../Upload/9.jpg', '	SM-9221		', 'keyboard', 'Acer', 13, 2, 'new', 'wireless', '243', 109, 300, 12345),
(2, '../Upload/x9thor.jpg', '	SM-9221		', 'Mouse', 'Acer', 13, 2, 'lost', 'wired', '243', 109, 100, 456790),
(3, '../Upload/41VpBQDispL.jpg', 'AM-1908', ' Mouse pad', 'Acer', 2, 2, 'new', 'thin', '456', 110, 440, 356782);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ID` int(225) NOT NULL,
  `room_name` varchar(225) NOT NULL,
  `room` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ID`, `room_name`, `room`) VALUES
(1, 'DBMS', 'labmangementsystem.000webhostapp.com/Lab_List/dbms.php'),
(2, 'DSA', 'labmangementsystem.000webhostapp.com/Lab_List/dsa.php\r\n'),
(3, 'IOT', 'labmangementsystem.000webhostapp.com/Lab_List/iot.php\r\n'),
(4, 'IP', 'labmangementsystem.000webhostapp.com/Lab_List/ip.php\r\n'),
(5, 'LD', 'labmangementsystem.000webhostapp.com/Lab_List/ld.php\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_room`
--
ALTER TABLE `info_room`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `info_user`
--
ALTER TABLE `info_user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `list_of_item`
--
ALTER TABLE `list_of_item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_room`
--
ALTER TABLE `info_room`
  MODIFY `ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `info_user`
--
ALTER TABLE `info_user`
  MODIFY `ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `list_of_item`
--
ALTER TABLE `list_of_item`
  MODIFY `ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
