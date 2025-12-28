-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2020 at 08:48 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`, `categoryName`, `categoryid`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '', 'Department', 2),
(2, 'admin1', 'Text@456', '', '', 0),
(3, 'admin', 'Text@789', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Department', 'Department', '2017-03-28 07:10:55', '2020-01-23 00:03:07'),
(2, 'College/Institute Level', 'College/Institute Level', '2017-06-11 10:54:06', '2020-01-23 00:03:59'),
(3, 'University Level', 'University Level', '2020-01-23 00:04:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 6, 'closed', 'jgjv', '2020-01-23 01:03:32'),
(10, 31, 'in process', 'ghchcjgcjcgjgc', '2020-01-23 10:50:11'),
(11, 29, 'in process', 'kubjbiuhbbiu', '2020-01-23 21:03:28'),
(12, 29, 'closed', '87G7HHH7H8HH8JH8', '2020-01-23 22:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(6, 'Andra Pradesh', 'Andra Pradesh', '2017-06-11 10:54:12', '2020-01-23 04:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Lectures', '2017-03-28 07:11:07', '2020-01-23 05:40:56'),
(2, 1, 'Lectures Timetable', '2017-03-28 07:11:20', '2020-01-23 05:41:14'),
(3, 1, 'Practical', '2019-06-24 07:06:44', '2020-01-23 05:41:36'),
(4, 1, 'Test Papers', '2020-01-23 01:13:14', NULL),
(5, 1, 'Attendance', '2020-01-23 01:13:26', NULL),
(6, 1, 'Extra Lectures', '2020-01-23 01:13:41', NULL),
(7, 1, 'Others', '2020-01-23 01:13:55', NULL),
(10, 2, 'Admission', '2020-01-23 05:10:50', NULL),
(11, 2, 'Finance', '2020-01-23 05:13:15', NULL),
(12, 2, 'Examination Section', '2020-01-23 05:13:35', NULL),
(13, 2, 'Student Section', '2020-01-23 05:14:13', NULL),
(14, 2, 'College Infrastructure', '2020-01-23 05:14:35', NULL),
(15, 2, 'College Campus', '2020-01-23 05:16:05', NULL),
(16, 2, 'Student Welfare', '2020-01-23 05:18:26', NULL),
(17, 2, 'Others', '2020-01-23 05:18:38', NULL),
(18, 3, 'University Events', '2020-01-23 05:19:33', NULL),
(19, 3, 'Fund', '2020-01-23 05:19:46', NULL),
(20, 3, 'Examination Centre', '2020-01-23 05:20:01', NULL),
(21, 3, 'Competitions', '2020-01-23 05:20:20', NULL),
(22, 3, 'Workshops', '2020-01-23 05:20:34', NULL),
(23, 3, 'Curriculum Development', '2020-01-23 05:20:52', NULL),
(24, 3, 'Faculty Development Center', '2020-01-23 05:21:26', NULL),
(25, 3, 'Others', '2020-01-23 05:21:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(28, NULL, 1, 'Computer Engineering', 'lecture', NULL, NULL, NULL, NULL, '2020-01-23 05:34:30', NULL, NULL),
(29, 2, 1, 'Computer Engineering', NULL, NULL, NULL, NULL, NULL, '2020-01-23 05:37:09', 'closed', '2020-01-23 22:02:23'),
(30, 2, 3, 'University Events', '', '', '', 'gdcgfchgchcxjgx', '(20170776).pdf', '2020-01-23 06:52:14', NULL, NULL),
(31, 2, 2, 'Finance', '', '', '', ' n n hm vhjvjhb', '', '2020-01-23 09:06:50', 'in process', '2020-01-23 10:50:11'),
(32, 2, 3, 'Fund', '', '', '', 'hgcgjvjvhjvjh', '', '2020-01-23 10:51:53', NULL, NULL),
(33, 2, 1, 'Practical', '', '', '', 'dsjbkjsbeBvbjbsvkjbjB', '', '2020-01-23 12:29:28', NULL, NULL),
(34, 2, 3, 'University Events', '', '', '', 'cynosure 2020', '', '2020-01-23 19:11:03', NULL, NULL),
(35, 2, 2, 'Finance', '', '', '', 'estdrfgvbnkdfgyuiogdk', '(20170776).pdf', '2020-01-23 19:58:24', NULL, NULL),
(36, 2, 1, 'Lectures', '', '', '', 'this professor is giving too much inbformation dificult to bear with', '(20170776).pdf', '2020-01-23 23:29:51', NULL, NULL),
(37, 2, 3, 'Fund', '', '', '', 'fytfyugil8u', '', '2020-01-24 04:07:51', NULL, NULL),
(38, 2, 3, 'Select Subcategory', '', '', '', 'gyuy8iy8ot6ri7uktu', '', '2020-01-29 16:21:10', NULL, NULL),
(39, 2, 1, 'Lectures', '', '', '', 'my lectures not yet proceed', '', '2020-03-28 00:38:49', NULL, NULL),
(40, 2, 2, 'Finance', '', '', '', 'my fess are not refund yet.', '', '2020-04-08 03:18:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-28 17:04:36', '', 1),
(2, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-29 15:02:26', '', 1),
(3, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-30 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2017-03-31 17:39:07', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:22', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:29', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:42:12', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2017-03-31 17:48:11', '', 0),
(11, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-31 17:49:25', '', 1),
(12, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:52:35', '02-04-2017 12:24:41 AM', 1),
(13, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:58:09', '02-04-2017 12:50:42 AM', 1),
(14, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 19:38:15', '02-04-2017 01:08:19 AM', 1),
(15, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:20', '', 0),
(16, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:28', '03-04-2017 12:26:50 AM', 1),
(17, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-05-02 18:01:26', '', 1),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:48:50', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:56:30', '11-06-2017 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:13:28', '11-06-2017 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:19:45', '11-06-2017 04:50:02 PM', 1),
(22, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-05-24 18:26:07', '', 1),
(23, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:22', '', 0),
(24, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:32', '', 0),
(25, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:07:12', '', 1),
(26, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 10:27:30', '24-06-2019 04:11:08 PM', 1),
(27, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 18:27:57', '23-01-2020 12:22:09 AM', 1),
(28, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 19:03:25', '23-01-2020 12:34:26 AM', 1),
(29, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 20:22:41', '', 1),
(30, 0, 'omkar.raut2355@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 22:02:55', '', 0),
(31, 4, 'hctech20455@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 22:24:47', '', 1),
(32, 0, '20171124510035', 0x3a3a3100000000000000000000000000, '2020-01-22 23:08:38', '', 0),
(33, 0, '20171124510035', 0x3a3a3100000000000000000000000000, '2020-01-22 23:09:20', '', 0),
(34, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 23:33:00', '', 1),
(35, 3, 'omkar.raut2355@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 23:40:25', '', 1),
(36, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 23:42:12', '', 1),
(37, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 23:45:50', '23-01-2020 05:17:48 AM', 1),
(38, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 23:52:35', '', 1),
(39, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-22 23:58:55', '23-01-2020 06:10:42 AM', 1),
(40, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 00:42:42', '23-01-2020 06:15:28 AM', 1),
(41, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 01:23:40', '', 1),
(42, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 01:42:48', '', 0),
(43, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 01:42:58', '', 0),
(44, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:03:53', '', 0),
(45, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:08:13', '', 0),
(46, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:08:31', '', 0),
(47, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:10:02', '', 1),
(48, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:10:17', '', 1),
(49, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:29:26', '', 0),
(50, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:33:25', '', 1),
(51, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:33:42', '', 1),
(52, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:36:28', '23-01-2020 08:09:12 AM', 1),
(53, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:39:24', '23-01-2020 08:09:37 AM', 1),
(54, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 02:45:06', '', 1),
(55, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 03:18:56', '', 1),
(56, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 03:22:42', '23-01-2020 08:59:39 AM', 1),
(57, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 03:36:28', '23-01-2020 09:51:08 AM', 1),
(58, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 04:33:53', '23-01-2020 10:06:41 AM', 1),
(59, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 04:38:57', '23-01-2020 10:12:40 AM', 1),
(60, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 04:49:37', '', 0),
(61, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 04:49:46', '23-01-2020 11:14:10 AM', 1),
(62, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 05:59:56', '23-01-2020 11:33:30 AM', 1),
(63, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 06:49:51', '23-01-2020 12:23:56 PM', 1),
(64, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 07:21:57', '23-01-2020 01:07:35 PM', 1),
(65, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 07:47:38', '23-01-2020 01:18:41 PM', 1),
(66, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 07:51:39', '', 1),
(67, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 08:04:57', '', 0),
(68, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 08:05:06', '23-01-2020 01:36:45 PM', 1),
(69, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 09:06:35', '', 1),
(70, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 10:48:29', '23-01-2020 04:18:59 PM', 1),
(71, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 10:50:43', '23-01-2020 04:22:43 PM', 1),
(72, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 11:29:21', '23-01-2020 04:59:55 PM', 1),
(73, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 12:28:53', '', 1),
(74, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 14:32:49', '23-01-2020 08:04:22 PM', 1),
(75, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 15:39:43', '23-01-2020 09:09:55 PM', 1),
(76, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 16:37:20', '23-01-2020 10:17:41 PM', 1),
(77, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:21:26', '23-01-2020 10:53:34 PM', 1),
(78, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 17:49:24', '23-01-2020 11:20:29 PM', 1),
(79, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:23:45', '23-01-2020 11:55:25 PM', 1),
(80, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:45:50', '', 0),
(81, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 18:45:58', '24-01-2020 12:24:33 AM', 1),
(82, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 19:07:31', '24-01-2020 12:37:42 AM', 1),
(83, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 19:08:38', '24-01-2020 12:41:49 AM', 1),
(84, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 19:26:46', '24-01-2020 12:59:17 AM', 1),
(85, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 19:55:46', '24-01-2020 01:28:38 AM', 1),
(86, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 20:19:30', '24-01-2020 01:51:23 AM', 1),
(87, 0, 'omkar@gmail', 0x3a3a3100000000000000000000000000, '2020-01-23 20:43:52', '', 0),
(88, 0, 'omkar@gmail', 0x3a3a3100000000000000000000000000, '2020-01-23 20:44:04', '', 0),
(89, 0, 'harshal@gmail', 0x3a3a3100000000000000000000000000, '2020-01-23 20:46:30', '', 0),
(90, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 20:48:17', '24-01-2020 02:21:52 AM', 1),
(91, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 20:57:46', '24-01-2020 02:31:08 AM', 1),
(92, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 21:12:27', '24-01-2020 02:43:42 AM', 1),
(93, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 21:16:47', '24-01-2020 02:49:55 AM', 1),
(94, 0, 'ankit@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 21:35:00', '', 0),
(95, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 21:35:28', '24-01-2020 03:10:21 AM', 1),
(96, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 21:46:29', '', 0),
(97, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 21:46:41', '24-01-2020 03:26:50 AM', 1),
(98, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 22:13:42', '', 0),
(99, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 22:14:02', '', 0),
(100, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 22:14:20', '', 0),
(101, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 22:14:30', '24-01-2020 03:44:48 AM', 1),
(102, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 22:15:23', '', 1),
(103, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 22:34:42', '24-01-2020 04:05:01 AM', 1),
(104, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-23 23:27:26', '24-01-2020 05:00:22 AM', 1),
(105, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 00:15:42', '', 1),
(106, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-24 04:06:53', '24-01-2020 09:38:35 AM', 1),
(107, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-26 02:56:45', '26-01-2020 08:27:37 AM', 1),
(108, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-29 16:19:45', '29-01-2020 09:51:57 PM', 1),
(109, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-01-29 16:35:17', '', 1),
(110, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-17 17:38:33', '17-03-2020 11:09:26 PM', 1),
(111, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-17 17:39:58', '17-03-2020 11:10:18 PM', 1),
(112, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-28 00:37:49', '28-03-2020 06:09:11 AM', 1),
(113, 0, 'pranjali', 0x3a3a3100000000000000000000000000, '2020-03-29 16:06:34', '', 0),
(114, 0, 'pranjalipy8@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-29 16:06:49', '', 0),
(115, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-29 16:07:06', '29-03-2020 09:41:57 PM', 1),
(116, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-03-29 16:12:13', '', 1),
(117, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-07 01:19:56', '', 0),
(118, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-07 01:20:07', '07-04-2020 06:50:51 AM', 1),
(119, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-08 03:15:59', '08-04-2020 08:50:12 AM', 1),
(120, 0, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-17 20:13:40', '', 0),
(121, 2, 'nikita@gmail.com', 0x3a3a3100000000000000000000000000, '2020-04-17 20:13:52', '18-04-2020 01:44:13 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `university` varchar(200) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `prn` varchar(255) DEFAULT NULL,
  `branch` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `university`, `college`, `prn`, `branch`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Shakarpur', 'Uttar Pradesh', 'India', 110092, '6e8024ec26c292f258ec30f01e0392dc.png', '2017-03-28 11:44:52', '2019-06-24 10:39:44', 1),
(2, 'Pranjali Yangal', 'nikita@gmail.com', '097809d51ee7eb71de441bd1421f2a53', 8625062782, 'DBATU', 'vnchccjhgcc', '677654868746742', 0, 'e16a6988b1367edd16ee6e189d5467df.jpg', '2020-01-22 18:26:48', '0000-00-00 00:00:00', 1),
(3, 'omkar', 'omkar.raut2355@gmail.com', '1bb959e32d670454bc63f447205af7fe', 7559326095, NULL, NULL, NULL, NULL, NULL, '2020-01-22 22:01:31', '0000-00-00 00:00:00', 1),
(4, 'harshal', 'hctech20455@gmail.com', '25d55ad283aa400af464c76d713c07ad', 3132546578, NULL, NULL, NULL, NULL, NULL, '2020-01-22 22:23:34', '0000-00-00 00:00:00', 1),
(5, 'rohan', 'rohan@gmail.com', 'c916d142f0dc7f9389653a164f1d4e9d', 0, NULL, NULL, NULL, NULL, NULL, '2020-01-23 02:05:03', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
