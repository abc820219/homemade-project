-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: reactproject
-- ------------------------------------------------------
-- Server version	8.0.23

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

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_sid` int NOT NULL,
  `booking_total` int NOT NULL DEFAULT '0',
  `booking_course_id` int NOT NULL,
  `booking_teacher_id` int NOT NULL,
  `booking_time` int NOT NULL,
  `booking_date` int NOT NULL,
  `booking_month` int NOT NULL,
  PRIMARY KEY (`booking_sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1,1,1,13,7),(2,6,2,1,0,13,7),(3,1,4,2,1,10,8),(4,7,7,3,0,8,7),(5,10,4,4,1,15,7),(6,0,1,1,0,1,9),(7,0,2,2,0,2,9),(8,0,3,3,0,3,9),(9,0,4,4,0,4,9),(10,0,5,5,0,5,9),(11,0,6,1,0,6,9),(12,0,7,2,0,7,9),(13,0,8,3,0,8,9),(14,0,9,4,0,9,9),(15,0,10,5,0,10,9),(16,0,11,1,0,11,9),(17,0,12,2,0,12,9),(18,0,13,3,0,13,9),(19,0,14,4,0,14,9),(20,0,15,5,0,15,9),(21,0,3,1,0,16,9),(22,0,1,2,0,17,9),(23,0,2,3,0,18,9),(24,0,3,4,0,19,9),(25,0,4,5,0,20,9),(26,0,5,1,0,21,9),(27,0,6,2,0,22,9),(28,0,7,3,0,23,9),(29,0,8,4,0,24,9),(30,0,3,5,0,25,9),(31,0,5,1,0,26,9),(32,0,6,2,0,27,9),(33,0,2,3,0,28,9),(34,0,6,1,1,1,9),(35,0,5,2,1,2,9),(36,0,4,3,1,3,9),(37,0,3,4,1,4,9),(38,0,3,5,1,5,9),(39,0,1,1,1,6,9),(40,0,12,2,1,7,9),(41,0,15,3,1,8,9),(42,0,12,4,1,9,9),(43,0,11,5,1,10,9),(44,0,8,1,1,11,9),(45,0,7,2,1,12,9),(46,0,6,3,1,13,9),(47,0,5,4,1,14,9),(48,0,1,5,1,15,9),(49,0,3,1,1,16,9),(50,0,2,2,1,17,9),(51,0,5,3,1,18,9),(52,0,4,4,1,19,9),(53,0,3,5,1,20,9);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-28 14:15:56
