-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: elearning
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `adminreg`
--

DROP TABLE IF EXISTS `adminreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminpass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminreg`
--

LOCK TABLES `adminreg` WRITE;
/*!40000 ALTER TABLE `adminreg` DISABLE KEYS */;
INSERT INTO `adminreg` VALUES (1,'admin1','1234');
/*!40000 ALTER TABLE `adminreg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'Sushil Ashok Gupta','sushilashgupta@gmail.com','hello '),(2,'pratik','pratik@gmail.com','i am pratik'),(3,'ankit','ankit@gmail.com','i am ankit'),(4,'sankalp','sanklp@gmail.com','i am sankalp'),(5,'lahsiv','vishal@gmail.com','fafsdfdsf'),(6,'mota','mota@gmail.com','hello guys i am mota'),(7,'kutte','kutte@gmail.com','one side onse side'),(8,'andar','andar@gmail.com','jhfsilsdksdbjkfnsdj bfkkdsf'),(9,'maaa','nucleya@gmail.com','emera paabfdk pandkjs klabjf'),(10,'nucleye','mujekypata@gmail.com','hdkasjdasdskasd'),(11,'sanklp','sanklp@gmail.com','ajhbdbsddfhdskf'),(12,'sara','sara@gmail.com','fsdfsdf');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cauthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cdescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `curl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cimgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cimgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (7,'html/css','freecodecamp','Learn the basics of HTML5 and web development in this awesome course for beginners. ','https://www.youtube.com/embed/pQN-pnXPaVg','html3.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\html3.jpg'),(8,'javaScript','freecodecamp','This complete 134-part JavaScript tutorial for beginners will teach you everything you need to know to get started with the JavaScript programming language.','https://www.youtube.com/embed/PkZNo7MFNFg','js4.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\js4.jpg'),(9,'html/css','freecodecamp','Learn CSS in this full course for beginners. CSS, or Cascading Style Sheet, is responsible for the styling and looks of a website. ','https://www.youtube.com/embed/1Rs2ND1ryYc','html4.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\html4.jpg'),(10,'javaScript','clever programmer','Here is the best free javascript programming course on the planet. Made with lots of â¤ï¸. Take your web development skills to the next level with this Clever Programmer Learn Javascript course for beginners.','https://www.youtube.com/embed/Qqx_wzMmFeA','js1.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\js1.jpg'),(12,'javaScript','edureka','This Edureka video on \"JavaScript full course\" is a complete guide to JavaScript which covers in-depth knowledge about data types, variables, functions, event handling, form validation, etc using ','https://www.youtube.com/embed/o1IaduQICO0','js2.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\js2.jpg');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runame` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rcontact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rcpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (2,'sushil gupta','pratik123','sushil@gmail.com','8080988787','111111','111111');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 22:58:36
