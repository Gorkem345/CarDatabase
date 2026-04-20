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
-- Table structure for table `Rent`
--

DROP TABLE IF EXISTS `Rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rent` (
  `rent_id` int NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('Cash','Credit Card','Debit Card','Bank Transfer') DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `Customer_customer_id` int NOT NULL,
  `Car_car_id` int NOT NULL,
  `Employee_employee_id` int NOT NULL,
  PRIMARY KEY (`rent_id`),
  KEY `fk_Rent_Customer_idx` (`Customer_customer_id`),
  KEY `fk_Rent_Car1_idx` (`Car_car_id`),
  KEY `fk_Rent_Employee1_idx` (`Employee_employee_id`),
  CONSTRAINT `fk_Rent_Car1` FOREIGN KEY (`Car_car_id`) REFERENCES `Car` (`car_id`),
  CONSTRAINT `fk_Rent_Customer` FOREIGN KEY (`Customer_customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `fk_Rent_Employee1` FOREIGN KEY (`Employee_employee_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rent`
--

LOCK TABLES `Rent` WRITE;
/*!40000 ALTER TABLE `Rent` DISABLE KEYS */;
INSERT INTO `Rent` VALUES (1,'2026-01-01','2026-01-05',560.00,'Credit Card',1,6,6,6),(2,'2026-01-02','2026-01-06',400.00,'Cash',1,7,7,7),(3,'2026-02-03','2026-02-07',440.00,'Debit Card',1,8,8,8),(4,'2026-03-04','2026-03-08',520.00,'Credit Card',1,9,9,9),(5,'2026-04-05','2026-04-09',480.00,'Bank Transfer',1,10,10,10),(6,'2026-04-06','2026-04-10',400.00,'Cash',1,11,11,6),(7,'2026-04-07','2026-04-11',220.00,'Credit Card',1,12,12,7),(8,'2026-05-08','2026-05-12',380.00,'Debit Card',1,13,13,8),(9,'2026-05-09','2026-05-13',420.00,'Credit Card',1,14,14,9),(10,'2026-06-10','2026-06-14',280.00,'Bank Transfer',1,15,15,10),(11,'2026-06-11','2026-06-15',580.00,'Cash',1,6,16,11),(12,'2026-07-12','2026-07-16',460.00,'Credit Card',1,7,17,12),(13,'2026-07-13','2026-07-17',360.00,'Debit Card',1,8,18,13),(14,'2026-07-14','2026-07-18',480.00,'Credit Card',1,9,19,14),(15,'2026-07-15','2026-07-19',320.00,'Bank Transfer',1,10,20,15),(16,'2026-07-20','2026-07-24',560.00,'Credit Card',1,18,6,11),(17,'2026-07-22','2026-07-27',400.00,'Debit Card',1,19,7,12),(44,'2026-08-03','2026-08-07',1280.00,'Credit Card',1,3,21,5),(45,'2026-08-04','2026-08-08',480.00,'Debit Card',1,4,10,7),(46,'2026-08-05','2026-08-09',2080.00,'Credit Card',1,5,29,8),(47,'2026-08-06','2026-08-10',1240.00,'Bank Transfer',1,6,26,9),(48,'2026-09-07','2026-09-11',1400.00,'Cash',1,7,32,11),(49,'2026-09-09','2026-09-12',1160.00,'Debit Card',1,8,24,6),(50,'2026-09-10','2026-09-14',960.00,'Credit Card',1,9,25,3),(51,'2026-10-11','2026-10-15',1800.00,'Credit Card',1,10,28,4),(52,'2026-10-12','2026-10-16',3800.00,'Bank Transfer',1,12,31,10),(53,'2026-11-14','2026-11-18',1040.00,'Credit Card',1,26,27,12),(54,'2026-11-07','2026-11-17',650.00,'Cash',1,1,1,3),(57,'2026-12-10','2026-12-22',780.00,'Cash',0,12,1,12),(58,'2026-12-10','2026-12-22',780.00,'Cash',1,12,1,12),(59,'2026-12-10','2026-12-22',1140.00,'Cash',1,12,2,12),(60,'2026-04-10','2026-04-11',85.00,'Credit Card',1,19,4,7),(61,'2026-01-08','2026-01-12',320.00,'Credit Card',1,3,1,2),(62,'2026-01-15','2026-01-20',540.00,'Debit Card',1,4,6,3),(63,'2026-01-22','2026-01-25',280.00,'Cash',1,5,5,4),(64,'2026-02-03','2026-02-07',450.00,'Credit Card',1,6,10,5),(65,'2026-02-10','2026-02-14',610.00,'Bank Transfer',1,7,11,6),(66,'2026-02-18','2026-02-22',390.00,'Debit Card',1,8,12,7),(67,'2026-03-02','2026-03-06',470.00,'Credit Card',1,9,9,8),(68,'2026-03-11','2026-03-15',520.00,'Cash',1,10,14,9),(69,'2026-03-21','2026-03-26',340.00,'Debit Card',1,11,3,10),(70,'2026-04-04','2026-04-09',300.00,'Cash',1,12,2,11),(71,'2026-04-13','2026-04-18',730.00,'Credit Card',1,13,7,12),(72,'2026-04-24','2026-04-29',410.00,'Bank Transfer',1,14,8,13),(73,'2026-05-05','2026-05-10',295.00,'Debit Card',1,15,13,14),(74,'2026-05-16','2026-05-20',560.00,'Credit Card',1,16,16,15),(75,'2026-05-24','2026-05-29',680.00,'Bank Transfer',1,17,19,6),(76,'2026-06-02','2026-06-06',370.00,'Cash',1,18,4,7),(77,'2026-06-12','2026-06-17',490.00,'Credit Card',1,19,17,8),(78,'2026-06-21','2026-06-25',430.00,'Debit Card',1,3,18,9),(79,'2026-07-01','2026-07-05',510.00,'Credit Card',1,4,15,10),(80,'2026-07-09','2026-07-14',760.00,'Bank Transfer',1,5,9,11),(81,'2026-07-20','2026-07-24',350.00,'Cash',1,6,20,12),(82,'2026-08-03','2026-08-08',405.00,'Debit Card',1,7,12,13),(83,'2026-08-15','2026-08-19',620.00,'Credit Card',1,8,14,14),(84,'2026-08-25','2026-08-30',285.00,'Cash',1,9,1,15),(85,'2026-09-04','2026-09-09',455.00,'Credit Card',1,10,6,2),(86,'2026-09-14','2026-09-18',575.00,'Bank Transfer',1,11,10,3),(87,'2026-09-23','2026-09-28',690.00,'Debit Card',1,12,19,4),(88,'2026-10-02','2026-10-06',315.00,'Cash',1,13,5,5),(89,'2026-10-11','2026-10-16',470.00,'Credit Card',1,14,17,6),(90,'2026-10-22','2026-10-27',640.00,'Bank Transfer',1,15,11,7),(91,'2026-11-05','2026-11-09',390.00,'Debit Card',1,16,8,8),(92,'2026-11-13','2026-11-18',520.00,'Credit Card',1,17,18,9),(93,'2026-11-24','2026-11-29',355.00,'Cash',1,18,3,10),(94,'2026-12-03','2026-12-08',610.00,'Bank Transfer',1,19,7,11),(95,'2026-12-12','2026-12-16',445.00,'Credit Card',1,3,16,12),(96,'2026-12-20','2026-12-26',780.00,'Debit Card',1,4,14,13),(97,'2026-04-10','2026-04-11',85.00,'Credit Card',1,19,4,7),(98,'2026-04-15','2026-04-20',585.00,'Bank Transfer',1,20,9,6),(99,'2026-04-15','2026-05-04',4560.00,'Bank Transfer',1,18,21,5),(100,'2026-04-15','2026-06-26',16128.00,'Cash',1,18,21,9),(101,'2026-04-17','2026-05-18',1345.40,'Cash',1,18,15,5),(102,'2026-04-18','2026-04-23',585.00,'Cash',1,18,16,7),(103,'2026-04-19','2026-05-05',912.00,'Cash',1,18,13,7),(104,'2026-04-20','2026-04-30',768.00,'Cash',1,18,10,7);
/*!40000 ALTER TABLE `Rent` ENABLE KEYS */;
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

-- Dump completed on 2026-04-20 11:47:44
