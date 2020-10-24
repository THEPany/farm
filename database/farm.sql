-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: farm
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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday_at` datetime NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (2,'Puerco','Pura Sangre','2020-08-19 20:37:00',NULL,'2020-08-20 04:37:26','2020-08-20 04:37:26',NULL),(3,'Anthony','Raza......','2020-08-02 00:00:00',NULL,'2020-09-13 03:36:10','2020-09-13 03:36:10',NULL);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childbirth_foods`
--

DROP TABLE IF EXISTS `childbirth_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `childbirth_foods` (
  `childbirth_id` bigint unsigned NOT NULL,
  `food_id` bigint unsigned NOT NULL,
  KEY `childbirth_foods_childbirth_id_index` (`childbirth_id`),
  KEY `childbirth_foods_food_id_index` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childbirth_foods`
--

LOCK TABLES `childbirth_foods` WRITE;
/*!40000 ALTER TABLE `childbirth_foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `childbirth_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childbirth_vaccinations`
--

DROP TABLE IF EXISTS `childbirth_vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `childbirth_vaccinations` (
  `childbirth_id` bigint unsigned NOT NULL,
  `vaccination_id` bigint unsigned NOT NULL,
  KEY `childbirth_vaccinations_childbirth_id_index` (`childbirth_id`),
  KEY `childbirth_vaccinations_vaccination_index` (`vaccination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childbirth_vaccinations`
--

LOCK TABLES `childbirth_vaccinations` WRITE;
/*!40000 ALTER TABLE `childbirth_vaccinations` DISABLE KEYS */;
INSERT INTO `childbirth_vaccinations` VALUES (4,1),(4,2);
/*!40000 ALTER TABLE `childbirth_vaccinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childbirths`
--

DROP TABLE IF EXISTS `childbirths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `childbirths` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL DEFAULT '0',
  `alive` int NOT NULL DEFAULT '0',
  `dead` int NOT NULL DEFAULT '0',
  `childbirth_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `animal_id` bigint unsigned NOT NULL,
  `females` int NOT NULL DEFAULT '0',
  `males` int NOT NULL DEFAULT '0',
  `average_weight` int unsigned DEFAULT NULL,
  `status` int unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `childbirths_animal_id_index` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childbirths`
--

LOCK TABLES `childbirths` WRITE;
/*!40000 ALTER TABLE `childbirths` DISABLE KEYS */;
INSERT INTO `childbirths` VALUES (3,10,8,2,'2020-08-29 20:41:00','2020-08-20 04:41:07','2020-09-12 23:10:03',NULL,2,0,0,NULL,1),(4,10,8,2,'2020-09-12 19:39:00','2020-09-13 03:39:29','2020-10-03 21:09:02',NULL,3,5,3,NULL,1);
/*!40000 ALTER TABLE `childbirths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),(17,3,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|min:5|max:25\"}}',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'{}',5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,1,1,0,0,0,'{}',1),(23,4,'name','text','Nombre',1,1,1,1,1,1,'{\"placeholder\":\"Nombre del animal\",\"validation\":{\"rule\":\"required|min:5|max:255\"}}',2),(24,4,'race','text','Raza',1,1,1,1,1,1,'{\"placeholder\":\"Raza del animal\",\"validation\":{\"rule\":\"required|min:5|max:255\"}}',3),(25,4,'birthday_at','date','Edad (Fecha estimada de nacimiento)',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|date\"}}',4),(26,4,'photo','image','Imagen',0,0,0,0,0,0,'{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',5),(27,4,'created_at','timestamp','Creado el',0,1,1,0,0,0,'{\"format\":\"%d %B %Y\"}',6),(28,4,'updated_at','timestamp','Actualizado el',0,1,1,0,0,0,'{\"format\":\"%d %B %Y\"}',7),(29,4,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(30,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(31,8,'quantity','number','Nacidos',1,1,1,1,0,1,'{\"validation\":{\"rule\":\"required|numeric|min:1|max:20\"}}',4),(32,8,'alive','number','Vivos',1,0,1,1,0,1,'{\"validation\":{\"rule\":\"required|numeric|max:20\"}}',7),(33,8,'dead','number','Muertos',1,0,1,1,0,1,'{\"validation\":{\"rule\":\"required|numeric|max:20\"}}',8),(34,8,'childbirth_at','timestamp','Fecha aproximada de nacimiento',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|date\"}}',3),(35,8,'created_at','timestamp','Creado el',0,1,1,0,0,0,'{\"format\":\"%d %B %Y\"}',9),(36,8,'updated_at','timestamp','Actualizado el',0,1,1,0,0,1,'{\"format\":\"%d %B %Y\"}',10),(37,8,'deleted_at','timestamp','Eliminado el',0,0,0,0,0,0,'{}',11),(40,8,'childbirth_belongsto_animal_relationship','relationship','Animal',0,1,1,1,1,1,'{\"model\":\"App\\\\Animal\",\"table\":\"animals\",\"type\":\"belongsTo\",\"column\":\"animal_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"animals\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(41,8,'animal_id','number','Animal Id',1,1,1,1,1,1,'{}',14),(48,8,'females','number','Hembras',1,0,1,1,0,1,'{\"validation\":{\"rule\":\"required|numeric|max:20\"}}',5),(49,8,'males','number','Machos',1,0,1,1,0,1,'{\"validation\":{\"rule\":\"required|numeric|max:20\"}}',6),(54,10,'id','text','Id',1,1,1,0,0,0,'{}',1),(55,10,'name','text','Vacuna/acción',0,1,1,1,1,0,'{\"placeholder\":\"Nombre del Vacuna\\/acci\\u00f3n\",\"validation\":{\"rule\":\"required|min:5|max:255\"}}',2),(56,10,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',4),(57,10,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'{}',5),(58,10,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',6),(64,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(65,14,'name','text','Name',0,1,1,1,1,0,'{\"placeholder\":\"Nombre del alimento\",\"validation\":{\"rule\":\"required|min:5|max:255\"}}',2),(66,14,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',4),(67,14,'updated_at','timestamp','Updated At',0,0,1,0,0,0,'{}',5),(68,14,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',6),(69,8,'average_weight','number','Peso Promedio',0,0,1,1,0,1,'{\"validation\":{\"rule\":\"nullable|numeric]min1|max:9000\"}}',12),(70,8,'status','select_dropdown','Estado',0,0,1,1,0,1,'{\"default\":\"1\",\"options\":{\"1\":\"Maternidad\",\"2\":\"Desarrollo\",\"3\":\"Crecimiento\",\"4\":\"Acto para la venta\"}}',13),(71,10,'apply_after','number','Suministra después del parto (en días)',0,1,1,1,1,0,'{\"placeholder\":\"Especificar los dias, para notificar\",\"validation\":{\"rule\":\"required|number|min:1|max:100\"}}',3),(72,14,'apply_after','number','Suministra después del parto (en días)',0,1,1,1,1,0,'{\"placeholder\":\"Especificar en dias\",\"validation\":{\"rule\":\"required|number|min:1|max:100\"}}',3);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2020-08-20 03:57:54','2020-08-20 03:57:54'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2020-08-20 03:57:55','2020-08-20 03:57:55'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-08-20 03:57:55','2020-09-27 01:55:06'),(4,'animals','animals','Animal','animales','voyager-paw','App\\Animal',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}','2020-08-20 04:13:36','2020-09-27 01:52:35'),(8,'childbirths','childbirths','Camada','Camadas','voyager-bubble-hear','App\\Childbirth',NULL,'App\\Http\\Controllers\\ChildbirthController',NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-08-20 04:30:20','2020-10-17 04:50:28'),(10,'vaccinations','vaccinations','Vacuna y acción','Vacunas y acciónes','voyager-lab','App\\Vaccination',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2020-09-27 00:59:50','2020-10-17 03:46:37'),(14,'foods','foods','Alimento','Alimentos','voyager-hotdog','App\\Food',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}','2020-10-03 21:30:10','2020-10-17 03:34:41');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'database','default','{\"uuid\":\"0270b300-fd11-4452-9fa0-9b79e89feb38\",\"displayName\":\"App\\\\Mail\\\\TakeActionToPigMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\TakeActionToPigMail\\\":27:{s:10:\\\"childbirth\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Childbirth\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:2:{i:0;s:12:\\\"vaccinations\\\";i:1;s:5:\\\"foods\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"model\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Food\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";s:5:\\\"admin\\\";s:7:\\\"address\\\";s:15:\\\"admin@admin.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}','ParseError: syntax error, unexpected \'class\' (T_CLASS), expecting variable (T_VARIABLE) or \'$\' in C:\\Code\\Farm\\storage\\framework\\views\\3ee05b4db5510e43f4f2fc301d36d4f12ea5244f.php:9\nStack trace:\n#0 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath()\n#1 C:\\Code\\Farm\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get()\n#2 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get()\n#3 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#4 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#5 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Markdown.php(64): Illuminate\\View\\View->render()\n#6 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(295): Illuminate\\Mail\\Markdown->render()\n#7 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(265): Illuminate\\Mail\\Mailable->buildMarkdownView()\n#8 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(171): Illuminate\\Mail\\Mailable->buildView()\n#9 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale()\n#11 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send()\n#12 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle()\n#13 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#14 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#16 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#17 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#18 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#19 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#20 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#22 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#23 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#24 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#25 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#26 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#27 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#28 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process()\n#30 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob()\n#31 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob()\n#32 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#35 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#37 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#38 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#39 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call()\n#40 C:\\Code\\Farm\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute()\n#41 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#42 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run()\n#43 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#44 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#45 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run()\n#46 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run()\n#47 C:\\Code\\Farm\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: syntax error, unexpected \'class\' (T_CLASS), expecting variable (T_VARIABLE) or \'$\' (View: C:\\Code\\Farm\\resources\\views\\childbirds\\action.blade.php) in C:\\Code\\Farm\\resources\\views/childbirds/action.blade.php:8\nStack trace:\n#0 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath()\n#1 C:\\Code\\Farm\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get()\n#2 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get()\n#3 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#4 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#5 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Markdown.php(64): Illuminate\\View\\View->render()\n#6 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(295): Illuminate\\Mail\\Markdown->render()\n#7 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(265): Illuminate\\Mail\\Mailable->buildMarkdownView()\n#8 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(171): Illuminate\\Mail\\Mailable->buildView()\n#9 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale()\n#11 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send()\n#12 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle()\n#13 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#14 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#16 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#17 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#18 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#19 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#20 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#21 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#22 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#23 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#24 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#25 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#26 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#27 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#28 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process()\n#30 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob()\n#31 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob()\n#32 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#35 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#37 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#38 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#39 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call()\n#40 C:\\Code\\Farm\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute()\n#41 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#42 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run()\n#43 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#44 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#45 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run()\n#46 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run()\n#47 C:\\Code\\Farm\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 {main}','2020-10-25 01:14:19'),(2,'database','default','{\"uuid\":\"09a4069f-0eee-4b43-9bb2-186cd3400b33\",\"displayName\":\"App\\\\Mail\\\\TakeActionToPigMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\TakeActionToPigMail\\\":27:{s:10:\\\"childbirth\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Childbirth\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:2:{i:0;s:12:\\\"vaccinations\\\";i:1;s:5:\\\"foods\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"model\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Food\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";s:5:\\\"admin\\\";s:7:\\\"address\\\";s:15:\\\"admin@admin.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}','ErrorException: Undefined property: Facade\\Ignition\\Views\\Engines\\CompilerEngine::$model in C:\\Code\\Farm\\storage\\framework\\views\\3ee05b4db5510e43f4f2fc301d36d4f12ea5244f.php:6\nStack trace:\n#0 C:\\Code\\Farm\\storage\\framework\\views\\3ee05b4db5510e43f4f2fc301d36d4f12ea5244f.php(6): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(41): include(\'C:\\\\Code\\\\Farm\\\\st...\')\n#2 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath()\n#3 C:\\Code\\Farm\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get()\n#4 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get()\n#5 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#6 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#7 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Markdown.php(64): Illuminate\\View\\View->render()\n#8 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(295): Illuminate\\Mail\\Markdown->render()\n#9 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(265): Illuminate\\Mail\\Mailable->buildMarkdownView()\n#10 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(171): Illuminate\\Mail\\Mailable->buildView()\n#11 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale()\n#13 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send()\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle()\n#15 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#16 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#20 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#21 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#24 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#28 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process()\n#32 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob()\n#33 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob()\n#34 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#37 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#41 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call()\n#42 C:\\Code\\Farm\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute()\n#43 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run()\n#45 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#47 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 C:\\Code\\Farm\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined property: Facade\\Ignition\\Views\\Engines\\CompilerEngine::$model (View: C:\\Code\\Farm\\resources\\views\\childbirds\\action.blade.php) in C:\\Code\\Farm\\resources\\views/childbirds/action.blade.php:6\nStack trace:\n#0 C:\\Code\\Farm\\resources\\views/childbirds/action.blade.php(6): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(41): include(\'C:\\\\Code\\\\Farm\\\\st...\')\n#2 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(57): Illuminate\\View\\Engines\\PhpEngine->evaluatePath()\n#3 C:\\Code\\Farm\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get()\n#4 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get()\n#5 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#6 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#7 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Markdown.php(64): Illuminate\\View\\View->render()\n#8 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(295): Illuminate\\Mail\\Markdown->render()\n#9 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(265): Illuminate\\Mail\\Mailable->buildMarkdownView()\n#10 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(171): Illuminate\\Mail\\Mailable->buildView()\n#11 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#12 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale()\n#13 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send()\n#14 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle()\n#15 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#16 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#20 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#21 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#24 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#28 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process()\n#32 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob()\n#33 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob()\n#34 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#37 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#41 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call()\n#42 C:\\Code\\Farm\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute()\n#43 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run()\n#45 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#47 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 C:\\Code\\Farm\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}','2020-10-25 01:17:08'),(3,'database','default','{\"uuid\":\"3abbd5aa-4e32-45ca-89a3-0b261cef2013\",\"displayName\":\"App\\\\Mail\\\\TakeActionToPigMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\TakeActionToPigMail\\\":27:{s:10:\\\"childbirth\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Childbirth\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:2:{i:0;s:12:\\\"vaccinations\\\";i:1;s:5:\\\"foods\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"model\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Food\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";s:5:\\\"admin\\\";s:7:\\\"address\\\";s:15:\\\"admin@admin.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}','Swift_TransportException: Cannot send message without a sender address in C:\\Code\\Farm\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:195\nStack trace:\n#0 C:\\Code\\Farm\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send()\n#1 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send()\n#2 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#3 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send()\n#4 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale()\n#6 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send()\n#7 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle()\n#8 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#9 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#13 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#14 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#15 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#17 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#18 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#19 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#20 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#21 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#22 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#23 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#24 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process()\n#25 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob()\n#26 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob()\n#27 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#28 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#29 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#30 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#34 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call()\n#35 C:\\Code\\Farm\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute()\n#36 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#37 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run()\n#38 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#40 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run()\n#41 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run()\n#42 C:\\Code\\Farm\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#43 {main}','2020-10-25 01:28:16'),(4,'database','default','{\"uuid\":\"c47758e2-e19f-4ac0-9d53-7b35965cb15c\",\"displayName\":\"App\\\\Mail\\\\TakeActionToPigMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:28:\\\"App\\\\Mail\\\\TakeActionToPigMail\\\":27:{s:10:\\\"childbirth\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Childbirth\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:2:{i:0;s:12:\\\"vaccinations\\\";i:1;s:5:\\\"foods\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"model\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Food\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";s:5:\\\"admin\\\";s:7:\\\"address\\\";s:15:\\\"admin@admin.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}','Swift_TransportException: Cannot send message without a sender address in C:\\Code\\Farm\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:195\nStack trace:\n#0 C:\\Code\\Farm\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(71): Swift_Transport_AbstractSmtpTransport->send()\n#1 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send()\n#2 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#3 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send()\n#4 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#5 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale()\n#6 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send()\n#7 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle()\n#8 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#9 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#13 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#14 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#15 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#17 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#18 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#19 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#20 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#21 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#22 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#23 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#24 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process()\n#25 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(265): Illuminate\\Queue\\Worker->runJob()\n#26 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->runNextJob()\n#27 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#28 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#29 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array()\n#30 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#32 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#33 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#34 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call()\n#35 C:\\Code\\Farm\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute()\n#36 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#37 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run()\n#38 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#39 C:\\Code\\Farm\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#40 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run()\n#41 C:\\Code\\Farm\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run()\n#42 C:\\Code\\Farm\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#43 {main}','2020-10-25 01:29:08');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `apply_after` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'Alimento 1','2020-10-03 21:45:35','2020-10-03 21:45:35',NULL,NULL);
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-08-20 03:58:00','2020-08-20 03:58:00','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2020-08-20 03:58:01','2020-08-30 02:37:25','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2020-08-20 03:58:01','2020-08-20 03:58:01','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2020-08-20 03:58:01','2020-08-20 03:58:01','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,5,'2020-08-20 03:58:01','2020-08-30 02:37:25',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2020-08-20 03:58:02','2020-08-30 02:37:25','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-08-20 03:58:02','2020-08-30 02:37:25','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-08-20 03:58:02','2020-08-30 02:37:25','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-08-20 03:58:02','2020-08-30 02:37:25','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,6,'2020-08-20 03:58:03','2020-08-30 02:37:25','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-08-20 03:58:18','2020-08-30 02:37:25','voyager.hooks',NULL),(12,1,'animales','','_self','voyager-paw','#000000',NULL,7,'2020-08-20 04:13:37','2020-08-30 03:46:46','voyager.animals.index','null'),(13,1,'Camadas','','_self','voyager-bubble-hear','#000000',NULL,8,'2020-08-20 04:30:20','2020-10-03 21:49:38','voyager.childbirths.index','null'),(15,1,'Vacunas y acciónes','','_self','voyager-lab','#000000',NULL,9,'2020-09-27 00:59:51','2020-10-17 03:47:17','voyager.vaccinations.index','null'),(18,1,'Alimentos','','_self','voyager-hotdog','#000000',NULL,10,'2020-10-03 21:30:10','2020-10-03 21:35:15','voyager.foods.index','null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2020-08-20 03:58:00','2020-08-20 03:58:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2020_10_24_211235_create_jobs_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(42,1),(43,1),(44,1),(45,1),(46,1),(57,1),(58,1),(59,1),(60,1),(61,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2020-08-20 03:58:05','2020-08-20 03:58:05'),(2,'browse_bread',NULL,'2020-08-20 03:58:05','2020-08-20 03:58:05'),(3,'browse_database',NULL,'2020-08-20 03:58:05','2020-08-20 03:58:05'),(4,'browse_media',NULL,'2020-08-20 03:58:06','2020-08-20 03:58:06'),(5,'browse_compass',NULL,'2020-08-20 03:58:06','2020-08-20 03:58:06'),(6,'browse_menus','menus','2020-08-20 03:58:06','2020-08-20 03:58:06'),(7,'read_menus','menus','2020-08-20 03:58:07','2020-08-20 03:58:07'),(8,'edit_menus','menus','2020-08-20 03:58:07','2020-08-20 03:58:07'),(9,'add_menus','menus','2020-08-20 03:58:07','2020-08-20 03:58:07'),(10,'delete_menus','menus','2020-08-20 03:58:08','2020-08-20 03:58:08'),(11,'browse_roles','roles','2020-08-20 03:58:08','2020-08-20 03:58:08'),(12,'read_roles','roles','2020-08-20 03:58:08','2020-08-20 03:58:08'),(13,'edit_roles','roles','2020-08-20 03:58:08','2020-08-20 03:58:08'),(14,'add_roles','roles','2020-08-20 03:58:08','2020-08-20 03:58:08'),(15,'delete_roles','roles','2020-08-20 03:58:08','2020-08-20 03:58:08'),(16,'browse_users','users','2020-08-20 03:58:08','2020-08-20 03:58:08'),(17,'read_users','users','2020-08-20 03:58:09','2020-08-20 03:58:09'),(18,'edit_users','users','2020-08-20 03:58:09','2020-08-20 03:58:09'),(19,'add_users','users','2020-08-20 03:58:09','2020-08-20 03:58:09'),(20,'delete_users','users','2020-08-20 03:58:09','2020-08-20 03:58:09'),(21,'browse_settings','settings','2020-08-20 03:58:09','2020-08-20 03:58:09'),(22,'read_settings','settings','2020-08-20 03:58:09','2020-08-20 03:58:09'),(23,'edit_settings','settings','2020-08-20 03:58:09','2020-08-20 03:58:09'),(24,'add_settings','settings','2020-08-20 03:58:09','2020-08-20 03:58:09'),(25,'delete_settings','settings','2020-08-20 03:58:10','2020-08-20 03:58:10'),(26,'browse_hooks',NULL,'2020-08-20 03:58:18','2020-08-20 03:58:18'),(27,'browse_animals','animals','2020-08-20 04:13:36','2020-08-20 04:13:36'),(28,'read_animals','animals','2020-08-20 04:13:36','2020-08-20 04:13:36'),(29,'edit_animals','animals','2020-08-20 04:13:36','2020-08-20 04:13:36'),(30,'add_animals','animals','2020-08-20 04:13:36','2020-08-20 04:13:36'),(31,'delete_animals','animals','2020-08-20 04:13:36','2020-08-20 04:13:36'),(32,'browse_childbirths','childbirths','2020-08-20 04:30:20','2020-08-20 04:30:20'),(33,'read_childbirths','childbirths','2020-08-20 04:30:20','2020-08-20 04:30:20'),(34,'edit_childbirths','childbirths','2020-08-20 04:30:20','2020-08-20 04:30:20'),(35,'add_childbirths','childbirths','2020-08-20 04:30:20','2020-08-20 04:30:20'),(36,'delete_childbirths','childbirths','2020-08-20 04:30:20','2020-08-20 04:30:20'),(42,'browse_vaccinations','vaccinations','2020-09-27 00:59:51','2020-09-27 00:59:51'),(43,'read_vaccinations','vaccinations','2020-09-27 00:59:51','2020-09-27 00:59:51'),(44,'edit_vaccinations','vaccinations','2020-09-27 00:59:51','2020-09-27 00:59:51'),(45,'add_vaccinations','vaccinations','2020-09-27 00:59:51','2020-09-27 00:59:51'),(46,'delete_vaccinations','vaccinations','2020-09-27 00:59:51','2020-09-27 00:59:51'),(57,'browse_foods','foods','2020-10-03 21:30:10','2020-10-03 21:30:10'),(58,'read_foods','foods','2020-10-03 21:30:10','2020-10-03 21:30:10'),(59,'edit_foods','foods','2020-10-03 21:30:10','2020-10-03 21:30:10'),(60,'add_foods','foods','2020-10-03 21:30:10','2020-10-03 21:30:10'),(61,'delete_foods','foods','2020-10-03 21:30:10','2020-10-03 21:30:10');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2020-08-20 03:58:04','2020-08-20 03:58:04'),(2,'user','Normal User','2020-08-20 03:58:04','2020-08-20 03:58:04');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'admin.pregnancy_days','Días de embarazo','10',NULL,'text',6,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','admin@admin.com','users/default.png',NULL,'$2y$10$pjx8HsN/Qmq4i6pqdNspy.B6s3XDn4jaBSZRt/UXuuj6yvPP9KX46','bfcIJMwM8gT1OjtBFwkKCIk5iYzMqot7WSiEZBTgUIHTvrRbMVlnwvpPiHLj',NULL,'2020-08-20 04:01:08','2020-08-20 04:01:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccinations`
--

DROP TABLE IF EXISTS `vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccinations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `apply_after` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccinations`
--

LOCK TABLES `vaccinations` WRITE;
/*!40000 ALTER TABLE `vaccinations` DISABLE KEYS */;
INSERT INTO `vaccinations` VALUES (1,'Vacuna 1','2020-09-27 01:00:05','2020-09-27 01:00:05',NULL,NULL),(2,'Vacuna 2','2020-09-27 01:00:18','2020-09-27 01:00:18',NULL,NULL);
/*!40000 ALTER TABLE `vaccinations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-24 17:34:43
