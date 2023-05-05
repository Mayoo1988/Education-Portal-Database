-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: elearning
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tbl_answer_master`
--

DROP TABLE IF EXISTS `tbl_answer_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_answer_master` (
  `AnsId` int NOT NULL AUTO_INCREMENT,
  `AnsDescription` varchar(255) DEFAULT NULL,
  `QuestionId` varchar(255) DEFAULT NULL,
  `IsValid` int DEFAULT NULL,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(45) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`AnsId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_answer_master`
--

LOCK TABLES `tbl_answer_master` WRITE;
/*!40000 ALTER TABLE `tbl_answer_master` DISABLE KEYS */;
INSERT INTO `tbl_answer_master` VALUES (1,'By Coding on udemy','1',0,'7','2022-06-17 11:27:09','7','2022-06-17 11:27:09'),(2,'By Coding in techgig','1',0,'7','2022-06-17 11:27:09','7','2022-06-17 11:27:09'),(3,'By coding in Coursera','1',1,'7','2022-06-17 11:27:09','7','2022-06-17 11:27:09'),(4,'By coding in Youtube','1',0,'7','2022-06-17 11:27:09','7','2022-06-17 11:27:09'),(5,'In one week','2',0,'7','2022-06-17 11:28:34','7','2022-06-17 11:28:34'),(6,'In two weeks','2',0,'7','2022-06-17 11:28:34','7','2022-06-17 11:28:34'),(7,'In 3 weeks','2',0,'7','2022-06-17 11:28:34','7','2022-06-17 11:28:34'),(8,'In one month','2',1,'7','2022-06-17 11:28:34','7','2022-06-17 11:28:34'),(9,'A','3',0,'38','2022-06-23 15:24:41','38','2022-06-23 15:24:41'),(10,'B','3',0,'38','2022-06-23 15:24:41','38','2022-06-23 15:24:41'),(11,'C','3',1,'38','2022-06-23 15:24:41','38','2022-06-23 15:24:41'),(12,'D','3',0,'38','2022-06-23 15:24:41','38','2022-06-23 15:24:41');
/*!40000 ALTER TABLE `tbl_answer_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_master`
--

DROP TABLE IF EXISTS `tbl_category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category_master` (
  `Category_Id` int unsigned NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) NOT NULL,
  `CreatedBy` int DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(255) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  `IsActive` int DEFAULT NULL,
  PRIMARY KEY (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_master`
--

