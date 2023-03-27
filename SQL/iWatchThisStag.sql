-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2023 at 11:36 AM
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
-- Database: `iWatchThisStag`
--

-- --------------------------------------------------------

--
-- Table structure for table `Content`
--

CREATE TABLE `Content` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `websiteName` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `status` varchar(11) NOT NULL,
  `description` text NOT NULL,
  `contentLink` text NOT NULL,
  `imgSrc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Content`
--

INSERT INTO `Content` (`id`, `title`, `websiteName`, `rank`, `status`, `description`, `contentLink`, `imgSrc`) VALUES
(1, 'VAMPIRE HUNTER D: BLOODLUST', '9animetv.to', 10, 'planned', 'The story revolves around D, the infamous \"dhampir\" (born of a vampire father and a human mother) outcast and renowned vampire hunter. His prowess at hunting the creatures of the night allowing his acceptance among humans, he is called upon to locate Charlotte Elbourne', 'https://9animetv.to/watch/vampire-hunter-d-bloodlust-681?ep=83361', 'https://img.bunnycdnn.ru/_r/300x400/100/39/d7/39d7a06fac46f5531f1349b6b379eb61/39d7a06fac46f5531f1349b6b379eb61.jpg'),
(2, 'TOKYO REVENGERS', '9animetv.to', 7, 'planned', 'Takemichi Hanagaki\'s life is at an all-time low. Just when he thought it couldn\'t get worse, he finds out that Hinata Tachibana, his ex-girlfriend, was murdered by the Tokyo Manji Gang: a group of vicious criminals that has been disturbing society\'s peace for quite some time. Wondering where it all went wrong, Takemichi suddenly finds himself travelling through time, ending up 12 years in the past—when he was still in a relationship with Hinata. Realizing he has a chance to save her, Takemichi resolves to infiltrate the Tokyo Manji Gang and climb the ranks in order to rewrite the future and save Hinata from her tragic fate. [Written by MAL Rewrite]', 'https://9animetv.to/search?keyword=TOKYO+REVENGERS', 'https://img.bunnycdnn.ru/_r/300x400/100/c0/4e/c04ee7106ea54910abdd39563d239374/c04ee7106ea54910abdd39563d239374.jpg'),
(3, 'HELLSING', '9animetv.to', 8, 'done', 'Hellsing, an organization specializing in dealing with supernatural threats, is called in to eliminate a vampire that is turning the villagers of Cheddar into ghouls', 'https://9animetv.to/watch/hellsing-1555?ep=21128', 'https://img.bunnycdnn.ru/_r/300x400/100/4f/eb/4feb42b614d2fb5d692a335d30895c69/4feb42b614d2fb5d692a335d30895c69.jpg'),
(7, 'RERIDED', '9animetv.to', 2, 'planned', 'RERIDED: DERRIDA, WHO LEAPS THROUGH TIME', 'https://9animetv.to/watch/rerided-derrida-who-leaps-through-time-8869?ep=48291', 'https://img.bunnycdnn.ru/_r/300x400/100/85/3a/853a27989eaf661922b4906c41c61fe4/853a27989eaf661922b4906c41c61fe4.jpg'),
(8, 'CYBORG 009', '9animetv.to', 0, 'planned', 'Skull, the evil leader of the terrorist organization known as Black Ghost, has nine powerful cyborgs under his control. But Dr. Isaac Gilmore, the Black Ghosts cybernetics scientist, decides to go rogue, helping the cyborgs turn against Skull and his evil organization. Black Ghost wishes to start the next major world war by flooding the market with weapons of mass destruction. It seems the nine brave cyborgs have their work cut out for them, as Black Ghost is determined to bring those nine cyborgs down.', 'https://9animetv.to/watch/cyborg-009-2384?ep=27175', 'https://img.bunnycdnn.ru/_r/300x400/100/54/eb/54ebcc8883ba0b6520539275698d205c/54ebcc8883ba0b6520539275698d205c.jpg'),
(9, 'CASTLEVANIA 4TH SEASON', '9animetv.to', 9, 'done', 'When his wife is burned at the stake after being falsely accused of witchcraft, the vampire Count Vlad Dracula Țepeș declares all the people of Wallachia will pay with their lives. He summons an army of demons which overruns the country, causing the people to live lives of fear and distrust. To combat this, the outcast monster hunter Trevor Belmont takes up arms against Dracula\'s forces, aided by the magician Sypha Belnades and Dracula\'s dhampir son Alucard.', 'https://9animetv.to/watch/castlevania-4th-season-17873?ep=73429', 'https://img.bunnycdnn.ru/_r/300x400/100/14/2c/142c64dbfdf537d59ee02db7b33856ef/142c64dbfdf537d59ee02db7b33856ef.jpeg'),
(10, 'One Piece ', '9animetv.to', 9, 'now', 'Filler Mina', 'https://9animetv.to/watch/one-piece-100?ep=98724', 'https://img.bunnycdnn.ru/_r/300x400/100/54/90/5490cb32786d4f7fef0f40d7266df532/5490cb32786d4f7fef0f40d7266df532.jpg'),
(12, 'BLACK LAGOON', '9animetv.to', 8, 'done', 'Within Thailand is Roanapur, a depraved, crime-ridden city where not even the authorities or churches are untouched by the claws of corruption. A haven for convicts and degenerates alike, the city is notorious for being the center of illegal activities and operations, often fueled by local crime syndicates. Enter Rokurou Okajima, an average Japanese businessman who has been living a dull and monotonous life, when he finally gets his chance for a change of pace with a delivery trip to Southeast Asia.', 'https://9animetv.to/watch/black-lagoon-456?ep=9728', 'https://img.bunnycdnn.ru/_r/300x400/100/26/15/26153ae545ca9c5820ca989a48c364c6/26153ae545ca9c5820ca989a48c364c6.jpg'),
(13, 'Chainsaw Man', '9animetv.to', 8, 'now', 'Denji is robbed of a normal teenage life, left with nothing but his deadbeat fathers overwhelming debt. His only companion is his pet, the chainsaw devil Pochita, with whom he slays devils for money that inevitably ends up in the yakuzas pockets. All Denji can do is dream of a good, simple life: one with delicious food and a beautiful girlfriend by his side.', 'https://9animetv.to/watch/chainsaw-man-17406?ep=94597', 'https://img.bunnycdnn.ru/_r/300x400/100/b3/da/b3da1326e07269ddd8d73475c5dabf2c/b3da1326e07269ddd8d73475c5dabf2c.jpg'),
(14, 'MUSHISHI ZOKU SHOU', '9animetv.to', 8, 'planned', '\"Mushi\": the most basic forms of life in the world. They exist without any goals or purposes aside from simply \"being.\" They are beyond the shackles of the words \"good\" and \"evil.\" Mushi can exist in countless forms and are capable of mimicking things from the natural world such as plants, diseases, and even phenomena like rainbows. ', 'https://9animetv.to/watch/mushi-shi-43?ep=1226', 'https://img.bunnycdnn.ru/_r/300x400/100/61/e7/61e75f58a9e14f6297ec062179b30391/61e75f58a9e14f6297ec062179b30391.jpg'),
(15, 'SHADOWS HOUSE', '9animetv.to', 5, 'planned', 'Faceless shadow nobles living in a vast mansion, attended by living dolls who spend much of their time cleaning up the soot endlessly emitted by their mysterious masters. Follow the story of Emilyko, a young and cheerful living doll, as she learns her duties serving as the attendant for Kate Shadow-sama. (Source: MU)', 'https://9animetv.to/watch/shadows-house-17254?ep=64622', 'https://img.bunnycdnn.ru/_r/300x400/100/87/68/876881fbaafdde48ea2ea9d48ee8bb7c/876881fbaafdde48ea2ea9d48ee8bb7c.jpg'),
(17, 'BLACK LAGOON: THE SECOND BARRAGE', '9animetv.to', 8, 'done', 'some deec', 'https://9animetv.to/watch/black-lagoon-the-second-barrage-302?ep=5742', 'https://img.bunnycdnn.ru/_r/300x400/100/00/8a/008a817ca0373a09b30199587a63c2e0/008a817ca0373a09b30199587a63c2e0.jpg'),
(18, 'HUNTER X HUNTER', '9animetv.to', 7, 'done', 'Hunter x Hunter is set in a world where Hunters exist to perform all manner of dangerous tasks like capturing criminals and bravely searching for lost treasures in uncharted territories. Twelve-year-old Gon Freecss is determined to become the best Hunter possible in hopes of finding his father, who was a Hunter himself and had long ago abandoned his young son.', 'https://9animetv.to/watch/hunter-x-hunter-2?ep=212', 'https://img.bunnycdnn.ru/_r/300x400/100/99/3c/993c0361975cce4c7fbb11f8558f9664/993c0361975cce4c7fbb11f8558f9664.jpg'),
(20, 'BLACK LAGOON: ROBERTA\'S BLOOD TRAIL', '9animetv.to', 8, 'done', 'Roberta, the terrorist-turned-maid that made her appearence in the first season of Black Lagoon, returns in this five-episode OVA series—and this time, all bets are off! Roberta\'s benefactor, the patriarch of the Lovelace clan, is murdered during a political rally. The assassin\'s trail soon leads back to Roanapur—so now she has returned on a mission of vengeance!', 'https://9animetv.to/watch/black-lagoon-robertas-blood-trail-457?ep=9733', 'https://img.bunnycdnn.ru/_r/300x400/100/c9/00/c9001710f3a1009f07b81d494fb90e7a/c9001710f3a1009f07b81d494fb90e7a.jpg'),
(22, 'BLACK BUTLER', '9animetv.to', 5, 'done', 'Young Ciel Phantomhive is known as \"the Queen\'s Guard Dog,\" taking care of the many unsettling events that occur in Victorian England for Her Majesty. Aided by Sebastian Michaelis, his loyal butler with seemingly inhuman abilities, Ciel uses whatever means necessary to get the job done.', 'https://9animetv.to/watch/black-butler-854?ep=14853', 'https://img.bunnycdnn.ru/_r/300x400/100/7a/df/7adfc4522e111c0b48c70eeb435c912f/7adfc4522e111c0b48c70eeb435c912f.jpg'),
(25, 'NARUTO', '9animetv.to', 8, 'done', 'Moments prior to Naruto Uzumaki\'s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi\'s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto. ', 'https://9animetv.to/watch/naruto-677?ep=12571', 'https://img.bunnycdnn.ru/_r/300x400/100/5d/b4/5db400c33f7494bc8ae96f9e634958d0/5db400c33f7494bc8ae96f9e634958d0.jpg'),
(29, 'NARUTO: SHIPPUDEN', '9animetv.to', 8, 'done', 'It has been two and a half years since Naruto Uzumaki left Konohagakure, the Hidden Leaf Village, for intense training following events which fueled his desire to be stronger. Now Akatsuki, the mysterious organization of elite rogue ninja, is closing in on their grand plan which may threaten the safety of the entire shinobi world. Although Naruto is older and sinister events loom on the horizon, he has changed little in personality—still rambunctious and childish—though he is now far more confident and possesses an even greater determination to protect his friends and home. Come whatever may, Naruto will carry on with the fight for what is important to him, even at the expense of his own body, in the continuation of the saga about the boy who wishes to become Hokage. [Written by MAL Rewrite]', 'https://9animetv.to/watch/naruto-shippuden-355?ep=8381', 'https://img.bunnycdnn.ru/_r/300x400/100/9c/bc/9cbcf87f54194742e7686119089478f8/9cbcf87f54194742e7686119089478f8.jpg'),
(30, 'DRIFTERS', '9animetv.to', 9, 'done', 'At the Battle of Sekigahara in 1600, Toyohisa Shimazu is the rearguard for his retreating troops, and is critically wounded when he suddenly finds himself in a modern, gleaming white hallway. Faced with only a stoic man named Murasaki and hundreds of doors on both sides, Toyohisa is pulled into the nearest door and into a world completely unlike his own. The strange land is populated by all manner of fantastical creatures, as well as warriors from different eras of Toyohisa\'s world who were thought to be dead. ', 'https://9animetv.to/watch/drifters-590?ep=11490', 'https://img.bunnycdnn.ru/_r/300x400/100/46/86/468639f57a4c221f6ed135cef78b926b/468639f57a4c221f6ed135cef78b926b.jpg'),
(32, 'My Hero Academia', '9animetv.to', 9, 'now', 'Bruh', 'https://9animetv.to/watch/my-hero-academia-season-6-18154?ep=99516', 'https://img.bunnycdnn.ru/_r/300x400/100/20/b7/20b7580c1abdf45a6eaf4826fc9fdf33/20b7580c1abdf45a6eaf4826fc9fdf33.jpg'),
(33, 'CODE GEASS: LELOUCH OF THE REBELLION R2', '9animetv.to', 6, 'planned', 'One year has passed since the Black Rebellion, a failed uprising against the Holy Britannian Empire led by the masked vigilante Zero, who is now missing. At a loss without their revolutionary leader, Area 11\'s resistance group—the Black Knights—find themselves too powerless to combat the brutality inflicted upon the Elevens by Britannia, which has increased significantly in order to crush any hope of a future revolt. Lelouch Lamperouge, having lost all memory of his double life, is living peacefully alongside his friends as a high school student at Ashford Academy.', 'https://9animetv.to/watch/code-geass-lelouch-of-the-rebellion-r2-17?ep=738', 'https://img.bunnycdnn.ru/_r/300x400/100/39/82/3982e0e11afc5261c6c0daf71c408342/3982e0e11afc5261c6c0daf71c408342.jpg'),
(34, 'BLOOD: THE LAST VAMPIRE', '9animetv.to', 10, 'planned', 'Teropterids are evil beasts which pose as humans and live only to drink human blood. Fortunately for the human world there are groups dedicated to destroying them. A brooding and mysterious girl named Saya is the best teropterid slayer there is, and now, in 1960s Japan, she is sent to a U. S. army base which may be infested...', 'https://9animetv.to/watch/blood-the-last-vampire-3956?ep=89537', 'https://img.bunnycdnn.ru/_r/300x400/100/4a/7b/4a7b3852b03afd3b43850ba098b4c531/4a7b3852b03afd3b43850ba098b4c531.jpg'),
(35, 'CODE:BREAKER', '9animetv.to', 6, 'planned', 'Teropterids are evil beasts which pose as humans and live only to drink human blood. Fortunately for the human world there are groups dedicated to destroying them. A brooding and mysterious girl named Saya is the best teropterid slayer there is, and now, in 1960s Japan, she is sent to a U. S. army base which may be infested...', 'https://9animetv.to/watch/codebreaker-4277?ep=37352', 'https://img.bunnycdnn.ru/_r/300x400/100/c5/e8/c5e84568ad62124dc6f06c193b9fbe27/c5e84568ad62124dc6f06c193b9fbe27.jpg'),
(36, 'Black Clover', '9animetv.to', 5, 'now', 'Asta and Yuno were abandoned at the same church on the same day. Raised together as children, they came to know of the \"Wizard King\"—a title given to the strongest mage in the kingdom—and promised that they would compete against each other for the position of the next Wizard King.', 'https://9animetv.to/watch/black-clover-2404?ep=27377', 'https://img.bunnycdnn.ru/_r/300x400/100/f5/8b/f58b0204c20ae3310f65ae7b8cb9987e/f58b0204c20ae3310f65ae7b8cb9987e.jpg'),
(37, 'ONE PUNCH MAN', '9animetv.to', 5, 'done', 'The seemingly ordinary and unimpressive Saitama has a rather unique hobby: being a hero. In order to pursue his childhood dream, he trained relentlessly for three years—and lost all of his hair in the process. Now, Saitama is incredibly powerful, so much so that no enemy is able to defeat him in battle. In fact, all it takes to defeat evildoers with just one punch has led to an unexpected problem—he is no longer able to enjoy the thrill of battling and has become quite bored. ', 'https://9animetv.to/watch/one-punch-man-63?ep=1512', 'https://img.bunnycdnn.ru/_r/300x400/100/f5/d1/f5d173f8317f592c6c70d594829b89e4/f5d173f8317f592c6c70d594829b89e4.jpg'),
(38, 'ONE PUNCH MAN 2ND SEASON', '9animetv.to', 5, 'planned', 'Short anime specials included in the One Punch Man 2nd Season BD & DVD.', 'https://9animetv.to/watch/one-punch-man-2nd-season-specials-2430?ep=27600', 'https://img.bunnycdnn.ru/_r/300x400/100/a7/a3/a7a33a567ef4d244b12b6050fa7865ff/a7a33a567ef4d244b12b6050fa7865ff.jpg'),
(39, 'Arcane', 'wco.tv', 8, 'done', 'Set in utopian Piltover and the oppressed underground of Zaun, the story follows the origins of two iconic League champions-and the power that will tear them apart.', 'https://www.wco.tv/arcane-episode-9-the-monster-you-created', 'https://cdn.animationexplore.com/catimg/915456.jpg'),
(40, 'Dota: Dragon\'s Blood', 'wco.tv', 9, 'planned', 'A conflicted yet courageous Dragon Knight must use the power of the dragon within to stop a deadly demon in this epic fantasy', 'https://www.wco.tv/anime/dota-dragon-s-blood', 'https://cdn.animationexplore.com/catimg/883749.jpg'),
(41, 'CODE GEASS: LELOUCH OF THE REBELLION', '9animetv.to', 5, 'done', 'In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt to regain independence. Lelouch Lamperouge, a Britannian student, unfortunately finds himself caught in a crossfire between the Britannian and the Area 11 rebel armed forces. He is able to escape, however, thanks to the timely appearance of a mysterious girl named C.C., who bestows upon him Geass, the \"Power of Kings.\" Realizing the vast potential of his newfound \"power of absolute obedience,\" Lelouch embarks upon a perilous journey as the masked vigilante known as Zero, leading a merciless onslaught against Britannia in order to get revenge once and for all. [Written by MAL Rewrite]', 'https://9animetv.to/watch/code-geass-lelouch-of-the-rebellion-41?ep=1182', 'https://img.bunnycdnn.ru/_r/300x400/100/b7/b1/b7b180ff8404f0475e60a4f3a0f5bd20/b7b180ff8404f0475e60a4f3a0f5bd20.jpg'),
(42, 'MOB PSYCHO 100 III', '9animetv.to', 6, 'done', 'After foiling a world-threatening plot, Shigeo \"Mob\" Kageyama returns to tackle the more exhausting aspects of his mundane life—starting with filling out his school\'s nerve-racking career form. Meanwhile, he continues to assist his mentor Arataka Reigen and the office\'s new recruit, Katsuya Serizawa, in solving paranormal cases of their clients.', 'https://9animetv.to/watch/mob-psycho-100-iii-18153?ep=96779', 'https://img.bunnycdnn.ru/_r/300x400/100/e3/d2/e3d22899f42d913cf47a96b7b575aab3/e3d22899f42d913cf47a96b7b575aab3.png'),
(43, 'DORORO', '9animetv.to', 9, 'done', 'The greedy samurai lord Daigo Kagemitsu\'s land is dying, and he would do anything for power, even renounce Buddha and make a pact with demons. His prayers are answered by 12 demons who grant him the power he desires by aiding his prefecture\'s growth, but at a price. ', 'https://9animetv.to/watch/dororo-324?ep=7229', 'https://img.bunnycdnn.ru/_r/300x400/100/09/e1/09e13f545f690e4278625b68aea755aa/09e13f545f690e4278625b68aea755aa.jpg'),
(44, 'Ajin: Demi-Human', 'wco.tv', 7, 'done', 'Where there is life, there is death… or is there? What would you do if you could never die? The possibilities are endless. Seventeen years ago, the existence of a special species called Ajin was discovered in Africa. They are said to be immortal beings, with several supernatural abilities, that look just like any other human being. Are these Ajin just random phenomena of nature or were they purposely sent to Earth to destroy it? ', 'https://www.wco.tv/anime/ajin-demi-human', 'https://cdn.animationexplore.com/catimg/274083.jpg'),
(45, 'STEINS;GATE 0', '9animetv.to', 6, 'planned', 'The eccentric, self-proclaimed mad scientist Rintarou Okabe has become a shell of his former self. Depressed and traumatized after failing to rescue his friend Makise Kurisu, he has decided to forsake his mad scientist alter ego and live as an ordinary college student. Surrounded by friends who know little of his time travel experiences, ', 'https://9animetv.to/watch/steinsgate-0-92?ep=2051', 'https://img.bunnycdnn.ru/_r/300x400/100/72/32/72322970318a3c89f4b7d2193c279c6f/72322970318a3c89f4b7d2193c279c6f.jpg'),
(46, 'STEINS;GATE', '9animetv.to', 6, 'planned', 'The self-proclaimed mad scientist Rintarou Okabe rents out a room in a rickety old building in Akihabara, where he indulges himself in his hobby of inventing prospective \"future gadgets\" with fellow lab members: Mayuri Shiina, his air-headed childhood friend, and Hashida Itaru, a perverted hacker nicknamed \"Daru.\"', 'https://9animetv.to/watch/steinsgate-3?ep=213', 'https://img.bunnycdnn.ru/_r/300x400/100/68/35/6835ff30fa46da5612e3adc81f51724e/6835ff30fa46da5612e3adc81f51724e.jpg'),
(47, 'Monster', 'wcoanimedub.tv', 9, 'done', 'Plot Summary: Kenzou Tenma, a Japanese brain surgeon in Germany, had it all: incredible skill at his work, a rich and beautiful fiancee, and a promising career at his hospital. However, after becoming disenchanted by hospital politics, he chose to save the life of a young boy who got shot in the head over the life of the mayor. ', 'https://www.wcoanimedub.tv/anime/monster', 'https://cdn.animationexplore.com/catimg/24830.jpg'),
(48, 'SLAM DUNK', '9animetv.to', 9, 'done', 'Hanamichi Sakuragi, infamous for his temper, massive height, and fire-red hair, enrolls in Shohoku High, hoping to finally get a girlfriend and break his record of being rejected 50 consecutive times in middle school. ', 'https://9animetv.to/watch/slam-dunk-86?ep=1888', 'https://img.bunnycdnn.ru/_r/300x400/100/47/f3/47f3c67f8527cd2c57d3c495186a8a3f/47f3c67f8527cd2c57d3c495186a8a3f.jpg'),
(49, 'Fighting Spirit, Hajime no Ippo', '9animetv.to', 5, 'planned', 'Makunouchi Ippo has been bullied his entire life. Constantly running errands and being beaten up by his classmates, Ippo has always dreamed of changing himself, but never has the passion to act upon it. ', 'https://9animetv.to/watch/fighting-spirit-34?ep=971', 'https://img.bunnycdnn.ru/_r/300x400/100/26/6f/266f26305336e98b875ff53a302e9f8e/266f26305336e98b875ff53a302e9f8e.jpg'),
(50, 'THE JOURNEY', '9animetv.to', 10, 'planned', 'The Journey is a Japanese–Saudi Arabian animated film co-produced by Toei Animation and Manga Productions directed by Shizuno Koubun. The film revolves around a potter named Aws who joins a battle to defend his home city. (Source: Wikipedia)', 'https://9animetv.to/watch/the-journey-17743?ep=85145', 'https://img.bunnycdnn.ru/_r/300x400/100/f3/e5/f3e5b0c7b67345d3154fee6fe9cea8ea/f3e5b0c7b67345d3154fee6fe9cea8ea.jpg'),
(51, 'TRIGUN', '9animetv.to', 1, 'planned', 'Vash the Stampede is the man with a $$60,000,000,000 bounty on his head. The reason: he\'s a merciless villain who lays waste to all those that oppose him and flattens entire cities for fun, garnering him the title \"The Humanoid Typhoon.\" ', 'https://9animetv.to/watch/trigun-266?ep=5370', 'https://img.bunnycdnn.ru/_r/300x400/100/e0/3b/e03bf5773842843f07d5f5b6b222d19f/e03bf5773842843f07d5f5b6b222d19f.jpg');

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
-- Table structure for table `ContentSeason`
--

