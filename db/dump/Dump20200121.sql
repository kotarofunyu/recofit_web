-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 0.0.0.0    Database: kochanapp_development
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-12-15 04:31:54','2019-12-15 04:31:54');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `training_record_id` int(11) DEFAULT NULL,
  `part` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (10,'','2019-12-24 14:18:05','2019-12-24 14:18:05',22,NULL),(18,'','2019-12-24 14:39:07','2019-12-24 14:39:07',30,NULL),(29,'','2019-12-25 14:09:21','2019-12-25 14:09:21',41,NULL),(31,'','2019-12-25 14:11:41','2019-12-25 14:11:41',43,NULL),(53,'','2019-12-25 14:26:39','2019-12-25 14:26:39',65,NULL),(55,'','2019-12-25 14:26:41','2019-12-25 14:26:41',67,NULL),(56,'','2019-12-25 14:26:43','2019-12-25 14:26:43',68,NULL),(57,'','2019-12-25 14:26:43','2019-12-25 14:26:43',69,NULL),(59,'aaa','2019-12-26 07:06:51','2019-12-26 07:06:51',62,NULL),(60,'ベンチプレス ','2019-12-26 07:08:12','2019-12-26 07:08:12',63,NULL),(62,'ベンチプレス ','2019-12-26 07:13:56','2019-12-26 07:13:56',65,NULL),(63,'ベンチプレス ','2019-12-26 08:06:02','2019-12-26 08:06:02',66,NULL),(64,'aaa','2019-12-26 08:17:01','2019-12-26 08:17:01',67,NULL),(65,'ベンチプレス ','2019-12-26 08:17:16','2019-12-26 08:17:16',68,NULL),(66,'ベンチプレス ','2019-12-26 08:19:40','2019-12-26 08:19:40',69,NULL),(67,'ベンチプレス ','2019-12-26 08:20:12','2019-12-26 08:20:12',70,NULL),(96,'ベンチプレス ','2020-01-12 15:39:59','2020-01-12 15:39:59',88,'大胸筋'),(97,'ダンベルフライ','2020-01-12 15:39:59','2020-01-12 15:39:59',88,'大胸筋'),(98,'プリーチャーカール','2020-01-12 15:39:59','2020-01-12 15:39:59',88,'上腕二頭筋'),(99,'ダンベルベンチプレス ','2020-01-13 11:05:35','2020-01-13 11:05:35',89,'大胸筋'),(100,'ベンチプレス ','2020-01-13 11:07:13','2020-01-13 11:07:13',90,'大胸筋'),(101,'ベンチプレス ','2020-01-13 13:30:19','2020-01-13 13:30:19',91,'大胸筋'),(102,'チンニング','2020-01-13 13:51:19','2020-01-13 13:51:19',92,'広背筋'),(103,'ベントオーバーロウ','2020-01-13 13:51:19','2020-01-13 13:51:19',92,'広背筋'),(104,'ラック・プル','2020-01-13 13:51:19','2020-01-13 13:51:19',92,'広背筋');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_names`
--

DROP TABLE IF EXISTS `menu_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_names` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_names`
--

