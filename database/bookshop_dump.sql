-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tblbook`
--

DROP TABLE IF EXISTS `tblbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbook` (
  `ID` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int NOT NULL,
  `createDate` datetime NOT NULL,
  `image` longtext NOT NULL,
  `categoryID` int NOT NULL,
  `typeID` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `categoryID` (`categoryID`),
  KEY `typeID` (`typeID`),
  CONSTRAINT `tblbook_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `tblcategory` (`ID`),
  CONSTRAINT `tblbook_ibfk_2` FOREIGN KEY (`typeID`) REFERENCES `tbltype` (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbook`
--

LOCK TABLES `tblbook` WRITE;
/*!40000 ALTER TABLE `tblbook` DISABLE KEYS */;
INSERT INTO `tblbook` VALUES ('1','Doraemon1','<p>Good</p>','Nobita',15000,'2021-01-01 00:00:00','https://anh.24h.com.vn/upload/2-2019/images/2019-05-25/1558802221-860-vi-dau-sieu-pham-hoat-hinh-he-doraemon-vua-quen-vua-la-unnamed--8--1558666578-width739height559.png',1,3,5),('2','Conan','','Shizuka',17500,'2021-01-02 00:00:00','https://popsimg.akamaized.net/api/v2/containers/file2/cms_topic/thumbnail_title-73a5ea4c49bb-1632451704498-1oZ3TDdX.png?v=0',1,3,0),('21850481-2ea8-4c72-be64-6437090d622e','Shin1','<p>ok</p>','Doremi',12500,'2021-11-24 16:07:35','https://i.imgur.com/zNS6Xev.jpg',2,2,17),('3','Harry Potter','Best of best','Chaien',99000,'2021-01-02 00:00:00','https://upload.wikimedia.org/wikipedia/vi/thumb/a/a7/HarryPotter5.jpg/270px-HarryPotter5.jpg',1,1,9);
/*!40000 ALTER TABLE `tblbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategory` (
  `ID` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
INSERT INTO `tblcategory` VALUES (1,'Horror'),(2,'Science');
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorder`
--

DROP TABLE IF EXISTS `tblorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorder` (
  `orderID` varchar(50) NOT NULL,
  `userID` varchar(50) DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `userID` (`userID`),
  CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbluser` (`userID`),
  CONSTRAINT `tblorder_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tbluser` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorder`
--

LOCK TABLES `tblorder` WRITE;
/*!40000 ALTER TABLE `tblorder` DISABLE KEYS */;
INSERT INTO `tblorder` VALUES ('0a62a313-08f2-4e63-b62b-2dc953d05433','1',99000,'2021-11-24 14:14:54'),('19ee2529-8f79-4098-9722-107a90824c2b','1',99000,'2021-11-24 14:27:26'),('2addd355-30a2-443b-b0a6-628f16383374','1',99000,'2021-11-24 14:22:22'),('3222f9a0-2fec-4873-bdd4-d65d6ebbc0b1','1',99000,'2021-11-24 14:20:07'),('45c8a27d-7b85-4194-b071-dc90fc472298','1',99000,'2021-11-24 14:26:24'),('5fc76bd0-24b4-4362-8828-896bd7cb601f','1',99000,'2021-11-24 14:15:58'),('8adcaf8c-cc32-4e7f-b469-da5ae5d1cf71','1',99000,'2021-11-24 14:24:55'),('903e3026-7e15-41a9-a8ef-d740da440796','1',99000,'2021-11-24 14:20:03'),('a5df38dc-4e31-47a4-b7bd-f81ecaecca06','1',99000,'2021-11-24 14:20:10'),('aaa39ba2-485d-47b7-89f8-9a4f2031fd9d','1',99000,'2021-11-24 14:12:56'),('b46b2666-dabb-493d-8848-88348c892674','1',99000,'2021-11-24 14:09:57'),('b4d25888-41a0-4e0b-8d8a-f363428dd505','1',99000,'2021-11-24 14:19:29'),('c9726c3d-c824-4376-9075-7d8f14886907','1',99000,'2021-11-24 14:11:39'),('ca2bb3e9-ff13-4623-b884-b215a0f4f14a','1',99000,'2021-11-24 14:25:33'),('d9969c9a-2333-41cc-a939-909d085c90fc','1',99000,'2021-11-24 14:29:26'),('dffba933-ed2a-433c-8939-9b7da5242fa9','1',198000,'2021-11-24 14:32:07');
/*!40000 ALTER TABLE `tblorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderdetail`
--

DROP TABLE IF EXISTS `tblorderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorderdetail` (
  `detailID` varchar(50) NOT NULL,
  `orderID` varchar(50) DEFAULT NULL,
  `bookID` varchar(50) DEFAULT NULL,
  `detailPrice` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`detailID`),
  KEY `bookID` (`bookID`),
  KEY `orderID` (`orderID`),
  CONSTRAINT `tblorderdetail_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `tblbook` (`ID`),
  CONSTRAINT `tblorderdetail_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `tblorder` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderdetail`
--

LOCK TABLES `tblorderdetail` WRITE;
/*!40000 ALTER TABLE `tblorderdetail` DISABLE KEYS */;
INSERT INTO `tblorderdetail` VALUES ('0144873b-b48e-4700-a4b4-9ac2eb4c044b','dffba933-ed2a-433c-8939-9b7da5242fa9','3',99000,2),('0c7df106-8c99-45be-a4ed-cbe2121bc20d','3222f9a0-2fec-4873-bdd4-d65d6ebbc0b1','3',99000,1),('3f7de6b7-3e9c-4eb7-aeb0-4624edcdbea0','45c8a27d-7b85-4194-b071-dc90fc472298','3',99000,1),('767aeea1-a0bf-4c53-8530-3ae91e25f16c','903e3026-7e15-41a9-a8ef-d740da440796','3',99000,1),('78a14afc-7809-4cbb-ba6f-9ee728ee076c','19ee2529-8f79-4098-9722-107a90824c2b','3',99000,1),('a4f3c03c-cc02-4ccf-ab60-3c9ec6f7de85','b4d25888-41a0-4e0b-8d8a-f363428dd505','3',99000,1),('ad32b64e-bb65-4247-a8f8-9c68067c38f4','d9969c9a-2333-41cc-a939-909d085c90fc','3',99000,1),('bb4b670e-c553-4c5a-93f2-b228b9e39e91','2addd355-30a2-443b-b0a6-628f16383374','3',99000,1),('c666b4ea-6b95-4071-9c5a-cd8630326f36','ca2bb3e9-ff13-4623-b884-b215a0f4f14a','3',99000,1),('dc32baf8-b0ad-4432-b56a-83113fdb8598','a5df38dc-4e31-47a4-b7bd-f81ecaecca06','3',99000,1),('fe4313d7-8104-4242-973d-fe7660040337','8adcaf8c-cc32-4e7f-b469-da5ae5d1cf71','3',99000,1);
/*!40000 ALTER TABLE `tblorderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrole` (
  `roleID` int NOT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
INSERT INTO `tblrole` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblshippinginfo`
--

DROP TABLE IF EXISTS `tblshippinginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblshippinginfo` (
  `orderID` varchar(50) NOT NULL,
  `fullName` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `note` text NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  UNIQUE KEY `orderID_UNIQUE` (`orderID`),
  CONSTRAINT `tblshippinginfo_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `tblorder` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblshippinginfo`
--

LOCK TABLES `tblshippinginfo` WRITE;
/*!40000 ALTER TABLE `tblshippinginfo` DISABLE KEYS */;
INSERT INTO `tblshippinginfo` VALUES ('d9969c9a-2333-41cc-a939-909d085c90fc','Test','Test','HCM','HCM','','0911111111'),('dffba933-ed2a-433c-8939-9b7da5242fa9','Test','Test','HCM','HCM','','0911111111');
/*!40000 ALTER TABLE `tblshippinginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltype`
--

DROP TABLE IF EXISTS `tbltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltype` (
  `typeID` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`typeID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltype`
--

LOCK TABLES `tbltype` WRITE;
/*!40000 ALTER TABLE `tbltype` DISABLE KEYS */;
INSERT INTO `tbltype` VALUES (3,'Rare'),(2,'Sale'),(1,'Used');
/*!40000 ALTER TABLE `tbltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `userID` varchar(50) NOT NULL,
  `userName` varchar(150) DEFAULT NULL,
  `userAddress` varchar(200) DEFAULT NULL,
  `userPhone` varchar(22) DEFAULT NULL,
  `password` varchar(22) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `userStatus` int DEFAULT NULL,
  `roleID` int DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `roleID` (`roleID`),
  CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `tblrole` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES ('1','test','test','0911111112','1','2021-01-01 00:00:00','1',1,2),('2','admin','admin','0922222222','1','2021-01-01 00:00:00','admin',1,1);
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 17:21:49
