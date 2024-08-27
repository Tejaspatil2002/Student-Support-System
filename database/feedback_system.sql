-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 08:10 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `Date`) VALUES
(5, 'dfd', 'sanjeevtech2@gmail.com', 9015501897, 'ddd', '2016-06-29 17:53:28'),
(6, 'dfd', 'sanjeevtech2@gmail.com', 9015501897, 'ddd', '2016-06-29 17:53:43'),
(7, 'Chaitanya', '9309729333', 0, 'Problem Solved', '2021-06-20 16:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `Name`, `semester`, `department`) VALUES
(1, 'Advance Java', 'v', 'Computer'),
(2, 'Python', 'vi', 'Computer'),
(3, 'Mobile Application Development', 'vi', 'Computer'),
(4, 'Database Management System', 'iii', 'Computer'),
(5, 'Thermal', 'iii', 'Mechanical'),
(6, 'Management', 'v', 'Mechanical'),
(7, 'Power Plant', 'iv', 'Electrical'),
(9, 'Theory of Machines', 'iv', 'Mechanical'),
(10, 'Applied Mathematics', 'ii', 'Civil'),
(12, 'Applied Mathematics', 'ii', 'Computer'),
(13, 'Applied Mechanics', 'ii', 'Civil'),
(14, 'Construction Materials', 'ii', 'Civil'),
(15, 'Basic Surveying', 'ii', 'Civil'),
(16, 'Elements of Electrical Engineering', 'ii', 'Computer'),
(17, 'Programming in C', 'ii', 'Computer'),
(18, 'Basic Electronic Engineering', 'ii', 'Computer'),
(19, 'Applied Mathematics', 'ii', 'Electrical'),
(20, 'Fundamentals of Electrical Engineerig', 'ii', 'Electrical'),
(21, 'Elements of Electronics Engineerig', 'ii', 'Electrical'),
(22, 'Basic Mechanical Enigineering', 'ii', 'Electrical'),
(23, 'Applied Mathematics', 'ii', 'Electronic'),
(24, 'Electronics Engineering Materi', 'ii', 'Electronic'),
(25, 'C Programming Language', 'ii', 'Electronic'),
(26, 'Applied Mechanics', 'ii', 'Mechanical'),
(27, 'Applied Mathematics', 'ii', 'Mechanical'),
(28, 'Engineerig Drawing', 'ii', 'Mechanical'),
(29, 'OOP using CPP', 'iii', 'Computer'),
(30, 'Data Structure Using C', 'iii', 'Computer'),
(31, 'Computer Graphics', 'iii', 'Computer'),
(32, 'Digital Techniques', 'iii', 'Computer'),
(33, 'Advanced Surveying', 'iii', 'Civil'),
(34, 'Highway Engineering', 'iii', 'Civil'),
(35, 'Mechanics of Structure', 'iii', 'Civil'),
(36, 'Building Constructions', 'iii', 'Mechanical'),
(37, 'Concrete Technology', 'iii', 'Civil'),
(38, 'CAD', 'iii', 'Civil'),
(39, 'EE Circuits', 'iii', 'Electrical'),
(40, 'EE Measurement', 'iii', 'Electrical'),
(41, 'Power Electronic', 'iii', 'Electrical'),
(42, 'Materials & Wiring', 'iii', 'Electical'),
(43, 'Digital Techniques', 'iii', 'Electronic'),
(44, 'Applied Electronic', 'iii', 'Electronic'),
(45, 'Circuit & Networks', 'iii', 'Electrical'),
(46, 'Measurement', 'iii', 'Electronic'),
(47, 'Principals of Electronic', 'iii', 'Electronic'),
(48, 'Strength of Materials', 'iii', 'Electronic'),
(49, 'Basic Electrical and Electronic', 'iii', 'Mechanical'),
(50, 'Mechanical Drawing', 'iii', 'Mechanical'),
(51, 'Metrology', 'iii', 'Mechanical'),
(52, 'Java', 'iv', 'Computer'),
(53, 'Software Testing', 'iv', 'Computer'),
(54, 'Microprocessor 8086', 'iv', 'Computer'),
(55, 'Hydraulics', 'iv', 'Civil'),
(56, 'Theory of Structure', 'iv', 'Civil'),
(57, 'Data Communication and Computer Networks', 'iv', 'Computer'),
(58, 'Railway & Bridge Engineerig', 'iv', 'Civil'),
(59, 'Geothermal Engineering', 'iv', 'Civil'),
(60, 'Building Planning & Drawing', 'iv', 'Civil'),
(61, 'EE Motors and Transformer', 'iv', 'Electrical'),
(62, 'EE Power and Distribution', 'iv', 'Electrical'),
(63, 'Measurement', 'iv', 'Electrical'),
(64, 'Digital Electronic', 'iv', 'Electrical'),
(65, 'Linear Integrated Circuit ', 'iv', 'Electronic'),
(66, 'Consumer Electronic', 'iv', 'Electronic'),
(67, 'Microcontroller', 'iv', 'Electronic'),
(68, 'Digital Communication', 'iv', 'Electronic'),
(70, 'Measurement', 'iv', 'Mechanical'),
(71, 'Fluid Mechanics', 'iv', 'Mechanical'),
(72, 'Manufacturing Processes', 'iv', 'Mechanical'),
(73, 'Operating System', 'v', 'Computer'),
(75, 'Software Testing', 'v', 'Computer'),
(76, 'Client Side Scripting(Javascript)', 'iv', 'Computer'),
(77, 'Environmental Studies', 'v', 'Computer'),
(78, 'Industrial Ac Machines', 'v', 'Electrical'),
(79, 'Switch Gear Protection', 'v', 'Electrical'),
(80, 'Energy Conservations', 'v', 'Electrical'),
(81, 'MANAGEMENT', 'v', 'Electrical'),
(82, 'ELEMENTS OF INDUSTRIAL AUTOMATION (ELECTIVE-I)', 'v', 'Electrical'),
(83, 'POWER ELECTRONICS APPLICATION (ELECTIVE-I)', 'v', 'Electrical'),
(84, 'WIND POWER TECHNOLOGIES (ELECTIVE-I)', 'v', 'Electrical'),
(85, 'POWER SYSTEM ANALYSIS (ELECTIVE-I)', 'v', 'Electrical'),
(86, 'ENVIRONMENTAL STUDIES', 'v', 'Electronic'),
(87, 'CONTROL SYSTEMS AND PLC', 'v', 'Electronic'),
(88, 'EMBEDDED SYSTEMS', 'v', 'Electronic'),
(89, 'MOBILE AND WIRELESS COMMUNICATION', 'v', 'Electronic'),
(90, 'INDUSTRIAL AUTOMATION', 'v', 'Electronic'),
(91, 'MICROWAVE AND RADAR', 'v', 'Electronic'),
(93, 'POWER ENGINEERING AND REFRIGERATION', 'v', 'Mechanical'),
(94, 'ADVANCED MANUFACTURING PROCESSES', 'v', 'Mechanical'),
(95, 'ELEMENTS OF MACHINE DESIGN', 'v', 'Mechanical'),
(96, 'TOOL ENGINEERING', 'v', 'Mechanical'),
(97, 'POWER PLANT ENGINEERING (ELECTIVE-I)', 'v', 'Mechanical'),
(98, 'MANAGEMENT', 'vi', 'Computer'),
(99, 'EMERGING TRENDS IN COMPUTER AND INFORMATION TECHNOLGY', 'vi', 'Computer'),
(100, 'WEB BASED APPLICATION DEVELOPMENT USING PHP', 'vi', 'Computer'),
(101, 'NETWORK AND INFORMATION SECURITY', 'vi', 'Computer'),
(102, 'DATA WAREHOUSING WITH MINING TECHNIQUES', 'vi', 'Computer'),
(103, 'ADVANCED COMPUTER NETWORK (ELECTIVE-I)', 'v', 'Computer'),
(104, 'ADVANCED DATABASE MANAGEMENT SYSTEMS (ELECTIVE-I)', 'v', 'Computer'),
(105, 'CONSTRUCTION MANAGEMENT', 'vi', 'Civil'),
(106, ' MANAGEMENT', 'vi', 'Civil'),
(107, 'CONTRACTS AND ACCOUNTS', 'vi', 'Civil'),
(108, 'MAINTENANCE AND REPAIRS OF STRUCTURES', 'vi', 'Civil'),
(109, 'EMERGING TRENDS IN CIVIL ENGINEERING', 'vi', 'Civil'),
(110, 'BUILDING SERVICES', 'vi', 'Civil'),
(111, 'SOLID WASTE MANAGEMENT', 'vi', 'Civil'),
(112, 'EARTHQUAKE RESISTANT BUILDINGS', 'vi', 'Civil'),
(113, 'ADVANCED DESIGN OF STRUCTURES', 'vi', 'Civil'),
(114, 'MAINTENANCE OF ELECTRIC EQUIPMENT', 'vi', 'Electrical'),
(115, 'UTILIZATION OF ELECTRICAL ENERGY', 'vi', 'Electrical'),
(116, 'ELECTRICAL ESTIMATION AND CONTRACTING', 'vi', 'Electrical'),
(117, 'EMERGING TRENDS IN ELECTRICAL ENGINEERING', 'vi', 'Electrical'),
(118, 'INDUSTRIAL DRIVES AND CONTROL (EE/EU)', 'vi', 'Electrical'),
(119, 'POWER SYSTEM OPERATION AND CONTROL (EP)', 'vi', 'Electrical'),
(120, 'ELECTRIC SUBSTATION PRACTICES (EE/EP/EU)', 'vi', 'Electrical'),
(121, 'VLSI WITH VHDL', 'vi', 'Electronic'),
(122, 'MANAGEMENT', 'vi', 'Electronic'),
(123, 'COMPUTER NETWORKING AND DATA COMMUNICATION', 'vi', 'Electronic'),
(124, 'EMERGING TRENDS IN ELECTRONICS', 'vi', 'Electronic'),
(125, 'MECHATRONICS', 'vi', 'Electronic'),
(126, 'OPTICAL NETWORKS AND SATELLITE COMMUNICATION', 'vi', 'Electronic'),
(127, 'EMERGING TRENDS IN MECHANICAL ENGINEERING', 'vi', 'Mechanical'),
(128, 'INDUSTRIAL HYDRAULICS AND PNEUMATICS', 'vi', 'Mechanical'),
(129, 'AUTOMOBILE ENGINEERING', 'vi', 'Mechanical'),
(130, 'INDUSTRIAL ENGINEERING AND QUALITY CONTROL', 'vi', 'Mechanical'),
(131, 'COMPUTER INTEGRATED MANUFACTURING', 'vi', 'Mechanical'),
(132, 'REFRIGERATION AND AIR CONDITIONING', 'vi', 'Mechanical'),
(133, 'RENEWABLE ENERGY TECHNOLOGY', 'vi', 'Mechanical'),
(134, 'ENGLISH', 'i', 'Computer'),
(135, 'BASIC SCIENCE', 'i', 'Computer'),
(136, 'BASIC MATHEMATICS', 'i', 'Computer'),
(137, 'ENGLISH', 'i', 'Civil'),
(138, 'BASIC SCIENCE', 'i', 'Civil'),
(139, 'BASIC MATHEMATICS', 'i', 'Civil'),
(140, 'ENGLISH', 'i', 'Electrical'),
(141, 'BASIC SCIENCE', 'i', 'Electrical'),
(142, 'BASIC MATHEMATICS', 'i', 'Electrical'),
(143, 'ENGLISH', 'i', 'Electronic'),
(144, 'BASIC SCIENCE', 'i', 'Electronic'),
(145, 'BASIC MATHEMATICS', 'i', 'Electrnic'),
(146, 'ENGLISH', 'i', 'Mechanical'),
(147, 'BASIC SCIENCE', 'i', 'Mechanical'),
(148, 'BASIC MATHEMATICS', 'i', 'Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `course_feedback`
--

CREATE TABLE `course_feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `department` varchar(40) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `Rate the relevance of the theory contents in a course` enum('5','4','3','2','1') NOT NULL,
  `Rate the relevance of practicals to the course contents` enum('5','4','3','2','1') NOT NULL,
  `Rate Sequence of the units in the course` enum('5','4','3','2','1') NOT NULL,
  `Rate the distribution of the contact hours among the course comp` enum('5','4','3','2','1') NOT NULL,
  `Rate evalution/exam scheme designed for course` enum('5','4','3','2','1') NOT NULL,
  `Rate laboratory facilities fulfilling the content of the course` enum('5','4','3','2','1') NOT NULL,
  `Rate relevance Exercise of course` enum('5','4','3','2','1') NOT NULL,
  `Rate the relevance of recommended learning resourses, websites t` enum('5','4','3','2','1') NOT NULL,
  `Rate relevance of course contents applicable to real life situat` enum('5','4','3','2','1') NOT NULL,
  `Rate attainment of course outcomes` enum('5','4','3','2','1') NOT NULL,
  `Rate relevance book available in library for course` enum('5','4','3','2','1') NOT NULL,
  `Assessments conducted are clearly connected to maximize learinin` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_feedback`
--

CREATE TABLE `faculty_feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `Teacher provided the course outline having weekly content plan w` enum('5','4','3','2','1') NOT NULL,
  `Course objectives,learning outcomes and grading criteria are cle` enum('5','4','3','2','1') NOT NULL,
  `Course integrates throretical course concepts with the real worl` enum('5','4','3','2','1') NOT NULL,
  `Teacher is punctual,arrives on time and leaves on time` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at stimulating the interest in the course conten` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at explaining the subject matter` enum('5','4','3','2','1') NOT NULL,
  `Teacher's presentation was clear,loud ad easy to understand` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at using innovative teaching methods/ways` enum('5','4','3','2','1') NOT NULL,
  `Teacher is available and helpful during counseling hours` enum('5','4','3','2','1') NOT NULL,
  `Teacher has competed the whole course as per course outline` enum('5','4','3','2','1') NOT NULL,
  `Teacher was always fair and impartial:` enum('5','4','3','2','1') NOT NULL,
  `Assessments conducted are clearly connected to maximize learinin` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`notice_id`, `attachment`, `subject`, `Description`, `Date`) VALUES
(8, 'AteekCV_java (1).docx', 'aaaaa', 'dfdfdfd', '2016-07-03 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_user`
--

CREATE TABLE `pending_user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `Academic_Year` year(4) NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `Academic_Year` year(4) NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Name` (`Name`) USING BTREE;

--
-- Indexes for table `course_feedback`
--
ALTER TABLE `course_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `faculty_feedback`
--
ALTER TABLE `faculty_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `pending_user`
--
ALTER TABLE `pending_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `pending_user` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `course_feedback`
--
ALTER TABLE `course_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `faculty_feedback`
--
ALTER TABLE `faculty_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hod`
--
ALTER TABLE `hod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pending_user`
--
ALTER TABLE `pending_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