CREATE TABLE `ContentSeason` (
  `id` int(11) NOT NULL,
  `contentId` int(11) NOT NULL,
  `season` int(3) NOT NULL,
  `episode` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ContentSeason`
--

INSERT INTO `ContentSeason` (`id`, `contentId`, `season`, `episode`) VALUES
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`seasonId` int(11)
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`seasonId` int(11)
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`seasonId` int(11)
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
,`rank` int(11)
,`status` varchar(11)
,`description` text
,`contentLink` text
,`imgSrc` text
,`genra` mediumtext
,`seasonId` int(11)
,`season` int(3)
,`episode` int(4)
);

-- --------------------------------------------------------

--
-- Structure for view `viewcontentall`
--
DROP TABLE IF EXISTS `viewcontentall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthisstag`.`viewcontentall`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`rank` AS `rank`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`id` AS `seasonId`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthisstag`.`content` `C` join `iwatchthisstag`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthisstag`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) GROUP BY `C`.`id` ORDER BY `C`.`rank` DESC;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentdone`
--
DROP TABLE IF EXISTS `viewcontentdone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthisstag`.`viewcontentdone`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`rank` AS `rank`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`id` AS `seasonId`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthisstag`.`content` `C` join `iwatchthisstag`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthisstag`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) WHERE `C`.`status` = 'done' GROUP BY `C`.`id` ORDER BY `C`.`rank` DESC;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentnow`
--
DROP TABLE IF EXISTS `viewcontentnow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthisstag`.`viewcontentnow`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`rank` AS `rank`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`id` AS `seasonId`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthisstag`.`content` `C` join `iwatchthisstag`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthisstag`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) WHERE `C`.`status` = 'now' GROUP BY `C`.`id` ORDER BY `C`.`rank` DESC;

-- --------------------------------------------------------

--
-- Structure for view `viewcontentplanned`
--
DROP TABLE IF EXISTS `viewcontentplanned`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `iwatchthisstag`.`viewcontentplanned`  AS SELECT `C`.`id` AS `id`, `C`.`title` AS `title`, `C`.`websiteName` AS `websiteName`, `C`.`rank` AS `rank`, `C`.`status` AS `status`, `C`.`description` AS `description`, `C`.`contentLink` AS `contentLink`, `C`.`imgSrc` AS `imgSrc`, group_concat(distinct `CGM`.`genra` separator ', ') AS `genra`, `CS`.`id` AS `seasonId`, `CS`.`season` AS `season`, `CS`.`episode` AS `episode` FROM ((`iwatchthisstag`.`content` `C` join `iwatchthisstag`.`contentgenramap` `CGM` on(`CGM`.`contentId` = `C`.`id`)) join `iwatchthisstag`.`contentseason` `CS` on(`C`.`id` = `CS`.`contentId`)) WHERE `C`.`status` = 'planned' GROUP BY `C`.`id` ORDER BY `C`.`rank` DESC;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ContentGenraMap`
--
ALTER TABLE `ContentGenraMap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `ContentSeason`
--
ALTER TABLE `ContentSeason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  ADD CONSTRAINT `cn_cgm_cid` FOREIGN KEY (`contentId`) REFERENCES `Content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cn_cgm_g` FOREIGN KEY (`genra`) REFERENCES `ContentGenra` (`genra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ContentSeason`
--
ALTER TABLE `ContentSeason`
  ADD CONSTRAINT `contentseason_ibfk_1` FOREIGN KEY (`contentId`) REFERENCES `Content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
