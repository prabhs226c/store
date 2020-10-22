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
-- Dumping data for table `tbl_addon`
--

LOCK TABLES `tbl_addon` WRITE;
/*!40000 ALTER TABLE `tbl_addon` DISABLE KEYS */;
INSERT INTO `tbl_addon` VALUES (1,4,6,'Cheese','Mozzarella','',2.00,1,'2020-09-25 17:03:04','0000-00-00 00:00:00'),(2,4,6,'spicy pepperoni','extra chilly flakes','',4.00,1,'2020-09-25 17:03:04','0000-00-00 00:00:00'),(3,5,6,'Bacon','stripes fried','',3.00,1,'2020-09-25 17:04:38','0000-00-00 00:00:00'),(6,15,6,'Pepper','chili+flakes+to+spice+up+ur+bread','1603304523620.jpg',1.00,1,'2020-10-21 23:52:03','2020-10-21 23:52:03'),(7,1,2,'chili+garlic+sauce','Chilli+sauce+%7C+very+hot+%7C+spicy+%7C+extreme','1603305416331.jpg',4.00,1,'2020-10-22 00:06:56','2020-10-22 00:07:08'),(8,13,6,'creamy+garlic+dip','creamy+dip+','1603318093718.jpg',2.00,1,'2020-10-22 03:38:12','2020-10-22 03:38:12');
/*!40000 ALTER TABLE `tbl_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (1,'admin%40clickripple.com','Master','Admin','e10adc3949ba59abbe56e057f20f883e','1234561234','1595767767590.png',1,'2019-07-14 15:06:58','2020-07-26 18:19:26');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_categories`
--

LOCK TABLES `tbl_categories` WRITE;
/*!40000 ALTER TABLE `tbl_categories` DISABLE KEYS */;
INSERT INTO `tbl_categories` VALUES (1,'Italian','italian.jpg',1,'2020-08-15 01:37:54','2020-08-27 22:41:42'),(2,'Indian','indian.jpg',1,'2020-08-15 01:39:23','2020-08-27 22:41:53'),(3,'Chicken','chicken.jpg',1,'2020-08-15 01:43:02','2020-08-27 22:42:16'),(4,'Fishes','fish.jpg',1,'2020-08-23 10:35:12','2020-08-27 22:42:48');
/*!40000 ALTER TABLE `tbl_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_city`
--

LOCK TABLES `tbl_city` WRITE;
/*!40000 ALTER TABLE `tbl_city` DISABLE KEYS */;
INSERT INTO `tbl_city` VALUES (1,'Toronto',1,1,'2020-08-15 01:24:50','2020-08-15 01:24:50'),(2,'Montréal',2,1,'2020-08-15 01:25:00','2020-08-15 01:25:00');
/*!40000 ALTER TABLE `tbl_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES (1,'Canada',1,'2020-08-15 01:23:56','2020-08-15 01:23:56');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_coupons`
--

LOCK TABLES `tbl_coupons` WRITE;
/*!40000 ALTER TABLE `tbl_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_cuisine`
--

LOCK TABLES `tbl_cuisine` WRITE;
/*!40000 ALTER TABLE `tbl_cuisine` DISABLE KEYS */;
INSERT INTO `tbl_cuisine` VALUES (1,'Pizza','pizza.jpeg',1,'2020-10-04 15:25:05','2020-10-04 05:55:05'),(2,'Fried Chicken','fc.jpg',1,'2020-10-04 15:25:26','2020-10-04 05:55:26'),(3,'Burgers','burgers.jpg',1,'2020-10-04 15:25:45','2020-10-04 05:55:45'),(4,'Quesidiila','ques.jpg',1,'2020-10-04 15:25:45','2020-10-04 05:55:45');
/*!40000 ALTER TABLE `tbl_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_device_token`
--

LOCK TABLES `tbl_device_token` WRITE;
/*!40000 ALTER TABLE `tbl_device_token` DISABLE KEYS */;
INSERT INTO `tbl_device_token` VALUES (1,2,'',1,1,'2020-08-21 01:22:48','2020-08-21 01:22:48');
/*!40000 ALTER TABLE `tbl_device_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_driver_orders`
--

LOCK TABLES `tbl_driver_orders` WRITE;
/*!40000 ALTER TABLE `tbl_driver_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_driver_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_drivers_review`
--

LOCK TABLES `tbl_drivers_review` WRITE;
/*!40000 ALTER TABLE `tbl_drivers_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_drivers_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_earnings`
--

LOCK TABLES `tbl_earnings` WRITE;
/*!40000 ALTER TABLE `tbl_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_grocerycat`
--

LOCK TABLES `tbl_grocerycat` WRITE;
/*!40000 ALTER TABLE `tbl_grocerycat` DISABLE KEYS */;
INSERT INTO `tbl_grocerycat` VALUES (1,'Meat','meat.jpg',1,'2020-10-04 15:25:05','2020-10-04 05:55:05'),(2,'Fruits ','fruits.jpg',1,'2020-10-04 15:25:26','2020-10-04 05:55:26'),(3,'Vegetables','vegetables.jpg',1,'2020-10-04 15:25:45','2020-10-04 05:55:45');
/*!40000 ALTER TABLE `tbl_grocerycat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_grocerycategories`
--

LOCK TABLES `tbl_grocerycategories` WRITE;
/*!40000 ALTER TABLE `tbl_grocerycategories` DISABLE KEYS */;
INSERT INTO `tbl_grocerycategories` VALUES (1,'Meats','1603088656777.jpg',1,'2020-08-15 01:37:54','2020-10-19 11:54:15'),(2,'Vegetables','vegetables.jpg',1,'2020-08-15 01:39:23','2020-08-27 22:41:53'),(3,'Fruits','fruits.jpg',1,'2020-08-15 01:43:02','2020-08-27 22:42:16'),(4,'Cheese',' ',1,'2020-10-21 21:37:00','0000-00-00 00:00:00'),(5,'Baked',' ',1,'2020-10-21 22:19:30','0000-00-00 00:00:00'),(6,'Vegan',' ',1,'2020-10-21 22:20:23','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbl_grocerycategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_groceryorder_details`
--

LOCK TABLES `tbl_groceryorder_details` WRITE;
/*!40000 ALTER TABLE `tbl_groceryorder_details` DISABLE KEYS */;
INSERT INTO `tbl_groceryorder_details` VALUES (12,15,12,10.00,'',1,'2020-10-17 08:09:52','2020-10-17 08:09:52',4),(13,16,9,17.00,'',1,'2020-10-17 08:11:12','2020-10-17 08:11:12',5),(14,17,3,12.00,'plz cut in small pieces',1,'2020-10-17 08:13:56','2020-10-17 08:13:56',1);
/*!40000 ALTER TABLE `tbl_groceryorder_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_groceryorders`
--

LOCK TABLES `tbl_groceryorders` WRITE;
/*!40000 ALTER TABLE `tbl_groceryorders` DISABLE KEYS */;
INSERT INTO `tbl_groceryorders` VALUES (12,1,31,2,12.00,1,'2020-10-17 07:46:12','2020-10-17 07:46:12',1.20,0.00,0.00,14.10,2,1,1,'',0,0.00,'',0.00,'',0,0.00,0),(13,1,31,1,12.00,1,'2020-10-17 07:56:43','2020-10-17 07:56:43',1.20,0.00,0.00,14.10,2,1,1,'',0,0.00,'',0.00,'',0,0.00,0),(14,1,31,1,45.00,1,'2020-10-17 08:05:06','2020-10-17 08:05:06',4.50,0.00,0.00,52.87,2,1,4,'',0,0.00,'',0.00,'',0,0.00,0),(15,1,31,2,40.00,1,'2020-10-17 08:09:51','2020-10-17 08:09:51',4.00,0.00,0.00,47.00,2,1,1,'',0,0.00,'',0.00,'',0,0.00,0),(16,1,31,2,85.00,1,'2020-10-17 08:11:11','2020-10-17 08:11:11',8.50,0.00,0.00,99.87,2,1,1,'',0,0.00,'',0.00,'',0,0.00,0),(17,1,31,2,12.00,1,'2020-10-17 08:13:56','2020-10-17 08:13:56',1.20,0.00,0.00,14.10,2,1,1,'',0,0.00,'',0.00,'',0,0.00,0);
/*!40000 ALTER TABLE `tbl_groceryorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_grocerystores`
--

LOCK TABLES `tbl_grocerystores` WRITE;
/*!40000 ALTER TABLE `tbl_grocerystores` DISABLE KEYS */;
INSERT INTO `tbl_grocerystores` VALUES (1,'Walmartz ','9876543210','walmart@clickripple.com','2055 Saint Mathieu, Montreal, Qc','H3H 2J2',2,1,1,2,2,'45.4949216','-73.5807566',3,'09:00:00','21:00:00',1,1,'2020-08-14 20:39:53','2020-10-19 11:32:05','walmart_banner.jpg','walmart.jpg',0.00,0,100.00),(2,'Provigo','1234567890','provigo@clickripple.com','3580 Rosemont Blvd,Montreal, QC','H1X 1K9',1,1,1,2,2,'45.5560412','-73.5776186',4,'00:00:00','00:00:00',1,1,'0000-00-00 00:00:00','2020-10-19 11:32:21','provigo_banner.png','provigo.jpg',0.00,0,85.00),(3,'FloorMart 007','6589321473','FloorMart2@test.com','1537 Avenue summerhill Montreal H3H 1C2','H3H 1C2',1,NULL,1,2,2,'45.497327','-73.5838138',4,'09:00:00','20:40:00',1,1,'2020-10-21 22:14:45','2020-10-21 22:20:59','','1603298686913.jpg',10.00,1,39.00),(4,'Super C','4715826933','mike@bird.com','1536 Avenue Summerhill Montreal H3H 1C2','H3H 1B9',2,NULL,1,2,2,'45.4973104','-73.5833623',3,'08:17:00','21:20:00',1,1,'2020-10-21 22:47:47','2020-10-21 22:47:47','','1603300669854.jpg',4.00,1,56.00),(5,'La belle province','4789651233','Ben@Affleck.com','1537 Avenue Summerhill Montreal H3H 1C2','H3H 1C2',2,NULL,1,2,2,'45.497327','-73.5838138',5,'09:00:00','21:00:00',1,1,'2020-10-22 01:26:43','2020-10-22 01:26:43','','1603310204909.png',10.00,1,21.00),(6,'New Store','1236547899','NewStore@GoogleGo.com','1537 Avenue Summerhill Montreal H3H 1C2','H3H 1C2',2,NULL,1,2,2,'45.497327','-73.5838138',5,'10:37:00','22:00:00',1,1,'2020-10-22 02:07:24','2020-10-22 02:07:44','','160331264557.jpg',3.00,1,20.00),(7,'Store New ','1478523693','test@teststroe.com','1536 Avenue Summerhill Montreal H3H 1C2','H3H 1B9',2,NULL,1,2,2,'45.4973104','-73.5833623',6,'06:54:00','16:55:00',1,1,'2020-10-22 03:23:34','2020-10-22 03:23:34','','1603317216740.jpg',10.00,0,110.00);
/*!40000 ALTER TABLE `tbl_grocerystores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_notification`
--

LOCK TABLES `tbl_notification` WRITE;
/*!40000 ALTER TABLE `tbl_notification` DISABLE KEYS */;
INSERT INTO `tbl_notification` VALUES (1,'Stay+Safe-+Covind19','Apply+hand-sanitizer.+Ask+to+put+the+food+in+front+of+the+gate.+Don%27t+accept+food+if+driver+is+not+wearing+mask.',1,'2020-08-15 02:26:23','2020-08-21 09:42:08',0,0,0),(2,'Drivers+Safe','Lorem+Ipsum+is+simply+dummy+text+of+the+printing+and+typesetting+industry.+',1,'2020-08-21 08:59:43','2020-08-21 08:59:43',0,0,0),(3,'Contrary','Contrary+to+popular+belief%2C+Lorem+Ipsum+is+not+simply+random+text.+It+has+roots+in+a+piece+of+classical+Latin+literature+from+45+BC%2C+making+it+over+2000+years+old.',1,'2020-08-21 09:00:20','2020-08-21 09:00:20',0,0,0),(4,'Order+Inprocess','Your+order+is+in+process.',1,'2020-10-19 12:35:53','2020-10-19 12:35:53',1,14,31);
/*!40000 ALTER TABLE `tbl_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_order_details`
--

LOCK TABLES `tbl_order_details` WRITE;
/*!40000 ALTER TABLE `tbl_order_details` DISABLE KEYS */;
INSERT INTO `tbl_order_details` VALUES (1,2,1,10.00,'',1,'2020-09-13 13:16:48','2020-09-13 13:16:48',2),(2,3,1,10.00,'',1,'2020-09-13 14:16:37','2020-09-13 14:16:37',1),(3,4,4,9.00,'',1,'2020-09-25 17:15:40','2020-09-25 17:15:40',1),(4,5,4,12.00,'',1,'2020-09-25 18:08:31','2020-09-25 18:08:31',1),(5,5,5,13.00,'',1,'2020-09-25 18:08:32','2020-09-25 18:08:32',1),(6,6,2,12.00,'',1,'2020-10-05 15:36:04','2020-10-05 15:36:04',1),(7,6,3,9.00,'',1,'2020-10-05 15:36:04','2020-10-05 15:36:04',1),(8,6,1,10.00,'',1,'2020-10-05 15:36:04','2020-10-05 15:36:04',1),(9,6,1,12.00,'',1,'2020-10-05 15:36:04','2020-10-05 15:36:04',1),(10,7,1,10.00,'',1,'2020-10-05 19:52:03','2020-10-05 19:52:03',1),(11,7,2,12.00,'',1,'2020-10-05 19:52:03','2020-10-05 19:52:03',1),(12,8,2,12.00,'',1,'2020-10-06 05:57:15','2020-10-06 05:57:15',2),(13,8,3,9.00,'',1,'2020-10-06 05:57:15','2020-10-06 05:57:15',1),(14,9,2,12.00,'',1,'2020-10-06 06:12:56','2020-10-06 06:12:56',1),(15,9,3,9.00,'',1,'2020-10-06 06:12:56','2020-10-06 06:12:56',1),(16,10,2,12.00,'',1,'2020-10-06 06:20:02','2020-10-06 06:20:02',1),(17,11,3,9.00,'',1,'2020-10-06 06:21:06','2020-10-06 06:21:06',1),(18,12,2,12.00,'',1,'2020-10-06 06:22:46','2020-10-06 06:22:46',1),(19,13,2,12.00,'',1,'2020-10-06 06:23:51','2020-10-06 06:23:51',1),(20,14,3,9.00,'',1,'2020-10-06 14:12:53','2020-10-06 14:12:53',1),(21,15,8,17.00,'',1,'2020-10-09 04:01:57','2020-10-09 04:01:57',1),(22,16,4,16.00,'',1,'2020-10-13 05:03:38','2020-10-13 05:03:38',1),(23,16,4,16.00,'',1,'2020-10-13 05:03:38','2020-10-13 05:03:38',1),(24,17,2,15.00,'',1,'2020-10-17 05:14:29','2020-10-17 05:14:29',1),(25,18,1,7.00,'',1,'2020-10-17 05:25:50','2020-10-17 05:25:50',1),(26,19,3,4.00,'',1,'2020-10-17 05:31:03','2020-10-17 05:31:03',1),(27,20,2,10.00,'',1,'2020-10-17 07:07:01','2020-10-17 07:07:01',1),(28,20,3,4.00,'',1,'2020-10-17 07:07:02','2020-10-17 07:07:02',1),(29,21,2,10.00,'',1,'2020-10-17 07:08:34','2020-10-17 07:08:34',1),(30,22,2,10.00,'',1,'2020-10-17 07:10:19','2020-10-17 07:10:19',4),(31,23,8,17.00,'',1,'2020-10-17 07:12:50','2020-10-17 07:12:50',1),(32,24,8,17.00,'',1,'2020-10-17 07:52:05','2020-10-17 07:52:05',5);
/*!40000 ALTER TABLE `tbl_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_order_item_details`
--

LOCK TABLES `tbl_order_item_details` WRITE;
/*!40000 ALTER TABLE `tbl_order_item_details` DISABLE KEYS */;
INSERT INTO `tbl_order_item_details` VALUES (1,4,4,0,'2020-09-25 22:08:32','2020-09-25 22:08:32',1),(2,4,5,0,'2020-09-25 22:08:32','2020-09-25 22:08:32',1),(3,9,1,0,'2020-10-05 19:36:04','2020-10-05 19:36:04',1);
/*!40000 ALTER TABLE `tbl_order_item_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_orders`
--

LOCK TABLES `tbl_orders` WRITE;
/*!40000 ALTER TABLE `tbl_orders` DISABLE KEYS */;
INSERT INTO `tbl_orders` VALUES (1,0,0,0,0.00,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0.00,0.00,0.00,0.00,1,1,5,NULL,0,0.00,'',20.00,NULL,'0'),(2,1,4,1,20.00,1,'2020-09-13 13:16:48','2020-09-13 13:16:48',5.00,0.00,0.00,25.00,2,1,1,'',0,0.00,'',0.00,NULL,'0'),(3,1,21,1,10.00,1,'2020-09-13 14:16:35','2020-09-13 14:16:35',0.00,0.00,0.00,10.00,2,1,5,'',0,0.00,'',0.00,NULL,'0'),(4,1,29,6,9.00,1,'2020-09-25 17:15:40','2020-09-25 17:15:40',0.00,0.00,0.00,9.00,1,0,1,'',0,0.00,'',0.00,'','0'),(5,1,29,6,25.00,1,'2020-09-25 18:08:30','2020-09-25 18:08:30',0.00,0.00,0.00,25.00,1,0,1,'',0,0.00,'',0.00,'make it hot','0'),(6,1,31,2,43.00,1,'2020-10-05 15:36:02','2020-10-05 15:36:02',4.50,0.00,0.00,50.72,1,0,1,'',0,0.00,'',0.00,'','0'),(7,1,31,1,22.00,1,'2020-10-05 19:52:03','2020-10-05 19:52:03',2.00,0.00,0.00,25.65,1,0,1,'',0,0.00,'',0.00,'','0'),(8,1,31,2,33.00,1,'2020-10-06 05:57:15','2020-10-06 05:57:15',0.00,0.00,0.00,35.48,1,0,1,'',0,0.00,'',0.00,'','0'),(9,1,31,2,21.00,1,'2020-10-06 06:12:56','2020-10-06 06:12:56',0.00,0.00,0.00,22.57,1,0,1,'',0,0.00,'',0.00,'','0'),(10,1,31,2,12.00,1,'2020-10-06 06:20:02','2020-10-06 06:20:02',0.00,0.00,0.00,12.90,1,0,1,'',0,0.00,'',0.00,'','0'),(11,1,31,2,9.00,1,'2020-10-06 06:21:06','2020-10-06 06:21:06',0.00,0.00,0.00,9.67,1,0,1,'',0,0.00,'',0.00,'','0'),(12,1,31,2,12.00,1,'2020-10-06 06:22:46','2020-10-06 06:22:46',0.00,0.00,0.00,12.90,1,0,1,'',0,0.00,'',0.00,'','0'),(13,1,31,2,12.00,1,'2020-10-06 06:23:51','2020-10-06 06:23:51',0.00,0.00,0.00,12.90,1,0,1,'',0,0.00,'',0.00,'','0'),(14,1,32,2,9.00,1,'2020-10-06 14:12:53','2020-10-06 14:12:53',5.00,0.00,0.00,14.67,1,0,1,'',0,0.00,'',0.00,'','0'),(15,1,31,1,17.00,1,'2020-10-09 04:01:57','2020-10-09 04:01:57',2.00,0.00,0.00,20.27,1,0,1,'',0,0.00,'',0.00,'','0'),(16,1,31,2,32.00,1,'2020-10-13 05:03:38','2020-10-13 05:03:38',0.00,0.00,0.00,34.40,1,0,5,'',0,0.00,'',0.00,'','0'),(17,1,31,1,15.00,1,'2020-10-17 05:14:29','2020-10-17 05:14:29',0.00,0.00,0.00,16.13,1,0,2,'',0,0.00,'',0.00,'','0'),(18,1,31,1,7.00,1,'2020-10-17 05:25:50','2020-10-17 05:25:50',0.00,0.00,0.00,7.52,1,0,1,'',0,0.00,'',0.00,'','0'),(19,1,31,2,4.00,1,'2020-10-17 05:31:03','2020-10-17 05:31:03',0.00,0.00,0.00,4.30,1,0,1,'',0,0.00,'',0.00,'','0'),(20,1,31,2,14.00,1,'2020-10-17 07:07:01','2020-10-17 07:07:01',1.40,0.00,0.00,16.45,2,1,2,'',0,0.00,'',0.00,'','0'),(21,1,31,2,10.00,1,'2020-10-17 07:08:34','2020-10-17 07:08:34',2.00,0.00,0.00,12.75,2,1,1,'',0,0.00,'',0.00,'','0'),(22,1,31,2,40.00,1,'2020-10-17 07:10:19','2020-10-17 07:10:19',4.00,0.00,0.00,47.00,2,1,1,'',0,0.00,'',0.00,'','0'),(23,1,31,1,17.00,1,'2020-10-17 07:12:50','2020-10-17 07:12:50',1.70,0.00,0.00,19.97,2,1,2,'',0,0.00,'',0.00,'','0'),(24,1,31,1,85.00,1,'2020-10-17 07:52:05','2020-10-17 07:52:05',8.50,0.00,0.00,99.87,2,1,2,'',0,0.00,'',0.00,'','0');
/*!40000 ALTER TABLE `tbl_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_owner`
--

LOCK TABLES `tbl_owner` WRITE;
/*!40000 ALTER TABLE `tbl_owner` DISABLE KEYS */;
INSERT INTO `tbl_owner` VALUES (1,'Owner1','owner','9876543210','owner%40clickripple.com','e10adc3949ba59abbe56e057f20f883e','',NULL,1,'2020-08-15 01:26:29','2020-08-15 01:26:29',2,2,1,'1234567','qwertyuiop');
/*!40000 ALTER TABLE `tbl_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_restaurants`
--

LOCK TABLES `tbl_restaurants` WRITE;
/*!40000 ALTER TABLE `tbl_restaurants` DISABLE KEYS */;
INSERT INTO `tbl_restaurants` VALUES (1,'St Hubert','9876543210','owner@clickripple.com','3575 Park Ave, Montreal, Quebec ','H2X 3P9',3,1,1,2,2,'45.556100','-73.577540',1,'09:00:00','21:00:00',1,1,'2020-08-14 20:39:53','2020-08-14 20:40:01','hubert_banner.jpg','hubert.jpg',0.00,0,10.00),(2,'PFK','1234567890','pfk@clickripple.com','5272 Sherbrooke St W, Montreal, Quebec ','H4A 1T9',2,1,1,2,2,'45.556100','-73.577540',1,'00:00:00','00:00:00',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','pfk_banner.jpg','pfk.jpg',0.00,0,16.00),(3,'Taco Bell','9876543210','taco@clickripple.com','1595 Blvd. Cote-Vertu Ouest, Saint-Laurent, Quebec',' H4L 2A1',4,2,1,2,2,'43.6532','-79.3832',1,'00:00:00','00:00:00',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','taco_banner.jpg','tacobell.jpg',0.00,0,7.00),(4,'PFK','1234567890','pfk@clickripple.com','1595 Blvd. Cote-Vertu Ouest, Saint-Laurent, Quebec',' H4L 2A1',2,2,1,1,1,'43.6532','-79.3832',1,'09:00:00','21:00:00',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','pfk1_banner.jpg','pfk.jpg',0.00,0,16.00),(5,'Taco Bell','9876543210','taco@clickripple.com','1595 Blvd. Cote-Vertu Ouest, Saint-Laurent, Quebec',' H4L 2A1',4,3,1,1,1,'43.6532','-79.3832',1,'09:00:00','21:00:00',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','taco_banner.jpg','tacobell.jpg',0.00,0,7.00),(6,'Pizza Pizza','9876543210','pizzapizza@clickripple.com','2823 Masson, Montreal, QC H1Y1W8','H1Y1W8',1,1,1,2,2,'45.556100','-73.577540',1,'09:01:59','21:01:59',1,1,'2020-09-25 16:01:59','2020-09-25 16:01:59','pizza_banner.jpg','pizza.jpg',0.00,0,8.00),(7,'A&W (3251 Beaubien Est)','9876543210','anw@clickripple.com','3251 Beaubien Est, Montreal, QC H1X1G4','H1X1G4',3,1,1,2,2,'45.556100','-73.577540',1,'09:01:59','21:01:59',1,1,'2020-09-25 16:01:59','0000-00-00 00:00:00','aw_banner.png','aw.jpg',0.00,0,10.00),(8,'MCDonalds (Saint-Michel)','9876543210','mcd@clickripple.com','7645, Boul. Saint-Michel, Montréal, QC H2A 3M4 ','H2A3M4 ',3,1,1,2,2,'45.556100','-73.577540',1,'09:01:59','21:01:59',1,1,'2020-09-25 16:01:59','2020-09-25 16:01:59','mcd_banner.jpg','mcd.jpg',0.00,0,8.00);
/*!40000 ALTER TABLE `tbl_restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_restaurants_review`
--

LOCK TABLES `tbl_restaurants_review` WRITE;
/*!40000 ALTER TABLE `tbl_restaurants_review` DISABLE KEYS */;
INSERT INTO `tbl_restaurants_review` VALUES (1,31,16,2,5.0,'',1,'2020-10-16 19:05:42');
/*!40000 ALTER TABLE `tbl_restaurants_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES (1,'Delivery-Ripple','1597540480486.png','','','','',587,'','','','Food+Zone','','','','sandbox','','','',20.00,1,'0000-00-00 00:00:00','2020-08-16 06:44:39','USD',10.00);
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_sides`
--

LOCK TABLES `tbl_sides` WRITE;
/*!40000 ALTER TABLE `tbl_sides` DISABLE KEYS */;
INSERT INTO `tbl_sides` VALUES (1,1,1,'tomato+Roma','qwertyuiop12345','1597738841610.jpeg',2.00,1,'2020-08-17 12:14:26','2020-08-18 13:50:40'),(3,1,1,'Olive','qhjbkndlwdcmw%27%3Bmc%27W','1597738825959.jpeg',3.00,0,'2020-08-18 13:50:25','2020-08-18 13:50:25'),(5,4,6,'Fries','Salted fried potato chips','',2.00,1,'2020-09-25 16:56:41','0000-00-00 00:00:00'),(8,2,2,'Peach+Slices','Looks+like+a+fun+combination','1603305489999.jpg',3.00,0,'2020-10-22 00:08:09','2020-10-22 00:08:52');
/*!40000 ALTER TABLE `tbl_sides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_state`
--

LOCK TABLES `tbl_state` WRITE;
/*!40000 ALTER TABLE `tbl_state` DISABLE KEYS */;
INSERT INTO `tbl_state` VALUES (1,'Ontario',1,1,'2020-08-15 01:24:18','2020-08-15 01:24:18'),(2,'Quebec',1,1,'2020-08-15 01:24:32','2020-08-15 01:24:32');
/*!40000 ALTER TABLE `tbl_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_store_earnings`
--

LOCK TABLES `tbl_store_earnings` WRITE;
/*!40000 ALTER TABLE `tbl_store_earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_store_order_details`
--

LOCK TABLES `tbl_store_order_details` WRITE;
/*!40000 ALTER TABLE `tbl_store_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_store_order_item_details`
--

LOCK TABLES `tbl_store_order_item_details` WRITE;
/*!40000 ALTER TABLE `tbl_store_order_item_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_order_item_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_store_orders`
--

LOCK TABLES `tbl_store_orders` WRITE;
/*!40000 ALTER TABLE `tbl_store_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_store_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_store_owner`
--

LOCK TABLES `tbl_store_owner` WRITE;
/*!40000 ALTER TABLE `tbl_store_owner` DISABLE KEYS */;
INSERT INTO `tbl_store_owner` VALUES (3,'Mike','Bird','3216549870','TestUsser%40test.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,1,'2020-10-16 02:53:09','2020-10-16 03:13:58',2,2,1,'H3H 1C2','7980+Ave.+Stuart'),(4,'Rossy','Sarpanch','9874563210','Rossy%40test.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,1,'2020-10-16 03:17:23','2020-10-17 06:27:04',2,2,1,'H2H 1C5','1537+Avenue+Summerhill'),(5,'Ben','Affleck','1478523699','Ben%40Affleck.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,1,'2020-10-22 01:22:35','2020-10-22 01:23:01',2,2,1,'H3H 1C2','1537+Avenue+SummerHill+Montreal+H3H+1C2'),(6,'Test+Owner','Store','1234567890','test%40teststore.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,1,'2020-10-22 03:22:12','2020-10-22 03:22:12',2,2,1,'H3H 1C2','1537+Avenue+Summerhill+Montreal+H3H+1C2');
/*!40000 ALTER TABLE `tbl_store_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_stores`
--

LOCK TABLES `tbl_stores` WRITE;
/*!40000 ALTER TABLE `tbl_stores` DISABLE KEYS */;
INSERT INTO `tbl_stores` VALUES (11,'FloorMart','4569873212','FloorMart@test.com','1537 Avenue Summerhill, Montreal','H3H 1C2',NULL,1,2,2,'45.497327','-73.5838138',4,'09:00:00','20:52:00',1,1,'2020-10-16 05:24:24','2020-10-17 06:47:38','','1602806065859.png',7.00,1,23.00);
/*!40000 ALTER TABLE `tbl_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_stores_review`
--

LOCK TABLES `tbl_stores_review` WRITE;
/*!40000 ALTER TABLE `tbl_stores_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stores_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_subcategories`
--

LOCK TABLES `tbl_subcategories` WRITE;
/*!40000 ALTER TABLE `tbl_subcategories` DISABLE KEYS */;
INSERT INTO `tbl_subcategories` VALUES (1,3,1,'Aile+Hot',2,'Hot+Wings+with+special+breaded.+Hand+made.','hotWings.jpg',1,3.00,10.00,0,'2020-08-15 02:20:44','2020-10-22 04:27:27'),(2,2,2,'Tandori+Chicken',2,'Indian+Spices+mixed+with+fresh+chicken+brown+meat','tandooriChicken.jpg',1,2.00,12.00,1,'2020-08-15 02:22:26','2020-08-27 22:44:21'),(3,1,2,'Paneer+Pizza',1,'Vegetable+and+sliced+paneer+toppings+on+top+of+cheese+pizza','paneerPizza.jfif',1,5.00,9.00,1,'2020-08-15 02:24:48','2020-08-27 22:44:33'),(4,3,6,'Pepperoni+Pizza',2,'New+York+Style+Pepperoni%2C+Mozzarella+Cheese','1601066686980.jpeg',0,0.00,9.00,1,'2020-09-26 02:14:45','2020-09-26 02:14:45'),(5,1,6,'Tropical+Hawaiian',2,'Pineapples%2C+Bacon+Crumble%2C+Baccon','1601066761945.jpeg',0,0.00,13.00,1,'2020-09-26 02:16:00','2020-09-26 02:16:00'),(6,2,6,'Grilled+Veggie+%26+Goat+Cheese',1,'Grilled+Zucchini%2C+Fire+Roasted+Red+Peppers','1601066804863.jpeg',0,0.00,14.00,1,'2020-09-26 02:16:43','2020-09-26 02:16:43'),(7,3,6,'Chicken+Bruschetta+Parmesan',2,'Grilled+Chicken%2C+Roasted+Garlic%2C','1601066845428.jpeg',0,0.00,15.00,1,'2020-09-26 02:17:24','2020-09-26 02:17:24'),(12,2,1,'Palak+Paneer',2,'non+veg+palak+paneer++%3Ap','1603087458107.jpg',0,1.00,23.00,1,'2020-10-19 11:34:18','2020-10-19 11:34:18'),(13,2,6,'Indian+Double+Crust+pizza',1,'Indian+Double+Crust','1603317970607.jpg',0,0.00,12.00,1,'2020-10-22 03:36:09','2020-10-22 03:36:24');
/*!40000 ALTER TABLE `tbl_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_subgrocery`
--

LOCK TABLES `tbl_subgrocery` WRITE;
/*!40000 ALTER TABLE `tbl_subgrocery` DISABLE KEYS */;
INSERT INTO `tbl_subgrocery` VALUES (2,1,2,'Lamb',1,'Fresh+Lamb+Meat','lambmeat.jpg',1,2.00,17.00,1,'2020-08-15 02:22:26','2020-10-22 05:13:44','lb'),(3,1,1,'Lamb',2,'Fresh+Lamb+Meat','lambmeat.jpg',1,2.00,14.00,1,'2020-08-15 02:22:26','2020-10-19 11:48:19','lb'),(4,1,1,'Same+Beef',1,'ODSA+N+OSRA+OAS+NCKFN','1603212135147.png',1,4.00,16.00,1,'2020-08-15 02:24:48','2020-10-20 22:12:15','lb'),(5,2,3,'Okra',1,'Okra ','okra.jpg',0,0.00,9.00,1,'2020-09-26 02:14:45','2020-09-26 02:14:45','kg'),(6,2,3,'Brinjal',1,'Brinjal','brinjal.jpg',0,0.00,7.00,1,'2020-09-26 02:16:00','2020-09-26 02:16:00','kg'),(7,2,3,'Onion',1,'Fresh Red Onion','redonion.jpg',0,0.00,4.00,1,'2020-09-26 02:16:43','2020-09-26 02:16:43','kg'),(8,2,3,'Tomato',1,'Fresh Tomato','tomato.jpg',0,0.00,6.00,1,'2020-09-26 02:17:24','2020-09-26 02:17:24','kg'),(10,3,2,'Banana+',4,'Banana+%7C+Banane+%7C+Plante','banana.jpg',0,0.00,3.00,1,'2020-09-26 02:17:24','2020-10-22 03:04:15','kg'),(11,3,3,'Orange ',1,'Orange','orange.jpg',0,0.00,10.00,1,'2020-09-26 02:17:24','2020-09-26 02:17:24','kg'),(13,1,1,'Same+Beef',1,'sadasd+asd+asd+s+dsa4sdf+d+f+sf+sdf+sd+f','160321219470.jpg',0,3.00,22.00,1,'2020-10-19 11:52:32','2020-10-20 22:13:14',''),(14,2,1,'JackFruit',1,'Healtyh+fruit','1603212319213.jpg',0,0.00,3.00,1,'2020-10-20 22:15:19','2020-10-20 22:15:19',''),(15,1,1,'sadsa',1,'sad+sd++dsad+as+d+s+dsa+d+sd+s+','1603212386541.jpg',0,1.00,12.00,1,'2020-10-20 22:16:25','2020-10-20 22:16:25',''),(16,1,1,'test+id+3',1,'asdsad+s+d+sd+','1603213879270.png',1,12.00,22.00,1,'2020-10-20 22:41:18','2020-10-20 22:41:18',''),(17,2,1,'12th+state+22',1,'sd+sd+as+e2e+++e1+23+123+','1603214152187.jpg',0,10.00,22.00,1,'2020-10-20 22:45:52','2020-10-20 22:45:52',''),(18,6,2,'singasadas+dfad+edited',1,'this+is+a+test+product+here','1603215240322.jpg',0,12.00,54.00,1,'2020-10-20 23:04:00','2020-10-22 07:50:23',''),(20,3,3,'Peaches',1,'All+Peached+are+Organic','1603299218401.jpg',0,0.00,2.00,1,'2020-10-21 22:23:38','2020-10-21 22:23:38',''),(21,1,5,'Chicken+Burger',3,'Chicken+Burger+with+Real+Chicken+instead+of+proccessed+patties','1603310327508.jpg',0,1.00,11.00,1,'2020-10-22 01:28:47','2020-10-22 03:12:58',''),(22,2,6,'Green+Pepper',1,'Green+Pepper+%7C+Bell+Pepper','1603312846410.jpg',1,0.00,3.00,1,'2020-10-22 02:10:45','2020-10-22 02:10:45',''),(23,1,5,'Poutine+%28Chicken%29',3,'Poutine+with+crispy+chicken+on+top','1603314174313.jpg',1,2.00,17.00,1,'2020-10-22 02:32:53','2020-10-22 02:32:53',''),(24,3,1,'Watermelon',3,'Watermelon+%7C+Melon+%7C+Sweet','1603316482778.jpg',0,0.00,3.00,1,'2020-10-22 03:11:22','2020-10-22 03:11:22',''),(25,1,5,'Burger+Poulet',3,'Spicy+Chicken+Burger','160331773952.jpg',1,4.00,12.00,1,'2020-10-22 03:32:18','2020-10-22 03:34:11','');
/*!40000 ALTER TABLE `tbl_subgrocery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_user_addresses`
--

LOCK TABLES `tbl_user_addresses` WRITE;
/*!40000 ALTER TABLE `tbl_user_addresses` DISABLE KEYS */;
INSERT INTO `tbl_user_addresses` VALUES (4,4,'home','9638520741','','','','3580 Boulevard Rosemont, Montreal, QC, Canada','','h1x1k9','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0),(7,31,'manoj','5145621111','','','','2055 Saint Mathieu Street, Montreal, QC, Canada','','h1x1k9','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0),(8,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:14:48','2020-10-17 06:14:48',0,0),(9,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:17:31','2020-10-17 06:17:31',0,0),(10,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:19:47','2020-10-17 06:19:47',0,0),(11,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:23:02','2020-10-17 06:23:02',0,0),(12,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:25:45','2020-10-17 06:25:45',0,0),(13,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:28:01','2020-10-17 06:28:01',0,0),(14,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:45:10','2020-10-17 06:45:10',0,0),(15,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 06:53:34','2020-10-17 06:53:34',0,0),(16,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 07:03:18','2020-10-17 07:03:18',0,0),(17,31,'','5145621096','Montréal','Québec','Canada','2055 Rue Saint Mathieu, Montréal, QC H3H 2J2, Canada','','H3H 2J2','45.4949216','-73.5807566',1,'2020-10-17 07:05:37','2020-10-17 07:05:37',0,0),(18,31,'','5145621096','Montréal','Québec','Canada','2121 Rue Saint Mathieu, Montréal, QC H3H 2J3, Canada','','H3H 2J3','45.4950008450741','-73.58098126350916',1,'2020-10-17 08:01:29','2020-10-17 08:01:29',0,0);
/*!40000 ALTER TABLE `tbl_user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,0,'','driver','driver%40clickripple.com','e10adc3949ba59abbe56e057f20f883e','1234567890',NULL,'',1,'2020-08-15 02:18:07','2020-08-15 08:05:15',NULL,'',2,'37.4219983','-122.084','123456789',NULL,'123456789',NULL,'Male',NULL,'2005-01-01',1,1,1,'1234567','qwertyuiop','exqn5jSSbrA:APA91bEzdJaTaIFYoZ23_juVlQoTbXf2UsdnMbYI9yQyjpu1OWfnNb04CYhy_uE0lsH66y7c8JcKVGYKtb4yvgG9bRu49iFaL1DXRL8jlZt0im-kPtEDkpZPINhI5ivSq0yGZHDx2O0W',1,0.00,0),(3,0,'','Customer%09','cust1%40clickripple.com%09','e10adc3949ba59abbe56e057f20f883e','7418520963	','xf0iBF','',1,'2020-08-21 08:25:54','2020-08-21 08:25:54',NULL,'',1,'37.4219983','-122.084',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,0),(25,0,'','anshul','anshulrng90@gmail.com','$2y$10$3vUoVyJiAmJtFSR6.64Z5e7mP/p4puCBGIJd5mde2NfMsBDZKBRle','2580147369','6b7a2a6a06','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,1),(26,0,'','jijiji','bohola7731@keinmail.com','$2y$10$5/z5l3Rpm3A6p87FLGbKrOqnwzwrs1irBQfcY6mdwwglnFHEeeFxy','7894561230','2fdae169a8','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,1),(27,0,'','aravind','saravindmr@gmail.com','$2y$10$q8jQ0B1g3uBLwEDZDyOVUeU/ghZZBS5./uYQuAVI.O7mS8rLZPSzS','4388835363','0062558e6e','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,0),(29,0,'','anshul','anshul@clickripple.com','$2y$10$VBFhGg/x4wrkAXIGqEevWuTxILm6ySLzIoHTDNCgBQWGAsHwt5Ari','45256632','3f4060a970','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,1),(30,0,'','anshul','gicen40833@cyberper.net','$2y$10$DS7z.HyJZx.VRLcUuYwO2uoiuqRu1OvJyX0AePL88sYhEDTBX1k/.','1470258369','4b4811804a','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,1),(31,0,'','manoj','manoj@clickripple.com','$2y$10$18CRPYmwPYLAePrSaKbuWe19LXMXhZqzbEdjHXGFXJoJBKk5sfDi2','5145621096','e1a3ca5cc1','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,0),(32,0,'','Anshul','asdf@clickripple.com','$2y$10$yDdNnDqoU5fBTQk69XZac.Aba51cmCE34V1sPq0IFbPoUz2qean6a','3216549870','7e306f0fd1','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,0),(33,0,'','FloorMart','prabhs226c@gmail.com','$2y$10$D8N6hNrm2iArcOc0I/nTSeuIdxSlW5emFKFFBAYO9Oo2k8tuiB5TK','1478523699','907f5533f4',NULL,1,'2020-10-18 23:55:48',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,0);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-22 14:19:58
