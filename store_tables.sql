-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: delivery_app
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tbl_store_categories`
--

DROP TABLE IF EXISTS `tbl_store_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_categories`
--

LOCK TABLES `tbl_store_categories` WRITE;
/*!40000 ALTER TABLE `tbl_store_categories` DISABLE KEYS */;
INSERT INTO `tbl_store_categories` VALUES (5,'Bread','1602802016826.jpg',1,'2020-10-16 04:16:55','2020-10-16 04:19:26');
/*!40000 ALTER TABLE `tbl_store_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_earnings`
--

DROP TABLE IF EXISTS `tbl_store_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_earnings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_order_id` int NOT NULL,
  `store_id` int NOT NULL,
  `admin_charge_amount` float(16,2) NOT NULL,
  `owners_amount` float(16,2) NOT NULL,
  `total_amount` float(16,2) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `payment_status` tinyint NOT NULL DEFAULT '0' COMMENT '0=>pending, 1=>Paid',
  `payment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_earnings`
--

LOCK TABLES `tbl_store_earnings` WRITE;
/*!40000 ALTER TABLE `tbl_store_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_order_details`
--

DROP TABLE IF EXISTS `tbl_store_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_order_id` int NOT NULL,
  `store_product_id` int NOT NULL,
  `product_price` float(16,2) NOT NULL,
  `extra_note` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `product_quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_order_details`
--

LOCK TABLES `tbl_store_order_details` WRITE;
/*!40000 ALTER TABLE `tbl_store_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_order_item_details`
--

DROP TABLE IF EXISTS `tbl_store_order_item_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_order_item_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_order_details_id` int NOT NULL,
  `store_product_id` int NOT NULL,
  `is_addon` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_order_item_details`
--

LOCK TABLES `tbl_store_order_item_details` WRITE;
/*!40000 ALTER TABLE `tbl_store_order_item_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_order_item_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_orders`
--

DROP TABLE IF EXISTS `tbl_store_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_id` int NOT NULL,
  `user_id` int NOT NULL,
  `store_id` int NOT NULL,
  `total_price` float(16,2) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `tip_price` float(16,2) NOT NULL,
  `discount_price` float(16,2) NOT NULL,
  `wallet_price` float(16,2) NOT NULL DEFAULT '0.00',
  `grand_total` float(16,2) NOT NULL DEFAULT '0.00',
  `payment_type` tinyint NOT NULL DEFAULT '1' COMMENT '1=> COD, 2=>Stripe, 3=>Paypal',
  `payment_status` tinyint NOT NULL DEFAULT '0' COMMENT '0=>pending, 1=>success, 2=>failed',
  `order_status` tinyint NOT NULL DEFAULT '1' COMMENT '1=>received, 2=>accepted, 3=>declined, 4=>on way, 5=>delivered',
  `signature` varchar(255) DEFAULT NULL,
  `isReviewed` tinyint NOT NULL DEFAULT '0',
  `refund_amount` float(8,2) NOT NULL DEFAULT '0.00',
  `promo_code` varchar(30) NOT NULL,
  `admin_charge` float(8,2) NOT NULL DEFAULT '20.00',
  `extra_note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_orders`
--

LOCK TABLES `tbl_store_orders` WRITE;
/*!40000 ALTER TABLE `tbl_store_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_owner`
--

DROP TABLE IF EXISTS `tbl_store_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_owner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `city_id` int NOT NULL,
  `state_id` int NOT NULL,
  `country_id` int NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_owner`
--

LOCK TABLES `tbl_store_owner` WRITE;
/*!40000 ALTER TABLE `tbl_store_owner` DISABLE KEYS */;
INSERT INTO `tbl_store_owner` VALUES (3,'Mike','Bird','3216549870','TestUsser%40test.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,1,'2020-10-16 02:53:09','2020-10-16 03:13:58',2,2,1,'H3H 1C2','7980+Ave.+Stuart'),(4,'Rossy','Sarpanch','9874563210','Rossy%40test.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,1,'2020-10-16 03:17:23','2020-10-17 06:27:04',2,2,1,'H2H 1C5','1537+Avenue+Summerhill');
/*!40000 ALTER TABLE `tbl_store_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_store_subcategories`
--

DROP TABLE IF EXISTS `tbl_store_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_store_subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1=>veg, 2=>non-veg',
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `discount_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=>flat amount, 1=>percentage',
  `discount` float(16,2) NOT NULL,
  `price` float(16,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_store_subcategories`
--

LOCK TABLES `tbl_store_subcategories` WRITE;
/*!40000 ALTER TABLE `tbl_store_subcategories` DISABLE KEYS */;
INSERT INTO `tbl_store_subcategories` VALUES (12,5,11,'Piiza+Base+%28Medium%29',1,'Pre+Baked+Pizza+Base','1602808669413.jpg',0,0.00,4.00,1,'2020-10-16 06:07:49','2020-10-17 06:47:46');
/*!40000 ALTER TABLE `tbl_store_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stores`
--

DROP TABLE IF EXISTS `tbl_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `store_Category_id` int DEFAULT NULL,
  `country_id` int NOT NULL,
  `state_id` int NOT NULL,
  `city_id` int NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `owner_id` int NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `is_available` tinyint NOT NULL DEFAULT '1' COMMENT '1=>Available, 0=>Unavailable',
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `profile_image` text NOT NULL,
  `discount` float(16,2) NOT NULL DEFAULT '0.00',
  `discount_type` tinyint NOT NULL DEFAULT '0' COMMENT '0==>flat value, 1=>percentage',
  `average_price` float(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stores`
--

LOCK TABLES `tbl_stores` WRITE;
/*!40000 ALTER TABLE `tbl_stores` DISABLE KEYS */;
INSERT INTO `tbl_stores` VALUES (11,'FloorMart','4569873212','FloorMart@test.com','1537 Avenue Summerhill, Montreal','H3H 1C2',NULL,1,2,2,'45.497327','-73.5838138',4,'09:00:00','20:52:00',1,1,'2020-10-16 05:24:24','2020-10-17 06:47:38','','1602806065859.png',7.00,1,23.00);
/*!40000 ALTER TABLE `tbl_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stores_review`
--

DROP TABLE IF EXISTS `tbl_stores_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_stores_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `store_order_id` int NOT NULL,
  `store_id` int NOT NULL,
  `review` decimal(10,1) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stores_review`
--

LOCK TABLES `tbl_stores_review` WRITE;
/*!40000 ALTER TABLE `tbl_stores_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stores_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 21:19:53
