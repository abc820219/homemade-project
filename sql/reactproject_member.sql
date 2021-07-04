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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_sid` int NOT NULL AUTO_INCREMENT COMMENT '會員編號',
  `member_email` varchar(255) NOT NULL DEFAULT '' COMMENT '會員信箱',
  `member_password` varchar(255) DEFAULT '' COMMENT '會員密碼',
  `member_name` varchar(255) DEFAULT '' COMMENT '會員姓名',
  `member_phone` varchar(255) DEFAULT '' COMMENT '手機',
  `member_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增帳號時間',
  PRIMARY KEY (`member_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='會員表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'beerBar21@gmail.com','test','test','test','2019-11-01 14:54:04'),(80,'test','test','test','','2021-07-01 22:32:20'),(81,'test','test','test','','2021-07-01 23:07:23'),(82,'test@yahoo.com','test','test','','2021-07-02 10:22:40'),(83,'z27089433@gmail.com','123','asdft','12346767','2021-07-02 12:52:16'),(84,'z27089433@gmail.com','123','asd','','2021-07-02 12:52:27'),(85,'z270894@gmail.com','123123','[object Object]','','2021-07-02 12:52:36'),(86,'test@gamil.com','123','123','','2021-07-02 12:59:20'),(87,'z27089433@gmail.com','asdf','asdf','','2021-07-02 13:42:45');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-04 13:21:22
