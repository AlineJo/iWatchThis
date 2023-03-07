-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2023 at 12:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iWatchThisStag`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `websiteName` varchar(20) NOT NULL,
  `status` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `contentLink` text NOT NULL,
  `imgSrc` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cn_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `websiteName`, `status`, `description`, `contentLink`, `imgSrc`) VALUES
(1, 'Yousuf', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/f1/43/f143e566c979dcbdf86bc53876084d22/f143e566c979dcbdf86bc53876084d22.jpg'),
(2, 'post man test399', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/b3/da/b3da1326e07269ddd8d73475c5dabf2c/b3da1326e07269ddd8d73475c5dabf2c.jpg'),
(3, 'post man test399', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/96/04/96043f24fe48b93868ea9a4b500d85db/96043f24fe48b93868ea9a4b500d85db.jpg'),
(4, 'post man test399', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/9e/6f/9e6fdd7e5556dc65eae6351d8a8ce98d/9e6fdd7e5556dc65eae6351d8a8ce98d.jpg'),
(5, 'post man test399', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/f3/d4/f3d45b9feef92ba28811cb8d8066f40f/f3d45b9feef92ba28811cb8d8066f40f.jpg'),
(6, 'post man test399', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/29/59/295926ca2334663d3dbd0f53da1a14fd/295926ca2334663d3dbd0f53da1a14fd.jpg'),
(7, 'RERIDED', 'postman.com', 'planned', 'RERIDED: DERRIDA, WHO LEAPS THROUGH TIME', 'https://9animetv.to/watch/rerided-derrida-who-leaps-through-time-8869?ep=48291', 'https://img.bunnycdnn.ru/_r/300x400/100/85/3a/853a27989eaf661922b4906c41c61fe4/853a27989eaf661922b4906c41c61fe4.jpg'),
(8, 'Yousuf', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/80/f0/80f0c6466be65309a6e410c40cb9130f/80f0c6466be65309a6e410c40cb9130f.jpg'),
(9, 'Yousuf', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/6e/4d/6e4d22880f9ba024a67b6c44aa13ae45/6e4d22880f9ba024a67b6c44aa13ae45.jpg'),
(10, 'Yousuf', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/54/90/5490cb32786d4f7fef0f40d7266df532/5490cb32786d4f7fef0f40d7266df532.jpg'),
(11, 'Yousuf', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/c9/de/c9def69d8fedbdd9bfcb8b702506c84d/c9def69d8fedbdd9bfcb8b702506c84d.jpg'),
(12, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/ce/26/ce2615b6b5235d32432c8e1dd3e433b5/ce2615b6b5235d32432c8e1dd3e433b5.jpg'),
(13, 'Yousuf', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/b3/da/b3da1326e07269ddd8d73475c5dabf2c/b3da1326e07269ddd8d73475c5dabf2c.jpg'),
(14, 'MUSHISHI ZOKU SHOU', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/mushishi-zoku-shou-2nd-season-33?ep=961', 'https://img.bunnycdnn.ru/_r/300x400/100/61/e7/61e75f58a9e14f6297ec062179b30391/61e75f58a9e14f6297ec062179b30391.jpg'),
(15, 'YousufSHADOWS HOUSE', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/shadows-house-2nd-season-18080?ep=92625', 'https://img.bunnycdnn.ru/_r/300x400/100/4a/1f/4a1f900dc2a258943d2a9d41ac5c0bdf/4a1f900dc2a258943d2a9d41ac5c0bdf.jpg'),
(16, 'Yousuf', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/54/90/5490cb32786d4f7fef0f40d7266df532/5490cb32786d4f7fef0f40d7266df532.jpg'),
(17, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/3e/a6/3ea646f90f5cb6d5e2585b79118d92ba/3ea646f90f5cb6d5e2585b79118d92ba.jpg'),
(18, 'YousufSENGOKU BASARA SENGOKU BASARA TWO', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/sengoku-basara-two-ryuko-itadaki-no-chikai-atsuki-mirai-e-kakeru-tamashii-2460?ep=55828', 'https://img.bunnycdnn.ru/_r/300x400/100/ef/59/ef5920bdbef160e4a23f66d88fce111e/ef5920bdbef160e4a23f66d88fce111e.jpg'),
(20, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/3f/b2/3fb2ab9a7982d8ef1566382f6a933016/3fb2ab9a7982d8ef1566382f6a933016.jpg'),
(21, 'Yousuf', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/5a/01/5a01fd7c56657f7ce2216f44205d35ea/5a01fd7c56657f7ce2216f44205d35ea.jpg'),
(22, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/a4/44/a4449a100d7ca91a55620d289f3ab27b/a4449a100d7ca91a55620d289f3ab27b.jpg'),
(25, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/b3/da/b3da1326e07269ddd8d73475c5dabf2c/b3da1326e07269ddd8d73475c5dabf2c.jpg'),
(26, 'Yousuf', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/a2/4c/a24cdbc8138dfabfdcc4cc38edb31dc0/a24cdbc8138dfabfdcc4cc38edb31dc0.jpg'),
(28, 'Yousuf', 'postman.com', 'now', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/80/3b/803b1d25475f697095a5305c28d01123/803b1d25475f697095a5305c28d01123.jpg'),
(29, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/f0/48/f048c3f2bfe25155d54c310a0adba7c0/f048c3f2bfe25155d54c310a0adba7c0.jpg'),
(30, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/48/8e/488e740746ded4e21aa9737ed2a68008/488e740746ded4e21aa9737ed2a68008.jpg'),
(32, 'Yousuf', 'postman.com', 'done', 'some deec', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=97604', 'https://img.bunnycdnn.ru/_r/300x400/100/20/b7/20b7580c1abdf45a6eaf4826fc9fdf33/20b7580c1abdf45a6eaf4826fc9fdf33.jpg'),
(33, 'CODE:BREAKER', 'postman.com', 'planned', 'some deec', 'https://9animetv.to/watch/codebreaker-4277?ep=37352', 'https://img.bunnycdnn.ru/_r/300x400/100/c5/e8/c5e84568ad62124dc6f06c193b9fbe27/c5e84568ad62124dc6f06c193b9fbe27.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contentgenra`
--

