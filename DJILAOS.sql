-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: my_project_v.3
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `bill_id` bigint(10) NOT NULL,
  `user_id` bigint(10) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(45) DEFAULT NULL,
  `delivery` double DEFAULT NULL,
  `date` timestamp(5) NULL DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billdetail`
--

DROP TABLE IF EXISTS `billdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billdetail` (
  `billdetail_id` bigint(10) NOT NULL AUTO_INCREMENT,
  `bill_id` bigint(10) DEFAULT NULL,
  `product_id` bigint(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`billdetail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billdetail`
--

LOCK TABLES `billdetail` WRITE;
/*!40000 ALTER TABLE `billdetail` DISABLE KEYS */;
INSERT INTO `billdetail` VALUES (1001,1514020593034,1,399,2);
/*!40000 ALTER TABLE `billdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` bigint(10) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1001,'Spark'),(1002,'Mavic'),(1003,'Phantom'),(1004,'Inspire'),(1005,'Osmo');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` bigint(10) NOT NULL,
  `category_id` bigint(10) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_image` varchar(45) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1001,'DJI Spark Single','images/spark/spark_1.png',399,'Spark is a mini drone that feature all of Dji\'s signature technologies, allowing you to resize the moment whenever you feel inspired.'),(2,1001,'Spark Combo','images/spark/spark_combo.png',599,'Spark Combo is a mini set drone that feature all of Dji\'s signature technologies, allowing you to resize the moment whenever you feel inspired.'),(3,1002,'DJI Mavic Pro Single','images/mavic.png',999,'Push your creative boundaries by fiying Spark with your hands or mobile device.'),(4,1002,'Mavic Combo','images/mavic.png',1499,'Fly farther and faster with a remote controller, an extra battery, and accessories.'),(5,1003,'Phantom 4 Advanced','images/phantomAD.png',1199,'1-inch 20MP sensor, 30-min flight time, forward obstacle avoidance, smart features and more. Advanced Aerial Imaging Technology.'),(6,1003,'Phantom 3 STANDARD','images/phantomst.JPG',499,'Easy to Fly: An intelligent flight system automatically keeps your Phantom 3 Standard in the air and under your control.'),(7,1003,'Phantom 3 SE','images/phantomSE.png',599,'A 4K Drone for Everyone, 4K Camera | Vision Positioning | 25-min Max Flight Time | 4 km Video Transmission'),(8,1001,'Spark Combo1','images/spark/spark_combo.png',599,'Spark Combo is a mini set drone that feature all of Dji\'s signature technologies, allowing you to resize the moment whenever you feel inspired.'),(9,1001,'Spark Combo2','images/spark/spark_combo.png',599,'Spark Combo is a mini set drone that feature all of Dji\'s signature technologies, allowing you to resize the moment whenever you feel inspired.'),(12,12,'Prcoduct 12','Pimage',12,'productDescription'),(13,13,'Prcoduct 13','Pimage',13,'productDescription');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_pass` varchar(45) DEFAULT NULL,
  `user_role` bit(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1514102311038 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1514007766150,'doe','seng@mail.com','0a552abf945aad2831a917bd58bbdc70','\0\0'),(1514013089091,'KMV','doe@gmail.com','0a552abf945aad2831a917bd58bbdc70','\0\0'),(1514013093402,'KMV','doe@gmail.com','0a552abf945aad2831a917bd58bbdc70','\0\0'),(1514028589869,'KMV','duangkaison@gmail.com','0a552abf945aad2831a917bd58bbdc70','\0\0'),(1514102311037,'xayphone','xayphone99@gmail.com','0a552abf945aad2831a917bd58bbdc70','\0\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-24 21:18:44
