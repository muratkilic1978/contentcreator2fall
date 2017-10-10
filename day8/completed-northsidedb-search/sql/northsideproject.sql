-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 08. 08 2016 kl. 12:25:03
-- Serverversion: 5.6.20
-- PHP-version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `northsideproject`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `band`
--

CREATE TABLE IF NOT EXISTS `band` (
`id` int(11) NOT NULL,
  `navn` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Data dump for tabellen `band`
--

INSERT INTO `band` (`id`, `navn`) VALUES
(1, 'Tom Odell'),
(2, 'Perter Sommer'),
(3, 'The Floor Is Made Of Lava'),
(4, 'Left Boy'),
(5, 'Daugther'),
(6, 'Bloc Party'),
(7, 'Kaizers Orchestra'),
(8, 'Phoenix'),
(9, 'Keane'),
(10, 'Tegan And Sara'),
(11, 'Nephew'),
(12, 'Spleen United'),
(13, 'Kristina RenÃ©e'),
(14, 'The William Blakes'),
(15, 'King Of Convenience'),
(16, 'When Saints Go Machine'),
(17, 'Imagine Dragons'),
(18, 'Alt-J'),
(19, 'Modest Mouse'),
(20, 'The Ecletic Moniker'),
(21, 'Biffy Clyro'),
(22, 'Nick Cave + The Bad Seeds'),
(23, 'MÃ¸'),
(24, 'The Flaming Lips'),
(25, 'TrentemÃ¸ller'),
(26, 'Shaka Loveless'),
(27, 'Everything Everything'),
(28, 'Ellie Goulding'),
(29, 'Fun'),
(30, 'Frightened Rabbit'),
(31, 'Gogol Bodello'),
(32, 'Bikstok RÃ¸gsystem'),
(33, 'Deap Vally'),
(34, 'Kashmir'),
(35, 'Band Of Horses'),
(36, 'Fallulah'),
(37, 'Artic Monkeys'),
(38, 'Rasmus Walter'),
(39, 'Portishead');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `datotid`
--

CREATE TABLE IF NOT EXISTS `datotid` (
`id` int(11) NOT NULL,
  `ugedag` varchar(255) NOT NULL,
  `tidspunkt` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Data dump for tabellen `datotid`
--

INSERT INTO `datotid` (`id`, `ugedag`, `tidspunkt`) VALUES
(1, 'Fredag', '12.00'),
(2, 'Fredag', '13.00'),
(3, 'Fredag', '14.00'),
(4, 'Fredag', '15.00'),
(5, 'Lørdag', '12.00'),
(6, 'Lørdag', '13.00'),
(7, 'Lørdag', '14.00'),
(8, 'Lørdag', '15.00');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `forestilling`
--

CREATE TABLE IF NOT EXISTS `forestilling` (
`id` int(11) NOT NULL,
  `datotid_id` int(11) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Data dump for tabellen `forestilling`
--

INSERT INTO `forestilling` (`id`, `datotid_id`, `scene_id`, `band_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 11),
(3, 1, 3, 17),
(4, 1, 4, 7),
(5, 2, 1, 2),
(6, 2, 2, 4),
(7, 2, 3, 6),
(8, 2, 4, 8),
(9, 3, 1, 3),
(10, 3, 2, 5),
(11, 3, 3, 9),
(12, 3, 4, 13),
(13, 5, 1, 1),
(14, 5, 2, 15),
(15, 5, 3, 16),
(16, 5, 4, 4),
(17, 6, 1, 14),
(18, 6, 2, 13),
(19, 6, 3, 12),
(20, 6, 4, 11),
(21, 7, 1, 10),
(22, 7, 2, 8),
(23, 7, 3, 7),
(24, 7, 4, 5);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `scene`
--

CREATE TABLE IF NOT EXISTS `scene` (
`id` int(11) NOT NULL,
  `scenenavn` varchar(255) NOT NULL,
  `Kapacitet` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Data dump for tabellen `scene`
--

INSERT INTO `scene` (`id`, `scenenavn`, `Kapacitet`) VALUES
(1, 'Red Stage', 16000),
(2, 'Blue Stage', 20000),
(3, 'Green Stage', 10000);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `band`
--
ALTER TABLE `band`
 ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `datotid`
--
ALTER TABLE `datotid`
 ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `forestilling`
--
ALTER TABLE `forestilling`
 ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `scene`
--
ALTER TABLE `scene`
 ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `band`
--
ALTER TABLE `band`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- Tilføj AUTO_INCREMENT i tabel `datotid`
--
ALTER TABLE `datotid`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `forestilling`
--
ALTER TABLE `forestilling`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- Tilføj AUTO_INCREMENT i tabel `scene`
--
ALTER TABLE `scene`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
