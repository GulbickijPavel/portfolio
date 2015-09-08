-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015 m. Rgs 08 d. 20:41
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `surname` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `logindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Sukurta duomenų kopija lentelei `admin`
--

INSERT INTO `admin` (`adminid`, `name`, `surname`, `password`, `username`, `logindate`) VALUES
(1, 'Pavel', 'Gulbickij', '123', 'admin', '2015-08-20 21:00:00');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `experience`
--

CREATE TABLE IF NOT EXISTS `experience` (
  `experienceid` int(10) NOT NULL AUTO_INCREMENT,
  `company` text COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `periodstart` date DEFAULT NULL,
  `periodend` date DEFAULT NULL,
  `position` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  PRIMARY KEY (`experienceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Sukurta duomenų kopija lentelei `experience`
--

INSERT INTO `experience` (`experienceid`, `company`, `address`, `url`, `periodstart`, `periodend`, `position`, `description`) VALUES
(6, 'company2255', 'company2255', 'company2255', '0000-00-00', '0000-00-00', 'company2255', 'company2255');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `projectid` int(8) NOT NULL AUTO_INCREMENT,
  `projectname` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `description` text COLLATE utf8_lithuanian_ci,
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci AUTO_INCREMENT=14 ;

--
-- Sukurta duomenų kopija lentelei `projects`
--

