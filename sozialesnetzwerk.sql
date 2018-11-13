-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Sze 26. 21:33
-- Kiszolgáló verziója: 10.1.34-MariaDB
-- PHP verzió: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `sozialesnetzwerk`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `antworten`
--

CREATE TABLE `antworten` (
  `id_antwort` int(11) DEFAULT NULL,
  `id_fragesteller` int(11) NOT NULL,
  `id_antwortgeber` int(11) NOT NULL,
  `id_frage` int(11) NOT NULL,
  `antwort` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fragen`
--

CREATE TABLE `fragen` (
  `– id_frage` int(11) DEFAULT NULL,
  `bild` varchar(50) NOT NULL,
  `zusatzinfos` longtext NOT NULL,
  `id_mitglied` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mitglieder`
--

CREATE TABLE `mitglieder` (
  `id_mitglied` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `vorname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fragen` int(11) NOT NULL,
  `antworten` int(11) NOT NULL,
  `zusatzinfos` longtext NOT NULL,
  `rolle` enum('Admin','Mitglied') NOT NULL,
  `userid` varchar(20) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `beitritt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 
    letzterlogin `TIMESTAMP NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `antworten`
--
ALTER TABLE `antworten`
  ADD UNIQUE KEY `id_antwort` (`id_antwort`);

--
-- A tábla indexei `fragen`
--
ALTER TABLE `fragen`
  ADD UNIQUE KEY `– id_frage` (`– id_frage`);

--
-- A tábla indexei `mitglieder`
--
ALTER TABLE `mitglieder`
  ADD PRIMARY KEY (`id_mitglied`),
  ADD UNIQUE KEY `userid` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
