-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.12-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for tracking_system
CREATE DATABASE IF NOT EXISTS `tracking_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tracking_system`;

-- Dumping structure for table tracking_system.device_data
CREATE TABLE IF NOT EXISTS `device_data` (
  `signal_id` int(11) NOT NULL,
  `cihaz_id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `signal_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- Dumping data for table tracking_system.device_data: ~310 rows (approximately)
/*!40000 ALTER TABLE `device_data` DISABLE KEYS */;
INSERT INTO `device_data` (`signal_id`, `cihaz_id`, `lat`, `lng`, `signal_time`) VALUES
	(1, 1, 40.920816, 29.4119383, '2020-08-31 15:02:25'),
	(2, 2, 40.820816, 29.4119383, '2020-08-31 15:02:25'),
	(3, 3, 40.70916, 29.4119342, '2020-08-31 15:02:25'),
	(4, 4, 40.8743495, 29.2343368, '2020-08-31 15:02:25'),
	(5, 5, 40.5308, 30.521665, '2020-08-31 15:02:25'),
	(6, 6, 40.93661, 31.223699, '2020-08-31 15:02:25'),
	(7, 7, 40.53661, 31.825699, '2020-08-31 15:02:25'),
	(8, 2, 40.320816, 29.4119383, '2020-08-31 15:02:51'),
	(9, 3, 40.50916, 29.4119342, '2020-08-31 15:02:51'),
	(10, 1, 40.920816, 29.3219383, '2020-08-31 15:02:51'),
	(11, 5, 39.2329264, 37.3748714, '2020-08-31 15:02:51'),
	(12, 7, 40.53661, 31.825699, '2020-08-31 15:02:51'),
	(13, 3, 40.40916, 29.4119342, '2020-08-31 15:03:52'),
	(14, 2, 40.420816, 29.4119383, '2020-08-31 15:03:52'),
	(15, 7, 40.53661, 31.82669956, '2020-08-31 15:03:52'),
	(16, 1, 40.920816, 29.4119383, '2020-08-31 15:03:52'),
	(17, 7, 40.59661, 31.72669956, '2020-09-01 14:31:49'),
	(18, 3, 40.414486, 29.424004, '2020-09-01 15:28:27'),
	(19, 3, 40.415456, 29.434784, '2020-09-01 16:50:33'),
	(20, 1, 40.935616, 29.461983, '2020-09-03 11:05:55'),
	(21, 4, 40.894425, 29.264667, '2020-09-03 11:05:55'),
	(22, 5, 39.242264, 37.324714, '2020-09-03 11:05:55'),
	(23, 2, 40.429816, 29.419383, '2020-09-03 11:05:55'),
	(24, 2, 40.429816, 29.419383, '2020-09-03 11:07:18'),
	(25, 2, 40.429826, 29.489383, '2020-09-03 11:08:10'),
	(26, 2, 40.429826, 29.489383, '2020-09-03 11:08:32'),
	(27, 2, 40.429828, 29.489383, '2020-09-03 11:08:49'),
	(28, 2, 40.429828, 29.689383, '2020-09-03 11:09:14'),
	(29, 2, 40.429828, 29.682383, '2020-09-03 11:09:33'),
	(30, 2, 40.409828, 29.682383, '2020-09-03 11:10:02'),
	(31, 2, 40.489828, 29.682383, '2020-09-03 11:10:43'),
	(32, 5, 39.783509, 32.702197, '2020-09-07 19:24:30'),
	(33, 1, 39.623435, 29.451217, '2020-09-07 19:24:56'),
	(34, 1, 39.624207, 29.451942, '2020-09-07 19:25:34'),
	(35, 5, 39.783804, 32.703084, '2020-09-07 19:25:50'),
	(36, 1, 39.624397, 29.452175, '2020-09-07 19:26:32'),
	(37, 5, 39.783879, 32.703056, '2020-09-07 19:26:45'),
	(38, 0, 42.152426, 30.785457, '2020-09-07 19:27:02'),
	(39, 4, 42.37766, 28.500891, '2020-09-07 19:27:04'),
	(40, 2, 38.355212, 30.273337, '2020-09-08 08:41:48'),
	(41, 2, 38.356539, 30.272486, '2020-09-08 08:44:11'),
	(42, 1, 38.291306, 29.275046, '2020-09-08 08:45:31'),
	(43, 4, 35.940059, 32.639782, '2020-09-08 08:46:36'),
	(44, 5, 40.403728, 36.217644, '2020-09-08 14:07:16'),
	(45, 2, 35.336342, 28.434355, '2020-09-09 08:10:49'),
	(46, 5, 41.429467, 41.235081, '2020-09-09 08:11:28'),
	(47, 3, 38.209547, 31.869289, '2020-09-09 08:12:23'),
	(48, 7, 39.237606, 29.340713, '2020-09-10 14:39:11'),
	(49, 1, 37.672697, 25.857831, '2020-09-10 15:05:21'),
	(50, 1, 37.672939, 25.857815, '2020-09-10 15:05:27'),
	(51, 5, 40.712205, 41.394635, '2020-09-10 15:05:29'),
	(52, 6, 42.242869, 41.206423, '2020-09-10 15:05:31'),
	(53, 6, 42.243619, 41.206861, '2020-09-10 15:05:33'),
	(54, 6, 42.241973, 41.206215, '2020-09-10 15:05:34'),
	(55, 3, 38.854454, 28.806311, '2020-09-10 15:05:36'),
	(56, 2, 38.559673, 36.88679, '2020-09-10 15:05:38'),
	(57, 6, 42.242671, 41.206745, '2020-09-10 15:05:39'),
	(58, 6, 42.241861, 41.207357, '2020-09-10 15:05:41'),
	(59, 7, 39.162077, 27.442086, '2020-09-10 15:05:42'),
	(60, 2, 38.560168, 36.886811, '2020-09-10 15:05:44'),
	(61, 3, 38.853159, 28.80593, '2020-09-10 15:05:45'),
	(62, 2, 38.56044, 36.887119, '2020-09-10 15:05:46'),
	(63, 3, 38.854591, 28.80604, '2020-09-10 15:05:48'),
	(64, 6, 42.24185, 41.207354, '2020-09-10 15:05:50'),
	(65, 6, 42.242834, 41.206187, '2020-09-10 15:05:51'),
	(66, 1, 37.672151, 25.856856, '2020-09-10 15:05:52'),
	(67, 1, 37.671705, 25.857616, '2020-09-10 15:05:54'),
	(68, 7, 39.161693, 27.441711, '2020-09-10 15:05:55'),
	(69, 4, 41.794136, 31.259271, '2020-09-10 15:05:56'),
	(70, 4, 41.794052, 31.258912, '2020-09-10 15:05:57'),
	(71, 3, 38.853669, 28.806066, '2020-09-10 15:05:58'),
	(72, 2, 38.560509, 36.887061, '2020-09-10 15:06:00'),
	(73, 7, 39.161762, 27.441287, '2020-09-10 15:06:02'),
	(74, 5, 40.712326, 41.395873, '2020-09-10 15:06:03'),
	(75, 4, 41.793126, 31.259456, '2020-09-10 15:06:04'),
	(76, 3, 38.8532, 28.806994, '2020-09-10 15:06:04'),
	(77, 5, 40.710594, 41.396072, '2020-09-10 15:06:05'),
	(78, 5, 40.7114, 41.395666, '2020-09-10 15:06:05'),
	(79, 4, 41.792829, 31.259772, '2020-09-10 15:06:05'),
	(80, 3, 38.853396, 28.807209, '2020-09-10 15:06:05'),
	(81, 4, 41.794278, 31.259882, '2020-09-10 15:06:05'),
	(82, 6, 42.243145, 41.207523, '2020-09-10 15:06:05'),
	(83, 3, 38.854336, 28.80769, '2020-09-10 15:06:05'),
	(84, 1, 37.672613, 25.856913, '2020-09-10 15:06:06'),
	(85, 4, 41.794004, 31.259009, '2020-09-10 15:06:06'),
	(86, 6, 42.24254, 41.206891, '2020-09-10 15:06:06'),
	(87, 5, 40.71187, 41.394754, '2020-09-10 15:06:06'),
	(88, 1, 37.672841, 25.856289, '2020-09-10 15:06:06'),
	(89, 2, 38.559861, 36.887137, '2020-09-10 15:06:06'),
	(90, 2, 38.559199, 36.887182, '2020-09-10 15:06:06'),
	(91, 2, 38.560622, 36.886507, '2020-09-10 15:06:06'),
	(92, 1, 37.672277, 25.856781, '2020-09-10 15:06:06'),
	(93, 5, 40.711111, 41.394168, '2020-09-10 15:06:06'),
	(94, 6, 42.243601, 41.207473, '2020-09-10 15:06:06'),
	(95, 6, 42.2424, 41.205818, '2020-09-10 15:06:06'),
	(96, 3, 38.854188, 28.807318, '2020-09-10 15:06:06'),
	(97, 7, 39.160957, 27.442519, '2020-09-10 15:06:06'),
	(98, 1, 37.67304, 25.857429, '2020-09-10 15:06:06'),
	(99, 6, 42.24268, 41.206436, '2020-09-10 15:06:06'),
	(100, 1, 37.672781, 25.856713, '2020-09-10 15:06:06'),
	(101, 3, 38.853967, 28.807582, '2020-09-10 15:06:06'),
	(102, 7, 39.162489, 27.44212, '2020-09-10 15:06:06'),
	(103, 1, 37.673174, 25.856156, '2020-09-10 15:06:07'),
	(104, 6, 42.24189, 41.206713, '2020-09-10 15:06:07'),
	(105, 2, 38.560641, 36.887887, '2020-09-10 15:06:07'),
	(106, 6, 42.242758, 41.206513, '2020-09-10 15:06:07'),
	(107, 1, 37.673175, 25.857402, '2020-09-10 15:06:07'),
	(108, 6, 42.242589, 41.207481, '2020-09-10 15:06:07'),
	(109, 4, 41.793071, 31.260363, '2020-09-10 15:06:07'),
	(110, 1, 37.672382, 25.857263, '2020-09-10 15:06:07'),
	(111, 2, 38.559803, 36.886935, '2020-09-10 15:06:07'),
	(112, 6, 42.243429, 41.20741, '2020-09-10 15:06:07'),
	(113, 7, 39.161451, 27.44309, '2020-09-10 15:06:07'),
	(114, 3, 38.854496, 28.80635, '2020-09-10 15:06:07'),
	(115, 5, 40.711292, 41.395364, '2020-09-10 15:06:07'),
	(116, 6, 42.242068, 41.207317, '2020-09-10 15:06:07'),
	(117, 5, 40.710495, 41.395331, '2020-09-10 15:06:07'),
	(118, 6, 42.242548, 41.207479, '2020-09-10 15:06:07'),
	(119, 1, 37.672924, 25.857493, '2020-09-10 15:06:07'),
	(120, 1, 37.673028, 25.857123, '2020-09-10 15:06:07'),
	(121, 6, 42.242079, 41.206626, '2020-09-10 15:06:07'),
	(122, 1, 37.672508, 25.85631, '2020-09-10 15:06:07'),
	(123, 2, 38.560205, 36.886494, '2020-09-10 15:06:07'),
	(124, 1, 37.672665, 25.856955, '2020-09-10 15:06:07'),
	(125, 2, 38.559467, 36.886866, '2020-09-10 15:06:07'),
	(126, 1, 37.673156, 25.858079, '2020-09-10 15:06:07'),
	(127, 2, 38.559466, 36.887662, '2020-09-10 15:06:07'),
	(128, 7, 39.162639, 27.442351, '2020-09-10 15:06:07'),
	(129, 5, 40.710978, 41.395514, '2020-09-10 15:06:07'),
	(130, 7, 39.162348, 27.442321, '2020-09-10 15:06:08'),
	(131, 7, 39.161463, 27.441534, '2020-09-10 15:06:08'),
	(132, 1, 37.672427, 25.857362, '2020-09-10 15:06:08'),
	(133, 3, 38.854152, 28.806506, '2020-09-10 15:06:08'),
	(134, 4, 41.792709, 31.259239, '2020-09-10 15:06:08'),
	(135, 2, 38.561025, 36.88834, '2020-09-10 15:06:08'),
	(136, 6, 42.242509, 41.207325, '2020-09-10 15:06:08'),
	(137, 5, 40.711817, 41.395642, '2020-09-10 15:06:08'),
	(138, 6, 42.24266, 41.207256, '2020-09-10 15:06:08'),
	(139, 7, 39.161359, 27.441849, '2020-09-10 15:06:08'),
	(140, 5, 40.711449, 41.394874, '2020-09-10 15:06:08'),
	(141, 1, 37.672234, 25.85658, '2020-09-10 15:06:08'),
	(142, 7, 39.161351, 27.442519, '2020-09-10 15:06:08'),
	(143, 7, 39.161417, 27.441577, '2020-09-10 15:06:08'),
	(144, 7, 39.161367, 27.442068, '2020-09-10 15:06:08'),
	(145, 4, 41.793974, 31.259141, '2020-09-10 15:06:08'),
	(146, 6, 42.243401, 41.206804, '2020-09-10 15:06:08'),
	(147, 5, 40.712349, 41.395421, '2020-09-10 15:06:08'),
	(148, 3, 38.855043, 28.807774, '2020-09-10 15:06:08'),
	(149, 2, 38.559453, 36.886591, '2020-09-10 15:06:08'),
	(150, 4, 41.794592, 31.259143, '2020-09-10 15:06:08'),
	(151, 2, 38.560147, 36.887788, '2020-09-10 15:06:08'),
	(152, 5, 40.710449, 41.395298, '2020-09-10 15:06:08'),
	(153, 2, 38.560525, 36.88762, '2020-09-10 15:06:08'),
	(154, 7, 39.161738, 27.442447, '2020-09-10 15:06:08'),
	(155, 1, 37.671952, 25.856364, '2020-09-10 15:06:08'),
	(156, 6, 42.242221, 41.207181, '2020-09-10 15:06:08'),
	(157, 6, 42.243071, 41.206791, '2020-09-10 15:06:09'),
	(158, 5, 40.712014, 41.396055, '2020-09-10 15:06:09'),
	(159, 4, 41.794344, 31.259811, '2020-09-10 15:06:09'),
	(160, 6, 42.242248, 41.206199, '2020-09-10 15:06:09'),
	(161, 3, 38.853473, 28.806322, '2020-09-10 15:06:09'),
	(162, 5, 40.711046, 41.395912, '2020-09-10 15:06:09'),
	(163, 1, 37.672936, 25.857484, '2020-09-10 15:06:09'),
	(164, 7, 39.162227, 27.441258, '2020-09-10 15:06:09'),
	(165, 2, 38.560265, 36.887179, '2020-09-10 15:06:09'),
	(166, 3, 38.854299, 28.806141, '2020-09-10 15:06:09'),
	(167, 3, 38.855087, 28.807719, '2020-09-10 15:06:09'),
	(168, 1, 37.673345, 25.85666, '2020-09-10 15:06:09'),
	(169, 3, 38.853273, 28.807049, '2020-09-10 15:06:09'),
	(170, 1, 37.672135, 25.857283, '2020-09-10 15:06:09'),
	(171, 4, 41.792979, 31.259819, '2020-09-10 15:06:09'),
	(172, 2, 38.559733, 36.887371, '2020-09-10 15:06:09'),
	(173, 4, 41.792957, 31.259061, '2020-09-10 15:06:09'),
	(174, 2, 38.560634, 36.887651, '2020-09-10 15:06:09'),
	(175, 1, 37.67156, 25.857512, '2020-09-10 15:06:09'),
	(176, 3, 38.855036, 28.806318, '2020-09-10 15:06:09'),
	(177, 7, 39.16187, 27.44217, '2020-09-10 15:06:09'),
	(178, 5, 40.710734, 41.395062, '2020-09-10 15:06:09'),
	(179, 6, 42.241941, 41.207412, '2020-09-10 15:06:09'),
	(180, 5, 40.710939, 41.395449, '2020-09-10 15:06:09'),
	(181, 4, 41.793758, 31.259637, '2020-09-10 15:06:09'),
	(182, 4, 41.793395, 31.258775, '2020-09-10 15:06:09'),
	(183, 2, 38.559222, 36.886468, '2020-09-10 15:06:10'),
	(184, 4, 41.793027, 31.259704, '2020-09-10 15:06:10'),
	(185, 4, 41.794111, 31.25908, '2020-09-10 15:06:10'),
	(186, 2, 38.559864, 36.886861, '2020-09-10 15:06:10'),
	(187, 7, 39.161289, 27.442743, '2020-09-10 15:06:10'),
	(188, 6, 42.241885, 41.205894, '2020-09-10 15:06:10'),
	(189, 4, 41.792677, 31.258975, '2020-09-10 15:06:10'),
	(190, 7, 39.16266, 27.441306, '2020-09-10 15:06:10'),
	(191, 1, 37.672289, 25.856294, '2020-09-10 15:06:10'),
	(192, 7, 39.161111, 27.441992, '2020-09-10 15:06:10'),
	(193, 3, 38.853488, 28.806935, '2020-09-10 15:06:10'),
	(194, 5, 40.711135, 41.395055, '2020-09-10 15:06:10'),
	(195, 5, 40.710611, 41.394855, '2020-09-10 15:06:10'),
	(196, 5, 40.711368, 41.394529, '2020-09-10 15:06:10'),
	(197, 4, 41.793175, 31.259045, '2020-09-10 15:06:10'),
	(198, 6, 42.243494, 41.206749, '2020-09-10 15:06:10'),
	(199, 1, 37.673211, 25.857279, '2020-09-10 15:06:10'),
	(200, 7, 39.161064, 27.442711, '2020-09-10 15:06:10'),
	(201, 5, 40.712113, 41.395348, '2020-09-10 15:06:10'),
	(202, 3, 38.853162, 28.806863, '2020-09-10 15:06:10'),
	(203, 7, 39.161683, 27.442872, '2020-09-10 15:06:10'),
	(204, 7, 39.162059, 27.442298, '2020-09-10 15:06:10'),
	(205, 7, 39.162066, 27.441365, '2020-09-10 15:06:10'),
	(206, 7, 39.162436, 27.441902, '2020-09-10 15:06:10'),
	(207, 6, 42.243113, 41.207483, '2020-09-10 15:06:10'),
	(208, 5, 40.711178, 41.395224, '2020-09-10 15:06:10'),
	(209, 6, 42.243437, 41.206864, '2020-09-10 15:06:10'),
	(210, 6, 42.241766, 41.206476, '2020-09-10 15:06:11'),
	(211, 5, 40.710761, 41.395383, '2020-09-10 15:06:11'),
	(212, 4, 41.793622, 31.25953, '2020-09-10 15:06:11'),
	(213, 6, 42.24347, 41.207512, '2020-09-10 15:06:11'),
	(214, 5, 40.710944, 41.394607, '2020-09-10 15:06:11'),
	(215, 5, 40.711432, 41.395402, '2020-09-10 15:06:11'),
	(216, 2, 38.560037, 36.886984, '2020-09-10 15:06:11'),
	(217, 7, 39.161542, 27.442737, '2020-09-10 15:06:11'),
	(218, 2, 38.560202, 36.887266, '2020-09-10 15:06:11'),
	(219, 5, 40.711237, 41.395742, '2020-09-10 15:06:11'),
	(220, 1, 37.673404, 25.856983, '2020-09-10 15:06:11'),
	(221, 4, 41.793147, 31.259108, '2020-09-10 15:06:11'),
	(222, 5, 40.711665, 41.394934, '2020-09-10 15:06:11'),
	(223, 3, 38.853566, 28.80704, '2020-09-10 15:06:11'),
	(224, 4, 41.793498, 31.259599, '2020-09-10 15:06:11'),
	(225, 4, 41.793841, 31.259853, '2020-09-10 15:06:11'),
	(226, 4, 41.793184, 31.260039, '2020-09-10 15:06:11'),
	(227, 2, 38.561035, 36.886995, '2020-09-10 15:06:11'),
	(228, 4, 41.79265, 31.258613, '2020-09-10 15:06:11'),
	(229, 7, 39.162807, 27.442113, '2020-09-10 15:06:11'),
	(230, 2, 38.560985, 36.887327, '2020-09-10 15:06:11'),
	(231, 7, 39.161071, 27.442358, '2020-09-10 15:06:11'),
	(232, 2, 38.560013, 36.887536, '2020-09-10 15:06:11'),
	(233, 2, 38.559362, 36.886965, '2020-09-10 15:06:11'),
	(234, 4, 41.793525, 31.259294, '2020-09-10 15:06:11'),
	(235, 4, 41.793859, 31.259838, '2020-09-10 15:06:11'),
	(236, 4, 41.793827, 31.259212, '2020-09-10 15:06:11'),
	(237, 5, 40.711066, 41.395178, '2020-09-10 15:06:12'),
	(238, 4, 41.792927, 31.259995, '2020-09-10 15:06:12'),
	(239, 3, 38.854985, 28.806979, '2020-09-10 15:06:12'),
	(240, 2, 38.560547, 36.887295, '2020-09-10 15:06:12'),
	(241, 1, 37.67177, 25.856956, '2020-09-10 15:06:12'),
	(242, 6, 42.242294, 41.20576, '2020-09-10 15:06:12'),
	(243, 7, 39.161046, 27.442096, '2020-09-10 15:06:12'),
	(244, 7, 39.161212, 27.4429, '2020-09-10 15:06:12'),
	(245, 6, 42.242162, 41.207122, '2020-09-10 15:06:12'),
	(246, 5, 40.711287, 41.396041, '2020-09-10 15:06:12'),
	(247, 1, 37.672542, 25.856217, '2020-09-10 15:06:12'),
	(248, 7, 39.162023, 27.441719, '2020-09-10 15:06:12'),
	(249, 1, 37.673202, 25.85788, '2020-09-10 15:06:12'),
	(250, 4, 41.792737, 31.259903, '2020-09-10 15:06:12'),
	(251, 4, 41.79426, 31.258819, '2020-09-10 15:06:12'),
	(252, 4, 41.793919, 31.258989, '2020-09-10 15:06:12'),
	(253, 5, 40.710879, 41.395064, '2020-09-10 15:06:12'),
	(254, 7, 39.160928, 27.441428, '2020-09-10 15:06:12'),
	(255, 6, 42.242449, 41.207339, '2020-09-10 15:06:12'),
	(256, 1, 37.673257, 25.856739, '2020-09-10 15:06:12'),
	(257, 6, 42.243366, 41.206544, '2020-09-10 15:06:12'),
	(258, 4, 41.794014, 31.260259, '2020-09-10 15:06:12'),
	(259, 5, 40.712037, 41.394994, '2020-09-10 15:06:12'),
	(260, 4, 41.794293, 31.259566, '2020-09-10 15:06:12'),
	(261, 5, 40.711563, 41.394529, '2020-09-10 15:06:12'),
	(262, 2, 38.560061, 36.886675, '2020-09-10 15:06:12'),
	(263, 6, 42.243673, 41.206891, '2020-09-10 15:06:12'),
	(264, 7, 39.162173, 27.442691, '2020-09-10 15:06:13'),
	(265, 4, 41.793759, 31.259788, '2020-09-10 15:06:13'),
	(266, 1, 37.672316, 25.856768, '2020-09-10 15:06:13'),
	(267, 3, 38.853429, 28.80776, '2020-09-10 15:06:14'),
	(268, 4, 41.793536, 31.259582, '2020-09-10 15:06:14'),
	(269, 3, 38.854735, 28.805851, '2020-09-10 15:06:14'),
	(270, 5, 40.711866, 41.394398, '2020-09-10 15:06:15'),
	(271, 2, 38.560186, 36.88649, '2020-09-10 15:06:15'),
	(272, 4, 41.794491, 31.25938, '2020-09-10 15:06:15'),
	(273, 1, 37.673184, 25.856204, '2020-09-10 15:06:15'),
	(274, 1, 37.673477, 25.856818, '2020-09-10 15:06:16'),
	(275, 7, 39.16167, 27.441201, '2020-09-10 15:06:16'),
	(276, 7, 39.161672, 27.442984, '2020-09-10 15:06:17'),
	(277, 4, 41.793146, 31.259671, '2020-09-10 15:06:17'),
	(278, 2, 38.559378, 36.886702, '2020-09-10 15:06:17'),
	(279, 5, 40.710384, 41.395189, '2020-09-10 15:06:18'),
	(280, 5, 40.710633, 41.394257, '2020-09-10 15:06:18'),
	(281, 5, 40.711141, 41.395661, '2020-09-10 15:06:19'),
	(282, 1, 37.672674, 25.857271, '2020-09-10 15:06:20'),
	(283, 2, 38.559098, 36.88772, '2020-09-10 15:06:20'),
	(284, 5, 40.710861, 41.395102, '2020-09-10 15:06:20'),
	(285, 3, 38.854352, 28.806514, '2020-09-10 15:06:20'),
	(286, 7, 39.161972, 27.443001, '2020-09-10 15:06:21'),
	(287, 2, 38.560443, 36.887442, '2020-09-10 15:06:21'),
	(288, 3, 38.853208, 28.807494, '2020-09-10 15:06:21'),
	(289, 1, 37.671941, 25.856757, '2020-09-10 15:06:22'),
	(290, 5, 40.710651, 41.394685, '2020-09-10 15:06:22'),
	(291, 2, 38.559365, 36.887673, '2020-09-10 15:06:22'),
	(292, 4, 41.79268, 31.259694, '2020-09-10 15:06:23'),
	(293, 7, 39.162155, 27.441424, '2020-09-10 15:06:23'),
	(294, 7, 39.162851, 27.442045, '2020-09-10 15:06:23'),
	(295, 5, 40.712177, 41.39528, '2020-09-10 15:06:24'),
	(296, 6, 42.241821, 41.20704, '2020-09-10 15:06:24'),
	(297, 2, 38.559404, 36.887407, '2020-09-10 15:06:24'),
	(298, 3, 38.85398, 28.807227, '2020-09-10 15:06:24'),
	(299, 3, 38.853431, 28.806661, '2020-09-10 15:06:24'),
	(300, 6, 42.243585, 41.206703, '2020-09-10 15:06:24'),
	(301, 5, 40.712022, 41.395486, '2020-09-10 15:06:24'),
	(302, 3, 38.854658, 28.806757, '2020-09-10 15:06:24'),
	(303, 4, 41.794219, 31.25905, '2020-09-10 15:06:25'),
	(304, 2, 38.560337, 36.888337, '2020-09-10 15:06:25'),
	(305, 6, 42.242159, 41.206848, '2020-09-10 15:06:25'),
	(306, 1, 37.671814, 25.857586, '2020-09-10 15:06:27'),
	(307, 7, 39.162749, 27.441898, '2020-09-10 15:06:27'),
	(308, 4, 41.793306, 31.259471, '2020-09-10 15:06:28'),
	(309, 7, 39.161945, 27.442064, '2020-09-10 15:06:28'),
	(310, 6, 42.242466, 41.207633, '2020-09-10 15:06:29');
/*!40000 ALTER TABLE `device_data` ENABLE KEYS */;

-- Dumping structure for table tracking_system.followed_person
CREATE TABLE IF NOT EXISTS `followed_person` (
  `person_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `person` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cluster` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cihaz_id` int(11) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- Dumping data for table tracking_system.followed_person: ~8 rows (approximately)
/*!40000 ALTER TABLE `followed_person` DISABLE KEYS */;
INSERT INTO `followed_person` (`person_id`, `person`, `cluster`, `cihaz_id`) VALUES
	(1, 'AnÄ±l AldoÄŸan', 'Pars', 1),
	(2, 'Hakan MÄ±sÄ±rlÄ±oÄŸlu', 'Kartal', 2),
	(3, 'Burak MÄ±sÄ±rlÄ±oÄŸlu', 'Kartal', 3),
	(4, 'Ã–mer RagÄ±p Ã–zkan', 'Pavo', 4),
	(5, 'Oktay Kale', 'Pavo', 5),
	(6, 'Sebati DoÄŸan', 'Kartal', 6),
	(7, 'Ä°slam YÄ±lmaz', 'Pars', 7);
/*!40000 ALTER TABLE `followed_person` ENABLE KEYS */;

-- Dumping structure for table tracking_system.system_log
CREATE TABLE IF NOT EXISTS `system_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `mesagge` varchar(5000) NOT NULL,
  `ex_location` varchar(5000) NOT NULL,
  `insert_dateTime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table tracking_system.system_log: ~4 rows (approximately)
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` (`log_id`, `mesagge`, `ex_location`, `insert_dateTime`) VALUES
	(1, '18 konumunda satir yok.', '"   konum: System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)\r\n   konum: System.Data.DataRowCollection.get_Item(Int32 index)\r\n   konum: Pavo_Tracker.Location_Service.get_Device_Data() C:\\Users\\asus\\Desktop\\Staj\\versions\\version22_demoAlfa\\Pavo_Tracker\\Pavo_Tracker\\Location_Service.cs iÃ§inde: satir 68"', '2020-08-26 10:27:14'),
	(2, '19 konumunda satir yok.', '"   konum: System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)\r\n   konum: System.Data.DataRowCollection.get_Item(Int32 index)\r\n   konum: Pavo_Tracker.Location_Service.get_Device_Data()"', '2020-08-26 10:28:39'),
	(3, '-1 konumunda satir yok.', '"   konum: System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)\r\n   konum: System.Data.DataRowCollection.get_Item(Int32 index)\r\n   konum: Pavo_Tracker.Functions.dbFunctions.person_device_merge() C:\\Users\\asus\\Desktop\\Staj\\versions\\version23_demo\\Pavo_Tracker\\Pavo_Tracker\\Functions\\dbFunctions.cs iÃ§inde: satir 42"', '2020-08-31 10:51:08'),
	(4, '-1 konumunda satir yok.', '"   konum: System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)\r\n   konum: System.Data.DataRowCollection.get_Item(Int32 index)\r\n   konum: Pavo_Tracker.Functions.dbFunctions.person_device_merge() C:\\Users\\asus\\Desktop\\Staj\\versions\\version23_demo\\Pavo_Tracker\\Pavo_Tracker\\Functions\\dbFunctions.cs iÃ§inde: satir 42"', '2020-08-31 10:52:43'),
	(5, '-1 konumunda satir yok.', '"   konum: System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)\r\n   konum: System.Data.DataRowCollection.get_Item(Int32 index)\r\n   konum: Pavo_Tracker.Functions.dbFunctions.person_device_merge() C:\\Users\\asus\\Desktop\\Staj\\versions\\version23_demo\\Pavo_Tracker\\Pavo_Tracker\\Functions\\dbFunctions.cs iÃ§inde: satir 42"', '2020-08-31 14:58:29'),
	(6, 'Dizin, Liste sinirlari iÃ§inde olmalidir.\r\nParametre adi: index', '"   konum: System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)\r\n   konum: System.Collections.Generic.List`1.Insert(Int32 index, T item)\r\n   konum: Pavo_Tracker.Tracker_Service.get_Device_Data(Int32 signal_id, Int32 cihaz_id, String lat, String lng) C:\\Users\\asus\\Desktop\\Staj\\versions\\version25_demo\\Pavo_Tracker\\Pavo_Tracker\\Tracker_Service.asmx.cs iÃ§inde: satir 57"', '2020-09-08 09:31:58');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
device_data