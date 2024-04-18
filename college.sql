-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 09:13 AM
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
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `s_ID` varchar(5) NOT NULL,
  `i_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`s_ID`, `i_ID`) VALUES
('12345', '10101'),
('44553', '22222'),
('45678', '22222'),
('00128', '45565'),
('1131', '45565'),
('76543', '45565'),
('23121', '76543'),
('98988', '76766'),
('76653', '98345'),
('98765', '98345');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `building` varchar(15) NOT NULL,
  `room_number` varchar(7) NOT NULL,
  `capacity` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`building`, `room_number`, `capacity`) VALUES
('Packard', '100', 120),
('Packard', '101', 500),
('Packard', '120', 70),
('Packard', '3128', 100),
('Packard', '514', 500),
('Painter', '100', 70),
('Painter', '101', 120),
('Painter', '120', 100),
('Painter', '3128', 500),
('Painter', '514', 120),
('Taylor', '100', 70),
('Taylor', '101', 120),
('Taylor', '120', 100),
('Taylor', '3128', 500),
('Taylor', '514', 120),
('Watson', '100', 100),
('Watson', '101', 70),
('Watson', '120', 500),
('Watson', '3128', 120),
('Watson', '514', 70);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(8) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `credits` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `title`, `dept_name`, `credits`) VALUES
('23', 'database', 'Comp. Sci.', 3),
('A', 'a', 'Comp. Sci.', 4),
('B', 'b', 'Music', 5),
('BIO-101', 'Intro. to Biology', 'Biology', 4),
('BIO-301', 'Genetics', 'Biology', 4),
('BIO-399', 'Computational Biology', 'Biology', 3),
('C', 'c', 'Elec. Eng.', 4),
('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4),
('CS-190', 'Game Design', 'Comp. Sci.', 4),
('CS-315', 'Robotics', 'Comp. Sci.', 3),
('CS-319', 'Image Processing', 'Comp. Sci.', 3),
('CS-347', 'Database System Concepts', 'Comp. Sci.', 3),
('D', 'machine learning', 'Biology', 3),
('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3),
('FIN-201', 'Investment Banking', 'Finance', 3),
('FIN-420', 'Stock Market', 'Finance', 4),
('HIS-351', 'World History', 'History', 3),
('MU-199', 'Music Video Production', 'Music', 3),
('PHY-101', 'Physical Principles', 'Physics', 4);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(20) NOT NULL,
  `building` varchar(15) DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `building`, `budget`) VALUES
('Biology', 'Watson', 90000.00),
('Comp. Sci.', 'Taylor', 100000.00),
('Elec. Eng.', 'Taylor', 85000.00),
('Finance', 'Watson', 120000.00),
('History', 'Painter', 50000.00),
('Music', 'Painter', 80000.00),
('Physics', 'Packard', 70000.00);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `ID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`ID`, `name`, `dept_name`, `salary`) VALUES
('10101', 'Srinivasan', 'Comp. Sci.', 65000.00),
('12121', 'Wu', 'Finance', 90000.00),
('15151', 'Mozart', 'Music', 40000.00),
('18181', 'Dr Aman', 'Biology', 100000.00),
('22222', 'Einstein', 'Physics', 95000.00),
('32343', 'ElSaid', 'History', 60000.00),
('33456', 'Gold', 'Physics', 87000.00),
('45565', 'Katz', 'Comp. Sci.', 75000.00),
('58583', 'Califieri', 'History', 62000.00),
('76543', 'Singh', 'Finance', 80000.00),
('76766', 'Crick', 'Biology', 72000.00),
('83821', 'Brandt', 'Comp. Sci.', 92000.00),
('98345', 'Kim', 'Elec. Eng.', 80000.00),
('azm', 'Aman Modan', 'Comp. Sci.', 99000.00);

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `course_id` varchar(8) NOT NULL,
  `prereq_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`course_id`, `prereq_id`) VALUES
('BIO-301', 'BIO-101'),
('BIO-399', 'BIO-101'),
('CS-190', 'CS-101'),
('CS-315', 'CS-101'),
('CS-319', 'CS-101'),
('CS-347', 'CS-101'),
('EE-181', 'PHY-101');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `building` varchar(15) DEFAULT NULL,
  `room_number` varchar(7) DEFAULT NULL,
  `time_slot_id` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`course_id`, `sec_id`, `semester`, `year`, `building`, `room_number`, `time_slot_id`) VALUES
('A', '3', 'Fall', 2024, 'Watson', '101', 'C'),
('B', '3', 'Winter', 2024, 'Taylor', '3128', 'A'),
('BIO-101', '1', 'Summer', 2024, 'Painter', '514', 'B'),
('BIO-301', '1', 'Summer', 2024, 'Painter', '514', 'A'),
('CS-101', '1', 'Fall', 2024, 'Packard', '101', 'H'),
('CS-101', '1', 'Spring', 2024, 'Packard', '101', 'F'),
('CS-190', '1', 'Spring', 2024, 'Taylor', '3128', 'E'),
('CS-190', '2', 'Spring', 2024, 'Taylor', '3128', 'A'),
('CS-315', '1', 'Spring', 2024, 'Watson', '120', 'D'),
('CS-319', '1', 'Spring', 2024, 'Watson', '100', 'B'),
('CS-319', '2', 'Spring', 2024, 'Taylor', '3128', 'C'),
('CS-347', '1', 'Fall', 2024, 'Taylor', '3128', 'A'),
('EE-181', '1', 'Spring', 2024, 'Taylor', '3128', 'C'),
('FIN-201', '1', 'Spring', 2024, 'Packard', '101', 'B'),
('HIS-351', '1', 'Spring', 2024, 'Painter', '514', 'C'),
('MU-199', '1', 'Spring', 2024, 'Packard', '101', 'D'),
('PHY-101', '1', 'Fall', 2024, 'Watson', '100', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `tot_cred` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `name`, `dept_name`, `tot_cred`) VALUES
('00128', 'Zhang', 'Comp. Sci.', 102),
('1131', 'Aman Modan', 'Finance', 50),
('12345', 'Shankar', 'Comp. Sci.', 32),
('19991', 'Brandt', 'History', 80),
('23121', 'Chavez', 'Finance', 110),
('44553', 'Peltier', 'Physics', 56),
('45678', 'Levy', 'Physics', 46),
('54321', 'Williams', 'Comp. Sci.', 54),
('55739', 'Sanchez', 'Music', 38),
('70557', 'Snow', 'Physics', 0),
('76543', 'Brown', 'Comp. Sci.', 58),
('76653', 'Aoi', 'Elec. Eng.', 60),
('98765', 'Bourikas', 'Elec. Eng.', 98),
('98988', 'Tanaka', 'Biology', 120);

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `ID` varchar(5) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`ID`, `course_id`, `sec_id`, `semester`, `year`, `grade`) VALUES
('00128', 'CS-101', '1', 'Fall', 2024, 'A'),
('00128', 'CS-347', '1', 'Fall', 2024, 'A'),
('1131', 'CS-190', '2', 'Spring', 2024, 'A'),
('12345', 'CS-101', '1', 'Fall', 2024, 'C'),
('12345', 'CS-190', '2', 'Spring', 2024, 'A'),
('12345', 'CS-315', '1', 'Spring', 2024, 'A'),
('12345', 'CS-347', '1', 'Fall', 2024, 'A'),
('19991', 'HIS-351', '1', 'Spring', 2024, 'B'),
('23121', 'FIN-201', '1', 'Spring', 2024, 'C+'),
('44553', 'PHY-101', '1', 'Fall', 2024, 'B'),
('45678', 'CS-101', '1', 'Fall', 2024, 'F'),
('45678', 'CS-101', '1', 'Spring', 2024, 'B+'),
('45678', 'CS-319', '1', 'Spring', 2024, 'B'),
('54321', 'CS-101', '1', 'Fall', 2024, 'A'),
('54321', 'CS-190', '2', 'Spring', 2024, 'B+'),
('55739', 'MU-199', '1', 'Spring', 2024, 'A'),
('76543', 'CS-101', '1', 'Fall', 2024, 'A'),
('76543', 'CS-319', '2', 'Spring', 2024, 'A'),
('76653', 'EE-181', '1', 'Spring', 2024, 'C'),
('98765', 'CS-101', '1', 'Fall', 2024, 'C'),
('98765', 'CS-315', '1', 'Spring', 2024, 'B'),
('98988', 'BIO-101', '1', 'Summer', 2024, 'A'),
('98988', 'BIO-301', '1', 'Summer', 2024, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `ID` varchar(5) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `sec_id` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`ID`, `course_id`, `sec_id`, `semester`, `year`) VALUES
('10101', 'CS-101', '1', 'Fall', 2024),
('10101', 'CS-315', '1', 'Spring', 2024),
('10101', 'CS-347', '1', 'Fall', 2024),
('12121', 'FIN-201', '1', 'Spring', 2024),
('15151', 'MU-199', '1', 'Spring', 2024),
('22222', 'PHY-101', '1', 'Fall', 2024),
('32343', 'HIS-351', '1', 'Spring', 2024),
('45565', 'CS-101', '1', 'Spring', 2024),
('45565', 'CS-319', '1', 'Spring', 2024),
('76766', 'BIO-101', '1', 'Summer', 2024),
('76766', 'BIO-301', '1', 'Summer', 2024),
('83821', 'CS-190', '1', 'Spring', 2024),
('83821', 'CS-190', '2', 'Spring', 2024),
('83821', 'CS-319', '2', 'Spring', 2024),
('98345', 'EE-181', '1', 'Spring', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `time_slot_id` varchar(4) NOT NULL,
  `day` varchar(1) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`time_slot_id`, `day`, `start_time`, `end_time`) VALUES
('A', 'F', '08:00:00', '08:50:00'),
('A', 'M', '08:00:00', '08:50:00'),
('A', 'W', '08:00:00', '08:50:00'),
('B', 'F', '09:00:00', '09:50:00'),
('B', 'M', '09:00:00', '09:50:00'),
('B', 'W', '09:00:00', '09:50:00'),
('C', 'F', '11:00:00', '11:50:00'),
('C', 'M', '11:00:00', '11:50:00'),
('C', 'W', '11:00:00', '11:50:00'),
('D', 'F', '13:00:00', '13:50:00'),
('D', 'M', '13:00:00', '13:50:00'),
('D', 'W', '13:00:00', '13:50:00'),
('E', 'R', '10:30:00', '11:45:00'),
('E', 'T', '10:30:00', '11:45:00'),
('F', 'R', '14:30:00', '15:45:00'),
('F', 'T', '14:30:00', '15:45:00'),
('G', 'F', '16:00:00', '16:50:00'),
('G', 'M', '16:00:00', '16:50:00'),
('G', 'W', '16:00:00', '16:50:00'),
('H', 'W', '10:00:00', '12:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `sid` varchar(5) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `sid`, `password`, `role`) VALUES
(3, '1111', '1111', 'admin'),
(4, '12345', '12345', 'student'),
(5, '00128', '00128', 'student'),
(6, '19991', '19991', 'student'),
(7, '23121', '23121', 'student'),
(8, '44553', '44553', 'student'),
(9, '45678', '45678', 'student'),
(10, '54321', '54321', 'student'),
(11, '55739', '55739', 'student'),
(12, '70557', '70557', 'student'),
(13, '76543', '76543', 'student'),
(14, '76653', '76653', 'student'),
(15, '98765', '98765', 'student'),
(16, '98988', '98988', 'student'),
(17, '1131', '1131', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD PRIMARY KEY (`s_ID`),
  ADD KEY `i_ID` (`i_ID`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`building`,`room_number`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dept_name_inst` (`dept_name`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`course_id`,`prereq_id`),
  ADD KEY `prereq_id` (`prereq_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`course_id`,`sec_id`,`semester`,`year`),
  ADD KEY `building` (`building`,`room_number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  ADD KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  ADD KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`time_slot_id`,`day`,`start_time`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sid` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advisor`
--
ALTER TABLE `advisor`
  ADD CONSTRAINT `advisor_ibfk_1` FOREIGN KEY (`i_ID`) REFERENCES `instructor` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`s_ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `dept_name` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL;

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `dept_name_inst` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL;

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
  ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`prereq_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`building`,`room_number`) REFERENCES `classroom` (`building`, `room_number`) ON DELETE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL;

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`course_id`,`sec_id`,`semester`,`year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`) ON DELETE CASCADE,
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`course_id`,`sec_id`,`semester`,`year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`) ON DELETE CASCADE,
  ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `instructor` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
