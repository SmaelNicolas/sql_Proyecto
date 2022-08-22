-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: 1928_showroom
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits` (
  `id_benefit` int NOT NULL AUTO_INCREMENT,
  `name_benefit` varchar(50) DEFAULT NULL,
  `points_benefit` int DEFAULT NULL,
  `is_available_benefit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_benefit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `dni_client` int DEFAULT NULL,
  `name_client` varchar(15) NOT NULL,
  `last_name_client` varchar(25) NOT NULL,
  `email_client` varchar(40) NOT NULL,
  `birth_date_client` datetime NOT NULL,
  `password_client` varchar(15) NOT NULL,
  `phone_client` varchar(40) NOT NULL,
  `adress_client` varchar(50) NOT NULL,
  `city_client` varchar(20) NOT NULL,
  `date_account_client` date NOT NULL,
  `order_history_client` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,35034013,'Nicolas','Smael','nic.sma@gmail.com','1989-11-24 00:00:00','rghj849','542914228596','sarmiento 320','Bahia Blanca','2022-07-25',NULL),(2,35034013,'Nicolas','Smael','nic.sma@gmail.com','1989-11-24 00:00:00','rghj849','542914228596','sarmiento 320','Bahia Blanca','2022-07-27',NULL),(3,35034013,'Mariano','Leto','mar.let@gmail.com','1998-05-06 00:00:00','rghj159','542914228597','Mitre 320','Mar del plata','2022-07-27',NULL),(4,35034013,'Jeremias','Jafor','jer.jar@gmail.com','1995-05-06 00:00:00','rghj147','54291422789','Panama 320','Bahia Blanca','2022-07-27',NULL),(5,35034013,'Cristina','Perlaes','cri.per@gmail.com','1985-05-06 00:00:00','rghj853','542914215596','Uruguay 320','Bahia Blanca','2022-07-27',NULL),(6,35034013,'Estefania','Laive','est.lai@gmail.com','1972-05-06 00:00:00','rghj753','542914848596','Laprida 320','Bahia Blanca','2022-07-27',NULL),(7,35034013,'Norma','Meles','norm.mel@gmail.com','2005-05-06 00:00:00','rghj564','542684228596','Alem 320','Bahia Blanca','2022-07-27',NULL),(8,35034013,'Luciano','Hune','luc.hun@gmail.com','1960-05-06 00:00:00','rgh284','542414228596','Rodriguez 320','Sierra de la ventana','2022-07-27',NULL),(9,35034013,'Carmen','Orin','car.ori@gmail.com','1999-05-06 00:00:00','rghj946','5429558596','Cordoba 320','Monte Hermoso','2022-07-27',NULL),(10,35034013,'Nestor','Deluf','nes.del@gmail.com','1989-05-06 00:00:00','rghj242','542911584596','Salta 320','Bahia Blanca','2022-07-27',NULL),(11,35034013,'Gustavo','Goel','gus.goe@gmail.com','2000-05-06 00:00:00','rghj111','542914268496','Colon 320','mar del plata','2022-07-27',NULL),(15,1232113,'Pipo','Perez','Nestor.Perez@gmail.com','1960-11-24 00:00:00','rghj819','542914223496','sarmiento 120','Bahia Blanca','2022-08-17',NULL),(16,3453143,'Gaston','Lunv','gast.lunv@gmail.com','1990-09-29 00:00:00','rew456','542249565658','Peru 210','Bahia Blanca','2022-08-17',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_benefits`
--

DROP TABLE IF EXISTS `exchange_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange_benefits` (
  `id_exchange` int NOT NULL AUTO_INCREMENT,
  `points_exchange` int DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `id_benefit` int DEFAULT NULL,
  PRIMARY KEY (`id_exchange`),
  KEY `id_client` (`id_client`),
  KEY `id_benefit` (`id_benefit`),
  CONSTRAINT `exchange_benefits_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  CONSTRAINT `exchange_benefits_ibfk_2` FOREIGN KEY (`id_benefit`) REFERENCES `benefits` (`id_benefit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_benefits`
--

LOCK TABLES `exchange_benefits` WRITE;
/*!40000 ALTER TABLE `exchange_benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_clients_create`
--

DROP TABLE IF EXISTS `log_clients_create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_clients_create` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `name_action` varchar(10) DEFAULT NULL,
  `name_table` varchar(50) DEFAULT NULL,
  `complete_name` varchar(50) DEFAULT NULL,
  `email_clients` varchar(50) DEFAULT NULL,
  `phone_clients` varchar(50) DEFAULT NULL,
  `date_insert` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_clients_create`
--

LOCK TABLES `log_clients_create` WRITE;
/*!40000 ALTER TABLE `log_clients_create` DISABLE KEYS */;
INSERT INTO `log_clients_create` VALUES (1,'insert','clients','Smael Nicolas','nico@smael.com','222584762','2022-08-17'),(3,'insert','clients','Smael Nicolas','nico@smael.com','222584762','2022-08-17'),(4,'insert','clients','Smael Nicolas','nico@smael.com','222584762','2022-08-17'),(5,'insert','clients','Smael Nicolas','nico@smael.com','222584762','2022-08-17');
/*!40000 ALTER TABLE `log_clients_create` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_user_made_order`
--

DROP TABLE IF EXISTS `log_user_made_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_user_made_order` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `name_action` varchar(10) DEFAULT NULL,
  `name_table` varchar(50) DEFAULT NULL,
  `user` int DEFAULT NULL,
  `date_insert` date DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_user_made_order`
--

LOCK TABLES `log_user_made_order` WRITE;
/*!40000 ALTER TABLE `log_user_made_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_user_made_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `id_client` int DEFAULT NULL,
  `delivery_order` varchar(20) NOT NULL,
  `pay_method_order` varchar(20) NOT NULL,
  `discount_order` tinyint(1) NOT NULL,
  `discount_total_order` int DEFAULT NULL,
  `mesage_order` varchar(150) DEFAULT NULL,
  `is_paid_order` tinyint(1) DEFAULT NULL,
  `points_order` int DEFAULT NULL,
  `date_created_order` date DEFAULT NULL,
  `date_paid_order` date DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `type_product` varchar(45) NOT NULL,
  `title_product` varchar(20) NOT NULL,
  `color_product` varchar(20) NOT NULL,
  `price_product` float NOT NULL,
  `size_product` varchar(10) DEFAULT NULL,
  `quantity_selected_product` int DEFAULT '1',
  `stock_product` int NOT NULL,
  `image_product` varchar(100) DEFAULT NULL,
  `point_product` int DEFAULT NULL,
  `description_product` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'jean','Jean Chupin','Azul',6500,'52',1,5,NULL,250,'Jean chupin color azul'),(2,'jean','Jean Chupin','Azul',6500,'52',1,5,NULL,250,'Jean chupin color azul'),(3,'jean','Jean ancho ','negro',6200,'48',1,2,NULL,200,'Jean ancho color negro'),(4,'remera','Remera oversize','negro',3500,'xxl',1,3,NULL,150,'Remera oversize varios colores'),(5,'remera','Remera oversize','blanco',3500,'xxl',1,2,NULL,150,'Remera oversize varios colores'),(6,'sweater','Sweater tejido','verde',5400,'unico',1,2,NULL,200,'Sweater tejido talle unico'),(7,'remera','remera manga ancha','gris',3000,'xl',1,1,NULL,180,'remera manga ancha con bordados'),(8,'accesorio','aros estrella','plata',1500,'unico',1,2,NULL,50,'Aros en forma de estrella de acero quirurjico'),(9,'remera','Remera estampa paris','rojo',3500,'xxl',1,1,NULL,350,'Remera con inscripcion paris colores varios'),(10,'remera','remera estampa love','blanco',3000,'xxl',1,2,NULL,450,'remera estampa corazon color blanco'),(11,'sweater','sweater oversize','beige',6350,'unico',1,3,NULL,550,'Sweater de algodon amplio');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_in_order`
--

DROP TABLE IF EXISTS `products_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_in_order` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_order` int NOT NULL,
  `id_client` int NOT NULL,
  `quantity_product` int NOT NULL,
  `price_total_product` int NOT NULL,
  PRIMARY KEY (`id_item`),
  KEY `id_order` (`id_order`),
  KEY `id_client` (`id_client`),
  KEY `id_product` (`id_product`),
  CONSTRAINT `products_in_order_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`),
  CONSTRAINT `products_in_order_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`),
  CONSTRAINT `products_in_order_ibfk_3` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_in_order`
--

LOCK TABLES `products_in_order` WRITE;
/*!40000 ALTER TABLE `products_in_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turns`
--

DROP TABLE IF EXISTS `turns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turns` (
  `id_turn` int NOT NULL AUTO_INCREMENT,
  `date_acquired_turn` date DEFAULT NULL,
  `date_turn` date DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `used_turn` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_turn`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `turns_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turns`
--

LOCK TABLES `turns` WRITE;
/*!40000 ALTER TABLE `turns` DISABLE KEYS */;
INSERT INTO `turns` VALUES (3,'2022-08-03','2022-08-03',1,1),(4,'2022-08-03','2022-08-03',5,1);
/*!40000 ALTER TABLE `turns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22  9:31:57
