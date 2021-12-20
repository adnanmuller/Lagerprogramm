-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 03:39 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techniker`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_favoriten`
--

CREATE TABLE `event_favoriten` (
  `id` int(11) NOT NULL,
  `Stoerungen` text NOT NULL,
  `problemloesung_primaer` text NOT NULL,
  `problemloesung_sekundaer` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_favoriten`
--

INSERT INTO `event_favoriten` (`id`, `Stoerungen`, `problemloesung_primaer`, `problemloesung_sekundaer`, `timestamp`) VALUES
(1, 'Ticket Empty', 'Ticket nachfuellen', 0, '2021-12-17 18:39:32'),
(2, 'Interner Fehler', 'quittiert, netzteil kontrolliert', 0, '2021-12-17 18:39:16'),
(3, 'Notenleser dunkel', 'notenleser raus/rein', 0, '2021-12-17 18:38:51'),
(4, 'Touchscreen fehlt', 'Quittiert', 0, '2021-12-16 22:34:43'),
(6, '10er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', 0, '2021-12-16 22:50:04'),
(7, '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', 0, '2021-12-16 22:49:17'),
(8, '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', 0, '2021-12-16 22:50:28'),
(9, '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', 0, '2021-12-16 22:50:51'),
(10, '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', 0, '2021-12-16 22:51:03'),
(11, 'Display defekt', 'Display Ersetzt', 0, '2021-12-16 23:10:27'),
(12, 'Stackerbox verklaemt', 'Stackerbox entklaemt', 0, '2021-12-16 23:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `logfile`
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
  `Problemloesung_sekundaer` text NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logfile`
--

INSERT INTO `logfile` (`Event_ID`, `Datum`, `Zeit`, `Position`, `Inventory`, `Techniker`, `Problembeschreibung`, `Problemloesung_primaer`, `Problemloesung_sekundaer`, `Timestamp`) VALUES
(104, '2021-12-16', '17:42', '445523', '453453', 'Alfredo', 'Ticket empty', 'qqq', 'qqqq', '2021-12-15 16:41:23'),
(105, '2021-12-16', '17:42', '445523', '453453', 'Alfredo', 'Ticket empty', 'qqq', 'qqqq', '2021-12-15 16:41:23'),
(106, '2021-12-17', '17:39', '11228', '5594', 'Alfredo', 'Ticket empty', 'wqedqedf', 'qWDQwd', '2021-12-15 16:45:21'),
(107, '', '', '', '', 'Select techniker', 'Störung', '', '', '2021-12-15 20:57:21'),
(108, '2021-02-01', '18:30', '1.10.12', '10987', 'Sarika', 'Ticket Empty', 'test', 'test', '2021-12-15 20:58:27'),
(109, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2021-12-16 16:37:37'),
(110, '', '', '', '', 'Select techniker', 'StÃ¶rung', '', '', '2021-12-16 16:47:08'),
(111, '2015-02-01', '19:35', '10988', '2055', 'Sarika', 'Interner Fehler', '', 'quittiert', '2021-12-16 19:23:03'),
(112, '2019-01-10', '18:40', '1044', '4555', 'Nicolas', 'Ticket Empty', '', '', '2021-12-16 19:25:55'),
(113, '2021-11-04', '19:30', '110477', '458888', 'Alfredo', '', '', '', '2021-12-16 19:26:43'),
(114, '2019-12-12', '14:00', '654', '486', 'Sarika', '65', '+4', '564', '2021-12-16 19:36:30'),
(115, '2021-12-12', '', '', '', 'Select techniker', '', '', '', '2021-12-16 19:36:56'),
(116, '1980-10-10', '', '', '', 'Select techniker', '', '', '', '2021-12-16 19:38:17'),
(117, '2021-12-16', '', '', '', 'Select techniker', '', '', '', '2021-12-16 22:04:08'),
(118, '2021-12-16', '23:52', '1.10.12', '18033', 'Sarika', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', '', '2021-12-16 22:51:57'),
(119, '2021-12-17', '00:23', '10.12.13', '18265', 'Sarika', 'Stackerbox verklaemt', 'Stackerbox entklaemt', '', '2021-12-16 23:22:15'),
(120, '2021-12-17', '19:35', '1088', '556888', 'Nicolas', ' ', ' ', ' ', '2021-12-17 13:01:28'),
(121, '2021-12-17', '19:33', '1877', '54984', 'Sarika', '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 13:02:02'),
(122, '0030-12-17', '18:52', '1588', '546', 'Sarika', 'in', ' ', ' ', '2021-12-17 14:02:15'),
(123, '2021-12-17', '', '', '', 'Select techniker', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 18:38:22'),
(124, '2021-12-17', '', '', '', 'Select techniker', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 18:40:29'),
(125, '2021-12-17', '', '', '', 'Select techniker', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 18:41:12'),
(126, '2021-12-17', '', '', '', 'Select techniker', ' dis', ' ', ' ', '2021-12-17 18:41:20'),
(127, '2021-12-17', '', '', '', 'Select techniker', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 18:41:38'),
(128, '2021-12-17', '', '', '', 'Select techniker', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 18:42:26'),
(129, '2021-12-10', '19:30', '10899', '18022', 'Sarika', 'in', 'Display Ersetzt', ' ', '2021-12-17 18:46:23'),
(130, '2021-12-17', '17:30', '10255', '52222', 'Sarika', 'inter', ' ', ' ', '2021-12-17 18:46:44'),
(131, '2021-12-17', '19:33', '18099', '77444', 'Alfredo', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' test', '2021-12-17 18:47:32'),
(132, '2021-12-17', '13:55', '1.10.12', '10877', 'Sarika', '20', ' ', ' ', '2021-12-17 18:47:55'),
(133, '2021-12-17', '', '', '', 'Select techniker', 'Interner Fehler', 'konttroliert, i.o', ' ', '2021-12-17 19:01:44'),
(134, '2021-12-17', '17:55', '1.08.15', '10877', 'Sarika', 'Notenleser dunkel', 'notenleser ersetzt', ' ', '2021-12-17 19:02:43'),
(135, '2021-12-17', '', '', '', 'Select techniker', ' dis', ' ', ' ', '2021-12-17 19:04:39'),
(136, '2021-12-17', '', '', '', 'Select techniker', ' dis', ' ', ' ', '2021-12-17 19:04:45'),
(137, '2021-12-17', '', '', '', 'Select techniker', ' disp', ' ', ' ', '2021-12-17 19:04:52'),
(138, '2021-12-17', '', '', '', 'Nicolas', 'Display defekt', 'Display ein/aus', ' ', '2021-12-17 19:06:18'),
(139, '2021-12-17', '', '', '', 'Select techniker', 'Notenleser dunkel', 'notenleser raus/re', ' ', '2021-12-17 19:07:40'),
(140, '2021-12-17', '', '', '', 'Select techniker', 'Touchscreen fehlt', 'Quittiert', ' ', '2021-12-17 19:07:53'),
(141, '2021-12-17', '', '', '', 'Select techniker', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 19:08:07'),
(142, '2021-12-17', '', '', '', 'Select techniker', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeb', ' ', '2021-12-17 19:09:25'),
(143, '2021-12-17', '', '', '', 'Select techniker', '20er Note in Notenleser Blokiert', 'Note dem Kunden nicht uebergeben', ' test', '2021-12-17 19:09:49'),
(144, '2021-12-17', '', '', '', 'Select techniker', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 19:11:01'),
(145, '2021-12-17', '', '', '', 'Select techniker', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 19:11:26'),
(146, '2021-12-17', '17:56', '1.11.26', '10788', 'Select techniker', '50', ' ', ' ', '2021-12-17 19:12:23'),
(147, '2021-12-17', '', '', '', 'Select techniker', ' 50', ' ', ' ', '2021-12-17 19:12:32'),
(148, '2021-12-17', '', '', '', 'Select techniker', ' 50er ', ' ', ' ', '2021-12-17 19:12:45'),
(149, '2021-12-17', '', '', '', 'Select techniker', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 19:13:02'),
(150, '2021-12-17', '', '', '', 'Select techniker', '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 19:13:13'),
(151, '2021-12-17', '14:33', '10877', '10655', 'Sarika', 'Interner Fehler', 'Display Ersetzt', ' ', '2021-12-17 19:13:46'),
(152, '2021-12-17', '', '', '', 'Select techniker', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 19:13:59'),
(153, '2021-12-17', '', '', '', 'Select techniker', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 19:14:38'),
(154, '2021-12-17', '', '', '', 'Select techniker', '10er Note in Notenleser Blokiert', 'Note dem unden uebergeben', ' ', '2021-12-17 19:14:51'),
(155, '2021-12-17', '', '', '', 'Select techniker', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 19:32:48'),
(156, '2021-12-17', '17:44', '1.10.12', '10844', 'Sarika', ' ', ' ', ' ', '2021-12-17 20:55:00'),
(157, '2021-12-17', '14:22', '1.14.10', '10877', 'Alfredo', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 20:55:54'),
(158, '2021-12-17', '14:22', '1.14.22', '105444', 'Alfredo', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 20:56:30'),
(159, '2021-12-17', '', '', '', 'Alfredo', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 20:57:28'),
(160, '2021-12-17', '', '', '', 'Nicolas', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 20:59:50'),
(161, '2021-12-17', '', '', '', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:06:08'),
(162, '2021-12-17', '14:22', '10833', '164568', 'Nicolas', 'st', ' ', ' ', '2021-12-17 21:06:33'),
(163, '2021-12-17', '13:45', '4255', '55548', 'Nicolas', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 21:06:58'),
(164, '2021-12-17', '13:55', '1564', '6516', 'Sarika', 'int', ' ', ' ', '2021-12-17 21:07:17'),
(165, '2021-12-17', '', '', '56464', 'Sarika', 'int', ' ', ' ', '2021-12-17 21:07:32'),
(166, '2021-12-17', '', '', '', 'Sarika', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:08:07'),
(167, '2021-12-17', '', '', '', 'Sarika', 'Ticket Empty', 'Ticket nachfuellen', ' ', '2021-12-17 21:17:35'),
(168, '2021-12-17', '', '', '', 'Sarika', 'Tic', ' ', ' ', '2021-12-17 21:18:25'),
(169, '2021-12-17', '', '', '', 'Sarika', 'ticket empty', 'Ticket nachfuellen', ' ', '2021-12-17 21:19:08'),
(170, '2021-12-17', '', '', '', 'Sarika', 'Notenleser dunkel', 'notenleser raus/rein', ' ', '2021-12-17 21:23:03'),
(171, '2021-12-17', '', '', '', 'Sarika', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:23:19'),
(172, '2021-12-17', '', '', '', '', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:36:01'),
(173, '2021-12-17', '', '', '', '', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:36:26'),
(174, '2021-12-17', '', '', '', '', '10er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:36:33'),
(175, '2021-12-17', '', '', '', '', 'Notenleser dunkel', 'notenleser raus/rein', ' ', '2021-12-17 21:36:58'),
(176, '2021-12-17', '', '', '', 'Select techniker', '  ', ' ', ' ', '2021-12-17 21:37:58'),
(177, '2021-12-17', '', '', '', 'Nicolas', '  ', ' ', ' ', '2021-12-17 21:38:02'),
(178, '2021-12-17', '', '', '', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:38:08'),
(179, '2021-12-17', '', '', '', 'Nicolas', 'ti', ' ', ' ', '2021-12-17 21:38:45'),
(180, '2021-12-17', '', '', '', 'Nicolas', 'Ticket Empty', 'Ticket nachfuellen', ' ', '2021-12-17 21:39:13'),
(181, '2021-12-17', '', '', '', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:39:27'),
(182, '2021-12-17', '', '', '', 'Nicolas', '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:39:40'),
(183, '2021-12-17', '', '', '', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:39:50'),
(184, '2021-12-17', '', '', '', 'Nicolas', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 21:40:02'),
(185, '2021-12-17', '', '', '', 'Nicolas', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 21:40:15'),
(186, '2021-12-17', '', '', '', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:41:56'),
(187, '2021-12-17', '', '', '', 'Nicolas', 'Touchscreen fehlt', 'Quittiert', ' ', '2021-12-17 21:42:08'),
(188, '2021-12-17', '', '', '', 'Nicolas', '20er Note in Notenleser Blokiert', '', ' ', '2021-12-17 21:42:41'),
(189, '2021-12-17', '', '', '', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:43:29'),
(190, '2021-12-17', '14:55', '14566', '5465', 'Nicolas', '20e', ' ', ' ', '2021-12-17 21:43:48'),
(191, '2021-12-17', '', '', '', 'Nicolas', '20er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:44:58'),
(192, '2021-12-17', '', '', '', 'Nicolas', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:46:02'),
(193, '2021-12-17', '', '', '', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:46:22'),
(194, '2021-12-17', '', '', '', 'Nicolas', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 21:46:36'),
(195, '2021-12-17', '', '', '', 'Nicolas', 'Ticket Empty', 'Ticket nachfuellen', ' ', '2021-12-17 21:47:03'),
(196, '2021-12-17', '', '', '', 'Nicolas', 'stack', ' ', ' ', '2021-12-17 21:47:16'),
(197, '2021-12-17', '', '', '', 'Nicolas', 'Stackerbox verklaemt', ' ', ' ', '2021-12-17 21:47:32'),
(198, '2021-12-17', '', '', '', 'Nicolas', 'Stackerbox verklaemt', 'Stackerbox entklaemt', ' ', '2021-12-17 21:47:43'),
(199, '2021-12-17', '', '', '', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:47:55'),
(200, '2021-12-17', '', '', '', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:48:07'),
(201, '2021-12-17', '', '', '', 'Nicolas', 'ti', ' ', ' ', '2021-12-17 21:48:15'),
(202, '2021-12-17', '', '', '', 'Nicolas', 'Ticket Empty', 'Ticket nachfuellen', ' ', '2021-12-17 21:48:23'),
(203, '2021-12-17', '', '', '', 'Nicolas', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 21:48:39'),
(204, '2021-12-17', '', '', '', 'Nicolas', '50', ' ', ' ', '2021-12-17 21:48:51'),
(205, '2021-12-17', '', '', '', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:49:00'),
(206, '2021-12-17', '13:55', '12566', '554654', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:49:15'),
(207, '2021-12-17', '14:22', '26444', '14588', 'Nicolas', '200', ' ', ' ', '2021-12-17 21:49:31'),
(208, '2021-12-17', '', '', '', 'Nicolas', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:49:40'),
(209, '2021-12-17', '', '', '', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:50:33'),
(210, '2021-12-17', '', '', '', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:50:38'),
(211, '2021-12-17', '', '', '', 'Nicolas', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 21:50:42'),
(212, '2021-12-17', '', '', '', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:50:49'),
(213, '2021-12-17', '14:33', '3515', '564654', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:51:08'),
(214, '2021-12-17', '14:55', '55466', '54654', 'Nicolas', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 21:51:26'),
(215, '2021-12-17', '', '', '', 'Nicolas', 'k', ' ', ' ', '2021-12-17 21:51:58'),
(216, '2021-12-17', '', '', '', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 21:52:16'),
(217, '2021-12-17', '', '', '', 'Nicolas', '50er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 22:09:26'),
(218, '2021-12-17', '', '', '', 'Nicolas', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 22:18:45'),
(219, '2021-12-17', '', '', '', '', '100er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 22:20:19'),
(220, '2021-12-17', '14:55', '1.11.12', '11256', 'Nicolas', 'in', ' ', ' ', '2021-12-17 22:22:31'),
(221, '2021-12-17', '', '', '', 'Nicolas', '  ', ' ', ' ', '2021-12-17 22:22:36'),
(222, '2021-12-17', '13:22', '4654', '45646', 'Nicolas', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 22:23:02'),
(223, '2021-12-17', '14:00', '6+54+4', '6848', 'Alfredo', 'Interner Fehler', 'quittiert, netzteil kontrolliert', ' ', '2021-12-17 22:27:57'),
(224, '2021-12-17', '13:25', '5646', '564', 'Sarika', 'Ticket Empty', 'Ticket nachfuellen', ' ', '2021-12-17 22:31:03'),
(225, '2021-12-17', '13:25', '65++4', '5455', 'Sarika', '200er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 22:31:27'),
(226, '2021-12-17', '', '', '', '', '  ', ' ', ' ', '2021-12-17 22:32:56'),
(227, '2021-12-17', '', '', '', 'Alfredo', 'Display defekt', 'Display Ersetzt', ' ', '2021-12-17 22:44:22'),
(228, '2021-12-18', '', '', '', 'Sarika', '10er Note in Notenleser Blokiert', 'Note dem Kunden uebergeben', ' ', '2021-12-17 23:38:19'),
(229, '2021-12-18', '00:38', '10899', '444556', 'Nicolas', 'Touchscreen fehlt', 'Quittiert', ' ', '2021-12-17 23:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'adnan', '$2y$10$OzC.A4.jCqcwchxjvWd73ujB/jWU2RCeMbmbqV1tQ1mCPnWeUcWV2', '2021-12-16 18:37:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_favoriten`
--
ALTER TABLE `event_favoriten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logfile`
--
ALTER TABLE `logfile`
  ADD PRIMARY KEY (`Event_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_favoriten`
--
ALTER TABLE `event_favoriten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logfile`
--
ALTER TABLE `logfile`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
