-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: college
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adm_yrs_eq`
--

DROP TABLE IF EXISTS `adm_yrs_eq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_yrs_eq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_yrs_eq`
--

LOCK TABLES `adm_yrs_eq` WRITE;
/*!40000 ALTER TABLE `adm_yrs_eq` DISABLE KEYS */;
INSERT INTO `adm_yrs_eq` VALUES (1,2015,'running');
/*!40000 ALTER TABLE `adm_yrs_eq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_uname` varchar(300) NOT NULL,
  `admin_pass` varchar(300) NOT NULL,
  `admin_fname` varchar(400) NOT NULL,
  `admin_dept_id` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_dept_id` (`admin_dept_id`),
  UNIQUE KEY `admin_uname` (`admin_uname`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'q','q','Arvind Meniya',16);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_of_16`
--

DROP TABLE IF EXISTS `attendance_of_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_of_16` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enrolment` bigint(20) NOT NULL,
  `lecture_id` bigint(20) NOT NULL,
  `is_present` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_of_16`
--

LOCK TABLES `attendance_of_16` WRITE;
/*!40000 ALTER TABLE `attendance_of_16` DISABLE KEYS */;
INSERT INTO `attendance_of_16` VALUES (1,150430116001,1,0),(2,150430116002,1,0),(3,150430116003,1,0),(4,150430116004,1,0),(5,150430116005,1,0),(6,150430116006,1,0),(7,150430116007,1,0),(8,150430116008,1,0),(9,150430116009,1,0),(10,150430116010,1,0),(11,150430116011,1,0),(12,150430116012,1,0),(13,150430116013,1,0),(14,150430116014,1,0),(15,150430116015,1,0),(16,150430116016,1,0),(17,150430116017,1,0),(18,150430116019,1,0),(19,150430116020,1,0),(20,150430116021,1,0),(21,150430116022,1,0),(22,150430116023,1,0),(23,150430116024,1,0),(24,150430116026,1,0),(25,150430116027,1,0),(26,150430116028,1,0),(27,150430116029,1,0),(28,150430116030,1,0),(29,150430116031,1,0),(30,150430116032,1,0),(31,150430116033,1,0),(32,150430116034,1,0),(33,150430116035,1,0),(34,150430116036,1,0),(35,150430116038,1,0),(36,150430116040,1,0),(37,150430116041,1,1),(38,150430116042,1,0),(39,150430116043,1,0),(40,150430116044,1,0),(41,150430116045,1,0),(42,150430116046,1,0),(43,150430116047,1,0),(44,150430116048,1,0),(45,150430116049,1,0),(46,150430116050,1,0),(47,150430116051,1,0),(48,150430116052,1,0),(49,150430116053,1,0),(50,150430116054,1,0),(51,150430116055,1,0),(52,150430116056,1,0),(53,150430116057,1,0),(54,150430116058,1,0),(55,150430116059,1,0),(56,150430116060,1,0),(57,150430116061,1,0),(58,150430116062,1,0),(59,150430116063,1,0),(60,150430116064,1,0),(61,150430116065,1,0),(62,150430116066,1,1),(63,150430116068,1,1),(64,150430116069,1,1),(65,150430116070,1,1),(66,150430116071,1,1),(67,150430116073,1,0),(68,150430116074,1,0),(69,150430116075,1,0),(70,150430116077,2,1),(71,150430116078,2,1),(72,150430116079,2,1),(73,150430116080,2,1),(74,150430116081,2,1),(75,150430116082,2,1),(76,150430116083,2,1),(77,150430116084,2,1),(78,150430116085,2,1),(79,150430116086,2,1),(80,150430116087,2,1),(81,150430116088,2,1),(82,150430116089,2,1),(83,150430116090,2,1),(84,150430116093,2,1),(85,150430116094,2,1),(86,150430116095,2,1),(87,150430116096,2,1),(88,150430116097,2,1),(89,150430116098,2,1),(90,150430116099,2,1),(91,150430116100,2,1),(92,150430116101,2,1),(93,150430116103,2,1),(94,150430116104,2,1),(95,150430116106,2,1),(96,150430116107,2,1),(97,150430116108,2,1),(98,150430116109,2,1),(99,150430116110,2,1),(100,150430116111,2,1),(101,150430116113,2,1),(102,150430116115,2,1),(103,150430116116,2,1),(104,150430116117,2,1),(105,150430116118,2,1),(106,150430116119,2,1),(107,150430116120,2,1),(108,150430116121,2,1),(109,150430116122,2,1),(110,150430116123,2,1),(111,150430116124,2,1),(112,150430116125,2,1),(113,150430116126,2,1),(114,150430116028,3,0),(115,150430116029,3,0),(116,150430116030,3,0),(117,150430116031,3,0),(118,150430116032,3,0),(119,150430116033,3,0),(120,150430116034,3,0),(121,150430116035,3,1),(122,150430116036,3,1),(123,150430116038,3,1),(124,150430116040,3,0),(125,150430116042,3,0),(126,150430116043,3,0),(127,150430116044,3,0),(128,150430116045,3,0),(129,150430116046,3,0),(130,150430116047,3,0),(131,150430116048,3,0),(132,150430116049,3,0),(133,150430116077,4,1),(134,150430116078,4,1),(135,150430116079,4,1),(136,150430116080,4,1),(137,150430116081,4,1),(138,150430116082,4,1),(139,150430116083,4,1),(140,150430116084,4,1),(141,150430116085,4,1),(142,150430116086,4,1),(143,150430116087,4,0),(144,150430116088,4,1),(145,150430116089,4,1),(146,150430116090,4,1),(147,150430116093,4,1),(148,150430116094,4,1),(149,150430116095,4,1),(150,150430116096,4,1),(151,150430116097,4,1),(152,150430116098,4,1),(153,150430116099,4,1),(154,150430116100,4,1),(155,150430116101,4,1),(156,150430116103,4,1),(157,150430116104,4,1),(158,150430116106,4,1),(159,150430116107,4,1),(160,150430116108,4,1),(161,150430116109,4,1),(162,150430116110,4,1),(163,150430116111,4,1),(164,150430116113,4,1),(165,150430116115,4,1),(166,150430116116,4,1),(167,150430116117,4,1),(168,150430116118,4,1),(169,150430116119,4,1),(170,150430116120,4,1),(171,150430116121,4,1),(172,150430116122,4,1),(173,150430116123,4,0),(174,150430116124,4,1),(175,150430116125,4,1),(176,150430116126,4,0),(177,150430116050,5,1),(178,150430116051,5,1),(179,150430116052,5,1),(180,150430116053,5,1),(181,150430116054,5,1),(182,150430116055,5,1),(183,150430116056,5,1),(184,150430116057,5,0),(185,150430116058,5,1),(186,150430116059,5,1),(187,150430116060,5,0),(188,150430116061,5,1),(189,150430116062,5,0),(190,150430116063,5,1),(191,150430116064,5,1),(192,150430116065,5,0),(193,150430116066,5,1),(194,150430116068,5,1),(195,150430116069,5,1),(196,150430116070,5,1),(197,150430116071,5,1),(198,150430116073,5,1),(199,150430116074,5,1),(200,150430116075,5,1),(201,150430116076,5,1),(202,150430116077,5,1),(203,150430116078,5,1),(204,150430116079,5,1),(205,150430116080,5,1),(206,150430116081,5,1),(207,150430116001,6,1),(208,150430116002,6,1),(209,150430116003,6,1),(210,150430116004,6,1),(211,150430116005,6,1),(212,150430116006,6,1),(213,150430116007,6,1),(214,150430116008,6,1),(215,150430116009,6,1),(216,150430116010,6,1),(217,150430116011,6,1),(218,150430116012,6,1),(219,150430116013,6,1),(220,150430116014,6,1),(221,150430116015,6,1),(222,150430116016,6,1),(223,150430116017,6,1),(224,150430116019,6,0),(225,150430116020,6,1),(226,150430116021,6,1),(227,150430116022,6,1),(228,150430116023,6,1),(229,150430116024,6,1),(230,150430116026,6,1),(231,150430116027,6,1),(232,150430116028,6,1),(233,150430116029,6,1),(234,150430116030,6,1),(235,150430116031,6,1),(236,150430116032,6,1),(237,150430116033,6,1),(238,150430116034,6,1),(239,150430116035,6,1),(240,150430116036,6,1),(241,150430116038,6,1),(242,150430116040,6,1),(243,150430116041,6,1),(244,150430116042,6,1),(245,150430116043,6,1),(246,150430116044,6,1),(247,150430116045,6,1),(248,150430116046,6,1),(249,150430116047,6,1),(250,150430116048,6,1),(251,150430116049,6,1),(252,150430116050,6,1),(253,150430116051,6,1),(254,150430116052,6,1),(255,150430116053,6,1),(256,150430116054,6,1),(257,150430116055,6,1),(258,150430116056,6,1),(259,150430116057,6,1),(260,150430116058,6,1),(261,150430116059,6,1),(262,150430116060,6,1),(263,150430116061,6,1),(264,150430116062,6,1),(265,150430116063,6,1),(266,150430116064,6,1),(267,150430116065,6,1),(268,150430116066,6,1),(269,150430116068,6,1),(270,150430116069,6,1),(271,150430116070,6,1),(272,150430116071,6,1),(273,150430116073,6,1),(274,150430116074,6,1),(275,150430116075,6,1),(276,150430116076,6,0),(277,150430116001,8,1),(278,150430116002,8,0),(279,150430116003,8,1),(280,150430116004,8,1),(281,150430116005,8,0),(282,150430116006,8,1),(283,150430116007,8,1),(284,150430116008,8,1),(285,150430116009,8,1),(286,150430116010,8,1),(287,150430116011,8,1),(288,150430116012,8,1),(289,150430116013,8,0),(290,150430116014,8,1),(291,150430116015,8,1),(292,150430116016,8,1),(293,150430116017,8,0),(294,150430116019,8,1),(295,150430116020,8,1),(296,150430116021,8,1),(297,150430116022,8,1),(298,150430116023,8,1),(299,150430116024,8,1),(300,150430116026,8,1),(301,150430116027,8,1),(302,150430116028,8,1),(303,150430116029,8,1),(304,150430116030,8,1),(305,150430116031,8,1),(306,150430116032,8,1),(307,150430116033,8,0),(308,150430116034,8,1),(309,150430116035,8,1),(310,150430116036,8,1),(311,150430116038,8,1),(312,150430116040,8,1),(313,150430116041,8,1),(314,150430116042,8,0),(315,150430116043,8,0),(316,150430116044,8,1),(317,150430116045,8,1),(318,150430116046,8,1),(319,150430116047,8,1),(320,150430116048,8,1),(321,150430116049,8,1),(322,150430116050,8,1),(323,150430116051,8,1),(324,150430116052,8,1),(325,150430116053,8,1),(326,150430116054,8,1),(327,150430116055,8,1),(328,150430116056,8,1),(329,150430116057,8,1),(330,150430116058,8,1),(331,150430116059,8,1),(332,150430116060,8,1),(333,150430116061,8,1),(334,150430116062,8,1),(335,150430116063,8,1),(336,150430116064,8,1),(337,150430116065,8,1),(338,150430116066,8,1),(339,150430116068,8,1),(340,150430116069,8,1),(341,150430116070,8,1),(342,150430116071,8,1),(343,150430116073,8,1),(344,150430116074,8,1),(345,150430116075,8,1),(346,150430116076,8,1),(347,150430116001,10,1),(348,150430116002,10,1),(349,150430116003,10,1),(350,150430116004,10,1),(351,150430116005,10,1),(352,150430116006,10,1),(353,150430116007,10,1),(354,150430116008,10,1),(355,150430116009,10,1),(356,150430116010,10,1),(357,150430116011,10,1),(358,150430116012,10,1),(359,150430116013,10,1),(360,150430116014,10,1),(361,150430116015,10,1),(362,150430116016,10,1),(363,150430116017,10,1),(364,150430116019,10,1),(365,150430116020,10,1),(366,150430116021,10,1),(367,150430116022,10,1),(368,150430116023,10,1),(369,150430116024,10,1),(370,150430116026,10,1),(371,150430116027,10,1),(372,150430116028,10,1),(373,150430116029,10,1),(374,150430116030,10,1),(375,150430116031,10,1),(376,150430116032,10,1),(377,150430116033,10,1),(378,150430116034,10,1),(379,150430116035,10,1),(380,150430116036,10,1),(381,150430116038,10,1),(382,150430116040,10,1),(383,150430116041,10,1),(384,150430116042,10,1),(385,150430116043,10,1),(386,150430116044,10,1),(387,150430116045,10,1),(388,150430116046,10,1),(389,150430116047,10,1),(390,150430116048,10,1),(391,150430116049,10,1),(392,150430116050,10,1),(393,150430116051,10,1),(394,150430116052,10,1),(395,150430116053,10,1),(396,150430116054,10,1),(397,150430116055,10,1),(398,150430116056,10,1),(399,150430116057,10,1),(400,150430116058,10,1),(401,150430116059,10,1),(402,150430116060,10,1),(403,150430116061,10,1),(404,150430116062,10,1),(405,150430116063,10,1),(406,150430116064,10,1),(407,150430116065,10,1),(408,150430116066,10,1),(409,150430116068,10,1),(410,150430116069,10,1),(411,150430116070,10,1),(412,150430116071,10,1),(413,150430116073,10,1),(414,150430116074,10,1),(415,150430116075,10,1),(416,150430116076,10,1);
/*!40000 ALTER TABLE `attendance_of_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance_tb`
--

DROP TABLE IF EXISTS `attendance_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `att_tb_name` varchar(300) NOT NULL,
  `lecture_tb_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dept_id` (`dept_id`),
  CONSTRAINT `attendance_tb_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_tb`
