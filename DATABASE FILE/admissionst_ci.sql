-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 10:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admissionst_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `year` varchar(50) NOT NULL,
  `division` int(10) NOT NULL,
  `b_group` varchar(5) NOT NULL,
  `shift` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `profile_image` varchar(500) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `s_name`, `g_name`, `contact`, `email`, `address`, `year`, `division`, `b_group`, `shift`, `gender`, `profile_image`, `dateTime`) VALUES
(17, 'Jude Suarez', 'michael suarez', '09102400706', 'jude@gmail.com', 'himamaylan city', '2', 4, 'o', 1, 'M', 'http://localhost/ci-student/uploads/image/201865963_4051687891588119_7879362844345158468_n.jpg', '2021-05-09 18:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_name`, `email`, `contact`, `password`) VALUES
(2, 'Angel Jude Suarez', 'jude@gmail.com', '09272777334', '$2y$12$l2tmJS3yDkSAueke8WElbedC0a931qn7xYTCBLpmrpv1nYlX0AF0.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
