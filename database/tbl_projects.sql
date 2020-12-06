-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2020 at 09:23 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `program` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(20) NOT NULL,
  `source` varchar(40) NOT NULL,
  `mediatype` varchar(20) NOT NULL,
  `title` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`ID`, `name`, `program`, `description`, `image`, `source`, `mediatype`, `title`) VALUES
(1, 'Sportsnet Footbal Intro', 'Cinema 4d, Adobe After Effects', '', 'sportsnet.jpg', 'sportsnet.mp4', 'Video', 'INTRO VIDEO'),
(2, 'Atlas Weekend ', 'Adobe Illustrator, Adobe Photoshop', 'A poster was created for a music event in Ukraine. The graphic design of the designer Kate Moross was taken as a basis and was processed according to the theme of the Atlas Weekend event.', 'atlas.jpg', 'atlas.jpg', 'Graphic', 'POSTER'),
(3, 'Demoreel', 'Adobe After Effects, Adobe Photoshop, Cinema 4d', 'Demoreel presents the projects which unfold me as a motion designer.', 'demoreel.jpg', 'demoreel.mp4', 'Video', 'INTRO VIDEO'),
(4, 'Ceci Cosmetics', 'Adobe InDesign, Adobe Illustrator, Adobe Photoshop', 'Cecci is a young cosmetics brand. The\r\nmain products of the company are body\r\ncare cosmetics based on sea buckthorn\r\noil.\r\nThe main goals of the company:\r\n• production of 100% organic cosmetics;\r\n• using only natural ingredients;\r\n• compliance with the highest quality\r\nstandards in the production of products.\r\nCecci skillfully combines old traditions\r\nand modern technologies. It was important\r\nfor the creators of the brand to create\r\na product that, when produced and used,\r\nwould not harm the environment, and\r\nat the same time would have a discreet,\r\nattractive, traditional and recognizable\r\nappearance.', 'ceci.jpg', 'ceci.jpg', 'Graphic', 'NATURAL COSMETIC BRAND'),
(5, 'Kids Channel TV Bumper', 'Cinema 4d, Adobe After Effects', 'It is an energetic and engaging Kids Channel\r\nTV bumper (station ID) animation which reveals the station\'s logo and show the\r\nviewer what program is coming up next.', 'cartoon.jpg', 'kids.mp4', 'Video', 'NICKJR BUMPER VIDEO'),
(6, 'Morphing Commercial', 'Cinema 4D, Adobe After Effects', 'A final commercial video with a theme of IKEA store, presenting the morphing objects(furniture) with a message \"LIVE IN COMFORT\".', 'morph.jpg', 'commercial.mp4', 'Video', 'COMMERCIAL VIDEO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
