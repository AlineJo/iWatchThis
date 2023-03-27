-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2023 at 10:30 AM
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
-- Database: `iwatchthisstag`
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
  `rank` int(11) NOT NULL DEFAULT '0',
  `status` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `contentLink` text NOT NULL,
  `imgSrc` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cn_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `title`, `websiteName`, `rank`, `status`, `description`, `contentLink`, `imgSrc`) VALUES
(1, 'VAMPIRE HUNTER D: BLOODLUST', '9animetv.to', 10, 'planned', '', 'https://9animetv.to/watch/vampire-hunter-d-bloodlust-681?ep=83361', 'https://img.bunnycdnn.ru/_r/300x400/100/39/d7/39d7a06fac46f5531f1349b6b379eb61/39d7a06fac46f5531f1349b6b379eb61.jpg'),
(2, 'TOKYO REVENGERS', '9animetv.to', 7, 'planned', '', 'https://9animetv.to/search?keyword=TOKYO+REVENGERS', 'https://img.bunnycdnn.ru/_r/300x400/100/c0/4e/c04ee7106ea54910abdd39563d239374/c04ee7106ea54910abdd39563d239374.jpg'),
(3, 'HELLSING', '9animetv.to', 8, 'done', '', 'https://9animetv.to/watch/hellsing-1555?ep=21128', 'https://img.bunnycdnn.ru/_r/300x400/100/4f/eb/4feb42b614d2fb5d692a335d30895c69/4feb42b614d2fb5d692a335d30895c69.jpg'),
(7, 'RERIDED', '9animetv.to', 2, 'planned', '', 'https://9animetv.to/watch/rerided-derrida-who-leaps-through-time-8869?ep=48291', 'https://img.bunnycdnn.ru/_r/300x400/100/85/3a/853a27989eaf661922b4906c41c61fe4/853a27989eaf661922b4906c41c61fe4.jpg'),
(8, 'CYBORG 009', '9animetv.to', 0, 'planned', '', 'https://9animetv.to/watch/cyborg-009-2384?ep=27175', 'https://img.bunnycdnn.ru/_r/300x400/100/54/eb/54ebcc8883ba0b6520539275698d205c/54ebcc8883ba0b6520539275698d205c.jpg'),
(9, 'CASTLEVANIA 4TH SEASON', '9animetv.to', 9, 'done', '', 'https://9animetv.to/watch/castlevania-4th-season-17873?ep=73429', 'https://img.bunnycdnn.ru/_r/300x400/100/14/2c/142c64dbfdf537d59ee02db7b33856ef/142c64dbfdf537d59ee02db7b33856ef.jpeg'),
(10, 'One Piece ', '9animetv.to', 9, 'now', '', 'https://9animetv.to/watch/one-piece-100?ep=98724', 'https://img.bunnycdnn.ru/_r/300x400/100/54/90/5490cb32786d4f7fef0f40d7266df532/5490cb32786d4f7fef0f40d7266df532.jpg'),
(12, 'BLACK LAGOON', '9animetv.to', 8, 'done', '', 'https://9animetv.to/watch/black-lagoon-456?ep=9728', 'https://img.bunnycdnn.ru/_r/300x400/100/26/15/26153ae545ca9c5820ca989a48c364c6/26153ae545ca9c5820ca989a48c364c6.jpg'),
(13, 'Chainsaw Man', '9animetv.to', 8, 'now', '', 'https://9animetv.to/watch/chainsaw-man-17406?ep=94597', 'https://img.bunnycdnn.ru/_r/300x400/100/b3/da/b3da1326e07269ddd8d73475c5dabf2c/b3da1326e07269ddd8d73475c5dabf2c.jpg'),
(14, 'MUSHISHI ZOKU SHOU', '9animetv.to', 8, 'planned', '', 'https://9animetv.to/watch/mushi-shi-43?ep=1226', 'https://img.bunnycdnn.ru/_r/300x400/100/61/e7/61e75f58a9e14f6297ec062179b30391/61e75f58a9e14f6297ec062179b30391.jpg'),
(15, 'SHADOWS HOUSE', '9animetv.to', 5, 'planned', '', 'https://9animetv.to/watch/shadows-house-17254?ep=64622', 'https://img.bunnycdnn.ru/_r/300x400/100/87/68/876881fbaafdde48ea2ea9d48ee8bb7c/876881fbaafdde48ea2ea9d48ee8bb7c.jpg'),
(17, 'BLACK LAGOON: THE SECOND BARRAGE', '9animetv.to', 8, 'done', '', 'https://9animetv.to/watch/black-lagoon-the-second-barrage-302?ep=5742', 'https://img.bunnycdnn.ru/_r/300x400/100/00/8a/008a817ca0373a09b30199587a63c2e0/008a817ca0373a09b30199587a63c2e0.jpg'),
(18, 'HUNTER X HUNTER', '9animetv.to', 7, 'done', '', 'https://9animetv.to/watch/hunter-x-hunter-2?ep=212', 'https://img.bunnycdnn.ru/_r/300x400/100/99/3c/993c0361975cce4c7fbb11f8558f9664/993c0361975cce4c7fbb11f8558f9664.jpg'),
(20, 'BLACK LAGOON: ROBERTA\'S BLOOD TRAIL', '9animetv.to', 8, 'done', '', 'https://9animetv.to/watch/black-lagoon-robertas-blood-trail-457?ep=9733', 'https://img.bunnycdnn.ru/_r/300x400/100/c9/00/c9001710f3a1009f07b81d494fb90e7a/c9001710f3a1009f07b81d494fb90e7a.jpg'),
(22, 'BLACK BUTLER', '9animetv.to', 5, 'done', '', 'https://9animetv.to/watch/black-butler-854?ep=14853', 'https://img.bunnycdnn.ru/_r/300x400/100/7a/df/7adfc4522e111c0b48c70eeb435c912f/7adfc4522e111c0b48c70eeb435c912f.jpg'),
(25, 'NARUTO', '9animetv.to', 8, 'done', '', 'https://9animetv.to/watch/naruto-677?ep=12571', 'https://img.bunnycdnn.ru/_r/300x400/100/5d/b4/5db400c33f7494bc8ae96f9e634958d0/5db400c33f7494bc8ae96f9e634958d0.jpg'),
(29, 'NARUTO: SHIPPUDEN', '9animetv.to', 8, 'done', '', 'https://9animetv.to/watch/naruto-shippuden-355?ep=8381', 'https://img.bunnycdnn.ru/_r/300x400/100/9c/bc/9cbcf87f54194742e7686119089478f8/9cbcf87f54194742e7686119089478f8.jpg'),
(30, 'DRIFTERS', '9animetv.to', 9, 'done', '', 'https://9animetv.to/watch/drifters-590?ep=11490', 'https://img.bunnycdnn.ru/_r/300x400/100/46/86/468639f57a4c221f6ed135cef78b926b/468639f57a4c221f6ed135cef78b926b.jpg'),
(32, 'My Hero Academia', '9animetv.to', 9, 'now', '', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=99516', 'https://img.bunnycdnn.ru/_r/300x400/100/20/b7/20b7580c1abdf45a6eaf4826fc9fdf33/20b7580c1abdf45a6eaf4826fc9fdf33.jpg'),
(33, 'CODE GEASS: LELOUCH OF THE REBELLION R2', '9animetv.to', 6, 'planned', '', 'https://9animetv.to/watch/code-geass-lelouch-of-the-rebellion-r2-17?ep=738', 'https://img.bunnycdnn.ru/_r/300x400/100/39/82/3982e0e11afc5261c6c0daf71c408342/3982e0e11afc5261c6c0daf71c408342.jpg'),
(34, 'BLOOD: THE LAST VAMPIRE', '9animetv.to', 10, 'planned', '', 'https://9animetv.to/watch/blood-the-last-vampire-3956?ep=89537', 'https://img.bunnycdnn.ru/_r/300x400/100/4a/7b/4a7b3852b03afd3b43850ba098b4c531/4a7b3852b03afd3b43850ba098b4c531.jpg'),
(35, 'CODE:BREAKER', '9animetv.to', 6, 'planned', '', 'https://9animetv.to/watch/codebreaker-4277?ep=37352', 'https://img.bunnycdnn.ru/_r/300x400/100/c5/e8/c5e84568ad62124dc6f06c193b9fbe27/c5e84568ad62124dc6f06c193b9fbe27.jpg'),
(36, 'Black Clover', '9animetv.to', 5, 'now', '', 'https://9animetv.to/watch/black-clover-2404?ep=27377', 'https://img.bunnycdnn.ru/_r/300x400/100/f5/8b/f58b0204c20ae3310f65ae7b8cb9987e/f58b0204c20ae3310f65ae7b8cb9987e.jpg'),
(37, 'ONE PUNCH MAN', '9animetv.to', 5, 'done', '', 'https://9animetv.to/watch/one-punch-man-63?ep=1512', 'https://img.bunnycdnn.ru/_r/300x400/100/f5/d1/f5d173f8317f592c6c70d594829b89e4/f5d173f8317f592c6c70d594829b89e4.jpg'),
(38, 'ONE PUNCH MAN 2ND SEASON', '9animetv.to', 5, 'planned', '', 'https://9animetv.to/watch/one-punch-man-2nd-season-specials-2430?ep=27600', 'https://img.bunnycdnn.ru/_r/300x400/100/a7/a3/a7a33a567ef4d244b12b6050fa7865ff/a7a33a567ef4d244b12b6050fa7865ff.jpg'),
(39, 'Arcane', 'wco.tv', 8, 'done', '', 'https://www.wco.tv/arcane-episode-9-the-monster-you-created', 'https://cdn.animationexplore.com/catimg/915456.jpg'),
(40, 'Dota: Dragon\'s Blood', 'wco.tv', 9, 'planned', '', 'https://www.wco.tv/anime/dota-dragon-s-blood', 'https://cdn.animationexplore.com/catimg/883749.jpg'),
(41, 'CODE GEASS: LELOUCH OF THE REBELLION', '9animetv.to', 5, 'done', '', 'https://9animetv.to/watch/code-geass-lelouch-of-the-rebellion-41?ep=1182', 'https://img.bunnycdnn.ru/_r/300x400/100/b7/b1/b7b180ff8404f0475e60a4f3a0f5bd20/b7b180ff8404f0475e60a4f3a0f5bd20.jpg'),
(42, 'MOB PSYCHO 100 III', '9animetv.to', 6, 'done', '', 'https://9animetv.to/watch/mob-psycho-100-iii-18153?ep=96779', 'https://img.bunnycdnn.ru/_r/300x400/100/e3/d2/e3d22899f42d913cf47a96b7b575aab3/e3d22899f42d913cf47a96b7b575aab3.png'),
(43, 'DORORO', '9animetv.to', 9, 'done', '', 'https://9animetv.to/watch/dororo-324?ep=7229', 'https://img.bunnycdnn.ru/_r/300x400/100/09/e1/09e13f545f690e4278625b68aea755aa/09e13f545f690e4278625b68aea755aa.jpg'),
(44, 'Ajin: Demi-Human', 'wco.tv', 7, 'done', '', 'https://www.wco.tv/anime/ajin-demi-human', 'https://cdn.animationexplore.com/catimg/274083.jpg'),
(45, 'STEINS;GATE 0', '9animetv.to', 6, 'planned', '', 'https://9animetv.to/watch/steinsgate-0-92?ep=2051', 'https://img.bunnycdnn.ru/_r/300x400/100/72/32/72322970318a3c89f4b7d2193c279c6f/72322970318a3c89f4b7d2193c279c6f.jpg'),
(46, 'STEINS;GATE', '9animetv.to', 6, 'planned', '', 'https://9animetv.to/watch/steinsgate-3?ep=213', 'https://img.bunnycdnn.ru/_r/300x400/100/68/35/6835ff30fa46da5612e3adc81f51724e/6835ff30fa46da5612e3adc81f51724e.jpg'),
(47, 'Monster', 'wcoanimedub.tv', 9, 'done', '', 'https://www.wcoanimedub.tv/anime/monster', 'https://cdn.animationexplore.com/catimg/24830.jpg'),
(48, 'SLAM DUNK', '9animetv.to', 9, 'done', '', 'https://9animetv.to/watch/slam-dunk-86?ep=1888', 'https://img.bunnycdnn.ru/_r/300x400/100/47/f3/47f3c67f8527cd2c57d3c495186a8a3f/47f3c67f8527cd2c57d3c495186a8a3f.jpg'),
(49, 'Fighting Spirit, Hajime no Ippo', '9animetv.to', 5, 'planned', '', 'https://9animetv.to/watch/fighting-spirit-34?ep=971', 'https://img.bunnycdnn.ru/_r/300x400/100/26/6f/266f26305336e98b875ff53a302e9f8e/266f26305336e98b875ff53a302e9f8e.jpg'),
(50, 'THE JOURNEY', '9animetv.to', 10, 'planned', '', 'https://9animetv.to/watch/the-journey-17743?ep=85145', 'https://img.bunnycdnn.ru/_r/300x400/100/f3/e5/f3e5b0c7b67345d3154fee6fe9cea8ea/f3e5b0c7b67345d3154fee6fe9cea8ea.jpg'),
(51, 'TRIGUN', '9animetv.to', 1, 'planned', '', 'https://9animetv.to/watch/trigun-266?ep=5370', 'https://img.bunnycdnn.ru/_r/300x400/100/e0/3b/e03bf5773842843f07d5f5b6b222d19f/e03bf5773842843f07d5f5b6b222d19f.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentgenramap`
--

INSERT INTO `contentgenramap` (`id`, `contentId`, `genra`) VALUES
(52, 34, 'Horror'),
(78, 10, 'Action'),
(79, 10, 'Drama'),
(80, 10, 'Shounen'),
(149, 13, 'Action'),
(150, 13, 'Horror'),
(151, 13, 'Shounen'),
(152, 13, 'Super Power'),
(157, 32, 'Action'),
(158, 32, 'Shounen'),
(159, 32, 'Super Power'),
(160, 32, 'School'),
(161, 3, 'Action'),
(162, 3, 'Horror'),
(166, 12, 'Fantasy'),
(167, 17, 'Action'),
(168, 17, 'Drama'),
(169, 20, 'Action'),
(170, 20, 'Drama'),
(171, 22, 'Fantasy'),
(172, 22, 'Drama'),
(173, 22, 'Action'),
(177, 25, 'Action'),
(178, 25, 'Drama'),
(179, 25, 'Shounen'),
(182, 30, 'Action'),
(183, 29, 'Action'),
(184, 29, 'Fantasy'),
(185, 37, 'Action'),
(186, 37, 'Super Power'),
(187, 38, 'Action'),
(188, 38, 'Super Power'),
(189, 38, 'Fantasy'),
(190, 8, 'Action'),
(191, 8, 'Military'),
(192, 8, 'Sci-Fi'),
(193, 8, 'Super Power'),
(195, 9, 'Fantasy'),
(196, 9, 'Horror'),
(197, 9, 'Action'),
(198, 39, 'Action'),
(199, 39, 'Drama'),
(200, 39, 'Fantasy'),
(205, 35, 'Action'),
(206, 35, 'Super Power'),
(207, 35, 'Fantasy'),
(208, 41, 'Action'),
(209, 41, 'Drama'),
(210, 41, 'School'),
(211, 41, 'Sci-Fi'),
(212, 41, 'Super Power'),
(213, 41, 'Military'),
(219, 42, 'Action'),
(220, 42, 'Fantasy'),
(221, 42, 'Sci-Fi'),
(222, 42, 'Shounen'),
(223, 42, 'Super Power'),
(231, 18, 'Action'),
(232, 18, 'Fantasy'),
(233, 18, 'Shounen'),
(234, 18, 'Thriller'),
(235, 43, 'Action'),
(236, 43, 'Horror'),
(237, 43, 'Mystery'),
(238, 44, 'Action'),
(239, 44, 'Horror'),
(240, 44, 'Psychological'),
(241, 45, 'Action'),
(242, 45, 'Drama'),
(243, 45, 'Fantasy'),
(244, 45, 'Mystery'),
(245, 45, 'Sci-Fi'),
(246, 46, 'Action'),
(247, 46, 'Drama'),
(248, 46, 'Fantasy'),
(249, 46, 'Mystery'),
(250, 46, 'Sci-Fi'),
(251, 47, 'Action'),
(252, 47, 'Drama'),
(253, 47, 'Horror'),
(254, 47, 'Psychological'),
(255, 48, 'Drama'),
(256, 48, 'School'),
(257, 48, 'Shounen'),
(258, 49, 'Action'),
(259, 49, 'Drama'),
(260, 49, 'Shounen'),
(261, 1, 'Action'),
(262, 1, 'Fantasy'),
(263, 1, 'School'),
(284, 51, 'Action'),
(285, 51, 'Fantasy'),
(286, 51, 'School'),
(287, 51, 'Horror'),
(288, 51, 'Action'),
(289, 51, 'Fantasy'),
(290, 51, 'Mystery'),
(291, 51, 'Action'),
(292, 7, 'Action'),
(293, 7, 'Military'),
(294, 7, 'Sci-Fi'),
(295, 7, 'Super Power'),
(296, 7, 'Fantasy'),
(297, 15, 'Action'),
(298, 15, 'Fantasy'),
(299, 15, 'Super Power'),
(300, 15, 'Fantasy'),
(301, 33, 'Action'),
(302, 33, 'Drama'),
(303, 33, 'Fantasy'),
(304, 33, 'Military'),
(305, 33, 'Sci-Fi'),
(306, 50, 'Action'),
(318, 40, 'Action'),
(319, 40, 'Fantasy'),
(320, 40, 'Sci-Fi'),
(321, 40, 'Thriller'),
(322, 14, 'Action'),
(323, 14, 'Fantasy'),
(324, 14, 'Mystery'),
(325, 2, 'Action'),
(326, 2, 'Drama'),
(327, 2, 'School'),
(328, 2, 'Shounen'),
(329, 36, 'Action'),
(330, 36, 'Drama'),
(331, 36, 'Fantasy'),
(332, 36, 'School'),
(333, 36, 'Sci-Fi'),
(334, 36, 'Shounen'),
(335, 36, 'Super Power'),
(336, 36, 'Thriller');

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentseason`
--

INSERT INTO `contentseason` (`id`, `contentId`, `season`, `episode`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 13),
(7, 7, 6, 20),
(8, 8, 1, 1),
(9, 9, 4, 10),
(10, 10, 1, 1054),
(12, 12, 1, 12),
(13, 13, 1, 12),
(15, 14, 1, 1),
(16, 15, 1, 1),
(19, 17, 1, 12),
(20, 18, 1, 148),
(21, 20, 1, 5),
(23, 22, 1, 24),
(26, 25, 1, 220),
(30, 29, 1, 500),
(31, 30, 1, 12),
(33, 32, 6, 24),
(34, 33, 2, 1),
(35, 34, 1, 1),
(36, 35, 1, 1),
(37, 36, 1, 170),
(38, 37, 1, 12),
(39, 38, 2, 1),
(40, 39, 1, 9),
(41, 40, 1, 1),
(42, 41, 1, 25),
(43, 42, 3, 12),
(44, 43, 1, 24),
(45, 44, 2, 13),
(46, 45, 1, 1),
(47, 46, 1, 1),
(48, 47, 1, 74),
(49, 48, 1, 101),
(50, 49, 1, 1),
(51, 50, 1, 1),
(52, 51, 1, 1);

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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`seasonId` int(11)
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`seasonId` int(11)
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`seasonId` int(11)
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` text
,`seasonId` int(11)
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Structure for view `viewcontentall`
--
DROP TABLE IF EXISTS `viewcontentall`;

DROP VIEW IF EXISTS `viewcontentall`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentall`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`rank` AS `rank`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`id` AS `seasonId`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) GROUP BY `c`.`id` ORDER BY `c`.`rank` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentdone`
--
DROP TABLE IF EXISTS `viewcontentdone`;

DROP VIEW IF EXISTS `viewcontentdone`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentdone`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`rank` AS `rank`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`id` AS `seasonId`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) WHERE (`c`.`status` = 'done') GROUP BY `c`.`id` ORDER BY `c`.`rank` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentnow`
--
DROP TABLE IF EXISTS `viewcontentnow`;

DROP VIEW IF EXISTS `viewcontentnow`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentnow`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`rank` AS `rank`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`id` AS `seasonId`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) WHERE (`c`.`status` = 'now') GROUP BY `c`.`id` ORDER BY `c`.`rank` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentplanned`
--
DROP TABLE IF EXISTS `viewcontentplanned`;

DROP VIEW IF EXISTS `viewcontentplanned`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewcontentplanned`  AS SELECT `c`.`id` AS `id`, `c`.`title` AS `title`, `c`.`websiteName` AS `websiteName`, `c`.`rank` AS `rank`, `c`.`status` AS `status`, `c`.`description` AS `description`, `c`.`contentLink` AS `contentLink`, `c`.`imgSrc` AS `imgSrc`, group_concat(distinct `cgm`.`genra` separator ', ') AS `genra`, `cs`.`id` AS `seasonId`, `cs`.`season` AS `season`, `cs`.`episode` AS `episode` FROM ((`content` `c` join `contentgenramap` `cgm` on((`cgm`.`contentId` = `c`.`id`))) join `contentseason` `cs` on((`c`.`id` = `cs`.`contentId`))) WHERE (`c`.`status` = 'planned') GROUP BY `c`.`id` ORDER BY `c`.`rank` DESC ;

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
