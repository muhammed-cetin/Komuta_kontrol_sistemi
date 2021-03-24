-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.0.23 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- tablo yapısı dökülüyor tracking_system.device_data
CREATE TABLE IF NOT EXISTS `device_data` (
  `signal_id` int NOT NULL,
  `cihaz_id` int NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `signal_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- tracking_system.device_data: ~9 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `device_data` DISABLE KEYS */;
REPLACE INTO `device_data` (`signal_id`, `cihaz_id`, `lat`, `lng`, `signal_time`) VALUES
	(1, 1, 42.315053, 37.131957, '2021-03-07 16:52:13'),
	(2, 1, 38.17103, 26.586579, '2021-03-22 03:16:24'),
	(3, 4, 39.796795, 44.6989, '2021-03-22 03:16:29'),
	(4, 1, 38.170752, 26.586951, '2021-03-22 03:16:31'),
	(5, 3, 36.635959, 28.754998, '2021-03-22 03:16:32'),
	(6, 1, 38.170214, 26.587114, '2021-03-22 03:16:34'),
	(7, 3, 36.635849, 28.755689, '2021-03-22 03:16:35'),
	(8, 3, 36.636698, 28.755211, '2021-03-22 03:16:36'),
	(9, 2, 40.492351, 43.759484, '2021-03-22 03:16:37');
/*!40000 ALTER TABLE `device_data` ENABLE KEYS */;

-- tablo yapısı dökülüyor tracking_system.followed_person
CREATE TABLE IF NOT EXISTS `followed_person` (
  `person_id` int unsigned NOT NULL AUTO_INCREMENT,
  `person` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cluster` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cihaz_id` int NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- tracking_system.followed_person: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `followed_person` DISABLE KEYS */;
REPLACE INTO `followed_person` (`person_id`, `person`, `cluster`, `cihaz_id`) VALUES
	(1, 'Anıl Aldoğan', 'Pars', 1),
	(2, 'Mert Batuhan İduğ', 'Kartal', 2),
	(3, 'Muhammed Çetin', 'Kartal', 3),
	(4, 'Sebati Doğan', 'Pars', 4);
/*!40000 ALTER TABLE `followed_person` ENABLE KEYS */;

-- tablo yapısı dökülüyor tracking_system.system_log
CREATE TABLE IF NOT EXISTS `system_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `mesagge` varchar(5000) NOT NULL,
  `ex_location` varchar(5000) NOT NULL,
  `insert_dateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- tracking_system.system_log: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