LOCK TABLES `menu_names` WRITE;
/*!40000 ALTER TABLE `menu_names` DISABLE KEYS */;
INSERT INTO `menu_names` VALUES (1,'ベンチプレス ','2019-12-28 08:24:13','2019-12-28 08:24:13'),(2,'ダンベルベンチプレス ','2019-12-28 08:31:58','2019-12-28 08:31:58'),(3,'ダンベルフライ','2019-12-28 08:43:43','2019-12-28 08:43:43'),(4,'チンニング','2019-12-28 08:43:57','2019-12-28 08:43:57'),(5,'ベントオーバーロウ','2019-12-28 08:44:08','2019-12-28 08:44:08'),(6,'ラットプルダウン','2019-12-28 08:44:20','2019-12-28 08:44:20'),(7,'ロープーリーロウ','2019-12-28 08:44:27','2019-12-28 08:44:27'),(8,'ワンハンドダンベルロウ','2019-12-28 08:44:48','2019-12-28 08:44:48'),(9,'プリーチャーカール','2019-12-28 08:45:18','2019-12-28 08:45:18'),(10,'インクラインダンベルローイング','2020-01-09 12:24:35','2020-01-09 12:24:35'),(11,'EZバー・カール','2020-01-12 15:40:26','2020-01-12 15:40:26'),(12,'インクライン・ダンベルカール','2020-01-12 15:40:42','2020-01-12 15:40:42'),(13,'ケーブルクロスオーバー','2020-01-12 15:41:00','2020-01-12 15:41:00'),(14,'ラック・プル','2020-01-13 13:42:41','2020-01-13 13:42:41');
/*!40000 ALTER TABLE `menu_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20191215043119'),('20191220133221'),('20191220145032'),('20191220145120'),('20191220152253'),('20191220152955'),('20191222092149'),('20191223123831'),('20191223133216'),('20191223133903'),('20191223134101'),('20191223135935'),('20191226103225'),('20191228081247'),('20200107132529'),('20200108135352'),('20200112165054'),('20200113104652'),('20200114121221'),('20200114121801');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_data`
--

DROP TABLE IF EXISTS `set_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `set_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `weight` int(11) DEFAULT NULL,
  `rep` int(11) DEFAULT NULL,
  `set` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_data`
--

LOCK TABLES `set_data` WRITE;
/*!40000 ALTER TABLE `set_data` DISABLE KEYS */;
INSERT INTO `set_data` VALUES (18,90,1,1,96,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(19,78,10,1,96,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(20,78,8,1,96,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(21,78,6,1,96,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(22,14,10,2,97,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(23,20,15,1,98,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(24,25,15,1,98,'2020-01-12 15:39:59','2020-01-12 15:39:59'),(25,10,2,3,99,'2020-01-13 11:05:35','2020-01-13 11:05:35'),(26,100,1,1,100,'2020-01-13 11:07:13','2020-01-13 11:07:13'),(27,40,10,3,101,'2020-01-13 13:30:19','2020-01-13 13:30:19'),(28,58,10,3,102,'2020-01-13 13:51:19','2020-01-13 13:51:19'),(29,58,10,3,103,'2020-01-13 13:51:19','2020-01-13 13:51:19'),(30,80,10,2,104,'2020-01-13 13:51:19','2020-01-13 13:51:19'),(31,70,10,1,104,'2020-01-13 13:51:19','2020-01-13 13:51:19');
/*!40000 ALTER TABLE `set_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_records`
--

DROP TABLE IF EXISTS `training_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_records`
--

LOCK TABLES `training_records` WRITE;
/*!40000 ALTER TABLE `training_records` DISABLE KEYS */;
INSERT INTO `training_records` VALUES (88,'ベンチプレス マックス更新しました！\r\n90kg、ゆっくりおろしてブチ上げることができて、気持ちよかったです！\r\n頑張ります。これからも。','2020-01-12 15:39:59','2020-01-13 10:50:52',NULL,1),(89,'ログイン中のユーザーでできるかテスト','2020-01-13 11:05:35','2020-01-13 11:05:35',NULL,3),(90,'こうたろうでテスト！','2020-01-13 11:07:13','2020-01-13 11:07:13',NULL,1),(91,'テストユーザー','2020-01-13 13:30:19','2020-01-13 13:30:19',NULL,2),(92,'チンニング、肩幅よりちょっと広いくらいでやってみた。思ったよりいけたけど、60後半とかそろそろセットで組めるようになりたい・・・。\r\nベントオーバーロウは久しぶりだった。姿勢の維持だけで結構大変かも。\r\nラックプルは効いてる感覚を掴めなかったかな〜。\r\n腹筋はレッグレイズだけでつりそう。弱すぎるよなぁ...\r\n着実に頑張ります。','2020-01-13 13:51:19','2020-01-13 13:51:19',NULL,1);
/*!40000 ALTER TABLE `training_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `introduction` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kotaro','kotarofunyu@gmail.com','$2a$10$ihoBXRj9jQW0m/DnIkNHg.VMTXCn48EqDG42uYD23FDFwLZdlzR0i',NULL,'2020-01-13 06:59:49','2020-01-13 06:59:49',NULL),(2,'test','test@test.com','$2a$10$/xTZvJwC2/m3RY7wK0NIB.FqMbv2pbb7yVfm5OfBczY57PjVEgnPi',NULL,'2020-01-13 07:23:40','2020-01-13 07:23:40',NULL),(3,'test1','test1@test.com','$2a$10$pYAokjVI9F3PT6r7x1.f3uHHa0iIupS5BwLZyRqM4HBG5IGAHyDKC',NULL,'2020-01-13 10:44:15','2020-01-13 10:44:15',NULL);
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

-- Dump completed on 2020-01-21 23:32:13