LOCK TABLES `tbl_category_master` WRITE;
/*!40000 ALTER TABLE `tbl_category_master` DISABLE KEYS */;
INSERT INTO `tbl_category_master` VALUES (1,'Category 1 updated',4,'2019-08-18 14:36:01','4','2019-08-18 15:24:34',0),(2,'Some category 2',4,'2019-08-18 14:55:14',NULL,NULL,1),(3,'Some category 3',4,'2019-08-18 14:56:01',NULL,NULL,1),(4,'Some category 1',4,'2019-08-18 15:23:02',NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_category_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content_master`
--

DROP TABLE IF EXISTS `tbl_content_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_content_master` (
  `Contentid` int unsigned NOT NULL AUTO_INCREMENT,
  `ModuleId` int unsigned NOT NULL,
  `CourseId` int unsigned NOT NULL,
  `ContentTypeId` int unsigned NOT NULL,
  `ContentPath` varchar(145) NOT NULL,
  `CreatedBy` varchar(145) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `UpdatedBy` varchar(145) NOT NULL,
  `UpdatedOn` datetime NOT NULL,
  PRIMARY KEY (`Contentid`),
  KEY `FK_tbl_content_master_1` (`ModuleId`),
  KEY `FK_tbl_content_master_2` (`CourseId`),
  CONSTRAINT `FK_tbl_content_master_1` FOREIGN KEY (`ModuleId`) REFERENCES `tbl_module_master` (`ModuleId`),
  CONSTRAINT `FK_tbl_content_master_2` FOREIGN KEY (`CourseId`) REFERENCES `tbl_course_master` (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content_master`
--

LOCK TABLES `tbl_content_master` WRITE;
/*!40000 ALTER TABLE `tbl_content_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_content_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_course_master`
--

DROP TABLE IF EXISTS `tbl_course_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_course_master` (
  `courseId` int unsigned NOT NULL AUTO_INCREMENT,
  `courseName` varchar(255) DEFAULT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `coursePosterImage` varchar(255) DEFAULT NULL,
  `courseDescription` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `categoryId` int NOT NULL,
  `userId` int DEFAULT NULL,
  `isActive` int DEFAULT '1',
  PRIMARY KEY (`courseId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_course_master`
--

LOCK TABLES `tbl_course_master` WRITE;
/*!40000 ALTER TABLE `tbl_course_master` DISABLE KEYS */;
INSERT INTO `tbl_course_master` VALUES (1,'Beer','Beer',NULL,'How to Mak','9','2022-05-07 00:00:00','9','2022-05-07 00:00:00',2,NULL,0),(2,'Beer','Beer','','How to Make beer','4','2019-08-17 00:00:00','4','2019-08-17 00:00:00',2,NULL,NULL),(3,'Beer','Beer','','How to Make beer','4','2019-08-17 00:00:00','4','2019-08-17 00:00:00',2,NULL,NULL),(4,'Beer','Beer','','How to Make beer','4','2019-08-17 00:00:00','4','2019-08-17 00:00:00',2,NULL,NULL),(5,'Beer','Beer','','How to Make beer','4','2019-08-20 00:00:00','4','2019-08-20 00:00:00',2,NULL,NULL),(6,'S','A','','S','4','2019-08-20 00:00:00','4','2019-08-20 00:00:00',2,NULL,NULL),(7,'Course 1','Course 1',NULL,'Course','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,NULL,0),(8,'Name of the course','Name of the course','','Name of the course desc','4','2019-08-20 00:00:00','4','2019-08-20 00:00:00',3,NULL,NULL),(9,'Mayur','ABC',NULL,'Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,NULL),(10,'Mayur','ABC',NULL,'Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,NULL),(11,'Mayur','ABC',NULL,'Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,NULL),(12,'Mayur','ABC',NULL,'Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,NULL),(13,'Mayur','ABC',NULL,'Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,NULL),(14,'Mayur','ABC',NULL,'Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,1),(15,'Mayur','ABC','http://localhoat:3001/courseMaterial/image/15/course_poster.jpg','Mayur','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',2,7,1),(16,'Machine learning','dd','http://localhoat:3001/courseMaterial/image/16/undefined','sada','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(17,'Artificial','c01','http://localhoat:3001/courseMaterial/image/17/undefined','Artificial','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(18,'Artificial','c09','http://localhoat:3001/courseMaterial/image/18/undefined','Artificial','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(19,'Artificial12','A12','http://localhoat:3001/courseMaterial/image/19/undefined','Artificial','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(20,'Artificial123','a12','http://localhoat:3001/courseMaterial/image/20/undefined','Artificial','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(21,'Artificial124','c011','http://localhoat:3001/courseMaterial/image/21/undefined','Machine','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(22,'Artificial','c09',NULL,'Ab details','9','2022-05-07 00:00:00','9','2022-05-07 00:00:00',2,7,1),(23,'Module','C012',NULL,'cvd','9','2022-05-07 00:00:00','9','2022-05-07 00:00:00',2,7,1),(24,'Angular','Ang',NULL,'Angular Cours','7','2022-05-15 00:00:00','7','2022-05-15 00:00:00',2,7,1),(25,'module','C12','http://localhoat:3001/courseMaterial/image/25/undefined','ABC','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',4,7,1),(26,'Machine Learning','01',NULL,'Learn AI','9','2022-05-07 00:00:00','9','2022-05-07 00:00:00',2,7,1),(27,'Course1','c01','http://localhoat:3001/courseMaterial/image/27/undefined','Course detail','7','2022-05-08 00:00:00','7','2022-05-08 00:00:00',4,7,1),(28,'Network','net1','http://localhoat:3001/courseMaterial/image/28/undefined','Network','7','2022-05-08 00:00:00','7','2022-05-08 00:00:00',4,7,0),(29,'C012','D','http://localhoat:3001/courseMaterial/image/29/undefined','Module','7','2022-05-08 00:00:00','7','2022-05-08 00:00:00',4,7,1),(30,'Man12','12','http://localhoat:3001/courseMaterial/image/30/undefined','Artificial','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(31,'A123','D','http://localhoat:3001/courseMaterial/image/31/undefined','Module','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',2,7,1),(32,'Artificial','5','http://localhoat:3001/courseMaterial/image/32/undefined','Artificial','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(33,'A123','ddf','http://localhoat:3001/courseMaterial/image/33/undefined','dhdh','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(34,'Module1','c09','http://localhoat:3001/courseMaterial/image/34/undefined','Course','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(35,'vjavj','ja cja j','http://localhoat:3001/courseMaterial/image/35/undefined','vcgvaj','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(36,'Module1','sdcsac','http://localhoat:3001/courseMaterial/image/36/undefined','acasc','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(37,'Module1','c09','http://localhoat:3001/courseMaterial/image/37/undefined','A','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(38,'Module1','c09','http://localhoat:3001/courseMaterial/image/38/undefined','Artificial','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(39,'A123','Mane','http://localhoat:3001/courseMaterial/image/39/undefined','D','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(40,'Module1','c09','http://localhoat:3001/courseMaterial/image/40/undefined','Artificial','7','2022-05-09 00:00:00','7','2022-05-09 00:00:00',4,7,1),(41,'Module1','Machine','http://localhoat:3001/courseMaterial/image/41/undefined','Artificial','7','2022-05-10 00:00:00','7','2022-05-10 00:00:00',4,7,1),(42,'Module1','c09','http://localhoat:3001/courseMaterial/image/42/undefined','Artificial','7','2022-05-10 00:00:00','7','2022-05-10 00:00:00',4,7,1),(43,'Module1','c09','http://localhoat:3001/courseMaterial/image/43/undefined','Artificial','7','2022-05-10 00:00:00','7','2022-05-10 00:00:00',4,7,1),(44,'Module1','c09','http://localhoat:3001/courseMaterial/image/44/undefined','Artificial','7','2022-05-10 00:00:00','7','2022-05-10 00:00:00',4,7,1),(45,'Module1','5','http://localhoat:3001/courseMaterial/image/45/undefined','A','7','2022-05-10 00:00:00','7','2022-05-10 00:00:00',4,7,1),(46,'Digi1','Digi1','http://localhoat:3001/courseMaterial/image/46/undefined','Digital','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',4,7,0),(47,'Digi2','c09',NULL,'Artificiall','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',2,7,1),(48,'MAchine','A123','http://localhoat:3001/courseMaterial/image/48/undefined','Mane','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',2,7,1),(49,'Module1','c09','http://localhoat:3001/courseMaterial/image/49/undefined','Artificial','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',4,7,1),(50,'Module13','c09',NULL,'abhs','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',2,7,1),(51,'Module132','c09','http://localhoat:3001/courseMaterial/image/51/undefined','Artificial','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',4,7,1),(52,'Artificial12','5','http://localhoat:3001/courseMaterial/image/52/undefined','Artificial','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',4,7,1),(53,'Artificial125','c09',NULL,'adhjcvsjd','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',2,7,1),(54,'module5','A12','http://localhoat:3001/courseMaterial/image/54/undefined','Machinet','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',4,7,1),(55,'Module1','c09','http://localhoat:3001/courseMaterial/image/55/undefined','Artificial','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',4,7,1),(56,'DataScience','Science','http://localhoat:3001/courseMaterial/image/56/undefined','Statistical Data','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',4,7,1),(57,'Scala','Scala01','http://localhoat:3001/courseMaterial/image/57/undefined','Scala data','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',4,7,1),(58,'Artificial','c09','http://localhoat:3001/courseMaterial/image/58/undefined','Artificial','7','2022-05-15 00:00:00','7','2022-05-15 00:00:00',4,7,1),(59,'DataBase Course','Database 1','http://localhoat:3001/courseMaterial/image/59/undefined','Information About Database','7','2022-05-17 00:00:00','7','2022-05-17 00:00:00',4,7,1),(60,'Module key123','Code1','http://localhoat:3001/courseMaterial/image/60/undefined','Course database','7','2022-05-22 00:00:00','7','2022-05-22 00:00:00',4,7,1),(61,'Angualar course','Angular course','http://http://203.112.158.76//courseMaterial/image/61/undefined','Angular','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',4,7,1),(62,'Module1','c09','http://http://203.112.158.76//courseMaterial/image/62/undefined','Artificial','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',4,7,1),(63,'Module1234','C01','http://http://203.112.158.76//courseMaterial/image/63/undefined','Coursee','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(64,'Artificial125','c09','http://http://203.112.158.76//courseMaterial/image/64/undefined','Artificial','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(65,'Module1','c09','http://http://203.112.158.76//courseMaterial/image/65/undefined','Artificial','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(66,'Module1','A12','http://http://203.112.158.76//courseMaterial/image/66/undefined','A','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(67,'A','ABC','http://http://203.112.158.76//courseMaterial/image/67/undefined','Artificial','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(68,'Module12','c09','http://http://203.112.158.76//courseMaterial/image/68/undefined','A','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(69,'Module1','A12','http://http://203.112.158.76//courseMaterial/image/69/undefined','A','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',4,7,1),(70,'Module1','5',NULL,'A','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',2,7,1),(71,'Module1','A12','http://http://203.112.158.76//courseMaterial/image/71/undefined','Artificial','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',4,7,1),(72,'Module1','c09','http://localhost:3001/courseMaterial/image/72/undefined','Artificial','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',4,7,1),(73,'Module1','c09','http://localhost:3001/courseMaterial/image/73/undefined','Artificial','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',4,7,1),(74,'Module1','c09','http://localhost:3001/courseMaterial/image/74/undefined','Artificial','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',4,7,1),(75,'Module1','c09','http://localhost:3001/courseMaterial/image/75/undefined','A','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',4,7,1),(76,'Module1','c09','http://localhost:3001/courseMaterial/image/76/undefined','Angular','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',4,7,1),(77,'c09','A','http://localhost:3001/courseMaterial/image/77/undefined','Rohan','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',2,7,1),(78,'Rohan','C01','http://localhost:3001/courseMaterial/image/78/undefined','Mane','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',4,7,1),(79,'A234','C','http://localhost:3001/courseMaterial/image/79/undefined','D','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',4,7,1),(80,'Course123','C01','http://localhost:3001/courseMaterial/image/80/undefined','Module','7','2022-06-15 00:00:00','7','2022-06-15 00:00:00',4,7,1),(81,'Angular 13','Angular 13','http://localhost:3001/courseMaterial/image/81/undefined','Angular','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',4,21,1),(82,'Module1','Machine','http://localhost:3001/courseMaterial/image/82/undefined','Artificial','7','2022-06-16 00:00:00','7','2022-06-16 00:00:00',4,7,1),(83,'Priyanka','Mane','http://localhost:3001/courseMaterial/image/83/undefined','Module','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',4,21,1),(84,'Artificial','Rohan','http://localhost:3001/courseMaterial/image/84/undefined','Priyanka','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',4,21,1),(85,'Angular Course','Angular module','http://localhost:3001/courseMaterial/image/85/undefined','Mane','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',4,21,1),(86,'Angular Course','Angular module','http://localhost:3001/courseMaterial/image/86/undefined','Mane','7','2022-06-17 00:00:00','7','2022-06-17 00:00:00',4,7,1),(87,'A123','Mane','http://localhost:3001/courseMaterial/image/87/undefined','Module','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',4,21,1),(88,'Mayur Test','Mayur','http://localhost:3001/courseMaterial/image/88/undefined','Mayur','7','2022-06-17 00:00:00','7','2022-06-17 00:00:00',4,7,1),(89,'Mayur','Mayur','http://localhost:3001/courseMaterial/image/89/undefined','MAyur Course','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',4,21,1),(90,'Machine','Artificial','http://localhost:3001/courseMaterial/image/90/undefined','Rohan','7','2022-06-17 00:00:00','7','2022-06-17 00:00:00',4,7,1),(91,'Mayur','Mane','http://localhost:3001/courseMaterial/image/91/undefined','Artificial','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',4,21,1),(92,'Machine Learning','Data Science','http://localhost:3001/courseMaterial/image/92/undefined','Scientist','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',4,21,1),(93,'Event Management','Event Management Course','http://localhost:3001/courseMaterial/image/93/undefined','Event Management','24','2022-06-17 00:00:00','24','2022-06-17 00:00:00',4,24,1),(94,'Event Manage','Event management','http://localhost:3001/courseMaterial/image/94/undefined','Event management','24','2022-06-17 00:00:00','24','2022-06-17 00:00:00',4,24,1),(95,'Event management','Mane','http://localhost:3001/courseMaterial/image/95/undefined','Event management','29','2022-06-17 00:00:00','29','2022-06-17 00:00:00',4,29,1),(96,'A','B','http://localhost:3001/courseMaterial/image/96/undefined','d','31','2022-06-17 00:00:00','31','2022-06-17 00:00:00',4,31,1),(97,'Event management','Event','http://localhost:3001/courseMaterial/image/97/undefined','Event description','33','2022-06-17 00:00:00','33','2022-06-17 00:00:00',4,33,1),(98,'Course1','Course12','http://localhost:3001/courseMaterial/image/98/undefined','MAchine','21','2022-06-20 00:00:00','21','2022-06-20 00:00:00',4,21,1),(99,'Course1','CourseName','http://localhost:3001/courseMaterial/image/99/undefined','Rohan','21','2022-06-21 00:00:00','21','2022-06-21 00:00:00',4,21,1),(100,'Data Science','Data 1','http://localhost:3001/courseMaterial/image/100/undefined','Data Completion','36','2022-06-23 00:00:00','36','2022-06-23 00:00:00',4,36,1),(101,'Data Science','Data Sciences',NULL,'Learn Data Sciences','45','2022-10-05 00:00:00','45','2022-10-05 00:00:00',2,38,1),(102,'C01','Mane','http://localhost:3001/courseMaterial/image/102/undefined','Machine learning','40','2022-07-24 00:00:00','40','2022-07-24 00:00:00',4,40,1),(103,'C01','Machine Learning','http://localhost:3001/courseMaterial/image/103/undefined','Machine Learn','40','2022-07-29 00:00:00','40','2022-07-29 00:00:00',4,40,1),(104,'Machine Learning','Machine','http://localhost:3001/courseMaterial/image/104/undefined','Machine','42','2022-08-07 00:00:00','42','2022-08-07 00:00:00',4,42,1),(105,'Machine','Learning','http://localhost:3001/courseMaterial/image/105/undefined','Machine Learning','42','2022-08-07 00:00:00','42','2022-08-07 00:00:00',2,42,1),(106,'Artificial','MAchine',NULL,'Priyanka','42','2022-08-08 00:00:00','42','2022-08-08 00:00:00',2,42,1),(107,'Module','Aiml',NULL,'Mayur','46','2022-10-05 00:00:00','46','2022-10-05 00:00:00',2,46,1),(108,'Rohan','A123','http://localhost:3001/courseMaterial/image/108/undefined','Mane','53','2022-10-07 00:00:00','53','2022-10-07 00:00:00',4,53,1),(109,'Machine','Artificial','http://localhost:3001/courseMaterial/image/109/undefined','Rohan','53','2022-10-07 00:00:00','53','2022-10-07 00:00:00',4,53,1),(110,'Rohan','A123','http://localhost:3001/courseMaterial/image/110/undefined','Mane','53','2022-10-07 00:00:00','53','2022-10-07 00:00:00',4,53,1),(111,'Module','Aiml',NULL,'Mayur','53','2022-10-07 00:00:00','53','2022-10-07 00:00:00',4,53,1),(112,'Module','Aiml','http://localhost:3001/courseMaterial/image/112/undefined','Mayur','53','2022-10-07 00:00:00','53','2022-10-07 00:00:00',4,53,1),(113,'Module','Aiml','http://localhost:3001/courseMaterial/image/113/undefined','Mayur','53','2022-10-07 00:00:00','53','2022-10-07 00:00:00',4,53,1),(114,'Module1','c09','http://localhost:3001/courseMaterial/image/114/undefined','Artificial','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(115,'Rohan','Priyanka','http://localhost:3001/courseMaterial/image/115/undefined','Mane','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(116,'Module1','Machine','http://localhost:3001/courseMaterial/image/116/undefined','Artificial','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(117,'Module1','c09','http://localhost:3001/courseMaterial/image/117/undefined','Artificial','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,4,1),(118,'Module1','c09','http://localhost:3001/courseMaterial/image/118/undefined','Artificial','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(119,'c09','Artificial','http://localhost:3001/courseMaterial/image/119/undefined','Rohan','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(120,'Module1','Machine','http://localhost:3001/courseMaterial/image/120/undefined','Artificial','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(121,'Priyanka','Mane','http://localhost:3001/courseMaterial/image/121/undefined','Module','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1),(122,'Machine','Artificial','http://localhost:3001/courseMaterial/image/122/undefined','Rohan','53','2022-10-08 00:00:00','53','2022-10-08 00:00:00',4,53,1);
/*!40000 ALTER TABLE `tbl_course_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_designation_master`
--

DROP TABLE IF EXISTS `tbl_designation_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_designation_master` (
  `DesignationId` int unsigned NOT NULL AUTO_INCREMENT,
  `DesignationName` varchar(145) NOT NULL,
  `Createdby` varchar(45) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `UpdatedBy` varchar(100) NOT NULL,
  `UpdatedOn` datetime NOT NULL,
  PRIMARY KEY (`DesignationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_designation_master`
--

LOCK TABLES `tbl_designation_master` WRITE;
/*!40000 ALTER TABLE `tbl_designation_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_designation_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_login` (
  `userId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userCode` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email_Id` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `photoPath` varchar(255) DEFAULT NULL,
  `isActive` tinyint NOT NULL,
  `joiningDate` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `roleId` tinyint NOT NULL,
  `orgId` bigint DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_login`
--

LOCK TABLES `tbl_login` WRITE;
/*!40000 ALTER TABLE `tbl_login` DISABLE KEYS */;
INSERT INTO `tbl_login` VALUES (1,'kamat4','mayur','mane','mane12@mahindra.com','7045247498','mayur/abc',0,'01-08-2019','4','2019-08-01 18:51:43','4','2019-08-01 18:51:43','',0,NULL),(2,'kamat','mayu','mane','mane123@mahindra.com','7045247498','',1,'2022-05-10T18:30:00.000Z','2','2022-05-13 19:30:17','7','2022-05-13 19:30:17','mayur',0,NULL),(3,'kamat4','mayur','mane','mane1234@mahindra.com','7045247498','mayur/abc',1,'01-08-2019','4','2019-08-01 18:51:43','4','2019-08-01 18:51:43','mayur',0,NULL),(4,'kamat1','mayur','mane','mane@mahindra.com','7045247498','mayur/abc',1,'01-08-2019','4','2019-08-01 19:24:20','4','2019-08-01 19:24:20','$2b$15$m4PjQcYa.xD441LZHJJcLezwDD6pMgjMzPPRUVWQCHeb.3Eb1pxYS',0,NULL),(5,'kamat4','mayur','mane','mane12345@mahindra.com','7045247498','mayur/abc',1,'01-08-2019','4','2019-08-01 18:51:43','4','2019-08-01 18:51:43','$2b$15$tec4ztVS4P6ib01IOZfGnuB26Z2l1rU7wBFlm9JfHQcQjLAicgsqi',0,NULL),(6,'Roshan','Mayur','Mane','mane.mayur891@gmail.com','7045247498','',1,'2019-08-01T18:30:00.000Z','6','2022-05-13 19:30:48','7','2022-05-13 19:30:48','$2b$15$gUT7aJ1uuS2YvhA8pLXLzOODNrqNCznuXGMSp5UvdpQqB97q4ylfa',0,NULL),(7,'mane123','Mayur','Mane','mayur.mane891@gmail.com','7045247498','',1,'','Admin','2022-04-24 08:35:07',NULL,NULL,'$2b$15$yQmPZnhvkU8FHiXy3nQNruWWqhnHrMrS8eim7TV1aOHZJrGimeLHK',0,NULL),(8,'mane123','Mayur','Mane','mayur.mane89@gmail.com','7045247498','',1,'','Admin','2022-05-06 17:38:52',NULL,NULL,'$2b$15$ebIPYt14dwWzkM0afAcX0O7iWCV83h0ms.vAjRL8fGukGYvTvQfSu',0,NULL),(9,'mane123','Rohan','Mane','Rohan89@gmail.com','7045247498','',1,'','Admin','2022-05-07 09:02:14',NULL,NULL,'$2b$15$nzdnPk1n5lsjYO./5loW/.Qo9rQN3XgRhNK1d0ntaaaR5a.78yBwO',0,NULL),(10,'User1','Priyanka','Mane','priya@gmail.com','7045247498','',1,'2022-05-02T18:30:00.000Z','10','2022-05-08 16:32:23','7','2022-05-08 16:32:23','$2b$15$/qF9R1pio9om3azFrGz9lOmo14JRNnMdtOXJavWjd6EsTTUVTf9Pi',0,NULL),(11,'Roshan@gmail.com','Priyankaaa','Maneee','roshan@gmail.com','7045247498','',1,'2022-05-12T18:30:00.000Z','Admin','2022-05-13 15:27:56',NULL,NULL,'$2b$15$IHGAljkM4gKo0L700/GVHOZNTE7lI6eZTtIDEs3MSCDjLutZ/kJZa',0,NULL),(12,'Rohan.mane891@gmail.com','Rohan','Mane','rohan.mane891@gmail.com','7045247498','',1,'2022-05-02T18:30:00.000Z','Admin','2022-05-17 16:13:29',NULL,NULL,'$2b$15$lOXSURh7UjNlTaeTSTyDXu403aVCmxMCauAsJosdKiBNLT2sMVtI6',0,NULL),(13,'Pramod@gmail.com','Pramod','Kumar','pramod@gmail.com','7045247498','',1,'2022-05-09T18:30:00.000Z','13','2022-05-22 22:28:40','7','2022-05-22 22:28:40','$2b$15$4IqP0WTQ0O1NcRQrBdQEyeN/AL6Vv5YhUBVDsCKMgcBawN/q3OD96',0,NULL),(14,'Pramod123','Pramod','Kumar','pramod123@gmail.com','7045247498','',1,'2022-05-11T18:30:00.000Z','Admin','2022-05-22 17:00:59',NULL,NULL,'$2b$15$jCXJKjtQ38.ZWTS2vlxbA.Kb3W0N5edPhi/Mh2ktVpwsZ6wuhIw1u',0,NULL),(15,'Module1','Machine','Artificial','priyanka@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-15 14:47:08',NULL,NULL,'$2b$15$hSlQPY5BSVq8nKCjvfo4wOEgps9ziBF26NmQ0oObLUAtAV8RCZi9a',2,NULL),(16,'mayur.mane891@gmail.com','Machine','User','rosah@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-15 14:57:25',NULL,NULL,'$2b$15$3s9O.Yud7wxdR9lrkXTQguu/Xz85Hv/8GGRKZIUMdHJ5itDaxDMDq',2,NULL),(17,'A','D','Module','rosh@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-15 14:58:20',NULL,NULL,'$2b$15$IdTezChntrEg2.eR1NOyOuS23LcObxd2d4ZcVal02kUhfgevBgUdG',2,NULL),(18,'user','Priyanka','Mane','piyaas@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-15 16:12:40',NULL,NULL,'$2b$15$c0zS.aANYOzqY8d4yMguZuKkhQIOX/SUy7zyZoON4xc9ec2HBSP9i',2,NULL),(19,'data','Artificial','Rohan','pooja@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-15 16:18:28',NULL,NULL,'$2b$15$XJE8IMYwz6oXsQDKd.HXZum4qkiS5qxKyd2h0WW05F7GQ/eeJSWP2',2,NULL),(20,'Mayur','user','Cokin','abc@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-15 16:41:24',NULL,NULL,'$2b$15$rLgExLIu9AnL.sqEVKb8ludftVqx1vkVhoYEkyYfqvaAeLcksizWK',2,NULL),(21,'Priya1','Priyanka','Pradhane','priyapradhane@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-15 19:14:32',NULL,NULL,'$2b$15$p2iveviDuzFqCwpfA5LvE.N0y4nVB.TJ4KM8LL03yO6sFUfYlBPf6',2,NULL),(22,'Module1','Machine','Artificial','nachiket@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-16 03:56:32',NULL,NULL,'$2b$15$UNPwTDwmj/8Ryr9QI9fZP.EW40bSzkNUsgSaDlbHBC4P5JVz0nDrq',1,NULL),(23,'Priya1','Priyanka','Mane','murtuz@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-16 04:17:17',NULL,NULL,'$2b$15$HyE4cJ7nB3uchbnZvGxDTe6Bpdq1TnRSjT3jStrzab4hz2QMhD37m',1,NULL),(24,'PriyankaMane','Priya','Mane','priyamanee@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 15:18:12',NULL,NULL,'$2b$15$nmGo0WiTuq4Q0exRB47Cs.hUNGHLWw2qmlv4QXRIXwByeuzbce8GG',2,NULL),(25,'Module1','Machine','Artificial','name@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:15:04',NULL,NULL,'$2b$15$1yyS3luqH.YQtQbx70TUyueoxBTd4HGgECJfKloaSuRLGeoo20RlG',2,NULL),(26,'Artificial','Machine','Artificial','none@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:20:04',NULL,NULL,'$2b$15$vN1Np2ziNo/YP9zfBK9utOwr9bJwhUZ5gfA8u7FAqUKYQHiYtfSBm',2,NULL),(27,'Module1','Machine','Angular','test@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:24:44',NULL,NULL,'$2b$15$booSpJhd5w0pXYWRj/qSg.UMcaakoKZIDVT5aWsurKBlGm0d4PIGW',2,NULL),(28,'module','Machine','Artificial','abcd@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:34:19',NULL,NULL,'$2b$15$HY8Wqad6Hku5ohcwGZxKU.s8CPrrMnWkkHscwOTKcvYg0ntZUggiu',2,NULL),(29,'Module1','Machine','Artificial','please@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:39:37',NULL,NULL,'$2b$15$Y8gwRsWnNpTX7FVkYWe5p.HcienBTpubEL3Vx.sDvbKMzrQHlramW',2,NULL),(30,'Module1','Machine','Artificial','proreta@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:49:11',NULL,NULL,'$2b$15$Z.AwWKr6jAhXV.5bYq.fxuHv5ueIK1VvK.DG8zJm9WSohdcTBVv7y',1,NULL),(31,'Angular module','Mane','A','abcde@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:53:12',NULL,NULL,'$2b$15$Ggm6ilgF28ltcE4eSxonzuMALkk2LpKVE4MB12BcGSjuQut3AFej.',2,NULL),(32,'good','Artificial','MAchine','less@gmail.com','7045247498','',1,'2022-06-15T18:30:00.000Z','Admin','2022-06-17 16:55:50',NULL,NULL,'$2b$15$iWTt4Japt96pIIXSNcP1OOTaqFmFm42QpFJk0oZ3ICy59VFos4fTO',1,NULL),(33,'Mane','Roshan','Mane','serve@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-17 17:06:03',NULL,NULL,'$2b$15$gw8zbOsMtRP9XfeDg0sryOnMoTIembHOaNUU/FMgEK4B9txucDSUe',2,NULL),(34,'user','Rahul','Mane','rahull@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-17 17:11:21',NULL,NULL,'$2b$15$/0Mzg0kNIuAg/Boj8wHaweBrmrmIoIcO7wC.D7fkNBo/BRmHauCaa',1,NULL),(35,'Test Demo','Test','mane','dgca@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-19 11:46:31',NULL,NULL,'$2b$15$KmpNYV.7ICbcG1OzdSQV/OyEoqwLLzIIfAhdfJnk2/nHEJ0mbDRvC',1,NULL),(36,'Module1','rahul','sharma','rahule@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-23 14:35:30',NULL,NULL,'$2b$15$vXqyBBa3g00PpztEAc4UBexrVnXFoamCE0gGDhG44y55LBaBW9JZ.',2,NULL),(37,'test','Test ','Sharma','testt@gmail.com','7045247498','',1,'2022-06-14T18:30:00.000Z','Admin','2022-06-23 14:38:51',NULL,NULL,'$2b$15$wa4iEU4CDsPU0WfounW7FOiBf8GdPCamXis13MZcSkhb67dTPDIK6',1,NULL),(38,'User1','Test','User','jayesh@gmail.com','7045247498','',1,'2022-06-13T18:30:00.000Z','Admin','2022-06-23 15:15:01',NULL,NULL,'$2b$15$e.XbXb9gEGquhuSiJ0B4b.3tMh1vH.doTq/GQw3.skJ0ECAXOrB.y',2,NULL),(39,'Test User','Piyush','Sharma','piyush@gmail.com','7045247498','',1,'2022-06-07T18:30:00.000Z','39','2022-08-06 17:48:23','40','2022-08-06 17:48:23','$2b$15$JSfsZ3PBMmJQQvNvhMcrWu/RR6boIzsrsSb7Nqqw4RsD/xWDHkjMm',1,NULL),(40,'Usercode1','Mahendra','Mane','mahendra@gmail.com','7045247498','',1,'2022-07-13T18:30:00.000Z','Admin','2022-07-24 17:26:50',NULL,NULL,'$2a$15$XsjvZQQvMtRB0HIKImhaXepCnqbeOTQyMPf15f72md1nN0I8S6yDy',2,NULL),(41,'mayur.mane891@gmail.com','priya','mane','priya654@gmail.com','7045247498','',1,'2022-08-08T18:30:00.000Z','Admin','2022-08-07 06:05:14',NULL,NULL,'$2a$15$Salj8NzTovxLPf.XDEYdwO5Sh6v2978tTadgTrMLsYxYRK1//fPNe',1,NULL),(42,'marco@gmail.com','Marco','Mane','marcoo@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-07 14:34:30',NULL,NULL,'$2a$15$gcUWEAQFJ009IFOe9FkMe.BqRStF7MKKExLCIpyDISr/pXyNUOzC6',2,NULL),(43,'User1','Priyanka','Mane','piyu@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-08 12:38:28',NULL,NULL,'$2a$15$Fv2btMB/TZ/cNuQBDIoMDO/aY3jf3hlb6mkcDzlIExCXycsXwlZGO',1,NULL),(44,'mayur.mane891@gmail.com','Priyanka','Mane','piyuu@gmail.com','7045247498','',1,'2022-08-01T18:30:00.000Z','Admin','2022-08-08 12:40:11',NULL,NULL,'$2a$15$YxKZhQq1F4XTpDKkxO9LLebVL/L1g8/RqSE1hP8Arfk2l.gxQ1r.G',1,NULL),(45,'Module1','Machine','Angular','maneee@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-11 01:28:46',NULL,NULL,'$2a$15$V1SxMqcbHdeTw2WULbV09e11BWtVUheON8CQlSZ88A5O9bc.F76q2',2,6),(46,'User1','Rohan','Mane','neworg@gmail.com','7045247498','',1,'2022-08-03T18:30:00.000Z','Admin','2022-08-11 01:30:59',NULL,NULL,'$2a$15$ndSz5MobR5Eufp1vxFmpbuQg0IIAanbCVfswWSj3sgdNsAcqa93g2',2,12),(47,'Mayuu','Artificial','MAchine','artificial@gmail.com','7045247498','',1,'2022-08-03T18:30:00.000Z','Admin','2022-08-11 01:42:19',NULL,NULL,'$2a$15$vfxUlYZs3.oXLbPAswwDZOwlUDHAr5syxet8EgK0JuCIdt2SFTfoG',1,NULL),(48,'Mane','mayurr','Manee','mayure@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-11 01:47:07',NULL,NULL,'$2a$15$5onEzhTRB6ygRbtQ8CMAhegMky1gBxL.AELvU2vSH8kuhaaz31PbC',1,NULL),(49,'Module1','Machine','Artificial','priy5433@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-11 01:51:39',NULL,NULL,'$2a$15$mcWIPx4TTEykoDjXCJH5wOBhFJzyXhNcNW35.KuTLzBDKgAKjH7cG',1,NULL),(50,'Module1','Machine','Artificial','machinee@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-11 02:04:41',NULL,NULL,'$2a$15$g.9UWI6LiL3WPFwi2Q6aBe2IjrSqQt1JB7iamyvRpHKft6/9xOitK',1,NULL),(51,'user','Artificial','MAchine','manu@gmail.com','7045247498','',1,'2022-08-02T18:30:00.000Z','51','2022-08-11 09:21:53','7','2022-08-11 09:21:53','$2a$15$s1HNXZs0xY9RbtWxeIe8t.HDKQBgxtBTwtstqavqQMK0M0KeovRj6',1,12),(52,'Organisation','Mayur','Org','mayuuq@gmail.ocm','7045247498','',1,'2022-08-02T18:30:00.000Z','Admin','2022-08-11 03:54:34',NULL,NULL,'$2a$15$Mi6vvVeITC3SH8FBAycfvuk6Zsp6KgIdY9ATy1J5vbnn39h8IDwui',1,12),(53,'abhishek@gmail.com','abhishek','Test','abhi@gmail.com','7045247498','',1,'2022-10-03T18:30:00.000Z','Admin','2022-10-05 16:26:08',NULL,NULL,'$2a$15$mhJ.6HI6sjubdELrAcVRI.sZJy/WhpgbPoebWxUkiy4a5aRgXXMf2',2,13),(54,'Priya1','Priyanka','Mane','priya5@gmail.com','7045247498','',1,'2022-10-03T18:30:00.000Z','Admin','2022-10-07 13:26:19',NULL,NULL,'$2a$15$ZJ8Wnr1M2uNzHm4.Uc42u.EkyIhGi6L86tzRa0qkwscLpPp8BTVdW',1,13);
/*!40000 ALTER TABLE `tbl_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu_master`
--

DROP TABLE IF EXISTS `tbl_menu_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu_master` (
  `MenuId` int unsigned NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(100) NOT NULL,
  `MenuDescription` varchar(250) NOT NULL,
  `PageLink` varchar(300) NOT NULL,
  `IsParent` bit(1) NOT NULL,
  `ParentId` int unsigned NOT NULL,
  `SequenceId` int unsigned NOT NULL,
  `CreatedBy` varchar(20) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `UpdatedBy` varchar(20) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`MenuId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu_master`
--

LOCK TABLES `tbl_menu_master` WRITE;
/*!40000 ALTER TABLE `tbl_menu_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menu_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu_role_mapping`
--

DROP TABLE IF EXISTS `tbl_menu_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu_role_mapping` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Role_Id` int unsigned NOT NULL,
  `MenuId` int unsigned NOT NULL,
  `CreatedBy` varchar(20) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `UpdatedBy` varchar(20) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu_role_mapping`
--

LOCK TABLES `tbl_menu_role_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_menu_role_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_menu_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_module_master`
--

DROP TABLE IF EXISTS `tbl_module_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_module_master` (
  `ModuleId` int unsigned NOT NULL AUTO_INCREMENT,
  `CourseId` int unsigned NOT NULL,
  `ModuleName` varchar(145) NOT NULL,
  `ModuleCode` varchar(100) NOT NULL,
  `ModuleDescription` varchar(1000) NOT NULL,
  `ImageFile` varchar(100) DEFAULT 'http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg',
  `CreatedBy` varchar(45) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `UpdatedBy` varchar(45) NOT NULL,
  `UpdatedOn` datetime NOT NULL,
  `isActive` int unsigned NOT NULL,
  `questionsId` varchar(145) DEFAULT NULL,
  `videoFile` varchar(145) DEFAULT 'http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',
  `ModuleCaption` varchar(255) DEFAULT NULL,
  `orgId` int DEFAULT NULL,
  `IsCompleted` int DEFAULT NULL,
  PRIMARY KEY (`ModuleId`),
  KEY `FK_tbl_Module_Master_1` (`CourseId`),
  CONSTRAINT `FK_tbl_Module_Master_1` FOREIGN KEY (`CourseId`) REFERENCES `tbl_course_master` (`courseId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_module_master`
--

LOCK TABLES `tbl_module_master` WRITE;
/*!40000 ALTER TABLE `tbl_module_master` DISABLE KEYS */;
INSERT INTO `tbl_module_master` VALUES (1,1,'Beer Tab','Beer','Beer','','4','2019-08-17 17:46:31','4','2019-08-17 17:46:31',0,'1,2','',NULL,NULL,NULL),(2,1,'Beer Tab','Beer','Beer','','4','2019-08-17 17:47:29','4','2019-08-17 17:47:29',1,'1,2','',NULL,NULL,NULL),(3,1,'Beer Tab','Beer','Beer','','4','2019-08-17 17:48:29','4','2019-08-17 17:48:29',1,'1,2','',NULL,NULL,NULL),(4,1,'Beer Tab','Beer','Bee','','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'1,2','',NULL,NULL,NULL),(5,7,'Mayur API Test','Test7','Mayur API Test','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',1,'1','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(6,22,'Rohan','Rohan','Rohan','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',1,'1','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(7,23,'hfhgvhv','hfhgvhv','jhvjh','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',1,'1','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(8,24,'Angular module','Angular module','Angular data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'0,1','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(9,25,'Angular','Angular','Angular','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',1,'0,1','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(10,26,'Module1','Module1','Module description Angular data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-07 00:00:00','7','2022-05-07 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(11,22,'Course Module','Module2','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','9','2022-05-07 00:00:00','9','2022-05-07 00:00:00',1,'','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(12,24,'Angular','Module12','Angular','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-08 00:00:00','7','2022-05-08 00:00:00',1,'','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(13,28,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-08 00:00:00','7','2022-05-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(14,46,'Module1','Module1','Digital description','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(15,46,'Module1','Module1','Digital description','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(16,46,'Module1','Module1','Digital env','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(17,46,'Module1','Module1','Digi','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(18,46,'Module1','Module1','Digi','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(19,46,'Module1','Module1','Digital','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(20,46,'Module1','Module1','Digital','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(21,46,'Module1','Module1','dIGITAL','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(22,46,'Module1','Module1','dIGITAL','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(23,46,'Module1','Module1','Digital','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(24,46,'Module1','Module1','Digital','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(25,46,'Module1','Module1','Digital','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(26,46,'Module1','Module1','Extension','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(27,46,'Module1','Module1','Extension','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(28,46,'Module1','Module1','Artificial','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(29,46,'Module1','Module1','Artificial','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(30,46,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(31,46,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(32,47,'Rohan','Rohan','Define','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(33,47,'Rohan','Rohan','Define','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(34,47,'Module1','Module1','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(35,48,'Module','Module','dasdsa','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(36,49,'Rohan','Rohan','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(37,50,'MAchine','MAchine','Module data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(38,51,'MAchine','MAchine','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(39,52,'Rohan','Rohan','Description','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-12 00:00:00','7','2022-05-12 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(40,53,'MAchine','MAchine','Datab','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(41,53,'Module1','Module1','Description','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(42,54,'Rohan','Rohan','Manee','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(43,24,'c09','Module1','Artificial','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(44,24,'c09','Module1','Artificial','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(45,23,'Machine','A234','user','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(46,55,'Rohan','Rohan','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'1,3','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(47,56,'Data Science','Data Science','Statistical Information','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'1,3','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(48,57,'Scala Module','Scala Module','Scala cod','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1,'4,4,4','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(49,58,'Rohan','Rohan','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-15 00:00:00','7','2022-05-15 00:00:00',1,'0,1','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(50,58,'A123','A123','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-15 00:00:00','7','2022-05-15 00:00:00',1,'1,3','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(51,59,'Database Module','Database Module','Database Module description','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-17 00:00:00','7','2022-05-17 00:00:00',1,'0,3','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(52,60,'Module1','Module1','Module description','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-05-22 00:00:00','7','2022-05-22 00:00:00',1,'3,4','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(53,61,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(54,61,'c09','c09','Moduel','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(55,61,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(56,62,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(57,62,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-06 00:00:00','7','2022-06-06 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(58,63,'Module1','Module1','Module display','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(59,63,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(60,63,'Artificial','Artificial','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(61,63,'Artificial12','Artificial12','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(62,64,'MAchine','MAchine','Machine','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(63,64,'module','module','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(64,64,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(65,64,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(66,65,'Rohan','Rohan','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(67,65,'Module1','Module1','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(68,67,'Module1','Module1','M1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(69,67,'Module1','Module1','M1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(70,67,'Module1','Module1','M1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,NULL,NULL),(71,68,'Rohan','Rohan','M2','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','courseMaterial/video/68/71/module_video.mp4',NULL,NULL,NULL),(72,69,'M1','M1','Desi','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','courseMaterial/video/69/72/module_video.mp4',NULL,NULL,NULL),(73,70,'Module1','Module1','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-08 00:00:00','7','2022-06-08 00:00:00',1,'0','courseMaterial/video/70/73/module_video.mp4',NULL,NULL,1),(74,70,'M1','M1','M1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',1,'0','courseMaterial/video/70/74/module_video.mp4',NULL,NULL,NULL),(75,71,'Rohan','Rohan','Dat','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',1,'0','courseMaterial/video/71/75/module_video.mp4',NULL,NULL,NULL),(76,71,'A123','A123','A','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',1,'0','courseMaterial/video/71/76/module_video.mp4',NULL,NULL,NULL),(77,72,'B','B','B','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',1,'0','courseMaterial/video/72/77/module_video77.mp4',NULL,NULL,NULL),(78,73,'Rohan','Rohan','M1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-09 00:00:00','7','2022-06-09 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/73/78/module_video78.mp4',NULL,NULL,1),(79,76,'Module1','Module1','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/76/79/module_video79.mp4',NULL,NULL,NULL),(80,77,'A123','A123','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/77/80/module_video80.mp4',NULL,NULL,NULL),(81,78,'Module','Module','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/78/81/module_video81.mp4',NULL,NULL,NULL),(82,79,'Priyanka','Priyanka','Priya','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/79/82/module_video82.mp4',NULL,NULL,NULL),(83,79,'Module1','Module1','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','7','2022-06-10 00:00:00','7','2022-06-10 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/79/83/module_video83.mp4',NULL,NULL,NULL),(84,83,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/83/84/module_video84.mp4',NULL,6,1),(85,83,'Artificial','Artificial','Artificial','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/83/85/module_video85.mp4',NULL,6,1),(86,83,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/83/86/module_video86.mp4',NULL,6,0),(87,84,'Mane','Mane','Mane','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-16 00:00:00','21','2022-06-16 00:00:00',1,'0','http://localhost:3001/courseMaterial/video/84/87/module_video87.mp4',NULL,6,0),(88,85,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/85/88/module_video88.mp4',NULL,6,0),(89,85,'Module1','Module1','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/85/89/module_video89.mp4',NULL,6,1),(90,85,'Machine','Machine','Machine','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'1,2,3','http://localhost:3001/courseMaterial/video/85/90/module_video90.mp4',NULL,6,0),(91,85,'A','A','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'1,2,3','http://localhost:3001/courseMaterial/video/85/91/module_video91.mp4',NULL,6,0),(92,87,'Aiml','Aiml','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'1,2,3','http://localhost:3001/courseMaterial/video/87/92/module_video92.mp4',NULL,6,0),(93,89,'Module','Module','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'4,5','http://localhost:3001/courseMaterial/video/89/93/module_video93.mp4',NULL,6,1),(94,92,'Data','Data','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-17 00:00:00','21','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/92/94/module_video94.mp4',NULL,6,NULL),(95,95,'Ai','Ai','AI','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','29','2022-06-17 00:00:00','29','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/95/95/module_video95.mp4',NULL,6,1),(96,95,'Angular Course','Angular Course','ANgular','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','29','2022-06-17 00:00:00','29','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/95/96/module_video96.mp4',NULL,6,NULL),(97,96,'Kumar','Kumar','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','31','2022-06-17 00:00:00','31','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/96/97/module_video97.mp4',NULL,6,NULL),(98,97,'Event','Event','Event','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','33','2022-06-17 00:00:00','33','2022-06-17 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/97/98/module_video98.mp4',NULL,6,NULL),(99,99,'Module1','Module1','Data1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','21','2022-06-21 00:00:00','21','2022-06-21 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/99/99/module_video99.mp4',NULL,6,0),(100,100,'Module1','Module1','Data','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','36','2022-06-23 00:00:00','36','2022-06-23 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/100/100/module_video100.mp4',NULL,6,0),(101,101,'Data Module','Data Module','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','38','2022-06-23 00:00:00','38','2022-06-23 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/101/101/module_video101.mp4',NULL,6,1),(102,101,'Module2','Module2','Data Science','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','38','2022-06-23 00:00:00','38','2022-06-23 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/101/102/module_video102.mp4',NULL,6,0),(103,101,'Module','Module','Module','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','40','2022-08-04 00:00:00','40','2022-08-04 00:00:00',1,'1,3','http://localhost:3001/courseMaterial/video/101/103/module_video103.mp4',NULL,6,0),(104,101,'Image 1','Image 1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','40','2022-08-04 00:00:00','40','2022-08-04 00:00:00',1,'1','http://localhost:3001/courseMaterial/video/101/104/module_video104.mp4',NULL,6,0),(105,101,'Artificial','Artificial','Artificial','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','40','2022-08-04 00:00:00','40','2022-08-04 00:00:00',1,'1,3','http://localhost:3001/courseMaterial/video/101/105/module_video105.mp4',NULL,6,0),(106,106,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','42','2022-08-08 00:00:00','42','2022-08-08 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/106/106/module_video106.mp4',NULL,11,0),(107,106,'Module1','Module1','Module2','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','42','2022-08-08 00:00:00','42','2022-08-08 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/106/107/module_video107.mp4',NULL,11,0),(108,107,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','46','2022-08-11 00:00:00','46','2022-08-11 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/107/108/module_video108.mp4',NULL,12,0),(109,107,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','46','2022-08-11 00:00:00','46','2022-08-11 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/107/109/module_video109.mp4',NULL,12,0),(110,107,'datacentri','datacentri','datacentri','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','46','2022-10-05 00:00:00','46','2022-10-05 00:00:00',1,'1,2','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,12,0),(111,107,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','46','2022-10-05 00:00:00','46','2022-10-05 00:00:00',1,'1,3','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,12,0),(112,107,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','46','2022-10-05 00:00:00','46','2022-10-05 00:00:00',1,'1,3','http://localhost:3001/courseMaterial/video/107/112/module_video112.mp4',NULL,12,0),(113,107,'Module','Module','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','46','2022-10-05 00:00:00','46','2022-10-05 00:00:00',1,'1,3','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,12,0),(114,101,'Module1','Module1','Module1','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','45','2022-10-05 00:00:00','45','2022-10-05 00:00:00',1,'1,2','http://localhoat:3001/courseMaterial/video/7/5/module_video.mp4',NULL,6,0),(115,101,'datacentric','datacentric','datacentric','http://localhoat:3001/courseMaterial/image/7/5/module_poster.jpg','45','2022-10-05 00:00:00','45','2022-10-05 00:00:00',1,'1,2','http://localhost:3001/courseMaterial/video/101/115/module_video115.mp4',NULL,6,0);
/*!40000 ALTER TABLE `tbl_module_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_module_question_mapping`
--

DROP TABLE IF EXISTS `tbl_module_question_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_module_question_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_id` int NOT NULL,
  `question_id` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_module_question_mapping`
--

LOCK TABLES `tbl_module_question_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_module_question_mapping` DISABLE KEYS */;
INSERT INTO `tbl_module_question_mapping` VALUES (1,94,1,1,21,'2022-06-17 11:31:35',21,'2022-06-17 11:31:35'),(2,94,2,1,21,'2022-06-17 11:31:35',21,'2022-06-17 11:31:35'),(3,95,1,1,29,'2022-06-17 16:42:45',29,'2022-06-17 16:42:45'),(4,95,2,1,29,'2022-06-17 16:42:45',29,'2022-06-17 16:42:45'),(5,96,1,1,29,'2022-06-17 16:43:31',29,'2022-06-17 16:43:31'),(6,96,2,1,29,'2022-06-17 16:43:31',29,'2022-06-17 16:43:31'),(7,97,1,1,31,'2022-06-17 16:54:42',31,'2022-06-17 16:54:42'),(8,97,2,1,31,'2022-06-17 16:54:42',31,'2022-06-17 16:54:42'),(9,98,1,1,33,'2022-06-17 17:08:04',33,'2022-06-17 17:08:04'),(10,98,2,1,33,'2022-06-17 17:08:04',33,'2022-06-17 17:08:04'),(11,99,1,1,21,'2022-06-21 08:09:45',21,'2022-06-21 08:09:45'),(12,99,2,1,21,'2022-06-21 08:09:45',21,'2022-06-21 08:09:45'),(13,100,1,1,36,'2022-06-23 14:37:46',36,'2022-06-23 14:37:46'),(14,100,2,1,36,'2022-06-23 14:37:46',36,'2022-06-23 14:37:46'),(15,101,1,1,38,'2022-06-23 15:21:23',38,'2022-06-23 15:21:23'),(16,101,2,1,38,'2022-06-23 15:21:23',38,'2022-06-23 15:21:23'),(17,102,1,1,38,'2022-06-23 15:22:48',38,'2022-06-23 15:22:48'),(18,102,2,1,38,'2022-06-23 15:22:48',38,'2022-06-23 15:22:48'),(19,103,1,1,40,'2022-08-04 10:59:34',40,'2022-08-04 10:59:34'),(20,103,3,1,40,'2022-08-04 10:59:34',40,'2022-08-04 10:59:34'),(21,104,1,1,40,'2022-08-04 11:18:49',40,'2022-08-04 11:18:49'),(22,105,1,1,40,'2022-08-04 11:44:44',40,'2022-08-04 11:44:44'),(23,105,3,1,40,'2022-08-04 11:44:44',40,'2022-08-04 11:44:44'),(24,106,1,1,42,'2022-08-07 19:04:10',42,'2022-08-07 19:04:10'),(25,106,2,1,42,'2022-08-07 19:04:10',42,'2022-08-07 19:04:10'),(26,107,1,1,42,'2022-08-08 12:36:55',42,'2022-08-08 12:36:55'),(27,107,2,1,42,'2022-08-08 12:36:55',42,'2022-08-08 12:36:55'),(28,108,1,1,46,'2022-08-11 04:10:00',46,'2022-08-11 04:10:00'),(29,108,2,1,46,'2022-08-11 04:10:00',46,'2022-08-11 04:10:00'),(30,109,1,1,46,'2022-08-11 04:10:48',46,'2022-08-11 04:10:48'),(31,109,2,1,46,'2022-08-11 04:10:48',46,'2022-08-11 04:10:48'),(32,110,1,1,46,'2022-10-05 16:35:21',46,'2022-10-05 16:35:21'),(33,110,2,1,46,'2022-10-05 16:35:21',46,'2022-10-05 16:35:21'),(34,111,1,1,46,'2022-10-05 16:36:20',46,'2022-10-05 16:36:20'),(35,111,3,1,46,'2022-10-05 16:36:20',46,'2022-10-05 16:36:20'),(36,112,1,1,46,'2022-10-05 16:40:12',46,'2022-10-05 16:40:12'),(37,112,3,1,46,'2022-10-05 16:40:12',46,'2022-10-05 16:40:12'),(38,113,1,1,46,'2022-10-05 16:41:43',46,'2022-10-05 16:41:43'),(39,113,3,1,46,'2022-10-05 16:41:43',46,'2022-10-05 16:41:43'),(40,114,1,1,45,'2022-10-05 17:03:23',45,'2022-10-05 17:03:23'),(41,114,2,1,45,'2022-10-05 17:03:23',45,'2022-10-05 17:03:23'),(42,115,1,1,45,'2022-10-05 17:06:48',45,'2022-10-05 17:06:48'),(43,115,2,1,45,'2022-10-05 17:06:48',45,'2022-10-05 17:06:48');
/*!40000 ALTER TABLE `tbl_module_question_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_org_master`
--

DROP TABLE IF EXISTS `tbl_org_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_org_master` (
  `OrgId` int unsigned NOT NULL AUTO_INCREMENT,
  `OrgName` varchar(255) DEFAULT NULL,
  `OrgDescription` varchar(255) DEFAULT NULL,
  `OrgLogo` varchar(255) DEFAULT NULL,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(255) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  `isActive` int DEFAULT NULL,
  PRIMARY KEY (`OrgId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_org_master`
--

LOCK TABLES `tbl_org_master` WRITE;
/*!40000 ALTER TABLE `tbl_org_master` DISABLE KEYS */;
INSERT INTO `tbl_org_master` VALUES (1,'Kamat3','Kamat','','4','2019-08-03 00:00:00','4','2019-08-03 00:00:00',1),(2,'Kamat2','Kamat Restaurant',NULL,'admin','2019-07-25 14:06:33','admin','2019-07-25 14:06:33',1),(3,'Kamat2','Kamat',NULL,'4','2019-08-03 02:49:03','4','2019-08-03 02:49:03',1),(4,'Kamat4','Kamat',NULL,'4','2019-08-03 03:15:56','4','2019-08-03 03:15:56',1),(5,'Kamat5','Kamat','','4','2019-08-03 06:31:01','4','2019-08-03 06:31:01',1),(6,'Bnpp','Banks','','9','2022-05-07 00:00:00','9','2022-05-07 00:00:00',1),(7,'Aiml','Cokin','','7','2022-05-13 00:00:00','7','2022-05-13 00:00:00',1),(8,'BNPP','Bank','',NULL,'2022-05-13 15:22:57','7','2022-05-13 15:22:57',1),(9,'MAc','Bank','','7','2022-05-17 00:00:00','7','2022-05-17 00:00:00',1),(10,'Bnpp Pariba','Bank','','7','2022-05-22 00:00:00','7','2022-05-22 00:00:00',1),(11,'Org1','Org','','7','2022-08-07 14:32:42','7','2022-08-07 14:32:42',1),(12,'New Org','Org data','','7','2022-08-11 01:30:04','7','2022-08-11 01:30:04',1),(13,'Assistotech','Assistotech','','7','2022-10-05 16:24:52','7','2022-10-05 16:24:52',1);
/*!40000 ALTER TABLE `tbl_org_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_question_master`
--

DROP TABLE IF EXISTS `tbl_question_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_question_master` (
  `QuestionId` int NOT NULL AUTO_INCREMENT,
  `QuestionDescription` varchar(255) DEFAULT NULL,
  `QuestionType` varchar(255) DEFAULT NULL,
  `MappingId` int DEFAULT NULL,
  `MappingType` varchar(255) DEFAULT NULL,
  `Marks` int DEFAULT NULL,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(255) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`QuestionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_question_master`
--

LOCK TABLES `tbl_question_master` WRITE;
/*!40000 ALTER TABLE `tbl_question_master` DISABLE KEYS */;
INSERT INTO `tbl_question_master` VALUES (1,'How to learn angular concept?','1',1,'1',5,'7','2022-06-17 00:00:00','7','2022-06-17 00:00:00'),(2,'How do you learn Javascript?','1',1,'1',5,'7','2022-06-17 00:00:00','7','2022-06-17 00:00:00'),(3,'What is Data Science?','1',1,'1',5,'38','2022-06-23 00:00:00','38','2022-06-23 00:00:00');
/*!40000 ALTER TABLE `tbl_question_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_question_type_master`
--

DROP TABLE IF EXISTS `tbl_question_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_question_type_master` (
  `typeId` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(145) NOT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_question_type_master`
--

LOCK TABLES `tbl_question_type_master` WRITE;
/*!40000 ALTER TABLE `tbl_question_type_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_question_type_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role_master`
--

DROP TABLE IF EXISTS `tbl_role_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_role_master` (
  `roleId` int unsigned NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) DEFAULT NULL,
  `roleDescription` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `updatedBy` int DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `isActive` int NOT NULL,
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role_master`
--

LOCK TABLES `tbl_role_master` WRITE;
/*!40000 ALTER TABLE `tbl_role_master` DISABLE KEYS */;
INSERT INTO `tbl_role_master` VALUES (1,'Event','EventManagement','9','2022-05-07 00:00:00',9,'2022-05-07 00:00:00',1),(2,'Manager','Manage','4','2019-08-02 00:00:00',4,'2019-08-02 00:00:00',0),(3,'Bartender','Bartender','4','2019-08-02 10:00:32',NULL,'2019-08-02 10:00:32',1),(4,'Waiter','Waiter Role','4','2019-08-11 00:00:00',4,'2019-08-11 00:00:00',1),(5,'Admin','Admin data','7','2022-05-07 09:05:18',7,'2022-05-07 09:05:18',1),(6,'Adminnn','Data','7','2022-05-22 16:53:42',7,'2022-05-22 16:53:42',1);
/*!40000 ALTER TABLE `tbl_role_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_course_mapping`
--

DROP TABLE IF EXISTS `tbl_user_course_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_course_mapping` (
  `userId` int NOT NULL,
  `courseId` int NOT NULL,
  `CreatedBy` varchar(255) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(255) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `completedModules` int DEFAULT NULL,
  `totalModules` int DEFAULT NULL,
  `assignedOn` datetime DEFAULT NULL,
  `completedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_course_mapping`
--

LOCK TABLES `tbl_user_course_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_user_course_mapping` DISABLE KEYS */;
INSERT INTO `tbl_user_course_mapping` VALUES (7,21,'7',NULL,'7',NULL,'1',0,1,NULL,NULL),(7,24,'7',NULL,'7',NULL,'1',0,1,NULL,NULL),(7,1,'7','2022-05-07 07:46:01',NULL,NULL,'Assigned',NULL,NULL,'2022-05-07 07:46:01',NULL),(9,26,'7','2022-05-07 09:04:35',NULL,NULL,'Assigned',NULL,NULL,'2022-05-07 09:04:35',NULL),(8,24,'7','2022-05-08 11:16:29',NULL,NULL,'Assigned',NULL,NULL,'2022-05-08 11:16:29',NULL),(10,51,'7','2022-05-13 12:35:42',NULL,NULL,'Assigned',NULL,NULL,'2022-05-13 12:35:42',NULL),(10,52,'7','2022-05-13 00:00:00','10','2022-05-13 00:00:00','Assigned',0,0,'2022-05-13 00:00:00','2022-05-13 00:00:00');
/*!40000 ALTER TABLE `tbl_user_course_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_module_mapping`
--

DROP TABLE IF EXISTS `tbl_user_module_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_module_mapping` (
  `userId` int NOT NULL,
  `courseId` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `moduleID` int NOT NULL,
  `totalQuestions` int NOT NULL,
  `completedQuestions` int NOT NULL,
  `score` int DEFAULT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `updatedBy` varchar(255) NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_module_mapping`
--

LOCK TABLES `tbl_user_module_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_user_module_mapping` DISABLE KEYS */;
INSERT INTO `tbl_user_module_mapping` VALUES (7,1,'Assigned',1,2,0,NULL,'7','2022-05-07 07:46:01','7','2022-05-07 07:46:01'),(8,24,'Assigned',8,2,0,NULL,'7','2022-05-08 11:16:29','8','2022-05-08 11:16:29'),(9,26,'Assigned',10,1,0,NULL,'7','2022-05-07 09:04:35','9','2022-05-07 09:04:35'),(10,51,'Assigned',38,1,0,NULL,'7','2022-05-13 12:35:42','10','2022-05-13 12:35:42');
/*!40000 ALTER TABLE `tbl_user_module_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_module_question_mapping`
--

DROP TABLE IF EXISTS `tbl_user_module_question_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_module_question_mapping` (
  `userId` int NOT NULL,
  `courseId` int NOT NULL,
  `moduleID` int NOT NULL,
  `moduleMappingId` int NOT NULL,
  `questionId` int NOT NULL,
  `selectedAnsId` int DEFAULT NULL,
  `isQuestionAttempted` int DEFAULT NULL,
  `validAnsId` int DEFAULT NULL,
  `marks` int NOT NULL,
  `CreatedBy` varchar(255) NOT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(255) NOT NULL,
  `UpdatedOn` datetime NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_module_question_mapping`
--

LOCK TABLES `tbl_user_module_question_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_user_module_question_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_module_question_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_org_mapping`
--

DROP TABLE IF EXISTS `tbl_user_org_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_org_mapping` (
  `UserId` int NOT NULL,
  `OrgId` int NOT NULL,
  `CreatedBy` varchar(255) NOT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` varchar(255) NOT NULL,
  `UpdatedOn` datetime NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_org_mapping`
--

LOCK TABLES `tbl_user_org_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_user_org_mapping` DISABLE KEYS */;
INSERT INTO `tbl_user_org_mapping` VALUES (20,6,'20','2022-06-15 16:41:27','20','2022-06-15 16:41:27'),(21,6,'21','2022-06-15 19:14:36','21','2022-06-15 19:14:36'),(23,6,'23','2022-06-16 04:17:22','23','2022-06-16 04:17:22'),(29,6,'29','2022-06-17 16:39:40','29','2022-06-17 16:39:40'),(30,6,'30','2022-06-17 16:49:13','30','2022-06-17 16:49:13'),(31,6,'31','2022-06-17 16:53:15','31','2022-06-17 16:53:15'),(32,6,'32','2022-06-17 16:55:53','32','2022-06-17 16:55:53'),(33,6,'33','2022-06-17 17:06:05','33','2022-06-17 17:06:05'),(34,6,'34','2022-06-17 17:11:24','34','2022-06-17 17:11:24'),(35,6,'35','2022-06-19 11:46:36','35','2022-06-19 11:46:36'),(36,6,'36','2022-06-23 14:35:34','36','2022-06-23 14:35:34'),(37,6,'37','2022-06-23 14:38:54','37','2022-06-23 14:38:54'),(38,6,'38','2022-06-23 15:15:04','38','2022-06-23 15:15:04'),(39,6,'39','2022-06-23 15:27:08','39','2022-06-23 15:27:08'),(40,6,'40','2022-07-24 17:26:53','40','2022-07-24 17:26:53'),(41,6,'41','2022-08-07 06:05:20','41','2022-08-07 06:05:20'),(42,11,'42','2022-08-07 14:34:34','42','2022-08-07 14:34:34'),(45,6,'45','2022-08-11 01:28:53','45','2022-08-11 01:28:53'),(46,12,'46','2022-08-11 01:31:05','46','2022-08-11 01:31:05');
/*!40000 ALTER TABLE `tbl_user_org_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_role_mapping`
--

DROP TABLE IF EXISTS `tbl_user_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_role_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `RoleId` int NOT NULL,
  `IsActive` int NOT NULL,
  `CreatedBy` int NOT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedBy` int NOT NULL,
  `UpdatedOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_role_mapping`
--

LOCK TABLES `tbl_user_role_mapping` WRITE;
/*!40000 ALTER TABLE `tbl_user_role_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_session`
--

DROP TABLE IF EXISTS `tbl_user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_session` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `UserId` bigint unsigned NOT NULL,
  `OrgId` int unsigned NOT NULL,
  `LoginStartTime` datetime NOT NULL,
  `LoginEndTime` datetime NOT NULL,
  `IpAddress` varchar(100) NOT NULL,
  `IsActive` bit(1) NOT NULL,
  `ApplicationId` int unsigned NOT NULL,
  `CreatedBy` varchar(20) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `UpdatedBy` varchar(20) DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_Tbl_User_Session_1` (`UserId`),
  CONSTRAINT `FK_Tbl_User_Session_1` FOREIGN KEY (`UserId`) REFERENCES `tbl_login` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_session`
--

LOCK TABLES `tbl_user_session` WRITE;
/*!40000 ALTER TABLE `tbl_user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_application_mapping`
--

DROP TABLE IF EXISTS `user_application_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_application_mapping` (
  `id` int NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `app_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_application_mapping`
--

LOCK TABLES `user_application_mapping` WRITE;
/*!40000 ALTER TABLE `user_application_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_application_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_session`
--

DROP TABLE IF EXISTS `user_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_session` (
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `app_id` int NOT NULL,
  `app_token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_logout` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session`
--

LOCK TABLES `user_session` WRITE;
/*!40000 ALTER TABLE `user_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'elearning'
--
/*!50003 DROP PROCEDURE IF EXISTS `Sp_DeleteModule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_DeleteModule`(
IN _ModuleId INT
)
BEGIN

update tbl_module_master set isActive=0 where ModuleId=_ModuleId;

select 'delete successful';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_delete_Course` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_delete_Course`(

IN _courseId INT

)
BEGIN


  update tbl_course_master set isActive=0 where CourseId=_courseId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_delete_Org` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_delete_Org`(

IN _OrgId INT

)
BEGIN

  update tbl_org_master set isActive=0 where OrgId=_OrgId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_delete_Role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_delete_Role`(

IN _role_id INT

)
BEGIN

  update tbl_role_master set IsActive=0 where roleId=_role_id;

  select 'Role deleted';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_delete_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_delete_user`(
IN _userId INT
)
BEGIN

  update tbl_login set IsActive=0 where userId=_userId;

  select 'delete success';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_category_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_category_by_id`(
  in _category_id int
)
BEGIN
  SELECT * FROM tbl_category_master where category_id = _category_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_course_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_course_by_id`(
  in CourseId int
)
BEGIN
  SELECT * FROM elearning.tbl_module_master where CourseId = CourseId and isActive=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_get_Users_Course_Mapping_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_get_Users_Course_Mapping_Details`()
BEGIN

select coursemaster.courseName,tbl.firstName from elearning.tbl_user_course_mapping as Course
join elearning.tbl_login as tbl on Course.userId=tbl.userId
join elearning.tbl_course_master as coursemaster on coursemaster.courseId=Course.courseId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_course` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_course`(
IN CourseName varchar(200),
IN CourseCode varchar(200),
IN CoursePosterImage varchar(300),
IN CourseDescription varchar(200),
IN CreatedBy INT,
IN CreatedOn DATE,
IN UpdatedBy INT,
IN UpdatedOn DATE,
IN categoryId INT,
IN _userId varchar(50)
)
BEGIN

insert into elearning.tbl_course_master (courseName,courseCode,coursePosterImage,courseDescription,createdBy,createdOn,updatedBy,updatedOn,categoryId,userId,isActive)

values(CourseName,CourseCode,CoursePosterImage,CourseDescription,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,categoryId,_userId,isActive);

SELECT * from elearning.tbl_course_master where courseId= Last_Insert_ID();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_module` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_module`(

IN CourseId INT,
IN ModuleName varchar(200),
IN ModuleCode varchar(300),
IN ModuleDescription varchar(200),
IN CreatedBy varchar(200),
IN CreatedOn DATE,
IN UpdatedBy varchar(200),
IN UpdatedOn DATE,
IN questions varchar (300),
IN orgId INT,
IN IsCompleted INT

)
BEGIN

insert into tbl_module_master (CourseId,ModuleName,ModuleCode,ModuleDescription,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,isActive,questionsId,orgId,IsCompleted)

values (CourseId,ModuleName,ModuleCode,ModuleDescription,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,1,questions,orgId,IsCompleted);

SELECT * from elearning.tbl_module_master where ModuleId= Last_Insert_ID();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_insert_questions_answer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_insert_questions_answer`(
questionDescription varchar(200),
questionType varchar(50),
mappingId INT,
mappingType varchar(50),
marks varchar(100),
createdBy varchar(100),
createdOn Date,
updatedBy varchar(100),
updatedOn Date
)
BEGIN

Insert into tbl_question_master
            (QuestionDescription,QuestionType,MappingId,MappingType,Marks,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn)
            values
            (questionDescription,questionType,mappingId,mappingType,marks,createdBy,createdOn,updatedBy,updatedOn);


select Last_Insert_ID() as questionid;






END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectAnswer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectAnswer`()
BEGIN

select * from tbl_answer_master;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectCategory`()
BEGIN

select * from elearning.tbl_category_master;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectCourse`(
)
BEGIN
SELECT t.courseId,t.courseName,t.courseDescription,t1.ModuleId, t1.ModuleName,t1.ModuleDescription,t1.ImageFile,t1.questionsId as questions,t1.videoFile,t.createdOn,t2.OrgId FROM tbl_course_master t
inner join tbl_module_master t1 on t.CourseId=t1.CourseId
left join tbl_user_org_mapping t2 on t1.OrgId=t2.OrgId
where t1.isActive=1 group by t.courseId,t.courseName,t.courseDescription,t1.ModuleId, t1.ModuleName,t1.ModuleDescription,t1.ImageFile,t1.questionsId ,t1.videoFile,t.createdOn,t2.OrgId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_selectCourse_By_User` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_selectCourse_By_User`(

IN _userId INT
)
BEGIN

SELECT t.courseId,t.courseName,t.courseDescription FROM tbl_course_master t
inner join tbl_user_course_mapping t2 on t2.CourseId=t.CourseId
where t.isActive=1 and t2.userId=_userId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectModule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectModule`()
BEGIN

SELECT * FROM tbl_module_master t where isActive=1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectOrg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectOrg`()
BEGIN

select * from tbl_org_master where isActive=1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_selectOrg_By_User` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_selectOrg_By_User`(
)
BEGIN
select * from elearning.tbl_user_org_mapping ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_selectQuest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_selectQuest`()
BEGIN

select * from tbl_question_master;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SelectQuestion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SelectQuestion`()
BEGIN

select ques.QuestionDescription,ques.Marks,ans.AnsDescription,ans.IsValid from tbl_question_master as ques
inner join tbl_answer_master ans on ques.QuestionId=ans.QuestionId;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectRole`()
BEGIN

select * from tbl_role_master where isActive=1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_SelectUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_SelectUser`()
BEGIN

select * from tbl_login where isActive=1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_selectUserData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_selectUserData`(
IN _username varchar(250)
)
BEGIN
select tbl.userId,tbl.userCode,tbl.firstName,tbl.lastName,tbl.email_Id,tbl.mobileNo,tbl.photoPath,tbl.isActive,tbl.joiningDate,tbl.createdBy,tbl.createdOn,tbl.updatedBy,tbl.updatedOn,tbl.password,tbl.roleId,tbluser.OrgId from elearning.tbl_login tbl
left join elearning.tbl_user_org_mapping  tbluser on tbl.userId=tbluser.UserId
where tbl.email_Id=_username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_select_course_On_Org` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_select_course_On_Org`(
IN OrgId INT
)
BEGIN
select * from elearning.tbl_course_master where courseId in ( select CourseId from elearning.tbl_module_master where orgId=OrgId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_select_module_On_Org` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_select_module_On_Org`(
IN OrgId INT
)
BEGIN
select * from elearning.tbl_module_master where orgId=OrgId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_select_user_On_Org` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_select_user_On_Org`(

)
BEGIN
select * from elearning.tbl_login tbl
inner join elearning.tbl_user_org_mapping user_org
 on tbl.userId=user_org.UserId ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_update_course` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_update_course`(

IN _courseId INT,
IN CourseName varchar(200),
IN CourseCode varchar(200),
IN CoursePosterImage varchar(300),
IN CourseDescription varchar(200),
IN CreatedBy INT,
IN CreatedOn DATE,
IN UpdatedBy INT,
IN UpdatedOn DATE,
IN categoryId INT
)
BEGIN

update tbl_course_master

       SET

       CourseName=CourseName,
       CourseCode=CourseCode,
       CoursePosterImage=CoursePosterImage,
       CourseDescription=CourseDescription,
       CreatedBy=CreatedBy,
       CreatedOn=CreatedOn,
       UpdatedBy=UpdatedBy,
       UpdatedOn=UpdatedOn,
       categoryId=categoryId

       where   CourseId=_courseId;

SELECT * from elearning.tbl_course_master where courseId= _courseId;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_update_Module` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_update_Module`(

IN _ModuleId INT,
IN CourseId INT,
IN ModuleName varchar(200),
IN ModuleCode varchar(300),
IN ModuleDescription varchar(200),
IN CreatedBy varchar(200),
IN CreatedOn DATE,
IN UpdatedBy varchar(200),
IN UpdatedOn DATE


)
BEGIN

update tbl_module_master

       SET

       CourseId=CourseId,
       ModuleName=ModuleName,
       ModuleCode=ModuleCode,
       ModuleDescription=ModuleDescription,
       CreatedBy=CreatedBy,
       CreatedOn=CreatedOn,
       UpdatedBy=UpdatedBy,
       UpdatedOn=UpdatedOn

       where ModuleId=_ModuleId;

select 'update successful';


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_update_Module_Completed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_update_Module_Completed`(
IN _ModuleId INT,
IN CourseId INT,
IN IsCompleted INT
)
BEGIN
update tbl_module_master
       SET
       IsCompleted=IsCompleted
       where ModuleId=_ModuleId and CourseId=CourseId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Update_Org` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Update_Org`(

IN _OrgId INT,
IN OrgName varchar(200),
IN OrgDescription varchar(200),
IN OrgLogo varchar(300),
IN CreatedBy varchar(100),
IN CreatedOn DATE,
IN UpdatedBy varchar(100),
IN UpdatedOn DATE

)
BEGIN


update tbl_org_master

       SET

       OrgName=OrgName,
       OrgDescription=OrgDescription,
       OrgLogo=OrgLogo,
       CreatedBy=CreatedBy,
       CreatedOn=CreatedOn,
       UpdatedBy=UpdatedBy,
       UpdatedOn=UpdatedOn

       where OrgId=_OrgId;

select 'update successful';


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_Update_Role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Update_Role`(
IN _role_id INT,
IN roleName varchar(300),
IN roleDescription varchar(300),
IN createdBy varchar(100),
IN createdOn DATE,
IN updatedBy varchar(200),
IN updatedOn DATE

)
BEGIN

update tbl_role_master

        set

        roleName=roleName,
        roleDescription=roleDescription,
        createdBy=createdBy,
        createdOn=createdOn,
        updatedBy=updatedBy,
        updatedOn=updatedOn

        where roleId=_role_id;


 select 'updated success';


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Update_User` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Update_User`(

IN _userId INT,
IN userCode varchar(100),
IN firstName varchar(400),
IN lastName varchar(400),
IN email_Id varchar(500),
IN mobileNo varchar(500),
IN photoPath varchar(500),
IN isActive INT,
IN joiningDate varchar(300),
IN createdBy INT,
IN createdOn DATETIME,
IN updatedBy varchar(300),
IN updatedOn DATETIME

)
BEGIN

 update tbl_login

        set
        userCode=userCode,
        firstName=firstName,
        lastName=lastName,
        email_Id=email_Id,
        mobileNo=mobileNo,
        photoPath=photoPath,
        isActive=isActive,
        joiningDate=joiningDate,
        createdBy=createdBy,
        createdOn=createdOn,
        updatedBy=updatedBy,
        updatedOn=updatedOn

        where userId=_userId;

select 'success';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_user_course_mapping` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_user_course_mapping`(
 userId INT,
   courseId varchar(255),
   CreatedBy varchar(255),
   CreatedOn Date,
   UpdatedBy varchar(255),
   UpdatedOn Date,
   status varchar(255),
   completedModules INT,
   totalModules INT,
   assignedOn date,
   completedOn date
   

)
BEGIN
    Insert into tbl_user_course_mapping
    (userId,courseId,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,status,completedModules,totalModules,assignedOn,completedOn)
    values
    (userId,courseId,CreatedBy,CreatedOn,UpdatedBy,UpdatedOn,status,completedModules,totalModules,assignedOn,completedOn);
    
    select Last_Insert_ID() as userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 20:30:08
