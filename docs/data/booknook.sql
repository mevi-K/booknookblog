-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2024 at 12:52 PM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booknook`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `Id_Author` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Author`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Id_Author`, `name`) VALUES
(1, 'Petrulis'),
(2, 'Kestle'),
(3, 'Dodamead'),
(4, 'Gatteridge'),
(5, 'Jedrzejczyk'),
(6, 'Keary'),
(7, 'Phin'),
(8, 'Shanks'),
(9, 'Kennler'),
(10, 'Tonsley'),
(11, 'Smitherham'),
(12, 'McKew'),
(13, 'Ismay'),
(14, 'Rosie'),
(15, 'Paylor'),
(16, 'Simionato'),
(17, 'Jeffries'),
(18, 'Llorens'),
(19, 'Darlaston'),
(20, 'Dawks'),
(21, 'Baldini'),
(22, 'Cartmail'),
(23, 'Genike'),
(24, 'Rootham'),
(25, 'Cazereau'),
(26, 'Bence'),
(27, 'Keller'),
(28, 'Tomney'),
(29, 'Mallall'),
(30, 'Orris'),
(31, 'Orvis'),
(32, 'Watterson'),
(33, 'Malamore'),
(34, 'Grinyer'),
(35, 'McGeorge'),
(36, 'Rake'),
(37, 'Caldaro'),
(38, 'Normand'),
(39, 'Banishevitz'),
(40, 'Dowe'),
(41, 'Veronique'),
(42, 'Melloy'),
(43, 'Eustes'),
(44, 'Leishman'),
(45, 'Aysh'),
(46, 'Le Brom'),
(47, 'Martschik'),
(48, 'Davitt'),
(49, 'Lawrinson'),
(50, 'Trapp'),
(51, 'Copland'),
(52, 'Hammond'),
(53, 'Musgrave'),
(54, 'Crichmer'),
(55, 'O\'Doohaine'),
(56, 'Valentinetti'),
(57, 'Tolson'),
(58, 'Jurries'),
(59, 'Lackey'),
(60, 'Longhirst'),
(61, 'Jandel'),
(62, 'Amiable'),
(63, 'Garratt'),
(64, 'Dugall'),
(65, 'Hobben'),
(66, 'Aery'),
(67, 'Ashingden'),
(68, 'McKeurton'),
(69, 'Ticic'),
(70, 'Whorton'),
(71, 'Gaudin'),
(72, 'Tomkowicz'),
(73, 'Chastang'),
(74, 'Elcoux'),
(75, 'Blabber'),
(76, 'Mullally'),
(77, 'Huskinson'),
(78, 'Petters'),
(79, 'Krugmann'),
(80, 'Kegley'),
(81, 'Loan'),
(82, 'Buxy'),
(83, 'Jansky'),
(84, 'Jarnell'),
(85, 'Fallis'),
(86, 'Eckly'),
(87, 'St. Leger'),
(88, 'Currao'),
(89, 'Fitt'),
(90, 'Darwent'),
(91, 'Alelsandrowicz'),
(92, 'Thompsett'),
(93, 'Poker'),
(94, 'Stobart'),
(95, 'Timblett'),
(96, 'Tilio'),
(97, 'McLeoid'),
(98, 'Swapp'),
(99, 'Dinis'),
(100, 'Lilley');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `Id_Book` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `books_sold` int DEFAULT NULL,
  `date_pub` date DEFAULT NULL,
  `Id_Genre` int NOT NULL,
  PRIMARY KEY (`Id_Book`),
  KEY `Id_Genre` (`Id_Genre`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Id_Book`, `Title`, `Description`, `books_sold`, `date_pub`, `Id_Genre`) VALUES
