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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_sid` int NOT NULL AUTO_INCREMENT COMMENT 'sid(PK)推薦烘焙編號',
  `course_name` varchar(255) NOT NULL DEFAULT '"' COMMENT '推薦烘焙名稱',
  `course_image` text COMMENT '推薦烘焙圖片',
  `course_engName` varchar(255) NOT NULL DEFAULT '"' COMMENT '烘焙英文名稱',
  `course_price` int DEFAULT NULL,
  `course_detail` text COMMENT '烘焙內容',
  `course_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '烘焙創建時間',
  `course_difficult` varchar(45) DEFAULT NULL,
  `course_kid` varchar(45) DEFAULT NULL,
  `course_size` varchar(45) DEFAULT NULL,
  `course_quantity` varchar(45) DEFAULT NULL,
  `course_mark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`course_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='烘培課程				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'抹茶千層','抹茶千層','',1400,'安佳無鹽奶油、細砂糖、海藻糖、安田牧場雞蛋、美國進口牛奶、鹽巴、蘭姆酒、總統牌鮮奶油、日本昭和麵粉、馬茲卡彭生乳、葡萄','2019-11-25 16:20:50','3顆星','千層','6吋','1個','蛋奶素'),(2,'金沙起士千層','金沙起士千層','',1400,'安佳奶油、鹹蛋黃、海藻糖、切達乳酪、安田牧場雞蛋、美國進口牛奶、鹽巴、高粱酒、總統牌鮮奶油、日本昭和麵粉、自製香濃起士醬','2019-11-25 16:20:50','3顆星','千層','6吋','1個','蛋奶素'),(3,'黑白配千層','黑白配千層','',1400,'安佳無鹽奶油、細砂糖、海藻糖、安田牧場雞蛋、美國進口牛奶、鹽巴、黑芝麻，總統牌鮮奶油、日本昭和麵粉','2019-11-25 16:20:50','3顆星','千層','6吋','1個','蛋奶素'),(4,'黑糖桂圓千層','黑糖桂圓千層','',1400,'安佳無鹽奶油、細砂糖、海藻糖、安田牧場雞蛋、美國進口牛奶、鹽巴、黑糖、桂圓，總統牌鮮奶油、日本昭和麵粉','2019-11-25 16:20:50','3顆星','千層','6吋','1個','蛋奶素'),(5,'蜂蜜千層','蜂蜜千層','',1400,'法國AOP認證依絲妮發酵奶油、南投天然龍眼蜂蜜、海藻糖、安田牧場雞蛋、美國進口牛奶、鹽巴、總統牌鮮奶油、日本昭和麵粉','2019-11-25 16:20:50','3顆星','千層','6吋','1個','蛋奶素'),(6,'戀戀奶香芋泥千層','戀戀奶香芋泥千層','',1400,'安佳無鹽奶油、細砂糖、海藻糖、安田牧場雞蛋、美國進口牛奶、鹽巴、蘭姆酒、總統牌鮮奶油、日本昭和麵粉、嚴選芋頭','2019-11-25 16:20:50','3顆星','千層','6吋','1個','蛋奶素'),(7,'木木甜心','木木甜心','',650,'法國AOP認證依絲妮發酵奶油、巧克力、安田牧場雞蛋、美國進口牛奶、鹽巴、總統牌鮮奶油、日本昭和麵粉、吉利丁','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','葷'),(8,'玫瑰荔枝乳酪蛋糕','玫瑰荔枝乳酪蛋糕','',650,'台灣有機玫瑰花瓣、荔枝果乾與乳酪','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','蛋奶素'),(9,'烏龍鐵觀音乳酪蛋糕','烏龍鐵觀音乳酪蛋糕','',650,'鐵觀音原片茶葉、乳酪','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','蛋奶素'),(10,'特濃芋頭乳酪蛋糕','特濃芋頭乳酪蛋糕','',650,'乳酪、芋頭、雞蛋、砂糖、海藻糖、玉米粉、鮮奶油','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','蛋奶素'),(11,'蘭姆葡萄乳酪蛋糕','蘭姆葡萄乳酪蛋糕','',650,'蘭姆酒、葡萄乾、乳酪','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','蛋奶素'),(12,'歐培拉','歐培拉','',650,'杏仁蛋糕、咖啡酒、咖啡奶油霜、比利時巧克力、雞蛋、奶油','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','蛋奶素'),(13,'磐石','磐石','',650,'法國總統牌鮮奶油、馬達加斯加香草莢、日本昭和麵粉、蘭姆酒、天然花青素、自製手工香草卡士達醬、布丁、竹碳粉','2019-11-25 16:20:50','2顆星','蛋糕','6吋','1個','蛋奶素'),(14,'法式經典檸檬塔','法式經典檸檬塔','',750,'法國依思尼ISIGNY STE MÈRE產區限定動物鮮奶油、日本熊本珍珠薄力粉、砂糖、殼蛋、屏東履歷檸檬、吉利丁','2019-11-25 16:20:50','1顆星','塔','6吋','1個','葷'),(15,'草莓花圈塔','草莓花圈塔','',750,'草莓、雞蛋、牛奶、鹽、細砂糖、日本麵粉','2019-11-25 16:20:50','1顆星','塔','6吋','1個','蛋奶素'),(17,'抹茶泡芙','抹茶泡芙','',550,'安佳無鹽奶油、細砂糖、海藻糖、安田牧場雞蛋、美國進口牛奶、抹茶粉、總統牌鮮奶油、日本昭和麵粉','2019-11-25 16:20:50','1顆星','泡芙',NULL,'6個','葷'),(18,'髒髒泡芙','髒髒泡芙','',550,'牛奶、巧克力、細砂糖、oreo卡士達、核桃、竹碳粉、奶油、日本昭和低粉','2019-11-25 16:20:50','1顆星','泡芙',NULL,'6個','葷'),(19,'莓果布雷斯特泡芙','莓果布雷斯特泡芙','',550,'總統牌鮮奶油、香草卡士達、自製蔓越莓醬、草莓果露、珍珠糖、馬茲卡彭乳酪、嚴選新鮮覆盆子、藍莓','2019-11-25 16:20:50','1顆星','泡芙',NULL,'6個','葷');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
