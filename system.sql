-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 05:52 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `id` int(11) NOT NULL,
  `salutation` varchar(10) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`id`, `salutation`, `firstname`, `lastname`, `department`, `username`, `password`, `role`) VALUES
(9, 'Dr.', 'quack', 'quack', 'BSCS', 'admin', '$2y$10$0CJCytuKEkVdHfqiIPPuwurf2xcwIjbO6ji9HTdtbLkIUpZ13NsAi', 'admin'),
(10, 'Mrs.', 'test', 'tests', 'BSED', 'useruser1', '$2y$10$wvgCdbk23T66qkL/lox7w.HUVbzalmmM4JO2xOfblLVaP1BGKYt/e', 'user'),
(11, 'Mr.', 'Arnold', 'Wigen', 'BEED', 'Arnoldwigen', '$2y$10$v9PLwGoR27b7.cd3pjSFjuX55Qls..nZJRmQd/Xtr.sLgVLEGxEjO', 'user'),
(12, 'Dr.', 'Jose Jr.', 'Procalla', 'BSCS', 'josejose', '$2y$10$bosnYkNzUw9VJOvS5vgyNe/alLMV9v2l.93gOiUdoN5mFNLctK/Pe', 'user'),
(14, 'Ms.', 'Marie', 'Gregorio', 'BSCS', 'Mar\'s', '$2y$10$3d1v9F1kyRUg2XkZq8/UHuCbQfAtNiuOgAfiJ29PkrEiKHPjcQKZO', 'user'),
(15, 'Mr.', 'Ted', 'Camad', 'BSED', 'tedcamad', '$2y$10$SX/sHU5Eu10/VWgMBds7j.6mi9zve37rYYf19I6KQ4QfsT38ak2re', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `scheduler`
--

CREATE TABLE `scheduler` (
  `id` int(11) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `day_of_week` varchar(255) DEFAULT NULL,
  `timeframe` varchar(255) DEFAULT NULL,
  `professor` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheduler`
--

INSERT INTO `scheduler` (`id`, `section`, `day_of_week`, `timeframe`, `professor`, `subject`) VALUES
(78, 'BSCS - 4 - A', 'Monday', '10am-11am', 'Mr. Arnold Wigen', 'CS421 - Automata'),
(79, 'BSBA - 3 - A', 'Thursday', '10am-11am', 'Mr. Arnold Wigen', 'OOP - OOP'),
(80, 'BSBA - 3 - A', 'Thursday', '11am-12pm', 'Mr. Arnold Wigen', 'OOP - OOP'),
(81, 'BSBA - 3 - A', 'Thursday', '12pm-1pm', 'Mr. Arnold Wigen', 'OOP - OOP'),
(82, 'BSCS - 1 - A', 'Monday', '11am-12pm', 'Mrs. test tests', 'pathfit - pathfit'),
(83, 'BSCS - 1 - A', 'Monday', '1pm-2pm', 'Mrs. test tests', 'pathfit - pathfit'),
(84, 'BSBA - 3 - A', 'Monday', '2pm-3pm', 'Dr. Jose Jr. Procalla', 'CS421 - Automata'),
(85, 'BSBA - 3 - A', 'Monday', '3pm-4pm', 'Dr. Jose Jr. Procalla', 'CS421 - Automata'),
(86, 'BSBA - 3 - A', 'Monday', '8am-9am', 'Mr. Ted Camad', 'OOP - OOP'),
(87, 'BSBA - 3 - A', 'Tuesday', '10am-11am', 'Mr. Ted Camad', 'OOP - OOP'),
(88, 'BSBA - 3 - A', 'Wednesday', '11am-12pm', 'Mr. Ted Camad', 'OOP - OOP'),
(89, 'BSBA - 4 - A', 'Friday', '3pm-4pm', 'Mr. Ted Camad', 'OOP - OOP'),
(90, 'BSBA - 4 - A', 'Saturday', '2pm-3pm', 'Mr. Ted Camad', 'OOP - OOP'),
(91, 'BSBA - 4 - A', 'Saturday', '3pm-4pm', 'Mr. Ted Camad', 'OOP - OOP'),
(92, 'BSBA - 3 - A', 'Wednesday', '1pm-2pm', 'Ms. Marie Gregorio', 'pathfit - pathfit'),
(93, 'BSBA - 3 - A', 'Friday', '1pm-2pm', 'Ms. Marie Gregorio', 'pathfit - pathfit'),
(94, 'BSBA - 3 - A', 'Saturday', '1pm-2pm', 'Ms. Marie Gregorio', 'pathfit - pathfit'),
(95, 'BSBA - 4 - A', 'Monday', '9am-10am', 'Mr. Ted Camad', 'OOP - OOP'),
(96, 'BSBA - 4 - A', 'Monday', '10am-11am', 'Mr. Ted Camad', 'OOP - OOP'),
(97, 'BSCS - 1 - D', 'Saturday', '10am-11am', 'Dr. quack quack', 'CS421 - Automata');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `school_year` int(11) NOT NULL,
  `section` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `course`, `school_year`, `section`) VALUES
(1, 'BSCS', 4, 'A'),
(2, 'BSBA', 4, 'A'),
(3, 'BSBA', 3, 'A'),
(4, 'BSCS', 1, 'A'),
(9, 'BSCS', 1, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `term` varchar(255) DEFAULT NULL,
  `school_year` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `term`, `school_year`, `semester`, `status`) VALUES
(3, 'endterm', '2024-2025', '2nd', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_title` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_title`, `department`) VALUES
('CS421', 'Automata', 'BSCS'),
('OOP', 'OOP', 'BSCS'),
('pathfit', 'pathfit', 'BSED');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  `subject_title` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `upload_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `filename`, `filesize`, `filetype`, `subject_title`, `course`, `year`, `semester`, `upload_date`) VALUES
(9, 'ANIMALS (1).pdf', 362532, 'application/pdf', 'Biology', 'BSOA', '4th Year', '1st Semester', '2023-11-06 14:03:29'),
(10, 'ASTRONOMY THE SECOND.pdf', 552655, 'application/pdf', 'Astronomy', 'BSED', '3rd Year', '1st Semester', '2023-11-06 14:14:42'),
(16, 'INFECTIOUS DISEASES OF THE EAR.pdf', 8361559, 'application/pdf', 'Science', 'BSED', '3rd Year', '1st Semester', '2023-11-06 20:58:39'),
(17, 'text-1691729017589.png', 8360, 'image/png', 'hrt', 'BSOA', '1st Year', '1st Semester', '2023-11-08 13:58:22'),
(18, 'CS321_GBML_COMPLETE_LETTER.docx', 12549952, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'drfrg', 'BSOA', '3rd Year', '2nd Semester', '2023-11-08 14:14:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `scheduler`
--
ALTER TABLE `scheduler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `scheduler`
--
ALTER TABLE `scheduler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
