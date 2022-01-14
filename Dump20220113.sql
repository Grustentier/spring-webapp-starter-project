-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: webappdb
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.10.1

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
-- Table structure for table `profile_image`
--

DROP TABLE IF EXISTS `profile_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `filename` text,
  `internal_file_path` text,
  `external_file_path` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_image`
--

LOCK TABLES `profile_image` WRITE;
/*!40000 ALTER TABLE `profile_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` text,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `uid_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test-admin','$2a$04$f.vARW1cRrM2ReLHT00oUOGCn.cqKGoeLHG72cYyVy2A7DDeblq42','test-admin','test-admin','admin@admin.com'),(2,'test-user','$2a$04$f.vARW1cRrM2ReLHT00oUOGCn.cqKGoeLHG72cYyVy2A7DDeblq42','test-user-firstname','test-user-lastname','user@user.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_access` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `login_time` bigint DEFAULT NULL,
  `logout_time` bigint DEFAULT NULL,
  `manual_logout` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access`
--

LOCK TABLES `user_access` WRITE;
/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;
INSERT INTO `user_access` VALUES (1,1,1642003105639,NULL,0),(2,2,1642003121033,NULL,0),(3,1,1642003130631,NULL,0),(4,1,1642057126009,NULL,0),(5,1,1642057138819,NULL,0),(6,1,1642057956458,NULL,0),(7,1,1642057975345,NULL,0),(8,1,1642058350314,NULL,0),(9,1,1642058505985,NULL,0),(10,1,1642058535052,NULL,0),(11,1,1642058753200,NULL,0),(12,1,1642058876482,NULL,0),(13,1,1642059131863,NULL,0),(14,1,1642059463457,1642059470645,1),(15,1,1642059482746,1642059490637,1),(16,2,1642059827408,1642059843113,1),(17,2,1642059929242,1642059938663,1),(18,1,1642061541507,NULL,0),(19,1,1642061991257,NULL,0),(20,2,1642062247872,NULL,0),(21,1,1642062312504,NULL,0),(22,1,1642062539563,1642062543182,1),(23,1,1642062622412,1642062625824,1),(24,1,1642062663350,NULL,0),(25,1,1642063025436,1642063125200,0),(26,2,1642063461506,1642063469114,1),(27,1,1642069901165,1642069926465,1),(28,2,1642069913380,1642069941431,1),(29,1,1642083126385,1642083329436,0),(30,1,1642083337280,1642083538017,0),(31,1,1642084462536,1642084472725,1),(32,1,1642084487093,1642084552973,0),(33,2,1642084496987,1642084552914,0),(34,1,1642085556433,NULL,0),(35,2,1642085565826,NULL,0),(36,1,1642085763508,NULL,0),(37,1,1642086039457,NULL,0),(38,1,1642086263705,NULL,0),(39,1,1642086288783,NULL,0),(40,1,1642087604450,NULL,0),(41,1,1642087791914,NULL,0),(42,1,1642088283059,1642088301927,1),(43,1,1642088549335,1642088659334,1),(44,2,1642088565596,1642088604477,1),(45,2,1642088621447,1642088679357,1),(46,1,1642088832714,1642088898860,0),(47,1,1642089000452,1642089003874,1),(48,2,1642089008334,1642089018635,0),(49,1,1642089025884,1642089058788,0),(50,1,1642089067285,NULL,0),(51,1,1642089175857,1642089211241,0),(52,1,1642089459509,1642089473022,1),(53,2,1642089476951,1642089489639,1);
/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_Id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role_to_user_idx` (`user_id`),
  KEY `fk_user_role_to_role_idx` (`role_Id`),
  CONSTRAINT `fk_user_role_to_role` FOREIGN KEY (`role_Id`) REFERENCES `role` (`id`),
  CONSTRAINT `fk_user_role_to_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,2,2),(3,1,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 16:58:39