(1, 'Novo', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. ', 1, '0000-00-00', 1),
(2, 'Mike Tyson:  Undisputed Truth', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 2, '0000-00-00', 2),
(3, 'Little Fockers', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In', 3, '0000-00-00', 3),
(4, 'Heaven\'s Prisoners', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante', 4, '0000-00-00', 4),
(5, 'What Have I Done to Deserve This? (¿Qué he hecho y', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at,', 5, '0000-00-00', 5),
(6, 'Isle, The (Seom)', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehic', 6, '0000-00-00', 6),
(7, 'Village People', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at', 7, '0000-00-00', 7),
(8, 'Honor Among Lovers', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 8, '0000-00-00', 8),
(9, 'Hara-Kiri: Death of a Samurai', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Ali', 9, '0000-00-00', 1),
(10, 'X-Men', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue', 10, '0000-00-00', 2),
(11, 'Adventures of Don Juan', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliq', 11, '0000-00-00', 3),
(12, 'Lovers of the Arctic Circle, The (Los Amantes del ', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea ', 12, '0000-00-00', 4),
(13, 'Rouva presidentti', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam', 13, '0000-00-00', 5),
(14, 'Agenda: Grinding America Down', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 14, '0000-00-00', 6),
(15, 'Caddy, The', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien curs', 15, '0000-00-00', 7),
(16, 'Jesse Stone: Night Passage', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 16, '0000-00-00', 8),
(17, 'Super Capers', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Mo', 17, '0000-00-00', 1),
(18, 'Rushmore', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac ', 18, '0000-00-00', 2),
(19, 'Kids Are All Right, The', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed a', 19, '0000-00-00', 3),
(20, 'Passion of Darkly Noon, The', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehic', 20, '0000-00-00', 4),
(21, 'Fiendish Plot of Dr. Fu Manchu, The', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue e', 21, '0000-00-00', 5),
(22, 'Stone Angel, The', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 22, '0000-00-00', 6),
(23, 'Hi, Mom!', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue', 23, '0000-00-00', 7),
(24, 'Bachelor Party, The', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at,', 24, '0000-00-00', 8),
(25, 'Where the Trail Ends', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante', 25, '0000-00-00', 1),
(26, 'Six of a Kind', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus', 26, '0000-00-00', 2),
(27, 'Portrait in Black', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac ', 27, '0000-00-00', 3),
(28, 'Until Death', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue e', 28, '0000-00-00', 4),
(29, 'Woman of Affairs, A', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Ali', 29, '0000-00-00', 5),
(30, '4th Floor, The', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elem', 30, '0000-00-00', 6),
(31, 'Asylum', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. N', 31, '0000-00-00', 7),
(32, 'Toy, The', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla faci', 32, '0000-00-00', 8),
(33, '10.5', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at', 33, '0000-00-00', 1),
(34, 'Witch Hunt', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. N', 34, '0000-00-00', 2),
(35, 'Cold Light of Day, The', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Mo', 35, '0000-00-00', 3),
(36, 'Kafka', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehic', 36, '0000-00-00', 4),
(37, 'Alaska: Spirit of the Wild', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehic', 37, '0000-00-00', 5),
(38, 'Cowboys, The', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vesti', 38, '0000-00-00', 6),
(39, 'Babysitting', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam', 39, '0000-00-00', 7),
(40, 'O-Bi, O-Ba - The End of Civilization (O-bi, O-ba -', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Ves', 40, '0000-00-00', 8),
(41, 'Cake Eaters, The', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobor', 41, '0000-00-00', 1),
(42, 'Low Down Dirty Shame, A', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea ', 42, '0000-00-00', 2),
(43, 'Bedlam', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac ', 43, '0000-00-00', 3),
(44, 'Penda\'s Fen', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida', 44, '0000-00-00', 4),
(45, 'First Men in the Moon', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 45, '0000-00-00', 5),
(46, 'Lion King, The', 'Fusce consequat. Nulla nisl. Nunc nisl.', 46, '0000-00-00', 6),
(47, 'Small Town, The (a.k.a. The Town) (Kasaba)', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie l', 47, '0000-00-00', 7),
(48, 'Trespass', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vesti', 48, '0000-00-00', 8),
(49, 'Mr. Smith Goes to Washington', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 49, '0000-00-00', 1),
(50, 'Guilty by Suspicion', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla faci', 50, '0000-00-00', 2),
(51, 'Salon Kitty', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ip', 51, '0000-00-00', 3),
(52, 'Love in the Time of Cholera', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. I', 52, '0000-00-00', 4),
(53, 'Hellraiser: Revelations', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida', 53, '0000-00-00', 5),
(54, 'More the Merrier, The', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam', 54, '0000-00-00', 6),
(55, 'Class of 92, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vul', 55, '0000-00-00', 7),
(56, 'Airport 1975', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 56, '0000-00-00', 8),
(57, 'Butterfly Girl', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidu', 57, '0000-00-00', 1),
(58, 'You\'re Missing the Point', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vesti', 58, '0000-00-00', 2),
(59, 'Cinderella Story, A', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, i', 59, '0000-00-00', 3),
(60, 'Flaw, The', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id s', 60, '0000-00-00', 4),
(61, 'Megan Is Missing', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 61, '0000-00-00', 5),
(62, 'Man Between, The', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 62, '0000-00-00', 6),
(63, 'Classmates', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium i', 63, '0000-00-00', 7),
(64, 'Love Story 2050', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at,', 64, '0000-00-00', 8),
(65, 'Barkleys of Broadway, The', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque,', 65, '0000-00-00', 1),
(66, 'Genesis', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Ves', 66, '0000-00-00', 2),
(67, 'Tyler Perry\'s Why Did I Get Married Too?', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elem', 67, '0000-00-00', 3),
(68, 'King Lear (Korol Lir)', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. ', 68, '0000-00-00', 4),
(69, 'Real Fiction (Shilje sanghwang)', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed a', 69, '0000-00-00', 5),
(70, 'Spy Game', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium i', 70, '0000-00-00', 6),
(71, 'Cobra', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea ', 71, '0000-00-00', 7),
(72, 'Caesar Must Die (Cesare deve morire)', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 72, '0000-00-00', 8),
(73, 'Paris Is Burning', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 73, '0000-00-00', 1),
(74, 'Here and There (Tamo i ovde)', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. ', 74, '0000-00-00', 2),
(75, 'Princess for Christmas, A', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ip', 75, '0000-00-00', 3),
(76, 'Wicked Lady, The', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vesti', 76, '0000-00-00', 4),
(77, 'As Far As My Feet Will Carry Me (So weit die Füße ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 77, '0000-00-00', 5),
(78, 'Hard to Hold', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue e', 78, '0000-00-00', 6),
(79, 'Léon Morin, Priest (Léon Morin, prêtre)', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. ', 79, '0000-00-00', 7),
(80, 'Snow on the Pines, The', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 80, '0000-00-00', 8),
(81, 'Baby On Board', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. I', 81, '0000-00-00', 1),
(82, 'Up the Sandbox', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 82, '0000-00-00', 2),
(83, 'Wedding March, The', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie l', 83, '0000-00-00', 3),
(84, 'Play Dirty', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie l', 84, '0000-00-00', 4),
(85, 'Girl on a Bicycle', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 85, '0000-00-00', 5),
(86, 'Happening, The', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vesti', 86, '0000-00-00', 6),
(87, 'Bride & Prejudice', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 87, '0000-00-00', 7),
(88, 'Actress, the Dollars and the Transylvanians, The (', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien curs', 88, '0000-00-00', 8),
(89, 'No Man of Her Own', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque,', 89, '0000-00-00', 1),
(90, 'Blood and Sand (Sangre y Arena)', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea ', 90, '0000-00-00', 2),
(91, 'Noah', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla faci', 91, '0000-00-00', 3),
(92, 'Pope of Greenwich Village, The', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 92, '0000-00-00', 4),
(93, 'Spiral Staircase, The', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque,', 93, '0000-00-00', 5),
(94, 'Country Strong', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. ', 94, '0000-00-00', 6),
(95, 'Hangin\' with the Homeboys', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nu', 95, '0000-00-00', 7),
(96, 'Tales of Hoffmann, The', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. ', 96, '0000-00-00', 8),
(97, 'Some Kind of Hero', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 97, '0000-00-00', 1),
(98, 'Super', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 98, '0000-00-00', 2),
(99, 'Until Death', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 99, '0000-00-00', 3),
(100, 'Brazil: In the Shadow of the Stadiums', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Ali', 100, '0000-00-00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
CREATE TABLE IF NOT EXISTS `book_author` (
  `Id_Book` int NOT NULL,
  `Id_Author` int NOT NULL,
  PRIMARY KEY (`Id_Book`,`Id_Author`),
  KEY `Id_Author` (`Id_Author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`Id_Book`, `Id_Author`) VALUES
(43, 2),
(61, 2),
(45, 3),
(94, 3),
(52, 5),
(16, 8),
(73, 8),
(83, 9),
(32, 10),
(37, 10),
(33, 11),
(17, 14),
(66, 14),
(49, 15),
(70, 15),
(8, 16),
(40, 16),
(29, 17),
(49, 17),
(88, 17),
(95, 17),
(10, 18),
(64, 18),
(50, 19),
(20, 20),
(18, 21),
(35, 23),
(13, 24),
(44, 24),
(74, 25),
(86, 25),
(91, 25),
(53, 26),
(93, 28),
(97, 32),
(13, 33),
(36, 33),
(80, 33),
(10, 34),
(28, 34),
(12, 35),
(77, 35),
(51, 36),
(69, 37),
(22, 38),
(24, 38),
(15, 39),
(58, 39),
(9, 40),
(55, 40),
(6, 42),
(29, 42),
(88, 42),
(94, 42),
(32, 43),
(16, 46),
(30, 47),
(54, 48),
(1, 52),
(85, 57),
(8, 59),
(19, 59),
(42, 60),
(56, 60),
(26, 62),
(73, 62),
(82, 62),
(34, 65),
(77, 65),
(42, 66),
(58, 67),
(64, 68),
(96, 68),
(36, 69),
(49, 69),
(75, 70),
(68, 72),
(26, 74),
(95, 74),
(36, 76),
(77, 76),
(32, 77),
(96, 77),
(63, 81),
(84, 81),
(45, 83),
(85, 83),
(96, 83),
(43, 84),
(10, 85),
(24, 85),
(30, 86),
(71, 87),
(4, 88),
(40, 89),
(19, 90),
(74, 91),
(16, 95),
(96, 97),
(49, 98);

-- --------------------------------------------------------

--
-- Table structure for table `book_utilisateur`
--

DROP TABLE IF EXISTS `book_utilisateur`;
CREATE TABLE IF NOT EXISTS `book_utilisateur` (
  `Id_Book` int NOT NULL,
  `Id_User` int NOT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Book`,`Id_User`),
  KEY `Id_User` (`Id_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `book_utilisateur`
--

INSERT INTO `book_utilisateur` (`Id_Book`, `Id_User`, `note`) VALUES
(1, 1, '4'),
(2, 2, '2'),
(3, 3, '4'),
(4, 4, '4'),
(5, 5, '1'),
(6, 6, '5'),
(7, 7, '1'),
(8, 8, '1'),
(9, 9, '4');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `Id_Genre` int NOT NULL AUTO_INCREMENT,
  `nom_genre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Genre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Id_Genre`, `nom_genre`) VALUES
(1, 'comedy'),
(2, 'thriller'),
(3, 'romance'),
(4, 'fiction'),
(5, 'suspense'),
(6, 'horror'),
(7, 'history'),
(8, 'young adult');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `Id_Review` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(50) DEFAULT NULL,
  `Id_User` int DEFAULT NULL,
  `Id_User_1` int NOT NULL,
  `Id_Book` int NOT NULL,
  PRIMARY KEY (`Id_Review`),
  KEY `Id_User` (`Id_User`),
  KEY `Id_User_1` (`Id_User_1`),
  KEY `Id_Book` (`Id_Book`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Id_Review`, `comment`, `Id_User`, `Id_User_1`, `Id_Book`) VALUES
(1, 'Aliquam quis turpis eget elit sodales scelerisque.', 9, 4, 55),
(2, 'Phasellus sit amet erat. Nulla tempus. Vivamus in ', 3, 3, 95),
(3, 'Nulla ut erat id mauris vulputate elementum. Nulla', 1, 8, 38),
(4, 'Nullam sit amet turpis elementum ligula vehicula c', 7, 5, 35),
(5, 'Vestibulum quam sapien, varius ut, blandit non, in', 9, 7, 25),
(6, 'Quisque id justo sit amet sapien dignissim vestibu', 3, 1, 12),
(7, 'Cras non velit nec nisi vulputate nonummy. Maecena', 1, 1, 49),
(8, 'Sed ante. Vivamus tortor. Duis mattis egestas metu', 1, 6, 46),
(9, 'Phasellus sit amet erat. Nulla tempus. Vivamus in ', 7, 4, 70),
(10, 'Maecenas tristique, est et tempus semper, est quam', 2, 1, 17),
(11, 'Curabitur gravida nisi at nibh. In hac habitasse p', 1, 4, 75),
(12, 'Duis bibendum. Morbi non quam nec dui luctus rutru', 7, 4, 13),
(13, 'Vestibulum ac est lacinia nisi venenatis tristique', 3, 8, 9),
(14, 'Pellentesque at nulla. Suspendisse potenti. Cras i', 8, 3, 53),
(15, 'Duis aliquam convallis nunc. Proin at turpis a ped', 5, 9, 23),
(16, 'Praesent id massa id nisl venenatis lacinia. Aenea', 6, 9, 28),
(17, 'Nullam porttitor lacus at turpis. Donec posuere me', 1, 7, 79),
(18, 'In congue. Etiam justo. Etiam pretium iaculis just', 5, 5, 81),
(19, 'Nullam porttitor lacus at turpis. Donec posuere me', 4, 4, 73),
(20, 'Integer ac leo. Pellentesque ultrices mattis odio.', 5, 8, 10),
(21, 'Nulla ut erat id mauris vulputate elementum. Nulla', 5, 5, 57),
(22, 'Curabitur at ipsum ac tellus semper interdum. Maur', 3, 3, 20),
(23, 'Vestibulum ac est lacinia nisi venenatis tristique', 8, 7, 21),
(24, 'Nulla ut erat id mauris vulputate elementum. Nulla', 9, 2, 8),
(25, 'Vestibulum quam sapien, varius ut, blandit non, in', 3, 2, 43),
(26, 'In hac habitasse platea dictumst. Morbi vestibulum', 5, 6, 59),
(27, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec ', 4, 3, 66),
(28, 'Maecenas tristique, est et tempus semper, est quam', 8, 7, 18),
(29, 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 8, 8, 81),
(30, 'Phasellus in felis. Donec semper sapien a libero. ', 3, 8, 7),
(31, 'Maecenas ut massa quis augue luctus tincidunt. Nul', 8, 6, 58),
(32, 'Nullam sit amet turpis elementum ligula vehicula c', 6, 5, 38),
(33, 'Nulla ut erat id mauris vulputate elementum. Nulla', 4, 5, 80),
(34, 'Nullam sit amet turpis elementum ligula vehicula c', 1, 3, 85),
(35, 'Duis bibendum, felis sed interdum venenatis, turpi', 5, 9, 58),
(36, 'Quisque porta volutpat erat. Quisque erat eros, vi', 9, 1, 18),
(37, 'In hac habitasse platea dictumst. Etiam faucibus c', 9, 9, 42),
(38, 'Duis consequat dui nec nisi volutpat eleifend. Don', 3, 6, 76),
(39, 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 2, 3, 97),
(40, 'Aenean lectus. Pellentesque eget nunc. Donec quis ', 1, 2, 46),
(41, 'Phasellus sit amet erat. Nulla tempus. Vivamus in ', 4, 4, 8),
(42, 'Nulla ut erat id mauris vulputate elementum. Nulla', 9, 8, 99),
(43, 'In quis justo. Maecenas rhoncus aliquam lacus. Mor', 1, 8, 20),
(44, 'Praesent id massa id nisl venenatis lacinia. Aenea', 3, 9, 28),
(45, 'Quisque porta volutpat erat. Quisque erat eros, vi', 5, 5, 19),
(46, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacu', 6, 3, 87),
(47, 'Sed sagittis. Nam congue, risus semper porta volut', 3, 4, 30),
(48, 'Maecenas tristique, est et tempus semper, est quam', 3, 6, 55),
(49, 'Etiam vel augue. Vestibulum rutrum rutrum neque. A', 3, 9, 1),
(50, 'Fusce posuere felis sed lacus. Morbi sem mauris, l', 9, 9, 50),
(51, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec ', 7, 1, 11),
(52, 'Pellentesque at nulla. Suspendisse potenti. Cras i', 5, 9, 86),
(53, 'In quis justo. Maecenas rhoncus aliquam lacus. Mor', 2, 8, 89),
(54, 'In hac habitasse platea dictumst. Morbi vestibulum', 7, 1, 79),
(55, 'Proin leo odio, porttitor id, consequat in, conseq', 3, 8, 50),
(56, 'Quisque id justo sit amet sapien dignissim vestibu', 7, 4, 9),
(57, 'Duis consequat dui nec nisi volutpat eleifend. Don', 9, 8, 55),
(58, 'Suspendisse potenti. In eleifend quam a odio. In h', 7, 4, 22),
(59, 'Quisque id justo sit amet sapien dignissim vestibu', 9, 4, 20),
(60, 'Cum sociis natoque penatibus et magnis dis parturi', 9, 9, 48),
(61, 'In quis justo. Maecenas rhoncus aliquam lacus. Mor', 6, 7, 100),
(62, 'Proin interdum mauris non ligula pellentesque ultr', 8, 6, 18),
(63, 'Integer ac leo. Pellentesque ultrices mattis odio.', 5, 4, 66),
(64, 'Integer ac leo. Pellentesque ultrices mattis odio.', 9, 6, 83),
(65, 'Suspendisse potenti. In eleifend quam a odio. In h', 3, 3, 78),
(66, 'Pellentesque at nulla. Suspendisse potenti. Cras i', 5, 8, 41),
(67, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacu', 6, 6, 6),
(68, 'Maecenas leo odio, condimentum id, luctus nec, mol', 9, 9, 25),
(69, 'Sed ante. Vivamus tortor. Duis mattis egestas metu', 5, 6, 43),
(70, 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 6, 7, 20),
(71, 'Vestibulum ac est lacinia nisi venenatis tristique', 4, 3, 72),
(72, 'Pellentesque at nulla. Suspendisse potenti. Cras i', 7, 6, 37),
(73, 'Donec diam neque, vestibulum eget, vulputate ut, u', 8, 9, 10),
(74, 'In hac habitasse platea dictumst. Etiam faucibus c', 3, 9, 93),
(75, 'Nam ultrices, libero non mattis pulvinar, nulla pe', 2, 4, 97),
(76, 'Curabitur at ipsum ac tellus semper interdum. Maur', 4, 2, 79),
(77, 'Duis aliquam convallis nunc. Proin at turpis a ped', 1, 8, 14),
(78, 'Praesent blandit. Nam nulla. Integer pede justo, l', 9, 9, 91),
(79, 'Mauris enim leo, rhoncus sed, vestibulum sit amet,', 9, 3, 56),
(80, 'Duis bibendum. Morbi non quam nec dui luctus rutru', 3, 8, 74),
(81, 'In hac habitasse platea dictumst. Etiam faucibus c', 7, 2, 88),
(82, 'Lorem ipsum dolor sit amet, consectetuer adipiscin', 9, 6, 56),
(83, 'Duis consequat dui nec nisi volutpat eleifend. Don', 1, 5, 15),
(84, 'Etiam vel augue. Vestibulum rutrum rutrum neque. A', 4, 9, 91),
(85, 'Etiam vel augue. Vestibulum rutrum rutrum neque. A', 7, 1, 22),
(86, 'In hac habitasse platea dictumst. Morbi vestibulum', 2, 3, 70),
(87, 'Vestibulum ac est lacinia nisi venenatis tristique', 3, 6, 28),
(88, 'Nam ultrices, libero non mattis pulvinar, nulla pe', 5, 3, 4),
(89, 'Maecenas tristique, est et tempus semper, est quam', 8, 1, 97),
(90, 'Donec diam neque, vestibulum eget, vulputate ut, u', 3, 4, 7),
(91, 'Morbi non lectus. Aliquam sit amet diam in magna b', 4, 8, 23),
(92, 'Nullam sit amet turpis elementum ligula vehicula c', 4, 9, 34),
(93, 'In hac habitasse platea dictumst. Etiam faucibus c', 8, 8, 46),
(94, 'Fusce posuere felis sed lacus. Morbi sem mauris, l', 3, 7, 3),
(95, 'Quisque porta volutpat erat. Quisque erat eros, vi', 9, 2, 36),
(96, 'Quisque id justo sit amet sapien dignissim vestibu', 3, 3, 13),
(97, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacu', 7, 4, 74),
(98, 'Nullam sit amet turpis elementum ligula vehicula c', 4, 8, 78),
(99, 'Mauris enim leo, rhoncus sed, vestibulum sit amet,', 4, 2, 18),
(100, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec ', 6, 1, 74);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `Id_role` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id_role`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Id_User` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `Id_role` int NOT NULL,
  PRIMARY KEY (`Id_User`),
  KEY `Id_role` (`Id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`Id_User`, `user_name`, `password`, `email_id`, `Id_role`) VALUES
(1, 'Lydon', 'mC8.#7=6', 'lbazeley0@diigo.com', 1),
(2, 'Stillmann', 'pY4$X~_o', 'scastelletti1@wp.com', 2),
(3, 'Maryann', 'hK4|#T0H\'d\'124$_', 'mswoffer2@nytimes.com', 3),
(4, 'Celeste', 'iA0+XygaSA\"e', 'cwoodwing3@sciencedaily.com', 4),
(5, 'Reg', 'vE2!%5li9\'IR(H&', 'rmacey4@cnbc.com', 1),
(6, 'Niven', 'qI1`xPxoH8FU/', 'ndufaire5@indiegogo.com', 2),
(7, 'Eamon', 'eQ3%RU3?/>#fAFl>', 'egookey6@fc2.com', 3),
(8, 'Thekla', 'rP0)EZTvzJ0<', 'terridge7@kickstarter.com', 4),
(9, 'Pia', 'uO6_A4)87Vu9}', 'pabram8@opera.com', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`Id_Genre`) REFERENCES `genre` (`Id_Genre`);

--
-- Constraints for table `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id_Book`),
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`Id_Author`) REFERENCES `author` (`Id_Author`);

--
-- Constraints for table `book_utilisateur`
--
ALTER TABLE `book_utilisateur`
  ADD CONSTRAINT `book_utilisateur_ibfk_1` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id_Book`),
  ADD CONSTRAINT `book_utilisateur_ibfk_2` FOREIGN KEY (`Id_User`) REFERENCES `utilisateur` (`Id_User`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Id_User`) REFERENCES `utilisateur` (`Id_User`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`Id_User_1`) REFERENCES `utilisateur` (`Id_User`),
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`Id_Book`) REFERENCES `book` (`Id_Book`);

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`Id_role`) REFERENCES `role` (`Id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
