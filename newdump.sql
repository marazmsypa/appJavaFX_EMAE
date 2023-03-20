-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: xsql-prdb-clone    Database: user1
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'Производство'),(2,'Сбыт'),(3,'Администрация'),(4,'Служба безопасности'),(5,'Планирование'),(6,'новое подразделение');
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `patronymic` varchar(100) NOT NULL,
  `code` int NOT NULL,
  `subdivision_id` int DEFAULT NULL,
  `division_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_FK` (`division_id`),
  KEY `employees_FK_1` (`subdivision_id`),
  CONSTRAINT `employees_FK` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  CONSTRAINT `employees_FK_1` FOREIGN KEY (`subdivision_id`) REFERENCES `subdivisions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Фомичева','Авдотья','Трофимовна',9367788,1,1),(2,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,2,2),(3,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,2,3),(4,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,1,4),(5,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,1,5),(6,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,1,6),(7,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,2,1),(8,'Фомичева','Авдотья abarcadabra','Трофимовна',9367788,2,1),(9,'Surname','Test employee','Utoma',324234,NULL,NULL),(10,'Surname','Test employee','Utoma',324234,NULL,NULL),(11,'Surname','Test employee','Utoma',324234,NULL,NULL),(12,'Surname','Test employee','Utoma',324234,NULL,NULL),(13,'Surname','Test employee','Utoma',324234,NULL,NULL),(14,'Surname','Test employee','Utoma',324234,NULL,NULL),(15,'Surname','Test employee','Utoma',324234,NULL,NULL),(16,'Surname','Test employee','Utoma',324234,NULL,NULL),(17,'Surname','Test employee','Utoma',324234,NULL,NULL),(18,'Surname','Test employee','Utoma',324234,NULL,NULL),(19,'Surname','Test employee','Utoma',324234,NULL,NULL),(20,'Surname','Test employee','Utoma',324234,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'24/04/2023_Производство_Фомичева_9367788_ГР1');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `visitor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_users_FK` (`group_id`),
  KEY `groups_users_FK_1` (`visitor_id`),
  CONSTRAINT `groups_users_FK` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `groups_users_FK_1` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
INSERT INTO `groups_users` VALUES (1,1,16),(2,1,17),(3,1,18),(4,1,19),(5,1,20),(6,1,21),(7,1,22),(8,1,23),(9,1,24),(10,1,25),(11,1,26),(12,1,27),(13,1,28),(14,1,29),(15,1,30);
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_statuses`
--

DROP TABLE IF EXISTS `request_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_statuses`
--

