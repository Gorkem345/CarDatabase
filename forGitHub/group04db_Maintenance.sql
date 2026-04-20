-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (arm64)
--
-- Host: data-management-server-4.cbxlqxkadwhn.us-east-1.rds.amazonaws.com    Database: group04db
-- ------------------------------------------------------
-- Server version	8.4.7

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Maintenance`
--

DROP TABLE IF EXISTS `Maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Maintenance` (
  `maintenance_id` int NOT NULL AUTO_INCREMENT,
  `cost` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `Car_car_id` int NOT NULL,
  PRIMARY KEY (`maintenance_id`),
  KEY `fk_Maintenance_Car1_idx` (`Car_car_id`),
  CONSTRAINT `fk_Maintenance_Car1` FOREIGN KEY (`Car_car_id`) REFERENCES `Car` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maintenance`
--

LOCK TABLES `Maintenance` WRITE;
/*!40000 ALTER TABLE `Maintenance` DISABLE KEYS */;
INSERT INTO `Maintenance` VALUES (51,180.00,'2026-01-05','Los Angeles Service Center',1),(52,220.00,'2026-01-12','New York Auto Shop',2),(53,150.00,'2026-01-18','Chicago Garage',3),(54,300.00,'2026-01-25','Houston Service Hub',4),(55,200.00,'2026-02-02','Miami Auto Repair',5),(56,275.00,'2026-02-10','San Francisco Garage',6),(57,320.00,'2026-02-15','Seattle Service Center',7),(58,210.00,'2026-02-20','Boston Auto Repair',8),(59,190.00,'2026-02-25','Denver Garage',9),(60,260.00,'2026-03-01','Atlanta Service Hub',10),(61,350.00,'2026-03-05','Dallas Auto Shop',11),(62,230.00,'2026-03-10','Phoenix Repair Center',12),(63,180.00,'2026-03-12','Las Vegas Garage',13),(64,400.00,'2026-03-15','Orlando Service Hub',14),(65,210.00,'2026-03-18','San Diego Auto Shop',15),(66,195.00,'2026-03-20','Houston Auto Repair',16),(67,280.00,'2026-03-22','Chicago Service Center',17),(68,310.00,'2026-03-25','New York Garage',18),(69,260.00,'2026-03-27','Los Angeles Repair Center',19),(70,225.00,'2026-03-30','Miami Service Hub',20),(114,234.00,'2026-07-01','Dealer Prep',32),(115,300.00,'2026-04-02','Bay Harbor',20),(117,300.00,'2026-04-02','Bay Harbor',20),(120,200.00,'2026-04-10','Boston Auto Repair',3);
/*!40000 ALTER TABLE `Maintenance` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-20 11:47:32
