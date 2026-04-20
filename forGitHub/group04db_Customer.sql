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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `e_mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Gorkem','Akdogan','2006-04-14','M','+905059847417','isag@gmail.com'),(2,'Billy','Jean','1980-06-06','F','3131202024','billyjean.mylove@mj.com'),(3,'Chris','Evans','1981-06-13','M','6175551111','chris.evans@gmail.com'),(4,'Emma','Watson','1990-04-15','F','6175552222','emma.watson@gmail.com'),(5,'Ryan','Reynolds','1976-10-23','M','2135553333','ryan.reynolds@gmail.com'),(6,'Scarlett','Johansson','1984-11-22','F','2125554444','scarlett@gmail.com'),(7,'Tom','Holland','1996-06-01','M','3055558888','tom.holland@gmail.com'),(8,'Zendaya','Coleman','1996-09-01','F','3055559999','zendaya@gmail.com'),(9,'Chris','Hemsworth','1983-08-11','M','7135550000','hemsworth@gmail.com'),(10,'Jennifer','Lawrence','1990-08-15','F','7135551212','jlaw@gmail.com'),(11,'Brad','Pitt','1963-12-18','M','3105551313','brad.pitt@gmail.com'),(12,'Angelina','Jolie','1975-06-04','F','3105551414','jolie@gmail.com'),(13,'Will','Smith','1968-09-25','M','2135551515','will.smith@gmail.com'),(14,'Margot','Robbie','1990-07-02','F','2135551616','margot@gmail.com'),(15,'Keanu','Reeves','1964-09-02','M','4255551717','keanu@gmail.com'),(16,'Natalie','Portman','1981-06-09','F','2125551818','natalie@gmail.com'),(17,'Leonardo','DiCaprio','1974-11-11','M','3105551919','leo@gmail.com'),(18,'Gokdeniz','Inan','2003-10-11','M','684997045','inan@gmail.com'),(19,'Despoina','Chatzopoulou','2000-04-14','F','684997046','despoina@gmail.com'),(20,'Beyoncé','Knowles','1981-09-04','F','7135552424','beyonce@celebs.com'),(21,'Cristiano','Ronaldo','1985-02-05','M','2125552525','cronaldo@celebs.com'),(22,'Taylor','Swift','1989-12-13','F','6155552626','taylor.swift@celebs.com'),(23,'Robert','Downey Jr.','1965-04-04','M','3105552727','rdj@celebs.com'),(24,'Ariana','Grande','1993-06-26','F','9545552828','ariana.grande@celebs.com'),(25,'Lionel','Messi','1987-06-24','M','3055552929','lmessi@celebs.com'),(26,'Billie','Eilish','2001-12-18','F','3235553030','billie.eilish@celebs.com'),(27,'Dwayne','Johnson','1972-05-02','M','4075553131','dwayne.johnson@celebs.com'),(28,'Selena','Gomez','1992-07-22','F','8185553232','selena.gomez@celebs.com');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
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

-- Dump completed on 2026-04-20 11:47:20
