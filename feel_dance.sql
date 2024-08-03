-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 06:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feel_dance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `first_name`, `last_name`, `password`) VALUES
(1, 'feel', 'feeldance@example.com', 'Karishma', 'Patel', '88698b6a4506539f5c5588da47a10171'),
(2, 'feel', 'feeldance@example.com', 'Karishma', 'Patel', '88698b6a4506539f5c5588da47a10171');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `class_time` datetime NOT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `class_time`, `video_id`, `deleted_at`) VALUES
(1, 'Bollywood', '2024-08-01 18:00:00', 'rFnoK6iuBEw', NULL),
(2, 'Locking Popping', '2024-08-02 17:00:00', '9_LMdshcq4c', NULL),
(3, 'Funk', '2024-08-03 19:00:00', '6XXQ5AeOE7I', NULL),
(4, 'Old School', '2024-08-04 16:00:00', 'gaf6iwsXqMA', NULL),
(5, 'Lyrical', '2024-08-05 18:00:00', '9RqsikviXgk', NULL),
(6, 'Robotics', '2024-08-06 18:00:00', 'vt1w3iCX1q8', NULL),
(7, 'Contemp', '2024-08-07 18:00:00', 'PMzzY_xIywk', NULL),
(8, 'Krump', '2024-08-08 18:00:00', 'y4jv5bk8ato', NULL),
(9, 'Hiphop', '2024-08-09 18:00:00', '5hLX2dJG0QE', NULL),
(10, 'Urban', '2024-08-10 18:00:00', 'F-MS0covhlU', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Aarav Patel', 'aarav.patel@example.com', 'Hello, I’m Aarav. I’m interested in joining the hip-hop classes. Can you provide more details?', '2024-08-03 03:53:42'),
(2, 'Vihaan Sharma', 'vihaan.sharma@example.com', 'Hi, this is Vihaan. I’d like to know the schedule for the ballet classes. Thanks!', '2024-08-03 03:53:42'),
(3, 'Isha Gupta', 'isha.gupta@example.com', 'Greetings! I’m Isha. I’m curious about your contemporary dance workshops. Could you share more information?', '2024-08-03 03:53:42'),
(4, 'Aanya Kapoor', 'aanya.kapoor@example.com', 'Hello from Aanya! I’m interested in the salsa classes. Can you tell me about the fees and timings?', '2024-08-03 03:53:42'),
(5, 'Arjun Reddy', 'arjun.reddy@example.com', 'Hi, I’m Arjun. I’m looking for beginner’s classes in jazz dance. Please let me know the available options.', '2024-08-03 03:53:42'),
(6, 'Maya Rao', 'maya.rao@example.com', 'Hey, Maya here! I’m interested in learning ballroom dance. Can you provide details on the classes?', '2024-08-03 03:53:42'),
(7, 'Reyansh Singh', 'reyansh.singh@example.com', 'Hello, I’m Reyansh. I would like information on private dance lessons and their availability.', '2024-08-03 03:53:42'),
(8, 'Saanvi Joshi', 'saanvi.joshi@example.com', 'Hi! Saanvi here. I’m looking for group dance classes for kids. Could you share more details?', '2024-08-03 03:53:42'),
(9, 'Vivaan Mehta', 'vivaan.mehta@example.com', 'Greetings from Vivaan! I’d like to enroll in the advanced hip-hop class. Please provide the class schedule.', '2024-08-03 03:53:42'),
(10, 'Kavya Nair', 'kavya.nair@example.com', 'Hello, this is Kavya. I’m interested in your dance fitness classes. Can you tell me about the timings and costs?', '2024-08-03 03:53:42'),
(11, 'Aditya Desai', 'aditya.desai@example.com', 'Hi, I’m Aditya. I’m looking for adult ballet classes. Please let me know the class schedules.', '2024-08-03 03:53:42'),
(12, 'Ananya Sharma', 'ananya.sharma@example.com', 'Hello from Ananya! I want to inquire about your dance competitions and events for kids.', '2024-08-03 03:53:42'),
(13, 'Ishaan Agarwal', 'ishaan.agarwal@example.com', 'Hi there, Ishaan here. I’m interested in joining your breakdancing classes. Could you provide more information?', '2024-08-03 03:53:42'),
(14, 'Riya Choudhury', 'riya.choudhury@example.com', 'Greetings! I’m Riya. I’d like to know about your summer dance camps for children.', '2024-08-03 03:53:42'),
(15, 'Siddharth Patil', 'siddharth.patil@example.com', 'Hello, Siddharth here. I’m interested in learning traditional Indian dance forms. Please share the details of available classes.', '2024-08-03 03:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Student','Instructor') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `allocation_deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `name`, `email`, `role`, `image`, `deleted_at`, `class_id`, `allocation_deleted_at`) VALUES
(1, 'Aarav Patel', 'aarav.patel@example.com', 'Student', '1.jpg', NULL, 1, NULL),
(2, 'Vihaan Sharma', 'vihaan.sharma@example.com', 'Student', '2.jpg', NULL, 2, NULL),
(3, 'Isha Gupta', 'isha.gupta@example.com', 'Student', '3.jpg', NULL, 3, NULL),
(4, 'Aanya Kapoor', 'aanya.kapoor@example.com', 'Student', '4.jpg', NULL, 4, NULL),
(5, 'Arjun Reddy', 'arjun.reddy@example.com', 'Student', '5.jpg', NULL, 5, NULL),
(6, 'Maya Rao', 'maya.rao@example.com', 'Student', '6.jpg', NULL, 6, NULL),
(7, 'Reyansh Singh', 'reyansh.singh@example.com', 'Student', '7.jpg', NULL, 7, NULL),
(8, 'Saanvi Joshi', 'saanvi.joshi@example.com', 'Student', '8.jpg', NULL, 8, NULL),
(9, 'Vivaan Mehta', 'vivaan.mehta@example.com', 'Student', '9.jpg', NULL, 9, NULL),
(10, 'Kavya Nair', 'kavya.nair@example.com', 'Student', '10.jpg', NULL, 10, NULL),
(11, 'Sagar Bora', 'Sagarbora@gmail.com', 'Instructor', 'i1.jpg', NULL, 9, NULL),
(12, 'Suresh Mukund', 'suresh@gmail.com', 'Instructor', 'i2.jpg', NULL, 8, NULL),
(13, 'Sanket Panchal', 'sp@gmail.com', 'Instructor', 'i3.jpg', NULL, 10, NULL),
(14, 'Dharmesh yelande', 'dyelande@gmail.com', 'Instructor', 'i4.jpg', NULL, 5, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
