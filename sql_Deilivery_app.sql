-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: delivery_eztakeout
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
-- Table structure for table `tbl_grocerycat`
--

DROP TABLE IF EXISTS `tbl_grocerycat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_grocerycat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_grocerycategories`
--

DROP TABLE IF EXISTS `tbl_grocerycategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_grocerycategories` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_groceryorder_details`
--

DROP TABLE IF EXISTS `tbl_groceryorder_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_groceryorder_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_price` float(16,2) NOT NULL,
  `extra_note` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `product_quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_groceryorders`
--

DROP TABLE IF EXISTS `tbl_groceryorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_groceryorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_id` int NOT NULL,
  `user_id` int NOT NULL,
  `restaurent_id` int NOT NULL,
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
  `is_contactless` tinyint(1) NOT NULL DEFAULT '0',
  `tax_price` float(16,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_grocerystores`
--

DROP TABLE IF EXISTS `tbl_grocerystores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_grocerystores` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `grocerycat_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_subgrocery`
--

DROP TABLE IF EXISTS `tbl_subgrocery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subgrocery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
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
  `selling` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 11:28:39
