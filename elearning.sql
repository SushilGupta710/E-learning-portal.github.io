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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'Sushil Ashok Gupta','sushilashgupta@gmail.com','hello '),(2,'pratik','pratik@gmail.com','i am pratik'),(3,'ankit','ankit@gmail.com','i am ankit');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (7,'html/css','freecodecamp','Learn the basics of HTML5 and web development in this awesome course for beginners. ','https://www.youtube.com/embed/pQN-pnXPaVg','html3.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\html3.jpg'),(8,'javaScript','freecodecamp','This complete 134-part JavaScript tutorial for beginners will teach you everything you need to know to get started with the JavaScript programming language.','https://www.youtube.com/embed/PkZNo7MFNFg','js4.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\js4.jpg'),(9,'html/css','freecodecamp','Learn CSS in this full course for beginners. CSS, or Cascading Style Sheet, is responsible for the styling and looks of a website. ','https://www.youtube.com/embed/1Rs2ND1ryYc','html4.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\html4.jpg'),(10,'javaScript','clever programmer','Here is the best free javascript programming course on the planet. Made with lots of â¤ï¸. Take your web development skills to the next level with this Clever Programmer Learn Javascript course for beginners.','https://www.youtube.com/embed/Qqx_wzMmFeA','js1.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\js1.jpg'),(12,'javaScript','edureka','This Edureka video on \"JavaScript full course\" is a complete guide to JavaScript which covers in-depth knowledge about data types, variables, functions, event handling, form validation, etc using ','https://www.youtube.com/embed/o1IaduQICO0','js2.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\js2.jpg'),(13,'programming','edureka','Python Programming Certification Course: https://www.edureka.co/python-program...\r\n','https://www.youtube.com/embed/WGJJIrtnfpk','programming(3).jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\programming(3).jpg'),(15,'dsalgo','freecodecamp','Learn and master the most common data structures in this full course from Google engineer William Fiset. This course teaches data structures to beginners using high quality animations to represent the data structures visually.','https://www.youtube.com/embed/PkZNo7MFNFg','ds&algo(1).jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\ds&algo(1).jpg'),(18,'dsalgo','freecodecamp','Learn and master the most common data structures in this full course from Google engineer William Fiset. This course teaches data structures to beginners using high quality animations to represent the data structures visually.','https://www.youtube.com/embed/RBSGKlAvoiM','ds&algo(2).jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\ds&algo(2).jpg'),(19,'server','freecodecamp','Learn the Python Django framework with this free full course. Django is an extremely popular and fully featured server-side web framework, written in Python. Django allows you to quickly create web apps.','https://www.youtube.com/embed/F5mRW0jo-U4','server-side(1).jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\server-side(1).jpg'),(20,'ai','edureka','ð¥ Machine Learning Engineer Masters Program: This Edureka video on \"Artificial Intelligence\" will provide you with a comprehensive and detailed knowledge of Artificial Intelligence concepts with hands-on examples.','https://www.youtube.com/embed/JMUxmLyrhSk','ai2.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\ai2.jpg'),(21,'project','freecodecamp','\r\nSharpen your JavaScript skills by building 15 projects using plain JavaScript without frameworks. In this tutorial course, you will be taught step-by-step how to build JavaScript projects.','https://www.youtube.com/embed/3PHXvlpOkf4','projects(2).jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\projects(2).jpg'),(22,'interview','Him-eesh Madaan','This video will help you to prepare and practice your introduction for interview. How to introduce yourself is an important question in a interview,  as it helps in creating the first impression and also sets a pace for interview. ','https://www.youtube.com/embed/WijSprr9lSU','interview(1).jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\interview(1).jpg');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_course`
--

DROP TABLE IF EXISTS `index_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_course` (
  `i_cid` int(11) NOT NULL AUTO_INCREMENT,
  `i_cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `i_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `i_cdescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `i_cimgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `i_cimgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`i_cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_course`
--

LOCK TABLES `index_course` WRITE;
/*!40000 ALTER TABLE `index_course` DISABLE KEYS */;
INSERT INTO `index_course` VALUES (3,'Html and CSS','web','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','html-css.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\html-css.jpg'),(4,'JavaScript','web','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','js.png','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\js.png'),(5,'Programming','programming','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','programming.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\programming.jpg'),(6,'Server-Side','server','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','backend-language.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\backend-language.jpg'),(7,'DS& Algorithm','dsalgo','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','ds-algo.jpeg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\ds-algo.jpeg'),(8,'Artifical inteligence','ai','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','Artificial-Intelligence.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\Artificial-Intelligence.jpg'),(9,'Learn with Projects','project','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','project.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\project.jpg'),(10,'Prepare for interview','interview','Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis facilis pariatur amet dolore, ipsa sint vero consequuntur error culpa, itaque alias velit rem molestias aspernatur modi odio autem harum odit!','interview.jpg','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\CourseUploadFile\\\\interview.jpg');
/*!40000 ALTER TABLE `index_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_member`
--

DROP TABLE IF EXISTS `index_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `index_member` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mskill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mdescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mimgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mimgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_member`
--

LOCK TABLES `index_member` WRITE;
/*!40000 ALTER TABLE `index_member` DISABLE KEYS */;
INSERT INTO `index_member` VALUES (10,'Sankalp','web','Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.','3.png','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\3.png'),(11,'Pratik','programmer','Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.','programmer.png','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\programmer.png'),(12,'Ankit','web','Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.','man.png','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\man.png'),(13,'Sushil','dsalgo','Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.','user.png','D:\\Lecture Recorded file\\Servlet\\E-LearningPortal\\web\\UploadedFile\\\\user.png');
/*!40000 ALTER TABLE `index_member` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (4,'Sushil Ashok Gupta','Sushil1050','sushilashgupta@gmail.com','8080977269','12345','12345');
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

-- Dump completed on 2020-08-26 22:12:36
