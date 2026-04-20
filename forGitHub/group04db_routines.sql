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
-- Temporary view structure for view `Cars_Without_Insurance`
--

DROP TABLE IF EXISTS `Cars_Without_Insurance`;
/*!50001 DROP VIEW IF EXISTS `Cars_Without_Insurance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Cars_Without_Insurance` AS SELECT 
 1 AS `Car_car_id`,
 1 AS `brand`,
 1 AS `model`,
 1 AS `end_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Car_revenue`
--

DROP TABLE IF EXISTS `Car_revenue`;
/*!50001 DROP VIEW IF EXISTS `Car_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Car_revenue` AS SELECT 
 1 AS `car_id`,
 1 AS `brand`,
 1 AS `model`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Customer_Age`
--

DROP TABLE IF EXISTS `Customer_Age`;
/*!50001 DROP VIEW IF EXISTS `Customer_Age`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Customer_Age` AS SELECT 
 1 AS `customer_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `Age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_car_rentals`
--

DROP TABLE IF EXISTS `customer_car_rentals`;
/*!50001 DROP VIEW IF EXISTS `customer_car_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_car_rentals` AS SELECT 
 1 AS `customer_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `car_id`,
 1 AS `brand`,
 1 AS `model`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Revenue_per_employee`
--

DROP TABLE IF EXISTS `Revenue_per_employee`;
/*!50001 DROP VIEW IF EXISTS `Revenue_per_employee`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Revenue_per_employee` AS SELECT 
 1 AS `employee_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `total_handled_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Profitable_fuel_type`
--

DROP TABLE IF EXISTS `Profitable_fuel_type`;
/*!50001 DROP VIEW IF EXISTS `Profitable_fuel_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Profitable_fuel_type` AS SELECT 
 1 AS `fuel_type`,
 1 AS `total_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Last30DaysRent`
--

DROP TABLE IF EXISTS `Last30DaysRent`;
/*!50001 DROP VIEW IF EXISTS `Last30DaysRent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Last30DaysRent` AS SELECT 
 1 AS `car_id`,
 1 AS `brand`,
 1 AS `model`,
 1 AS `days_rented`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Unrented_cars`
--

DROP TABLE IF EXISTS `Unrented_cars`;
/*!50001 DROP VIEW IF EXISTS `Unrented_cars`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Unrented_cars` AS SELECT 
 1 AS `car_id`,
 1 AS `brand`,
 1 AS `model`,
 1 AS `current_location`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Revenue_per_customer`
--

DROP TABLE IF EXISTS `Revenue_per_customer`;
/*!50001 DROP VIEW IF EXISTS `Revenue_per_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Revenue_per_customer` AS SELECT 
 1 AS `customer_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `total_spent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Car_Insurance`
--

DROP TABLE IF EXISTS `Car_Insurance`;
/*!50001 DROP VIEW IF EXISTS `Car_Insurance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Car_Insurance` AS SELECT 
 1 AS `car_id`,
 1 AS `brand`,
 1 AS `model`,
 1 AS `insurance_id`,
 1 AS `insurance_company`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_rental_summary`
--

DROP TABLE IF EXISTS `customer_rental_summary`;
/*!50001 DROP VIEW IF EXISTS `customer_rental_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_rental_summary` AS SELECT 
 1 AS `customer_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `total_rentals`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Cars_Without_Insurance`
--

/*!50001 DROP VIEW IF EXISTS `Cars_Without_Insurance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`GorkemAkdogan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Cars_Without_Insurance` AS select `i2`.`Car_car_id` AS `Car_car_id`,`c`.`brand` AS `brand`,`c`.`model` AS `model`,`i2`.`end_date` AS `end_date` from (`Car` `c` join `Insurance` `i2`) where ((`c`.`car_id` = `i2`.`Car_car_id`) and exists(select 1 from `Insurance` `i` where ((`c`.`car_id` = `i`.`Car_car_id`) and (`i`.`end_date` > curdate()))) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Car_revenue`
--

/*!50001 DROP VIEW IF EXISTS `Car_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DespoinaChatzopoulou`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Car_revenue` AS select `c`.`car_id` AS `car_id`,`c`.`brand` AS `brand`,`c`.`model` AS `model`,sum(`r`.`price`) AS `total_revenue` from (`Car` `c` join `Rent` `r` on((`c`.`car_id` = `r`.`Car_car_id`))) group by `c`.`car_id`,`c`.`brand`,`c`.`model` order by `total_revenue` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Customer_Age`
--

/*!50001 DROP VIEW IF EXISTS `Customer_Age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`GorkemAkdogan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Customer_Age` AS select `Customer`.`customer_id` AS `customer_id`,`Customer`.`first_name` AS `first_name`,`Customer`.`last_name` AS `last_name`,timestampdiff(YEAR,`Customer`.`date_of_birth`,curdate()) AS `Age` from `Customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_car_rentals`
--

/*!50001 DROP VIEW IF EXISTS `customer_car_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`GokdenizInan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_car_rentals` AS select `c`.`customer_id` AS `customer_id`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`ca`.`car_id` AS `car_id`,`ca`.`brand` AS `brand`,`ca`.`model` AS `model`,`r`.`start_date` AS `start_date`,`r`.`end_date` AS `end_date`,`r`.`price` AS `price` from ((`Rent` `r` join `Customer` `c` on((`r`.`Customer_customer_id` = `c`.`customer_id`))) join `Car` `ca` on((`r`.`Car_car_id` = `ca`.`car_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Revenue_per_employee`
--

/*!50001 DROP VIEW IF EXISTS `Revenue_per_employee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DespoinaChatzopoulou`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Revenue_per_employee` AS select `e`.`employee_id` AS `employee_id`,`e`.`first_name` AS `first_name`,`e`.`last_name` AS `last_name`,sum(`r`.`price`) AS `total_handled_revenue` from (`Employee` `e` join `Rent` `r` on((`e`.`employee_id` = `r`.`Employee_employee_id`))) group by `e`.`employee_id`,`e`.`first_name`,`e`.`last_name` order by `total_handled_revenue` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Profitable_fuel_type`
--

/*!50001 DROP VIEW IF EXISTS `Profitable_fuel_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DespoinaChatzopoulou`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Profitable_fuel_type` AS select `c`.`fuel_type` AS `fuel_type`,sum(`r`.`price`) AS `total_revenue` from (`Car` `c` join `Rent` `r` on((`c`.`car_id` = `r`.`Car_car_id`))) group by `c`.`fuel_type` order by `total_revenue` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Last30DaysRent`
--

/*!50001 DROP VIEW IF EXISTS `Last30DaysRent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`GorkemAkdogan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Last30DaysRent` AS select `c`.`car_id` AS `car_id`,`c`.`brand` AS `brand`,`c`.`model` AS `model`,(select sum((to_days(`r`.`end_date`) - to_days(`r`.`start_date`))) from `Rent` `r` where ((`r`.`Car_car_id` = `c`.`car_id`) and (`r`.`start_date` >= (curdate() - interval 30 day)))) AS `days_rented` from `Car` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Unrented_cars`
--

/*!50001 DROP VIEW IF EXISTS `Unrented_cars`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DespoinaChatzopoulou`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Unrented_cars` AS select `c`.`car_id` AS `car_id`,`c`.`brand` AS `brand`,`c`.`model` AS `model`,`c`.`current_location` AS `current_location` from (`Car` `c` left join `Rent` `r` on((`c`.`car_id` = `r`.`Car_car_id`))) where (`r`.`rent_id` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Revenue_per_customer`
--

/*!50001 DROP VIEW IF EXISTS `Revenue_per_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DespoinaChatzopoulou`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Revenue_per_customer` AS select `cu`.`customer_id` AS `customer_id`,`cu`.`first_name` AS `first_name`,`cu`.`last_name` AS `last_name`,sum(`r`.`price`) AS `total_spent` from (`Customer` `cu` join `Rent` `r` on((`cu`.`customer_id` = `r`.`Customer_customer_id`))) group by `cu`.`customer_id`,`cu`.`first_name`,`cu`.`last_name` order by `total_spent` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Car_Insurance`
--

/*!50001 DROP VIEW IF EXISTS `Car_Insurance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DespoinaChatzopoulou`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Car_Insurance` AS select `c`.`car_id` AS `car_id`,`c`.`brand` AS `brand`,`c`.`model` AS `model`,`i`.`insurance_id` AS `insurance_id`,`ic`.`company_name` AS `insurance_company` from ((`Car` `c` left join `Insurance` `i` on((`c`.`car_id` = `i`.`Car_car_id`))) left join `Insurance_Company` `ic` on((`i`.`Insurance_Company_company_id` = `ic`.`company_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_rental_summary`
--

/*!50001 DROP VIEW IF EXISTS `customer_rental_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`GokdenizInan`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_rental_summary` AS select `c`.`customer_id` AS `customer_id`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,count(`r`.`rent_id`) AS `total_rentals` from (`Customer` `c` left join `Rent` `r` on((`c`.`customer_id` = `r`.`Customer_customer_id`))) group by `c`.`customer_id`,`c`.`first_name`,`c`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-20 11:48:07
