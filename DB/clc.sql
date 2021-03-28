-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 02:35 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `Company` varchar(255) NOT NULL,
  `Add1` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0',
  `CtPerson` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `Company`, `Add1`, `Mobile`, `Website`, `Email`, `User_Id`, `Created_At`, `blLock`, `blCancel`, `CtPerson`) VALUES
(1, 'Dayanand Sarswati Shishu Mandir High School', 'Ward No.10,Azad Nagar, Tamkuhi Road,Seorahi (Kushinagar)', '8423073732,8948657852', 'www.abc.org', 'abc@rediffmail.com', 'admin', '2020-03-21 13:49:16', 0, 0, 'Adtya Dubey');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int(11) NOT NULL,
  `Message` datetime DEFAULT NULL,
  `MobileNo` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`id`, `Message`, `MobileNo`, `Name`) VALUES
(1, '0000-00-00 00:00:00', '8053054103', 'cHITRANJAN'),
(2, '0000-00-00 00:00:00', '8053054103', 'cHITRANJAN'),
(3, '0000-00-00 00:00:00', '8053054103', 'cHITRANJAN');

-- --------------------------------------------------------

--
-- Table structure for table `tblgrp`
--

CREATE TABLE `tblgrp` (
  `id` int(11) NOT NULL,
  `GRP` varchar(255) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgrp`
--

INSERT INTO `tblgrp` (`id`, `GRP`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(2, 'admin', 'Admin', '2020-03-20 14:34:54', 0, 0),
(3, 'web', 'Admin', '2020-03-20 14:36:53', 0, 0),
(4, 'library', 'admin', '2020-03-21 12:50:44', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblhomepage`
--

CREATE TABLE `tblhomepage` (
  `id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `TitleDetails` varchar(2000) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhomepage`
--

INSERT INTO `tblhomepage` (`id`, `Title`, `TitleDetails`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(1, 'WELCOME TO CITYLINE COLLECTION', '<div style=\"text-align: center;\"><font color=\"#777777\" face=\"Poppins\"><span style=\"font-size: 14px;\">Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Suspendisse potenti. Sed egestas, ante et vulputate volutpat, uctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis.&nbsp;</span></font></div><div style=\"text-align: center;\"><font color=\"#777777\" face=\"Poppins\"><span style=\"font-size: 14px;\"><br></span></font><br></div>				', 'admin', '2020-09-21 13:17:23', 0, 0),
(2, 'Design Quality', '<div style=\"text-align: center;\"><font color=\"#777777\" face=\"Poppins\"><span style=\"font-size: 14px;\">Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero&nbsp;</span></font><span style=\"text-align: left; font-size: 14px;\"><font color=\"#777777\" face=\"Poppins\">eu augue.</font></span></div>				', 'admin', '2020-09-21 13:32:07', 0, 0),
(3, 'Professional Support', '<div style=\"text-align: center;\"><font color=\"#777777\" face=\"Poppins\"><span style=\"font-size: 14px;\">Praesent dapibus, neque id cursus faucibus,&nbsp;</span></font><span style=\"text-align: left; font-size: 14px;\"><font color=\"#777777\" face=\"Poppins\">tortor neque egestas augue, eu vulputate&nbsp;</font></span><span style=\"text-align: left; font-size: 14px;\"><font color=\"#777777\" face=\"Poppins\">magna eros eu erat.</font></span></div>						', 'admin', '2020-09-21 13:32:36', 0, 0),
(4, 'Made With Love', '<span style=\"color: rgb(119, 119, 119); font-family: Poppins; font-size: 14px; text-align: center;\">Pellentesque a diam sit amet mi ullamcorper</span><span style=\"color: rgb(119, 119, 119); font-family: Poppins; font-size: 14px; text-align: center;\">v ehicula. Nullam quis massa sit amet&nbsp;</span><span style=\"color: rgb(119, 119, 119); font-family: Poppins; font-size: 14px; text-align: center;\">nibh viverra malesuada.</span><br>		', 'admin', '2020-09-21 13:33:06', 0, 0),
(5, 'Image', '		', 'admin', '2020-09-21 14:03:57', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblhomepageslider`
--

CREATE TABLE `tblhomepageslider` (
  `id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhomepageslider`
--

INSERT INTO `tblhomepageslider` (`id`, `Title`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(1, '<h3 class=\"intro-subtitle\">Bedroom Furniture</h3>           \r\n <h1 class=\"intro-title\">Find Comfort <br>That Suits You.</h1> ', '', '2020-03-25 10:52:28', 0, 0),
(2, '<h3 class=\"intro-subtitle\">Deals and Promotions</h3>           \r\n<h1 class=\"intro-title\">Ypperlig <br>Coffee Table <br><span class=\"text-primary\">$49,99</span></h1>', '', '2020-03-25 10:52:28', 0, 0),
(5, '<h3 class=\"intro-subtitle\">Living Room</h3>            \r\n            <h1 class=\"intro-title\">\r\n               Make Your Living Room <br>Work For You.<br>\r\n               <span class=\"text-primary\">\r\n ', 'admin', '2020-09-20 16:18:24', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblimagegallery`
--

CREATE TABLE `tblimagegallery` (
  `id` int(11) NOT NULL,
  `Title` varchar(800) NOT NULL,
  `TitleDetails` varchar(2000) NOT NULL,
  `blShow` tinyint(1) DEFAULT '0',
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblimagegallery`
--

INSERT INTO `tblimagegallery` (`id`, `Title`, `TitleDetails`, `blShow`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(1, 'School Quiz ', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0px; white-space: pre-wrap; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">As this academic year comes to its peak, an Intra-house quiz was organized for spring valley students.</div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">There was cognitive rounds, rapid fire and audio visual rounds related to respective subjects. </div></div>					 ', 1, 'admin', '2020-06-19 13:23:34', 0, 0),
(2, 'Happy Republic Day !!!', '<div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\">Happy Republic Day !!!</div><div dir=\"auto\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\">Some glimpses of celebrations at <span style=\"font-family: inherit;\"><a class=\"oajrlxb2 g5ia77u1 qu0x051f esr5mh6w e9989ue4 r7d6kgcz rq0escxv nhd2j8a9 nc684nl6 p7hjln8o kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x jb3vyjys rz4wbd8a qt6c0cv9 a8nywdso i1ao9s8h esuyzwwr f1sip0of lzcic4wl oo9gr5id gpro0wi8 lrazzd5p\" href=\"https://www.facebook.com/springvalleypublicschoolindore1/?__cft__[0]=AZWei9KK5ASvvuY-Ofu-9RBPrNjZh6ZS8A7H9YQeeHBRk4TQwHCzA0zSSUvjzaTlAvBNJ5BK0k8sIP2txyEssjP4JDl92mr4usOp_ICTKIubJuNWYoDwAMyJ9q4zuIUXAo1hVY4HW8efHOTdOtDT7HO-7mn1IsOzoRqMOLmdOIuUgA&amp;__tn__=kK-R\" role=\"link\" tabindex=\"0\" style=\"color: var(--primary-text); cursor: pointer; outline: none; list-style: none; border-width: 0px; border-style: initial; border-color: initial; padding: 0px; margin: 0px; touch-action: manipulation; text-align: inherit; font-weight: 600; display: inline; -webkit-tap-highlight-color: transparent; font-family: inherit;\"><div class=\"nc684nl6\" style=\"display: inline; font-family: inherit;\"><span style=\"font-family: inherit;\">Spring Valley Public School,Indore</span></div></a></span></div>					 ', 1, 'admin', '2020-06-19 13:30:52', 0, 0),
(3, 'Makar Sankranti celebrations', '<span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\">Makar Sankranti celebrations</span>					 ', 1, 'admin', '2020-06-19 13:37:28', 0, 0),
(4, 'ARMY DAY', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0px; white-space: pre-wrap; font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">We Thank you for your services !!! ARMY DAY .. </div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">JAI HIND </div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql ii04i59q\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">Jaijawan </div></div>					 		', 1, 'admin', '2020-06-19 13:40:47', 0, 0),
(5, 'Merry Christmas ', '<div dir=\"auto\" style=\"font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\">We wish you a Merry Christmas â€¦ </div><div dir=\"auto\" style=\"font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\">Christmas celebrations at <span style=\"font-family: inherit;\"><a class=\"oajrlxb2 g5ia77u1 qu0x051f esr5mh6w e9989ue4 r7d6kgcz rq0escxv nhd2j8a9 nc684nl6 p7hjln8o kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x jb3vyjys rz4wbd8a qt6c0cv9 a8nywdso i1ao9s8h esuyzwwr f1sip0of lzcic4wl oo9gr5id gpro0wi8 lrazzd5p\" href=\"https://www.facebook.com/springvalleypublicschoolindore1/?__cft__[0]=AZVzdztGpM1uqXsNgsp-0YzT2_iP5Q6VmPhMVvlR-1JOoPzGFx6QWHuwwm7Tzq1f-Z5HSYGuhBtiFXY2ByrKnwBl-pC5qIxU7d1pMGfP__pUgvcRp5Gnwddh-rjLfeT8-ZiuyrgbaWjxnD2-4Tlqg3pNtcVWckhtTtVAiKEKFg2IAQ&__tn__=kK-R\" role=\"link\" tabindex=\"0\" style=\"color: var(--primary-text); cursor: pointer; outline: none; list-style: none; border-width: 0px; border-style: initial; border-color: initial; padding: 0px; margin: 0px; touch-action: manipulation; text-align: inherit; font-weight: 600; display: inline; -webkit-tap-highlight-color: transparent; font-family: inherit;\"><div class=\"nc684nl6\" style=\"display: inline; font-family: inherit;\"><span style=\"font-family: inherit;\">Spring Valley Public School,Indore</span></div></a></span> â€¦ With a message from </div><div dir=\"auto\" style=\"font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; color: rgb(5, 5, 5); font-size: 15px; white-space: pre-wrap;\">Santa \"TO SAVE WATER\"</div>					 								', 1, 'admin', '2020-06-19 13:43:15', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `id` int(11) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `TitleDetails` varchar(2000) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1),
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0',
  `blShow` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`id`, `Title`, `TitleDetails`, `User_Id`, `Created_At`, `blLock`, `blCancel`, `blShow`) VALUES
(1, 'Testing 1', 'Testing																																																																', 'admin', '2020-06-19 16:04:06.0', 0, 0, 0),
(4, 'aD', 'ADAS																																', 'admin', '2020-06-25 12:56:36.9', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpageno`
--

CREATE TABLE `tblpageno` (
  `id` int(11) NOT NULL,
  `PageNo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpageno`
--

INSERT INTO `tblpageno` (`id`, `PageNo`) VALUES
(1, '25'),
(1, '25');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `ProductType` varchar(250) NOT NULL,
  `Title` varchar(250) NOT NULL,
  `TitleDetails` varchar(2000) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `Price`, `ProductType`, `Title`, `TitleDetails`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(1, '10', 'BLANKET', '1', 'TESTING		', 'admin', '2020-09-20 13:17:37', 0, 0),
(2, '12', 'BLANKET', '2', 'TESTING', 'admin', '2020-09-21 15:42:25', 0, 0),
(3, '13', 'BLANKET', '3', 'TESTING', 'admin', '2020-09-21 15:42:37', 0, 0),
(4, '900', 'BLANKET', '4', 'TESTING', 'admin', '2020-09-21 15:43:08', 0, 0),
(5, '10000', 'BLANKET', '5', 'TESTING', 'admin', '2020-09-21 15:43:20', 0, 0),
(6, '10000', 'BLANKET', '6', 'TESTING', 'admin', '2020-09-21 15:43:30', 0, 0),
(7, '120', 'CARPET', '1', 'TESTING', 'admin', '2020-09-21 15:43:46', 0, 0),
(8, '900', 'CARPET', '2', 'TESTING', 'admin', '2020-09-21 15:43:57', 0, 0),
(9, '120', 'JWELLERY', '1', 'TESTING', 'admin', '2020-09-21 15:44:14', 0, 0),
(10, '900', 'JWELLERY', '2', 'TESTING', 'admin', '2020-09-21 15:44:26', 0, 0),
(11, '900', 'BAGS', '1', 'TESTING', 'admin', '2020-09-21 15:44:46', 0, 0),
(12, '120', 'BAGS', '2', 'TESTING', 'admin', '2020-09-21 15:45:07', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `grp` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `UserId`, `UserName`, `Password`, `grp`, `Mobile`, `Email`, `Status`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(1, 'admin', 'Chitranjan kumar', '202cb962ac59075b964b07152d234b70', 'admin', '', '', '', '', '2020-03-21 11:47:06', 0, 0),
(2, 'Web', 'Web', '202cb962ac59075b964b07152d234b70', 'web', '9685220809', 'chitranjan228@gmail.com', 'ACTIVE', 'admin', '2020-03-21 12:47:49', 0, 0),
(3, 'Library', 'Library', '202cb962ac59075b964b07152d234b70', 'library', '8103206171', '', 'ACTIVE', 'admin', '2020-03-21 12:50:16', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_det`
--

CREATE TABLE `tbluser_det` (
  `id` int(11) NOT NULL,
  `GRP` varchar(255) NOT NULL,
  `Form_Id` varchar(255) NOT NULL,
  `S` tinyint(1) DEFAULT '0',
  `U` tinyint(1) DEFAULT '0',
  `D` tinyint(1) DEFAULT '0',
  `P` tinyint(1) DEFAULT '0',
  `L` tinyint(1) DEFAULT '0',
  `C` tinyint(1) DEFAULT '0',
  `E` tinyint(1) DEFAULT '0',
  `ShAll` tinyint(1) DEFAULT '0',
  `User_Id` varchar(255) NOT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blLock` tinyint(1) DEFAULT '0',
  `blCancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser_det`
--

INSERT INTO `tbluser_det` (`id`, `GRP`, `Form_Id`, `S`, `U`, `D`, `P`, `L`, `C`, `E`, `ShAll`, `User_Id`, `Created_At`, `blLock`, `blCancel`) VALUES
(5, 'sddsg', 'FrmWebPage.php', 1, 1, 1, 1, 1, 1, 1, 1, 'Admin', '2020-03-20 13:35:18', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblwebpage`
--

CREATE TABLE `tblwebpage` (
  `id` int(11) NOT NULL,
  `PageId` varchar(50) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `TitleDetails` varchar(2000) NOT NULL,
  `User_Id` varchar(255) DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blCancel` tinyint(1) DEFAULT '0',
  `blLock` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwebpage`
--

INSERT INTO `tblwebpage` (`id`, `PageId`, `Title`, `TitleDetails`, `User_Id`, `Created_At`, `blCancel`, `blLock`) VALUES
(1, 'AboutUs', 'AboutUs', '<div style=\"text-align: justify;\"><span style=\"color: rgb(5, 5, 5); font-family: \"Segoe UI Historic\", \"Segoe UI\", Helvetica, Arial, sans-serif; font-size: 15px;\">The school considers education to be a life-long process which should have a strong foundation. The goal of the school is to inculcate zeal, caliber, love for learning and a desire to excel at every level, in the students. The school also aims at equipping the students with the intellectual and practical skills that are necessary to meet the challenges in the future. We bring to you a school that seeks to provide world-class education and where our students gain global exposure and insights through various educational seminars and presentations conducted in school and out of the school by various educational institutions. we successfully provides holistic education that encourages students to excel in multiple discipline, such as academics, sports, music and dramatics.</span></div>			', 'admin', '2020-03-27 15:26:49', 0, 0),
(16, 'ContactUs', 'Contact Us', '<h3><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\">Spring Valley Public School</font></h3><h2 class=\"oo9gr5id m6dqt4wy hnhda86s lzcic4wl oi732d6d ik7dh3pa d2edcug0 qv66sw1b c1et5uql a8c37x1j irj2b8pg q9se6cdp h7mekvxk hzawbc8m\" dir=\"auto\" tabindex=\"-1\" style=\"margin: -5px 0px -7px; padding: 0px; outline: none; overflow-wrap: break-word; max-width: 100%; line-height: 1.1429; -webkit-font-smoothing: antialiased; word-break: break-word;\"><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 28px;\" times=\"\" new=\"\" roman\";\"=\"\"></span></font></h2><h3><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><br></font></h3><h3><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\">Mob. No. : 098262 37370</font></h3><h3><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\">EmailÂ  Â  Â  Â  :springvalleym@hotmail.com</font></h3><h3><font face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\">WebsiteÂ  Â  :http://www.springvalleypublicschool.com/</font></h3><h2 class=\"oo9gr5id m6dqt4wy hnhda86s lzcic4wl oi732d6d ik7dh3pa d2edcug0 qv66sw1b c1et5uql a8c37x1j irj2b8pg q9se6cdp h7mekvxk hzawbc8m\" dir=\"auto\" tabindex=\"-1\" style=\"margin: -5px 0px -7px; padding: 0px; outline: none; overflow-wrap: break-word; max-width: 100%; line-height: 1.1429; -webkit-font-smoothing: antialiased; word-break: break-word;\"></h2><h5></h5>												', 'admin', '2020-03-27 15:26:50', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgrp`
--
ALTER TABLE `tblgrp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhomepage`
--
ALTER TABLE `tblhomepage`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tblhomepageslider`
--
ALTER TABLE `tblhomepageslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblimagegallery`
--
ALTER TABLE `tblimagegallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser_det`
--
ALTER TABLE `tbluser_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblwebpage`
--
ALTER TABLE `tblwebpage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Pageid` (`PageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblgrp`
--
ALTER TABLE `tblgrp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblhomepage`
--
ALTER TABLE `tblhomepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblhomepageslider`
--
ALTER TABLE `tblhomepageslider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblimagegallery`
--
ALTER TABLE `tblimagegallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluser_det`
--
ALTER TABLE `tbluser_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblwebpage`
--
ALTER TABLE `tblwebpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
