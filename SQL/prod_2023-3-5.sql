-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 05, 2023 at 12:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iWatchThis`
--

-- --------------------------------------------------------

--
-- Table structure for table `Content`
--

CREATE TABLE `Content` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `websiteName` varchar(20) NOT NULL,
  `status` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `contentLink` text NOT NULL,
  `imgSrc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Content`
--

INSERT INTO `Content` (`id`, `title`, `websiteName`, `status`, `description`, `contentLink`, `imgSrc`) VALUES
(4, 'My Hero Academia', '9anime', 'now', 'h', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/20/b7/20b7580c1abdf45a6eaf4826fc9fdf33/20b7580c1abdf45a6eaf4826fc9fdf33.jpg'),
(5, 'Monster', 'wco', 'done', 'hhh', 'https://www.wcoanimedub.tv/anime/monster', 'https://cdn.animationexplore.com/catimg/24830.jpg'),
(6, 'God Eater', '9anime', 'planned', 'hh', 'https://9animetv.to/watch/god-eater-2215?ep=26241', 'https://img.bunnycdnn.ru/_r/300x400/100/20/1d/201d3b9be60ba94f08b2110f483f47a8/201d3b9be60ba94f08b2110f483f47a8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ContentGenra`
--

CREATE TABLE `ContentGenra` (
  `genra` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ContentGenra`
--

INSERT INTO `ContentGenra` (`genra`) VALUES
(''),
('Action'),
('Drama'),
('Fantasy'),
('Horror'),
('Military'),
('Mystery'),
('Psychological'),
('School'),
('Sci-Fi'),
('Shounen'),
('Super Power'),
('Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `ContentGenraMap`
--

CREATE TABLE `ContentGenraMap` (
  `id` int(11) NOT NULL,
  `contentId` int(11) NOT NULL,
  `genra` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ContentGenraMap`
--

INSERT INTO `ContentGenraMap` (`id`, `contentId`, `genra`) VALUES
(1, 4, 'Action'),
(2, 4, 'School'),
(3, 4, 'Shounen'),
(4, 4, 'Super Power'),
(5, 5, 'Drama'),
(6, 5, 'Horror'),
(7, 5, 'Mystery'),
(8, 5, 'Psychological'),
(9, 5, 'Thriller'),
(10, 6, 'Action'),
(11, 6, 'Fantasy'),
(12, 6, 'Sci-Fi'),
(13, 6, 'Military');

-- --------------------------------------------------------

--
-- Table structure for table `ContentSeason`
--

CREATE TABLE `ContentSeason` (
  `id` int(11) NOT NULL,
  `contentId` int(11) NOT NULL,
  `episode` int(4) NOT NULL,
  `season` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ContentSeason`
--

INSERT INTO `ContentSeason` (`id`, `contentId`, `episode`, `season`) VALUES
(1, 4, 20, 6),
(2, 6, 6, 1),
(3, 5, 78, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ContentStatus`
--

CREATE TABLE `ContentStatus` (
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ContentStatus`
--

INSERT INTO `ContentStatus` (`status`) VALUES
('done'),
('now'),
('planned');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentall`
-- (See below for the actual view)
--
CREATE TABLE `viewcontentall` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentdone`
-- (See below for the actual view)
--
CREATE TABLE `viewcontentdone` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentnow`
-- (See below for the actual view)
--
CREATE TABLE `viewcontentnow` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentplanned`
-- (See below for the actual view)
--
CREATE TABLE `viewcontentplanned` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Structure for view `viewcontentall`
--
DROP TABLE IF EXISTS `viewcontentall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthis`.`viewcontentall`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthis`.`content` `C` join `iwatchthis`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthis`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) GROUP BY `C`.`id`  ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentdone`
--
DROP TABLE IF EXISTS `viewcontentdone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthis`.`viewcontentdone`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthis`.`content` `C` join `iwatchthis`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthis`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) WHERE `C`.`status` = 'done' GROUP BY `C`.`id`  ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentnow`
--
DROP TABLE IF EXISTS `viewcontentnow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthis`.`viewcontentnow`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthis`.`content` `C` join `iwatchthis`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthis`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) WHERE `C`.`status` = 'now' GROUP BY `C`.`id`  ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentplanned`
--
DROP TABLE IF EXISTS `viewcontentplanned`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthis`.`viewcontentplanned`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthis`.`content` `C` join `iwatchthis`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthis`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) WHERE `C`.`status` = 'planned' GROUP BY `C`.`id`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Content`
--
ALTER TABLE `Content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cn_status` (`status`);

--
-- Indexes for table `ContentGenra`
--
ALTER TABLE `ContentGenra`
  ADD PRIMARY KEY (`genra`);

--
-- Indexes for table `ContentGenraMap`
--
ALTER TABLE `ContentGenraMap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cn_cgm_cid` (`contentId`),
  ADD KEY `cn_cgm_g` (`genra`);

--
-- Indexes for table `ContentSeason`
--
ALTER TABLE `ContentSeason`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contentId` (`contentId`);

--
-- Indexes for table `ContentStatus`
--
ALTER TABLE `ContentStatus`
  ADD PRIMARY KEY (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Content`
--
ALTER TABLE `Content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ContentGenraMap`
--
ALTER TABLE `ContentGenraMap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ContentSeason`
--
ALTER TABLE `ContentSeason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Content`
--
ALTER TABLE `Content`
  ADD CONSTRAINT `cn_status` FOREIGN KEY (`status`) REFERENCES `ContentStatus` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ContentGenraMap`
--
ALTER TABLE `ContentGenraMap`
  ADD CONSTRAINT `cn_cgm_cid` FOREIGN KEY (`contentId`) REFERENCES `Content` (`id`),
  ADD CONSTRAINT `cn_cgm_g` FOREIGN KEY (`genra`) REFERENCES `ContentGenra` (`genra`);

--
-- Constraints for table `ContentSeason`
--
ALTER TABLE `ContentSeason`
  ADD CONSTRAINT `contentseason_ibfk_1` FOREIGN KEY (`contentId`) REFERENCES `Content` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