DROP TABLE IF EXISTS `contentgenra`;
CREATE TABLE IF NOT EXISTS `contentgenra` (
  `genra` varchar(20) NOT NULL,
  PRIMARY KEY (`genra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentgenra`
--

INSERT INTO `contentgenra` (`genra`) VALUES
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
-- Table structure for table `contentgenramap`
--

DROP TABLE IF EXISTS `contentgenramap`;
CREATE TABLE IF NOT EXISTS `contentgenramap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentId` int(11) NOT NULL,
  `genra` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cn_cgm_cid` (`contentId`),
  KEY `cn_cgm_g` (`genra`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentgenramap`
--

INSERT INTO `contentgenramap` (`id`, `contentId`, `genra`) VALUES
(1, 1, 'Action'),
(2, 1, 'School'),
(3, 1, 'Fantasy'),
(4, 2, 'Action'),
(5, 2, 'School'),
(6, 2, 'Fantasy'),
(7, 3, 'Action'),
(8, 3, 'School'),
(9, 3, 'Fantasy'),
(10, 4, 'Action'),
(11, 4, 'School'),
(12, 4, 'Fantasy'),
(13, 5, 'Action'),
(14, 5, 'School'),
(15, 5, 'Fantasy'),
(16, 6, 'Action'),
(17, 6, 'School'),
(18, 6, 'Fantasy'),
(19, 7, 'Fantasy'),
(20, 8, 'Action'),
(21, 6, 'School'),
(22, 9, 'Fantasy'),
(23, 10, 'Action'),
(24, 11, 'School'),
(25, 12, 'Fantasy'),
(26, 13, 'Action'),
(27, 14, 'School'),
(28, 15, 'Fantasy'),
(29, 16, 'Action'),
(30, 6, 'School'),
(31, 17, 'Fantasy'),
(32, 7, 'Fantasy'),
(33, 18, 'Action'),
(35, 20, 'Fantasy'),
(36, 21, 'School'),
(37, 22, 'Fantasy'),
(40, 25, 'Fantasy'),
(41, 26, 'Action'),
(43, 28, 'School'),
(44, 17, 'Fantasy'),
(45, 29, 'Fantasy'),
(46, 30, 'Action'),
(48, 6, 'Fantasy'),
(49, 32, 'Fantasy'),
(50, 33, 'Fantasy'),
(51, 20, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `contentseason`
--

DROP TABLE IF EXISTS `contentseason`;
CREATE TABLE IF NOT EXISTS `contentseason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentId` int(11) NOT NULL,
  `season` int(3) NOT NULL,
  `episode` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentId` (`contentId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentseason`
--

INSERT INTO `contentseason` (`id`, `contentId`, `season`, `episode`) VALUES
(1, 1, 6, 20),
(2, 2, 6, 20),
(3, 3, 6, 20),
(4, 4, 6, 20),
(5, 5, 6, 20),
(6, 6, 6, 20),
(7, 7, 6, 20),
(8, 8, 6, 20),
(9, 9, 6, 20),
(10, 10, 6, 20),
(11, 11, 6, 20),
(12, 12, 6, 20),
(13, 13, 6, 20),
(15, 14, 6, 20),
(16, 15, 6, 20),
(17, 5, 6, 20),
(18, 16, 6, 20),
(19, 17, 6, 20),
(20, 18, 6, 20),
(21, 20, 6, 20),
(22, 21, 6, 20),
(23, 22, 6, 20),
(26, 25, 2, 2),
(27, 26, 3, 33),
(29, 28, 5, 1),
(30, 29, 1, 10),
(31, 30, 2, 22),
(33, 32, 3, 1),
(34, 33, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contentstatus`
--

DROP TABLE IF EXISTS `contentstatus`;
CREATE TABLE IF NOT EXISTS `contentstatus` (
  `status` varchar(11) NOT NULL,
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentstatus`
--

INSERT INTO `contentstatus` (`status`) VALUES
('done'),
('now'),
('planned');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentall`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewcontentall`;
CREATE TABLE IF NOT EXISTS `viewcontentall` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentdone`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewcontentdone`;
CREATE TABLE IF NOT EXISTS `viewcontentdone` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentnow`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewcontentnow`;
CREATE TABLE IF NOT EXISTS `viewcontentnow` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewcontentplanned`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `viewcontentplanned`;
CREATE TABLE IF NOT EXISTS `viewcontentplanned` (
`id` int(11)
,`title` varchar(40)
,`websiteName` varchar(20)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Structure for view `viewcontentall`
--
DROP TABLE IF EXISTS `viewcontentall`;

DROP VIEW IF EXISTS `viewcontentall`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentall`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) GROUP BY `c`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentdone`
--
DROP TABLE IF EXISTS `viewcontentdone`;

DROP VIEW IF EXISTS `viewcontentdone`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentdone`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) WHERE (`c`.`status` = 'done') GROUP BY `c`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentnow`
--
DROP TABLE IF EXISTS `viewcontentnow`;

DROP VIEW IF EXISTS `viewcontentnow`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentnow`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) WHERE (`c`.`status` = 'now') GROUP BY `c`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentplanned`
--
DROP TABLE IF EXISTS `viewcontentplanned`;

DROP VIEW IF EXISTS `viewcontentplanned`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentplanned`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) WHERE (`c`.`status` = 'planned') GROUP BY `c`.`id` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `cn_status` FOREIGN KEY (`status`) REFERENCES `contentstatus` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contentgenramap`
--
ALTER TABLE `contentgenramap`
  ADD CONSTRAINT `cn_cgm_cid` FOREIGN KEY (`contentId`) REFERENCES `content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cn_cgm_g` FOREIGN KEY (`genra`) REFERENCES `contentgenra` (`genra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contentseason`
--
ALTER TABLE `contentseason`
  ADD CONSTRAINT `contentseason_ibfk_1` FOREIGN KEY (`contentId`) REFERENCES `content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

