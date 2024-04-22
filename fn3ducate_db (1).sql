-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 04:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fn3ducate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocation_db`
--

CREATE TABLE `allocation_db` (
  `Allocation_ID` int(11) NOT NULL,
  `Tutor_ID` varchar(6) NOT NULL,
  `Timeslot_Code` varchar(4) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_db`
--

CREATE TABLE `booking_db` (
  `Booking_ID` int(11) NOT NULL,
  `Student_ID` varchar(6) NOT NULL,
  `Tutor_ID` varchar(6) NOT NULL,
  `Level_Code` varchar(3) NOT NULL,
  `Timeslot_Code` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level_db`
--

CREATE TABLE `level_db` (
  `Level_Code` varchar(3) NOT NULL,
  `Student_Level` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_tutordb`
--

CREATE TABLE `phone_tutordb` (
  `Tutor_Phone` varchar(13) NOT NULL,
  `Tutor_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_db`
--

CREATE TABLE `student_db` (
  `Student_ID` varchar(6) NOT NULL,
  `Level_Code` varchar(3) NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Password_Stud` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_db`
--

CREATE TABLE `subject_db` (
  `Subject_ID` varchar(5) NOT NULL,
  `Subject_Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timeslot_db`
--

CREATE TABLE `timeslot_db` (
  `Timeslot_Code` varchar(4) NOT NULL,
  `Timeslot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_db`
--

CREATE TABLE `tutor_db` (
  `Tutor_ID` varchar(6) NOT NULL,
  `Tutor_Phone` varchar(13) NOT NULL,
  `Password_Tut` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocation_db`
--
ALTER TABLE `allocation_db`
  ADD PRIMARY KEY (`Allocation_ID`);

--
-- Indexes for table `booking_db`
--
ALTER TABLE `booking_db`
  ADD PRIMARY KEY (`Booking_ID`);

--
-- Indexes for table `level_db`
--
ALTER TABLE `level_db`
  ADD PRIMARY KEY (`Level_Code`);

--
-- Indexes for table `phone_tutordb`
--
ALTER TABLE `phone_tutordb`
  ADD PRIMARY KEY (`Tutor_Phone`);

--
-- Indexes for table `student_db`
--
ALTER TABLE `student_db`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `subject_db`
--
ALTER TABLE `subject_db`
  ADD PRIMARY KEY (`Subject_ID`);

--
-- Indexes for table `timeslot_db`
--
ALTER TABLE `timeslot_db`
  ADD PRIMARY KEY (`Timeslot_Code`);

--
-- Indexes for table `tutor_db`
--
ALTER TABLE `tutor_db`
  ADD PRIMARY KEY (`Tutor_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allocation_db`
--
ALTER TABLE `allocation_db`
  MODIFY `Allocation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `booking_db`
--
ALTER TABLE `booking_db`
  MODIFY `Booking_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
