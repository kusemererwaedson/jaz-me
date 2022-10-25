-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 09:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_profile` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `forgotten_answer` varchar(100) NOT NULL,
  `log_in` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_profile`, `user_country`, `user_gender`, `forgotten_answer`, `log_in`) VALUES
(1, 'edsondi', 'edsonwewe', 'edson@gmail.com', 'images/IMG-20220913-WA0024.jpg.71', '', '', 'isihaka', 'Online'),
(2, 'matia', 'matia2000', 'matia@gmail.com', 'images/2.jpg', 'Uganda', 'Male', '', 'Online'),
(3, 'AISHER', '12345678', 'a@gmail.com', 'images/1.jpg', 'Uganda', 'Female', '', 'offline');

-- --------------------------------------------------------

--
-- Table structure for table `users_chat`
--

CREATE TABLE `users_chat` (
  `msg_id` int(11) NOT NULL,
  `sender_username` varchar(100) NOT NULL,
  `receiver_username` varchar(100) NOT NULL,
  `msg_content` varchar(256) NOT NULL,
  `msg_status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_chat`
--

INSERT INTO `users_chat` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(0, 'edson', '', 'hello', 'read', '2022-10-20 11:50:46'),
(0, 'edson', '', 'hi', 'read', '2022-10-20 11:53:57'),
(0, 'edson', '', 'hello', 'read', '2022-10-20 11:55:00'),
(0, 'edson', 'edson', 'hello,hi', 'read', '2022-10-20 12:05:20'),
(0, 'edson', 'edson', 'hi dear', 'read', '2022-10-20 12:06:45'),
(0, 'matia', 'edson', 'hi edson how are you', 'read', '2022-10-20 12:29:16'),
(0, 'matia', 'edson', 'gwe edson how are you', 'read', '2022-10-20 12:29:57'),
(0, 'matia', 'edson', 'ki naye', 'read', '2022-10-20 12:33:11'),
(0, 'edson', 'matia', 'wewew', 'read', '2022-10-20 12:35:10'),
(0, 'edson', 'matia', 'nnnnnnnn', 'read', '2022-10-20 12:45:39'),
(0, 'edson', 'matia', 'detroit', 'read', '2022-10-20 12:46:00'),
(0, 'edson', 'matia', 'gwe matia', 'read', '2022-10-20 13:08:22'),
(0, 'edson', 'edson', 'hello', 'read', '2022-10-20 13:15:16'),
(0, 'edson', 'matia', 'gwe', 'read', '2022-10-20 13:15:28'),
(0, 'edson', '', 'hi', 'read', '2022-10-20 13:57:23'),
(0, 'edsondi', 'matia', 'hi', 'read', '2022-10-24 08:31:37'),
(0, 'edsondi', 'matia', 'hi', 'read', '2022-10-24 08:31:43'),
(0, 'edsondi', 'edsondi', 'hi', 'read', '2022-10-24 08:32:48'),
(0, 'edsondi', 'edsondi', 'hi', 'read', '2022-10-24 08:32:53'),
(0, 'edsondi', 'edsondi', 'hello', 'read', '2022-10-24 11:03:45'),
(0, 'edsondi', 'edsondi', 'wewe', 'read', '2022-10-24 11:03:52'),
(0, 'edsondi', 'edsondi', 'kiki', 'read', '2022-10-24 11:03:59'),
(0, 'matia', 'edsondi', 'mita gtg', 'read', '2022-10-24 18:19:13'),
(0, 'edsondi', 'matia', 'hello', 'unread', '2022-10-24 18:56:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
