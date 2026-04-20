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
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `employee_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `e_mail` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `boss_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_Employee_Employee1_idx` (`boss_id`),
  CONSTRAINT `fk_Employee_Employee1` FOREIGN KEY (`boss_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Robert','Miller','M','robert.miller@company.com','3101111111',NULL),(2,'Sarah','Taylor','F','sarah.taylor@company.com','2122222222',1),(3,'James','Anderson','M','james.anderson@company.com','3123333333',1),(4,'Olivia','Thomas','F','olivia.thomas@company.com','7134444444',2),(5,'David','Moore','M','david.moore@company.com','3055555555',3),(6,'Mark','White','M','mark.white@company.com','6171111111',1),(7,'Linda','Green','F','linda.green@company.com','6172222222',2),(8,'Kevin','Hall','M','kevin.hall@company.com','3123333333',3),(9,'Laura','Allen','F','laura.allen@company.com','7134444444',2),(10,'Brian','Young','M','brian.young@company.com','3055555555',3),(11,'Nancy','King','F','nancy.king@company.com','2136666666',1),(12,'Jason','Wright','M','jason.wright@company.com','4257777777',6),(13,'Megan','Scott','F','megan.scott@company.com','6178888888',7),(14,'Eric','Adams','M','eric.adams@company.com','3129999999',8),(15,'Rachel','Baker','F','rachel.baker@company.com','7131010101',9);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
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

-- Dump completed on 2026-04-20 11:47:38