--

LOCK TABLES `attendance_tb` WRITE;
/*!40000 ALTER TABLE `attendance_tb` DISABLE KEYS */;
INSERT INTO `attendance_tb` VALUES (1,16,'attendance_of_16','lecture_tb_16');
/*!40000 ALTER TABLE `attendance_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(500) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (16,'Information Technology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detain_stud`
--

DROP TABLE IF EXISTS `detain_stud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detain_stud` (
  `detain_id` int(11) NOT NULL AUTO_INCREMENT,
  `enrolment` bigint(20) NOT NULL,
  PRIMARY KEY (`detain_id`),
  KEY `enrolment` (`enrolment`),
  CONSTRAINT `detain_stud_ibfk_1` FOREIGN KEY (`enrolment`) REFERENCES `student` (`student_enrolment`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detain_stud`
--

LOCK TABLES `detain_stud` WRITE;
/*!40000 ALTER TABLE `detain_stud` DISABLE KEYS */;
/*!40000 ALTER TABLE `detain_stud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_fname` varchar(500) NOT NULL,
  `faculty_uname` varchar(200) NOT NULL,
  `faculty_pass` varchar(200) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (6,'Dinesh Vaghela','dinesh','abc',16),(7,'Shardul Agravat','shardul','abc',16),(8,'Arvind Meniya','arvind','abc',16);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_tb_16`
--

DROP TABLE IF EXISTS `lecture_tb_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecture_tb_16` (
  `lecture_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `subject_code` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `division` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`lecture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_tb_16`
--

LOCK TABLES `lecture_tb_16` WRITE;
/*!40000 ALTER TABLE `lecture_tb_16` DISABLE KEYS */;
INSERT INTO `lecture_tb_16` VALUES (1,'2018-06-08',7,2110003,'theory','A'),(2,'2018-06-08',6,2110005,'theory','A'),(3,'2018-06-09',7,2110003,'practical',''),(4,'2018-06-09',8,2110005,'theory','A'),(5,'2018-06-09',8,2110005,'practical',NULL),(6,'2018-06-09',7,2110014,'theory','A'),(7,'2018-06-13',7,2160707,'theory','A'),(8,'2018-06-13',7,2110002,'theory','A'),(9,'2018-06-15',7,2160707,'theory','B'),(10,'2018-06-15',7,2110002,'theory','B');
/*!40000 ALTER TABLE `lecture_tb_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem1_16_2015`
--

DROP TABLE IF EXISTS `sem1_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem1_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2110002_m` int(10) DEFAULT NULL,
  `2110002_r` int(10) DEFAULT NULL,
  `2110002_v` int(10) DEFAULT NULL,
  `2110003_m` int(10) DEFAULT NULL,
  `2110003_r` int(10) DEFAULT NULL,
  `2110003_v` int(10) DEFAULT NULL,
  `2110005_m` int(10) DEFAULT NULL,
  `2110005_r` int(10) DEFAULT NULL,
  `2110005_v` int(10) DEFAULT NULL,
  `2110007_m` int(10) DEFAULT NULL,
  `2110007_r` int(10) DEFAULT NULL,
  `2110007_v` int(10) DEFAULT NULL,
  `2110013_m` int(10) DEFAULT NULL,
  `2110013_r` int(10) DEFAULT NULL,
  `2110013_v` int(10) DEFAULT NULL,
  `2110014_m` int(10) DEFAULT NULL,
  `2110014_r` int(10) DEFAULT NULL,
  `2110014_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem1_16_2015`
--

LOCK TABLES `sem1_16_2015` WRITE;
/*!40000 ALTER TABLE `sem1_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem1_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem2_16_2015`
--

DROP TABLE IF EXISTS `sem2_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem2_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2110006_m` int(10) DEFAULT NULL,
  `2110006_r` int(10) DEFAULT NULL,
  `2110006_v` int(10) DEFAULT NULL,
  `2110011_m` int(10) DEFAULT NULL,
  `2110011_r` int(10) DEFAULT NULL,
  `2110011_v` int(10) DEFAULT NULL,
  `2110015_m` int(10) DEFAULT NULL,
  `2110015_r` int(10) DEFAULT NULL,
  `2110015_v` int(10) DEFAULT NULL,
  `2110016_m` int(10) DEFAULT NULL,
  `2110016_r` int(10) DEFAULT NULL,
  `2110016_v` int(10) DEFAULT NULL,
  `2110017_m` int(10) DEFAULT NULL,
  `2110017_r` int(10) DEFAULT NULL,
  `2110017_v` int(10) DEFAULT NULL,
  `2990001_m` int(10) DEFAULT NULL,
  `2990001_r` int(10) DEFAULT NULL,
  `2990001_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem2_16_2015`
--

LOCK TABLES `sem2_16_2015` WRITE;
/*!40000 ALTER TABLE `sem2_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem2_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem3_16_2015`
--

DROP TABLE IF EXISTS `sem3_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem3_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2130002_m` int(10) DEFAULT NULL,
  `2130002_r` int(10) DEFAULT NULL,
  `2130002_v` int(10) DEFAULT NULL,
  `2130004_m` int(10) DEFAULT NULL,
  `2130004_r` int(10) DEFAULT NULL,
  `2130004_v` int(10) DEFAULT NULL,
  `2130005_m` int(10) DEFAULT NULL,
  `2130005_r` int(10) DEFAULT NULL,
  `2130005_v` int(10) DEFAULT NULL,
  `2130702_m` int(10) DEFAULT NULL,
  `2130702_r` int(10) DEFAULT NULL,
  `2130702_v` int(10) DEFAULT NULL,
  `2130703_m` int(10) DEFAULT NULL,
  `2130703_r` int(10) DEFAULT NULL,
  `2130703_v` int(10) DEFAULT NULL,
  `2131004_m` int(10) DEFAULT NULL,
  `2131004_r` int(10) DEFAULT NULL,
  `2131004_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem3_16_2015`
--

LOCK TABLES `sem3_16_2015` WRITE;
/*!40000 ALTER TABLE `sem3_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem3_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem4_16_2015`
--

DROP TABLE IF EXISTS `sem4_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem4_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2140002_m` int(10) DEFAULT NULL,
  `2140002_r` int(10) DEFAULT NULL,
  `2140002_v` int(10) DEFAULT NULL,
  `2140702_m` int(10) DEFAULT NULL,
  `2140702_r` int(10) DEFAULT NULL,
  `2140702_v` int(10) DEFAULT NULL,
  `2140705_m` int(10) DEFAULT NULL,
  `2140705_r` int(10) DEFAULT NULL,
  `2140705_v` int(10) DEFAULT NULL,
  `2140706_m` int(10) DEFAULT NULL,
  `2140706_r` int(10) DEFAULT NULL,
  `2140706_v` int(10) DEFAULT NULL,
  `2140707_m` int(10) DEFAULT NULL,
  `2140707_r` int(10) DEFAULT NULL,
  `2140707_v` int(10) DEFAULT NULL,
  `2140709_m` int(10) DEFAULT NULL,
  `2140709_r` int(10) DEFAULT NULL,
  `2140709_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem4_16_2015`
--

LOCK TABLES `sem4_16_2015` WRITE;
/*!40000 ALTER TABLE `sem4_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem4_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem5_16_2015`
--

DROP TABLE IF EXISTS `sem5_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem5_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2150001_m` int(10) DEFAULT NULL,
  `2150001_r` int(10) DEFAULT NULL,
  `2150001_v` int(10) DEFAULT NULL,
  `2150002_m` int(10) DEFAULT NULL,
  `2150002_r` int(10) DEFAULT NULL,
  `2150002_v` int(10) DEFAULT NULL,
  `2150703_m` int(10) DEFAULT NULL,
  `2150703_r` int(10) DEFAULT NULL,
  `2150703_v` int(10) DEFAULT NULL,
  `2150704_m` int(10) DEFAULT NULL,
  `2150704_r` int(10) DEFAULT NULL,
  `2150704_v` int(10) DEFAULT NULL,
  `2150708_m` int(10) DEFAULT NULL,
  `2150708_r` int(10) DEFAULT NULL,
  `2150708_v` int(10) DEFAULT NULL,
  `2151603_m` int(10) DEFAULT NULL,
  `2151603_r` int(10) DEFAULT NULL,
  `2151603_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem5_16_2015`
--

LOCK TABLES `sem5_16_2015` WRITE;
/*!40000 ALTER TABLE `sem5_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem5_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem6_16_2015`
--

DROP TABLE IF EXISTS `sem6_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem6_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2160001_m` int(10) DEFAULT NULL,
  `2160001_r` int(10) DEFAULT NULL,
  `2160001_v` int(10) DEFAULT NULL,
  `2160701_m` int(10) DEFAULT NULL,
  `2160701_r` int(10) DEFAULT NULL,
  `2160701_v` int(10) DEFAULT NULL,
  `2160707_m` int(10) DEFAULT NULL,
  `2160707_r` int(10) DEFAULT NULL,
  `2160707_v` int(10) DEFAULT NULL,
  `2160708_m` int(10) DEFAULT NULL,
  `2160708_r` int(10) DEFAULT NULL,
  `2160708_v` int(10) DEFAULT NULL,
  `2160711_m` int(10) DEFAULT NULL,
  `2160711_r` int(10) DEFAULT NULL,
  `2160711_v` int(10) DEFAULT NULL,
  `2161603_m` int(10) DEFAULT NULL,
  `2161603_r` int(10) DEFAULT NULL,
  `2161603_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem6_16_2015`
--

LOCK TABLES `sem6_16_2015` WRITE;
/*!40000 ALTER TABLE `sem6_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem6_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem7_16_2015`
--

DROP TABLE IF EXISTS `sem7_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem7_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2170001_m` int(10) DEFAULT NULL,
  `2170001_r` int(10) DEFAULT NULL,
  `2170001_v` int(10) DEFAULT NULL,
  `2170709_m` int(10) DEFAULT NULL,
  `2170709_r` int(10) DEFAULT NULL,
  `2170709_v` int(10) DEFAULT NULL,
  `2170710_m` int(10) DEFAULT NULL,
  `2170710_r` int(10) DEFAULT NULL,
  `2170710_v` int(10) DEFAULT NULL,
  `2170715_m` int(10) DEFAULT NULL,
  `2170715_r` int(10) DEFAULT NULL,
  `2170715_v` int(10) DEFAULT NULL,
  `2171607_m` int(10) DEFAULT NULL,
  `2171607_r` int(10) DEFAULT NULL,
  `2171607_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem7_16_2015`
--

LOCK TABLES `sem7_16_2015` WRITE;
/*!40000 ALTER TABLE `sem7_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem7_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sem8_16_2015`
--

DROP TABLE IF EXISTS `sem8_16_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sem8_16_2015` (
  `enrolment` bigint(20) NOT NULL,
  `2180703_m` int(10) DEFAULT NULL,
  `2180703_r` int(10) DEFAULT NULL,
  `2180703_v` int(10) DEFAULT NULL,
  `2180711_m` int(10) DEFAULT NULL,
  `2180711_r` int(10) DEFAULT NULL,
  `2180711_v` int(10) DEFAULT NULL,
  `2181606_m` int(10) DEFAULT NULL,
  `2181606_r` int(10) DEFAULT NULL,
  `2181606_v` int(10) DEFAULT NULL,
  PRIMARY KEY (`enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sem8_16_2015`
--

LOCK TABLES `sem8_16_2015` WRITE;
/*!40000 ALTER TABLE `sem8_16_2015` DISABLE KEYS */;
/*!40000 ALTER TABLE `sem8_16_2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `student_enrolment` bigint(20) NOT NULL,
  `student_name` varchar(400) NOT NULL,
  `student_semester` int(11) NOT NULL,
  `student_dept_id` int(11) NOT NULL,
  `student_adm_yr` int(11) NOT NULL,
  `batch_year` int(10) NOT NULL,
  `student_division` varchar(1) NOT NULL,
  `student_batch` varchar(5) NOT NULL,
  PRIMARY KEY (`student_enrolment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (150430116001,'BAMBHANIYA LALJIBHAI RAMJIBHAI',1,16,2015,2015,'A','B1'),(150430116002,'BARAIYA PURVA MANOJBHAI',1,16,2015,2015,'A','B1'),(150430116003,'BARAIYA VIRAJ HARESHBHAI',1,16,2015,2015,'A','B1'),(150430116004,'BHALANI DIVYESH KISHORBHAI',1,16,2015,2015,'A','B1'),(150430116005,'BHALANI KESHAVIBEN KISHORBHAI',1,16,2015,2015,'A','B1'),(150430116006,'BHATT BANSARI ASHOKBHAI',1,16,2015,2015,'A','B1'),(150430116007,'BHAYANI MEET MAHENDRABHAI',1,16,2015,2015,'A','B1'),(150430116008,'BHIMANI NIRMAL PARBATBHAI',1,16,2015,2015,'A','B1'),(150430116009,'BHIMANI SATYAMKUMAR MANISHBHAI',1,16,2015,2015,'A','B1'),(150430116010,'BHOYA ANKITAKUMARI',1,16,2015,2015,'A','B1'),(150430116011,'BRAHMBHATT AAKASHKUMAR',1,16,2015,2015,'A','B1'),(150430116012,'CHAUDHARI MAYURIKUMARI PRAVINBHAI',1,16,2015,2015,'A','B1'),(150430116013,'CHAUDHARI RAHULKUMAR KANUBHAI',1,16,2015,2015,'A','B1'),(150430116014,'CHAUDHARI TEJAS NANSINGBHAI',1,16,2015,2015,'A','B1'),(150430116015,'CHAUHAN GOPALBHAI',1,16,2015,2015,'A','B1'),(150430116016,'CHAVDA DARSHITA CHETANKUMAR',1,16,2015,2015,'A','B1'),(150430116017,'CHUDASAMA PARTH KIRITBHAI',1,16,2015,2015,'A','B1'),(150430116019,'DANGAR JANAKKUMAR BHUPATBHAI',1,16,2015,2015,'A','B1'),(150430116020,'DELVADIYA VISHALBHAI MANSUKHBHAI',1,16,2015,2015,'A','B1'),(150430116021,'DESAI BHARGAVBHAI BABUBHAI',1,16,2015,2015,'A','B1'),(150430116022,'DESAI JAYESH CHHAGANBHAI',1,16,2015,2015,'A','B1'),(150430116023,'DESAI MOHIT MADHUBHAI',1,16,2015,2015,'A','B1'),(150430116024,'DEVANI PARTH GORDHANBHAI',1,16,2015,2015,'A','B1'),(150430116026,'DODIYA VILASBEN HAJABHAI',1,16,2015,2015,'A','B1'),(150430116027,'DONDA ANKITKUMAR VRAJLAL',1,16,2015,2015,'A','B1'),(150430116028,'GAJIPARA KISHAN PRAKASHBHAI',1,16,2015,2015,'A','B2'),(150430116029,'GAMIT AVINASHBHAI SANMUKHBHAI',1,16,2015,2015,'A','B2'),(150430116030,'GAMIT KRUNAL RAJESHBHAI',1,16,2015,2015,'A','B2'),(150430116031,'GAMIT TRUPTIBEN TARSINGBHAI',1,16,2015,2015,'A','B2'),(150430116032,'GANVIT PARIMALKUMAR ARVINDBHAI',1,16,2015,2015,'A','B2'),(150430116033,'GAUSVAMI TULSIBEN DILIPGIRI',1,16,2015,2015,'A','B2'),(150430116034,'GEDIYA SHANTIKUMAR BHANABHAI',1,16,2015,2015,'A','B2'),(150430116035,'GHORI ASHISHKUMAR',1,16,2015,2015,'A','B2'),(150430116036,'GOHEL POOJABEN RAJUBHAI',1,16,2015,2015,'A','B2'),(150430116038,'GOYANI ATULBHAI KALUBHAI',1,16,2015,2015,'A','B2'),(150430116040,'HARKHANI KEVALKUMAR BHARATBHAI',1,16,2015,2015,'A','B2'),(150430116041,'HIMANSHU',1,16,2015,2015,'A','B1'),(150430116042,'ITALIYA MIRALBAHEN MOHANBHAI',1,16,2015,2015,'A','B2'),(150430116043,'JANI KAUSHA PARESHBHAI',1,16,2015,2015,'A','B2'),(150430116044,'JANI SHREYA KAMLESHBHAI',1,16,2015,2015,'A','B2'),(150430116045,'JADEJA JAYDEEPSINH PRADHYUMANSINH',1,16,2015,2015,'A','B2'),(150430116046,'JAYDEEP DODIYA',1,16,2015,2015,'A','B2'),(150430116047,'JIVANI RAVI TULASHIBHAI',1,16,2015,2015,'A','B2'),(150430116048,'JOSHI MADHAVI GAURISHANKAR',1,16,2015,2015,'A','B2'),(150430116049,'KADAM JAYKUMAR SITARAM',1,16,2015,2015,'A','B2'),(150430116050,'KAKADIYA MOHIT NARENDRABHAI',1,16,2015,2015,'A','B3'),(150430116051,'KALTHIYA AVANI BABUBHAI',1,16,2015,2015,'A','B3'),(150430116052,'KATAKIYA JAYDEEP SHANTILAL',1,16,2015,2015,'A','B3'),(150430116053,'KATHROTIYA MAULIK CHATURBHAI',1,16,2015,2015,'A','B3'),(150430116054,'KATRODIYA LEMINBHAI GHANSHYAMBHAI',1,16,2015,2015,'A','B3'),(150430116055,'KATRODIYA MEHULKUMAR RAMESHBHAI',1,16,2015,2015,'A','B3'),(150430116056,'KATRODIYA NIKUNJKUMAR SAVAJIBHAI',1,16,2015,2015,'A','B3'),(150430116057,'KIKANI RAVIKUMAR RATILAL',1,16,2015,2015,'A','B3'),(150430116058,'KOTHARI AKSHAY LAXMANBHAI',1,16,2015,2015,'A','B3'),(150430116059,'LAKUM JIGNESHKUMAR VINUBHAI',1,16,2015,2015,'A','B3'),(150430116060,'LANGALIYA RUSHALI PARESHBHAI',1,16,2015,2015,'A','B3'),(150430116061,'LATHIYA JAYDEEP BHARATBHAI',1,16,2015,2015,'A','B3'),(150430116062,'MAIYANI SAHIL MUKESHBHAI',1,16,2015,2015,'A','B3'),(150430116063,'MAKRUBIYA UJJAVALKUMAR MANSUKHBHAI',1,16,2015,2015,'A','B3'),(150430116064,'MAKWANA AJAYKUMAR KALUBHAI',1,16,2015,2015,'A','B3'),(150430116065,'MAKWANA KISHANKUMAR DUDABHAI',1,16,2015,2015,'A','B3'),(150430116066,'MAKWANA PARASBEN',1,16,2015,2015,'A','B3'),(150430116068,'MAYUR MOHNANI',1,16,2015,2015,'A','B3'),(150430116069,'MEETHAPARA BUDHESHBHAI DILEEPBHAI',1,16,2015,2015,'A','B3'),(150430116070,'MENDPARA DIXITA DINESHBHAI',1,16,2015,2015,'A','B3'),(150430116071,'MER MOHIT BHUPATBHAI',1,16,2015,2015,'A','B3'),(150430116073,'NAKRANI UTKARSH MAHESHBHAI',1,16,2015,2015,'A','B3'),(150430116074,'NAYANI MILANKUMAR GHANSHYAMBHAI',1,16,2015,2015,'A','B3'),(150430116075,'PADIYA AMI SHAILESHBHAI',1,16,2015,2015,'A','B3'),(150430116076,'PAGHADAR BANSIKUMAR HARASUKHBHAI',1,16,2015,2015,'A','B3'),(150430116077,'PANCHANI VIRAL JAYSUKHBHAI',1,16,2015,2015,'B','B3'),(150430116078,'PANDITA AASTHA SATISH',1,16,2015,2015,'B','B3'),(150430116079,'PANDYA KRUPALIBEN DILIPBHAI',1,16,2015,2015,'B','B3'),(150430116080,'PANSURIYA PRANJALBAHEN PRAVINBHAI',1,16,2015,2015,'B','B3'),(150430116081,'PARMAR JIGNASHA BHARATBHAI',1,16,2015,2015,'B','B3'),(150430116082,'PARMAR SANJAY MUKESHBHAI',1,16,2015,2015,'B','B4'),(150430116083,'PATEL BHAVIK HARSHADBHAI',1,16,2015,2015,'B','B4'),(150430116084,'PATEL BHAVINKUMAR RAJESHBHAI',1,16,2015,2015,'B','B4'),(150430116085,'PATEL DHARMINBHAI RANJITBHAI',1,16,2015,2015,'B','B4'),(150430116086,'PATEL JINALKUMARI SATISHBHAI',1,16,2015,2015,'B','B4'),(150430116087,'PATEL JONISHKUMAR',1,16,2015,2015,'B','B4'),(150430116088,'PATEL RAHULBHAI VIPULBHAI',1,16,2015,2015,'B','B4'),(150430116089,'PATEL SAGARKUMAR RAGHAVBHAI',1,16,2015,2015,'B','B4'),(150430116090,'PATEL SHREYA VINODBHAI',1,16,2015,2015,'B','B4'),(150430116093,'PIYUSH MAHAJAN',1,16,2015,2015,'B','B4'),(150430116094,'PRAJAPATI NAMRATABEN ISHVARBHAI',1,16,2015,2015,'B','B4'),(150430116095,'PUROHIT KRUPAL ATULBHAI',1,16,2015,2015,'B','B4'),(150430116096,'RABADIYA JAYDEEPKUMAR JAMANBHAI',1,16,2015,2015,'B','B4'),(150430116097,'RATHOD RAHUL MUKESHBHAI',1,16,2015,2015,'B','B4'),(150430116098,'ROJASARA RUSHIN RAJESHBHAI',1,16,2015,2015,'B','B4'),(150430116099,'SABHADIYA VIVEKKUMAR BHARATBHAI',1,16,2015,2015,'B','B4'),(150430116100,'SANGANI MOHIT ASHVINBHAI',1,16,2015,2015,'B','B4'),(150430116101,'SARKHELIYA PARTH BHUPATBHAI',1,16,2015,2015,'B','B4'),(150430116103,'SAVALIYA HARDIKKUMAR VINUBHAI',1,16,2015,2015,'B','B4'),(150430116104,'SAVANI AKASHKUMAR KURAJIBHAI',1,16,2015,2015,'B','B4'),(150430116106,'SHELADIYA RINABEN RAJESHBHAI',1,16,2015,2015,'B','B4'),(150430116107,'SHUBHAM KUMAR PANDEY',1,16,2015,2015,'B','B4'),(150430116108,'SOLANKI JEENABHAI BALUBHAI',1,16,2015,2015,'B','B4'),(150430116109,'SOLANKI LALABHAI NARANBHAI',1,16,2015,2015,'B','B4'),(150430116110,'SOLANKI MAHESHKUMAR BABUBHAI',1,16,2015,2015,'B','B4'),(150430116111,'SOLANKI PARESHBHAI VELJIBHAI',1,16,2015,2015,'B','B4'),(150430116113,'SORATHIYA VISHALKUMAR VASANTBHAI',1,16,2015,2015,'B','B4'),(150430116115,'TAKOLIYA AVANI ANILBHAI',1,16,2015,2015,'B','B4'),(150430116116,'TANK AMITKUMAR HARESHBHAI',1,16,2015,2015,'B','B4'),(150430116117,'THUMMAR JIGARKUMAR PRAVINBHAI',1,16,2015,2015,'B','B4'),(150430116118,'TIWARI ROHIT SHASHIKANT',1,16,2015,2015,'B','B4'),(150430116119,'TRIVEDI MEGHANA',1,16,2015,2015,'B','B4'),(150430116120,'VADHEL PARTH PRADIPBHAI',1,16,2015,2015,'B','B4'),(150430116121,'VADHER MAULIKKUMAR UKABHAI',1,16,2015,2015,'B','B4'),(150430116122,'VAGHANI HARDIK RAMESHBHAI',1,16,2015,2015,'B','B4'),(150430116123,'VAGHELA NITABEN PREMJIBHAI',1,16,2015,2015,'B','B4'),(150430116124,'VIRADIYA MEET ASHVINBHAI',1,16,2015,2015,'B','B4'),(150430116125,'VIRADIYA MILAN HIMMATBHAI',1,16,2015,2015,'B','B4'),(150430116126,'YADAV BHAVIKKUMAR JAYESHBHAI',1,16,2015,2015,'B','B4');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_fac_allocation`
--

DROP TABLE IF EXISTS `sub_fac_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_fac_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_fac_allocation`
--

LOCK TABLES `sub_fac_allocation` WRITE;
/*!40000 ALTER TABLE `sub_fac_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_fac_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subject_code` int(20) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `semester` int(10) NOT NULL,
  `dept_id` int(10) NOT NULL,
  PRIMARY KEY (`subject_code`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (2110002,'Communication Skills','CS',1,16),(2110003,'Computer Programming and Utilization','CPU',1,16),(2110005,'Elements of Electrical Engineering','EEE',1,16),(2110006,'Elements of Mechanical Engineering','EME',2,16),(2110007,'Environmental Studies','ES',1,16),(2110011,'Physics','Physics',2,16),(2110013,'Engineering Graphics','EG',1,16),(2110014,'Calculus','Maths - I',1,16),(2110015,'Vector Calculus and Linear Algebra','Maths - II',2,16),(2110016,'Basic Electronics','BE',2,16),(2110017,'Electrical and Electronics Workshop','EEW',2,16),(2130002,'Advanced Engineering Mathematics','Maths - III',3,16),(2130004,'Engineering Economics and Management','EEM',3,16),(2130005,'Design Engineering - I A','DE - I A',3,16),(2130702,'Data Structure','DS',3,16),(2130703,'Database Management Systems','DBMS',3,16),(2131004,'Digital Electronics','DE',3,16),(2140002,'Design Engineering - I B','DE - I B',4,16),(2140702,'Operating System','OS',4,16),(2140705,'Object Oriented Programming With C++','OOPC',4,16),(2140706,'Numerical and Statistical Methods for Computer Engineering','Maths - IV',4,16),(2140707,'Computer Organization','CO',4,16),(2140709,'Computer Networks','CN',4,16),(2150001,'Design Engineering - II A','DE - II A',5,16),(2150002,'Institute Elective - Cyber Security','CS',5,16),(2150703,'Analysis and Design of Algorithms','ADA',5,16),(2150704,'Object Oriented Programming using JAVA','OOPJ',5,16),(2150708,'System Programming','SP',5,16),(2151603,'Computer Graphics','CG',5,16),(2160001,'Design Engineering - II B','DE - II B',6,16),(2160701,'Software Engineering','SE',6,16),(2160707,'Advanced Java','AJAVA',6,16),(2160708,'Web Technology','WT',6,16),(2160711,'Net Technology','.NET',6,16),(2161603,'Data Compression and Data Retrieval','DCDR',6,16),(2170001,'Project','Project',7,16),(2170709,'Information and Network Security','INS',7,16),(2170710,'Mobile Computing and Wireless Communication','MCWC',7,16),(2170715,'Data Mining and Business Intelligence','DMBI',7,16),(2171607,'Big Data Analytics','BDA',7,16),(2180703,'Artificial Intelligence','AI',8,16),(2180711,'Python Programming','PP',8,16),(2181606,'Project (Phase-II)','Project',8,16),(2990001,'Contributors Personality Development','CPD',2,16);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'college'
--

--
-- Dumping routines for database 'college'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16 23:52:52