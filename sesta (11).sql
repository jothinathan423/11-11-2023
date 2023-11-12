-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2023 at 04:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ca`
--

CREATE TABLE `ca` (
  `ca_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `images` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ca`
--

INSERT INTO `ca` (`ca_id`, `username`, `password`, `images`, `name`) VALUES
(1, 'ca', 'ca', 'caprofile/WhatsApp Image 2023-11-01 at 21.23.33.jpg', 'kalaimam');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `hod_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`hod_id`, `username`, `password`, `name`, `branch`, `images`) VALUES
(1, 'hod@gmail.com', '123', 'anitha mam', 'cs', 'hodprofile/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `id_cards`
--

CREATE TABLE `id_cards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `mentor_id` int(11) NOT NULL,
  `mentor_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `student_id` int(20) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`mentor_id`, `mentor_name`, `email`, `password`, `student_id`, `images`) VALUES
(1, 'jothinathan', 'archananagarajan@gmail.com', '123', 0, 'mentorprofile/Screenshot 2023-11-02 061458.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `peer_mentor`
--

CREATE TABLE `peer_mentor` (
  `peer_id` int(11) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fromnumber` int(11) NOT NULL,
  `tonumber` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peer_mentor`
--

INSERT INTO `peer_mentor` (`peer_id`, `roll_number`, `name`, `number`, `email`, `password`, `fromnumber`, `tonumber`, `gender`, `images`, `year`, `department`) VALUES
(1, '22it001', 'balaji', '1234567890', 'balaji@gmail.com', '123', 1, 16, 'male', 'peerprofile/Screenshot_20231103_145049.jpg\r\n', '1', 'it'),
(2, '22it002', 'fgijsdfn', '', 'fgjfoi@gmail.com', '0021-03-12', 16, 34, 'male', 'peerprofile/12.png', '1', 'it'),
(3, '22it003', 'ASHOK', '', 'ashok@gmail.com', '1010-10-10', 50, 75, 'male', 'peerprofile/download.jpg', '2', 'it'),
(4, '124', 'DFDJ', '34040', 'EE@GMAIL.COM', '', 2323, 3434, 'male', 'peerprofile/download.png', '1', 'cs'),
(5, '22it024', 'dhinesh', '1231231231', 'dhi@gmail.com', '1010-10-10', 75, 100, 'male', 'peerprofile/How-to-Draw-a-Skeleton.jpg.webp', '2', 'it');

-- --------------------------------------------------------

--
-- Table structure for table `principal`
--

CREATE TABLE `principal` (
  `principal_id` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `principal`
--

INSERT INTO `principal` (`principal_id`, `id`, `username`, `password`, `name`, `images`) VALUES
(1, 1, 'jothi', 'jothi', 'madheshwaran sir', 'principalprofile/download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mentor_id` varchar(255) NOT NULL,
  `ca_id` varchar(255) NOT NULL,
  `year_of_study` int(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `credit_points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `roll_number`, `images`, `email`, `password`, `gender`, `dob`, `phone`, `mentor_id`, `ca_id`, `year_of_study`, `branch`, `section`, `credit_points`) VALUES
(7, 'kavin', 'k', '', '', 'jothinathannagarajan@gmail.com', '123', 'male', '3234-02-11', '0', '1', '0', 0, 'cs', 'B', 0),
(9, 'dvdsv', 's', '', '', '', '123', 'male', '2003-05-11', '0', '1', '0', 0, '1', 'B\r\n', 0),
(14, 'jothinathan', 'sa', '', '', '', '123', 'male', '2003-05-11', '8807993608', '1', '0', 2, 'cs', 'A', 74),
(15, 'rubiga ', 's', '', '', '', '123', 'male', '2005-03-01', '1234567890', '1', '0', 2, 'cs', 'A', 80),
(17, 'dharsas', 'a', '', '', '', '123', 'male', '2023-05-11', '1234567890', '2', '0', 1, 'cs', 'A', 0),
(18, 'pradeep', 'n', '', '', '', '123', 'male', '2023-05-11', '1234567890', '2', '0', 1, 'cs', 'A', 0),
(19, 'karthika', 'ss', '', 'uploads/1.jpg', '', '123', 'male', '2023-05-11', '1234567890', '1', '1', 1, 'cs', 'A', 60),
(21, 'harish', 's', '', '', 'harish@gmail.com', '2004-12-19', 'male', '2004-12-19', '9879879871', '0', '0', 2, 'it', 'a', 0),
(22, 'kishanth', 'k', '', '', 'kishanth@gmail.com', '0112-12-12', 'male', '0012-12-12', '1234567890', 'mani', 'kalaimam', 2, 'it', 'a', 0),
(23, 'JOTHINATHAN ', 'N', '', '', 'jo@gmail.com', '2003-05-11', 'male', '2003-05-11', '8807993608', 'dha', 'kalaimam', 2, 'it', 'a', 0),
(24, 'kavin', 'selvamani', '22IT035', '', 'kavin@gmail.com', '2010-10-10', 'male', '2010-10-10', '123', 'mani', 'kalaimam', 2, 'it', 'a', 0),
(25, 'aarthi', 'j', '22it001', '', 'aarthi@gmail.com', '1010-10-10', 'female', '1010-10-10', '1234512345', 'dha', 'kalaimam', 2, 'it', 'a', 0),
(26, 'abinaya', 's', '22it004', 'uploads/The-Effects-of-VR-on-Society.jpg', 'abi@gmail.com', '1212-12-12', 'male', '1212-11-12', '121211212', '1', '1', 2, 'it', 'a', 100);

-- --------------------------------------------------------

--
-- Table structure for table `student_activities`
--

CREATE TABLE `student_activities` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `certificate_path` varchar(255) NOT NULL,
  `organized_by` varchar(255) NOT NULL,
  `attended_from_date` varchar(255) NOT NULL,
  `attended_to_date` varchar(255) NOT NULL,
  `number_of_days` int(255) NOT NULL,
  `prize_position` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `credit_points` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_activities`
--

INSERT INTO `student_activities` (`id`, `student_id`, `activity_type`, `topic`, `certificate_path`, `organized_by`, `attended_from_date`, `attended_to_date`, `number_of_days`, `prize_position`, `status`, `credit_points`) VALUES
(1, 1, 'paper_presentation', '', 'certificates/Advantages-and-Disadvantages-of-Machine-Learning - Copy.jpg', '', '', '', 0, '', 'approved', 3),
(2, 1, 'workshop', '', 'certificates/Example-of-machine-learning-work-flow-for-object-classification-across-three-different.png', '', '', '', 0, '', 'approved', 2),
(3, 3, 'paper presentation,seminar,workshop', '', 'certificates/Advantages-and-Disadvantages-of-Machine-Learning.webp', '', '', '', 0, '', '', 20),
(5, 4, 'paper presentation,seminar,workshop', '', 'certificates/modified_image.jpg', '', '', '', 0, '', 'approved', 20),
(7, 4, 'NPTEL certificate', '', 'certificates/OIP.jpg', '', '', '', 0, '', 'approved', 50),
(10, 5, 'NPTEL certificate', '', 'certificates/1_CiC4C7bodsoTkLq_ap2SHg.png', '', '', '', 0, '', 'approved', 50),
(11, 6, 'NPTEL certificate', '', 'certificates/168-1680211_netflix-logo-circle-hd-png-download.png', '', '', '', 0, '', 'approved', 50),
(12, 1, 'Seminar participation 1', '', 'certificates/bus booking.png', '', '', '', 0, '', '', 10),
(14, 14, 'NPTEL certificate', '', 'certificates/android-flashing-software.jpg', '', '', '', 0, '', 'approved', 50),
(15, 14, 'workshop', '', 'certificates/IRCTC-online-ticket-booking-train.jpg', '', '', '', 0, '', 'approved', 2),
(17, 14, 'Student Tech Talk', '', 'certificates/error.jpg', '', '', '', 0, '', 'approved', 20),
(19, 15, 'NPTEL certificate', '', 'certificates/windows-activation.webp', '', '', '', 0, '', 'approved', 50),
(22, 15, 'workshop', 'internet of things', 'certificates/Website-Blog-1024x683.jpg', '', '', '', 0, '', 'approved', 20),
(23, 15, 'Online Certification Technical', 'facial recognition based attendance system using python', 'certificates/ration.jpg', '', '', '', 0, '', 'approved', 10),
(24, 15, 'NPTEL certificate', 'dfdf', 'certificates/R.jpg', '', '', '', 0, '', '', 50),
(25, 15, 'NPTEL certificate', 'facial recognition based attendance system using python', 'certificates/accomadation.jpg', '', '', '', 0, '', '', 50),
(26, 15, 'seminar', 'web development', 'certificates/12.png', 'muthayammal engineering college', '2023-05-11', '2023-05-12', 0, 'Participant', '', 10),
(28, 15, 'Online Certification Technical', 'ai', 'certificates/1694846388SPRINGFEST_2K23_-CSE.webp', 'mec ecu', '2023-10-12', '2023-10-14', 2, '1st', '', 10),
(30, 15, 'NPTEL certificate', 'java', 'certificates/cert_template.jpg', 'karpagam', '2023-05-11', '2023-05-11', 1, '1st', '', 50),
(32, 19, 'NPTEL certificate', 'ai', 'certificates/Augmented-Reality-2.jpg', 'swayam', '2023-05-11', '2023-05-11', 1, '1st', 'approved', 50),
(33, 19, 'Seminar participation 1', 'facial recognition based attendance system using python', 'certificates/How_to_Choose_the_Right_Backend_Technology_for_Your_App_inforgraphic-1.png', 'mec ecu', '0223-05-11', '0223-05-11', 1, '1st', 'approved', 10),
(34, 15, 'NPTEL certificate', 'rgr', 'certificates/jothi community certificate.pdf', 'fdf', '2023-02-11', '2023-02-11', 1, '1st', '', 50),
(35, 15, 'NPTEL certificate', 'dfdv', 'certificates/IMG_20230713_161612.jpg', 'fvfb', '2023-11-12', '2023-11-12', 1, '1st', '', 50),
(43, 26, 'seminar', 'facial recognition based attendance system using python', 'certificates/Scan_20230928 (2).png', 'muthayammal engineering college', '2023-11-28', '2023-11-28', 1, '1st', '', 20),
(44, 26, 'EDC Program- 20', 'jhhh', 'certificates/Scan_20231027.jpg', 'mec ecu', '2023-11-15', '2023-11-15', 1, '1st', '', 0),
(46, 26, 'EDC Program', 'facial recognition based attendance system using python for project expo', 'certificates/Scan_20231109 (2).jpg', 'muthayammal engineering college', '2023-12-02', '2023-12-02', 1, '1st', '', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ca`
--
ALTER TABLE `ca`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`hod_id`);

--
-- Indexes for table `id_cards`
--
ALTER TABLE `id_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`mentor_id`);

--
-- Indexes for table `peer_mentor`
--
ALTER TABLE `peer_mentor`
  ADD PRIMARY KEY (`peer_id`);

--
-- Indexes for table `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`principal_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_path` (`certificate_path`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ca`
--
ALTER TABLE `ca`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `id_cards`
--
ALTER TABLE `id_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `mentor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peer_mentor`
--
ALTER TABLE `peer_mentor`
  MODIFY `peer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `principal`
--
ALTER TABLE `principal`
  MODIFY `principal_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_activities`
--
ALTER TABLE `student_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