INSERT INTO `projects` (`projectid`, `projectname`, `image1`, `image2`, `image3`, `description`) VALUES
(1, 'Project1', '/portfolio/portfolio.lt/images/projects/cs.png', 'http://placehold.it/150x150', 'http://placehold.it/150x150', '<ul>\r\n	<li>some day here will be normal project description, but now im just using a dummy text like this maybe</li>\r\n</ul>\r\n'),
(2, 'Test project 2', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'some day here will be normal project description, but now im just using a dummy text like this'),
(3, 'Test project 3', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'some day here will be normal project description, but now im just using a dummy text like this'),
(4, 'Test project 4', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'some day here will be normal project description, but now im just using a dummy text like this'),
(5, 'Test Project', '/portfolio/portfolio.lt/images/projects/github-logo.png', '/portfolio/portfolio.lt/images/projects/d6.jpg', '/portfolio/portfolio.lt/images/projects/Cc.png', ' TEST ONE'),
(6, 'Test Project 2', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', ' asdasd'),
(7, 'Test Project 2', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', ' asdasd'),
(8, 'Test', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', ' adssssssssssss'),
(9, 'Test2226', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', ' 152112'),
(13, 'tempname 2', 'http://placehold.it/150x150', 'http://placehold.it/150x150', 'http://placehold.it/150x150', ' ');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `sectionid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `shown` int(10) DEFAULT NULL,
  `sectionname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lang` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`sectionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci AUTO_INCREMENT=21 ;

--
-- Sukurta duomenų kopija lentelei `sections`
--

INSERT INTO `sections` (`sectionid`, `name`, `shown`, `sectionname`, `lang`) VALUES
(7, 'home', 1, 'Home', 'en'),
(8, 'about', 1, 'About', 'en'),
(9, 'skills', 1, 'Skills', 'en'),
(10, 'experience', 1, 'Experience', 'en'),
(11, 'projects', 1, 'Projects', 'en'),
(12, 'contacts', 1, 'Contacts', 'en');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `skillknowledge`
--

CREATE TABLE IF NOT EXISTS `skillknowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langEn` text COLLATE utf8_bin NOT NULL,
  `langLt` text COLLATE utf8_bin NOT NULL,
  `LangRu` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Sukurta duomenų kopija lentelei `skillknowledge`
--

INSERT INTO `skillknowledge` (`id`, `langEn`, `langLt`, `LangRu`) VALUES
(1, 'Good', 'Geros', 'Хорошие');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `skillname` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `skillimage` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `skilldescription` text COLLATE utf8_lithuanian_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_lithuanian_ci NOT NULL,
  `skillid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci AUTO_INCREMENT=28 ;

--
-- Sukurta duomenų kopija lentelei `skills`
--

INSERT INTO `skills` (`id`, `skillname`, `skillimage`, `skilldescription`, `lang`, `skillid`) VALUES
(1, 'css', '/portfolio/portfolio.lt/images/skills/css.png', '<ul>\r\n	<li>CSS3 Animations</li>\r\n	<li>Cross Browser</li>\r\n	<li>Responsive layot</li>\r\n	<li>Media queries</li>\r\n	<li>Aiming for best practices</li>\r\n	<li>Clean Code</li>\r\n</ul>\r\n', 'en', 1),
(2, 'html', '/portfolio/portfolio.lt/images/skills/html.png', 'HTML5<br> \r\nSymantyc markup<br> \r\nStandards compliant<br>', 'en', 2),
(3, 'php', '/portfolio/portfolio.lt/images/skills/php.png', '  test2', 'ru', 3),
(4, 'JavaScript', '/portfolio/portfolio.lt/images/skills/js.png', '<ul>\r\n	<li>Jquery</li>\r\n	<li>Vanila JavaScript</li>\r\n	<li>Cross browser</li>\r\n	<li>Ajax</li>\r\n	<li>Jquery UI</li>\r\n	<li>JSON</li>\r\n</ul>\r\n', 'en', 4),
(5, 'SQL', '/portfolio/portfolio.lt/images/skills/sql.png', '', 'en', 5),
(6, 'Git', '/portfolio/portfolio.lt/images/skills/github-logo.png', '<ul>\r\n	<li>Github, Bitbucked</li>\r\n	<li>Commandline &amp; SourceTree</li>\r\n</ul>\r\n', 'en', 6),
(7, 'PHP', '/portfolio/portfolio.lt/images/skills/Internet-php-icon.png', '<ul>\r\n	<li>PHP 5</li>\r\n	<li>OOP</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 'en', 7),
(8, 'Smarty', '/portfolio/portfolio.lt/images/skills/smarty-development.png', '<p>other</p>\r\n', 'en', 8),
(9, 'Google analytics', '/portfolio/portfolio.lt/images/skills/google-logo.png', '', 'en', 9),
(10, 'SEO', '/portfolio/portfolio.lt/images/skills/seo1.png', '<ul>\r\n	<li>Basics</li>\r\n</ul>\r\n', 'en', 10),
(11, 'Java', '/portfolio/portfolio.lt/images/skills/l12866-java-eps-logo-99090_zps40c91a38.png', '<ul>\r\n	<li>Basics</li>\r\n</ul>\r\n', 'en', 11),
(12, 'Bash?', '/portfolio/portfolio.lt/images/skills/lINUX.png', '<p>test</p>\r\n', 'en', 12),
(13, 'asdasdasd', 'http://placehold.it/150x150', '<p>asdasd</p>\r\n', 'en', 13),
(14, 'test', 'test', 'TestLt', 'lt', 14),
(15, 'css', NULL, 'testLt', 'lt', 1),
(16, 'css', NULL, 'testRu', 'ru', 1),
(26, 'Bash?', '/portfolio/portfolio.lt/images/skills/lINUX.png', '<p>testas</p>\r\n', 'lt', 12),
(27, 'Bash?', '/portfolio/portfolio.lt/images/skills/lINUX.png', '<p>testnaruskom</p>\r\n', 'ru', 12);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `startpage`
--

CREATE TABLE IF NOT EXISTS `startpage` (
  `startid` int(11) NOT NULL AUTO_INCREMENT,
  `startheader` text COLLATE utf8_bin,
  `startinfo` text COLLATE utf8_bin,
  `startdescription` text COLLATE utf8_bin,
  PRIMARY KEY (`startid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Sukurta duomenų kopija lentelei `startpage`
--

INSERT INTO `startpage` (`startid`, `startheader`, `startinfo`, `startdescription`) VALUES
(1, 'Pradžia', '<ul>\r\n	<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li>\r\n	<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li>\r\n	<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li>\r\n</ul>\r\n', 'another test text');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `translations`
--

CREATE TABLE IF NOT EXISTS `translations` (
  `translationid` int(11) NOT NULL AUTO_INCREMENT,
  `en` text COLLATE utf8_bin NOT NULL,
  `lt` text COLLATE utf8_bin NOT NULL,
  `ru` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`translationid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=47 ;

--
-- Sukurta duomenų kopija lentelei `translations`
--

INSERT INTO `translations` (`translationid`, `en`, `lt`, `ru`) VALUES
(1, 'Education', 'Išsilavinimas', 'Образование'),
(2, 'Translations', 'Vertimai', 'Переводы'),
(3, 'Address', 'Adresas', 'Адрес'),
(4, 'E-mail', 'El.paštas', 'Эл-почта'),
(5, 'Birth date', 'Gimimo data', 'Дата рождения'),
(6, 'Mob.phone', 'Mob.telefonas', 'Моб.телефон'),
(7, 'Log-out', 'Atsijungti', 'Отключиться'),
(8, 'Control', 'Valdyti', 'Управлять'),
(9, 'Company', 'Įmonė', 'Компания'),
(10, 'Website', 'Tinklapis', 'Интернет страница'),
(11, 'Position', 'Pareigos', 'Должность'),
(12, 'Work period', 'Darbo trukmė', 'Время работы'),
(13, 'Contact phone', 'Kontaktinis telefonas', 'Контактный телефон'),
(14, 'Name', 'Vardas', 'Имя'),
(15, 'Surname', 'Pavardė', 'Фамилия'),
(16, 'Comments', 'Komentarai', 'Коментарии'),
(17, 'Contact', 'Kontaktinė', 'Контактная'),
(18, 'Form', 'Forma', 'Форма'),
(19, 'You can leave your contacts here. Reauired fields are marked with *.', 'Šioje formoje galite palikti savo kontaktus. Privalomi laukai pažymėti žvaigždute *.', 'Вы можете оставить сдесь свои контакты. Необходимые поля для заполнения отмеченны звездочкой *.'),
(20, 'Cancel', 'Atšaukti', 'Отмена'),
(21, 'Submit', 'Pateikti', 'Отправить'),
(22, 'Search', 'Paieška', 'Поиск'),
(23, 'Controls', 'Valdymas', 'Управление'),
(24, 'Change', 'Keisti', 'Менять'),
(25, 'Title', 'Pavadinimas', 'Название'),
(26, 'Photo', 'Nuotrauka', 'Фотография'),
(27, 'Upload photo', 'Įkelti nuotrauką', 'Загрузить фотографию'),
(28, 'Description', 'Aprašymas', 'Описание'),
(29, 'Section', 'Sritis', 'Область'),
(30, 'Choose', 'Pasirinkti', 'Выбрать'),
(31, 'Delete', 'Šalinti', 'Удалить'),
(32, 'New', 'Naujas', 'Новый'),
(33, 'Work start', 'Darbo pradžia', 'Начало работы'),
(34, 'Work end', 'Darbo pabaiga', 'Конец работы'),
(35, 'Photos', 'Nuotraukos', 'Фотографии'),
(36, 'Upload photos', 'Įkelti nuotrauką(as)', 'Загрузить фотографии'),
(37, 'Back', 'Atgal', 'Назад'),
(38, 'Project', 'Projektas', 'Проект'),
(39, 'Home', 'Pradžia', 'Начало'),
(40, 'About', 'Apie', 'Обо мне'),
(41, 'Skills', 'Žinios', 'Навыки'),
(42, 'Experience', 'Patirtis', 'Опыт'),
(43, 'Projects', 'Darbai', 'Проекты'),
(44, 'Contacts', 'Kontaktai', 'Контакты'),
(45, 'Language', 'Kalba', 'Язык'),
(46, 'Knowledge', 'Žinojimas', 'Знание');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8_lithuanian_ci NOT NULL,
  `userphoto` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `livingplace` varchar(50) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `info` tinytext COLLATE utf8_lithuanian_ci,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci AUTO_INCREMENT=2 ;

--
-- Sukurta duomenų kopija lentelei `user`
--

INSERT INTO `user` (`userid`, `name`, `surname`, `userphoto`, `birthdate`, `livingplace`, `email`, `phone`, `info`) VALUES
(1, 'Pavel', 'Gulbickij', 'images/github-logo.png', '1991-11-05', 'Virsuliskes', 'gulbickij.pavel@gmail.com', '+370 671 39492', '<ul>\r\n	<li>Esu ketvirto kurso studentas.</li>\r\n	<li>Mokymosi įstaiga : <strong>Vilniaus Kolegija</strong></li>\r\n	<li>Stdijų Programa : <strong>Programų sistemos</strong></li>\r\n	<li>Kriptis: <strong>Internetinės technologijos</strong></li>\r\n</ul>\r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
