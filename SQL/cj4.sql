-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2019 at 12:19 AM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sexbabecam_fluff`
--

-- --------------------------------------------------------

--
-- Table structure for table `blockedcountry`
--

CREATE TABLE `blockedcountry` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `model` varchar(35) CHARACTER SET utf8 NOT NULL,
  `cc` varchar(2) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(46, 'Fake Tits'),
(40, 'Big Boobs'),
(45, 'BBW'),
(44, 'Babes'),
(77, 'Asian'),
(41, 'Anal Sex'),
(47, 'Blonde'),
(48, 'Bondage'),
(49, 'Brunette'),
(50, 'Co-Eds'),
(51, 'Couples'),
(52, 'Curvy'),
(53, 'Ebony'),
(54, 'Feet Fetish'),
(55, 'Granny'),
(42, 'Group'),
(57, 'Hairy'),
(58, 'Housewives'),
(59, 'Huge Tits'),
(60, 'Latina'),
(61, 'Leather'),
(62, 'Lesbian'),
(63, 'Mature'),
(64, 'Medium Tits'),
(65, 'Muscle'),
(66, 'White Girls'),
(67, 'Petite Body'),
(68, 'Pornstar'),
(69, 'Pregnant'),
(70, 'Red Head'),
(71, 'Shaved'),
(72, 'Small Tits'),
(74, 'Smoking'),
(75, 'Teen 18+'),
(76, 'Toys'),
(78, 'Transgirl'),
(79, 'MILF City '),
(80, 'No Nudity');

-- --------------------------------------------------------

--
-- Table structure for table `chatmodels`
--

CREATE TABLE `chatmodels` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `language1` varchar(12) NOT NULL DEFAULT '',
  `language2` varchar(12) DEFAULT NULL,
  `language3` varchar(12) DEFAULT NULL,
  `language4` varchar(32) DEFAULT NULL,
  `birthDate` varchar(11) DEFAULT NULL,
  `braSize` varchar(12) DEFAULT NULL,
  `birthSign` varchar(12) DEFAULT NULL,
  `weight` varchar(12) DEFAULT '0',
  `weightMeasure` varchar(12) DEFAULT NULL,
  `height` varchar(12) DEFAULT '0',
  `heightMeasure` varchar(12) DEFAULT NULL,
  `eyeColor` varchar(12) DEFAULT NULL,
  `ethnicity` varchar(32) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `fantasies` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `hairColor` varchar(32) DEFAULT NULL,
  `hairLength` varchar(32) DEFAULT NULL,
  `pubicHair` varchar(32) DEFAULT NULL,
  `tImage` varchar(32) NOT NULL DEFAULT '',
  `cpm` smallint(6) NOT NULL DEFAULT 0,
  `epercentage` tinyint(4) NOT NULL DEFAULT 0,
  `minimum` int(11) NOT NULL DEFAULT 500,
  `category` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(32) NOT NULL DEFAULT '',
  `zip` varchar(12) NOT NULL DEFAULT '',
  `adress` varchar(32) NOT NULL DEFAULT '',
  `actImage` varchar(32) NOT NULL DEFAULT '',
  `pMethod` varchar(12) DEFAULT NULL,
  `pInfo` varchar(255) DEFAULT NULL,
  `dateRegistered` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(32) DEFAULT NULL,
  `lastLogIn` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(16) NOT NULL DEFAULT '',
  `fax` varchar(16) DEFAULT NULL,
  `idtype` varchar(32) NOT NULL DEFAULT '',
  `idmonth` varchar(32) NOT NULL DEFAULT '',
  `idyear` varchar(4) NOT NULL DEFAULT '',
  `idnumber` varchar(32) NOT NULL DEFAULT '',
  `birthplace` varchar(32) NOT NULL DEFAULT '',
  `ssnumber` varchar(32) DEFAULT NULL,
  `msn` varchar(32) DEFAULT NULL,
  `yahoo` varchar(32) DEFAULT NULL,
  `icq` varchar(32) DEFAULT NULL,
  `broadcastplace` varchar(32) DEFAULT NULL,
  `emailtype` enum('text','html') NOT NULL DEFAULT 'text',
  `status` varchar(8) NOT NULL DEFAULT '',
  `lastupdate` int(11) DEFAULT NULL,
  `onlinemembers` tinyint(4) NOT NULL DEFAULT 0,
  `monday` varchar(12) DEFAULT NULL,
  `tuesday` varchar(12) DEFAULT NULL,
  `wednesday` varchar(12) DEFAULT NULL,
  `thursday` varchar(12) DEFAULT NULL,
  `friday` varchar(12) DEFAULT NULL,
  `sunday` varchar(12) DEFAULT NULL,
  `saturday` varchar(12) DEFAULT NULL,
  `gmt` varchar(5) NOT NULL DEFAULT '+0',
  `forcedOnline` tinyint(1) NOT NULL DEFAULT 0,
  `is_hd_on` enum('y','n') DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmodels`
--

