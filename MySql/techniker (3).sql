-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Dez 2021 um 11:12
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
(6, '10er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:47:31'),
(7, '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:47:39'),
(8, '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:47:48'),
(9, '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:47:57'),
(10, '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:48:07'),
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
(114, '2021-12-21', '09:45', '1.10.11', '10877', 'Nicolas', 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 10:49:00'),
(115, '2021-12-21', '09:48', '1.01.12', '10877', 'Nicolas', 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 10:49:10'),
(116, '2021-12-21', '10:30', '1.08.11', '18799', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-21 10:09:30'),
(117, '2021-12-21', '10:05', '2.35.12', '458699', 'Nicolas', 'Button Panel Tilt', 'Tasten kontrollieren und wieder angezogen / I.O.', 'ADG aus/ein / Kabel kontrolliert/ i.O', '2021-12-21 10:11:30'),
(118, '2021-12-20', '14:35', '1.14.12', '16499', 'Nicolas', '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:48:46'),
(119, '2021-12-21', '09:47', '1.05.16', '68977', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:49:19'),
(120, '2021-12-21', '15:25', '2.37.11', '16877', 'Nicolas', '100er Note in Notenleser Blokiert', ' ', '', '2021-12-21 10:49:27'),
(121, '2021-12-21', '13:45', '1.06.14', '65897', 'Nicolas', 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 10:49:37'),
(122, '2021-12-21', '14:58', '3.77.10', '14587', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', '', '2021-12-21 10:49:45'),
(123, '2021-12-21', '', '', '', 'Nicolas', 'Display defekt', 'Display Ersetzt', '', '2021-12-21 10:49:54'),
(124, '2021-12-21', '12:30', '1.07.15', '58977', 'Nicolas', 'Ticket Out verlkemmt', 'Ticket enklemmt', '', '2021-12-21 10:46:11'),
(125, '2021-12-21', '16:35', '2.38.12', '65487', 'Nicolas', 'Display defekt', 'Display Ersetzt', '', '2021-12-21 10:50:29'),
(126, '2021-12-21', '17:35', '2.07.14', '65487', 'Sarika', 'Spiel blockiert', 'ADG aus/ein, i.O', '', '2021-12-21 10:58:41'),
(127, '2021-12-16', '14:35', '', '', 'Sarika', '  ', ' ', ' ', '2021-12-21 10:59:13'),
(128, '2021-12-14', '14:36', '2.38.14', '65489', 'Sarika', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 10:59:43'),
(129, '2021-12-21', '09:46', '1.14.15', '45868', 'Alfredo', '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 11:24:31'),
(130, '2021-12-21', '09:46', '1.06.15', '568744', 'Alfredo', 'Interner Fehler', 'quittiert, netzteil kontrolliert', '', '2021-12-21 11:25:09'),
(131, '2021-12-21', '17:30', '1.13.12', '15468', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', '', '2021-12-21 16:26:55'),
(132, '2021-12-21', '22:50', '3.77.13', '15469', 'Nicolas', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 16:27:14'),
(133, '2021-12-21', '21:55', '2.39.11', '15789', 'Nicolas', 'BV locked', 'ADG aus/ein stacker raus/rein notenleser raus/rein ohne erfolgt NL defekt', '', '2021-12-21 16:27:44'),
(134, '2021-12-21', '23:55', '2.36.13', '14587', 'Nicolas', 'Display defekt', 'Display Ersetzt', '', '2021-12-21 16:28:04'),
(135, '2021-12-21', '23:59', '2.39.15', '15469', 'Nicolas', 'Bill Generic fehler', 'ADG aus/ein / I.O.', '', '2021-12-21 16:28:27'),
(136, '2021-12-21', '16:32', '1.05.12', '15466', 'Sarika', 'Interner Fehler', 'quittiert, netzteil kontrolliert', '', '2021-12-21 16:34:58'),
(137, '2021-12-21', '14:56', '2.38.14', '15487', 'Sarika', 'Bill Generic fehler', 'ADG aus/ein / I.O.', '', '2021-12-21 16:49:37'),
(138, '2021-12-21', '19:34', '2.43.12', '12456', 'Sarika', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 16:50:01'),
(139, '2021-12-21', '22:36', '2.43.13', '15469', 'Sarika', 'Button Panel Tilt', 'Tasten kontrollieren und wieder angezogen / I.O.', 'ADG aus/ein / Kabel kontrolliert/ i.O', '2021-12-21 16:50:27'),
(140, '2021-12-21', '', '', '', 'Sarika', 'Notenleser dunkel', 'notenleser raus/rein', '', '2021-12-21 17:05:53'),
(141, '2021-12-21', '', '', '', 'Sarika', 'Notenleser dunkel', 'notenleser raus/rein', '', '2021-12-21 17:05:53'),
(142, '2021-12-21', '', '', '', 'Sarika', 'Button Panel Tilt', 'Tasten kontrollieren und wieder angezogen / I.O.', 'ADG aus/ein / Kabel kontrolliert/ i.O', '2021-12-21 17:18:06'),
(143, '2021-12-21', '17:58', '1.12.25', '45688', 'Sarika', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 17:18:36'),
(144, '2021-12-21', '14:36', '2.37.14', '14569', 'Sarika', 'Bill Generic fehler', 'ADG aus/ein / I.O.', '', '2021-12-21 17:18:54'),
(145, '2021-12-21', '14:35', '1.12.14', '25687', 'Sarika', 'Monitor oben Schwarz', 'Netzteil ersetzt / I.O.', '', '2021-12-21 17:19:19'),
(146, '2021-12-21', '14:39', '2.39.13', '14798', 'Nicolas', 'Taste defekt', 'Taste ersetzt', 'Taste kontrolliert/ i.O', '2021-12-21 17:21:42'),
(147, '2021-12-21', '23:14', '2.35.14', '14789', 'Nicolas', 'Button Panel Tilt', 'Tasten kontrollieren und wieder angezogen / I.O.', 'ADG aus/ein / Kabel kontrolliert/ i.O', '2021-12-21 17:22:42'),
(148, '2021-12-21', '14:39', '2.38.14', '14786', 'Nicolas', '10er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-21 17:23:13'),
(149, '2021-12-21', '19:56', '2.38.12', '12547', 'Nicolas', 'Touchscreen fehlt', 'Quittiert', 'display ersetzt', '2021-12-21 17:26:06'),
(150, '2021-12-21', '22:13', '1.08.17', '14789', 'Sarika', 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 18:22:50'),
(151, '2021-12-21', '23:59', '1.10.14', '14789', 'Sarika', 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 18:23:07'),
(152, '2021-12-21', '13:56', '2.36.12', '15469', 'Sarika', 'Ticket Empty', 'Ticket nachfuellen', '', '2021-12-21 18:34:33'),
(153, '2021-12-21', '12:31', '2.47.12', '15487', 'Nicolas', 'Stackerbox verklaemt', 'Stackerbox entklaemt', '', '2021-12-21 18:55:14');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT für Tabelle `logfile`
--
ALTER TABLE `logfile`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
