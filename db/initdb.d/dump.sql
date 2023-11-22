-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (x86_64)
--
-- Host: localhost    Database: outlier_detection
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audio`
--

DROP TABLE IF EXISTS `audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audio` (
  `audio_id` int NOT NULL AUTO_INCREMENT,
  `audio_name` varchar(255) NOT NULL,
  `audio_extension` varchar(15) DEFAULT NULL,
  `audio_length` time DEFAULT '00:00:00',
  `audio_size` varchar(50) DEFAULT NULL,
  `is_true` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audio`
--

LOCK TABLES `audio` WRITE;
/*!40000 ALTER TABLE `audio` DISABLE KEYS */;
INSERT INTO `audio` VALUES (1,'test','wav','00:03:18','150MB',1,'2023-11-20 17:26:34'),(2,'audio1','mp3','00:05:07','2MB',1,'2023-11-22 18:11:44'),(3,'audio2','mp4','00:03:53','6MB',0,'2023-11-22 18:11:44'),(4,'audio3','wav','00:03:19','2MB',1,'2023-11-22 18:11:44'),(5,'audio4','mp4','00:02:51','2MB',1,'2023-11-22 18:11:44'),(6,'audio5','mp4','00:00:46','7MB',0,'2023-11-22 18:11:44'),(7,'audio6','wav','00:01:45','7MB',0,'2023-11-22 18:11:44'),(8,'audio7','mp4','00:00:49','2MB',1,'2023-11-22 18:11:44'),(9,'audio8','wav','00:05:27','9MB',1,'2023-11-22 18:11:44'),(10,'audio9','mp4','00:00:52','10MB',0,'2023-11-22 18:11:44'),(11,'audio10','wav','00:01:31','6MB',1,'2023-11-22 18:11:44'),(12,'audio11','mp3','00:00:43','4MB',1,'2023-11-22 18:11:44'),(13,'audio12','wav','00:01:55','5MB',0,'2023-11-22 18:11:44'),(14,'audio13','mp3','00:02:27','2MB',0,'2023-11-22 18:11:44'),(15,'audio14','wav','00:02:26','8MB',1,'2023-11-22 18:11:44'),(16,'audio15','mp3','00:00:25','7MB',1,'2023-11-22 18:11:44'),(17,'audio16','mp3','00:04:49','9MB',0,'2023-11-22 18:11:44'),(18,'audio17','mp4','00:02:47','4MB',1,'2023-11-22 18:11:44'),(19,'audio18','wav','00:03:35','3MB',0,'2023-11-22 18:11:44'),(20,'audio19','wav','00:02:44','5MB',1,'2023-11-22 18:11:44'),(21,'audio20','mp3','00:03:41','8MB',1,'2023-11-22 18:11:44'),(22,'audio21','wav','00:02:03','5MB',1,'2023-11-22 18:11:44'),(23,'audio22','mp4','00:05:06','3MB',0,'2023-11-22 18:11:44'),(24,'audio23','mp4','00:03:13','5MB',0,'2023-11-22 18:11:44'),(25,'audio24','mp3','00:03:09','1MB',1,'2023-11-22 18:11:44'),(26,'audio25','mp4','00:03:42','3MB',0,'2023-11-22 18:11:44'),(27,'audio26','wav','00:04:37','2MB',1,'2023-11-22 18:11:44'),(28,'audio27','mp4','00:05:32','6MB',0,'2023-11-22 18:11:44'),(29,'audio28','mp4','00:02:03','2MB',1,'2023-11-22 18:11:44'),(30,'audio29','mp3','00:01:46','7MB',0,'2023-11-22 18:11:44'),(31,'audio30','mp4','00:02:42','9MB',1,'2023-11-22 18:11:44'),(32,'audio31','mp3','00:05:36','4MB',1,'2023-11-22 18:11:44'),(33,'audio32','wav','00:02:11','6MB',1,'2023-11-22 18:11:44'),(34,'audio33','mp3','00:00:39','9MB',0,'2023-11-22 18:11:44'),(35,'audio34','mp4','00:01:41','1MB',1,'2023-11-22 18:11:44'),(36,'audio35','mp4','00:02:19','4MB',0,'2023-11-22 18:11:44'),(37,'audio36','wav','00:03:52','10MB',0,'2023-11-22 18:11:44'),(38,'audio37','mp3','00:03:10','4MB',1,'2023-11-22 18:11:44'),(39,'audio38','wav','00:03:00','3MB',1,'2023-11-22 18:11:44'),(40,'audio39','wav','00:02:45','2MB',0,'2023-11-22 18:11:44'),(41,'audio40','mp4','00:04:36','7MB',0,'2023-11-22 18:11:44');
/*!40000 ALTER TABLE `audio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22 18:12:27
