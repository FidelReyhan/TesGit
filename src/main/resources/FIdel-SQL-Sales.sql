-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sales
CREATE DATABASE IF NOT EXISTS `sales` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sales`;

-- Dumping structure for table sales.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `status` int(20) DEFAULT 1,
  `gender` int(10) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table sales.customer: ~10 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT IGNORE INTO `customer` (`id`, `first_name`, `last_name`, `age`, `email`, `mobile_number`, `date_started`, `status`, `gender`) VALUES
	(3, 'Mary', 'Stera', 32, 'ahsn_332@yahoo.com', '234234234', '2010-04-07', 1, 1),
	(4, 'Sam', 'Smithy', 54, 'smihgsh@gmail.com', '947276222', '2004-06-24', 1, 0),
	(7, 'Cory', 'Mant', 29, 'coregsy@yahoo.com', '8263833443', '2010-06-14', 0, 0),
	(8, 'Albert', 'Sui', 30, 'al34b@gmail.com', '893237234', '2016-07-25', 1, 0),
	(9, 'Penny', 'Doris', 37, 'penshykj@email.com', '4393032334', '2012-12-19', 2, 1),
	(10, 'Robert', 'Cena', 45, 'rob555@robaer.com', '82739222333', '2011-11-24', 1, 0),
	(23, 'Randy', 'Chan', 36, 'ran@yahoo.com', '3829374233', '2014-06-04', 0, 0),
	(24, 'Mary', 'Sue', 43, 'mmmshye@gmail.com', '3222399332', '2011-02-22', 2, 1),
	(25, 'Der', 'Ham', 22, 'hsye@yahoo.com', '3829304233', '2014-11-19', 2, 1),
	(28, 'Rey', 'Rey', 11, 'anandaputraimansyah@gmail.com', '12345', '2021-04-25', 0, 1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table sales.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sales.hibernate_sequence: ~1 rows (approximately)
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT IGNORE INTO `hibernate_sequence` (`next_val`) VALUES
	(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table sales.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `madein` varchar(45) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table sales.product: ~3 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT IGNORE INTO `product` (`id`, `name`, `brand`, `madein`, `price`) VALUES
	(1, 'server', 'ibm', 'china', 1500),
	(2, 'mouse', 'logitac', 'china', 15),
	(3, 'Monitor', 'Samsung', 'China', 200);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table sales.role
CREATE TABLE IF NOT EXISTS `role` (
  `roleid` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table sales.role: ~1 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT IGNORE INTO `role` (`roleid`, `role`) VALUES
	(1, 'SUPERUSER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table sales.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table sales.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`userid`, `name`, `password`, `email`) VALUES
	(8, 'Alfa Fidel Reyhan', '$2a$10$D0AzlhE/jDu/pk9wjA2L.OUEvt1LfdTy4tNYDkvEMtZvIMtG3/3g.', 'alfafidelr@gmail.com'),
	(9, 'Alfa Fidel Reyhan', '$2a$10$gO2OIiUmFknHuhP56gXBYOoeyCDI59zyUF7EI2MsBSnpmLJArE3DC', 'anandaputraimansyah@gmail.com'),
	(10, 'Madarena Z', '$2a$10$eYUdG1XbhWl2VxbOFDmCm.AdKEasa5QolDk3Yy1lzuBHsFNuHGlTi', 'test@gmail.com'),
	(11, 'Muhammad Hanif', '$2a$10$kEjIKbNy7cGq1PImvBW7/Op/IRQh.e3e3ZAJ1XLE9Z1Kql//lm7Kq', 'celloazkachelsea@gmail.com'),
	(12, 'Budi', '$2a$10$6Q9gAFNced9Qr2RCj./fMOf73aZthaNW6tAz6urUcfwf19P4zEEky', 'doremi@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table sales.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `userid` bigint(20) NOT NULL,
  `roleid` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`,`roleid`),
  KEY `roleid` (`roleid`),
  CONSTRAINT `FK_user_role_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`),
  CONSTRAINT `FK_user_role_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sales.user_role: ~5 rows (approximately)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT IGNORE INTO `user_role` (`userid`, `roleid`) VALUES
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