INSERT INTO `chatmodels` (`id`, `user`, `password`, `email`, `language1`, `language2`, `language3`, `language4`, `birthDate`, `braSize`, `birthSign`, `weight`, `weightMeasure`, `height`, `heightMeasure`, `eyeColor`, `ethnicity`, `message`, `position`, `fantasies`, `hobby`, `hairColor`, `hairLength`, `pubicHair`, `tImage`, `cpm`, `epercentage`, `minimum`, `category`, `name`, `country`, `state`, `city`, `zip`, `adress`, `actImage`, `pMethod`, `pInfo`, `dateRegistered`, `owner`, `lastLogIn`, `phone`, `fax`, `idtype`, `idmonth`, `idyear`, `idnumber`, `birthplace`, `ssnumber`, `msn`, `yahoo`, `icq`, `broadcastplace`, `emailtype`, `status`, `lastupdate`, `onlinemembers`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `sunday`, `saturday`, `gmt`, `forcedOnline`, `is_hd_on`) VALUES
('e6b442dc3cef72c292b096c2a66e3427', 'Renee', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category2', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403992331, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('be98414ffbd2483f7b09095046b21a8c', 'Megan', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category7', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403992472, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('b3c65d3516321ec537623764ec7c9bba', 'Molly', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403992920, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('7cdec3aff3b6898dfd3b0c7d41fd90e9', 'Lana', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category5', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403993093, NULL, 1471736694, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', 1472025608, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('37349f5a1088e8c4a4118a175b6c392f', 'Jennifer', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403993356, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('84eb70697debe0691427ab3140d85ae0', 'Heidi', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category4', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403993732, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('4b122be334eab826bdcb00fd81a2dc94', 'Georgia', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403994114, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('bc498850b006006ddd0684e7728fe6bb', 'Cassy', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403994577, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('59a8dbf465bd918252e7c897420c684f', 'Chelsie', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'Mixed', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category2', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403994718, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('245bb41dda87cac8da130aab59a883df', 'Alyssa', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403994938, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('e1b13aa325b506f7c55fd365362550c2', 'Veronica', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category6', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403991722, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('8f54b0ea127a2cf9f606bf6dfb6ca265', 'Zoe', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', '', 1403991826, NULL, 1473558985, 'demo', '', '', '', '', '', '', '', '', '', '', '', 'text', 'online', 1473572376, 0, 'off-off', 'off-off', 'off-off', 'off-off', 'off-off', 'off-off', 'off-off', '+0', 1, 'y'),
('c6dbc0be9c1f18b71490a05e83fc84c2', 'Sasha', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category4', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403992243, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('1ba95d922d2349c95aa816fdf51f8a04', 'Abby', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403990469, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('38f97587a8eef7bd7cd3b855d2093209', 'Amber', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403990727, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('41b1e034ae9c0adf3630d881fe33cfe7', 'Tanya', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category7', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403990888, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('bdc0f2cdeced3bb15d1883c0272c03e7', 'Trinity', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403991157, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('e34fd4a32f2c1fe85995b6bfa4bb0878', 'Tiffany', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403991241, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('a19e121f61184d8dbaa1e85f04a96210', 'Tori', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403991499, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('ca68ff52ae5d99e40ce86a52dfa5d1cb', 'Frankie', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category2', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403989318, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('3683c3be2dfe2960e6a1d855d8f38342', 'Eve', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category5', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403989631, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('253d96ff3e76832ffd9d030c67c50f6a', 'Destiny', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'Black', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403989806, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('10fdae79a9726141a258bc4646e7b99b', 'Annette', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403990647, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('00e1fddcf14ac4b64fd39e6857d673e9', 'Beverley', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403990371, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('c178d44b6e269cedb799463411aaee0f', 'Holly', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403976813, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('70eddecc3e0f00c488dc73b98f0dc58a', 'Hannah', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category6', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403976958, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('383789dcce4bc2ad2bf3aac94794f7da', 'Gina', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category2', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403977141, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('9425d5151c2342c45bbbaa05dff658bd', 'Gabriel', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category7', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403989219, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('e8771964c5c212dedbc5b57fcdf13352', 'Katie', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category5', 'demo', '40', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403976442, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('4c0b40f86517d3441d72376bd3b33f1e', 'Julie', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category7', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403976565, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('8f53a4ba62f8ff89d0a8d0ae4fae768d', 'Nicole', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403975893, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('dc0d4a90c79549ef4471792cedd19174', 'Lori', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403976041, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('160d739cffb7d219494150757ff4ffeb', 'Kira', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category4', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403976226, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('345b4f4aad7476bfc85201d62fa24d73', 'Paige', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403975321, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('16f908cbe7b8ef8e7f4bb8313a57238d', 'Pamela', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category6', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403975726, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('bf34f053a25ed117fb0ea90464870851', 'Teresa', 'e10adc3949ba59abbe56e057f20f883e', 'support@camscripts.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category7', 'demo', '1', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403973713, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('6a3fb06889322952dfd9b4a5537e6ad6', 'Sylvia', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category5', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403974267, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('6282477e44aeb0bdfaad584f1c23421c', 'Sadie', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403975045, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('1dac4a3f61e69bebbeee6096c34e48af', 'Rachel', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category4', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403975251, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('8072dedb2eaf7f5a3cc933573f4f30a6', 'Victoria', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', NULL, NULL, NULL, '01/Jan/1995', NULL, NULL, '0', NULL, '0', NULL, NULL, 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'demo', '1', 'demo', 'demo', 'demo', 'demo', '', NULL, NULL, 1403972881, NULL, 0, 'demo', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y'),
('28c88c11c9c86e61238ba78acc5fd66f', 'Tara', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403967350, NULL, 1403970647, 'demo', '', '', '', '', '', '', '', '', '', '', 'Michigan', 'text', 'online', NULL, 0, '12pm-6pm', '12pm-6pm', '12pm-6pm', '12pm-6pm', '12pm-6pm', '12pm-6pm', '12pm-6pm', '+0', 1, 'y'),
('761b3270aa157b6523e2c8902638373e', 'Summer', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category5', 'demo', '1', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403967435, NULL, 1403969958, 'demo', '', '', '', '', '', '', '', '', '', '', 'California', 'text', 'online', NULL, 0, '1am-6am', '1am-6am', '1am-6am', '1am-6am', '1am-6am', '1am-6am', '1am-6am', '+0', 1, 'y'),
('1a07a930cc85efe8215e98b8f4f5ff29', 'Aurora', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category1', 'demo', '1', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403960758, NULL, 1403970503, 'demo', '', '', '', '', '', '', '', '', '', '', 'Texas', 'text', 'online', NULL, 0, '12am-5am', '12am-5am', '12am-5am', '12am-5am', '12am-5am', '12am-5am', '12am-5am', '+0', 1, 'y'),
('434e01fee27faa8749fbf1e1d004c9e0', 'Becky', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403963171, NULL, 1403970228, 'demo', '', '', '', '', '', '', '', '', '', '', 'California', 'text', 'online', NULL, 0, '1am-12am', '12am-12am', '12am-12am', '12am-12am', '12am-12am', '12am-12am', '12am-12am', '+0', 1, 'y'),
('6a2c1fc88846463f99a090412cf9da23', 'Ella', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category6', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403965289, NULL, 1403965531, 'demo', '', '', '', '', '', '', '', '', '', '', 'California', 'text', 'online', NULL, 0, '12am-9am', '12am-4am', '12am-4am', '12am-9am', '12am-4am', 'off-off', '12am-4am', '+0', 1, 'y'),
('5deaec5c44dd35753ddb1471479b88a8', 'Wendy', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category7', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403967111, NULL, 1403969109, 'demo', '', '', '', '', '', '', '', '', '', '', '', 'text', 'online', NULL, 0, '12am-3am', '12am-4am', '12am-3am', '12am-5am', '2am-4am', '1pm-6pm', '1pm-6pm', '+0', 1, 'y'),
('25bf9d928f1eeb729fe18ea1b4415def', 'Angel', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category3', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403959965, NULL, 1403968636, 'demo', '', '', '', '', '', '', '', '', '', '', 'California', 'text', 'online', NULL, 0, '1pm-6pm', '1pm-6pm', '1pm-6pm', '1pm-6pm', '1pm-6pm', '1pm-6pm', '1pm-6pm', '+0', 1, 'y'),
('ebc4c9412e1b0f879e009e0eb53adf52', 'Anna', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category2', 'demo', '1', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'test@test.com', 1403960123, NULL, 1403967879, 'demo', '', '', '', '', '', '', '', '', '', '', '', 'text', 'online', NULL, 0, '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '+0', 1, 'y'),
('13247bf0825aa3a12dab0072400ab4dd', 'Model', 'e10adc3949ba59abbe56e057f20f883e', 'support@camscripts.com', 'English', '', '', '', '01/Jan/1972', '', '', '', '', '', '', '', 'White', 'I love taking long walks on the beach and I love guys who are sure of themselves. Tip me and watch me go... ;)', '', '', '', '', '', '', 'Thumbnail Image', 10, 50, 100, 'Transgirl', 'Joe Blow', '219', 'Florida', 'Jacksonville', '12345', '1234 Some Rd.', 'IdentityImage', 'pp', 'support@camscripts.com', 1341610577, 'none', 1556082561, '123-456-7890', '', '', '', '', '', '', '', '', '', '', 'United States', 'text', 'online', 1552794875, 1, '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '5pm-8pm', '1am-7am', '+0', 1, 'y'),
('941f639fbf60cf93e1b89d5fe53a8c17', 'Amanda', 'e10adc3949ba59abbe56e057f20f883e', 'support@fluffvision.com', 'English', '', '', '', '01/Jan/1995', '', '', '', '', '', '', '', 'White', 'I am a demo performer so there is not really much to say here since I do not really exist..', '', '', '', '', '', '', '', 10, 50, 500, 'Category1', 'demo', '236', 'demo', 'demo', 'demo', 'demo', '', 'pp', 'demo@demo.com', 1403959796, NULL, 1403969253, 'demo', '', '', '', '', '', '', '', '', '', '', 'California', 'text', 'online', NULL, 0, '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '12am-4am', '+0', 1, 'y'),
('bb6b1076b61fbf30738b82a355fd13ad', 'ProModel', 'e10adc3949ba59abbe56e057f20f883e', 'support@camscripts.com', 'English', NULL, NULL, NULL, '01/Jan/1972', NULL, NULL, '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 10, 50, 500, 'Category1', 'Wonderful', '1', 'sdf', 'sdf', 'sdf', 'sdf', '', NULL, NULL, 1452843019, NULL, 1452857927, 'sdf', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'text', 'online', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+0', 1, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `chatoperators`
--

CREATE TABLE `chatoperators` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(32) NOT NULL DEFAULT '',
  `zip` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `adress` varchar(32) NOT NULL DEFAULT '',
  `pMethod` varchar(12) DEFAULT NULL,
  `pInfo` varchar(255) DEFAULT NULL,
  `dateRegistered` int(11) NOT NULL DEFAULT 0,
  `lastLogIn` int(11) NOT NULL DEFAULT 0,
  `moneyEarned` varchar(24) NOT NULL DEFAULT '',
  `moneySent` varchar(24) NOT NULL DEFAULT '',
  `minimum` mediumint(9) NOT NULL DEFAULT 0,
  `status` varchar(12) NOT NULL DEFAULT '',
  `epercentage` tinyint(4) NOT NULL DEFAULT 0,
  `emailtype` enum('text','html') NOT NULL DEFAULT 'text',
  `company` varchar(32) DEFAULT NULL,
  `idtax` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chatusers`
--

CREATE TABLE `chatusers` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(12) NOT NULL DEFAULT '',
  `adress` varchar(255) NOT NULL DEFAULT '',
  `dateRegistered` int(11) NOT NULL DEFAULT 0,
  `lastLogIn` int(11) NOT NULL DEFAULT 0,
  `money` varchar(255) NOT NULL DEFAULT '1',
  `emailnotify` char(1) NOT NULL DEFAULT '0',
  `smsnotify` char(1) NOT NULL DEFAULT '0',
  `status` varchar(12) NOT NULL DEFAULT '',
  `emailtype` enum('html','text') DEFAULT 'text',
  `freetime` smallint(6) NOT NULL DEFAULT 120,
  `freetimeexpired` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatusers`
--

INSERT INTO `chatusers` (`id`, `user`, `password`, `email`, `name`, `country`, `state`, `city`, `phone`, `zip`, `adress`, `dateRegistered`, `lastLogIn`, `money`, `emailnotify`, `smsnotify`, `status`, `emailtype`, `freetime`, `freetimeexpired`) VALUES
('aa4be1703eff275103ed0855b9a47209', 'Member', '40f1eda77dbacd2cf799a9153ce9707a', 'support@camscripts.com', 'xxx', '1', 'xxx', 'xxx', '', 'xxx', '', 1346623217, 1542305035, '4640', '0', '0', 'active', 'text', 120, 0),
('6eb23575bd5c87f34c2e6ff96c9dc937', 'Tester', 'e10adc3949ba59abbe56e057f20f883e', 'support@camscripts.com', 'test', '236', 'test', 'test', '', 'test', '', 1455195821, 1553227178, '17240', '0', '0', 'active', 'text', 120, 0),
('af7cefc104b0d47e957c673e641fe545', 'make00', '3e6a9b0eb91388e418a62b6b9e68d568', 'pigis06@gmail.com', 'John petes', '75', 'p-k', 'joensuu', '', '80170', '', 1556073964, 1556074053, '1', '0', '0', 'active', 'text', 120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `code` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(33, 'British Indian Ocean Ter', 246),
(32, 'Brazil', 55),
(31, 'Bouvet Island', 0),
(30, 'Botswana', 267),
(29, 'Bosnia and Herzegovina', 387),
(28, 'Bonaire, Sint Eustatius ', 599),
(27, 'Bolivia', 591),
(26, 'Bhutan', 975),
(25, 'Bermuda', 1),
(24, 'Benin', 229),
(23, 'Belize', 501),
(22, 'Belgium', 32),
(21, 'Belarus', 375),
(20, 'Barbados', 1),
(19, 'Bangladesh', 880),
(18, 'Bahrain', 973),
(17, 'Bahamas', 1),
(16, 'Azerbaijan', 994),
(15, 'Austria', 43),
(14, 'Australia', 61),
(13, 'Aruba', 297),
(12, 'Armenia', 374),
(11, 'Argentina', 54),
(10, 'Antigua and Barbuda', 1),
(9, 'Antarctica', 672),
(8, 'Anguilla', 1),
(7, 'Angola', 244),
(6, 'Andorra', 376),
(5, 'American Samoa', 1),
(4, 'Algeria', 213),
(3, 'Albania', 355),
(2, 'Aland Islands', 358),
(1, 'Afghanistan', 93),
(34, 'Brunei', 673),
(35, 'Bulgaria', 359),
(36, 'Burkina Faso', 226),
(37, 'Burundi', 257),
(38, 'Cambodia', 855),
(39, 'Cameroon', 237),
(40, 'Canada', 1),
(41, 'Cape Verde', 238),
(42, 'Cayman Islands', 1),
(43, 'Central African Republic', 236),
(44, 'Chad', 235),
(45, 'Chile', 56),
(46, 'China', 86),
(47, 'Christmas Island', 61),
(48, 'Cocos (Keeling) Islands', 61),
(49, 'Colombia', 57),
(50, 'Comoros', 269),
(51, 'Congo', 242),
(52, 'Cook Islands', 682),
(53, 'Costa Rica', 506),
(54, 'Cote d\'ivoire (Ivory Coa', 225),
(55, 'Croatia', 385),
(56, 'Cuba', 53),
(57, 'Curacao', 599),
(58, 'Cyprus', 357),
(59, 'Czech Republic', 420),
(60, 'Democratic Republic of t', 243),
(61, 'Denmark', 45),
(62, 'Djibouti', 253),
(63, 'Dominica', 1),
(64, 'Dominican Republic', 1),
(65, 'Ecuador', 593),
(66, 'Egypt', 20),
(67, 'El Salvador', 503),
(68, 'Equatorial Guinea', 240),
(69, 'Eritrea', 291),
(70, 'Estonia', 372),
(71, 'Ethiopia', 251),
(72, 'Falkland Islands (Malvin', 500),
(73, 'Faroe Islands', 298),
(74, 'Fiji', 679),
(75, 'Finland', 358),
(76, 'France', 33),
(77, 'French Guiana', 594),
(78, 'French Polynesia', 689),
(79, 'French Southern Territor', NULL),
(80, 'Gabon', 241),
(81, 'Gambia', 220),
(82, 'Georgia', 995),
(83, 'Germany', 49),
(84, 'Ghana', 233),
(85, 'Gibraltar', 350),
(86, 'Greece', 30),
(87, 'Greenland', 299),
(88, 'Grenada', 1),
(89, 'Guadaloupe', 590),
(90, 'Guam', 1),
(91, 'Guatemala', 502),
(92, 'Guernsey', 44),
(93, 'Guinea', 224),
(94, 'Guinea-Bissau', 245),
(95, 'Guyana', 592),
(96, 'Haiti', 509),
(97, 'Heard Island and McDonal', 0),
(98, 'Honduras', 504),
(99, 'Hong Kong', 852),
(100, 'Hungary', 36),
(101, 'Iceland', 354),
(102, 'India', 91),
(103, 'Indonesia', 62),
(104, 'Iran', 98),
(105, 'Iraq', 964),
(106, 'Ireland', 353),
(107, 'Isle of Man', 44),
(108, 'Israel', 972),
(109, 'Italy', 39),
(110, 'Jamaica', 1),
(111, 'Japan', 81),
(112, 'Jersey', 44),
(113, 'Jordan', 962),
(114, 'Kazakhstan', 7),
(115, 'Kenya', 254),
(116, 'Kiribati', 686),
(117, 'Kosovo', 381),
(118, 'Kuwait', 965),
(119, 'Kyrgyzstan', 996),
(120, 'Laos', 856),
(121, 'Latvia', 371),
(122, 'Lebanon', 961),
(123, 'Lesotho', 266),
(124, 'Liberia', 231),
(125, 'Libya', 218),
(126, 'Liechtenstein', 423),
(127, 'Lithuania', 370),
(128, 'Luxembourg', 352),
(129, 'Macao', 853),
(130, 'Macedonia', 389),
(131, 'Madagascar', 261),
(132, 'Malawi', 265),
(133, 'Malaysia', 60),
(134, 'Maldives', 960),
(135, 'Mali', 223),
(136, 'Malta', 356),
(137, 'Marshall Islands', 692),
(138, 'Martinique', 596),
(139, 'Mauritania', 222),
(140, 'Mauritius', 230),
(141, 'Mayotte', 262),
(142, 'Mexico', 52),
(143, 'Micronesia', 691),
(144, 'Moldava', 373),
(145, 'Monaco', 377),
(146, 'Mongolia', 976),
(147, 'Montenegro', 382),
(148, 'Montserrat', 1),
(149, 'Morocco', 212),
(150, 'Mozambique', 258),
(151, 'Myanmar (Burma)', 95),
(152, 'Namibia', 264),
(153, 'Nauru', 674),
(154, 'Nepal', 977),
(155, 'Netherlands', 31),
(156, 'New Caledonia', 687),
(157, 'New Zealand', 64),
(158, 'Nicaragua', 505),
(159, 'Niger', 227),
(160, 'Nigeria', 234),
(161, 'Niue', 683),
(162, 'Norfolk Island', 672),
(163, 'North Korea', 850),
(164, 'Northern Mariana Islands', 1),
(165, 'Norway', 47),
(166, 'Oman', 968),
(167, 'Pakistan', 92),
(168, 'Palau', 680),
(169, 'Palestine', 970),
(170, 'Panama', 507),
(171, 'Papua New Guinea', 675),
(172, 'Paraguay', 595),
(173, 'Peru', 51),
(174, 'Phillipines', 63),
(175, 'Pitcairn', 0),
(176, 'Poland', 48),
(177, 'Portugal', 351),
(178, 'Puerto Rico', 1),
(179, 'Qatar', 974),
(180, 'Reunion', 262),
(181, 'Romania', 40),
(182, 'Russia', 7),
(183, 'Rwanda', 250),
(184, 'Saint Barthelemy', 590),
(185, 'Saint Helena', 290),
(186, 'Saint Kitts and Nevis', 1),
(187, 'Saint Lucia', 1),
(188, 'Saint Martin', 590),
(189, 'Saint Pierre and Miquelo', 508),
(190, 'Saint Vincent and the Gr', 1),
(191, 'Samoa', 685),
(192, 'San Marino', 378),
(193, 'Sao Tome and Principe', 239),
(194, 'Saudi Arabia', 966),
(195, 'Senegal', 221),
(196, 'Serbia', 381),
(197, 'Seychelles', 248),
(198, 'Sierra Leone', 232),
(199, 'Singapore', 65),
(200, 'Sint Maarten', 1),
(201, 'Slovakia', 421),
(202, 'Slovenia', 386),
(203, 'Solomon Islands', 677),
(204, 'Somalia', 252),
(205, 'South Africa', 27),
(206, 'South Georgia and the So', 500),
(207, 'South Korea', 82),
(208, 'South Sudan', 211),
(209, 'Spain', 34),
(210, 'Sri Lanka', 94),
(211, 'Sudan', 249),
(212, 'Suriname', 597),
(213, 'Svalbard and Jan Mayen', 47),
(214, 'Swaziland', 268),
(215, 'Sweden', 46),
(216, 'Switzerland', 41),
(217, 'Syria', 963),
(218, 'Taiwan', 886),
(219, 'Tajikistan', 992),
(220, 'Tanzania', 255),
(221, 'Thailand', 66),
(222, 'Timor-Leste (East Timor)', 670),
(223, 'Togo', 228),
(224, 'Tokelau', 690),
(225, 'Tonga', 676),
(226, 'Trinidad and Tobago', 1),
(227, 'Tunisia', 216),
(228, 'Turkey', 90),
(229, 'Turkmenistan', 993),
(230, 'Turks and Caicos Islands', 1),
(231, 'Tuvalu', 688),
(232, 'Uganda', 256),
(233, 'Ukraine', 380),
(234, 'United Arab Emirates', 971),
(235, 'United Kingdom', 44),
(236, 'United States', 1),
(237, 'United States Minor Outl', 0),
(238, 'Uruguay', 598),
(239, 'Uzbekistan', 998),
(240, 'Vanuatu', 678),
(241, 'Vatican City', 39),
(242, 'Venezuela', 58),
(243, 'Vietnam', 84),
(244, 'Virgin Islands, British', 1),
(245, 'Virgin Islands, US', 1),
(246, 'Wallis and Futuna', 681),
(247, 'Western Sahara', 212),
(248, 'Yemen', 967),
(249, 'Zambia', 260),
(250, 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`, `hits`, `last_hits`) VALUES
(1, 'US', 'United States', 911, 0),
(2, 'CA', 'Canada', 45, 0),
(3, 'AF', 'Afghanistan', 50, 0),
(4, 'AL', 'Albania', 8, 0),
(5, 'DZ', 'Algeria', 106, 0),
(6, 'DS', 'American Samoa', 0, 0),
(7, 'AD', 'Andorra', 0, 0),
(8, 'AO', 'Angola', 23, 0),
(9, 'AI', 'Anguilla', 0, 0),
(10, 'AQ', 'Antarctica', 0, 0),
(11, 'AG', 'Antigua and/or Barbuda', 0, 0),
(12, 'AR', 'Argentina', 18, 0),
(13, 'AM', 'Armenia', 24, 0),
(14, 'AW', 'Aruba', 0, 0),
(15, 'AU', 'Australia', 60, 0),
(16, 'AT', 'Austria', 1, 0),
(17, 'AZ', 'Azerbaijan', 25, 0),
(18, 'BS', 'Bahamas', 0, 0),
(19, 'BH', 'Bahrain', 337, 0),
(20, 'BD', 'Bangladesh', 11915, 0),
(21, 'BB', 'Barbados', 0, 0),
(22, 'BY', 'Belarus', 0, 0),
(23, 'BE', 'Belgium', 11, 0),
(24, 'BZ', 'Belize', 0, 0),
(25, 'BJ', 'Benin', 2, 0),
(26, 'BM', 'Bermuda', 0, 0),
(27, 'BT', 'Bhutan', 24, 0),
(28, 'BO', 'Bolivia', 5, 0),
(29, 'BA', 'Bosnia and Herzegovina', 0, 0),
(30, 'BW', 'Botswana', 2, 0),
(31, 'BV', 'Bouvet Island', 0, 0),
(32, 'BR', 'Brazil', 105, 0),
(33, 'IO', 'British lndian Ocean Territory', 0, 0),
(34, 'BN', 'Brunei Darussalam', 68, 0),
(35, 'BG', 'Bulgaria', 5, 0),
(36, 'BF', 'Burkina Faso', 1, 0),
(37, 'BI', 'Burundi', 2, 0),
(38, 'KH', 'Cambodia', 43, 0),
(39, 'CM', 'Cameroon', 1, 0),
(40, 'CV', 'Cape Verde', 3, 0),
(41, 'KY', 'Cayman Islands', 0, 0),
(42, 'CF', 'Central African Republic', 0, 0),
(43, 'TD', 'Chad', 1, 0),
(44, 'CL', 'Chile', 4, 0),
(45, 'CN', 'China', 817, 0),
(46, 'CX', 'Christmas Island', 0, 0),
(47, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(48, 'CO', 'Colombia', 11, 0),
(49, 'KM', 'Comoros', 0, 0),
(50, 'CG', 'Congo', 1, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 10, 0),
(53, 'HR', 'Croatia (Hrvatska)', 2, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 6, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 11, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 1, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 1, 0),
(63, 'EG', 'Egypt', 165, 0),
(64, 'SV', 'El Salvador', 1, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 122, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 71, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 13, 0),
(81, 'DE', 'Germany', 122, 0),
(82, 'GH', 'Ghana', 79, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GR', 'Greece', 12, 0),
(85, 'GL', 'Greenland', 0, 0),
(86, 'GD', 'Grenada', 0, 0),
(87, 'GP', 'Guadeloupe', 0, 0),
(88, 'GU', 'Guam', 0, 0),
(89, 'GT', 'Guatemala', 4, 0),
(90, 'GN', 'Guinea', 1, 0),
(91, 'GW', 'Guinea-Bissau', 0, 0),
(92, 'GY', 'Guyana', 5, 0),
(93, 'HT', 'Haiti', 7, 0),
(94, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(95, 'HN', 'Honduras', 6, 0),
(96, 'HK', 'Hong Kong', 513, 0),
(97, 'HU', 'Hungary', 1, 0),
(98, 'IS', 'Iceland', 0, 0),
(99, 'IN', 'India', 430804, 0),
(100, 'ID', 'Indonesia', 9820, 0),
(101, 'IR', 'Iran (Islamic Republic of)', 625, 0),
(102, 'IQ', 'Iraq', 42, 0),
(103, 'IE', 'Ireland', 1, 0),
(104, 'IL', 'Israel', 364, 0),
(105, 'IT', 'Italy', 58, 0),
(106, 'CI', 'Ivory Coast', 7, 0),
(107, 'JM', 'Jamaica', 12, 0),
(108, 'JP', 'Japan', 15, 0),
(109, 'JO', 'Jordan', 40, 0),
(110, 'KZ', 'Kazakhstan', 16, 0),
(111, 'KE', 'Kenya', 48, 0),
(112, 'KI', 'Kiribati', 0, 0),
(113, 'KP', 'Korea, Democratic People\'s Republic of', 0, 0),
(114, 'KR', 'Korea, Republic of', 25, 0),
(115, 'XK', 'Kosovo', 0, 0),
(116, 'KW', 'Kuwait', 759, 0),
(117, 'KG', 'Kyrgyzstan', 14, 0),
(118, 'LA', 'Lao People\'s Democratic Republic', 6, 0),
(119, 'LV', 'Latvia', 1, 0),
(120, 'LB', 'Lebanon', 11, 0),
(121, 'LS', 'Lesotho', 0, 0),
(122, 'LR', 'Liberia', 0, 0),
(123, 'LY', 'Libyan Arab Jamahiriya', 16, 0),
(124, 'LI', 'Liechtenstein', 0, 0),
(125, 'LT', 'Lithuania', 2, 0),
(126, 'LU', 'Luxembourg', 3, 0),
(127, 'MO', 'Macau', 0, 0),
(128, 'MK', 'Macedonia', 1, 0),
(129, 'MG', 'Madagascar', 2, 0),
(130, 'MW', 'Malawi', 0, 0),
(131, 'MY', 'Malaysia', 2230, 0),
(132, 'MV', 'Maldives', 105, 0),
(133, 'ML', 'Mali', 1, 0),
(134, 'MT', 'Malta', 0, 0),
(135, 'MH', 'Marshall Islands', 0, 0),
(136, 'MQ', 'Martinique', 0, 0),
(137, 'MR', 'Mauritania', 4, 0),
(138, 'MU', 'Mauritius', 29, 0),
(139, 'TY', 'Mayotte', 0, 0),
(140, 'MX', 'Mexico', 25, 0),
(141, 'FM', 'Micronesia, Federated States of', 0, 0),
(142, 'MD', 'Moldova, Republic of', 0, 0),
(143, 'MC', 'Monaco', 12, 0),
(144, 'MN', 'Mongolia', 0, 0),
(145, 'ME', 'Montenegro', 0, 0),
(146, 'MS', 'Montserrat', 0, 0),
(147, 'MA', 'Morocco', 44, 0),
(148, 'MZ', 'Mozambique', 5, 0),
(149, 'MM', 'Myanmar', 13, 0),
(150, 'NA', 'Namibia', 4, 0),
(151, 'NR', 'Nauru', 0, 0),
(152, 'NP', 'Nepal', 500, 0),
(153, 'NL', 'Netherlands', 40, 0),
(154, 'AN', 'Netherlands Antilles', 0, 0),
(155, 'NC', 'New Caledonia', 0, 0),
(156, 'NZ', 'New Zealand', 8, 0),
(157, 'NI', 'Nicaragua', 1, 0),
(158, 'NE', 'Niger', 12, 0),
(159, 'NG', 'Nigeria', 298, 0),
(160, 'NU', 'Niue', 0, 0),
(161, 'NF', 'Norfork Island', 0, 0),
(162, 'MP', 'Northern Mariana Islands', 0, 0),
(163, 'NO', 'Norway', 1, 0),
(164, 'OM', 'Oman', 1222, 0),
(165, 'PK', 'Pakistan', 32862, 0),
(166, 'PW', 'Palau', 0, 0),
(167, 'PA', 'Panama', 4, 0),
(168, 'PG', 'Papua New Guinea', 31, 0),
(169, 'PY', 'Paraguay', 9, 0),
(170, 'PE', 'Peru', 72, 0),
(171, 'PH', 'Philippines', 133, 0),
(172, 'PN', 'Pitcairn', 0, 0),
(173, 'PL', 'Poland', 22, 0),
(174, 'PT', 'Portugal', 3, 0),
(175, 'PR', 'Puerto Rico', 0, 0),
(176, 'QA', 'Qatar', 837, 0),
(177, 'RE', 'Reunion', 0, 0),
(178, 'RO', 'Romania', 35, 0),
(179, 'RU', 'Russian Federation', 103, 0),
(180, 'RW', 'Rwanda', 3, 0),
(181, 'KN', 'Saint Kitts and Nevis', 0, 0),
(182, 'LC', 'Saint Lucia', 0, 0),
(183, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(184, 'WS', 'Samoa', 0, 0),
(185, 'SM', 'San Marino', 0, 0),
(186, 'ST', 'Sao Tome and Principe', 0, 0),
(187, 'SA', 'Saudi Arabia', 4469, 0),
(188, 'SN', 'Senegal', 10, 0),
(189, 'RS', 'Serbia', 1, 0),
(190, 'SC', 'Seychelles', 7, 0),
(191, 'SL', 'Sierra Leone', 0, 0),
(192, 'SG', 'Singapore', 177, 0),
(193, 'SK', 'Slovakia', 14, 0),
(194, 'SI', 'Slovenia', 0, 0),
(195, 'SB', 'Solomon Islands', 0, 0),
(196, 'SO', 'Somalia', 1, 0),
(197, 'ZA', 'South Africa', 368, 0),
(198, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(199, 'ES', 'Spain', 25, 0),
(200, 'LK', 'Sri Lanka', 970, 0),
(201, 'SH', 'St. Helena', 0, 0),
(202, 'PM', 'St. Pierre and Miquelon', 0, 0),
(203, 'SD', 'Sudan', 160, 0),
(204, 'SR', 'Suriname', 1, 0),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands', 0, 0),
(206, 'SZ', 'Swaziland', 0, 0),
(207, 'SE', 'Sweden', 295, 0),
(208, 'CH', 'Switzerland', 3, 0),
(209, 'SY', 'Syrian Arab Republic', 17, 0),
(210, 'TW', 'Taiwan', 3, 0),
(211, 'TJ', 'Tajikistan', 3, 0),
(212, 'TZ', 'Tanzania, United Republic of', 99, 0),
(213, 'TH', 'Thailand', 114, 0),
(214, 'TG', 'Togo', 1, 0),
(215, 'TK', 'Tokelau', 0, 0),
(216, 'TO', 'Tonga', 0, 0),
(217, 'TT', 'Trinidad and Tobago', 9, 0),
(218, 'TN', 'Tunisia', 25, 0),
(219, 'TR', 'Turkey', 445, 0),
(220, 'TM', 'Turkmenistan', 0, 0),
(221, 'TC', 'Turks and Caicos Islands', 0, 0),
(222, 'TV', 'Tuvalu', 0, 0),
(223, 'UG', 'Uganda', 28, 0),
(224, 'UA', 'Ukraine', 30, 0),
(225, 'AE', 'United Arab Emirates', 4517, 0),
(226, 'GB', 'United Kingdom', 987, 0),
(227, 'UM', 'United States minor outlying islands', 0, 0),
(228, 'UY', 'Uruguay', 4, 0),
(229, 'UZ', 'Uzbekistan', 103, 0),
(230, 'VU', 'Vanuatu', 0, 0),
(231, 'VA', 'Vatican City State', 0, 0),
(232, 'VE', 'Venezuela', 3, 0),
(233, 'VN', 'Vietnam', 33, 0),
(234, 'VG', 'Virigan Islands (British)', 0, 0),
(235, 'VI', 'Virgin Islands (U.S.)', 0, 0),
(236, 'WF', 'Wallis and Futuna Islands', 0, 0),
(237, 'EH', 'Western Sahara', 0, 0),
(238, 'YE', 'Yemen', 100, 0),
(239, 'YU', 'Yugoslavia', 0, 0),
(240, 'ZR', 'Zaire', 0, 0),
(241, 'ZM', 'Zambia', 11, 0),
(242, 'ZW', 'Zimbabwe', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `credit_logs`
--

CREATE TABLE `credit_logs` (
  `id` smallint(6) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `date` bigint(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `default_gateway`
--

CREATE TABLE `default_gateway` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_gateway`
--

INSERT INTO `default_gateway` (`id`, `name`, `file`) VALUES
(1, 'Zombaio', 'zombaio.php');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `member` varchar(32) NOT NULL DEFAULT '',
  `model` varchar(32) NOT NULL DEFAULT '',
  `dateadded` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`member`, `model`, `dateadded`) VALUES
('info@lasgrutasrn.com.ar', '$tempUser', '2012-05-29 09:05:29'),
('iuri_maicon@hotmail.com', '$tempUser', '2012-05-28 10:05:44'),
('diminossi@yahoo.com.br', '$tempUser', '2012-05-28 10:05:09'),
('', 'Model', '2014-01-24 03:01:12'),
('', 'Jennifer', '2014-06-29 05:06:18'),
('Member', 'Ella', '2016-01-25 09:01:43'),
('', 'Pamela', '2016-01-23 09:01:09'),
('Member', 'Annette', '2016-01-26 12:01:05'),
('Member', 'Amanda', '2016-01-24 01:01:38'),
('Member', 'Abby', '2016-01-26 12:01:43'),
('Member', 'Trinity', '2016-01-26 01:01:32'),
('Member', 'Nicole', '2016-01-26 04:01:35'),
('Member', 'Model', '2016-01-27 05:01:33'),
('Member', 'Sylvia', '2016-01-26 01:01:32'),
('Tester', 'Model', '0000-00-00 00:00:00'),
('Tester', '/Becky/', '2018-12-24 01:12:39'),
('', 'Aurora', '2016-10-19 10:10:10'),
('', 'Teresa', '2016-10-19 03:10:32'),
('Tester', '', '2018-12-24 01:12:39'),
('Tester', '/Model/', '2018-12-24 01:12:55'),
('Tester', '/Cassy/', '2018-12-24 01:12:29'),
('Tester', 'Alyssa', '2018-12-24 01:12:00'),
('Tester', 'Lori', '2018-12-24 01:12:07'),
('Tester', 'Kira', '2018-12-24 01:12:24'),
('Tester', 'Cassy', '2018-12-24 03:12:43'),
('Tester', 'Amanda', '2018-12-24 02:12:09'),
('Tester', 'Beverley', '2018-12-24 02:12:53'),
('Tester', 'Ella', '2018-12-24 02:12:19'),
('Tester', 'Trinity', '2018-12-24 08:12:05'),
('Tester', 'Becky', '2018-12-24 12:12:40'),
('Tester', 'Rachel', '2018-12-24 04:12:10'),
('Tester', 'Teresa', '2018-12-26 07:12:41'),
('', 'Abby', '2019-02-14 09:02:57'),
('', 'Frankie', '2019-03-18 05:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `modelpictures`
--

CREATE TABLE `modelpictures` (
  `ID` int(25) NOT NULL,
  `user` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `dateuploaded` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modelpictures`
--

INSERT INTO `modelpictures` (`ID`, `user`, `name`, `dateuploaded`) VALUES
(111275, 'Model', '8242888fd5f7c9a53aeb80f9bcb8fb83', 1390707097),
(111276, 'Model', '99c98ba43c244bb5595e3a8d6eb2b2eb', 1390707108),
(111277, 'Model', '54bf46273f56f2f031c571ac952c3fe0', 1390707117),
(111278, 'Model', '3eb2172223a9af906df710a80374566d', 1390707127),
(111279, 'Model', '060ebbfa6396ed9e78c6fe5aebd6fc7e', 1390707147),
(111280, 'Model', 'ea3b97cb053686ef6ccdae31aeaa504d', 1390707165),
(111281, 'Model', '24b7f0dba249f84810d3894c40220bad', 1390707176),
(111282, 'Model', '77233bcdd6101cc95d36c0662616f999', 1390707186),
(111283, 'Model', '4ac4520a0a7dd35517355ac4a7ded065', 1390707201),
(111284, 'Model', '7da7c98e77c79581c73bcec3cba1665b', 1390707212);

-- --------------------------------------------------------

--
-- Table structure for table `modelshows`
--

CREATE TABLE `modelshows` (
  `user` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(24) NOT NULL DEFAULT '',
  `string` varchar(32) NOT NULL DEFAULT '',
  `previewtime` bigint(20) NOT NULL DEFAULT 0,
  `movietime` bigint(20) NOT NULL DEFAULT 0,
  `price` mediumint(9) NOT NULL DEFAULT 300
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `tokens` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `price`, `tokens`) VALUES
(15, 'Bronze', '20.00', 30),
(16, 'Silver', '50.00', 70),
(17, 'Gold', '100.00', 150),
(18, 'Platinum', '200.00', 275),
(26, 'Big', '300.00', 400),
(27, 'Bigger', '400.00', 550),
(28, 'Huge', '500.00', 700),
(29, 'Ultimate', '750.00', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `pagseguro`
--

CREATE TABLE `pagseguro` (
  `id` int(11) NOT NULL,
  `referencia` varchar(15) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` varchar(32) NOT NULL,
  `item` varchar(20) NOT NULL,
  `descrip` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `moneda` varchar(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `id_transac` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagseguro`
--

INSERT INTO `pagseguro` (`id`, `referencia`, `fecha`, `usuario`, `item`, `descrip`, `valor`, `moneda`, `estado`, `id_transac`) VALUES
(22, '20120528153703', '2012-05-28 15:37:03', 'svvg6@yahoo.es', 'C25', '25 Creditos', 25, 'BRL', 'Pré', ''),
(2, '20120517155304', '2012-05-17 15:53:04', 'diminossi@yahoo.com.br', 'C1', '1 Creditos', 1, 'BRL', 'Cancelado', 'A926C0860F164C7E97318C0AEF262BA8'),
(3, '20120517155511', '2012-05-17 15:55:11', 'diminossi@yahoo.com.br', 'C1', '1 Creditos', 1, 'BRL', 'Completo', 'DBEFB6EDC2034A94B0CCD68E1A8F3B40'),
(21, '20120523165309', '2012-05-23 16:53:09', 'jeffersonrn17@hotmail.com', 'C10', '10 Creditos', 10, 'BRL', 'Pré', ''),
(5, '20120517160908', '2012-05-17 16:09:08', 'diminossi@yahoo.com.br', 'C1', '1 Creditos', 1, 'BRL', 'Completo', 'BE56EA962BFC451BB0EF96DA3093FDAD'),
(6, '20120517182359', '2012-05-17 18:23:59', 'diminossi@yahoo.com.br', 'C10', '10 Creditos', 10, 'BRL', 'Completo', '34629C9F2B0346068D96FC7FC866417A'),
(20, '20120523153333', '2012-05-23 15:33:33', 'prwesley@gmail.com', 'C50', '50 Creditos', 50, 'BRL', 'Pré', ''),
(19, '20120521180758', '2012-05-21 18:07:58', 'diminossi@yahoo.com.br', 'C10', '10 Creditos', 10, 'BRL', 'Completo', 'FC92A73C014C414D8FEE3BE47265BCD7'),
(10, '20120518001059', '2012-05-18 00:10:59', 'diminossi@yahoo.com.br', 'C10', '10 Creditos', 10, 'BRL', 'WAITING_PAYMENT', ''),
(23, '20120602084128', '2012-06-02 08:41:28', 'mario.hiroshiishihara@gmail.com', 'C150', '150 Creditos', 150, 'BRL', 'Aprovado', '1E3839B76C0B42EBBDAFC4E35A156D96'),
(16, '20120518224535', '2012-05-18 22:45:35', 'diminossi@yahoo.com.br', 'C10', '10 Creditos', 10, 'BRL', 'Completo', '3C5BB5D2779F4761BB10433933EB414D'),
(17, '20120521115146', '2012-05-21 11:51:46', 'diminossi@yahoo.com.br', 'C10', '10 Creditos', 10, 'BRL', 'Completo', '7E90218859814F3FB58580A6E582F94F'),
(18, '20120521122507', '2012-05-21 12:25:07', 'diminossi@yahoo.com.br', 'C1', '1 Creditos', 1, 'BRL', 'Completo', 'A814F85106254340AA7712294E00649C'),
(24, '20120606204138', '2012-06-06 20:41:38', 'cmessias4@gmail.com', 'C25', '25 Creditos', 25, 'BRL', 'Pré', '');

-- --------------------------------------------------------

--
-- Table structure for table `payccbill`
--

CREATE TABLE `payccbill` (
  `code` int(11) NOT NULL,
  `act` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frmname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codtxt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payccbill`
--

INSERT INTO `payccbill` (`code`, `act`, `subact`, `frmname`, `codtxt`) VALUES
(1, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `paymentgate`
--

CREATE TABLE `paymentgate` (
  `code` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgate`
--

INSERT INTO `paymentgate` (`code`, `email`, `url`) VALUES
(1, 'dfg', 'dfg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `date` bigint(24) NOT NULL DEFAULT 0,
  `ammount` varchar(24) NOT NULL DEFAULT '',
  `taxes` varchar(24) NOT NULL DEFAULT '',
  `method` varchar(12) NOT NULL DEFAULT '',
  `details` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `date`, `ammount`, `taxes`, `method`, `details`) VALUES
('', 1403982450, '', '0', '', ''),
('', 1403956227, '', '0', '', ''),
('13247bf0825aa3a12dab0072400ab4dd', 1403982446, '195', '0', 'pp', 'support@camscripts.com'),
('13247bf0825aa3a12dab0072400ab4dd', 1403956226, '150', '0', 'pp', 'support@camscripts.com'),
('13247bf0825aa3a12dab0072400ab4dd', 1403983492, '195', '0', 'pp', 'support@camscripts.com'),
('13247bf0825aa3a12dab0072400ab4dd', 1403983251, '195', '0', 'pp', 'support@camscripts.com'),
('', 1403982985, '', '0', '', ''),
('', 1403982885, '', '0', '', ''),
('13247bf0825aa3a12dab0072400ab4dd', 1403982981, '195', '0', 'pp', 'support@camscripts.com'),
('13247bf0825aa3a12dab0072400ab4dd', 1403982882, '195', '0', 'pp', 'support@camscripts.com');

-- --------------------------------------------------------

--
-- Table structure for table `payzombaio`
--

CREATE TABLE `payzombaio` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `pricing_id` int(11) NOT NULL,
  `gwpass` text COLLATE utf8_unicode_ci NOT NULL,
  `approve_url` text COLLATE utf8_unicode_ci NOT NULL,
  `decline_url` text COLLATE utf8_unicode_ci NOT NULL,
  `salt` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payzombaio`
--

INSERT INTO `payzombaio` (`id`, `site_id`, `pricing_id`, `gwpass`, `approve_url`, `decline_url`, `salt`) VALUES
(1, 287658909, 1966584, '171CN804QMUN5859H1OB', 'http://cj4.buildsite1.info/cp/chatusers/zombaiomakepayment.php', 'http://cj4.buildsite1.info/cp/chatusers/buyminutes.php', 'IKfjAKCiPZoFfSHpid6TEbb6');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`type`, `value`) VALUES
('license_key', 'c3366c4756f202b03154ecb2a8773a8c');

-- --------------------------------------------------------

--
-- Table structure for table `videosessions`
--

CREATE TABLE `videosessions` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `member` varchar(32) NOT NULL DEFAULT '',
  `model` varchar(32) NOT NULL DEFAULT '',
  `sop` varchar(32) NOT NULL DEFAULT '',
  `cpm` mediumint(9) NOT NULL DEFAULT 0,
  `epercentage` smallint(6) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `paid` char(1) NOT NULL DEFAULT '',
  `soppaid` char(1) NOT NULL DEFAULT '0',
  `type` varchar(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videosessions`
--

INSERT INTO `videosessions` (`sessionid`, `member`, `model`, `sop`, `cpm`, `epercentage`, `date`, `duration`, `paid`, `soppaid`, `type`) VALUES
('b263b187cdd84fff34c1d20f53d35a97', 'Member', 'Model', 'none', 200, 50, 1403981334, 60, '1', '0', 'tip'),
('6fb140d28058b0926777e7042e595728', 'Member', 'Model', 'none', 190, 50, 1403981283, 60, '1', '0', 'tip'),
('e86041e417ddc20fc8374399fb0a0e26', 'Member', 'Model', 'none', 100, 50, 1403956184, 60, '1', '0', 'tip'),
('ae4696dd0a89a68fe7cb9f479af89672', 'Member', 'Model', 'none', 200, 50, 1403956025, 60, '1', '0', 'tip'),
('2f87f1805918b981e4bdfedf7dc3c9b4', 'Member', 'Model', 'none', 10, 50, 1455281902, 60, '0', '0', 'tip'),
('0801cb8388ae9fef3f9a39bc00c9579f', 'Member', 'Model', 'none', 10, 50, 1455282248, 60, '0', '0', 'tip'),
('cb8c234cfd8e3864386e8edd8f1be857', 'Member', 'Zoe', '', 10, 50, 1455283254, 60, '0', '0', 'tip'),
('516781776f12de665a13fd7fbc69dd74', 'Member', 'Zoe', '', 10, 50, 1455283708, 60, '0', '0', 'show'),
('689c78df05528c186501e1658e37201e', 'Member', 'Zoe', '', 10, 50, 1455283768, 60, '0', '0', 'show'),
('167748f09f6bcd67cbd1b0f3010d95b2', 'Member', 'Zoe', '', 10, 50, 1455284488, 60, '0', '0', 'show'),
('b17070d406d2ce07b4a605b516f073e9', 'Member', 'Zoe', '', 10, 50, 1455284897, 60, '0', '0', 'show'),
('6dcf2a97b8ce7d1b5e4a162afab624bc', 'Member', 'Zoe', '', 10, 50, 1455284958, 60, '0', '0', 'show'),
('727dd5321f1ec9837f8cecf5fececdda', 'Member', 'Zoe', '', 10, 50, 1455285018, 60, '0', '0', 'show'),
('59d9c9bf2e479f5226ea35281e789ec9', 'Member', 'Zoe', '', 10, 50, 1455285079, 60, '0', '0', 'show'),
('d3796c94cd51f1e8330a451f5e4d357f', 'Member', 'Zoe', '', 10, 50, 1455285139, 60, '0', '0', 'show'),
('90516345b2c52771764cb92bccd834ec', 'Member', 'Zoe', '', 10, 50, 1455285198, 60, '0', '0', 'show'),
('1e0a4930cc00d770d8ab2ae19e4bae8f', 'Member', 'Zoe', '', 10, 50, 1455285259, 60, '0', '0', 'show'),
('4a472409ad7ceae33873f66e1247a6c2', 'Member', 'Zoe', '', 10, 50, 1455285319, 60, '0', '0', 'show'),
('462ad74b82773f8b7a83f7c029fbe4db', 'Member', 'Zoe', '', 10, 50, 1455285378, 60, '0', '0', 'show'),
('0e5b0c07275c51b1c3843286bf6865a1', 'Member', 'Zoe', '', 10, 50, 1455285439, 60, '0', '0', 'show'),
('9915f6bfff8c70e949d747dbc2d8688f', 'Member', 'Zoe', '', 10, 50, 1455285499, 60, '0', '0', 'show'),
('b8284c952445347503a7762b584f0279', 'Member', 'Zoe', '', 10, 50, 1455285559, 60, '0', '0', 'show'),
('fe9bbc581207925962a30a01e5f0ec52', 'Member', 'Zoe', '', 10, 50, 1455285619, 60, '0', '0', 'show'),
('e84bd11ecc4d33fbb4924718b39337a3', 'Member', 'Zoe', '', 10, 50, 1455285679, 60, '0', '0', 'show'),
('581b1dad96013ce08622d2a98ed5e85b', 'Member', 'Zoe', '', 10, 50, 1455285739, 60, '0', '0', 'show'),
('8f838752b8ae985f9a5c34c414344777', 'Member', 'Zoe', '', 10, 50, 1455285799, 60, '0', '0', 'show'),
('a203d9ce3cee320d5e31f012605853d5', 'Member', 'Zoe', '', 10, 50, 1455286146, 60, '0', '0', 'show'),
('fa5b417da2c2e3a186807d755d7535f8', 'Member', 'Zoe', '', 10, 50, 1455286208, 60, '0', '0', 'show'),
('d4a99b53f3d7a54c36eff2f8d1222ba2', 'Member', 'Zoe', '', 10, 50, 1455286268, 60, '0', '0', 'show'),
('a176c8cf66e3f80042a9e2f2b22cbfd7', 'Member', 'Zoe', '', 10, 50, 1455286328, 60, '0', '0', 'show'),
('a82c7454dc2886585da7c872156ba71e', 'Member', 'Zoe', '', 10, 50, 1455286389, 60, '0', '0', 'show'),
('64fd66e1d854cf7c7b9d8397657a647c', 'Member', 'Zoe', '', 10, 50, 1455616163, 60, '0', '0', 'tip'),
('b6ce592ac4b978d52c601351cfde1301', 'Member', 'Zoe', '', 10, 50, 1455616174, 60, '0', '0', 'show'),
('4e27b5d8ba1d51a65c3f8e2fc60e4e71', 'Member', 'Zoe', '', 10, 50, 1455620912, 60, '0', '0', 'show'),
('dbd864416164f53e14f9309da21abb5c', 'Member', 'Zoe', '', 10, 50, 1455620926, 60, '0', '0', 'tip'),
('438bee2039e8f5b311f9e7a2e8f9e5d9', 'Member', 'Zoe', '', 10, 50, 1455620933, 60, '0', '0', 'tip'),
('c3ec90cbe90898e1fcb90c182be2ff5d', 'Member', 'Zoe', '', 10, 50, 1455620971, 60, '0', '0', 'show'),
('4e994ab70f1f594ac62d7d13398886f6', 'Member', 'Zoe', '', 10, 50, 1455621033, 60, '0', '0', 'show'),
('373d5259131343654063c223893913b8', 'Member', 'Zoe', '', 10, 50, 1455621092, 60, '0', '0', 'show'),
('48658ba64095c975e219b20e85351d26', 'Member', 'Zoe', '', 10, 50, 1455621152, 60, '0', '0', 'show'),
('7191b8c7ce28df1b8a540640b5d1e42b', 'Member', 'Zoe', '', 10, 50, 1455621212, 60, '0', '0', 'show'),
('b27897b29788ec5c9f08f784a0fb02fe', 'Member', 'Zoe', '', 10, 50, 1455622966, 60, '0', '0', 'show'),
('22de1503bc6135fa20f821a9325b4d26', 'Member', 'Zoe', '', 10, 50, 1455669101, 60, '0', '0', 'show'),
('c56d5d5cfca6c3245897a2aa5904fdf4', 'Tester', 'Model', 'none', 10, 50, 1473588737, 60, '0', '0', 'show'),
('8fdf788bf179bf24153e73859cba9873', 'Tester', 'Model', 'none', 10, 50, 1473588796, 60, '0', '0', 'show'),
('0cd682a1d6938f92e9b346bf7976c6af', 'Tester', 'Model', 'none', 10, 50, 1473588856, 60, '0', '0', 'show'),
('3024411e5247f867ed4695c70ec06013', 'Tester', 'Model', 'none', 10, 50, 1473588917, 60, '0', '0', 'show'),
('acf52853180aca6e89394c2bf5834ede', 'Tester', 'Model', 'none', 0, 50, 1473592109, 60, '0', '0', 'tip'),
('08b6448c0916f8aab17bbdf58e57c007', 'Tester', 'Model', 'none', 0, 50, 1473592135, 60, '0', '0', 'tip'),
('c703213802a52d3a8de44570ebdad9d5', 'Tester', 'Model', 'none', 0, 50, 1473592181, 60, '0', '0', 'tip'),
('d6685aaf3afc6d8219d0b9743c984505', 'Tester', 'Model', 'none', 0, 50, 1473733427, 60, '0', '0', 'tip'),
('c22add2c3f68741c5aef89c2001556c2', 'Tester', 'Model', 'none', 0, 50, 1473734243, 60, '0', '0', 'tip'),
('02eac22ae2d7d0cb38c169748ea3b8bb', 'Tester', 'Model', 'none', 0, 50, 1473734347, 60, '0', '0', 'tip'),
('dd5e32a467abf0ee16503f3ac3fd71d9', 'Tester', 'Model', 'none', 10, 50, 1473734433, 60, '0', '0', 'tip'),
('3a1b7cfdac155375f4028245305bfc81', 'Tester', 'Model', 'none', 0, 50, 1473734882, 60, '0', '0', 'tip'),
('805f8773193129d16817b2516b99427e', 'Tester', 'Model', 'none', 10, 50, 1473734961, 60, '0', '0', 'tip'),
('fb29a2e4bcee5bdb694fd4a0fcadba68', 'Tester', 'Model', 'none', 10, 50, 1473736400, 60, '0', '0', 'tip'),
('fe494090a35c38495fd324878997654b', 'Tester', 'Model', 'none', 10, 50, 1473739324, 60, '0', '0', 'tip'),
('8110987fc10385daa46b83e40e785e3a', 'Tester', 'Model', 'none', 10, 50, 1473739757, 60, '0', '0', 'tip'),
('2c194809ccf595802c9c8faccd4ca200', 'Tester', 'Model', 'none', 10, 50, 1473739842, 60, '0', '0', 'tip'),
('43f495ff3b6dcafb30bcf6ac894c25cf', 'Tester', 'Model', 'none', 10, 50, 1473739926, 60, '0', '0', 'tip'),
('ef7e2f871c8cf8c45c47f0f18612e8fd', 'Tester', 'Model', 'none', 10, 50, 1473740201, 60, '0', '0', 'tip'),
('39b3e89b152f94c485ecc61481f8c782', 'Tester', 'Model', 'none', 10, 50, 1473740401, 60, '0', '0', 'tip'),
('b22413b49fc30a7fddce33e7d3082323', 'Tester', 'Model', 'none', 10, 50, 1473740506, 60, '0', '0', 'tip'),
('5f921259e4c7115c109eebd6b1357f43', 'Tester', 'Model', 'none', 10, 50, 1473740547, 60, '0', '0', 'tip'),
('7667a22845dbffc930c37e2ad8e8ada1', 'Tester', 'Model', 'none', 10, 50, 1473740767, 60, '0', '0', 'tip'),
('b32532bcb8b958cc9340632f43a94657', 'Tester', 'Model', 'none', 10, 50, 1473740813, 60, '0', '0', 'tip'),
('29436e2263571d6a335c85acfeb776b1', 'Tester', 'Model', 'none', 10, 50, 1473740827, 60, '0', '0', 'tip'),
('7f7cd2d0e41938a1d454b07164012bbf', 'Tester', 'Model', 'none', 10, 50, 1473741005, 60, '0', '0', 'tip'),
('043b25edca5a71637b5d09c8bfde1ffb', 'Tester', 'Model', 'none', 10, 50, 1473741083, 60, '0', '0', 'tip'),
('c844876a896a2f2a5ee20481f8cbadce', 'Tester', 'Model', 'none', 10, 50, 1473741198, 60, '0', '0', 'tip'),
('9436aa61fa59d12581e8e8bccd999b55', 'Tester', 'Model', 'none', 10, 50, 1473741326, 60, '0', '0', 'tip'),
('e4487f180760c4352cd13ef920f52ef6', 'Tester', 'Model', 'none', 10, 50, 1473741372, 60, '0', '0', 'tip'),
('fb74647cdad2d15acedf43e5f205fba6', 'Tester', 'Model', 'none', 10, 50, 1473743845, 60, '0', '0', 'tip'),
('d428f30a2f79c858cd7ff5ae73cc2da4', 'Tester', 'Model', 'none', 10, 50, 1473746011, 60, '0', '0', 'tip'),
('1b22822cf63d7f95a21d9451c85190bc', 'Tester', 'Model', 'none', 10, 50, 1473754170, 60, '0', '0', 'tip'),
('898bb7c8140a272e2bd3a4f54794e238', 'Tester', 'Model', 'none', 10, 50, 1473754176, 60, '0', '0', 'tip'),
('ee262d222ebc1eb9512acd8b57594c77', 'Tester', 'Model', 'none', 10, 50, 1473755894, 60, '0', '0', 'show'),
('94ab68eddfcfa676b18606849fd56ebb', 'Tester', 'Model', 'none', 10, 50, 1473755954, 60, '0', '0', 'show'),
('cef7c2308c0de1fc1ab99e0bd9f17523', 'Tester', 'Model', 'none', 10, 50, 1473756015, 60, '0', '0', 'show'),
('8ebb3a7402253b60d9b0a8df1625a164', 'Tester', 'Model', 'none', 10, 50, 1473756075, 60, '0', '0', 'show'),
('877b2951c4950fba4faf5a32c0e2142e', 'Tester', 'Model', 'none', 10, 50, 1473756134, 60, '0', '0', 'show'),
('62600b28a6bfbaef02447f8979b856ee', 'Tester', 'Model', 'none', 10, 50, 1473756194, 60, '0', '0', 'show'),
('0348a9cfed70d2199b5875d00085d207', 'Tester', 'Model', 'none', 10, 50, 1473756254, 60, '0', '0', 'show'),
('a6a5534982ed6f4ce392b202f870b60c', 'Tester', 'Model', 'none', 10, 50, 1473756995, 60, '0', '0', 'tip'),
('5b7acf519c43d461948ae9d7fe477815', 'Tester', 'Model', 'none', 10, 50, 1473757008, 60, '0', '0', 'show'),
('924f23c58db4b0dda21938a8fbc9f1e2', 'Tester', 'Model', 'none', 10, 50, 1473757208, 60, '0', '0', 'show'),
('9e6440be9d95ee4f98c10b9929ff1429', 'Tester', 'Model', 'none', 10, 50, 1473757289, 60, '0', '0', 'show'),
('ec0b19d559e8eb225289adb037d12e23', 'Tester', 'Model', 'none', 10, 50, 1473757446, 60, '0', '0', 'show'),
('f4a7fcf72087624abe82b310cd97c4e9', 'Tester', 'Model', 'none', 10, 50, 1473758196, 60, '0', '0', 'show'),
('776ec104d4ad9cbb0c409456ffe3a28e', 'Tester', 'Model', 'none', 10, 50, 1473758212, 60, '0', '0', 'tip'),
('974c0fbda200cde56fa01e8bc1264db7', 'Tester', 'Model', 'none', 10, 50, 1473758224, 60, '0', '0', 'tip'),
('c3e90fadaf8de47f2261c27cbb6af5f4', 'Tester', 'Model', 'none', 10, 50, 1473758278, 60, '0', '0', 'show'),
('81b6ee299e6da7af22818931760b4c5d', 'Tester', 'Model', 'none', 10, 50, 1473758527, 60, '0', '0', 'show'),
('4a2e69162dc4a41ff76621dda09f3535', 'Tester', 'Model', 'none', 10, 50, 1473758955, 60, '0', '0', 'show'),
('3785e50228772f3e505c701431c0970b', 'Tester', 'Model', 'none', 10, 50, 1473759429, 60, '0', '0', 'show'),
('315345c59ade6cc6c79464a3f1cc1463', 'Tester', 'Model', 'none', 10, 50, 1473759467, 60, '0', '0', 'show'),
('f66e29d709be3158489e0192fcf7ea6d', 'Tester', 'Model', 'none', 10, 50, 1473761089, 60, '0', '0', 'show'),
('f9efd2bcadfdb3c2f78acfb007217e83', 'Tester', 'Model', 'none', 10, 50, 1473761099, 60, '0', '0', 'tip'),
('c4eec7e56c9edb25a827ec97c6541caa', 'Tester', 'Model', 'none', 10, 50, 1473761147, 60, '0', '0', 'tip'),
('9ef66836130490418b926351c7268fcf', 'Tester', 'Model', 'none', 10, 50, 1473765408, 60, '0', '0', 'show'),
('9193d037e9c51ef663e9298de4289ed8', 'Tester', 'Model', 'none', 10, 50, 1473768254, 60, '0', '0', 'show'),
('3faac5fcad7fa390cb33b9068b4e4641', 'Tester', 'Model', 'none', 10, 50, 1473768476, 60, '0', '0', 'show'),
('9e80f8a51d1b118f00385d85ac37a913', 'Tester', 'Model', 'none', 10, 50, 1473769538, 60, '0', '0', 'tip'),
('006c5a58887d8ff53a6afe1276d052ed', 'Tester', 'Model', 'none', 10, 50, 1473769568, 60, '0', '0', 'tip'),
('d0fbd62bad61385fb5a09e976a1dd4d5', 'Tester', 'Model', 'none', 10, 50, 1473770767, 60, '0', '0', 'show'),
('c7b63b23c02e96e37752167566f7de1f', 'Tester', 'Model', 'none', 10, 50, 1473770940, 60, '0', '0', 'show'),
('55b6842879fb02e340168488b1eeabe7', 'Tester', 'Model', 'none', 10, 50, 1473795526, 60, '0', '0', 'show'),
('01482e0ae608be8c2e2b6726aa7cdc6b', 'Tester', 'Model', 'none', 10, 50, 1473796480, 60, '0', '0', 'show'),
('1000390781568de630038277f09be5fc', 'Tester', 'Model', 'none', 10, 50, 1473815311, 60, '0', '0', 'tip'),
('37c84839bd92ae63b0ad486ca5e95226', 'Tester', 'Model', 'none', 10, 50, 1473816375, 60, '0', '0', 'tip'),
('05d8f71d06b784031f68b1d33f3cc0a9', 'Tester', 'Model', 'none', 10, 50, 1473822055, 60, '0', '0', 'tip'),
('f885719326da2f323ccdf1e3c1aa9f82', 'Tester', 'Model', 'none', 10, 50, 1473823622, 60, '0', '0', 'tip'),
('d2bfc6d757e26346833e5ac579749dc5', 'Tester', 'Model', 'none', 10, 50, 1473825523, 60, '0', '0', 'tip'),
('8061cb75b49b31e3cc541e1356eeeedd', 'Tester', 'Model', 'none', 1000, 50, 1473825980, 60, '0', '0', 'tip'),
('e91cb4742c2544aaba4473a857f932c8', 'Tester', 'Model', 'none', 10, 50, 1473826047, 60, '0', '0', 'tip'),
('c92aaa47395349096fdf85ba10bd8217', 'Tester', 'Model', 'none', 10, 50, 1473826110, 60, '0', '0', 'tip'),
('7b5b6c11a787a6960045c614e2bfbbb7', 'Tester', 'Model', 'none', 10, 50, 1473827017, 60, '0', '0', 'tip'),
('43b68bb8a739188597f8e2ee8139e341', 'Tester', 'Model', 'none', 10, 50, 1473828639, 60, '0', '0', 'tip'),
('d9eec9eb7061db5aa2887afdc2d40560', 'Tester', 'Model', 'none', 10, 50, 1473828689, 60, '0', '0', 'show'),
('6487b3511713bebfd5b4fa3d5f815d36', 'Tester', 'Model', 'none', 10, 50, 1473828721, 60, '0', '0', 'tip'),
('05563a011fb4791800b46fd078cad360', 'Tester', 'Model', 'none', 10, 50, 1473828794, 60, '0', '0', 'tip'),
('9b6bd769fe54e54d98de798f0cecf03d', 'Tester', 'Model', 'none', 100, 50, 1473828800, 60, '0', '0', 'tip'),
('26a2d2647be8264128a301c115dfac44', 'Tester', 'Model', 'none', 0, 50, 1473831026, 60, '0', '0', 'tip'),
('8346591eb4030aded96ffdb986b24a54', 'Tester', 'Model', 'none', 10, 50, 1473835850, 60, '0', '0', 'tip'),
('7ecadedde871f7bec925120c4afcb8eb', 'Tester', 'Model', 'none', 10, 50, 1473836390, 60, '0', '0', 'tip'),
('c9fe2ab57a7e419d8377ceb46188b2c1', 'Tester', 'Model', 'none', 10, 50, 1473836488, 60, '0', '0', 'tip'),
('084f7390f6ca04967bc6c812516bc9e6', 'Tester', 'Model', 'none', 10, 50, 1473838151, 60, '0', '0', 'tip'),
('2be9b86a0b6b7977d3c3b1512d8b890e', 'Tester', 'Model', 'none', 10, 50, 1473841874, 60, '0', '0', 'tip'),
('97e47b2542f1e4e9da60a55a688a6404', 'Tester', 'Model', 'none', 10, 50, 1473841879, 60, '0', '0', 'show'),
('6a1f39353cc3eb74b91eb94ace1de42c', 'Tester', 'Model', 'none', 10, 50, 1473841939, 60, '0', '0', 'show'),
('35125c785cb33da0023c171574e6b5c0', 'Tester', 'Model', 'none', 10, 50, 1473841999, 60, '0', '0', 'show'),
('9aa398568525d4f963f502ed6c57f9d9', 'Tester', 'Model', 'none', 10, 50, 1473842059, 60, '0', '0', 'show'),
('b270de2a0fbcf3f810dfbb1858f80830', 'Tester', 'Model', 'none', 10, 50, 1473842120, 60, '0', '0', 'show'),
('12cc8506e993ee822a4cbb2ca079b88b', 'Tester', 'Model', 'none', 10, 50, 1473842179, 60, '0', '0', 'show'),
('3dfa756f637d8f11e77ec0bfcc20cfa1', 'Tester', 'Model', 'none', 10, 50, 1473842239, 60, '0', '0', 'show'),
('e4bb8e5d75e25fbaf95515c6e7a6b916', 'Tester', 'Model', 'none', 10, 50, 1473842299, 60, '0', '0', 'show'),
('6ee71d8a91c7711b8e50a61a6bcd6aab', 'Tester', 'Model', 'none', 10, 50, 1473842360, 60, '0', '0', 'show'),
('8a61224c9a67e7b53dc66936d71f0d7c', 'Tester', 'Model', 'none', 10, 50, 1473842420, 60, '0', '0', 'show'),
('47be9a123697febe84e87b9f0560bf0e', 'Tester', 'Model', 'none', 10, 50, 1473842479, 60, '0', '0', 'show'),
('e600a6ab22082a30feb46beb07aa1844', 'Tester', 'Model', 'none', 10, 50, 1473842539, 60, '0', '0', 'show'),
('64bf5dbad53f8b9168b8749aeea94f98', 'Tester', 'Model', 'none', 10, 50, 1473842599, 60, '0', '0', 'show'),
('9a0ed8407154dc085b811380c9e5b43e', 'Tester', 'Model', 'none', 10, 50, 1473842660, 60, '0', '0', 'show'),
('46f49dad9dc25c8fc08c571d49dad8c8', 'Tester', 'Model', 'none', 10, 50, 1473842719, 60, '0', '0', 'show'),
('a32070c16d9bb83a222132c68bfd17ea', 'Tester', 'Model', 'none', 10, 50, 1473842779, 60, '0', '0', 'show'),
('52c503a61f94af4eaf5a564d38e6e26f', 'Tester', 'Model', 'none', 10, 50, 1473842839, 60, '0', '0', 'show'),
('ae64ef288302869091982f6583940a67', 'Tester', 'Model', 'none', 10, 50, 1473842899, 60, '0', '0', 'show'),
('04383b9720142ac60be99512081ae0ce', 'Tester', 'Model', 'none', 10, 50, 1473842960, 60, '0', '0', 'show'),
('12cd4befd28f2d9b42ff355a4134f80e', 'Tester', 'Model', 'none', 10, 50, 1473843019, 60, '0', '0', 'show'),
('8abc0e9676cab10464009e0cf1c39b63', 'Tester', 'Model', 'none', 10, 50, 1473843079, 60, '0', '0', 'show'),
('eb349eb5889853b5deb20db96b99e4f8', 'Tester', 'Model', 'none', 10, 50, 1473843140, 60, '0', '0', 'show'),
('5e7d4afba0de96170a1777ad8f271f08', 'Tester', 'Model', 'none', 10, 50, 1473843199, 60, '0', '0', 'show'),
('35d3265d34c26f46c09d427810e61ef4', 'Tester', 'Model', 'none', 10, 50, 1473843259, 60, '0', '0', 'show'),
('a45f13b89bf12c6955fd65db66919931', 'Tester', 'Model', 'none', 10, 50, 1473843320, 60, '0', '0', 'show'),
('9dec511fd970a749e5676f4d23c50c55', 'Tester', 'Model', 'none', 10, 50, 1473843379, 60, '0', '0', 'show'),
('26789f4e78e1ea5aed5e6f669997a2e7', 'Tester', 'Model', 'none', 10, 50, 1473843439, 60, '0', '0', 'show'),
('fa4d0329686b4e306c89b1223947314e', 'Tester', 'Model', 'none', 10, 50, 1473843499, 60, '0', '0', 'show'),
('3921f4000cfa139e000296d5963c43e9', 'Tester', 'Model', 'none', 10, 50, 1473843560, 60, '0', '0', 'show'),
('1158422ebfe58c5ab4a7f64b2d0645ce', 'Tester', 'Model', 'none', 10, 50, 1473843620, 60, '0', '0', 'show'),
('4fd53495a4c0a4d12817c353389c3d32', 'Tester', 'Model', 'none', 10, 50, 1473843679, 60, '0', '0', 'show'),
('619a1b7624f66843e2396506327370eb', 'Tester', 'Model', 'none', 0, 50, 1473844134, 60, '0', '0', 'tip'),
('a96309854517c78265319cc23df0888c', 'Tester', 'Model', 'none', 10, 50, 1473844230, 60, '0', '0', 'tip'),
('5027b17ef470632c45b075f3e43cbc60', 'Tester', 'Model', 'none', 10, 50, 1473854375, 60, '0', '0', 'tip'),
('07276cca76b3d250eff34994ff91e05d', 'Tester', 'Model', 'none', 10, 50, 1473854679, 60, '0', '0', 'tip'),
('929182ad84e4e016d147fec766c25c76', 'Tester', 'Model', 'none', 10, 50, 1473858057, 60, '0', '0', 'tip'),
('8b383aebb8de4cc59023585f33095b5a', 'Tester', 'Model', 'none', 10, 50, 1473870410, 60, '0', '0', 'tip'),
('496967d486cc24460bd8f34eb7f3d6ed', 'Tester', 'Model', 'none', 10, 50, 1473871764, 60, '0', '0', 'tip'),
('c18adf1aeb0947e6ab5fcf2dd196ed46', 'Tester', 'Model', 'none', 10, 50, 1474088094, 60, '0', '0', 'tip'),
('3a9d4f17c9ea5d656770d516dcda0285', 'Tester', 'Trinity', '', 10, 50, 1476707228, 60, '0', '0', 'tip'),
('5f7e470b00b93b5af6ccb5e8292d9eda', 'Tester', 'Model', 'none', 10, 50, 1476708717, 60, '0', '0', 'show'),
('3171ed8083a02ecf70f83ab3f152eaec', 'Tester', 'Model', 'none', 10, 50, 1476708777, 60, '0', '0', 'show'),
('9c14d70d32a832aaf143d01506af7e99', 'Tester', 'Model', 'none', 10, 50, 1476839869, 60, '0', '0', 'show'),
('6d2747d3064b1bd8e0730de28bb38dad', 'Tester', 'Model', 'none', 10, 50, 1476839929, 60, '0', '0', 'show'),
('88f4e811b5e11edcdecc50898f1ab13c', 'Tester', 'Model', 'none', 10, 50, 1476840015, 60, '0', '0', 'tip'),
('3e6f6639202354a0cd42caa13853b5a5', 'Tester', 'Model', 'none', 10, 50, 1476840115, 60, '0', '0', 'show'),
('e6c1605a6bea68eaf89040cd8b7678e0', 'Tester', 'Model', 'none', 10, 50, 1476840236, 60, '0', '0', 'show'),
('fa0f896f4c336602f38060149f543043', 'Tester', 'Model', 'none', 10, 50, 1476840662, 60, '0', '0', 'show'),
('7f393615ae507808c3dd9ffec9b614dc', 'Tester', 'Model', 'none', 10, 50, 1476840722, 60, '0', '0', 'show'),
('97ee29514c8f742cfafa96e0489dfec0', 'Tester', 'Model', 'none', 10, 50, 1476840798, 60, '0', '0', 'show'),
('230ce543df29b90dacc6026d9523b00c', 'Tester', 'Model', 'none', 10, 50, 1476840858, 60, '0', '0', 'show'),
('bc1df0338d0c91a735f900185b145031', 'Tester', 'Model', 'none', 10, 50, 1476840862, 60, '0', '0', 'tip'),
('94a50526ea21a74b0030a06cd6340436', 'Tester', 'Model', 'none', 10, 50, 1476840918, 60, '0', '0', 'show'),
('9d0fd9bc0bd76e566d92ef6094dd19c6', 'Member', 'Nicole', '', 10, 50, 1542305570, 60, '0', '0', 'tip'),
('2f14b046a912f113ebb0ca61c770dad3', 'Member', 'Ella', '', 10, 50, 1542306648, 60, '0', '0', 'tip'),
('471d84c32fad40fb14aa382a3fd0268d', 'Tester', 'Model', 'none', 10, 50, 1543012519, 60, '0', '0', 'tip'),
('a6e19a6336863e6612281878740364ff', 'Tester', 'Model', 'none', 10, 50, 1543012542, 60, '0', '0', 'show'),
('e979ec7dd0bd84e47e835a41b024c592', 'Tester', 'Model', 'none', 10, 50, 1543012602, 60, '0', '0', 'show'),
('b4f33985b44815637d9114ca1864345d', 'Tester', 'Model', 'none', 10, 50, 1543012731, 60, '0', '0', 'tip'),
('dec6fc9dd4692f8d5173b054d44858df', 'Tester', 'Model', 'none', 10, 50, 1543012738, 60, '0', '0', 'tip'),
('aa8fda6dbd396d3ba7fb1f55a27d9b28', 'Tester', 'Model', 'none', 10, 50, 1543012774, 60, '0', '0', 'tip'),
('db9f892e589aea2f0cb777a6abd47ca1', 'Tester', 'Model', 'none', 10, 50, 1543012804, 60, '0', '0', 'show'),
('02bdefce23a060d693a6a964c4ddd9a4', 'Tester', 'Model', 'none', 10, 50, 1543013528, 60, '0', '0', 'show'),
('72883c80424ea67483be4c5f6808e6ce', 'Tester', 'Model', 'none', 10, 50, 1543013633, 60, '0', '0', 'show'),
('102778397a8cedab400e25a9b24b05dd', 'Tester', 'Model', 'none', 10, 50, 1543013694, 60, '0', '0', 'show'),
('849c0f733f6253902d0b0dabe9cd2538', 'Tester', 'Model', 'none', 10, 50, 1543013753, 60, '0', '0', 'show'),
('4213d2e9eef404b409c6d9f3f3cad067', 'Tester', 'Model', 'none', 10, 50, 1543014115, 60, '0', '0', 'show'),
('f1dce627e947174285dc3577a6ca01f2', 'Tester', 'Model', 'none', 10, 50, 1543014175, 60, '0', '0', 'show'),
('849aa032b13bebae53bb01bc684d505d', 'Tester', 'Model', 'none', 10, 50, 1543040722, 60, '0', '0', 'tip'),
('bd734c77e95b9d5a8a5b36beb4dfd130', 'Tester', 'Model', 'none', 10, 50, 1543041317, 60, '0', '0', 'tip'),
('98fa7e87dc9143096a4c5f8fa191708a', 'Tester', 'Model', 'none', 10, 50, 1543041678, 60, '0', '0', 'tip'),
('7837f89ed740b3376f3aef4f2a8789f5', 'Tester', 'Model', 'none', 10, 50, 1543041830, 60, '0', '0', 'tip'),
('25f56759f9fadaf2dfa011f1e74e4382', 'Tester', 'Model', 'none', 10, 50, 1543042282, 60, '0', '0', 'tip'),
('61678ea8d759229c008bb3c29980da59', 'Tester', 'Model', 'none', 10, 50, 1543083812, 60, '0', '0', 'tip'),
('8637d8b03faaf5618035520632fa12b6', '', 'Sadie', '', 10, 50, 1543088415, 60, '0', '0', 'tip'),
('b6f8d96c00d2b2f64fcc8d299e5155ed', '', 'Model', 'none', 10, 50, 1543092593, 60, '0', '0', 'tip'),
('6eb4b186a27498bcad40a5642d35e5a1', '', 'Model', 'none', 10, 50, 1543111944, 60, '0', '0', 'tip'),
('6b546a8a65c19c33fb314e23417e0235', '', 'Model', 'none', 10, 50, 1543154739, 60, '0', '0', 'show'),
('94406011b44b35c405ea2d72d2a0fa6a', '', 'Model', 'none', 10, 50, 1543154799, 60, '0', '0', 'show'),
('58b99015db60031b55fb2abf43beef38', '', 'Model', 'none', 10, 50, 1543420768, 60, '0', '0', 'show'),
('a079f9b55f88dcc559eaa9260825530d', '', 'Model', 'none', 10, 50, 1543684550, 60, '0', '0', 'show'),
('2cfcd78bad2c290c988ec655f6c99e09', 'Tester', 'Model', 'none', 10, 50, 1543784406, 60, '0', '0', 'tip'),
('e91d38f5781988dac7e4836a67aa74bb', 'Tester', 'Model', 'none', 10, 50, 1543784451, 60, '0', '0', 'tip'),
('2cc90c843135e53841b787e3b692746e', 'Tester', 'Model', 'none', 10, 50, 1543784461, 60, '0', '0', 'tip'),
('eb803a0675443c9c3d8a54f03ca27e5e', 'Tester', 'Model', 'none', 10, 50, 1543784466, 60, '0', '0', 'tip'),
('071b48a4f78dc05011ab1369f2d75e8b', 'Tester', 'Model', 'none', 10, 50, 1543784479, 60, '0', '0', 'tip'),
('0ec99e87cd863597fab42efa2321247b', 'Tester', 'Model', 'none', 10, 50, 1543784822, 60, '0', '0', 'tip'),
('ebbbaee266718a775c55e7ace6faf5f1', 'Tester', 'Model', 'none', 10, 50, 1543784834, 60, '0', '0', 'tip'),
('99001d52b5c811283bd374f033f88e49', 'Tester', 'Model', 'none', 10, 50, 1543784837, 60, '0', '0', 'tip'),
('5e552cb07bd73079b8f9fc3a1b28b607', 'Tester', 'Model', 'none', 5, 50, 1543784843, 60, '0', '0', 'tip'),
('8f6d8a34a37a4a654a87529dd43758ff', 'Tester', 'Model', 'none', 10, 50, 1543784858, 60, '0', '0', 'tip'),
('b1f0995ccc507cab980509f2e89ffcf7', 'Tester', 'Model', 'none', 10, 50, 1543784864, 60, '0', '0', 'tip'),
('69176e3e46efc2f4a66eb4673a23e45d', 'Tester', 'Model', 'none', 10, 50, 1543785107, 60, '0', '0', 'tip'),
('cb866a22c73274426098c62c292c5677', 'Tester', 'Model', 'none', 10, 50, 1543785336, 60, '0', '0', 'tip'),
('3c608218e2cbe64a4b521e5bfd5ede6f', 'Tester', 'Model', 'none', 20, 50, 1543785364, 60, '0', '0', 'tip'),
('898d64946f78fef55a4420657cbed74d', 'Tester', 'Model', 'none', 10, 50, 1543785750, 60, '0', '0', 'tip'),
('c19d8f6652289eeaa0b0057c72df92f7', 'Tester', 'Model', 'none', 10, 50, 1543786634, 60, '0', '0', 'show'),
('3a2ee845482fd2d7d5eff83c467fb51f', 'Tester', 'Model', 'none', 10, 50, 1543787606, 60, '0', '0', 'tip'),
('5a23abb4509358499089d7259b21dd72', 'Tester', 'Model', 'none', 10, 50, 1543787674, 60, '0', '0', 'tip'),
('96e87ed3228f17675c95a987fa5d678b', 'Tester', 'Model', 'none', 10, 50, 1543902769, 60, '0', '0', 'show'),
('6a7b0a0bd6ad3ac7706b3efed308504b', 'Tester', 'Model', 'none', 10, 50, 1543958980, 60, '0', '0', 'show'),
('f1c2ababc32218b05d794101dbafd76e', 'Tester', 'Model', 'none', 10, 50, 1544114941, 60, '0', '0', 'tip'),
('3457bab9a870d9dc33d8d48d97d55167', 'Tester', 'Anna', '', 10, 50, 1544115714, 60, '0', '0', 'tip'),
('5078504a0da65152b83de70f1856d448', 'Tester', 'Anna', '', 15, 50, 1544117414, 60, '0', '0', 'tip'),
('4523f16372c51b181019d619faa67f55', 'Tester', 'Model', 'none', 10, 50, 1544117479, 60, '0', '0', 'tip'),
('a5885aa37665d9afecabbbb33d414194', 'Tester', 'Model', 'none', 10, 50, 1544118121, 60, '0', '0', 'tip'),
('d93e0bb3b83dcc4d10b1751ec4b1a1bb', 'Tester', 'Model', 'none', 10, 50, 1544118128, 60, '0', '0', 'tip'),
('f77757d0ee3cf4085ce6f498710132b8', 'Tester', 'Model', 'none', 10, 50, 1544118131, 60, '0', '0', 'tip'),
('18796884c4c01b2405eef603f93ce6c0', 'Tester', 'Model', 'none', 10, 50, 1544118250, 60, '0', '0', 'tip'),
('386fb8c83196814a4f719f3ed6b88f68', 'Tester', 'Model', 'none', 10, 50, 1544118740, 60, '0', '0', 'tip'),
('6d6e0530d24ab367fca149683b5a0836', 'Tester', 'Model', 'none', 10, 50, 1544118887, 60, '0', '0', 'tip'),
('724d538a01e41c069f294905cfff281f', 'Tester', 'Model', 'none', 10, 50, 1544119117, 60, '0', '0', 'tip'),
('1546a59876b2ead78c2fb30feee6f95e', 'Tester', 'Model', 'none', 10, 50, 1544121242, 60, '0', '0', 'tip'),
('e629789b65a89dd31dcc1b177430d672', 'Tester', 'Model', 'none', 10, 50, 1544125636, 60, '0', '0', 'tip'),
('001323dfec0df25e0b5e7bfbf67def62', 'Tester', 'Model', 'none', 10, 50, 1544143316, 60, '0', '0', 'tip'),
('4cd8495023a80346c6fa7ec6be773ef2', 'Tester', 'Model', 'none', 10, 50, 1544168400, 60, '0', '0', 'tip'),
('ca2ee88e5f483ccfbd9d064532e167b9', 'Tester', 'Model', 'none', 10, 50, 1544171952, 60, '0', '0', 'show'),
('08dfe9e5da8f366eda66809a7668ffea', 'Tester', 'Model', 'none', 10, 50, 1544172078, 60, '0', '0', 'show'),
('b0ec8a69195d71435e4214df68f68697', 'Tester', 'Model', 'none', 10, 50, 1544172323, 60, '0', '0', 'show'),
('ae68cb2b02a2802dde72d259125b04f1', 'Tester', 'Model', 'none', 10, 50, 1544172810, 60, '0', '0', 'show'),
('3c4f11704a8725225738c160bd3c7051', 'Tester', 'Model', 'none', 10, 50, 1544172918, 60, '0', '0', 'show'),
('f76f6aaa1d21fcb4ad03a7581dfbe667', 'Tester', 'Model', 'none', 10, 50, 1544175007, 60, '0', '0', 'show'),
('0afcfd3a631eb93a445a6ab15b342183', 'Tester', 'Model', 'none', 10, 50, 1544175067, 60, '0', '0', 'show'),
('41ac8b446c255171003b3eccab8240f4', 'Tester', 'Model', 'none', 10, 50, 1544175127, 60, '0', '0', 'show'),
('0a4b9cafb564f233401a7bef017990c7', 'Tester', 'Model', 'none', 10, 50, 1544175188, 60, '0', '0', 'show'),
('afe31f450e9bf5cda5f37f0cfc38a1b2', 'Tester', 'Model', 'none', 10, 50, 1544175233, 60, '0', '0', 'show'),
('ee5b3b7382847d3a145ce5dfef65bc42', 'Tester', 'Model', 'none', 10, 50, 1544175562, 60, '0', '0', 'show'),
('6efc9586167956e8ffd85fdec4f5ff1e', 'Tester', 'Model', 'none', 10, 50, 1544175621, 60, '0', '0', 'show'),
('25096c0f2cac39b2b00bbe3d960006be', 'Tester', 'Model', 'none', 10, 50, 1544175682, 60, '0', '0', 'show'),
('00c6da5bd83fc5da1ab1d62848439e26', 'Tester', 'Model', 'none', 10, 50, 1544175694, 60, '0', '0', 'show'),
('656344b652a6554f60086dd9f6cf5e97', 'Tester', 'Model', 'none', 10, 50, 1544219417, 60, '0', '0', 'show'),
('ace9677346f055de74b6d557a6b35583', 'Tester', 'Model', 'none', 10, 50, 1544306081, 60, '0', '0', 'tip'),
('0696e5372801a938560b3e093a17f93b', 'Tester', 'Model', 'none', 10, 50, 1544326927, 60, '0', '0', 'show'),
('04f628df93061541ae704c32c9a25524', 'Tester', 'Model', 'none', 10, 50, 1544326987, 60, '0', '0', 'show'),
('f04e270bad24952950306a774e8c32f5', 'Tester', 'Model', 'none', 10, 50, 1544329456, 60, '0', '0', 'show'),
('ba0d613e5033aeb155f292ebbfc2e997', 'Tester', 'Model', 'none', 10, 50, 1544329518, 60, '0', '0', 'show'),
('db52413b07774509bdebacc80ddf4642', 'Tester', 'Model', 'none', 10, 50, 1544387924, 60, '0', '0', 'tip'),
('c984912aeb0b8fa9a1685bdf62f6adb9', 'Tester', 'Model', 'none', 10, 50, 1544391086, 60, '0', '0', 'tip'),
('7c6c746906869528e39a227a350635f2', 'Tester', 'Model', 'none', 10, 50, 1544391625, 60, '0', '0', 'tip'),
('9f7a292064ab9368f6849e1b8006ac1f', 'Tester', 'Model', 'none', 10, 50, 1544391659, 60, '0', '0', 'tip'),
('14285c63af9af0942626af09f370c18b', 'Tester', 'Model', 'none', 10, 50, 1544391668, 60, '0', '0', 'tip'),
('436e5d6e99be0dabf3c632e266fcc2e1', 'Tester', 'Model', 'none', 10, 50, 1544391674, 60, '0', '0', 'tip'),
('845a53780f7dadec8b170dd6fca0e753', 'Tester', 'Model', 'none', 10, 50, 1544391678, 60, '0', '0', 'tip'),
('31e13122bdc86553175c6a8eb37de55c', 'Tester', 'Model', 'none', 10, 50, 1544391681, 60, '0', '0', 'tip'),
('900f42f271b12ae267d56578431f05f4', 'Tester', 'Model', 'none', 10, 50, 1544391684, 60, '0', '0', 'tip'),
('b463541dc01edf436111f2876edb76a4', 'Tester', 'Model', 'none', 10, 50, 1544391781, 60, '0', '0', 'tip'),
('73e6179af725526728f708cdcd7ce3b6', 'Tester', 'Model', 'none', 10, 50, 1544391788, 60, '0', '0', 'tip'),
('30e542764134ae271f80aa68663c6629', 'Tester', 'Model', 'none', 10, 50, 1544391791, 60, '0', '0', 'tip'),
('2882269110f3c1cedd9cd832d94918fa', 'Tester', 'Model', 'none', 10, 50, 1544391793, 60, '0', '0', 'tip'),
('1300d146ec8e5cead01364bc7011e321', 'Tester', 'Model', 'none', 10, 50, 1544391795, 60, '0', '0', 'tip'),
('56156014dc57cea601a8f0d6ce6fcba5', 'Tester', 'Model', 'none', 10, 50, 1544391798, 60, '0', '0', 'tip'),
('e1a6168dd641eb373cc40f37d8009f15', 'Tester', 'Model', 'none', 10, 50, 1544392050, 60, '0', '0', 'tip'),
('ff1050e1ecfbb8c672655e0b76301cb3', 'Tester', 'Model', 'none', 10, 50, 1544392055, 60, '0', '0', 'tip'),
('bba50a4319987fd395aa0c235b85b2f6', 'Tester', 'Model', 'none', 10, 50, 1544392058, 60, '0', '0', 'tip'),
('5456d61cdfb90bacda072d92473b7d39', 'Tester', 'Model', 'none', 10, 50, 1544392061, 60, '0', '0', 'tip'),
('7b4ffdcd35406ff5b9203cb1993d92b5', 'Tester', 'Model', 'none', 10, 50, 1544392063, 60, '0', '0', 'tip'),
('f95921346ca1d56e0a14c64288fa1108', 'Tester', 'Model', 'none', 10, 50, 1544392072, 60, '0', '0', 'tip'),
('992b36566d4c12ed5bd2489553fabe32', 'Tester', 'Model', 'none', 10, 50, 1544392078, 60, '0', '0', 'tip'),
('1625fa4d59d1d4c26dfac9e1aef58881', 'Tester', 'Model', 'none', 10, 50, 1544392082, 60, '0', '0', 'tip'),
('8bcaa0dfeb2205c62120444529beeb4f', 'Tester', 'Model', 'none', 10, 50, 1544392108, 60, '0', '0', 'tip'),
('b5e0a76b279181963e36a6a92b9953a6', 'Tester', 'Model', 'none', 10, 50, 1544392114, 60, '0', '0', 'tip'),
('32a1adea94bc91eeb3f8208cdb4b3d5f', 'Tester', 'Model', 'none', 10, 50, 1544392123, 60, '0', '0', 'tip'),
('d416b1e0150eb8b3cdb54e2b3cf53ae5', 'Tester', 'Model', 'none', 10, 50, 1544392645, 60, '0', '0', 'tip'),
('177bde33f3f736b4496a46d622105908', 'Tester', 'Model', 'none', 10, 50, 1544392657, 60, '0', '0', 'tip'),
('fb1193291c89a62409a0579250fa45bd', 'Tester', 'Model', 'none', 10, 50, 1544392662, 60, '0', '0', 'tip'),
('8d578c141116a35acee41240209f15a3', 'Tester', 'Model', 'none', 10, 50, 1544392692, 60, '0', '0', 'tip'),
('3a6304aa1f5d6e619ff647359e54df91', 'Tester', 'Model', 'none', 10, 50, 1544392707, 60, '0', '0', 'tip'),
('869acefc244bb08ae7389ed55568a639', 'Tester', 'Model', 'none', 10, 50, 1544392735, 60, '0', '0', 'tip'),
('8deee8669d05e75c1584d7d0feda72ce', 'Tester', 'Model', 'none', 10, 50, 1544392804, 60, '0', '0', 'tip'),
('adea835fae254d4389ad11777a196538', 'Tester', 'Model', 'none', 10, 50, 1544392817, 60, '0', '0', 'tip'),
('848f6e19b36df9bfa63730550fc4adc9', 'Tester', 'Model', 'none', 10, 50, 1544392835, 60, '0', '0', 'tip'),
('a6c8068e065d8f5dc4214b92cd0794cf', 'Tester', 'Model', 'none', 10, 50, 1544395716, 60, '0', '0', 'tip'),
('945f38271c0ce03cd4cc11f1b491d2b2', 'Tester', 'Model', 'none', 0, 50, 1544395723, 60, '0', '0', 'tip'),
('6323776b64efd5c80018019e4d599495', 'Tester', 'Model', 'none', 0, 50, 1544395742, 60, '0', '0', 'tip'),
('cd34c934370728744e8c781591e77e18', 'Tester', 'Model', 'none', 10, 50, 1544395872, 60, '0', '0', 'tip'),
('d3afdb3ad4ca0e5706663b45bfb56ea9', 'Tester', 'Model', 'none', 10, 50, 1544395928, 60, '0', '0', 'tip'),
('23a4a0db87aabcb79e384c59f8cec75b', 'Tester', 'Model', 'none', 10, 50, 1544397284, 60, '0', '0', 'tip'),
('7879c73dd9ea18605c8cc58dcd55d28a', 'Tester', 'Model', 'none', 0, 50, 1544397293, 60, '0', '0', 'tip'),
('dfed2cf2aa7bfdda0edfe440945099a9', 'Tester', 'Model', 'none', 10, 50, 1544397768, 60, '0', '0', 'tip'),
('70ad0b093e6371a6a3bea8cd205d5e93', 'Tester', 'Model', 'none', 0, 50, 1544397776, 60, '0', '0', 'tip'),
('21a6e4d26c46b1e765e315d76485e841', 'Tester', 'Model', 'none', 10, 50, 1544398109, 60, '0', '0', 'tip'),
('7ce626b3c4faf8c3b1e7d70fbf010ec6', 'Tester', 'Model', 'none', 0, 50, 1544398119, 60, '0', '0', 'tip'),
('d80337b0e248876d74bd62059cf8edd9', 'Tester', 'Model', 'none', 10, 50, 1544398209, 60, '0', '0', 'tip'),
('16218ad4ea8768cda4c3db6c1856d8b2', 'Tester', 'Model', 'none', 0, 50, 1544398217, 60, '0', '0', 'tip'),
('d178af69cacf691eac861374d32a34de', 'Tester', 'Model', 'none', 10, 50, 1544398539, 60, '0', '0', 'tip'),
('a64de72e177345da688d661475bc07e2', 'Tester', 'Model', 'none', 0, 50, 1544398555, 60, '0', '0', 'tip'),
('b1c6c2bbee09a759cf29ce753e8dd8ff', 'Tester', 'Model', 'none', 0, 50, 1544398563, 60, '0', '0', 'tip'),
('0d1c578d10698b9cb461d045c95cc95a', 'Tester', 'Model', 'none', 0, 50, 1544399183, 60, '0', '0', 'tip'),
('7e07f785cc2a61dee866d1ae10697c35', 'Tester', 'Model', 'none', 0, 50, 1544399192, 60, '0', '0', 'tip'),
('a6287074c9a9fdb4861967b11fbbd235', 'Tester', 'Model', 'none', 0, 50, 1544399227, 60, '0', '0', 'tip'),
('20324880c58c004fe1b4a1dddf9fc16e', 'Tester', 'Model', 'none', 0, 50, 1544399393, 60, '0', '0', 'tip'),
('7d326730d99f3e9dccf00a2b4a926690', 'Tester', 'Model', 'none', 0, 50, 1544399448, 60, '0', '0', 'tip'),
('b63dafe8aea8895f088cef36ede2108b', 'Tester', 'Model', 'none', 5, 50, 1544399457, 60, '0', '0', 'tip'),
('8169efd20fc9faec28bafe95b4625c1e', 'Tester', 'Model', 'none', 0, 50, 1544403493, 60, '0', '0', 'tip'),
('1ddfcbee32b7dcf10da65bcf77df0b7e', 'Tester', 'Model', 'none', 0, 50, 1544403532, 60, '0', '0', 'tip'),
('e4f9ec0a25b331b218954000a54016d5', 'Tester', 'Model', 'none', -1, 50, 1544403802, 60, '0', '0', 'tip'),
('c0113bc7c3e7eaa574e8a00512648b60', 'Tester', 'Model', 'none', -10, 50, 1544403878, 60, '0', '0', 'tip'),
('53d9565724cbc3cdf6e1be6c0fc8e645', 'Tester', 'Model', 'none', -10, 50, 1544403957, 60, '0', '0', 'tip'),
('ec6acc39ccbe69acec66a43571aa73ea', 'Tester', 'Model', 'none', 0, 50, 1544407167, 60, '0', '0', 'tip'),
('99c769b3d20e928ed13e03e914756448', 'Tester', 'Model', 'none', 0, 50, 1544407573, 60, '0', '0', 'tip'),
('24e793ee460cb0239f7386f3bce237ff', 'Tester', 'Model', 'none', 0, 50, 1544409333, 60, '0', '0', 'tip'),
('7f7869d019222f628df5ab10b198c0d5', 'Tester', 'Model', 'none', 0, 50, 1544409368, 60, '0', '0', 'tip'),
('22acdeb2beccb762fbad549bb8c9727c', 'Tester', 'Model', 'none', 5, 50, 1544410569, 60, '0', '0', 'tip'),
('0db0fa7e83ffaa1432dcf5674c7165cd', 'Tester', 'Model', 'none', 5, 50, 1544410582, 60, '0', '0', 'tip'),
('a7bd5c524d699a2c8d12cc05c58d69f9', 'Tester', 'Model', 'none', 10, 50, 1544410760, 60, '0', '0', 'tip'),
('bcf746adb88cc971fd82e7e3b2daa677', 'Tester', 'Model', 'none', 10, 50, 1544410764, 60, '0', '0', 'tip'),
('b0bbca27e8fac166dcf3f6220f32832c', 'Tester', 'Model', 'none', 10, 50, 1544410769, 60, '0', '0', 'tip'),
('53ec06b8b4a7ec051b9af06f33ed41e2', 'Tester', 'Model', 'none', 10, 50, 1544410771, 60, '0', '0', 'tip'),
('b76e8d68d0db946a0f847215f6753856', 'Tester', 'Model', 'none', 5, 50, 1544411208, 60, '0', '0', 'tip'),
('f511c040372f703074f8b89b72c2f2c0', 'Tester', 'Model', 'none', 5, 50, 1544411880, 60, '0', '0', 'tip'),
('c1475c4020b310b14ad564cec416cc0c', 'Tester', 'Model', 'none', 6, 50, 1544416730, 60, '0', '0', 'tip'),
('18481dec6294fad745841a5d244df064', 'Tester', 'Model', 'none', 10, 50, 1544416762, 60, '0', '0', 'tip'),
('f72d521e6170f3cc9c76db7405086c56', 'Tester', 'Model', 'none', 10, 50, 1544416768, 60, '0', '0', 'tip'),
('96690feb476debb2279563d8615104fa', 'Tester', 'Model', 'none', 10, 50, 1544416775, 60, '0', '0', 'tip'),
('c1a8de6933388e24334633556567ba8e', 'Tester', 'Model', 'none', 5, 50, 1544416826, 60, '0', '0', 'tip'),
('2499f45491d1459d4aad54882d7a748a', 'Tester', 'Model', 'none', 5, 50, 1544416835, 60, '0', '0', 'tip'),
('484177cef25ddc2afe0f101e20fa8889', 'Tester', 'Model', 'none', 5, 50, 1544416856, 60, '0', '0', 'tip'),
('0524bfdc856ad956be30d673e50f5dde', 'Tester', 'Model', 'none', 5, 50, 1544416860, 60, '0', '0', 'tip'),
('df05ccb6532bb6d1ec286cd5813c9f1f', 'Tester', 'Model', 'none', 5, 50, 1544416875, 60, '0', '0', 'tip'),
('f594f86ed8bbddb42095acdd42a5c667', 'Tester', 'Model', 'none', 5, 50, 1544416886, 60, '0', '0', 'tip'),
('88c740893d3b8688deb26db63932f65d', 'Tester', 'Model', 'none', 5, 50, 1544416941, 60, '0', '0', 'tip'),
('4073bd42f7ce656a276212170d321ac0', 'Tester', 'Model', 'none', 5, 50, 1544416945, 60, '0', '0', 'tip'),
('71fb2cd9a5e4b931521c61c54eeede59', 'Tester', 'Model', 'none', 5, 50, 1544416959, 60, '0', '0', 'tip'),
('239a0971a2627f81f080131b4b795820', 'Tester', 'Model', 'none', 5, 50, 1544416963, 60, '0', '0', 'tip'),
('7744e401aa1df1dcbb73c64753a90fce', 'Tester', 'Model', 'none', 5, 50, 1544416970, 60, '0', '0', 'tip'),
('207b06eaf50f6f90a405a716d7e8d184', 'Tester', 'Model', 'none', 5, 50, 1544417055, 60, '0', '0', 'tip'),
('c17848e40e1c149fcd10f274f70c902d', 'Tester', 'Model', 'none', 5, 50, 1544417560, 60, '0', '0', 'tip'),
('e047a5d5b005803eaa4cab4ce9193864', 'Tester', 'Model', 'none', 5, 50, 1544417564, 60, '0', '0', 'tip'),
('48888fafb767a486f223c01f409fc43a', 'Tester', 'Model', 'none', 5, 50, 1544417567, 60, '0', '0', 'tip'),
('1c0e3ae7638bdfddbb32f0cfae607c3d', 'Tester', 'Model', 'none', 5, 50, 1544417617, 60, '0', '0', 'tip'),
('b62930d35a148aa73ed00b8682999cec', 'Tester', 'Model', 'none', 5, 50, 1544417626, 60, '0', '0', 'tip'),
('b04399ee4c53d13e63cadb181042214a', 'Tester', 'Model', 'none', 5, 50, 1544417629, 60, '0', '0', 'tip'),
('17b43c332d79bcc70232c3accb91af9b', 'Tester', 'Model', 'none', 5, 50, 1544417635, 60, '0', '0', 'tip'),
('d3663e8353dd44bc92533db413a91aff', 'Tester', 'Model', 'none', 5, 50, 1544417732, 60, '0', '0', 'tip'),
('f2ee000ac0b5785cc4ba22ae85f69c18', 'Tester', 'Model', 'none', 5, 50, 1544417737, 60, '0', '0', 'tip'),
('67617fa8d12212971e394f25b8275da4', 'Tester', 'Model', 'none', 5, 50, 1544417747, 60, '0', '0', 'tip'),
('ed540535436017abad3ec60fd26d4b49', 'Tester', 'Model', 'none', 5, 50, 1544417830, 60, '0', '0', 'tip'),
('6177d35eba3f286a862202974af59686', 'Tester', 'Model', 'none', 5, 50, 1544417834, 60, '0', '0', 'tip'),
('25c9b9bbad70b7f401cea0e0da3b003e', 'Tester', 'Model', 'none', 5, 50, 1544417843, 60, '0', '0', 'tip'),
('68607cfcacfb7d0a17cc8d0d7eb11862', 'Tester', 'Model', 'none', 5, 50, 1544418113, 60, '0', '0', 'tip'),
('f7cc22f9d562ee837e94c283b9d1d325', 'Tester', 'Model', 'none', 5, 50, 1544418287, 60, '0', '0', 'tip'),
('cf2a37610afe1538b54813d2384c3ada', 'Tester', 'Model', 'none', 5, 50, 1544418313, 60, '0', '0', 'tip'),
('5a8549cc3a60ef70d672d4b28244816f', 'Tester', 'Model', 'none', 5, 50, 1544418335, 60, '0', '0', 'tip'),
('c88bb49a94fd5ecd1d6b3de1dc74683a', 'Tester', 'Model', 'none', 10, 50, 1544418370, 60, '0', '0', 'show'),
('540dfa2b326bda90cef3471eb8df5aeb', 'Tester', 'Model', 'none', 10, 50, 1544418430, 60, '0', '0', 'show'),
('fb0098a0f376feceed61352706908c40', 'Tester', 'Model', 'none', 10, 50, 1544418490, 60, '0', '0', 'show'),
('0bf7d0bd42b8d553b0818a09f5b32ca8', 'Tester', 'Model', 'none', 10, 50, 1544418549, 60, '0', '0', 'show'),
('1286cf274646abaa4e74c77e4cbc0e69', 'Tester', 'Model', 'none', 5, 50, 1544418563, 60, '0', '0', 'tip'),
('60b27524cba4f9c34222bc297c1ae145', 'Tester', 'Model', 'none', 10, 50, 1544418610, 60, '0', '0', 'show'),
('b2c01fa28fad650c2ac21f4edde5c53e', 'Tester', 'Model', 'none', 10, 50, 1544418670, 60, '0', '0', 'show'),
('a185b8920e82ffe4d414e7b321bc4076', 'Tester', 'Model', 'none', 10, 50, 1544418730, 60, '0', '0', 'show'),
('5f110e95814005754e58b4dc8d392315', 'Tester', 'Model', 'none', 10, 50, 1544418789, 60, '0', '0', 'show'),
('c00aa81583f887d03ea3959ec785c230', 'Tester', 'Model', 'none', 10, 50, 1544418849, 60, '0', '0', 'show'),
('d065c28794056b378fa84c4b7e0b6f2e', 'Tester', 'Model', 'none', 10, 50, 1544418909, 60, '0', '0', 'show'),
('38cc48cae9a14cb64816a94696abaea1', 'Tester', 'Model', 'none', 10, 50, 1544418969, 60, '0', '0', 'show'),
('d854a14ad051f785db9c214d1d445acd', 'Tester', 'Model', 'none', 10, 50, 1544419030, 60, '0', '0', 'show'),
('45770f5baf73391d770f09ba039cdf16', 'Tester', 'Model', 'none', 10, 50, 1544419090, 60, '0', '0', 'show'),
('47b57161dc26e7ae30df9b2c5631dade', 'Tester', 'Model', 'none', 10, 50, 1544419150, 60, '0', '0', 'show'),
('de7f564438af5a621a45d11c7f27b4cd', 'Tester', 'Model', 'none', 10, 50, 1544419262, 60, '0', '0', 'show'),
('c9a297ae7e583416dc286a2954da03e4', 'Tester', 'Model', 'none', 10, 50, 1544419275, 60, '0', '0', 'show'),
('127962cdc869b5b1956943728175ce95', 'Tester', 'Model', 'none', 5, 50, 1544421390, 60, '0', '0', 'tip'),
('621e95b679fb9fa4fae33811d151cb3f', 'Tester', 'Model', 'none', 5, 50, 1544421541, 60, '0', '0', 'tip'),
('76de7c8271263e207e92eeb9621c30d8', 'Tester', 'Model', 'none', 10, 50, 1544428692, 60, '0', '0', 'show'),
('e8d06b000e6d1794e927f55f649be3f9', 'Tester', 'Model', 'none', 10, 50, 1544428827, 60, '0', '0', 'show'),
('c7421e2f688d8694f173378d98578b4c', 'Tester', 'Model', 'none', 10, 50, 1544428888, 60, '0', '0', 'show'),
('56ddbd525a82be937ace244b9acc0c4f', 'Tester', 'Model', 'none', 10, 50, 1544428948, 60, '0', '0', 'show'),
('501be5806023ecbe3f2dc98fbf4d3739', 'Tester', 'Model', 'none', 10, 50, 1544429008, 60, '0', '0', 'show'),
('597967208bec162c118a4634d5fc7303', 'Tester', 'Model', 'none', 10, 50, 1544429068, 60, '0', '0', 'show'),
('aec96f990858a61eb07c0bba89988e30', 'Tester', 'Model', 'none', 10, 50, 1544429128, 60, '0', '0', 'show'),
('5004d02eca94a4f60d51921d02073a3a', 'Tester', 'Model', 'none', 10, 50, 1544430220, 60, '0', '0', 'show'),
('d74d84da607053ac8708c55051336544', 'Tester', 'Model', 'none', 10, 50, 1544430902, 60, '0', '0', 'show'),
('f45f98a8b91895cf9eec2f94639c5a0c', 'Tester', 'Model', 'none', 10, 50, 1544430975, 60, '0', '0', 'show'),
('0afeb8da0117150ad765399dd212c10e', 'Tester', 'Model', 'none', 10, 50, 1544431095, 60, '0', '0', 'show'),
('1d299655c97f0b778cd9d7579aab4734', 'Tester', 'Model', 'none', 10, 50, 1544431155, 60, '0', '0', 'show'),
('a930fe044d3545636e995f3432cb1d17', 'Tester', 'Model', 'none', 10, 50, 1544431214, 60, '0', '0', 'show'),
('e8bd2b3b695a022922f16b3f51344ac0', 'Tester', 'Model', 'none', 10, 50, 1544431275, 60, '0', '0', 'show'),
('e67c9550a5e3b1a8607ad22e8be424c6', 'Tester', 'Model', 'none', 10, 50, 1544431335, 60, '0', '0', 'show'),
('cb37f46d8a4ed819ca8cbccf18efa196', 'Tester', 'Model', 'none', 10, 50, 1544431394, 60, '0', '0', 'show'),
('c9c97e93677978d1a85d39c64a94a824', 'Tester', 'Model', 'none', 10, 50, 1544431454, 60, '0', '0', 'show'),
('c7b2c32060285467f328b4db04e52ba3', 'Tester', 'Model', 'none', 10, 50, 1544431492, 60, '0', '0', 'show'),
('8b729252f9440828326d0e6713e36e77', 'Tester', 'Model', 'none', 10, 50, 1544449868, 60, '0', '0', 'show'),
('fda0fdc416f1fd034d067185a45bacc3', 'Tester', 'Model', 'none', 10, 50, 1544449930, 60, '0', '0', 'show'),
('11a2f75ba8b467e033239c18cfbdd827', 'Tester', 'Model', 'none', 10, 50, 1544449949, 60, '0', '0', 'tip'),
('1ec77721c601f736452136232d9dabf0', 'Tester', 'Model', 'none', 10, 50, 1544449988, 60, '0', '0', 'show'),
('138e4e5993e3d270d463649e40dfa305', 'Tester', 'Model', 'none', 10, 50, 1544450009, 60, '0', '0', 'tip'),
('b4d5d8dea7560429a832815d2a61c0f3', 'Tester', 'Model', 'none', 10, 50, 1544450048, 60, '0', '0', 'show'),
('9310cff9573c2194adc5632ea068b445', 'Tester', 'Model', 'none', 10, 50, 1544450108, 60, '0', '0', 'show'),
('5681683b1d2c489577b6f2345ee0333a', 'Tester', 'Model', 'none', 10, 50, 1544450168, 60, '0', '0', 'show'),
('cac9ad6cefb9579e5d173745d023a5e2', 'Tester', 'Model', 'none', 10, 50, 1544450229, 60, '0', '0', 'show'),
('a26d7dd9cab7588c1204cfbec629990e', 'Tester', 'Model', 'none', 10, 50, 1544450288, 60, '0', '0', 'show'),
('cae0c66a7642c135f14f38de704c71b0', 'Tester', 'Model', 'none', 10, 50, 1544450348, 60, '0', '0', 'show'),
('34fe409ad8fc30301fee169cef53c2f9', 'Tester', 'Model', 'none', 10, 50, 1544450408, 60, '0', '0', 'show'),
('79f82bc2bf6b43001c5c6d940b5a3ead', 'Tester', 'Model', 'none', 10, 50, 1544450468, 60, '0', '0', 'show'),
('8a8830feccff9ef095188d1dcdd301d6', 'Tester', 'Model', 'none', 10, 50, 1544450528, 60, '0', '0', 'show'),
('7b7f765e90537410cd58894f39096d69', 'Tester', 'Model', 'none', 10, 50, 1544450589, 60, '0', '0', 'show'),
('41e476148d58f82c008f4c554082d10d', 'Tester', 'Model', 'none', 5, 50, 1544469599, 60, '0', '0', 'tip'),
('4b1f538668ae9d04dcdafc410d880cb7', 'Tester', 'Model', 'none', 5, 50, 1544469740, 60, '0', '0', 'tip'),
('341597a076fb30e37746c3ba29aae0f3', 'Tester', 'Model', 'none', 10, 50, 1544890061, 60, '0', '0', 'show'),
('482a8230260da3bfd82cdd9e849c8220', 'Tester', 'Model', 'none', 10, 50, 1544890121, 60, '0', '0', 'show'),
('dad07526ca0e883e4e5be740f1306b7d', 'Tester', 'Model', 'none', 10, 50, 1544890181, 60, '0', '0', 'show'),
('ada11e8052d5c51eac5a94a843bfbaa8', 'Tester', 'Model', 'none', 10, 50, 1544890216, 60, '0', '0', 'show'),
('4a3c90ff6b212156dde8f46a660178fe', 'Tester', 'Model', 'none', 10, 50, 1544890501, 60, '0', '0', 'show'),
('dd5b8b943866c238da099872461756f9', 'Tester', 'Model', 'none', 10, 50, 1544890660, 60, '0', '0', 'show'),
('c7e305fb702356f180a1345f38a257d5', 'Tester', 'Model', 'none', 10, 50, 1544890723, 60, '0', '0', 'show'),
('902fd1d19b574a61f4d8ff786fc763e8', 'Tester', 'Model', 'none', 5, 50, 1544891049, 60, '0', '0', 'tip'),
('6a168ebecab578035f8cefd67d285164', 'Tester', 'Model', 'none', 10, 50, 1544891067, 60, '0', '0', 'show'),
('3fad4f833fcb3ab30477147053498bba', 'Tester', 'Model', 'none', 10, 50, 1544891366, 60, '0', '0', 'show'),
('5b0a5a42f7571b6d233ef2a3a615977b', 'Tester', 'Model', 'none', 10, 50, 1544892191, 60, '0', '0', 'show'),
('5e9a951683cdf272e6cbfa0b619a1c67', 'Tester', 'Model', 'none', 10, 50, 1544892936, 60, '0', '0', 'show'),
('33e5c1a01ecbaa37c69c2795a89d0584', 'Tester', 'Model', 'none', 10, 50, 1544892996, 60, '0', '0', 'show'),
('b2af5c102a67a2528d08dc0995498849', 'Tester', 'Model', 'none', 10, 50, 1544893405, 60, '0', '0', 'show'),
('031f606c2250055c5e6e3ade7fb0916b', 'Tester', 'Model', 'none', 10, 50, 1544893684, 60, '0', '0', 'show'),
('752f6496337243950e41b9d818d8b2f3', 'Tester', 'Model', 'none', 10, 50, 1544894115, 60, '0', '0', 'show'),
('9645b628aeb3137a52277d037b5abba1', 'Tester', 'Model', 'none', 10, 50, 1544894294, 60, '0', '0', 'show'),
('ccf517615199f6cf41990ba33c2d7f07', 'Tester', 'Model', 'none', 10, 50, 1544894354, 60, '0', '0', 'show'),
('1c5554af35937351b66d8500e57e1c2f', 'Tester', 'Model', 'none', 10, 50, 1544894616, 60, '0', '0', 'show'),
('e15558f354e71be8662a3502bd608877', 'Tester', 'Model', 'none', 10, 50, 1544894856, 60, '0', '0', 'show'),
('4ffa6edba22f5ad55f1f4b90bdf6e05e', 'Tester', 'Model', 'none', 10, 50, 1544894915, 60, '0', '0', 'show'),
('47135fb8f6546f4e1119dc0f287f3ecc', 'Tester', 'Model', 'none', 10, 50, 1544894975, 60, '0', '0', 'show'),
('ea79472519221cab61afd9e24e99b72f', 'Tester', 'Model', 'none', 10, 50, 1544895035, 60, '0', '0', 'show'),
('8a3e38e01df12a380cd991cf28cd03df', 'Tester', 'Model', 'none', 10, 50, 1544895096, 60, '0', '0', 'show'),
('4d56dd4a5dd8266bd99787e3ffabae97', 'Tester', 'Model', 'none', 10, 50, 1544895155, 60, '0', '0', 'show'),
('944b53a952580dc89b7daa1ead588be6', 'Tester', 'Model', 'none', 10, 50, 1544895250, 60, '0', '0', 'show'),
('21d2459ed8cee8d47da50347d62479d7', 'Tester', 'Model', 'none', 10, 50, 1544895517, 60, '0', '0', 'show'),
('603b610fb93ddef8298f7b44f1690dfe', 'Tester', 'Model', 'none', 10, 50, 1544895758, 60, '0', '0', 'show'),
('75ce052cc6973fc6395c856c93e8de02', 'Tester', 'Model', 'none', 10, 50, 1544895817, 60, '0', '0', 'show'),
('942289772a57a4b651c2f67ef1f7b8f3', 'Tester', 'Model', 'none', 10, 50, 1544895877, 60, '0', '0', 'show'),
('a3fd1f57be555701b1780d46e947a112', 'Tester', 'Model', 'none', 10, 50, 1544895934, 60, '0', '0', 'show'),
('92c8190d045c04f36560188b91f066a2', 'Tester', 'Model', 'none', 10, 50, 1544896723, 60, '0', '0', 'show'),
('116fe1e9f0d98bfeb3750808aeef5c44', 'Tester', 'Model', 'none', 10, 50, 1544896902, 60, '0', '0', 'show'),
('2b9f7eff3218183a86eeb3ebd74af1aa', 'Tester', 'Model', 'none', 10, 50, 1544897288, 60, '0', '0', 'show'),
('7777532b4a6b0d60e4b4e297f44c2b14', 'Tester', 'Model', 'none', 10, 50, 1544897359, 60, '0', '0', 'show'),
('e0565389fa0e4f564cd1d454e0989054', 'Tester', 'Model', 'none', 10, 50, 1544898439, 60, '0', '0', 'show'),
('6b2cb03d56c722111d0334cefe6300cb', 'Tester', 'Model', 'none', 10, 50, 1544898484, 60, '0', '0', 'show'),
('f4865556e4f28197facf55d672da2d94', 'Tester', 'Model', 'none', 10, 50, 1544898544, 60, '0', '0', 'show'),
('1989ea5378016df041f9171a6c97acc8', 'Tester', 'Model', 'none', 10, 50, 1544898609, 60, '0', '0', 'show'),
('175cb00088aa4e931f1222e5282ccd7d', 'Tester', 'Model', 'none', 10, 50, 1544898669, 60, '0', '0', 'show'),
('6f020ed0d2701f9570cac1c6d34e6ede', 'Tester', 'Model', 'none', 10, 50, 1544898887, 60, '0', '0', 'show'),
('f0c63d1c221bda99cbd06a3f584ccc44', 'Tester', 'Model', 'none', 10, 50, 1544898947, 60, '0', '0', 'show'),
('7ab59ec3013c6c539e4c11e4dfbd827a', 'Tester', 'Model', 'none', 10, 50, 1544899200, 60, '0', '0', 'show'),
('6399e81241209e06e5839d6270b7840c', 'Tester', 'Model', 'none', 10, 50, 1544899545, 60, '0', '0', 'show'),
('669f156098cc0e663293a9bcfde26223', 'Tester', 'Model', 'none', 10, 50, 1544901609, 60, '0', '0', 'show'),
('63052287bc9ac16a19d96dba70dca147', 'Tester', 'Model', 'none', 10, 50, 1544901660, 60, '0', '0', 'show'),
('dc0ef507852642e679e027a8e6a2c74b', 'Tester', 'Model', 'none', 10, 50, 1544901720, 60, '0', '0', 'show'),
('d017cb0cfdf6c60a901b10330b9baaf2', 'Tester', 'Model', 'none', 10, 50, 1544901725, 60, '0', '0', 'show'),
('c29935ef9da4a1856615e3f2471374ca', 'Tester', 'Model', 'none', 10, 50, 1544903258, 60, '0', '0', 'show'),
('34b48de89309bcc37fded92ae063a2be', 'Tester', 'Model', 'none', 10, 50, 1544903318, 60, '0', '0', 'show'),
('f4123c00fd603927423b0f6d02eec9ee', 'Tester', 'Model', 'none', 10, 50, 1544903379, 60, '0', '0', 'show'),
('48f8bc0739ed9d97553492336421df98', 'Tester', 'Model', 'none', 10, 50, 1544903438, 60, '0', '0', 'show'),
('45c3a739e2a77cb8d2bbc11a99395d91', 'Tester', 'Model', 'none', 10, 50, 1544904089, 60, '0', '0', 'show'),
('a0a6148b17f8af5d180966e73c39b220', 'Tester', 'Model', 'none', 10, 50, 1544904629, 60, '0', '0', 'show');
INSERT INTO `videosessions` (`sessionid`, `member`, `model`, `sop`, `cpm`, `epercentage`, `date`, `duration`, `paid`, `soppaid`, `type`) VALUES
('bda707c30d2c8140eb4a21ad5d3aa485', 'Tester', 'Model', 'none', 10, 50, 1544904693, 60, '0', '0', 'show'),
('c8ebc717632f86546100fcafeea17cf3', 'Tester', 'Model', 'none', 10, 50, 1544904751, 60, '0', '0', 'show'),
('8b9461cb419067584e079abbbc1dbc9f', 'Tester', 'Model', 'none', 10, 50, 1544904813, 60, '0', '0', 'show'),
('200e8a77275612df61639a314b9beddf', 'Tester', 'Model', 'none', 10, 50, 1544904870, 60, '0', '0', 'show'),
('00f06bd6fe28fe443358fc654c72e7ed', 'Tester', 'Model', 'none', 10, 50, 1544905234, 60, '0', '0', 'show'),
('da4d9ff5de34ca74bf0ae7dc5536993b', 'Tester', 'Model', 'none', 10, 50, 1544905295, 60, '0', '0', 'show'),
('2a8034cb5980e2e5816aa8ebfa8a2e32', 'Tester', 'Model', 'none', 10, 50, 1544905356, 60, '0', '0', 'show'),
('2b35101ab9f122a67a38734c020e09d7', 'Tester', 'Model', 'none', 10, 50, 1544905414, 60, '0', '0', 'show'),
('5a586506535687e88dd91176af1ece74', 'Tester', 'Model', 'none', 10, 50, 1544905476, 60, '0', '0', 'show'),
('3fe94bf694cd038c78933ce8d4971ee2', 'Tester', 'Model', 'none', 10, 50, 1544905536, 60, '0', '0', 'show'),
('9f200ce7e009470db2692993e0cc36a5', 'Tester', 'Model', 'none', 10, 50, 1544905598, 60, '0', '0', 'show'),
('9429c7dc3a9029d99a647bf5c4aaa902', 'Tester', 'Model', 'none', 10, 50, 1544905656, 60, '0', '0', 'show'),
('c08511cfaaba570ad51ae503a95fe87c', 'Tester', 'Model', 'none', 10, 50, 1544905717, 60, '0', '0', 'show'),
('c811eb57b81f7898acfd9fdda6dd1078', 'Tester', 'Model', 'none', 10, 50, 1544905781, 60, '0', '0', 'show'),
('e1bea48c07d0ed8f0439c1ae6db63b4e', 'Tester', 'Model', 'none', 10, 50, 1544905835, 60, '0', '0', 'show'),
('147035879b4a9a6172cf9d3a33eb45a5', 'Tester', 'Model', 'none', 10, 50, 1544905933, 60, '0', '0', 'show'),
('26ab02439dc1d217f165fb0b330c5778', 'Tester', 'Model', 'none', 10, 50, 1544906111, 60, '0', '0', 'show'),
('d44c99a63c78aca8ea2c7bf866d51d2b', 'Tester', 'Model', 'none', 10, 50, 1544906174, 60, '0', '0', 'show'),
('4de8d98e18c7cd111891e9346754dfdf', 'Tester', 'Model', 'none', 10, 50, 1544906263, 60, '0', '0', 'show'),
('e68b28ddef63414f9da00575ea973b2f', 'Tester', 'Model', 'none', 10, 50, 1544906324, 60, '0', '0', 'show'),
('371b26835bc8df8b1c4b47b5684e2d10', 'Tester', 'Model', 'none', 10, 50, 1544906380, 60, '0', '0', 'show'),
('e41acd34981d3afbf7fae1e7b330fc8f', 'Tester', 'Model', 'none', 10, 50, 1544906456, 60, '0', '0', 'show'),
('26f1b6d75084169501c73b85ed54380f', 'Tester', 'Model', 'none', 10, 50, 1544906517, 60, '0', '0', 'show'),
('31410bf2a5f74588ba7807352fc02868', 'Tester', 'Model', 'none', 10, 50, 1544906555, 60, '0', '0', 'show'),
('2961ef045aac9d4036f902212f29bc5e', 'Tester', 'Model', 'none', 10, 50, 1544906654, 60, '0', '0', 'show'),
('9348f4362195bced930db9385e21df3b', 'Tester', 'Model', 'none', 10, 50, 1544906714, 60, '0', '0', 'show'),
('ac731261f6560220b54758d3ed61597f', 'Tester', 'Model', 'none', 10, 50, 1544906775, 60, '0', '0', 'show'),
('4338a0a556913379c41080f2f3202122', 'Tester', 'Model', 'none', 10, 50, 1544906837, 60, '0', '0', 'show'),
('99a2d2ed20df95c475f02b074f5fe79d', 'Tester', 'Model', 'none', 10, 50, 1544906894, 60, '0', '0', 'show'),
('70acff8635b64a8e5c502d848a84dd88', 'Tester', 'Model', 'none', 10, 50, 1544906955, 60, '0', '0', 'show'),
('2e492c13ed4d0a1881de54c0af7925ac', 'Tester', 'Model', 'none', 10, 50, 1544907017, 60, '0', '0', 'show'),
('6f054694b702e3fd8712094a147ad314', 'Tester', 'Model', 'none', 10, 50, 1544907076, 60, '0', '0', 'show'),
('3535f405dcc7e23879969fd360870497', 'Tester', 'Model', 'none', 10, 50, 1544907135, 60, '0', '0', 'show'),
('dc63b176ca8e7e193162a8cb1ac4e553', 'Tester', 'Model', 'none', 10, 50, 1544907196, 60, '0', '0', 'show'),
('7f193ca696ea3c4b2a0ef556d63c4599', 'Tester', 'Model', 'none', 10, 50, 1544907257, 60, '0', '0', 'show'),
('05920e3bb5782e2c2830a2ef06be99ce', 'Tester', 'Model', 'none', 10, 50, 1544907315, 60, '0', '0', 'show'),
('152301ee6cc80e5a23917e005153b133', 'Tester', 'Model', 'none', 10, 50, 1544907367, 60, '0', '0', 'show'),
('6b4c69d0c291f67bae310f38ff036c30', 'Tester', 'Model', 'none', 10, 50, 1544908203, 60, '0', '0', 'show'),
('1fae39d241cae971af79b76423bf82a1', 'Tester', 'Model', 'none', 10, 50, 1544908227, 60, '0', '0', 'show'),
('619d6fdb6761aa6360319e62a091be13', 'Tester', 'Model', 'none', 10, 50, 1544908290, 60, '0', '0', 'show'),
('a15e10b0ca511190ceb1985b6de1053d', 'Tester', 'Model', 'none', 10, 50, 1544908349, 60, '0', '0', 'show'),
('1bb839ed481630669bfe09cf511dd56e', 'Tester', 'Model', 'none', 10, 50, 1544908412, 60, '0', '0', 'show'),
('cc85d1e793e680a63be817303736812c', 'Tester', 'Model', 'none', 10, 50, 1544929358, 60, '0', '0', 'show'),
('eedd1aa3b545d78e225640566b89842a', 'Tester', 'Model', 'none', 10, 50, 1544929417, 60, '0', '0', 'show'),
('79d60c365d8b46adc17a28d7293702cb', 'Tester', 'Model', 'none', 10, 50, 1544929645, 60, '0', '0', 'show'),
('afd758c8ac3fcf18a40680f8c8771ea7', 'Tester', 'Model', 'none', 10, 50, 1544929882, 60, '0', '0', 'show'),
('9194061f63d6b9487036d74caed217c7', 'Tester', 'Model', 'none', 10, 50, 1544929941, 60, '0', '0', 'show'),
('1b62af4594f2c76acf6c5126a9395ea3', 'Tester', 'Model', 'none', 10, 50, 1544929999, 60, '0', '0', 'show'),
('967b2160075346d10d07e62a744c6e24', 'Tester', 'Model', 'none', 10, 50, 1544930058, 60, '0', '0', 'show'),
('50add46629a65cd9575606ad034ea592', 'Tester', 'Model', 'none', 10, 50, 1544930122, 60, '0', '0', 'show'),
('baf25487ba7b1c386fec0b4711c88220', 'Tester', 'Model', 'none', 10, 50, 1544930179, 60, '0', '0', 'show'),
('3efa31a1c141c955e099d65d12af70e6', 'Tester', 'Model', 'none', 10, 50, 1544930239, 60, '0', '0', 'show'),
('94858239195c1089c2e3264ac8f8432c', 'Tester', 'Model', 'none', 10, 50, 1544930299, 60, '0', '0', 'show'),
('e7539b3cd0a88e81c7899e04e2a6ae1d', 'Tester', 'Model', 'none', 10, 50, 1544930358, 60, '0', '0', 'show'),
('03e1f01d81927ac10a3830b0fdd03465', 'Tester', 'Model', 'none', 10, 50, 1544930419, 60, '0', '0', 'show'),
('b1da2d4017c98313e50624ddf52ede71', 'Tester', 'Model', 'none', 10, 50, 1544930481, 60, '0', '0', 'show'),
('202382adbeebee145a16ecf6fe1d4582', 'Tester', 'Model', 'none', 10, 50, 1544930691, 60, '0', '0', 'show'),
('03506340a1e1d955b87c0b790083387b', 'Tester', 'Model', 'none', 10, 50, 1544933336, 60, '0', '0', 'show'),
('f8a303194a315560defeecb3d7fc6604', 'Tester', 'Becky', '', 5, 50, 1545653521, 60, '0', '0', 'tip'),
('68d42bcd065684ae329b367d3542be11', 'Tester', 'Becky', '', 5, 50, 1545653624, 60, '0', '0', 'tip'),
('d4f6b4a01e70d08d48d0b70c0c189025', 'Tester', 'Model', 'none', 5, 50, 1545686855, 60, '0', '0', 'tip'),
('b11820c03a57681246320f72283f73ec', 'Tester', 'Model', 'none', 5, 50, 1545777465, 60, '0', '0', 'tip'),
('c27596d0cfe1b3a399412132a6f6b4b9', 'Tester', 'Model', 'none', 5, 50, 1545777469, 60, '0', '0', 'tip'),
('902d0bb1955cbb44773ecf3109dae60e', 'Tester', 'Model', 'none', 10, 50, 1546576607, 60, '0', '0', 'show'),
('0ba34cadad4f98e44ace87c81c1bbd9d', 'Tester', 'Model', 'none', 10, 50, 1546576666, 60, '0', '0', 'show'),
('896759e79a785eda861374de7347f81b', 'Tester', 'Model', 'none', 5, 50, 1546576712, 60, '0', '0', 'tip'),
('fa7bc40544c927a6bd40caadb9afdbb0', 'Tester', 'Model', 'none', 10, 50, 1546576727, 60, '0', '0', 'show'),
('996f0d744335b959feaf5dcde8b564c7', 'Tester', 'Model', 'none', 10, 50, 1546577839, 60, '0', '0', 'show'),
('bb705e57f85ecff331bee6554b3e9a99', 'Tester', 'Model', 'none', 10, 50, 1547131832, 60, '0', '0', 'show'),
('407e459061f1a717ae8775a4cecab61a', 'Tester', 'Model', 'none', 10, 50, 1547131877, 60, '0', '0', 'show'),
('146c648e4c21f0891746730823592a04', 'Tester', 'Model', 'none', 10, 50, 1547132023, 60, '0', '0', 'show'),
('cc18544f393157b49268f41f57bdbdb7', 'Tester', 'Model', 'none', 10, 50, 1547132172, 60, '0', '0', 'show'),
('be2aff56a9c6dd611c068271dce041ba', 'Tester', 'Model', 'none', 10, 50, 1547132232, 60, '0', '0', 'show'),
('dbca498a0761c7588869b04c179187b2', 'Tester', 'Model', 'none', 10, 50, 1547132292, 60, '0', '0', 'show'),
('8a74bb844374acf84ca8027d67802141', 'Tester', 'Model', 'none', 10, 50, 1547132357, 60, '0', '0', 'show'),
('05f487cf991855d035bf0775a35619a7', 'Tester', 'Model', 'none', 10, 50, 1547132629, 60, '0', '0', 'show'),
('f51791e0b10d5a82bd3871a5d049d6db', 'Tester', 'Model', 'none', 10, 50, 1547133266, 60, '0', '0', 'show'),
('403166ca3758440cdeb17711775fb3f9', 'Tester', 'Model', 'none', 10, 50, 1547133439, 60, '0', '0', 'show'),
('b01e886d37b2fee70e0ac9e01b339a83', 'Tester', 'Model', 'none', 10, 50, 1547135925, 60, '0', '0', 'show'),
('9ed5644d3712d52eb9bed45ef789d765', 'Tester', 'Model', 'none', 10, 50, 1547136109, 60, '0', '0', 'show'),
('255aaaec44ea8220d7561548a51b55a7', 'Tester', 'Model', 'none', 10, 50, 1547136213, 60, '0', '0', 'show'),
('6007b2342968d4d2b3b850230ef4b821', 'Tester', 'Model', 'none', 10, 50, 1547136274, 60, '0', '0', 'show'),
('5f81639d630fa771621ab398995e8b53', 'Tester', 'Model', 'none', 5, 50, 1547136380, 60, '0', '0', 'tip'),
('d5cef51dcdc77b969ef055dea0c7eedb', 'Tester', 'Model', 'none', 5, 50, 1547136426, 60, '0', '0', 'tip'),
('4e3d958d12c1ed58a19c53055e3eb95c', 'Tester', 'Model', 'none', 5, 50, 1547136432, 60, '0', '0', 'tip'),
('4c71611c5e009baee2f9eec2e975e6c2', 'Tester', 'Model', 'none', 5, 50, 1547136436, 60, '0', '0', 'tip'),
('1e621bc19626a04ac27b3c1cc63bf65a', 'Tester', 'Model', 'none', 20, 50, 1547136458, 60, '0', '0', 'tip'),
('e221d9e3390879837aba38553943ad00', 'Tester', 'Model', 'none', 5, 50, 1547174137, 60, '0', '0', 'tip'),
('aee3533e7f6b981ae1924eb481199401', 'Tester', 'Model', 'none', 5, 50, 1547184986, 60, '0', '0', 'tip'),
('b10c58f466cffa9bc595b9f0306a7ce4', 'Tester', 'Model', 'none', 5, 50, 1547185177, 60, '0', '0', 'tip'),
('a0a31b6ccb6d4c94de3fb6e9353dc47b', 'Tester', 'Model', 'none', 5, 50, 1547185294, 60, '0', '0', 'tip'),
('5f302497b0d832f792976b449f2ff099', 'Tester', 'Model', 'none', 5, 50, 1547185451, 60, '0', '0', 'tip'),
('7fc83f32ade5ac2e292e38781e7037a8', 'Tester', 'Model', 'none', 5, 50, 1547185646, 60, '0', '0', 'tip'),
('4d5708ed3279e6004bba81c63a24495a', 'Tester', 'Model', 'none', 5, 50, 1547186600, 60, '0', '0', 'tip'),
('43d4816804c5b432eaf70c24f776a922', 'Tester', 'Model', 'none', 5, 50, 1547186644, 60, '0', '0', 'tip'),
('2c80d37d925a30168fe826ae9135309e', 'Tester', 'Model', 'none', 5, 50, 1547186821, 60, '0', '0', 'tip'),
('e0ca8a987899a0948eaac03f25f75e7c', 'Tester', 'Model', 'none', 5, 50, 1547187030, 60, '0', '0', 'tip'),
('6aee623fd291f94d01f175dbfb480482', 'Tester', 'Model', 'none', 5, 50, 1547187058, 60, '0', '0', 'tip'),
('6f1a3061bcc01ad366af8fb0a726a817', 'Tester', 'Model', 'none', 5, 50, 1547187489, 60, '0', '0', 'tip'),
('f3daf20c92549555ef5f18ca5c4302a0', 'Tester', 'Model', 'none', 5, 50, 1547187514, 60, '0', '0', 'tip'),
('36ddba4d8f1412c898f5d0db185d8cec', 'Tester', 'Model', 'none', 5, 50, 1547188221, 60, '0', '0', 'tip'),
('af409faf8253454efaef53dd3c45a786', 'Tester', 'Model', 'none', 5, 50, 1547188246, 60, '0', '0', 'tip'),
('d7ec48a1e30a4fa54caa0b8ac7c7626d', 'Tester', 'Model', 'none', 5, 50, 1547275128, 60, '0', '0', 'tip'),
('db49ed537938a2676b37dbb6f40601ab', 'Tester', 'Model', 'none', 10, 50, 1547339991, 60, '0', '0', 'show'),
('56e0102a8d4680a8516ba679bbe9663f', 'Tester', 'Model', 'none', 10, 50, 1547340232, 60, '0', '0', 'show'),
('f06c0c43d5f3808a44fd8203f8e2307d', 'Tester', 'Model', 'none', 10, 50, 1547340810, 60, '0', '0', 'show'),
('fb689019e1e2fc8226083a7624a2f7d5', 'Tester', 'Model', 'none', 10, 50, 1547342325, 60, '0', '0', 'show'),
('6868f449ba416ed6a2e399c31fa785a2', 'Tester', 'Model', 'none', 10, 50, 1547342463, 60, '0', '0', 'show'),
('d16e12d932ac1f14140da4edaecbca8c', 'Tester', 'Model', 'none', 10, 50, 1547342653, 60, '0', '0', 'show'),
('3f7a89deee4aaa9774f0a07c217f0863', 'Tester', 'Model', 'none', 10, 50, 1547343345, 60, '0', '0', 'show'),
('1a55961ac76360d348c286aaef74c6e9', 'Tester', 'Model', 'none', 10, 50, 1547343508, 60, '0', '0', 'show'),
('d8d683e28c994e2213c01a9f7436ab1a', 'Tester', 'Model', 'none', 10, 50, 1547343808, 60, '0', '0', 'show'),
('2705f57e7d600d036cb5140cf61a4cd7', 'Tester', 'Model', 'none', 10, 50, 1547344064, 60, '0', '0', 'show'),
('573de5431118a5a5deb8b09cc3c5e94c', 'Tester', 'Model', 'none', 10, 50, 1547344181, 60, '0', '0', 'show'),
('09662f7dfe6b652d53c562acf4ff6c52', 'Tester', 'Model', 'none', 10, 50, 1547344499, 60, '0', '0', 'show'),
('1ed50013666db33ceaadcb1b66393600', 'Tester', 'Model', 'none', 10, 50, 1547344654, 60, '0', '0', 'show'),
('fbc8b2282b1341adf787b19e411a7811', 'Tester', 'Model', 'none', 5, 50, 1547344700, 60, '0', '0', 'tip'),
('0e6b34897ff006d98657f5ac43373d2f', 'Tester', 'Model', 'none', 10, 50, 1547344714, 60, '0', '0', 'show'),
('131f3c4c02dfae203b925aac4f267b99', 'Tester', 'Model', 'none', 10, 50, 1547344816, 60, '0', '0', 'show'),
('7f7f38865ae0ea5bf75899e94557f282', 'Tester', 'Model', 'none', 10, 50, 1547344844, 60, '0', '0', 'show'),
('ba43e9c87fee2aaab3ecac3e9c7331d4', 'Tester', 'Model', 'none', 10, 50, 1547344954, 60, '0', '0', 'show'),
('59ddb8afbd7b65c1040845e75a6baeed', 'Tester', 'Model', 'none', 10, 50, 1547345186, 60, '0', '0', 'show'),
('8daeb694d2b67b9d5ead2d094d37270b', 'Tester', 'Model', 'none', 10, 50, 1547345442, 60, '0', '0', 'show'),
('27bdb78b6b8938e0446b6074f23dff89', 'Tester', 'Model', 'none', 10, 50, 1547345850, 60, '0', '0', 'show'),
('6c567325821e4bf13800501e04731ec7', 'Tester', 'Model', 'none', 10, 50, 1547345970, 60, '0', '0', 'show'),
('cd95f27a31d45086c7a0abeab6e0bd8b', 'Tester', 'Model', 'none', 10, 50, 1547346018, 60, '0', '0', 'show'),
('bbb25e084205062443531bbaee30fd2b', 'Tester', 'Model', 'none', 10, 50, 1547346463, 60, '0', '0', 'show'),
('72320330f96e92c52c809ce84e950308', 'Tester', 'Model', 'none', 10, 50, 1547346761, 60, '0', '0', 'show'),
('22e379cb4ba1a14815ef45b6ea0d3050', 'Tester', 'Model', 'none', 10, 50, 1547346821, 60, '0', '0', 'show'),
('89712bf2794060bc31f76c6ce2e8f247', 'Tester', 'Model', 'none', 10, 50, 1547346881, 60, '0', '0', 'show'),
('5c94b74925dc0328d92c4ebc45ff26a0', 'Tester', 'Model', 'none', 10, 50, 1547346941, 60, '0', '0', 'show'),
('37420d34adb31404e87d3198ecca7ebb', 'Tester', 'Model', 'none', 10, 50, 1547347049, 60, '0', '0', 'show'),
('d66fcf2c392e57815c4a612b833abe40', 'Tester', 'Model', 'none', 10, 50, 1547347126, 60, '0', '0', 'show'),
('2d8ccc69e01afd62d78249344e947f27', 'Tester', 'Model', 'none', 10, 50, 1547347309, 60, '0', '0', 'show'),
('67cecec62001980d03f7f28158a3d0bf', 'Tester', 'Model', 'none', 10, 50, 1547347347, 60, '0', '0', 'show'),
('fbf30220f3d7971ec2ae5c5fe77d7e65', 'Tester', 'Model', 'none', 10, 50, 1547347901, 60, '0', '0', 'show'),
('fabbc4f8ef6dbad86234426575a5de4d', 'Tester', 'Model', 'none', 10, 50, 1547348074, 60, '0', '0', 'show'),
('0b730e6f967d9278233282c06cae19fd', 'Tester', 'Model', 'none', 10, 50, 1547348119, 60, '0', '0', 'show'),
('38ab8adabaddf2962d0fd019e60b5253', 'Tester', 'Model', 'none', 10, 50, 1547348199, 60, '0', '0', 'show'),
('c2ceb63ee07d90f2c6adf04476f24dea', 'Tester', 'Model', 'none', 10, 50, 1547348266, 60, '0', '0', 'show'),
('3b6b40c49afcd79c16bbe10635b3571c', 'Tester', 'Model', 'none', 10, 50, 1547348430, 60, '0', '0', 'show'),
('0aa0da7bfb706b2125267afca47b0b80', 'Tester', 'Model', 'none', 10, 50, 1547348468, 60, '0', '0', 'show'),
('c2676645d63ad5839528fad9235d7a32', 'Tester', 'Model', 'none', 10, 50, 1547348565, 60, '0', '0', 'show'),
('3d25040833625d27e9944ba667801e4f', 'Tester', 'Model', 'none', 10, 50, 1547348741, 60, '0', '0', 'show'),
('6b72488f5560972aacd0da415147c5ce', 'Tester', 'Model', 'none', 10, 50, 1547348790, 60, '0', '0', 'show'),
('9456baa1f5dfea59487fc7e191d367d0', 'Tester', 'Model', 'none', 10, 50, 1547348912, 60, '0', '0', 'show'),
('bc9858437a2a161b362cbcc187368d80', 'Tester', 'Model', 'none', 10, 50, 1547348972, 60, '0', '0', 'show'),
('3ea4eecfffe486cea026a721227a18cb', 'Tester', 'Model', 'none', 10, 50, 1547352221, 60, '0', '0', 'show'),
('dd078a82e5bb4e748295ce74e2891376', 'Tester', 'Model', 'none', 10, 50, 1547352277, 60, '0', '0', 'show'),
('b07f85c11e704c549ce9eaec284c113c', 'Tester', 'Model', 'none', 10, 50, 1547352328, 60, '0', '0', 'show'),
('f070596136776b16ee21aa3e31d86fbf', 'Tester', 'Model', 'none', 10, 50, 1547352852, 60, '0', '0', 'show'),
('38179bb21f6e2ad454bf8ed59f8b5cec', 'Tester', 'Model', 'none', 10, 50, 1547352888, 60, '0', '0', 'show'),
('d684d488695758cd9f4814d26495951f', 'Tester', 'Model', 'none', 10, 50, 1547352987, 60, '0', '0', 'show'),
('2aaf10534efdfedc6bfa02204ee83861', 'Tester', 'Model', 'none', 10, 50, 1547353270, 60, '0', '0', 'show'),
('2d105affe1a29aac87585d0fbc497622', 'Tester', 'Model', 'none', 10, 50, 1547353313, 60, '0', '0', 'show'),
('73caa1b0ab02115a54126b5b881e3b13', 'Tester', 'Model', 'none', 10, 50, 1547353389, 60, '0', '0', 'show'),
('a20092ed49bf26ccb6f231c208940740', 'Tester', 'Model', 'none', 10, 50, 1547353449, 60, '0', '0', 'show'),
('fb461fad13b1ae48557c43ffd385521b', 'Tester', 'Model', 'none', 10, 50, 1547353507, 60, '0', '0', 'show'),
('c1608e3a6cf0aaf07e43eb9d7b9cdbfb', 'Tester', 'Model', 'none', 10, 50, 1547353586, 60, '0', '0', 'show'),
('df20306738685e6dc62ac2d528e6a5b3', 'Tester', 'Model', 'none', 10, 50, 1547354459, 60, '0', '0', 'show'),
('eee2853d44422dffb8e6d7ab26ff1a05', 'Tester', 'Model', 'none', 10, 50, 1547354565, 60, '0', '0', 'show'),
('bb4c24acb9eecfb540d29ee31059d681', 'Tester', 'Model', 'none', 10, 50, 1547354801, 60, '0', '0', 'show'),
('ebf10845acca5b06aed40a7fa463c593', 'Tester', 'Model', 'none', 10, 50, 1547354848, 60, '0', '0', 'show'),
('006363a721a3118c707753cb52fd5cb8', 'Tester', 'Model', 'none', 10, 50, 1547355316, 60, '0', '0', 'show'),
('2bb72671ab3285acb32065a95d46a926', 'Tester', 'Model', 'none', 10, 50, 1547355449, 60, '0', '0', 'show'),
('d25bf1e17bda1df1940cdfc5ef145d47', 'Tester', 'Model', 'none', 10, 50, 1547355473, 60, '0', '0', 'show'),
('80f2030ffe99cccd2a2c1432ca1746bd', 'Tester', 'Model', 'none', 10, 50, 1547355863, 60, '0', '0', 'show'),
('9007aca0249915d39ad8ef95df78633a', 'Tester', 'Model', 'none', 10, 50, 1547356008, 60, '0', '0', 'show'),
('64a2eb6e705504ace7a54f4aec372662', 'Tester', 'Model', 'none', 10, 50, 1547356035, 60, '0', '0', 'show'),
('861b6ff6b6a6cbc4b64e90e21b8a7349', 'Tester', 'Model', 'none', 10, 50, 1547356331, 60, '0', '0', 'show'),
('58b2016cd11b943506249f4c09c2a5c4', 'Tester', 'Model', 'none', 10, 50, 1547356550, 60, '0', '0', 'show'),
('b3bd2cabb2f167e70ec6d30f12289ccb', 'Tester', 'Model', 'none', 10, 50, 1547356701, 60, '0', '0', 'show'),
('bc29abffb39b59ff79933daf297e1f84', 'Tester', 'Model', 'none', 10, 50, 1547356878, 60, '0', '0', 'show'),
('0a9c1fd0a44c22f477526dba5b467443', 'Tester', 'Model', 'none', 10, 50, 1547356899, 60, '0', '0', 'show'),
('ba6aa04f5c610ef5b5294e3b9299db50', 'Tester', 'Model', 'none', 5, 50, 1547357089, 60, '0', '0', 'tip'),
('93541d51af2db9d62bef80e404d65aed', 'Tester', 'Model', 'none', 10, 50, 1547357144, 60, '0', '0', 'show'),
('e4861c7eca33bdca835cd2edb9d18907', 'Tester', 'Model', 'none', 10, 50, 1547357159, 60, '0', '0', 'show'),
('3b517e8ec1a096a945a1c35e8955005a', 'Tester', 'Model', 'none', 10, 50, 1547357508, 60, '0', '0', 'show'),
('cd4c5aa2fba2e22e192cb1b2cd2295ec', 'Tester', 'Model', 'none', 10, 50, 1547357598, 60, '0', '0', 'show'),
('1d3b1d84cdcfb2f8228e36ed5c897ce9', 'Tester', 'Model', 'none', 10, 50, 1547357648, 60, '0', '0', 'show'),
('06c9b6cc39a04b54753f7477297f7574', 'Tester', 'Model', 'none', 10, 50, 1547357695, 60, '0', '0', 'show'),
('5e69a331830d45423c8249bfc6d8aad2', 'Tester', 'Model', 'none', 10, 50, 1547357742, 60, '0', '0', 'show'),
('751191f2527ba807e8402286c679f78b', 'Tester', 'Model', 'none', 10, 50, 1547358228, 60, '0', '0', 'show'),
('6c3607584b6ec83566975e42ebba7ea6', 'Tester', 'Model', 'none', 10, 50, 1547358542, 60, '0', '0', 'show'),
('9781b760162d2324450939957bc2eed1', 'Tester', 'Model', 'none', 10, 50, 1547358639, 60, '0', '0', 'show'),
('f343ec589a96d213571b2f823b2ba4d4', 'Tester', 'Model', 'none', 10, 50, 1547358672, 60, '0', '0', 'show'),
('72f07652ec666af115123751f6234d08', 'Tester', 'Model', 'none', 10, 50, 1547358839, 60, '0', '0', 'show'),
('193ce1b812cf34fda1b8e88691a70535', 'Tester', 'Model', 'none', 10, 50, 1547358866, 60, '0', '0', 'show'),
('071a22efb395161501192830f2c2989d', 'Tester', 'Model', 'none', 10, 50, 1547358888, 60, '0', '0', 'show'),
('296564ee19fe04f15bc4f628f2073363', 'Tester', 'Model', 'none', 10, 50, 1547359354, 60, '0', '0', 'show'),
('dde4aa68ef97f9c21f546931b5ad739a', 'Tester', 'Model', 'none', 5, 50, 1547359523, 60, '0', '0', 'tip'),
('3b92975c982eada3e5e05943496a8b6c', 'Tester', 'Model', 'none', 10, 50, 1547359588, 60, '0', '0', 'show'),
('77a351e1239546fa5e7f883aa821d4d7', 'Tester', 'Model', 'none', 10, 50, 1547359636, 60, '0', '0', 'show'),
('4f3f0956ac6339cc36deb6ac17d3757e', 'Tester', 'Model', 'none', 10, 50, 1547359659, 60, '0', '0', 'show'),
('831a0bdafcde1f848526af0c823dcf99', 'Tester', 'Model', 'none', 10, 50, 1547359667, 60, '0', '0', 'show'),
('1671b0af704779559bf1d258e0ada8b0', 'Tester', 'Model', 'none', 10, 50, 1547359761, 60, '0', '0', 'show'),
('4fb690ef4e7dc329cbece5319b424b0b', 'Tester', 'Model', 'none', 10, 50, 1547359771, 60, '0', '0', 'show'),
('4e83eab34870b33ca6d014e9a2bc47d8', 'Tester', 'Model', 'none', 10, 50, 1547359821, 60, '0', '0', 'show'),
('f627682e5fc0de46e54a80643fdfc3ff', 'Tester', 'Model', 'none', 5, 50, 1552019872, 60, '0', '0', 'tip'),
('8cfa1b3767f4b46a1031a72034e17fcb', 'Tester', 'Model', 'none', 5, 50, 1552253433, 60, '0', '0', 'tip'),
('b82a3643cb84b53149caed13487311ae', 'Tester', 'Model', 'none', 5, 50, 1552253440, 60, '0', '0', 'tip'),
('826d09b20c21c6a77dd94e87a9dc3f14', 'Tester', 'Model', 'none', 5, 50, 1552337022, 60, '0', '0', 'tip'),
('5f5af97f1cfc7e7f2c150b4674e1a821', 'Tester', 'Model', 'none', 10, 50, 1552794365, 60, '0', '0', 'show'),
('1e4c49c94798c9029c71aba60a59aee9', 'Tester', 'Model', 'none', 10, 50, 1552794424, 60, '0', '0', 'show'),
('838dc18c819f3fa40ae34eacd1550795', 'Tester', 'Model', 'none', 10, 50, 1552794645, 60, '0', '0', 'show'),
('b1fb5a4befec5f08cb2f92a0dd5e7cf3', 'Tester', 'Model', 'none', 10, 50, 1552794767, 60, '0', '0', 'show'),
('8cc26ea74f94650130555a9ab288ed01', 'Tester', 'Model', 'none', 10, 50, 1552794826, 60, '0', '0', 'show'),
('ddeaa826e8875daedf0ea64fea44f94f', 'Tester', 'Model', 'none', 10, 50, 1552794885, 60, '0', '0', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `videosessions1`
--

CREATE TABLE `videosessions1` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `member` varchar(32) NOT NULL DEFAULT '',
  `model` varchar(32) NOT NULL DEFAULT '',
  `sop` varchar(32) NOT NULL DEFAULT '',
  `cpm` mediumint(9) NOT NULL DEFAULT 0,
  `epercentage` smallint(6) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `paid` char(1) NOT NULL DEFAULT '',
  `soppaid` char(1) NOT NULL DEFAULT '0',
  `type` varchar(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE `welcome` (
  `members` text DEFAULT NULL,
  `models` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`members`, `models`) VALUES
('<html><h1>Welcome Members</h1></html> dfgdfgdfgdfgdgdfgdgdfgdfgdfgdfgdfgdfgdfgdfgdfdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff	            ', '<h3>You can add anything you want performers to see in this area. It will also allow HTML. <br>We decided to embed a nice YouTube video here.</h3>\r\n<html><center><iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/-DGYO5wC4hE?autoplay=1\" frameborder=\"0\" allowfullscreen></iframe></center></html>												');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blockedcountry`
--
ALTER TABLE `blockedcountry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model` (`model`,`cc`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatmodels`
--
ALTER TABLE `chatmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`user`);

--
-- Indexes for table `chatoperators`
--
ALTER TABLE `chatoperators`
  ADD PRIMARY KEY (`id`,`user`);

--
-- Indexes for table `chatusers`
--
ALTER TABLE `chatusers`
  ADD PRIMARY KEY (`id`,`user`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_gateway`
--
ALTER TABLE `default_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modelpictures`
--
ALTER TABLE `modelpictures`
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `modelshows`
--
ALTER TABLE `modelshows`
  ADD PRIMARY KEY (`user`,`string`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagseguro`
--
ALTER TABLE `pagseguro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referencia` (`referencia`);

--
-- Indexes for table `paymentgate`
--
ALTER TABLE `paymentgate`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`,`date`);

--
-- Indexes for table `payzombaio`
--
ALTER TABLE `payzombaio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videosessions`
--
ALTER TABLE `videosessions`
  ADD KEY `sessionid` (`sessionid`,`member`,`model`);

--
-- Indexes for table `videosessions1`
--
ALTER TABLE `videosessions1`
  ADD KEY `sessionid` (`sessionid`,`member`,`model`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blockedcountry`
--
ALTER TABLE `blockedcountry`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `modelpictures`
--
ALTER TABLE `modelpictures`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111289;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pagseguro`
--
ALTER TABLE `pagseguro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `paymentgate`
--
ALTER TABLE `paymentgate`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payzombaio`
--
ALTER TABLE `payzombaio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
