-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 04:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `challenge`
--

CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `filename` text NOT NULL,
  `suggest` text NOT NULL,
  `tid` varchar(50) NOT NULL,
  `sid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `hw_name` text NOT NULL,
  `hw_file` text NOT NULL,
  `tid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `hw_name`, `hw_file`, `tid`) VALUES
(14, 'test', 'test.txt', 'TC1000020000'),
(15, 'test2', 'hi.txt', 'TC1000020000'),
(16, 'test3', 'test3.txt', 'TC1000020000');

-- --------------------------------------------------------

--
-- Table structure for table `homework_stu`
--

CREATE TABLE `homework_stu` (
  `id` int(11) NOT NULL,
  `hw_folder_id` text NOT NULL,
  `hw_stu_file` text CHARACTER SET utf8 NOT NULL,
  `sid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homework_stu`
--

INSERT INTO `homework_stu` (`id`, `hw_folder_id`, `hw_stu_file`, `sid`) VALUES
(9, '14', 'a.txt', 'ST1000010001'),
(10, '15', 'z2.txt', 'ST1000010001'),
(11, '16', '3.txt', 'ST1000010001');

-- --------------------------------------------------------

--
-- Table structure for table `messenger`
--

CREATE TABLE `messenger` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messenger`
--

INSERT INTO `messenger` (`id`, `sender`, `content`, `receiver`, `date`) VALUES
(16, 'tea@tea.tea', 'hi', 'stu@stu.stu', '2022-05-26 12:04:06'),
(17, 'stu@stu.stu', 'hi', 'stu1@stu1.stu1', '2022-05-26 12:36:55'),
(18, 'stu@stu.stu', 'test', 'tea@tea.tea', '2022-05-26 12:37:15'),
(19, 'tea@tea.tea', 'hi', 'tea1@tea1.tea1', '2022-05-26 13:57:35'),
(20, 'tea@tea.tea', 'chao', 'hi@mail.com', '2022-05-29 00:27:24'),
(21, 'tea@tea.tea', 'meo', 'stu@stu.stu', '2022-05-29 00:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(25) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `number` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `classroom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `fname`, `lname`, `bday`, `address`, `number`, `gender`, `classroom`, `email`) VALUES
(' he1411265', 'nam', 'hi', '2022-05-31', 'hanoi', '', 'Female', '', 'namhp@sec.com'),
('12312', 'âsf', 'ầ', '2022-07-21', '&lt;script&gt;alert(1)&lt;script&gt;', '', 'Female', '', 'gg@test.com'),
('he141125', 'vu', 'nguyen', '2022-05-30', 'hochiminh city', '', 'Male', '', 'vunt@sec.com'),
('he141126', 'hiu', 'dang', '2022-05-23', 'hanoi city', '', 'Female', '', 'hiu@sec.com'),
('he1411267', 'Hiu', 'HIu', '2022-05-24', 'abc123', '0888888888', 'Male', '', 'hiu2@sec.com'),
('he141127', 'ha', 'ha', '2022-04-25', 'abc123', '0777777777', 'Male', '', 'hiu3@sec.com'),
('he1411288', 'hi', 'hi', '2022-06-01', 'abc', '', 'Female', '', 'hi@mail.com'),
('he141414', 'qads', 'ádasd', '2022-05-30', 'abc123', '', 'Male', '', 'hiu4@sec.com'),
('ST1000010001', 'Hiu', 'Chamara', '2002-06-26', 'hcm city', '0666666666', 'Female', '4-B', 'stu@stu.stu'),
('ST1000010002', 'Dasun', 'Shanuka', '2020-05-31', 'Ampara Road \r\nUhana', '0555555555', 'Male', '4-B', 'stu1@stu1.stu1'),
('STU1000040000', 'Dilip', 'Silva', '2020-05-27', 'asasas', '0444444444', 'Male', '4-B', 'dil@dil.dil');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `title`, `description`) VALUES
('SCM4251', 'Science and Technology', 'Chemistry Basics\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `skill` varchar(500) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `fname`, `lname`, `address`, `contact`, `bday`, `skill`, `gender`, `email`) VALUES
('a1', 'a', 'a', '<script>alert(document.cookie)</script>', '0999999999', '2022-07-26', 'hi', 'Female', 'test2@mail.com'),
('hi', 'hi', 'hi', '&lt;script&gt;alert(1)&lt;/script&gt;', '0999999999', '2022-07-19', '&lt;script&gt;alert(1)&lt;/script&gt;', 'Female', 'test@mail.com'),
('TC1000020000', 'Teacher', 'Hiu', 'Kandy Road\r\nNittambuwa', '0339988554', '1990-06-19', 'Science\r\nMathematics\r\nHistory', 'Male', 'tea@tea.tea'),
('TC1000020001', 'hiu', 'dang', 'hanoi ctiy', '0999999999', '2022-05-11', 'math', 'Male', 'tea1@tea1.tea1'),
('TC1000020002', 'hiu', 'hiu', 'hanoi', '0999999999', '2022-05-24', 'vip', 'Male', 'hiu@tea.tea');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `role` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`role`, `email`, `password`) VALUES
('Student', 'dil@dil.dil', 'dil'),
('Student', 'stu1@stu1.stu1', 'stu1'),
('Student', 'stu@stu.stu', 'stu'),
('Teacher', 'tea1@tea1.tea1', 'tea1'),
('Teacher', 'tea@tea.tea', 'tea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenge`
--
ALTER TABLE `challenge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_stu`
--
ALTER TABLE `homework_stu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger`
--
ALTER TABLE `messenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `challenge`
--
ALTER TABLE `challenge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `homework_stu`
--
ALTER TABLE `homework_stu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger`
--
ALTER TABLE `messenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;
