-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 30. Dez 2021 um 11:39
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
  `id` int(11) NOT NULL,
  `Stoerungen` text NOT NULL,
  `problemloesung_primaer` text NOT NULL,
  `problemloesung_sekundaer` text NOT NULL DEFAULT 'n/a',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `event_favoriten`
--

INSERT INTO `event_favoriten` (`id`, `Stoerungen`, `problemloesung_primaer`, `problemloesung_sekundaer`, `timestamp`) VALUES
(1, 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 10:46:58'),
(2, 'Interner Fehler', 'quittiert, netzteil kontrolliert', '', '2021-12-21 10:47:06'),
(3, 'Notenleser dunkel', 'notenleser raus/rein', '', '2021-12-21 10:47:15'),
(4, 'Touchscreen fehlt', 'Quittiert', '', '2021-12-21 10:47:23'),
(6, '10er Note in Notenleser blockiert', 'Note dem Kunden uebergeben', '', '2021-12-23 13:25:33'),
(7, '20er Note in Notenleser blockiert', 'Note dem Kunden uebergeben', '', '2021-12-23 13:25:44'),
(8, '50er Note in Notenleser blockiert', 'Note dem Kunden uebergeben', '', '2021-12-23 13:25:55'),
(9, '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:47:57'),
(10, '200er Note in Notenleser blockiert', 'Note dem Kunden uebergeben', '', '2021-12-23 13:26:08'),
(11, 'Display defekt', 'Display Ersetzt', '', '2021-12-21 10:48:14'),
(12, 'Stackerbox verklaemt', 'Stackerbox entklaemt', '', '2021-12-21 10:48:23'),
(13, 'Door Open M', 'Tür auf / alle Türkontakte Kontr. I.O / Tür zu', '', '2021-12-21 10:48:32'),
(24, 'Button Panel Tilt', 'Tasten kontrollieren und wieder angezogen / I.O.', 'ADG aus/ein / Kabel kontrolliert/ i.O', '2021-12-20 16:52:06'),
(28, 'Ticket Out verlkemmt', 'Ticket enklemmt', '', '2021-12-21 10:45:28'),
(29, 'Spiel blockiert', 'ADG aus/ein, i.O', '', '2021-12-21 10:58:12'),
(30, 'Stacker Alarm Test', 'Stacker Alarm getestet I.O', '', '2021-12-21 11:04:13'),
(31, 'Bill stacker jam', 'stacker kontrolliert/ NL kontrolliert/i.O', '', '2021-12-21 11:04:33'),
(32, 'Monitor oben Schwarz', 'Netzteil ersetzt / I.O.', '', '2021-12-21 11:04:54'),
(33, 'Bill Generic fehler', 'ADG aus/ein / I.O.', '', '2021-12-21 11:05:12'),
(34, 'History Kontrolliert', '', '', '2021-12-21 11:06:14'),
(35, 'Taste defekt', 'Taste ersetzt', 'Taste kontrolliert/ i.O', '2021-12-21 11:06:45'),
(36, 'Stackerleerung am Samstag', '', '', '2021-12-21 11:07:18'),
(37, 'BV locked', 'ADG aus/ein stacker raus/rein notenleser raus/rein ohne erfolgt NL defekt', '', '2021-12-21 11:08:01');

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
  `Problemloesung_primaer` text NOT NULL,
  `Problemloesung_sekundaer` text NOT NULL DEFAULT 'n/a',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `logfile`
--

INSERT INTO `logfile` (`Event_ID`, `Datum`, `Zeit`, `Position`, `Inventory`, `Techniker`, `Problembeschreibung`, `Problemloesung_primaer`, `Problemloesung_sekundaer`, `Timestamp`) VALUES
(186, '2021-12-30', '14:35', '2.36.14', '14587', 'Nicolas', '200er Note in Notenleser blockiert', 'Note dem Kunden uebergeben', '', '2021-12-30 10:39:10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'adnan', '$2y$10$OzC.A4.jCqcwchxjvWd73ujB/jWU2RCeMbmbqV1tQ1mCPnWeUcWV2', '2021-12-16 18:37:04');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `event_favoriten`
--
ALTER TABLE `event_favoriten`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `logfile`
--
ALTER TABLE `logfile`
  ADD PRIMARY KEY (`Event_ID`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event_favoriten`
--
ALTER TABLE `event_favoriten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `logfile`
--
ALTER TABLE `logfile`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
