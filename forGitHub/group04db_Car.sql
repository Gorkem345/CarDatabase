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
-- Table structure for table `Car`
--

DROP TABLE IF EXISTS `Car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Car` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(45) DEFAULT NULL,
  `colour` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `engine_type` varchar(45) DEFAULT NULL,
  `fuel_type` enum('Gasoline','Diesel','Electric','Hybrid') DEFAULT NULL,
  `license_plate` varchar(45) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `seating_capacity` int DEFAULT NULL,
  `upcoming_maintenance_date` date DEFAULT NULL,
  `transmission_type` enum('Manual','Automatic') DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `current_location` varchar(45) DEFAULT NULL,
  `Warehouse_warehous_id` int NOT NULL,
  `trunk_capacity` int DEFAULT NULL,
  `model_year` int DEFAULT NULL,
  `price_per_day` int DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `license_plate_UNIQUE` (`license_plate`),
  KEY `fk_Car_Warehouse1_idx` (`Warehouse_warehous_id`),
  CONSTRAINT `fk_Car_Warehouse1` FOREIGN KEY (`Warehouse_warehous_id`) REFERENCES `Warehouse` (`warehous_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Car`
--

LOCK TABLES `Car` WRITE;
/*!40000 ALTER TABLE `Car` DISABLE KEYS */;
INSERT INTO `Car` VALUES (1,'Accord','White','Honda','2.0L','Gasoline','CA7788',1,5,'2026-06-10','Automatic',52000,'San Francisco',6,480,2020,47),(2,'Mustang','Red','Ford','5.0L','Gasoline','TX8899',1,4,'2026-09-01','Automatic',30000,'Dallas',11,400,2021,68),(3,'Altima','Gray','Nissan','2.5L','Gasoline','WA1233',0,5,'2027-04-10','Automatic',60000,'Seattle',7,460,2019,43),(4,'CX-5','Black','Mazda','2.5L','Gasoline','AZ9988',1,5,'2026-05-22','Automatic',35000,'Phoenix',12,500,2022,61),(5,'RAV4','Blue','Toyota','2.5L','Hybrid','FL1122',1,5,'2027-04-09','Automatic',42000,'Orlando',14,520,2021,65),(6,'X5','White','BMW','3.0L','Gasoline','NV4455',1,5,'2026-08-10','Automatic',28000,'Las Vegas',13,550,2022,101),(7,'A4','Black','Audi','2.0L','Gasoline','MA7788',1,5,'2026-07-30','Automatic',39000,'Boston',8,480,2020,72),(8,'F-150','Gray','Ford','3.5L','Gasoline','CO6677',0,5,'2026-10-01','Automatic',70000,'Denver',9,800,2018,79),(9,'Tahoe','Black','Chevrolet','5.3L','Gasoline','GA2233',1,7,'2026-09-12','Automatic',50000,'Atlanta',10,750,2021,94),(10,'Model Y','White','Tesla','Electric','Electric','CA9999',1,5,'2026-05-05','Automatic',20000,'San Diego',15,500,2023,86),(11,'Camaro','Yellow','Chevrolet','3.6L','Gasoline','TX3344',1,4,'2026-08-15','Automatic',31000,'Houston',4,390,2021,72),(12,'Elantra','Silver','Hyundai','2.0L','Gasoline','IL5566',1,5,'2027-04-10','Automatic',48000,'Chicago',3,450,2020,40),(13,'Sorento','Black','Kia','2.5L','Gasoline','FL7788',1,7,'2026-07-08','Automatic',41000,'Miami',5,600,2021,68),(14,'Wrangler','Green','Jeep','3.6L','Gasoline','CO1122',1,5,'2026-09-20','Manual',55000,'Denver',9,500,2019,76),(15,'Impala','White','Chevrolet','3.6L','Gasoline','GA4455',0,5,'2026-10-10','Automatic',65000,'Atlanta',10,480,2018,50),(16,'Q7','Gray','Audi','3.0L','Gasoline','WA6677',1,7,'2026-07-17','Automatic',37000,'Seattle',7,650,2022,105),(17,'C300','Black','Mercedes','2.0L','Gasoline','MA3344',1,5,'2026-06-29','Automatic',33000,'Boston',8,480,2021,84),(18,'Charger','Red','Dodge','3.6L','Gasoline','TX7788',1,5,'2026-08-05','Automatic',52000,'Dallas',11,480,2020,65),(19,'Explorer','White','Ford','3.0L','Gasoline','NV8899',1,7,'2026-09-01','Automatic',46000,'Las Vegas',13,650,2021,86),(20,'CR-V','Blue','Honda','2.4L','Gasoline','CA4455',1,5,'2027-04-02','Automatic',43000,'Los Angeles',1,500,2020,58),(21,'Taycan Turbo S','Frozen Blue','Porsche','Dual Motor','Electric','LA456E',1,4,'2026-08-20','Automatic',6200,'Los Angeles',1,470,2023,230),(22,'Model S Plaid','Midnight Silver','Tesla','Tri-Motor','Electric','NY123E',1,4,'2026-09-15','Automatic',5000,'New York',2,740,2024,274),(24,'RS e-tron GT','Daytona Gray','Audi','Dual Motor','Electric','WA789E',1,4,'2026-10-05','Automatic',4100,'Seattle',7,405,2023,209),(25,'i4 M50','Portimao Blue','BMW','Dual Motor','Electric','CO987E',1,5,'2026-10-12','Automatic',3600,'Denver',9,470,2023,174),(26,'Emeya','Solar Yellow','Lotus','Dual Motor','Electric','FL321E',1,4,'2026-09-25','Automatic',2800,'Miami',5,480,2024,223),(27,'AMG EQE 53 4MATIC+','Obsidian Black','Mercedes','Dual Motor','Electric','IL654E',1,5,'2026-08-30','Automatic',3300,'Chicago',3,430,2023,187),(28,'NSX Type S','Gotham Gray','Acura','V6 Twin-Turbo Hybrid','Hybrid','TXNSXS',1,2,'2026-11-12','Automatic',2900,'Dallas',11,230,2023,325),(29,'296 GTB','Rosso Corsa','Ferrari','V6 Twin-Turbo Hybrid','Hybrid','TX296H',1,2,'2026-08-22','Automatic',2400,'Houston',4,225,2024,376),(30,'Artura','Aurora Blue','McLaren','V6 Twin-Turbo Hybrid','Hybrid','CAARTU',1,2,'2026-09-05','Automatic',2600,'San Francisco',6,210,2024,346),(31,'Revuelto','Verde Shock','Lamborghini','V12 Plug-in Hybrid','Hybrid','MAREV12',1,2,'2026-10-18','Automatic',1800,'Boston',8,260,2025,685),(32,'Corvette E-Ray','Torch Red','Chevrolet','V8 eAWD Hybrid','Hybrid','GAERAY',1,2,'2026-09-30','Automatic',3100,'Atlanta',10,280,2024,252);
/*!40000 ALTER TABLE `Car` ENABLE KEYS */;
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

-- Dump completed on 2026-04-20 11:47:17