LOCK TABLES `request_statuses` WRITE;
/*!40000 ALTER TABLE `request_statuses` DISABLE KEYS */;
INSERT INTO `request_statuses` VALUES (1,'на проверке'),(2,'одобрена'),(3,'не одобрена');
/*!40000 ALTER TABLE `request_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_types`
--

DROP TABLE IF EXISTS `request_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_types`
--

LOCK TABLES `request_types` WRITE;
/*!40000 ALTER TABLE `request_types` DISABLE KEYS */;
INSERT INTO `request_types` VALUES (1,'групповая'),(2,'персональная');
/*!40000 ALTER TABLE `request_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_type_id` int NOT NULL,
  `request_status_id` int NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `visit_purpose_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `group_id` int DEFAULT NULL,
  `visitor_id` int DEFAULT NULL,
  `is_group` tinyint(1) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requests_FK` (`request_type_id`),
  KEY `requests_FK_1` (`visit_purpose_id`),
  KEY `requests_FK_2` (`group_id`),
  KEY `requests_FK_3` (`visitor_id`),
  KEY `requests_FK_4` (`employee_id`),
  KEY `requests_FK_5` (`request_status_id`),
  CONSTRAINT `requests_FK` FOREIGN KEY (`request_type_id`) REFERENCES `request_types` (`id`),
  CONSTRAINT `requests_FK_1` FOREIGN KEY (`visit_purpose_id`) REFERENCES `visit_purposes` (`id`),
  CONSTRAINT `requests_FK_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `requests_FK_3` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`),
  CONSTRAINT `requests_FK_4` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `requests_FK_5` FOREIGN KEY (`request_status_id`) REFERENCES `request_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,2,3,'2023-04-24',NULL,1,1,NULL,1,0,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(2,2,2,'2023-04-24','2023-03-14',2,2,NULL,2,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 18 00:00:00 YEKT 2023, время посещения: 00:00:00'),(3,2,1,'2023-04-24',NULL,3,3,NULL,3,0,NULL),(4,2,2,'2023-04-25','2023-03-23',1,4,NULL,4,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Thu Mar 23 00:00:00 YEKT 2023, время посещения: ХХ.ХХ'),(5,2,2,'2023-04-25','2023-03-15',2,5,NULL,5,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Thu Mar 23 00:00:00 YEKT 2023, время посещения: 00:00:00'),(6,2,1,'2023-04-25',NULL,3,1,NULL,6,0,NULL),(7,2,2,'2023-04-26','2023-03-18',1,2,NULL,7,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 18 00:00:00 YEKT 2023, время посещения: ХХ.ХХ'),(8,2,2,'2023-04-26','2023-03-15',2,3,NULL,8,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 11 00:00:00 YEKT 2023, время посещения: 00:00:00'),(9,2,1,'2023-04-26',NULL,3,4,NULL,9,0,NULL),(10,2,2,'2023-04-27','2023-03-14',1,5,NULL,10,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 18 00:00:00 YEKT 2023, время посещения: 01:07:21'),(11,2,3,'2023-04-27',NULL,2,1,NULL,11,0,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(12,2,1,'2023-04-27',NULL,3,2,NULL,12,0,NULL),(13,2,2,'2023-04-28','2023-03-14',1,3,NULL,13,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Fri Mar 24 00:00:00 YEKT 2023, время посещения: 12:00:00'),(14,2,3,'2023-04-28',NULL,2,4,NULL,14,0,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(15,2,1,'2023-04-28',NULL,3,5,NULL,15,0,NULL),(16,1,3,'2023-04-24',NULL,1,1,1,1,1,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(17,1,3,'2023-04-24',NULL,1,1,1,1,1,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(18,2,1,'2023-04-24',NULL,1,1,NULL,NULL,1,'Новая заявка'),(19,2,2,'2023-03-18','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 18 00:00:00 YEKT 2023, время посещения: 01:00:00'),(20,2,3,'2023-04-24',NULL,1,1,NULL,1,0,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(21,2,1,'2023-03-17',NULL,1,1,NULL,NULL,0,'Персональная заявка с веб сервиса'),(22,2,2,'2023-03-18','2023-03-14',1,1,NULL,39,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Fri Mar 31 00:00:00 YEKT 2023, время посещения: 00:00:00'),(23,2,3,'2023-03-19',NULL,1,1,NULL,34,0,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(24,2,2,'2023-03-19','2023-03-25',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 25 00:00:00 YEKT 2023, время посещения: ХХ.ХХ'),(25,2,2,'2023-03-19','2023-03-26',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sun Mar 26 00:00:00 YEKT 2023, время посещения: 0:0'),(26,2,2,'2023-03-19','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Wed Mar 01 00:00:00 YEKT 2023, время посещения: 00:00:00'),(27,2,2,'2023-03-19','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sun Mar 12 00:00:00 YEKT 2023, время посещения: 00:00:00'),(28,2,3,'2023-03-31',NULL,2,1,NULL,40,0,'Заявка на посещение объекта КИИ отклонена в связи с нарушением Федерального закона от 26.07.2017 № 187-ФЗ «О безопасности критической информационной инфраструктуры Российской Федерации»'),(29,2,1,'2023-03-31','2023-03-31',2,1,NULL,41,0,'Персональная заявка с веб сервиса'),(30,2,2,'2023-03-25','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sun Mar 19 00:00:00 YEKT 2023, время посещения: 00:00:00'),(31,2,2,'2023-03-31','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 18 00:00:00 YEKT 2023, время посещения: 00:00:00'),(32,2,2,'2023-03-14','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 25 00:00:00 YEKT 2023, время посещения: 00:00:00'),(33,2,2,'2023-03-14','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sun Mar 19 00:00:00 YEKT 2023, время посещения: 00:00:00'),(34,2,2,'2023-03-25','2023-03-14',1,1,NULL,34,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 25 00:00:00 YEKT 2023, время посещения: 00:00:00'),(35,2,2,'2023-03-17','2023-03-14',1,1,NULL,43,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sun Mar 19 00:00:00 YEKT 2023, время посещения: 01:00:00'),(36,2,1,'2023-03-17',NULL,1,1,NULL,34,0,'Персональная заявка с веб сервиса'),(37,2,1,'2023-03-17',NULL,1,1,NULL,34,0,'Персональная заявка с веб сервиса'),(38,2,1,'2023-03-17',NULL,1,1,NULL,34,0,'Персональная заявка с веб сервиса'),(39,2,2,'2023-03-11','2023-03-17',1,1,NULL,44,0,'Заявка на посещение объекта КИИ одобрена,  дата посещения: Sat Mar 25 00:00:00 YEKT 2023, время посещения: 00:00:00');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subdivisions`
--

DROP TABLE IF EXISTS `subdivisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subdivisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdivisions`
--

LOCK TABLES `subdivisions` WRITE;
/*!40000 ALTER TABLE `subdivisions` DISABLE KEYS */;
INSERT INTO `subdivisions` VALUES (1,'общий отдел'),(2,'охрана');
/*!40000 ALTER TABLE `subdivisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_purposes`
--

DROP TABLE IF EXISTS `visit_purposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit_purposes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_purposes`
--

LOCK TABLES `visit_purposes` WRITE;
/*!40000 ALTER TABLE `visit_purposes` DISABLE KEYS */;
INSERT INTO `visit_purposes` VALUES (1,'встреча'),(2,'экскурсия'),(3,'диагностика');
/*!40000 ALTER TABLE `visit_purposes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `patronymic` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `passport_series` varchar(4) NOT NULL,
  `passport_number` varchar(6) NOT NULL,
  `image_path` varchar(200) DEFAULT NULL,
  `passport_scan_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `is_in_black_list` tinyint(1) DEFAULT NULL,
  `black_list_reason` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (1,'Степанова','Радинка','Власовна','+7 (613) 272-60-62','Radinka100@yandex.ru','null','null','1986-10-18','0208','530509','null','null','Vlas86','b3uWS6#Thuvq',1,'Провер очка'),(2,'Шилов','Прохор','Герасимович','+7 (615) 594-77-66','Prohor156@list.ru',NULL,NULL,'1977-10-19','3036','796488',NULL,NULL,'Prohor156','zDdom}SIhWs?',0,NULL),(3,'Кононов','Юрин','Романович','+7 (784) 673-51-91','YUrin155@gmail.com',NULL,NULL,'1983-10-20','2747','790512',NULL,NULL,'YUrin155','u@m*~ACBCqNQ',0,NULL),(4,'Елисеева','Альбина','Николаевна','+7 (654) 864-77-46','Aljbina33@lenta.ru','null','null','1986-10-21','5241','213304','null','null','Aljbina33','Bu?BHCtwDFin',1,'причина'),(5,'Шарова','Клавдия','Макаровна','+7 (822) 525-82-40','Klavdiya113@live.com',NULL,NULL,'1986-10-22','8143','593309',NULL,NULL,'Klavdiya113','FjC#hNIJori}',0,NULL),(6,'Сидорова','Тамара','Григорьевна','+7 (334) 692-79-77','Tamara179@live.com',NULL,NULL,'1986-10-23','8143','905520',NULL,NULL,'Tamara179','TJxVqMXrbesI',0,NULL),(7,'Петухов','Тарас','Фадеевич','+7 (376) 220-62-51','Taras24@rambler.ru',NULL,NULL,'1986-10-24','1609','171096',NULL,NULL,'Taras24','07m5yspn3K~K',0,NULL),(8,'Родионов','Аркадий','Власович','+7 (491) 696-17-11','Arkadij123@inbox.ru',NULL,NULL,'1986-10-25','3841','642594',NULL,NULL,'Arkadij123','vk2N7lxX}ck%',0,NULL),(9,'Горшкова','Глафира','Валентиновна','+7 (553) 343-38-82','Glafira73@outlook.com',NULL,NULL,'1986-10-26','9170','402601',NULL,NULL,'Glafira73','Zz8POQlP}M4~',0,NULL),(10,'Кириллова','Гавриила','Яковна','+7 (648) 700-43-34','Gavriila68@msn.com',NULL,NULL,'1986-10-27','9438','379667',NULL,NULL,'Gavriila68','x4K5WthEe8ua',0,NULL),(11,'Овчинников','Кузьма','Ефимович','+7 (562) 866-15-27','Kuzjma124@yandex.ru',NULL,NULL,'1986-10-28','0766','647226',NULL,NULL,'Kuzjma124','OsByQJ}vYznW',0,NULL),(12,'Беляков','Роман','Викторович','+7 (595) 196-56-28','Roman89@gmail.com',NULL,NULL,'1986-10-29','2411','478305',NULL,NULL,'Roman89','Xd?xP$2yICcG',0,NULL),(13,'Лыткин','Алексей','Максимович','+7 (994) 353-29-52','Aleksej43@gmail.com',NULL,NULL,'1986-10-30','2383','259825',NULL,NULL,'Aleksej43','~c%PlTY0?qgl',0,NULL),(14,'Шубина','Надежда','Викторовна','+7 (736) 488-66-95','Nadezhda137@outlook.com',NULL,NULL,'1986-10-31','8844','708476',NULL,NULL,'Nadezhda137','QQ~0q~rXHb?p',0,NULL),(15,'Зиновьева','Бронислава','Викторовна','+7 (778) 565-12-18','Bronislava56@yahoo.com',NULL,NULL,'1986-11-01','6736','319423',NULL,NULL,'Bronislava56','LO}xyC~1S4l6',0,NULL),(16,'Самойлова','Таисия','Гермоновна','+7 (891) 555-81-44','Taisiya177@lenta.ru',NULL,NULL,'1999-04-05','5193','897719',NULL,NULL,'Taisiya177','R94YGT3XFjgD',0,NULL),(17,'Ситникова','Аделаида','Гермоновна','+7 (793) 736-70-31','Adelaida20@hotmail.com',NULL,NULL,'1999-04-03','7561','148016',NULL,NULL,'Adelaida20','LCY*{L*fEGYB',0,NULL),(18,'Исаев','Лев','Юлианович','+7 (675) 593-89-30','Lev131@rambler.ru',NULL,NULL,'1999-04-04','1860','680004',NULL,NULL,'Lev131','~?oj2Lh@S7*T',0,NULL),(19,'Никифоров','Даниил','Степанович','+7 (384) 358-77-82','Daniil198@bk.ru',NULL,NULL,'1999-04-05','4557','999958',NULL,NULL,'lzaihtvkdn','L2W#uo7z{EsO',0,NULL),(20,'Титова','Людмила','Якововна','+7 (221) 729-16-84','Lyudmila123@hotmail.com',NULL,NULL,'1999-04-06','7715','639425',NULL,NULL,'Lyudmila123','@8mk9M?NBAGj',0,NULL),(21,'Абрамова','Таисия','Дмитриевна','+7 (528) 312-18-20','Taisiya176@hotmail.com',NULL,NULL,'1999-04-07','7310','893510',NULL,NULL,'Taisiya176','~rIWfsnXA~7C',0,NULL),(22,'Кузьмина','Вера','Максимовна','+7 (598) 583-53-45','Vera195@list.ru',NULL,NULL,'1999-04-08','3537','982933',NULL,NULL,'Vera195','B|5v$2r$7luL',0,NULL),(23,'Мартынов','Яков','Ростиславович','+7 (546) 159-67-33','YAkov196@rambler.ru',NULL,NULL,'1999-04-09','1793','986063',NULL,NULL,'YAkov196','$6s5bggKP7aw',0,NULL),(24,'Евсеева','Нина','Павловна','+7 (833) 521-31-50','Nina145@msn.com',NULL,NULL,'1999-04-10','9323','745717',NULL,NULL,'Nina145','Uxy6RtBXIcpT',0,NULL),(25,'Голубев','Леонтий','Вячеславович','+7 (160) 527-57-41','Leontij161@mail.ru',NULL,NULL,'1999-04-11','1059','822077',NULL,NULL,'Leontij161','KkMY8yKw@oCa',0,NULL),(26,'Карпова','Серафима','Михаиловна','+7 (459) 930-91-70','Serafima169@yahoo.com',NULL,NULL,'1999-04-12','7034','858987',NULL,NULL,'Serafima169','gNe3I9}8J3Z@',0,NULL),(27,'Орехов','Сергей','Емельянович','+7 (669) 603-29-87','Sergej35@inbox.ru',NULL,NULL,'1999-04-13','3844','223682',NULL,NULL,'Sergej35','$39vc%ljqN%r',0,NULL),(28,'Исаев','Георгий','Павлович','+7 (678) 516-36-86','Georgij121@inbox.ru',NULL,NULL,'1999-04-14','4076','629809',NULL,NULL,'Georgij121','bbx5H}f*BC?w',0,NULL),(29,'Богданов','Елизар','Артемович','+7 (165) 768-30-97','Elizar30@yandex.ru',NULL,NULL,'1999-04-15','573','198559',NULL,NULL,'Elizar30','wJs1~r3RS~dr',0,NULL),(30,'Тихонова','Лана','Семеновна','+7 (478) 467-75-15','Lana117@outlook.com',NULL,NULL,'1999-04-16','8761','609740',NULL,NULL,'Lana117','mFoG$jcS3c4~',0,NULL),(31,'Легкий','Александр','Сергеевич','+7 (613) 272-60-62','Radinka100@yandex.ru','null','null','1986-10-18','0208','530509','null','null','Vlas86','b3uWS6#Thuvq',0,NULL),(32,'Легкий','Александр','Сергеевич','+7 (613) 272-60-62','Radinka100@yandex.ru','null','null','1986-10-18','0208','530509','null','null','Vlas86','b3uWS6#Thuvq',0,NULL),(33,'Легкий','Александр','Сергеевич','+7 (613) 272-60-62','Radinka100@yandex.ru','null','null','1986-10-18','0208','530509','null','null','Vlas86','b3uWS6#Thuvq',0,NULL),(34,'ÑÑÐ²','ÑÑÐ²','ÑÑÐ²','','ÑÐ³Ð´Ð´','','',NULL,'0000','000000','null','null','null','null',0,NULL),(35,'фыв','фыв','фыв','','тгдд','','',NULL,'0000','000000','null','null','null','null',0,NULL),(36,'фыв','фыв','фыв','','тгдд','','',NULL,'0000','000000','null','null','null','null',0,NULL),(37,'фыв','фыв','фыв','','тгдд','','',NULL,'0001','000000','null','null','null','null',0,NULL),(38,'Гранатовна','Валентина','Ибрагимовна','','тгдд','','',NULL,'1101','000000','null','null','null','null',0,NULL),(39,'qpiuwiouas','фыв','фыв','','тгдд','','',NULL,'0101','000000','null','null','null','null',0,NULL),(40,'фыв','фыв','фыв','890654436','тгдд','','',NULL,'8976','123650','null','null','null','null',0,NULL),(41,'фыв','ФЫВ','фыв','890654436','тгдд','','',NULL,'6543','123658','null','null','null','null',0,NULL),(42,'фыв','фыв','фыв','','тгдд','','',NULL,'8347','324787','null','null','null','null',0,NULL),(43,'ljlkj','фыв','фыв','','тгдд','','',NULL,'9082','000000','null','null','null','null',0,NULL),(44,'сос','сос','сосович','','тгдд','','','2023-03-08','8888','888888','null','null','null','null',1,'ахуел');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_id` int NOT NULL,
  `visit_date` date NOT NULL,
  `visit_start_time` time NOT NULL,
  `visit_end_time` time DEFAULT NULL,
  `actual_visit_time` time DEFAULT NULL,
  `subdivision_visit_end_time` time DEFAULT NULL,
  `subdivision_visit_start_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visits_FK` (`request_id`),
  CONSTRAINT `visits_FK` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,1,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(2,2,'2023-04-05','14:00:00',NULL,NULL,NULL,NULL),(3,3,'2023-04-05','14:00:00',NULL,NULL,NULL,NULL),(4,4,'2023-04-05','12:00:00','09:18:56','09:18:51','14:25:36','14:25:34'),(5,5,'2023-04-05','12:00:00',NULL,NULL,NULL,NULL),(6,6,'2023-04-05','14:00:00',NULL,NULL,NULL,NULL),(7,7,'2023-03-25','00:00:00',NULL,'15:03:49',NULL,'15:03:49'),(8,33,'2023-03-19','00:00:00',NULL,NULL,NULL,NULL),(9,34,'2023-03-25','00:00:00',NULL,NULL,NULL,NULL),(10,10,'2023-03-25','04:00:00','14:07:50','14:07:47','12:21:09','12:20:57'),(11,11,'2023-03-25','04:00:00','04:00:00','14:05:26',NULL,'14:05:26'),(12,9,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(13,10,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(14,11,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(15,12,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(16,13,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(17,14,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(18,15,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(19,16,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(20,17,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(21,18,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(22,19,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(23,20,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(24,21,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(25,22,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(26,23,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(27,24,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(28,25,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(29,26,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(30,27,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(31,28,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(32,29,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(33,30,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(34,31,'2023-03-25','04:00:00','04:00:00',NULL,NULL,NULL),(35,35,'2023-03-25','04:00:00','04:00:00','15:06:28',NULL,'15:03:49'),(41,39,'2023-03-25','00:00:00',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'user1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 10:53:55
