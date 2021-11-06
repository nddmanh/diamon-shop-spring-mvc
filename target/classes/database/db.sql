-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: diamonshop
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `billdetail`
--

DROP TABLE IF EXISTS `billdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_bills` bigint NOT NULL,
  `quanty` int NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_bills_idx` (`id_bills`),
  KEY `id_product1` (`id_product`),
  CONSTRAINT `id_bills` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_product1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billdetail`
--

LOCK TABLES `billdetail` WRITE;
/*!40000 ALTER TABLE `billdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `billdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user` varchar(245) NOT NULL,
  `phone` varchar(245) NOT NULL,
  `display_name` varchar(245) NOT NULL,
  `address` varchar(245) NOT NULL,
  `total` double NOT NULL,
  `quanty` int NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Đồng hồ','Các loại đồng hồ'),(2,'Vòng tay','Các loại vòng tay'),(3,'Dây đeo tay','Các loại dây đeo tay'),(4,'Dây chuyền','Các loại day chuyền');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(45) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product_idx` (`id_product`),
  CONSTRAINT `id_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,1,'Vàng','#FFFF00','a.jpg'),(2,1,'Xanh','#FFFF00','b.jpg'),(3,2,'Vàng','#FFFF00','c.jpg'),(4,2,'Xanh','#FFFF00','d.jpg'),(5,5,'Vàng','#FFFF00','e.jpg'),(6,6,'Vàng','#FFFF00','g.jpg'),(7,7,'Vàng','#FFFF00','h.jpg'),(8,8,'Vàng','#FFFF00','i.jpg'),(9,9,'Vàng','#FFFF00','b.jpg'),(10,10,'Vàng','#FFFF00','b.jpg'),(11,11,'Vàng','#FFFF00','b.jpg'),(12,12,'Vàng','#FFFF00','b.jpg'),(13,13,'Vàng','#FFFF00','b.jpg'),(14,14,'Vàng','#FFFF00','b.jpg'),(15,15,'Vàng','#FFFF00','b.jpg'),(16,16,'Vàng','#FFFF00','b.jpg'),(17,17,'Vàng','#FFFF00','b.jpg'),(18,18,'Vàng','#FFFF00','b.jpg'),(19,19,'Vàng','#FFFF00','b.jpg'),(20,20,'Vàng','#FFFF00','b.jpg'),(21,21,'Vàng','#FFFF00','b.jpg'),(22,22,'Vàng','#FFFF00','b.jpg'),(23,23,'Vàng','#FFFF00','b.jpg'),(24,24,'Vàng','#FFFF00','b.jpg'),(25,25,'Vàng','#FFFF00','b.jpg');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Trang chủ',NULL),(2,'Sản phẩm',NULL),(3,'So sánh',NULL),(4,'Giỏ hàng',NULL),(5,'Bài viết',NULL),(6,'Liên hệ',NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_category` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `sale` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint NOT NULL,
  `new_product` tinyint NOT NULL,
  `details` longtext NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category_1_idx` (`id_category`),
  CONSTRAINT `id_category` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'L,M,S','Manicure & Pedicure',20000,0,'Nowadays the lingerie industry is one of the most successful business spheres. Nowadays the lingerie industry is one of ...',1,1,'<div class=\"tab-pane fade active in\" id=\"home\">\r\n			  <h4>Product Information</h4>\r\n                <table class=\"table table-striped\">\r\n				<tbody>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Color:</td><td class=\"techSpecTD2\">Black</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Style:</td><td class=\"techSpecTD2\">Apparel,Sports</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Season:</td><td class=\"techSpecTD2\">spring/summer</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Usage:</td><td class=\"techSpecTD2\">fitness</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Sport:</td><td class=\"techSpecTD2\">122855031</td></tr>\r\n				<tr class=\"techSpecRow\"><td class=\"techSpecTD1\">Brand:</td><td class=\"techSpecTD2\">Shock Absorber</td></tr>\r\n				</tbody>\r\n				</table>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n				<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n\r\n			</div>','2020-04-09','2020-04-09'),(2,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(3,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(4,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(5,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(6,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(7,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(8,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(9,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(10,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(11,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(12,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(13,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(14,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(15,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(16,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(17,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(18,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(19,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(20,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(21,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(22,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(23,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(24,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(25,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(26,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(27,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09'),(28,1,'L,S,M','Name',200000,0,'tital',1,1,'details','2020-04-09','2020-04-09');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(45) NOT NULL,
  `caption` varchar(45) NOT NULL,
  `content` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'carousel3.png','BOOTSTRAP SHOPPING CART','Highly Google seo friendly'),(2,'bootstrap_free-ecommerce.png','Hinh anh 2','Very clean simple to use'),(3,'carousel1.png','Hinh anh 3','Compitable to many more opensource cart'),(4,'bootstrap-templates.png','Hinh anh 4','Very easy to integrate and expand.');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user` varchar(245) NOT NULL,
  `password` varchar(245) NOT NULL,
  `display_name` varchar(245) NOT NULL,
  `address` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-06 22:59:20
