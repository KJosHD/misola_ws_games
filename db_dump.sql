-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: misola_ws_games
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`username`,`password`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Josh','Josh@gmail.com','$2y$12$NR53xmcyMGsisrPCK8hOau2jGj7ouQPZtVTT67nkdV7r3KMNv04.K','2025-10-29 09:58:16','2025-10-29 09:58:16');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-boost.roster.scan','a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:7:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.36.0\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.7\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.7\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.1\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.3.1\";s:6:\"\0*\0dev\";b:1;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.25.1\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.47.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.1\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PEST\";s:14:\"\0*\0packageName\";s:12:\"pestphp/pest\";s:10:\"\0*\0version\";s:5:\"4.1.2\";s:6:\"\0*\0dev\";b:1;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"12.4.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:6:\"12.4.0\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1761726848;}',1761813248);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `author_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  KEY `games_users_fk1_idx` (`author_id`),
  CONSTRAINT `games_users_fk1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Space Adventure','An exciting journey through the cosmos where you pilot a spaceship and explore distant galaxies.','/thumbnails/space-adventure.jpg','space-adventure','/games/space-adventure',1,'2024-03-01 02:00:00','2024-03-01 02:00:00','0000-00-00 00:00:00'),(2,'Puzzle Master','Challenge your mind with hundreds of unique puzzles that increase in difficulty.','/thumbnails/puzzle-master.jpg','puzzle-master','/games/puzzle-master',2,'2024-03-05 03:30:00','2024-03-05 03:30:00','0000-00-00 00:00:00'),(3,'Racing Thunder','High-speed racing action on exotic tracks around the world.','/thumbnails/racing-thunder.jpg','racing-thunder','/games/racing-thunder',3,'2024-03-10 06:20:00','2024-03-10 06:20:00','0000-00-00 00:00:00'),(4,'Fantasy Quest','Embark on an epic RPG adventure in a medieval fantasy world.','/thumbnails/fantasy-quest.jpg','fantasy-quest','/games/fantasy-quest',1,'2024-03-15 01:45:00','2024-03-15 01:45:00','0000-00-00 00:00:00'),(5,'Tower Defense Pro','Defend your kingdom against waves of enemies with strategic tower placement.','/thumbnails/tower-defense-pro.jpg','tower-defense-pro','/games/tower-defense-pro',4,'2024-03-20 08:00:00','2024-03-20 08:00:00','0000-00-00 00:00:00'),(6,'Word Wizard','Expand your vocabulary while having fun with word-based challenges.','/thumbnails/word-wizard.jpg','word-wizard','/games/word-wizard',2,'2024-03-25 05:15:00','2024-03-25 05:15:00','0000-00-00 00:00:00'),(7,'Ocean Explorer','Dive deep into the ocean and discover marine life and hidden treasures.','/thumbnails/ocean-explorer.jpg','ocean-explorer','/games/ocean-explorer',6,'2024-04-01 02:30:00','2024-04-01 02:30:00','0000-00-00 00:00:00'),(8,'Zombie Survival','Survive against hordes of zombies in this intense action game.','/thumbnails/zombie-survival.jpg','zombie-survival','/games/zombie-survival',3,'2024-04-05 07:45:00','2024-04-05 07:45:00','0000-00-00 00:00:00'),(9,'Math Challenge','Sharpen your math skills with fun and engaging arithmetic challenges.','/thumbnails/math-challenge.jpg','math-challenge','/games/math-challenge',4,'2024-04-10 03:00:00','2024-04-10 03:00:00','0000-00-00 00:00:00'),(10,'Platform Jumper','Classic platformer action with challenging levels and power-ups.','/thumbnails/platform-jumper.jpg','platform-jumper','/games/platform-jumper',7,'2024-04-15 06:30:00','2024-04-15 06:30:00','0000-00-00 00:00:00'),(11,'Strategy Empire','Build and manage your empire in this deep strategy game.','/thumbnails/strategy-empire.jpg','strategy-empire','/games/strategy-empire',1,'2024-04-20 01:15:00','2024-04-20 01:15:00','0000-00-00 00:00:00'),(12,'Mystery Mansion','Solve mysteries and uncover secrets in a haunted mansion.','/thumbnails/mystery-mansion.jpg','mystery-mansion','/games/mystery-mansion',8,'2024-04-25 08:45:00','2024-04-25 08:45:00','0000-00-00 00:00:00'),(13,'Sports Arena','Compete in various sports events and become a champion.','/thumbnails/sports-arena.jpg','sports-arena','/games/sports-arena',3,'2024-05-01 04:00:00','2024-05-01 04:00:00','0000-00-00 00:00:00'),(14,'Cooking Fever','Run your own restaurant and serve delicious dishes to customers.','/thumbnails/cooking-fever.jpg','cooking-fever','/games/cooking-fever',9,'2024-05-05 02:20:00','2024-05-05 02:20:00','0000-00-00 00:00:00'),(15,'Ninja Warrior','Master martial arts and defeat enemies with stealth and skill.','/thumbnails/ninja-warrior.jpg','ninja-warrior','/games/ninja-warrior',6,'2024-05-10 07:30:00','2024-05-10 07:30:00','0000-00-00 00:00:00'),(16,'Card Battle','Collect cards and battle opponents in strategic card game matches.','/thumbnails/card-battle.jpg','card-battle','/games/card-battle',2,'2024-05-15 05:45:00','2024-05-15 05:45:00','0000-00-00 00:00:00'),(17,'Farm Simulator','Manage your own farm, grow crops, and raise animals.','/thumbnails/farm-simulator.jpg','farm-simulator','/games/farm-simulator',10,'2024-05-20 03:15:00','2024-05-20 03:15:00','0000-00-00 00:00:00'),(18,'Space Invaders X','Classic arcade action with modern graphics and gameplay.','/thumbnails/space-invaders-x.jpg','space-invaders-x','/games/space-invaders-x',7,'2024-05-25 06:00:00','2024-05-25 06:00:00','0000-00-00 00:00:00'),(19,'Memory Match','Test your memory with increasingly difficult matching challenges.','/thumbnails/memory-match.jpg','memory-match','/games/memory-match',4,'2024-06-01 02:45:00','2024-06-01 02:45:00','0000-00-00 00:00:00'),(20,'Dragon Quest','Become a dragon rider and save the kingdom from evil forces.','/thumbnails/dragon-quest.jpg','dragon-quest','/games/dragon-quest',1,'2024-06-05 08:20:00','2024-06-05 08:20:00','0000-00-00 00:00:00'),(21,'Chess Master','Play chess against AI opponents of varying difficulty levels.','/thumbnails/chess-master.jpg','chess-master','/games/chess-master',8,'2024-06-10 04:30:00','2024-06-10 04:30:00','0000-00-00 00:00:00'),(22,'Block Breaker','Break blocks and clear levels in this addictive puzzle game.','/thumbnails/block-breaker.jpg','block-breaker','/games/block-breaker',9,'2024-06-15 01:50:00','2024-06-15 01:50:00','0000-00-00 00:00:00'),(23,'Adventure Island','Explore a tropical island filled with treasures and dangers.','/thumbnails/adventure-island.jpg','adventure-island','/games/adventure-island',6,'2024-06-20 07:10:00','2024-06-20 07:10:00','0000-00-00 00:00:00'),(24,'Trivia Master','Test your knowledge across various categories in this trivia game.','/thumbnails/trivia-master.jpg','trivia-master','/games/trivia-master',2,'2024-06-25 03:40:00','2024-06-25 03:40:00','0000-00-00 00:00:00'),(25,'Battle Royale','Last player standing wins in this intense multiplayer battle game.','/thumbnails/battle-royale.jpg','battle-royale','/games/battle-royale',3,'2024-07-01 06:55:00','2024-07-01 06:55:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `game_id` bigint unsigned NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id_idx` (`game_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `game_id` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (1,7,15,'2025-11-19 08:45:10',79),(2,10,24,'2025-11-19 08:45:10',70),(3,9,1,'2025-11-19 08:45:10',22),(4,4,14,'2025-11-19 08:45:10',35),(5,9,21,'2025-11-19 08:45:10',4),(6,10,20,'2025-11-19 08:45:11',52),(7,8,16,'2025-11-19 08:45:11',9),(8,5,6,'2025-11-19 08:45:11',42),(9,8,3,'2025-11-19 08:45:11',82),(10,4,19,'2025-11-19 08:45:11',75),(11,6,16,'2025-11-19 08:45:11',93),(12,7,2,'2025-11-19 08:45:11',38),(13,9,18,'2025-11-19 08:45:11',11),(14,3,20,'2025-11-19 08:45:11',45),(15,1,2,'2025-11-19 08:45:12',94),(16,2,18,'2025-11-19 08:45:12',90),(17,7,17,'2025-11-19 08:45:12',23),(18,5,12,'2025-11-19 08:45:12',4),(19,3,17,'2025-11-19 08:45:12',91),(20,6,23,'2025-11-19 08:45:12',27),(21,8,12,'2025-11-26 07:33:41',48),(22,5,18,'2025-11-26 07:33:41',51),(23,2,2,'2025-11-26 07:33:41',48),(24,9,1,'2025-11-26 07:33:41',13),(25,7,17,'2025-11-26 07:33:41',82),(26,8,25,'2025-11-26 07:33:41',99),(27,6,16,'2025-11-26 07:33:41',87),(28,2,9,'2025-11-26 07:33:42',67),(29,1,13,'2025-11-26 07:33:42',75),(30,3,14,'2025-11-26 07:33:42',63),(31,10,19,'2025-11-26 07:33:42',38),(32,1,16,'2025-11-26 07:33:42',42),(33,2,15,'2025-11-26 07:33:42',3),(34,6,10,'2025-11-26 07:33:43',48),(35,9,10,'2025-11-26 07:33:43',44),(36,10,3,'2025-11-26 07:33:43',51),(37,4,16,'2025-11-26 07:33:43',66),(38,5,23,'2025-11-26 07:33:43',89),(39,1,17,'2025-11-26 07:33:43',36),(40,8,8,'2025-11-26 07:33:43',32),(41,7,11,'2025-11-26 07:33:43',72),(42,9,8,'2025-11-26 07:33:43',75),(43,4,5,'2025-11-26 07:33:44',90),(44,7,3,'2025-11-26 07:33:44',46),(45,3,9,'2025-11-26 07:33:44',23),(46,7,1,'2025-11-26 07:33:44',96),(47,9,22,'2025-11-26 07:33:44',62),(48,8,22,'2025-11-26 07:33:44',63),(49,7,8,'2025-11-26 07:33:44',38),(50,8,3,'2025-11-26 07:33:44',99),(51,2,2,'2025-11-26 07:33:44',57),(52,8,10,'2025-11-26 07:33:44',3),(53,8,15,'2025-11-26 07:33:45',34),(54,7,16,'2025-11-26 07:33:45',97),(55,2,10,'2025-11-26 07:33:45',32),(56,3,9,'2025-11-26 07:33:45',61),(57,10,5,'2025-11-26 07:33:45',43),(58,3,15,'2025-11-26 07:33:45',36),(59,7,4,'2025-11-26 07:33:45',16),(60,4,17,'2025-11-26 07:33:45',18),(61,9,1,'2025-11-26 07:33:46',70),(62,6,13,'2025-11-26 07:33:46',92),(63,3,20,'2025-11-26 07:33:46',94),(64,5,13,'2025-11-26 07:33:46',12),(65,5,19,'2025-11-26 07:33:47',90),(66,9,24,'2025-11-26 07:33:47',68),(67,3,11,'2025-11-26 07:33:47',55),(68,8,9,'2025-11-26 07:33:47',4),(69,2,23,'2025-11-26 07:33:47',76),(70,4,1,'2025-11-26 07:33:47',7),(71,1,9,'2025-11-26 07:33:47',29),(72,7,4,'2025-11-26 07:33:47',35),(73,7,15,'2025-11-26 07:33:47',94),(74,10,10,'2025-11-26 07:33:47',76),(75,1,2,'2025-11-26 07:33:47',24),(76,9,24,'2025-11-26 07:33:48',87),(77,9,24,'2025-11-26 07:33:48',39),(78,4,23,'2025-11-26 07:33:48',54),(79,4,20,'2025-11-26 07:33:48',19),(80,4,22,'2025-11-26 07:33:48',96),(81,10,19,'2025-11-26 07:33:48',88),(82,7,20,'2025-11-26 07:33:48',21),(83,7,25,'2025-11-26 07:33:48',61),(84,3,13,'2025-11-26 07:33:48',96),(85,7,11,'2025-11-26 07:33:48',73),(86,4,7,'2025-11-26 07:33:49',87),(87,7,12,'2025-11-26 07:33:49',9),(88,5,4,'2025-11-26 07:33:49',23),(89,10,23,'2025-11-26 07:33:49',3),(90,7,19,'2025-11-26 07:33:49',77),(91,5,1,'2025-11-26 07:33:49',43),(92,6,2,'2025-11-26 07:33:49',35),(93,9,13,'2025-11-26 07:33:49',92),(94,9,3,'2025-11-26 07:33:49',97),(95,6,13,'2025-11-26 07:33:49',91),(96,3,13,'2025-11-26 07:33:49',23),(97,3,3,'2025-11-26 07:33:50',33),(98,1,1,'2025-11-26 07:33:50',52),(99,2,17,'2025-11-26 07:33:50',69),(100,5,4,'2025-11-26 07:33:50',62),(101,7,16,'2025-11-26 07:33:50',70),(102,8,1,'2025-11-26 07:33:50',69),(103,2,15,'2025-11-26 07:33:50',8),(104,10,8,'2025-11-26 07:33:50',72),(105,4,6,'2025-11-26 07:33:50',2),(106,2,23,'2025-11-26 07:33:51',21),(107,8,23,'2025-11-26 07:33:51',49),(108,5,14,'2025-11-26 07:33:51',77),(109,8,14,'2025-11-26 07:33:51',20),(110,9,23,'2025-11-26 07:33:51',16),(111,2,9,'2025-11-26 07:33:51',18),(112,2,3,'2025-11-26 07:33:51',68),(113,5,13,'2025-11-26 07:33:51',38),(114,9,11,'2025-11-26 07:33:51',44),(115,8,12,'2025-11-26 07:33:51',46),(116,10,6,'2025-11-26 07:33:52',63),(117,6,16,'2025-11-26 07:33:52',17),(118,9,4,'2025-11-26 07:33:52',49),(119,6,23,'2025-11-26 07:33:52',100),(120,1,11,'2025-11-26 07:33:52',4),(121,4,20,'2025-11-26 07:33:52',76),(122,10,15,'2025-11-26 07:33:52',76),(123,9,8,'2025-11-26 07:33:52',83),(124,3,17,'2025-11-26 07:33:52',33),(125,4,16,'2025-11-26 07:33:52',27),(126,8,19,'2025-11-26 07:33:52',47),(127,9,15,'2025-11-26 07:33:53',11),(128,1,2,'2025-11-26 07:33:53',98),(129,3,14,'2025-11-26 07:33:53',3),(130,2,4,'2025-11-26 07:33:53',41),(131,1,5,'2025-11-26 07:33:53',97),(132,5,6,'2025-11-26 07:33:53',7),(133,9,21,'2025-11-26 07:33:53',91),(134,7,1,'2025-11-26 07:33:53',97),(135,8,20,'2025-11-26 07:33:53',2),(136,4,13,'2025-11-26 07:33:53',77),(137,2,18,'2025-11-26 07:33:54',68),(138,5,16,'2025-11-26 07:33:54',16),(139,5,13,'2025-11-26 07:33:54',59),(140,2,22,'2025-11-26 07:33:54',91),(141,10,6,'2025-11-26 07:33:54',65),(142,9,3,'2025-11-26 07:33:54',13),(143,10,16,'2025-11-26 07:33:54',84),(144,7,19,'2025-11-26 07:33:54',5),(145,10,24,'2025-11-26 07:33:54',46),(146,5,5,'2025-11-26 07:33:55',82),(147,2,16,'2025-11-26 07:33:55',98),(148,4,20,'2025-11-26 07:33:55',2),(149,4,20,'2025-11-26 07:33:55',20),(150,10,18,'2025-11-26 07:33:55',29),(151,6,4,'2025-11-26 07:33:55',39),(152,10,12,'2025-11-26 07:33:55',10),(153,5,11,'2025-11-26 07:33:55',96),(154,10,8,'2025-11-26 07:33:56',59),(155,1,17,'2025-11-26 07:33:56',59),(156,10,20,'2025-11-26 07:33:56',21),(157,10,3,'2025-11-26 07:33:56',62),(158,5,25,'2025-11-26 07:33:56',42),(159,10,24,'2025-11-26 07:33:56',18),(160,6,15,'2025-11-26 07:33:56',64),(161,10,15,'2025-11-26 07:33:56',18),(162,2,21,'2025-11-26 07:33:57',95),(163,9,1,'2025-11-26 07:33:57',55),(164,5,13,'2025-11-26 07:33:57',5),(165,6,6,'2025-11-26 07:33:57',93),(166,9,18,'2025-11-26 07:33:57',88),(167,9,1,'2025-11-26 07:33:57',45),(168,1,4,'2025-11-26 07:33:57',9),(169,10,22,'2025-11-26 07:33:57',44),(170,10,25,'2025-11-26 07:33:57',30),(171,9,21,'2025-11-26 07:33:57',24),(172,7,24,'2025-11-26 07:33:58',33),(173,1,11,'2025-11-26 07:33:58',5),(174,4,25,'2025-11-26 07:33:58',53),(175,1,20,'2025-11-26 07:33:58',74),(176,1,12,'2025-11-26 07:33:58',69),(177,10,20,'2025-11-26 07:33:58',53),(178,2,21,'2025-11-26 07:33:58',24),(179,5,12,'2025-11-26 07:33:59',18),(180,10,19,'2025-11-26 07:33:59',3),(181,4,20,'2025-11-26 07:33:59',79),(182,1,12,'2025-11-26 07:33:59',73),(183,5,1,'2025-11-26 07:33:59',40),(184,9,4,'2025-11-26 07:33:59',13),(185,10,24,'2025-11-26 07:33:59',97),(186,9,11,'2025-11-26 07:33:59',43),(187,7,15,'2025-11-26 07:33:59',25),(188,7,3,'2025-11-26 07:33:59',83),(189,4,21,'2025-11-26 07:34:00',48),(190,4,15,'2025-11-26 07:34:00',59),(191,6,8,'2025-11-26 07:34:00',39),(192,2,4,'2025-11-26 07:34:00',3),(193,3,13,'2025-11-26 07:34:00',1),(194,3,6,'2025-11-26 07:34:00',88),(195,5,24,'2025-11-26 07:34:00',36),(196,8,23,'2025-11-26 07:34:01',71),(197,3,9,'2025-11-26 07:34:01',34),(198,1,14,'2025-11-26 07:34:01',56),(199,8,25,'2025-11-26 07:34:01',58),(200,9,1,'2025-11-26 07:34:01',21),(201,8,5,'2025-11-26 07:34:01',35),(202,8,18,'2025-11-26 07:34:01',89),(203,5,21,'2025-11-26 07:34:01',78),(204,2,5,'2025-11-26 07:34:01',92),(205,5,13,'2025-11-26 07:34:02',98),(206,6,25,'2025-11-26 07:34:02',24),(207,9,5,'2025-11-26 07:34:02',54),(208,6,10,'2025-11-26 07:34:02',22),(209,8,25,'2025-11-26 07:34:02',58),(210,1,11,'2025-11-26 07:34:02',83),(211,10,19,'2025-11-26 07:34:02',29),(212,9,12,'2025-11-26 07:34:02',41),(213,9,1,'2025-11-26 07:34:02',8),(214,3,20,'2025-11-26 07:34:02',21),(215,4,20,'2025-11-26 07:34:03',44),(216,2,21,'2025-11-26 07:34:03',75),(217,2,16,'2025-11-26 07:34:03',11),(218,9,23,'2025-11-26 07:34:03',69),(219,2,12,'2025-11-26 07:34:03',47),(220,6,13,'2025-11-26 07:34:03',3);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('AwrzPUCuQZlqpyU1nE2W7G4DC8PQvBmFOqdiUVPH',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWFlU3ZCVExoY2pmaXJEbVZvSFlBS0FlaWpidFU5NEVTdlNPZjJVNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9nYW1lcyI7czo1OiJyb3V0ZSI7czoxNzoiYWRtaW4uZ2FtZXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1764139729),('lmzBU55ysFjL1ecaRj4dRXWN35mPaCmELqqwY7ff',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVA1QlBhc2tVb0VhSmNGSkhMOFVhQk9oNzlzcTFVRlZyTEZrOEd6YyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91c2VycyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1764139357),('oIKwRwrbZ6uVUlWDPE6NsccTG89GDjNJMSyNeYCE',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:141.0) Gecko/20100101 Firefox/141.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGRxZEE4NXgybDBXRGpMZ1VuTURvdHR4QVVCR1NOWGRlYUtTZll4NCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91c2VycyI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1764142459);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_blocked` tinyint DEFAULT '0',
  `block_reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'johndoe','john.doe@example.com','2024-02-01 02:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-20 07:30:00','2024-02-01 01:00:00','2025-10-20 07:30:00'),(2,'sarahsmith','sarah.smith@example.com','2024-02-05 03:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-24 02:15:00','2024-02-05 02:00:00','2025-10-24 02:15:00'),(3,'mikejohnson','mike.johnson@example.com','2024-03-10 06:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-23 10:45:00','2024-03-10 05:00:00','2025-10-23 10:45:00'),(4,'emilychen','emily.chen@example.com','2024-03-15 01:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-25 04:00:00','2024-03-15 00:00:00','2025-10-25 04:00:00'),(5,'davidwilson','david.wilson@example.com','2024-04-01 08:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',1,'You have been blocked for spamming.','0000-00-00 00:00:00','2024-04-01 07:00:00','2024-08-15 02:00:00'),(6,'lisagarcia','lisa.garcia@example.com','2024-04-20 02:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-26 00:30:00','2024-04-20 01:00:00','2025-10-26 00:30:00'),(7,'robertlee','robert.lee@example.com','2024-05-05 04:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-22 08:20:00','2024-05-05 03:00:00','2025-10-22 08:20:00'),(8,'jenniferkim','jennifer.kim@example.com','2024-06-10 07:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-21 06:10:00','2024-06-10 06:00:00','2025-10-21 06:10:00'),(9,'chrismartinez','chris.martinez@example.com','2024-07-01 05:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-19 03:45:00','2024-07-01 04:00:00','2025-10-19 03:45:00'),(10,'jessicabrown','jessica.brown@example.com','2024-08-15 03:00:00','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','',0,'','2025-10-18 01:30:00','2024-08-15 02:00:00','2025-10-18 01:30:00');
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

-- Dump completed on 2025-11-26 15:35:07
