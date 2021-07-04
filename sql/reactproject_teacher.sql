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
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_sid` int NOT NULL AUTO_INCREMENT COMMENT '老師編號',
  `teacher_name` varchar(255) NOT NULL COMMENT '老師名稱',
  `teacher_skill` varchar(255) NOT NULL COMMENT '老師專長',
  `teacher_detail` text NOT NULL COMMENT '老師介紹',
  `teacher_create` datetime NOT NULL COMMENT '老師新增時間',
  `teacher_small_img` text NOT NULL COMMENT '老師縮圖',
  `teacher_big_img` text NOT NULL COMMENT '老師大圖',
  PRIMARY KEY (`teacher_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Cedric Grole','水果擬真甜點\r\n聖多諾黑泡芙塔\r\n魔術方塊','甜點哲學是，不要重複別人做的，而是要有自己的理念和創造，都是單一主要素材，從不混合味道，而是想辦法把味道發揮到極致，讓人明白在吃的是什麼食材，它原來的味道是怎樣','2019-11-02 14:00:22','teacher1-1.png','teacher1.png'),(2,'Yann Couvreur','巴黎與布列斯特\r\n開心果塔\r\n檸檬塔','不用太多色素，強調原始的風味，做最簡單的組合，但卻帶有濃郁、很美味的做法，把味道呈現出來。另外，不希望外表有太多華而不實的裝飾，希望是以很樸實的，很耐吃的，帶有風味的想法去設計甜點','2019-11-02 14:02:35','teacher2-1.png','teacher2.png'),(3,'Amaury Guichon','鵪鶉蛋\r\n榛果戒指\r\n巧克力焦糖滾筒','喜歡嘗試別人沒做過的題材創作，更善於模擬平日常見的事物，如：時鐘、蛋、煙斗等精巧小蛋糕，及創作椅子、留聲機、亞馬遜戰士等大型雕塑，這些維妙維肖、鬼斧神工，極具視覺震撼力的巧克力甜點作品','2019-11-02 14:10:48','teacher3-1.png','teacher3.png'),(4,'Soriano Joaquin','布列斯特\r\n可頌','擅長運用特殊香氣融入甜點，如檜木、茉莉花香，使得甜點氣味複雜而層次萬千，熱愛極限運動，也造就在甜點的創作上，大膽、創新、前衛','2019-11-02 14:28:17','teacher4-1.png','teacher4.png'),(5,'Alexis Bouillet','法式甜點\r\n法式千層派\r\n馬卡龍','喜歡透過在地食材，發揮他那無限的創意，即使是相同的作品，總能注入自己的風格在其中','2019-11-02 14:36:18','teacher5-1.png','teacher5.png');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
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
