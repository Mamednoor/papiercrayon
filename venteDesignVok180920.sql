-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: VenteDesign
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `Bio`
--

DROP TABLE IF EXISTS `Bio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `picture` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `twitter` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Bio_Users_Id` (`user_id`),
  CONSTRAINT `fk_Bio_Users_Id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bio`
--

LOCK TABLES `Bio` WRITE;
/*!40000 ALTER TABLE `Bio` DISABLE KEYS */;
INSERT INTO `Bio` VALUES (1,'2020-7-27-momoman.jpg',24,NULL,NULL,NULL,NULL),(2,'2020-8-25-61501155.jpeg',29,'twitter','instagram','facebook','pinterest'),(3,'2020-7-23-StupidCat.jpg',30,NULL,NULL,NULL,NULL),(4,'2020-7-24-Roger_Rabbit_11.png',31,NULL,NULL,NULL,NULL),(5,'2020-7-24-Albert-Einstein-crédit-photo-phys.org_.jpg',32,NULL,NULL,NULL,NULL),(6,'2020-7-24-téléchargement.jpeg',33,NULL,NULL,NULL,NULL),(7,NULL,34,NULL,NULL,NULL,NULL),(8,'2020-7-24-2020-7-24-téléchargement.jpeg',35,NULL,NULL,NULL,NULL),(9,'2020-7-24-momoman.jpg',36,NULL,NULL,NULL,NULL),(10,NULL,37,NULL,NULL,NULL,NULL),(11,NULL,38,NULL,NULL,NULL,NULL),(12,'2020-7-29-Launch-Deadpool-Movie-4K-Wallpaper.jpg',39,NULL,NULL,NULL,NULL),(13,NULL,40,NULL,NULL,NULL,NULL),(14,'2020-7-29-deadpool-art-26.jpg',41,NULL,NULL,NULL,NULL),(15,'2020-7-29-deadpool-movie-wallpaper-widescreen.jpg',42,NULL,NULL,NULL,NULL),(16,'2020-7-29-deadpool_marvel_art_face_107800_3840x2400.jpg',43,NULL,NULL,NULL,NULL),(17,NULL,44,NULL,NULL,NULL,NULL),(18,NULL,45,NULL,NULL,NULL,NULL),(19,NULL,46,NULL,NULL,NULL,NULL),(20,NULL,47,NULL,NULL,NULL,NULL),(21,'2020-7-30-5400_3d_space_scene_hd_wallpapers.jpg',48,NULL,NULL,NULL,NULL),(22,'2020-7-30-Deadpool-Wallpaper-1920x1080.jpg',49,NULL,NULL,NULL,NULL),(23,'2020-7-30-rosa2.jpg',50,NULL,NULL,NULL,NULL),(24,NULL,51,NULL,NULL,NULL,NULL),(25,'2020-7-30-rosa.jpg',52,NULL,NULL,NULL,NULL),(26,'2020-7-30-rosa2.jpg',53,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Bio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Design`
--

DROP TABLE IF EXISTS `Design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Design` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_creation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Design_User_id` (`user_id`),
  CONSTRAINT `fk_Design_User_id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Design`
--

LOCK TABLES `Design` WRITE;
/*!40000 ALTER TABLE `Design` DISABLE KEYS */;
INSERT INTO `Design` VALUES (29,'test','','test','','2020-7-3-deadpool-art-16.jpg',24),(37,'deadpool','1','test','2020-07-10','2020-7-10-deadpool-art-27.jpg',24),(40,'name','1','test','2020-07-23','2020-7-23-deadpool-art-17.jpg',24),(41,'testing2','44','testing2','2020-07-23','2020-7-23-deadpool-art-40.jpg',24),(43,'test','15','test','2020-07-23','2020-7-23-deadpool_anti_hero_supervillain_comics_art_98479_3840x2400.jpg',29),(53,'1','9999999999999999999999999999999999999999999999999','1','2020-07-24','2020-7-24-Profile-_Jessica_Rabbit.png',31),(54,'1','32','1','2020-07-24','2020-7-24-event_la-physique-chimie-au-college_982_939478-c220a.jpg',33),(55,'2','17','2','2020-07-24','2020-7-24-sph4u-physique-300x250.jpg',33),(56,'design1','10','photo de chimi','2020-07-24','2020-7-24-2020-7-24-event_la-physique-chimie-au-college_982_939478-c220a.jpg',35),(57,'deeadpool','6','deadpool','2020-07-24','2020-7-24-2020-7-24-new_deadpool_wallpaper_hd_by_cheko111.png',36),(64,'Chihi','22','hirir','2020-07-28','2020-7-28-chihiro3.jpg',29),(67,'test','5','test','2020-07-29','2020-7-29-deadpool_wade_wilson_mercenary_arms_95451_3840x2400.jpg',29),(72,'Chihiro','22','description','2020-07-30','2020-7-30-chihiro11.jpg',29),(73,'zaoeza','22','zza','2020-07-30','2020-7-30-25be5eeb-9476-45d0-b13f-151437975c8c_200x200.png',48),(74,'msi','4','msi gaming','2020-07-30','2020-7-30-deadpool_wallpaper_.jpg',48);
/*!40000 ALTER TABLE `Design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ordered`
--

DROP TABLE IF EXISTS `Ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ordered` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_amount` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Ordered_User_id` (`user_id`),
  CONSTRAINT `fk_Ordered_User_id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ordered`
--

LOCK TABLES `Ordered` WRITE;
/*!40000 ALTER TABLE `Ordered` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ordered_Design`
--

DROP TABLE IF EXISTS `Ordered_Design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ordered_Design` (
  `design_id` int NOT NULL,
  `ordered_id` int NOT NULL,
  KEY `fk_Ordered_Design_Design_id` (`design_id`),
  KEY `fk_Ordered_Design_Ordered_id` (`ordered_id`),
  CONSTRAINT `fk_Ordered_Design_Design_id` FOREIGN KEY (`design_id`) REFERENCES `Design` (`id`),
  CONSTRAINT `fk_Ordered_Design_Ordered_id` FOREIGN KEY (`ordered_id`) REFERENCES `Ordered` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ordered_Design`
--

LOCK TABLES `Ordered_Design` WRITE;
/*!40000 ALTER TABLE `Ordered_Design` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ordered_Design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_Users_Role_ID` (`role_id`),
  CONSTRAINT `fk_Users_Role_ID` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (24,'JeanPaul','jean','paul','jean@paul.com','$2b$10$z3NFhQj7JxHgUczuAlNLZOh9lBgu1jLBbHg7CkCW.xC6mtzbk/vRu',NULL),(29,'mamed','Mamed','noor','mamed@mamed.com','$2b$10$ZZhPIMl6t2AOSgrA5qu3Tu30jlR4zh9LwJb13A8ZJWYXfqW7SSas2',NULL),(30,'ben','Ben','Hubert','bh@example.com','$2b$10$TD661rMS09vwGMaLFIaAvuqikIe2X1uPewa4ySMmyzw7VZttOodx2',NULL),(31,'picoti-picota','Roger','Rabbit','roger@rabbit.com','$2b$10$5IyCjRWnQucg33AfHrTiLONp7rKLst8DVFEDMtI6GvRsk5RYk/UFu',NULL),(32,'E=MC2','Albert','Einstein','albert@einstein.com','$2b$10$La62JypltOyDBQqFbM5TRu4yi.csjbwUBJUC0exCkTAYozBuWDfcK',NULL),(33,'Sheldon','Sheldon','Cooper','sheldon@cooper.com','$2b$10$hKgdNX9I7wz321VWjEEmi.vAwpK53SCuvN4rZ2/HePn9IQN0EEInK',NULL),(34,'Alphonse','Alphonse','Brown','alphonse@brown.com','$2b$10$.USXY.c.BVD1a./bTICEz.mYHpdi72Yb9VtUAfSlooGBt9L6uCK26',NULL),(35,'patrickstar','Patrick','etoile','patrick@star.com','$2b$10$pSfUnXl1999VduAM40Nq9eIm/YG2Hgs3f5hQB4seGkkAL7oVf112O',NULL),(36,'johny','john','dep','john@john.com','$2b$10$80f93aVOLHhbalW4Dwe/xOAjDV/spPw.ao58bOXs9UTO0qRr34.Iy',NULL),(37,'Bobby','Bob','leponge','bob@leponge.fr','$2b$10$xqqbra3cQGPwMrNxva9M5OWHMRGekbizW7NQhnTMdPwWBLOkvh4l.',NULL),(38,'robde','Robert','debré','rob@deb.com','$2b$10$thdb1Z7rPGCR6KErvBzMS.OOsDBnbSYaf9Rq4WVg7VbQnYJV3gXvS',NULL),(39,'georges','georges','michael','georges@georges.com','$2b$10$QWK4ZcXyLruQWMLD0COPBO6/CUpUQh41Eb4UojWP1KmvQP3z7CdrK',NULL),(40,'jamesbond','Nathan','drake','nathan@drake.com','$2b$10$qDiVsJcM6Ku1SdtKftIQ0.Op8M7MV2vhkdd4aJLCHQ5ykqGxmPnpG',NULL),(41,'Cécilia','Cerise','Fraise','cerise@fraise.com','$2b$10$S0dNzBs63wmPN.SdodXvb.DcIHC8L7qwNytqGZDhgMnufgtRGAq9C',NULL),(42,'pricilia','Pricillia','princess','priscilia@princess.com','$2b$10$B30G2nVHQZeWBzOUGKOPHOw9yb8NPOxDCQSR0BwmofXgYkcURGJc.',NULL),(43,'test','test','test','test@test.com','$2b$10$81.kin16xZKSsdN6qxmUkuvPQ2jKj2UyHOGxyXprmxWcHrCqqdND6',NULL),(44,'wolverine','wolverine','wolverine','wolf@wolf.com','$2b$10$bz0Wv/ujKM1ULuqP5NHqpueRoAUAcTlrXib9tJcIrFfqPlt197N02',NULL),(45,'patate','patate','patate','patate@patate.com','$2b$10$Ibq58MrDsZTI2OBOgZg7GeEWnF/yg6bD6XojWAohi5HWWupZN92uO',NULL),(46,'exemple','exemple','exemple','exemple@exemple.com','$2b$10$E64BiAyf2x4Q0.ZIrAAmr.0NC5x8bTHoeofqjNq78dnIRZ9vQYFaq',NULL),(47,'vapo','vapoteur','vapotage','vapo@vapo.com','$2b$10$Ybq/qZTFF6VN9B4up3S3qOC8hNLqN8ljGcMs5CAqqiiVVVJVIPUQK',NULL),(48,'Robert77','resso','resso','resso@resso.com','$2b$10$errGwi6atNkdOS1j1He8R.YL6tO3CwG9vX0A0I0xqk32/ihuDJ7.i',NULL),(49,'stephanie','stephanie','lebihan','steph@steph.com','$2b$10$ScAOjvSKMH2EPiHKd2g8buJ70hBw1AWeA1lWdg4oSh1hZ2kldNuKC',NULL),(50,'demon renard','naruto','uzumaki','naru@to.com','$2b$10$nvn8hEqXP0ae89GJFhoMXOb7np8/cxYa0hVxV/V3hjWvdwQvMvQWa',NULL),(51,'rose','rose','rose','rose@rose.com','$2b$10$YDSrUVYqzCu4as/ipbot2OQUR4jqNSXLNDSCcW5QMDalZHIAG1OlC',NULL),(52,'rosalie','fleur','rose','fleur@rose.com','$2b$10$u6w2LqqWjDCYr2YbOt/PT.jLudG5rlCHNUwL0oZqYyTPZDOTRRtKu',NULL),(53,'Bubblegum','Rico','Malaga','rico@bubblegum.com','$2b$10$deUnDwaLIo47.Wwdg1X2YuZAusn814bJKFh7Wo9f/7GE6dxtrb3z2',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-18  1:50:03
