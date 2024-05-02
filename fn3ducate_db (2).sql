-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 05:53 PM
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
  `Allocation_ID` int(11) DEFAULT NULL,
  `Subject_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level_db`
--

CREATE TABLE `level_db` (
  `Level_Code` varchar(3) NOT NULL,
  `Student_Level` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level_db`
--

INSERT INTO `level_db` (`Level_Code`, `Student_Level`) VALUES
('L01', 'Form 4'),
('L02', 'Form 5');

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

--
-- Dumping data for table `student_db`
--

INSERT INTO `student_db` (`Student_ID`, `Level_Code`, `Student_Name`, `Password_Stud`) VALUES
('ID0001', 'L01', 'Afiq Aiman ', 'abc123'),
('ID0002', 'L02', 'Abdul Naufal Fitri', 'def456'),
('ID0003', 'L01', 'Nariesya Auni', 'abc112'),
('ID0004', 'L02', 'Aina Alesha', 'abc234'),
('ID0005', 'L02', 'Karl Xavier', 'abc445'),
('ID0006', 'L02', 'Imann Shaizmy', 'def334'),
('ID0007', 'L02', 'Iman Nur Batrisyia', 'abc223');

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
  ADD PRIMARY KEY (`Allocation_ID`),
  ADD KEY `allocation_tutor` (`Tutor_ID`),
  ADD KEY `allocation_timeslot` (`Timeslot_Code`);

--
-- Indexes for table `booking_db`
--
ALTER TABLE `booking_db`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `booking_tutor` (`Tutor_ID`),
  ADD KEY `booking_student` (`Student_ID`),
  ADD KEY `booking_level` (`Level_Code`),
  ADD KEY `booking_allocation` (`Allocation_ID`),
  ADD KEY `booking_subject` (`Subject_ID`);

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
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `student_level` (`Level_Code`);

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
  ADD PRIMARY KEY (`Tutor_ID`),
  ADD KEY `tutor_phone` (`Tutor_Phone`);

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocation_db`
--
ALTER TABLE `allocation_db`
  ADD CONSTRAINT `allocation_timeslot` FOREIGN KEY (`Timeslot_Code`) REFERENCES `timeslot_db` (`Timeslot_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allocation_tutor` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutor_db` (`Tutor_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking_db`
--
ALTER TABLE `booking_db`
  ADD CONSTRAINT `booking_allocation` FOREIGN KEY (`Allocation_ID`) REFERENCES `allocation_db` (`Allocation_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_level` FOREIGN KEY (`Level_Code`) REFERENCES `level_db` (`Level_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_student` FOREIGN KEY (`Student_ID`) REFERENCES `student_db` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_subject` FOREIGN KEY (`Subject_ID`) REFERENCES `subject_db` (`Subject_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_tutor` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutor_db` (`Tutor_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_db`
--
ALTER TABLE `student_db`
  ADD CONSTRAINT `student_level` FOREIGN KEY (`Level_Code`) REFERENCES `level_db` (`Level_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutor_db`
--
ALTER TABLE `tutor_db`
  ADD CONSTRAINT `tutor_phone` FOREIGN KEY (`Tutor_Phone`) REFERENCES `phone_tutordb` (`Tutor_Phone`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
