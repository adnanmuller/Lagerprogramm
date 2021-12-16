-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 16. Dez 2021 um 12:16
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `techniker`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event_favoriten`
--

CREATE TABLE `event_favoriten` (
  `Störungen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `event_favoriten`
--

INSERT INTO `event_favoriten` (`Störungen`) VALUES
('Ticket Empty'),
('Interner Fehler'),
('Notenleser dunkel');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logfile`
--

CREATE TABLE `logfile` (
  `Event_ID` int(11) NOT NULL,
  `Datum` text NOT NULL,
  `Zeit` text NOT NULL,
  `Position` text NOT NULL,
  `Inventory` text NOT NULL,
  `Techniker` text NOT NULL,
  `Problembeschreibung` text NOT NULL,
  `Problemlösung_primär` text NOT NULL,
  `Problemlösung_sekundär` text NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `logfile`
--

INSERT INTO `logfile` (`Event_ID`, `Datum`, `Zeit`, `Position`, `Inventory`, `Techniker`, `Problembeschreibung`, `Problemlösung_primär`, `Problemlösung_sekundär`, `Timestamp`) VALUES
(104, '2021-12-16', '17:42', '445523', '453453', 'Alfredo', 'Ticket empty', 'qqq', 'qqqq', '2021-12-15 16:41:23'),
(105, '2021-12-16', '17:42', '445523', '453453', 'Alfredo', 'Ticket empty', 'qqq', 'qqqq', '2021-12-15 16:41:23'),
(106, '2021-12-17', '17:39', '11228', '5594', 'Alfredo', 'Ticket empty', 'wqedqedf', 'qWDQwd', '2021-12-15 16:45:21'),
(107, '', '', '', '', 'Select techniker', 'Störung', '', '', '2021-12-15 20:57:21'),
(108, '2021-02-01', '18:30', '1.10.12', '10987', 'Sarika', 'Ticket Empty', 'test', 'test', '2021-12-15 20:58:27');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `logfile`
--
ALTER TABLE `logfile`
  ADD PRIMARY KEY (`Event_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `logfile`
--
ALTER TABLE `logfile`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
