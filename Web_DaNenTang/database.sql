-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'TmJR485pmSZvwNXXEVRItDxrEY5cRGbW',1,'2023-05-02 21:08:11','2023-05-02 21:08:11','2023-05-02 21:08:11'),(2,2,'Gc1O9PoOehpyrzxnmAIaRiv3ABRwrpx6',1,'2023-05-02 21:08:11','2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2028-05-03 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(2,'Make your Breakfast','2028-05-03 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(3,'The best Organic','2028-05-03 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(4,'Bring nature into your home','2028-05-03 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(5,'Delivered to your home','2028-05-03 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(6,'Save 17% on Oganic Juice','2028-05-03 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(7,'Everyday Fresh & Clean with Our Products','2028-05-03 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(8,'The best Organic Products Online','2028-05-03 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(9,'Everyday Fresh with Our Products','2028-05-03 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(10,'100% guaranteed all Fresh items','2028-05-03 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(11,'Special grocery sale off this month','2028-05-03 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1),(12,'Enjoy 15% OFF for all vegetable and fruit','2028-05-03 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2023-05-02 21:08:12','2023-05-02 21:08:12',1);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Qui atque quas in vero ut. Nostrum est nemo qui qui culpa ut. Vero sequi dolores esse autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(2,'Fashion',0,'Recusandae autem non perferendis. Labore repudiandae quia ut sapiente. Illum ipsam laborum placeat illum laudantium. Ut rem officiis magni quia qui debitis delectus. Ut voluptas animi cum iste quo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(3,'Electronic',0,'Nesciunt aliquam laudantium similique excepturi ut alias et. Blanditiis nemo et ad eius et in dolor. Inventore quod ut id natus eum eum ipsa.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(4,'Commercial',0,'Qui molestiae sequi cum magnam possimus. Soluta quisquam qui sapiente iure qui. Perferendis corporis harum libero placeat ea voluptas atque deserunt. Saepe et beatae delectus eaque ut ut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2023-05-02 21:07:59','2023-05-02 21:07:59');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(2,'EUR','€',0,2,1,0,0.84,'2023-05-02 21:07:59','2023-05-02 21:07:59'),(3,'VND','₫',0,0,2,0,23203,'2023-05-02 21:07:59','2023-05-02 21:07:59');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Jewell Treutel','customer@botble.com','+19844227197','SJ','Oregon','North Mallieport','181 Keenan Camp',1,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','57131-5294'),(2,'Jewell Treutel','customer@botble.com','+18282415942','AO','Texas','New Tressiestad','22755 Clara Port',1,0,'2023-05-02 21:08:07','2023-05-02 21:08:07','93449'),(3,'William Gerhold','vendor@botble.com','+15598149441','ER','West Virginia','East Hassanberg','27822 Pacocha Center Suite 472',2,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','19511-8675'),(4,'William Gerhold','vendor@botble.com','+12014168422','MU','Massachusetts','Pagacberg','5075 Raynor Cove',2,0,'2023-05-02 21:08:07','2023-05-02 21:08:07','35392'),(5,'Prof. Gerry Armstrong II','haley.autumn@example.net','+17797682603','LI','Nevada','Millerview','798 Hanna Crossroad',3,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','14743'),(6,'Granville Johnston','pietro.hintz@example.org','+15803749849','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',4,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','37193-2808'),(7,'Retta Olson','bauch.marcel@example.net','+13858528959','MU','Missouri','Kiehnmouth','58485 White Estate',5,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','21498-6258'),(8,'Jaron Dibbert','okuneva.gerda@example.com','+18208417718','SJ','Ohio','West Brennontown','9749 Zetta Light Suite 682',6,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','47114-8644'),(9,'Prof. Santa Spinka','jkonopelski@example.com','+13396517190','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',7,1,'2023-05-02 21:08:07','2023-05-02 21:08:07','02595'),(10,'Alisha Fay','dallas.cormier@example.net','+13462931421','PF','Oklahoma','Emmettville','87320 Grady Inlet',8,1,'2023-05-02 21:08:08','2023-05-02 21:08:08','65318-5940'),(11,'General Roob DDS','minerva78@example.com','+17184618317','GQ','Florida','Maudside','307 Emmerich Pine Apt. 080',9,1,'2023-05-02 21:08:08','2023-05-02 21:08:08','22904-2889'),(12,'Tressa Schiller','dborer@example.net','+19528791792','ML','Mississippi','Frederiquefort','54404 Delfina Creek Apt. 719',10,1,'2023-05-02 21:08:08','2023-05-02 21:08:08','34646-8794');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Jewell Treutel','customer@botble.com','$2y$10$mjYnDw6I/fQ5HmtLeBlln.aBssfqYxWoZpxhpvLZ/MD4Gkm..DQuC','customers/6.jpg','1976-05-01','+12254795629',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:07','2023-05-03 04:08:07',NULL,'activated',0,NULL),(2,'William Gerhold','vendor@botble.com','$2y$10$Np8aysf87tdCBCoU/Ae3QuEmlNXjafkloId3ZIwgBroMJH.rEptbS','customers/1.jpg','1974-04-10','+19203700962',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:15','2023-05-03 04:08:07',NULL,'activated',1,'2023-05-03 04:08:15'),(3,'Prof. Gerry Armstrong II','haley.autumn@example.net','$2y$10$hyup/5T1LNF28rpKZAh8YuGHI7B5CrOLQXcfjZsSO3v0BT8/vCW.u','customers/1.jpg','2003-04-06','+17575382638',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:15','2023-05-03 04:08:07',NULL,'activated',1,'2023-05-03 04:08:15'),(4,'Granville Johnston','pietro.hintz@example.org','$2y$10$UAnaxvTBC0CsyHoP88I3H.P4fz0Ex/uVnV5.BaDErvKmlGjXe6D5S','customers/2.jpg','1990-04-15','+13473584804',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:07','2023-05-03 04:08:07',NULL,'activated',0,NULL),(5,'Retta Olson','bauch.marcel@example.net','$2y$10$qHRru66Csj9X6l7eqUIUG.p/yMnsmJgsT3HgVgbeGvin9P4EfdRqm','customers/3.jpg','1992-04-05','+19014395459',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:15','2023-05-03 04:08:07',NULL,'activated',1,'2023-05-03 04:08:15'),(6,'Jaron Dibbert','okuneva.gerda@example.com','$2y$10$T3FoAd3Vi/Dp7Q561XUEX.pPc7.VW1BUVNSYg.DJ4V/TOe6/ylWke','customers/4.jpg','1997-04-06','+14427563385',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:15','2023-05-03 04:08:07',NULL,'activated',1,'2023-05-03 04:08:15'),(7,'Prof. Santa Spinka','jkonopelski@example.com','$2y$10$QvUSnDpCuvXTX1/aNqSOF.8BCZxBiazihis4Nv0XoJugiRXy4.xBS','customers/5.jpg','2003-04-21','+15419005705',NULL,'2023-05-02 21:08:07','2023-05-02 21:08:07','2023-05-03 04:08:07',NULL,'activated',0,NULL),(8,'Alisha Fay','dallas.cormier@example.net','$2y$10$NPyjf5KwTqc5EjmMwopznuRdFffRxc4mfKDgTTccOaP410VAZlOSS','customers/6.jpg','1982-04-19','+14805863570',NULL,'2023-05-02 21:08:08','2023-05-02 21:08:08','2023-05-03 04:08:08',NULL,'activated',0,NULL),(9,'General Roob DDS','minerva78@example.com','$2y$10$TG4eN83vobhI1sMIemWFguCXFC.TNBV7qsDsRXiaOU3Oohq6MJZZa','customers/7.jpg','1979-04-06','+16892528330',NULL,'2023-05-02 21:08:08','2023-05-02 21:08:15','2023-05-03 04:08:08',NULL,'activated',1,'2023-05-03 04:08:15'),(10,'Tressa Schiller','dborer@example.net','$2y$10$NGHW46x8pZx3VHnZqFnMVuVekI6oziKLpRohC6ZAM/MzNS.Hs4ETi','customers/8.jpg','2002-04-20','+19596827447',NULL,'2023-05-02 21:08:08','2023-05-02 21:08:15','2023-05-03 04:08:08',NULL,'activated',1,'2023-05-03 04:08:15');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,20,47.9171,17,1),(2,22,38.4,7,3),(3,12,78.1568,11,4),(4,16,70.602,14,5),(5,21,44.28,13,4),(6,1,324.75,15,2),(6,2,271.58,10,2),(6,3,280.84,11,2),(6,4,40.6296,16,1),(6,5,28,9,4),(6,6,24.38,9,1),(6,7,55.66,10,4),(6,8,72.4104,15,3),(6,9,63.28,20,5),(6,10,225.68,14,4),(6,11,70.2,10,2),(6,12,71.7952,11,4),(6,13,72.8,20,5),(6,14,79.06,14,2),(6,15,82.88,18,3),(6,16,49.4214,15,1),(6,17,104.06,13,4),(6,18,109.22,6,4),(6,19,54.52,10,1),(6,20,32.2707,16,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2023-06-21 00:00:00','published','2023-05-02 21:08:08','2023-05-02 21:08:08'),(2,'Flash sale 2','2023-06-02 00:00:00','published','2023-05-02 21:08:08','2023-05-02 21:08:08'),(3,'Flash sale 3','2023-06-08 00:00:00','published','2023-05-02 21:08:08','2023-05-02 21:08:08'),(4,'Flash sale 4','2023-05-24 00:00:00','published','2023-05-02 21:08:08','2023-05-02 21:08:08'),(5,'Flash sale 5','2023-05-28 00:00:00','published','2023-05-02 21:08:08','2023-05-02 21:08:08'),(6,'Daily Best Sales','2023-06-02 00:00:00','published','2023-05-02 21:08:08','2023-05-02 21:08:08');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(1,2,'2 Year',10,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(1,3,'3 Year',20,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(2,4,'4GB',0,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(2,5,'8GB',10,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(2,6,'16GB',20,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(3,7,'Core i5',0,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(3,8,'Core i7',10,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(3,9,'Core i9',20,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(4,10,'128GB',0,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(4,11,'256GB',10,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(4,12,'512GB',20,9999,0,'2023-05-02 21:08:14','2023-05-02 21:08:14');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-05-02 21:08:14','2023-05-02 21:08:14'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-05-02 21:08:14','2023-05-02 21:08:14');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',68,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',3,121.00,363.00,0.00,0.00,363.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(2,2,'Botble\\Ecommerce\\Models\\Product',75,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20-1.jpg',3,127.00,381.00,0.00,0.00,381.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(3,3,'Botble\\Ecommerce\\Models\\Product',84,'Signature Wood-Fired Mushroom and Caramelized',NULL,'products/24.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(4,4,'Botble\\Ecommerce\\Models\\Product',26,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1-1.jpg',2,433.00,866.00,0.00,0.00,866.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(5,5,'Botble\\Ecommerce\\Models\\Product',31,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',2,413.00,826.00,0.00,0.00,826.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(6,5,'Botble\\Ecommerce\\Models\\Product',51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11-1.jpg',2,130.00,260.00,0.00,0.00,260.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(7,5,'Botble\\Ecommerce\\Models\\Product',83,'Colorful Banana',NULL,'products/23.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(8,6,'Botble\\Ecommerce\\Models\\Product',55,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12-1.jpg',1,128.00,128.00,0.00,0.00,128.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(9,6,'Botble\\Ecommerce\\Models\\Product',56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',1,128.00,128.00,0.00,0.00,128.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(10,7,'Botble\\Ecommerce\\Models\\Product',27,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',2,433.00,866.00,0.00,0.00,866.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(11,8,'Botble\\Ecommerce\\Models\\Product',43,'Encore Seafoods Stuffed Alaskan',NULL,'products/8.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(12,9,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',2,130.00,260.00,0.00,0.00,260.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(13,10,'Botble\\Ecommerce\\Models\\Product',67,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(14,11,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9-1.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(15,12,'Botble\\Ecommerce\\Models\\Product',58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',1,128.00,128.00,0.00,0.00,128.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(16,12,'Botble\\Ecommerce\\Models\\Product',61,'Organic Frozen Triple Berry Blend',NULL,'products/14.jpg',1,118.00,118.00,0.00,0.00,118.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(17,13,'Botble\\Ecommerce\\Models\\Product',40,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',1,53.00,53.00,0.00,0.00,53.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(18,14,'Botble\\Ecommerce\\Models\\Product',41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',3,121.00,363.00,0.00,0.00,363.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(19,14,'Botble\\Ecommerce\\Models\\Product',42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(20,14,'Botble\\Ecommerce\\Models\\Product',73,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',3,116.00,348.00,0.00,0.00,348.00,'[]','2023-05-02 21:08:16','2023-05-02 21:08:16'),(21,15,'Botble\\Ecommerce\\Models\\Product',42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(22,15,'Botble\\Ecommerce\\Models\\Product',53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(23,16,'Botble\\Ecommerce\\Models\\Product',74,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20.jpg',1,127.00,127.00,0.00,0.00,127.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(24,16,'Botble\\Ecommerce\\Models\\Product',75,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20-1.jpg',3,127.00,381.00,0.00,0.00,381.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(25,17,'Botble\\Ecommerce\\Models\\Product',31,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',2,413.00,826.00,0.00,0.00,826.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(26,18,'Botble\\Ecommerce\\Models\\Product',35,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',3,81.00,243.00,0.00,0.00,243.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(27,19,'Botble\\Ecommerce\\Models\\Product',40,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',1,53.00,53.00,0.00,0.00,53.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(28,20,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(29,20,'Botble\\Ecommerce\\Models\\Product',83,'Colorful Banana',NULL,'products/23.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(30,21,'Botble\\Ecommerce\\Models\\Product',86,'Signature Wood-Fired Mushroom and Caramelized',NULL,'products/24.jpg',3,125.00,375.00,0.00,0.00,375.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(31,22,'Botble\\Ecommerce\\Models\\Product',52,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(32,22,'Botble\\Ecommerce\\Models\\Product',81,'Colorful Banana',NULL,'products/23.jpg',3,124.00,372.00,0.00,0.00,372.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(33,23,'Botble\\Ecommerce\\Models\\Product',78,'Chen Watermelon (Digital)',NULL,'products/21.jpg',3,123.00,369.00,0.00,0.00,369.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(34,24,'Botble\\Ecommerce\\Models\\Product',34,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',2,413.00,826.00,0.00,0.00,826.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(35,24,'Botble\\Ecommerce\\Models\\Product',53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(36,25,'Botble\\Ecommerce\\Models\\Product',38,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5-1.jpg',2,40.00,80.00,0.00,0.00,80.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(37,26,'Botble\\Ecommerce\\Models\\Product',68,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',2,121.00,242.00,0.00,0.00,242.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(38,27,'Botble\\Ecommerce\\Models\\Product',71,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',2,116.00,232.00,0.00,0.00,232.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(39,27,'Botble\\Ecommerce\\Models\\Product',80,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22-1.jpg',3,128.00,384.00,0.00,0.00,384.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(40,28,'Botble\\Ecommerce\\Models\\Product',28,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',1,367.00,367.00,0.00,0.00,367.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(41,28,'Botble\\Ecommerce\\Models\\Product',30,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',2,367.00,734.00,0.00,0.00,734.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(42,29,'Botble\\Ecommerce\\Models\\Product',41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',2,121.00,242.00,0.00,0.00,242.00,'[]','2023-05-02 21:08:17','2023-05-02 21:08:17'),(43,30,'Botble\\Ecommerce\\Models\\Product',50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(44,30,'Botble\\Ecommerce\\Models\\Product',51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11-1.jpg',3,130.00,390.00,0.00,0.00,390.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(45,30,'Botble\\Ecommerce\\Models\\Product',83,'Colorful Banana',NULL,'products/23.jpg',2,124.00,248.00,0.00,0.00,248.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(46,31,'Botble\\Ecommerce\\Models\\Product',57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',1,128.00,128.00,0.00,0.00,128.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(47,32,'Botble\\Ecommerce\\Models\\Product',57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',2,128.00,256.00,0.00,0.00,256.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(48,33,'Botble\\Ecommerce\\Models\\Product',59,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',1,130.00,130.00,0.00,0.00,130.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(49,34,'Botble\\Ecommerce\\Models\\Product',41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',1,121.00,121.00,0.00,0.00,121.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(50,34,'Botble\\Ecommerce\\Models\\Product',72,'Simply Lemonade with Raspberry Juice',NULL,'products/19-1.jpg',1,116.00,116.00,0.00,0.00,116.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(51,35,'Botble\\Ecommerce\\Models\\Product',54,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12.jpg',2,128.00,256.00,0.00,0.00,256.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(52,36,'Botble\\Ecommerce\\Models\\Product',63,'Oroweat Country Buttermilk Bread',NULL,'products/15-1.jpg',3,112.00,336.00,0.00,0.00,336.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(53,37,'Botble\\Ecommerce\\Models\\Product',44,'Encore Seafoods Stuffed Alaskan',NULL,'products/8-1.jpg',2,113.00,226.00,0.00,0.00,226.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(54,38,'Botble\\Ecommerce\\Models\\Product',48,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10.jpg',1,364.00,364.00,0.00,0.00,364.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(55,39,'Botble\\Ecommerce\\Models\\Product',67,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17-1.jpg',3,121.00,363.00,0.00,0.00,363.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(56,40,'Botble\\Ecommerce\\Models\\Product',78,'Chen Watermelon (Digital)',NULL,'products/21.jpg',1,123.00,123.00,0.00,0.00,123.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(57,41,'Botble\\Ecommerce\\Models\\Product',25,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1.jpg',3,433.00,1299.00,0.00,0.00,1299.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(58,41,'Botble\\Ecommerce\\Models\\Product',68,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',3,121.00,363.00,0.00,0.00,363.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(59,42,'Botble\\Ecommerce\\Models\\Product',35,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',1,81.00,81.00,0.00,0.00,81.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(60,43,'Botble\\Ecommerce\\Models\\Product',81,'Colorful Banana',NULL,'products/23.jpg',3,124.00,372.00,0.00,0.00,372.00,'[]','2023-05-02 21:08:18','2023-05-02 21:08:18'),(61,44,'Botble\\Ecommerce\\Models\\Product',31,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',3,413.00,1239.00,0.00,0.00,1239.00,'[]','2023-05-02 21:08:19','2023-05-02 21:08:19'),(62,44,'Botble\\Ecommerce\\Models\\Product',32,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3-1.jpg',2,413.00,826.00,0.00,0.00,826.00,'[]','2023-05-02 21:08:19','2023-05-02 21:08:19'),(63,45,'Botble\\Ecommerce\\Models\\Product',45,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',3,113.00,339.00,0.00,0.00,339.00,'[]','2023-05-02 21:08:19','2023-05-02 21:08:19'),(64,46,'Botble\\Ecommerce\\Models\\Product',75,'Perdue Simply Smart Organics Gluten Free',NULL,'products/20-1.jpg',1,127.00,127.00,0.00,0.00,127.00,'[]','2023-05-02 21:08:19','2023-05-02 21:08:19');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,363.00,0.00,0.00,0.00,'1','default',NULL,NULL,363.00,NULL,1,'completed','2023-05-02 21:08:16','2023-04-26 05:08:16','2023-05-02 21:08:16'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,381.00,0.00,0.00,0.00,'1','default',NULL,NULL,381.00,NULL,2,'pending',NULL,'2023-04-21 05:08:16','2023-05-02 21:08:16'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,375.00,0.00,0.00,0.00,'1','default',NULL,NULL,375.00,NULL,3,'pending',NULL,'2023-04-22 21:08:16','2023-05-02 21:08:16'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,866.00,0.00,0.00,0.00,'1','default',NULL,NULL,866.00,NULL,4,'completed','2023-05-02 21:08:16','2023-04-24 23:08:16','2023-05-02 21:08:16'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,1334.00,0.00,0.00,0.00,'1','default',NULL,NULL,1334.00,NULL,5,'completed','2023-05-02 21:08:16','2023-04-18 15:08:16','2023-05-02 21:08:16'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,256.00,0.00,0.00,0.00,'1','default',NULL,NULL,256.00,NULL,6,'completed','2023-05-02 21:08:16','2023-04-19 09:08:16','2023-05-02 21:08:16'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,866.00,0.00,0.00,0.00,'1','default',NULL,NULL,866.00,NULL,7,'pending',NULL,'2023-04-30 01:08:16','2023-05-02 21:08:16'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,226.00,0.00,0.00,0.00,'1','default',NULL,NULL,226.00,NULL,8,'completed','2023-05-02 21:08:16','2023-04-27 05:08:16','2023-05-02 21:08:16'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,260.00,0.00,0.00,0.00,'1','default',NULL,NULL,260.00,NULL,9,'completed','2023-05-02 21:08:16','2023-04-19 13:08:16','2023-05-02 21:08:16'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,121.00,0.00,0.00,0.00,'1','default',NULL,NULL,121.00,NULL,10,'completed','2023-05-02 21:08:16','2023-04-27 13:08:16','2023-05-02 21:08:16'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,226.00,0.00,0.00,0.00,'1','default',NULL,NULL,226.00,NULL,11,'pending',NULL,'2023-04-26 15:08:16','2023-05-02 21:08:16'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,246.00,0.00,0.00,0.00,'1','default',NULL,NULL,246.00,NULL,12,'pending',NULL,'2023-04-20 09:08:16','2023-05-02 21:08:16'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,53.00,0.00,0.00,0.00,'1','default',NULL,NULL,53.00,NULL,13,'completed','2023-05-02 21:08:16','2023-04-25 21:08:16','2023-05-02 21:08:16'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,832.00,0.00,0.00,0.00,'1','default',NULL,NULL,832.00,NULL,14,'completed','2023-05-02 21:08:16','2023-04-23 13:08:16','2023-05-02 21:08:16'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,511.00,0.00,0.00,0.00,'1','default',NULL,NULL,511.00,NULL,15,'completed','2023-05-02 21:08:17','2023-04-24 05:08:16','2023-05-02 21:08:17'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,508.00,0.00,0.00,0.00,'1','default',NULL,NULL,508.00,NULL,16,'completed','2023-05-02 21:08:17','2023-04-26 09:08:17','2023-05-02 21:08:17'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,826.00,0.00,0.00,0.00,'1','default',NULL,NULL,826.00,NULL,17,'completed','2023-05-02 21:08:17','2023-04-27 21:08:17','2023-05-02 21:08:17'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,243.00,0.00,0.00,0.00,'1','default',NULL,NULL,243.00,NULL,18,'completed','2023-05-02 21:08:17','2023-05-01 21:08:17','2023-05-02 21:08:17'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,53.00,0.00,0.00,0.00,'1','default',NULL,NULL,53.00,NULL,19,'pending',NULL,'2023-04-29 21:08:17','2023-05-02 21:08:17'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,638.00,0.00,0.00,0.00,'1','default',NULL,NULL,638.00,NULL,20,'pending',NULL,'2023-04-29 05:08:17','2023-05-02 21:08:17'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,375.00,0.00,0.00,0.00,'1','default',NULL,NULL,375.00,NULL,21,'completed','2023-05-02 21:08:17','2023-04-24 15:08:17','2023-05-02 21:08:17'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Alisha Fay','',NULL,'dallas.cormier@example.net','+13462931421','87320 Grady Inlet, Emmettville, Oklahoma, PF',NULL,762.00,0.00,0.00,0.00,'1','default',NULL,NULL,762.00,NULL,22,'completed','2023-05-02 21:08:17','2023-04-29 13:08:17','2023-05-02 21:08:17'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Alisha Fay','',NULL,'dallas.cormier@example.net','+13462931421','87320 Grady Inlet, Emmettville, Oklahoma, PF',NULL,369.00,0.00,0.00,0.00,'1','default',NULL,NULL,369.00,NULL,23,'pending',NULL,'2023-04-26 05:08:17','2023-05-02 21:08:17'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,1216.00,0.00,0.00,0.00,'1','default',NULL,NULL,1216.00,NULL,24,'pending',NULL,'2023-04-25 09:08:17','2023-05-02 21:08:17'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,80.00,0.00,0.00,0.00,'1','default',NULL,NULL,80.00,NULL,25,'completed','2023-05-02 21:08:17','2023-04-28 09:08:17','2023-05-02 21:08:17'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,242.00,0.00,0.00,0.00,'1','default',NULL,NULL,242.00,NULL,26,'completed','2023-05-02 21:08:17','2023-04-30 21:08:17','2023-05-02 21:08:17'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,616.00,0.00,0.00,0.00,'1','default',NULL,NULL,616.00,NULL,27,'completed','2023-05-02 21:08:17','2023-04-28 21:08:17','2023-05-02 21:08:17'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,1101.00,0.00,0.00,0.00,'1','default',NULL,NULL,1101.00,NULL,28,'completed','2023-05-02 21:08:17','2023-04-28 05:08:17','2023-05-02 21:08:17'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,242.00,0.00,0.00,0.00,'1','default',NULL,NULL,242.00,NULL,29,'pending',NULL,'2023-04-28 19:08:17','2023-05-02 21:08:17'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,1028.00,0.00,0.00,0.00,'1','default',NULL,NULL,1028.00,NULL,30,'completed','2023-05-02 21:08:18','2023-05-02 09:08:17','2023-05-02 21:08:18'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,128.00,0.00,0.00,0.00,'1','default',NULL,NULL,128.00,NULL,31,'completed','2023-05-02 21:08:18','2023-04-29 09:08:18','2023-05-02 21:08:18'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,256.00,0.00,0.00,0.00,'1','default',NULL,NULL,256.00,NULL,32,'completed','2023-05-02 21:08:18','2023-05-02 01:08:18','2023-05-02 21:08:18'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Prof. Santa Spinka','',NULL,'jkonopelski@example.com','+13396517190','4037 Florencio Trafficway Suite 911, Lake Madison, New Hampshire, SL',NULL,130.00,0.00,0.00,0.00,'1','default',NULL,NULL,130.00,NULL,33,'pending',NULL,'2023-04-28 17:08:18','2023-05-02 21:08:18'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,237.00,0.00,0.00,0.00,'1','default',NULL,NULL,237.00,NULL,34,'completed','2023-05-02 21:08:18','2023-04-29 21:08:18','2023-05-02 21:08:18'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,256.00,0.00,0.00,0.00,'1','default',NULL,NULL,256.00,NULL,35,'pending',NULL,'2023-05-01 13:08:18','2023-05-02 21:08:18'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,336.00,0.00,0.00,0.00,'1','default',NULL,NULL,336.00,NULL,36,'completed','2023-05-02 21:08:18','2023-04-30 21:08:18','2023-05-02 21:08:18'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,226.00,0.00,0.00,0.00,'1','default',NULL,NULL,226.00,NULL,37,'completed','2023-05-02 21:08:18','2023-05-01 21:08:18','2023-05-02 21:08:18'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,364.00,0.00,0.00,0.00,'1','default',NULL,NULL,364.00,NULL,38,'completed','2023-05-02 21:08:18','2023-04-30 15:08:18','2023-05-02 21:08:18'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,363.00,0.00,0.00,0.00,'1','default',NULL,NULL,363.00,NULL,39,'completed','2023-05-02 21:08:18','2023-04-30 15:08:18','2023-05-02 21:08:18'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Granville Johnston','',NULL,'pietro.hintz@example.org','+15803749849','1009 Rutherford Run, Trevorhaven, New Hampshire, MW',NULL,123.00,0.00,0.00,0.00,'1','default',NULL,NULL,123.00,NULL,40,'completed','2023-05-02 21:08:18','2023-05-02 09:08:18','2023-05-02 21:08:18'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,1662.00,0.00,0.00,0.00,'1','default',NULL,NULL,1662.00,NULL,41,'completed','2023-05-02 21:08:18','2023-05-02 01:08:18','2023-05-02 21:08:18'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,81.00,0.00,0.00,0.00,'1','default',NULL,NULL,81.00,NULL,42,'completed','2023-05-02 21:08:18','2023-05-01 13:08:18','2023-05-02 21:08:18'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Jewell Treutel','',NULL,'customer@botble.com','+19844227197','181 Keenan Camp, North Mallieport, Oregon, SJ',NULL,372.00,0.00,0.00,0.00,'1','default',NULL,NULL,372.00,NULL,43,'completed','2023-05-02 21:08:18','2023-05-02 05:08:18','2023-05-02 21:08:18'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Alisha Fay','',NULL,'dallas.cormier@example.net','+13462931421','87320 Grady Inlet, Emmettville, Oklahoma, PF',NULL,2065.00,0.00,0.00,0.00,'1','default',NULL,NULL,2065.00,NULL,44,'completed','2023-05-02 21:08:19','2023-05-02 05:08:18','2023-05-02 21:08:19'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Alisha Fay','',NULL,'dallas.cormier@example.net','+13462931421','87320 Grady Inlet, Emmettville, Oklahoma, PF',NULL,339.00,0.00,0.00,0.00,'1','default',NULL,NULL,339.00,NULL,45,'completed','2023-05-02 21:08:19','2023-05-02 13:08:19','2023-05-02 21:08:19'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Alisha Fay','',NULL,'dallas.cormier@example.net','+13462931421','87320 Grady Inlet, Emmettville, Oklahoma, PF',NULL,127.00,0.00,0.00,0.00,'1','default',NULL,NULL,127.00,NULL,46,'completed','2023-05-02 21:08:19','2023-05-02 13:08:19','2023-05-02 21:08:19');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',1,'37193-2808','shipping_address'),(2,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',2,'37193-2808','shipping_address'),(3,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',3,'37193-2808','shipping_address'),(4,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',4,'37193-2808','shipping_address'),(5,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',5,'37193-2808','shipping_address'),(6,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',6,'02595','shipping_address'),(7,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',7,'37193-2808','shipping_address'),(8,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',8,'37193-2808','shipping_address'),(9,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',9,'37193-2808','shipping_address'),(10,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',10,'37193-2808','shipping_address'),(11,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',11,'37193-2808','shipping_address'),(12,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',12,'37193-2808','shipping_address'),(13,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',13,'37193-2808','shipping_address'),(14,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',14,'37193-2808','shipping_address'),(15,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',15,'02595','shipping_address'),(16,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',16,'02595','shipping_address'),(17,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',17,'57131-5294','shipping_address'),(18,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',18,'57131-5294','shipping_address'),(19,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',19,'57131-5294','shipping_address'),(20,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',20,'57131-5294','shipping_address'),(21,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',21,'57131-5294','shipping_address'),(22,'Alisha Fay','+13462931421','dallas.cormier@example.net','PF','Oklahoma','Emmettville','87320 Grady Inlet',22,'65318-5940','shipping_address'),(23,'Alisha Fay','+13462931421','dallas.cormier@example.net','PF','Oklahoma','Emmettville','87320 Grady Inlet',23,'65318-5940','shipping_address'),(24,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',24,'57131-5294','shipping_address'),(25,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',25,'57131-5294','shipping_address'),(26,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',26,'02595','shipping_address'),(27,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',27,'02595','shipping_address'),(28,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',28,'02595','shipping_address'),(29,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',29,'02595','shipping_address'),(30,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',30,'02595','shipping_address'),(31,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',31,'02595','shipping_address'),(32,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',32,'02595','shipping_address'),(33,'Prof. Santa Spinka','+13396517190','jkonopelski@example.com','SL','New Hampshire','Lake Madison','4037 Florencio Trafficway Suite 911',33,'02595','shipping_address'),(34,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',34,'37193-2808','shipping_address'),(35,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',35,'37193-2808','shipping_address'),(36,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',36,'37193-2808','shipping_address'),(37,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',37,'37193-2808','shipping_address'),(38,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',38,'37193-2808','shipping_address'),(39,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',39,'37193-2808','shipping_address'),(40,'Granville Johnston','+15803749849','pietro.hintz@example.org','MW','New Hampshire','Trevorhaven','1009 Rutherford Run',40,'37193-2808','shipping_address'),(41,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',41,'57131-5294','shipping_address'),(42,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',42,'57131-5294','shipping_address'),(43,'Jewell Treutel','+19844227197','customer@botble.com','SJ','Oregon','North Mallieport','181 Keenan Camp',43,'57131-5294','shipping_address'),(44,'Alisha Fay','+13462931421','dallas.cormier@example.net','PF','Oklahoma','Emmettville','87320 Grady Inlet',44,'65318-5940','shipping_address'),(45,'Alisha Fay','+13462931421','dallas.cormier@example.net','PF','Oklahoma','Emmettville','87320 Grady Inlet',45,'65318-5940','shipping_address'),(46,'Alisha Fay','+13462931421','dallas.cormier@example.net','PF','Oklahoma','Emmettville','87320 Grady Inlet',46,'65318-5940','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-04-26 05:08:16','2023-04-26 05:08:16'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-04-26 05:08:16','2023-04-26 05:08:16'),(3,'confirm_payment','Payment was confirmed (amount $363.00) by %user_name%',0,1,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-04-21 05:08:16','2023-04-21 05:08:16'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-04-21 05:08:16','2023-04-21 05:08:16'),(7,'create_shipment','Created shipment for order',0,2,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-04-22 21:08:16','2023-04-22 21:08:16'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-04-22 21:08:16','2023-04-22 21:08:16'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(12,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-04-24 23:08:16','2023-04-24 23:08:16'),(13,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-04-24 23:08:16','2023-04-24 23:08:16'),(14,'confirm_payment','Payment was confirmed (amount $866.00) by %user_name%',0,4,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(15,'create_shipment','Created shipment for order',0,4,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-04-18 15:08:16','2023-04-18 15:08:16'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-04-18 15:08:16','2023-04-18 15:08:16'),(19,'confirm_payment','Payment was confirmed (amount $1,334.00) by %user_name%',0,5,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-04-19 09:08:16','2023-04-19 09:08:16'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-04-19 09:08:16','2023-04-19 09:08:16'),(24,'confirm_payment','Payment was confirmed (amount $256.00) by %user_name%',0,6,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-04-30 01:08:16','2023-04-30 01:08:16'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-04-30 01:08:16','2023-04-30 01:08:16'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-04-27 05:08:16','2023-04-27 05:08:16'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-04-27 05:08:16','2023-04-27 05:08:16'),(32,'confirm_payment','Payment was confirmed (amount $226.00) by %user_name%',0,8,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-04-19 13:08:16','2023-04-19 13:08:16'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-04-19 13:08:16','2023-04-19 13:08:16'),(36,'confirm_payment','Payment was confirmed (amount $260.00) by %user_name%',0,9,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(37,'create_shipment','Created shipment for order',0,9,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-04-27 13:08:16','2023-04-27 13:08:16'),(40,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-04-27 13:08:16','2023-04-27 13:08:16'),(41,'confirm_payment','Payment was confirmed (amount $121.00) by %user_name%',0,10,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-04-26 15:08:16','2023-04-26 15:08:16'),(45,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-04-26 15:08:16','2023-04-26 15:08:16'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-04-20 09:08:16','2023-04-20 09:08:16'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-04-20 09:08:16','2023-04-20 09:08:16'),(49,'create_shipment','Created shipment for order',0,12,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-04-25 21:08:16','2023-04-25 21:08:16'),(52,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-04-25 21:08:16','2023-04-25 21:08:16'),(53,'confirm_payment','Payment was confirmed (amount $53.00) by %user_name%',0,13,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-04-23 13:08:16','2023-04-23 13:08:16'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-04-23 13:08:16','2023-04-23 13:08:16'),(58,'confirm_payment','Payment was confirmed (amount $832.00) by %user_name%',0,14,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(59,'create_shipment','Created shipment for order',0,14,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(61,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-04-24 05:08:16','2023-04-24 05:08:16'),(62,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-04-24 05:08:16','2023-04-24 05:08:16'),(63,'confirm_payment','Payment was confirmed (amount $511.00) by %user_name%',0,15,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-04-26 09:08:17','2023-04-26 09:08:17'),(66,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-04-26 09:08:17','2023-04-26 09:08:17'),(67,'confirm_payment','Payment was confirmed (amount $508.00) by %user_name%',0,16,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(68,'create_shipment','Created shipment for order',0,16,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-04-27 21:08:17','2023-04-27 21:08:17'),(71,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-04-27 21:08:17','2023-04-27 21:08:17'),(72,'confirm_payment','Payment was confirmed (amount $826.00) by %user_name%',0,17,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(73,'create_shipment','Created shipment for order',0,17,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-05-01 21:08:17','2023-05-01 21:08:17'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-05-01 21:08:17','2023-05-01 21:08:17'),(76,'confirm_payment','Payment was confirmed (amount $243.00) by %user_name%',0,18,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-04-29 21:08:17','2023-04-29 21:08:17'),(79,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-04-29 21:08:17','2023-04-29 21:08:17'),(80,'create_shipment','Created shipment for order',0,19,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(81,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-04-29 05:08:17','2023-04-29 05:08:17'),(83,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-04-29 05:08:17','2023-04-29 05:08:17'),(84,'create_shipment','Created shipment for order',0,20,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(86,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-04-24 15:08:17','2023-04-24 15:08:17'),(87,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-04-24 15:08:17','2023-04-24 15:08:17'),(88,'confirm_payment','Payment was confirmed (amount $375.00) by %user_name%',0,21,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(89,'create_shipment','Created shipment for order',0,21,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-04-29 13:08:17','2023-04-29 13:08:17'),(91,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-04-29 13:08:17','2023-04-29 13:08:17'),(92,'confirm_payment','Payment was confirmed (amount $762.00) by %user_name%',0,22,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(93,'create_shipment','Created shipment for order',0,22,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-04-26 05:08:17','2023-04-26 05:08:17'),(96,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-04-26 05:08:17','2023-04-26 05:08:17'),(97,'create_shipment','Created shipment for order',0,23,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(98,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-04-25 09:08:17','2023-04-25 09:08:17'),(99,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-04-25 09:08:17','2023-04-25 09:08:17'),(100,'create_shipment','Created shipment for order',0,24,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(102,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-04-28 09:08:17','2023-04-28 09:08:17'),(103,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-04-28 09:08:17','2023-04-28 09:08:17'),(104,'confirm_payment','Payment was confirmed (amount $80.00) by %user_name%',0,25,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(105,'create_shipment','Created shipment for order',0,25,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-04-30 21:08:17','2023-04-30 21:08:17'),(107,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-04-30 21:08:17','2023-04-30 21:08:17'),(108,'confirm_payment','Payment was confirmed (amount $242.00) by %user_name%',0,26,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(109,'create_shipment','Created shipment for order',0,26,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-04-28 21:08:17','2023-04-28 21:08:17'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-04-28 21:08:17','2023-04-28 21:08:17'),(113,'confirm_payment','Payment was confirmed (amount $616.00) by %user_name%',0,27,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(114,'create_shipment','Created shipment for order',0,27,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(115,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-04-28 05:08:17','2023-04-28 05:08:17'),(117,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-04-28 05:08:17','2023-04-28 05:08:17'),(118,'confirm_payment','Payment was confirmed (amount $1,101.00) by %user_name%',0,28,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(119,'create_shipment','Created shipment for order',0,28,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(120,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-04-28 19:08:17','2023-04-28 19:08:17'),(122,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-04-28 19:08:17','2023-04-28 19:08:17'),(123,'create_shipment','Created shipment for order',0,29,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(124,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17'),(125,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-05-02 09:08:17','2023-05-02 09:08:17'),(126,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-05-02 09:08:17','2023-05-02 09:08:17'),(127,'confirm_payment','Payment was confirmed (amount $1,028.00) by %user_name%',0,30,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(128,'create_shipment','Created shipment for order',0,30,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-04-29 09:08:18','2023-04-29 09:08:18'),(130,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-04-29 09:08:18','2023-04-29 09:08:18'),(131,'confirm_payment','Payment was confirmed (amount $128.00) by %user_name%',0,31,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(132,'create_shipment','Created shipment for order',0,31,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(133,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(134,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-05-02 01:08:18','2023-05-02 01:08:18'),(135,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-05-02 01:08:18','2023-05-02 01:08:18'),(136,'confirm_payment','Payment was confirmed (amount $256.00) by %user_name%',0,32,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(137,'create_shipment','Created shipment for order',0,32,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-04-28 17:08:18','2023-04-28 17:08:18'),(139,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-04-28 17:08:18','2023-04-28 17:08:18'),(140,'create_shipment','Created shipment for order',0,33,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(141,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-04-29 21:08:18','2023-04-29 21:08:18'),(143,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-04-29 21:08:18','2023-04-29 21:08:18'),(144,'confirm_payment','Payment was confirmed (amount $237.00) by %user_name%',0,34,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(145,'create_shipment','Created shipment for order',0,34,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(146,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(147,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-05-01 13:08:18','2023-05-01 13:08:18'),(148,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-05-01 13:08:18','2023-05-01 13:08:18'),(149,'create_shipment','Created shipment for order',0,35,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(150,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-04-30 21:08:18','2023-04-30 21:08:18'),(152,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-04-30 21:08:18','2023-04-30 21:08:18'),(153,'confirm_payment','Payment was confirmed (amount $336.00) by %user_name%',0,36,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(154,'create_shipment','Created shipment for order',0,36,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(155,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(156,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-05-01 21:08:18','2023-05-01 21:08:18'),(157,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-05-01 21:08:18','2023-05-01 21:08:18'),(158,'confirm_payment','Payment was confirmed (amount $226.00) by %user_name%',0,37,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(159,'create_shipment','Created shipment for order',0,37,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(160,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-04-30 15:08:18','2023-04-30 15:08:18'),(161,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-04-30 15:08:18','2023-04-30 15:08:18'),(162,'confirm_payment','Payment was confirmed (amount $364.00) by %user_name%',0,38,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(163,'create_shipment','Created shipment for order',0,38,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(164,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(165,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-04-30 15:08:18','2023-04-30 15:08:18'),(166,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-04-30 15:08:18','2023-04-30 15:08:18'),(167,'confirm_payment','Payment was confirmed (amount $363.00) by %user_name%',0,39,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(168,'create_shipment','Created shipment for order',0,39,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-05-02 09:08:18','2023-05-02 09:08:18'),(170,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-05-02 09:08:18','2023-05-02 09:08:18'),(171,'confirm_payment','Payment was confirmed (amount $123.00) by %user_name%',0,40,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(172,'create_shipment','Created shipment for order',0,40,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(173,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(174,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-05-02 01:08:18','2023-05-02 01:08:18'),(175,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-05-02 01:08:18','2023-05-02 01:08:18'),(176,'confirm_payment','Payment was confirmed (amount $1,662.00) by %user_name%',0,41,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(177,'create_shipment','Created shipment for order',0,41,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(178,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-05-01 13:08:18','2023-05-01 13:08:18'),(180,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-05-01 13:08:18','2023-05-01 13:08:18'),(181,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,42,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(182,'create_shipment','Created shipment for order',0,42,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(183,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-05-02 05:08:18','2023-05-02 05:08:18'),(184,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-05-02 05:08:18','2023-05-02 05:08:18'),(185,'confirm_payment','Payment was confirmed (amount $372.00) by %user_name%',0,43,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(186,'create_shipment','Created shipment for order',0,43,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(187,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-05-02 05:08:18','2023-05-02 05:08:18'),(188,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-05-02 05:08:18','2023-05-02 05:08:18'),(189,'confirm_payment','Payment was confirmed (amount $2,065.00) by %user_name%',0,44,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18'),(190,'create_shipment','Created shipment for order',0,44,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(191,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(192,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-05-02 13:08:19','2023-05-02 13:08:19'),(193,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-05-02 13:08:19','2023-05-02 13:08:19'),(194,'confirm_payment','Payment was confirmed (amount $339.00) by %user_name%',0,45,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(195,'create_shipment','Created shipment for order',0,45,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(196,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-05-02 13:08:19','2023-05-02 13:08:19'),(197,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-05-02 13:08:19','2023-05-02 13:08:19'),(198,'confirm_payment','Payment was confirmed (amount $127.00) by %user_name%',0,46,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(199,'create_shipment','Created shipment for order',0,46,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(200,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(201,'update_status','Order confirmed by %user_name%',0,5,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(202,'update_status','Order confirmed by %user_name%',0,6,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(203,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(204,'update_status','Order confirmed by %user_name%',0,10,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(205,'update_status','Order confirmed by %user_name%',0,13,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19'),(206,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(207,'update_status','Order confirmed by %user_name%',0,16,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(208,'update_status','Order confirmed by %user_name%',0,22,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(209,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(210,'update_status','Order confirmed by %user_name%',0,27,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(211,'update_status','Order confirmed by %user_name%',0,28,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(212,'update_status','Order confirmed by %user_name%',0,31,NULL,'2023-05-02 21:08:20','2023-05-02 21:08:20'),(213,'update_status','Order confirmed by %user_name%',0,34,NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21'),(214,'update_status','Order confirmed by %user_name%',0,36,NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21'),(215,'update_status','Order confirmed by %user_name%',0,38,NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21'),(216,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21'),(217,'update_status','Order confirmed by %user_name%',0,41,NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21'),(218,'update_status','Order confirmed by %user_name%',0,44,NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,121.00,0.00,'[]',NULL,68,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',2598.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','digital',4),(2,2,3,127.00,0.00,'[]',NULL,75,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1590.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(3,3,3,125.00,0.00,'[]',NULL,84,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',2004.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(4,4,2,433.00,0.00,'[]',NULL,26,'Seeds of Change Organic Quinoe (Digital)','products/1-1.jpg',1386.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','digital',2),(5,5,2,413.00,0.00,'[]',NULL,31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',1454.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(6,5,2,130.00,0.00,'[]',NULL,51,'Nestle Original Coffee-Mate Coffee Creamer','products/11-1.jpg',1176.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(7,5,2,124.00,0.00,'[]',NULL,83,'Colorful Banana','products/23.jpg',1490.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(8,6,1,128.00,0.00,'[]',NULL,55,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',681.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(9,6,1,128.00,0.00,'[]',NULL,56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',681.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(10,7,2,433.00,0.00,'[]',NULL,27,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',1386.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','digital',4),(11,8,2,113.00,0.00,'[]',NULL,43,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1144.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(12,9,2,130.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1176.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(13,10,1,121.00,0.00,'[]',NULL,67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17-1.jpg',866.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','digital',7),(14,11,2,113.00,0.00,'[]',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9-1.jpg',1028.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','digital',3),(15,12,1,128.00,0.00,'[]',NULL,58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',681.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(16,12,1,118.00,0.00,'[]',NULL,61,'Organic Frozen Triple Berry Blend','products/14.jpg',522.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(17,13,1,53.00,0.00,'[]',NULL,40,'Chobani Complete Vanilla Greek','products/6.jpg',622.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(18,14,3,121.00,0.00,'[]',NULL,41,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1836.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(19,14,1,121.00,0.00,'[]',NULL,42,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',612.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(20,14,3,116.00,0.00,'[]',NULL,73,'Simply Lemonade with Raspberry Juice','products/19.jpg',2400.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(21,15,1,121.00,0.00,'[]',NULL,42,'Canada Dry Ginger Ale – 2 L Bottle','products/7-1.jpg',612.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(22,15,3,130.00,0.00,'[]',NULL,53,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1764.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','physical',0),(23,16,1,127.00,0.00,'[]',NULL,74,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',530.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(24,16,3,127.00,0.00,'[]',NULL,75,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1590.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(25,17,2,413.00,0.00,'[]',NULL,31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',1454.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(26,18,3,81.00,0.00,'[]',NULL,35,'Foster Farms Takeout Crispy Classic','products/4.jpg',1902.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(27,19,1,53.00,0.00,'[]',NULL,40,'Chobani Complete Vanilla Greek','products/6.jpg',622.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(28,20,3,130.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1764.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(29,20,2,124.00,0.00,'[]',NULL,83,'Colorful Banana','products/23.jpg',1490.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(30,21,3,125.00,0.00,'[]',NULL,86,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',2004.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(31,22,3,130.00,0.00,'[]',NULL,52,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1764.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(32,22,3,124.00,0.00,'[]',NULL,81,'Colorful Banana','products/23.jpg',2235.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(33,23,3,123.00,0.00,'[]',NULL,78,'Chen Watermelon (Digital)','products/21.jpg',1935.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','digital',3),(34,24,2,413.00,0.00,'[]',NULL,34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',1454.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(35,24,3,130.00,0.00,'[]',NULL,53,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1764.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(36,25,2,40.00,0.00,'[]',NULL,38,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',1342.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','digital',7),(37,26,2,121.00,0.00,'[]',NULL,68,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',1732.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','digital',6),(38,27,2,116.00,0.00,'[]',NULL,71,'Simply Lemonade with Raspberry Juice','products/19.jpg',1600.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(39,27,3,128.00,0.00,'[]',NULL,80,'Organic Cage-Free Grade A Large Brown Eggs','products/22-1.jpg',1881.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(40,28,1,367.00,0.00,'[]',NULL,28,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',737.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(41,28,2,367.00,0.00,'[]',NULL,30,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1474.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(42,29,2,121.00,0.00,'[]',NULL,41,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1224.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(43,30,3,130.00,0.00,'[]',NULL,50,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1764.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(44,30,3,130.00,0.00,'[]',NULL,51,'Nestle Original Coffee-Mate Coffee Creamer','products/11-1.jpg',1764.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(45,30,2,124.00,0.00,'[]',NULL,83,'Colorful Banana','products/23.jpg',1490.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','physical',0),(46,31,1,128.00,0.00,'[]',NULL,57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',681.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(47,32,2,128.00,0.00,'[]',NULL,57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',1362.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(48,33,1,130.00,0.00,'[]',NULL,59,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',603.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','digital',2),(49,34,1,121.00,0.00,'[]',NULL,41,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',612.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(50,34,1,116.00,0.00,'[]',NULL,72,'Simply Lemonade with Raspberry Juice','products/19-1.jpg',800.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(51,35,2,128.00,0.00,'[]',NULL,54,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',1362.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(52,36,3,112.00,0.00,'[]',NULL,63,'Oroweat Country Buttermilk Bread','products/15-1.jpg',1560.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(53,37,2,113.00,0.00,'[]',NULL,44,'Encore Seafoods Stuffed Alaskan','products/8-1.jpg',1144.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(54,38,1,364.00,0.00,'[]',NULL,48,'Haagen-Dazs Caramel Cone Ice Cream','products/10.jpg',565.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(55,39,3,121.00,0.00,'[]',NULL,67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17-1.jpg',2598.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','digital',8),(56,40,1,123.00,0.00,'[]',NULL,78,'Chen Watermelon (Digital)','products/21.jpg',645.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','digital',10),(57,41,3,433.00,0.00,'[]',NULL,25,'Seeds of Change Organic Quinoe (Digital)','products/1.jpg',2079.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','digital',7),(58,41,3,121.00,0.00,'[]',NULL,68,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',2598.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','digital',6),(59,42,1,81.00,0.00,'[]',NULL,35,'Foster Farms Takeout Crispy Classic','products/4.jpg',634.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(60,43,3,124.00,0.00,'[]',NULL,81,'Colorful Banana','products/23.jpg',2235.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(61,44,3,413.00,0.00,'[]',NULL,31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',2181.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(62,44,2,413.00,0.00,'[]',NULL,32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3-1.jpg',1454.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','physical',0),(63,45,3,113.00,0.00,'[]',NULL,45,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',1542.00,0,'2023-05-02 21:08:19','2023-05-02 21:08:19','digital',1),(64,46,1,127.00,0.00,'[]',NULL,75,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',530.00,0,'2023-05-02 21:08:19','2023-05-02 21:08:19','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',4,'1','default','pending',363.00,0.00,0.00,NULL,NULL,0.00,363.00,1,NULL,1,NULL,'XzHIzC5tKlq9aPMceQ7lO1IIK5wep',1,'2023-04-26 05:08:16','2023-05-02 21:08:16',6),(2,'#10000002',4,'1','default','completed',381.00,0.00,0.00,NULL,NULL,0.00,381.00,1,NULL,1,'2023-05-02 21:08:16','sO0MJgdLPef6uO6KYJAAbuixgcwxb',2,'2023-04-21 05:08:16','2023-05-02 21:08:16',2),(3,'#10000003',4,'1','default','pending',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'hp0IxMiqtUrzSxTW9KITNSEjKr04U',3,'2023-04-22 21:08:16','2023-05-02 21:08:16',5),(4,'#10000004',4,'1','default','completed',866.00,0.00,0.00,NULL,NULL,0.00,866.00,1,NULL,1,'2023-05-02 21:08:19','ydXHz336T67pEoMolbJzKDn9dtNIk',4,'2023-04-24 23:08:16','2023-05-02 21:08:19',6),(5,'#10000005',4,'1','default','completed',1334.00,0.00,0.00,NULL,NULL,0.00,1334.00,1,NULL,1,'2023-05-02 21:08:19','pmChV99yQODUGBuDeuIpHcU8qTc0S',5,'2023-04-18 15:08:16','2023-05-02 21:08:19',1),(6,'#10000006',7,'1','default','completed',256.00,0.00,0.00,NULL,NULL,0.00,256.00,1,NULL,1,'2023-05-02 21:08:19','X3aOBCwLBeBG7SfaHgPG9Unbrt0hm',6,'2023-04-19 09:08:16','2023-05-02 21:08:19',2),(7,'#10000007',4,'1','default','pending',866.00,0.00,0.00,NULL,NULL,0.00,866.00,1,NULL,1,NULL,'slBXg5nFmmGvTNcMSMFxoujmUgbNO',7,'2023-04-30 01:08:16','2023-05-02 21:08:16',6),(8,'#10000008',4,'1','default','pending',226.00,0.00,0.00,NULL,NULL,0.00,226.00,1,NULL,1,NULL,'EjRmQiRGsFHIhvdfznXT7J22HeujR',8,'2023-04-27 05:08:16','2023-05-02 21:08:16',5),(9,'#10000009',4,'1','default','completed',260.00,0.00,0.00,NULL,NULL,0.00,260.00,1,NULL,1,'2023-05-02 21:08:19','P3JJnlRnmNHucEdLcDb2t4joggeAk',9,'2023-04-19 13:08:16','2023-05-02 21:08:19',1),(10,'#10000010',4,'1','default','completed',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,'2023-05-02 21:08:19','XspPeie7FpnOi7mcdwYH1bM0R1IeC',10,'2023-04-27 13:08:16','2023-05-02 21:08:19',6),(11,'#10000011',4,'1','default','pending',226.00,0.00,0.00,NULL,NULL,0.00,226.00,1,NULL,1,NULL,'0bEtbl4aRWYePc7sYqN655l5DNKym',11,'2023-04-26 15:08:16','2023-05-02 21:08:16',3),(12,'#10000012',4,'1','default','completed',246.00,0.00,0.00,NULL,NULL,0.00,246.00,1,NULL,1,'2023-05-02 21:08:16','fc8WW2Pyj5dkP248uOiZiAJE5RsTY',12,'2023-04-20 09:08:16','2023-05-02 21:08:16',2),(13,'#10000013',4,'1','default','completed',53.00,0.00,0.00,NULL,NULL,0.00,53.00,1,NULL,1,'2023-05-02 21:08:19','IZXMhlJwRi3TK1g4cxdDN8rwpHivx',13,'2023-04-25 21:08:16','2023-05-02 21:08:19',5),(14,'#10000014',4,'1','default','completed',832.00,0.00,0.00,NULL,NULL,0.00,832.00,1,NULL,1,'2023-05-02 21:08:20','fXJhYTiDbGSh6YbPxwcpSoYyyNL8O',14,'2023-04-23 13:08:16','2023-05-02 21:08:20',1),(15,'#10000015',7,'1','default','pending',511.00,0.00,0.00,NULL,NULL,0.00,511.00,1,NULL,1,NULL,'FAjwcvShKY6gViFBMOw8o0RO2BV6f',15,'2023-04-24 05:08:16','2023-05-02 21:08:17',1),(16,'#10000016',7,'1','default','completed',508.00,0.00,0.00,NULL,NULL,0.00,508.00,1,NULL,1,'2023-05-02 21:08:20','DDr1oae2fnkO9QUjwCc3QhzxREfVq',16,'2023-04-26 09:08:17','2023-05-02 21:08:20',2),(17,'#10000017',1,'1','default','pending',826.00,0.00,0.00,NULL,NULL,0.00,826.00,1,NULL,1,NULL,'9yPJtCjoxcIVeRJDEh9YwyjAPj6Xw',17,'2023-04-27 21:08:17','2023-05-02 21:08:17',1),(18,'#10000018',1,'1','default','pending',243.00,0.00,0.00,NULL,NULL,0.00,243.00,1,NULL,1,NULL,'DlJtwDpRiLWCcCUBwBGH2eEq9RcYx',18,'2023-05-01 21:08:17','2023-05-02 21:08:17',4),(19,'#10000019',1,'1','default','completed',53.00,0.00,0.00,NULL,NULL,0.00,53.00,1,NULL,1,'2023-05-02 21:08:17','tvKHXPO1mZiUKOOMB3wksMoyRzFfJ',19,'2023-04-29 21:08:17','2023-05-02 21:08:17',5),(20,'#10000020',1,'1','default','completed',638.00,0.00,0.00,NULL,NULL,0.00,638.00,1,NULL,1,'2023-05-02 21:08:17','AFEGpfOLwKoMYOcF6W2N4HGRkQgYw',20,'2023-04-29 05:08:17','2023-05-02 21:08:17',1),(21,'#10000021',1,'1','default','pending',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'gA7QGEZeqGOGYgnbDwvaSq0yykIlH',21,'2023-04-24 15:08:17','2023-05-02 21:08:17',5),(22,'#10000022',8,'1','default','completed',762.00,0.00,0.00,NULL,NULL,0.00,762.00,1,NULL,1,'2023-05-02 21:08:20','aqueQEb1FUJxkoE7XMtD3iZ3nuoAL',22,'2023-04-29 13:08:17','2023-05-02 21:08:20',1),(23,'#10000023',8,'1','default','pending',369.00,0.00,0.00,NULL,NULL,0.00,369.00,1,NULL,1,NULL,'I1A4Lu5C9Sx5Kwuf2omPZnoVWPHWb',23,'2023-04-26 05:08:17','2023-05-02 21:08:17',2),(24,'#10000024',1,'1','default','completed',1216.00,0.00,0.00,NULL,NULL,0.00,1216.00,1,NULL,1,'2023-05-02 21:08:17','frA97McsyQusGmSCi7H9XDrgs7Yta',24,'2023-04-25 09:08:17','2023-05-02 21:08:17',1),(25,'#10000025',1,'1','default','pending',80.00,0.00,0.00,NULL,NULL,0.00,80.00,1,NULL,1,NULL,'BBqWB241WhsmUKVgxffQqxaKJzjx2',25,'2023-04-28 09:08:17','2023-05-02 21:08:17',3),(26,'#10000026',7,'1','default','completed',242.00,0.00,0.00,NULL,NULL,0.00,242.00,1,NULL,1,'2023-05-02 21:08:20','AggzZ9r2RNeOuPX1sGGQI2vhWfIvr',26,'2023-04-30 21:08:17','2023-05-02 21:08:20',6),(27,'#10000027',7,'1','default','completed',616.00,0.00,0.00,NULL,NULL,0.00,616.00,1,NULL,1,'2023-05-02 21:08:20','2jlM7HGHGIXbDzUda7AQbR3p9b8LB',27,'2023-04-28 21:08:17','2023-05-02 21:08:20',1),(28,'#10000028',7,'1','default','completed',1101.00,0.00,0.00,NULL,NULL,0.00,1101.00,1,NULL,1,'2023-05-02 21:08:20','ilEv6VD5YmJWDMk6RNW3uZsVJddLM',28,'2023-04-28 05:08:17','2023-05-02 21:08:20',3),(29,'#10000029',7,'1','default','completed',242.00,0.00,0.00,NULL,NULL,0.00,242.00,1,NULL,1,'2023-05-02 21:08:17','oRVxrVFInurFsfWQA5GU5AjPU1hus',29,'2023-04-28 19:08:17','2023-05-02 21:08:17',1),(30,'#10000030',7,'1','default','pending',1028.00,0.00,0.00,NULL,NULL,0.00,1028.00,1,NULL,1,NULL,'XFoO3T2RNTRnjl9NW1cmMMr7gimJW',30,'2023-05-02 09:08:17','2023-05-02 21:08:18',1),(31,'#10000031',7,'1','default','completed',128.00,0.00,0.00,NULL,NULL,0.00,128.00,1,NULL,1,'2023-05-02 21:08:20','5O0cUEzzZrdYuuWoWYhQ2IEKGZk7G',31,'2023-04-29 09:08:18','2023-05-02 21:08:20',2),(32,'#10000032',7,'1','default','pending',256.00,0.00,0.00,NULL,NULL,0.00,256.00,1,NULL,1,NULL,'dGK2vuK9Xo5S9HVUN8YqQjJc9b0G5',32,'2023-05-02 01:08:18','2023-05-02 21:08:18',2),(33,'#10000033',7,'1','default','completed',130.00,0.00,0.00,NULL,NULL,0.00,130.00,1,NULL,1,'2023-05-02 21:08:18','5uFg7SkjrwejQCP8wfcQQEFZmeGaF',33,'2023-04-28 17:08:18','2023-05-02 21:08:18',3),(34,'#10000034',4,'1','default','completed',237.00,0.00,0.00,NULL,NULL,0.00,237.00,1,NULL,1,'2023-05-02 21:08:21','2p2XXFmLfiv68hWWuVGGIQQRrAn9Z',34,'2023-04-29 21:08:18','2023-05-02 21:08:21',1),(35,'#10000035',4,'1','default','completed',256.00,0.00,0.00,NULL,NULL,0.00,256.00,1,NULL,1,'2023-05-02 21:08:18','AIiTqxQeGrSbhd6RO94XeJUehYEDb',35,'2023-05-01 13:08:18','2023-05-02 21:08:18',2),(36,'#10000036',4,'1','default','completed',336.00,0.00,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'2023-05-02 21:08:21','NBEeQgUXNh34ftqiW0oInp54NSZdC',36,'2023-04-30 21:08:18','2023-05-02 21:08:21',5),(37,'#10000037',4,'1','default','pending',226.00,0.00,0.00,NULL,NULL,0.00,226.00,1,NULL,1,NULL,'rBiHlxbUMNqPbo6A692FcQnpiR0ri',37,'2023-05-01 21:08:18','2023-05-02 21:08:18',5),(38,'#10000038',4,'1','default','completed',364.00,0.00,0.00,NULL,NULL,0.00,364.00,1,NULL,1,'2023-05-02 21:08:21','hduBx51EcroHeedT7TZ7t0SiT5saQ',38,'2023-04-30 15:08:18','2023-05-02 21:08:21',1),(39,'#10000039',4,'1','default','pending',363.00,0.00,0.00,NULL,NULL,0.00,363.00,1,NULL,1,NULL,'FYUP5bNduWyPuylMXOkdEow207ppB',39,'2023-04-30 15:08:18','2023-05-02 21:08:18',6),(40,'#10000040',4,'1','default','completed',123.00,0.00,0.00,NULL,NULL,0.00,123.00,1,NULL,1,'2023-05-02 21:08:21','B3WvtBo3jMAej6I3WElYKv19iqnBX',40,'2023-05-02 09:08:18','2023-05-02 21:08:21',2),(41,'#10000041',1,'1','default','completed',1662.00,0.00,0.00,NULL,NULL,0.00,1662.00,1,NULL,1,'2023-05-02 21:08:21','PT7ZjPU9whw8rkA22Tswlr1l9dO8w',41,'2023-05-02 01:08:18','2023-05-02 21:08:21',6),(42,'#10000042',1,'1','default','pending',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,NULL,'5NtpzueTTCF2MCuLu4aQHCcH4SyxC',42,'2023-05-01 13:08:18','2023-05-02 21:08:18',4),(43,'#10000043',1,'1','default','pending',372.00,0.00,0.00,NULL,NULL,0.00,372.00,1,NULL,1,NULL,'hnsUoKgWbkMKvsLNg3CqDxBJOcOUg',43,'2023-05-02 05:08:18','2023-05-02 21:08:18',1),(44,'#10000044',8,'1','default','completed',2065.00,0.00,0.00,NULL,NULL,0.00,2065.00,1,NULL,1,'2023-05-02 21:08:21','aVLtbqrHXgnGw0UjbqswnsqKTqWRo',44,'2023-05-02 05:08:18','2023-05-02 21:08:21',1),(45,'#10000045',8,'1','default','pending',339.00,0.00,0.00,NULL,NULL,0.00,339.00,1,NULL,1,NULL,'csnjQS4X4EEVOd6hRrvq1rXKt6Nb8',45,'2023-05-02 13:08:19','2023-05-02 21:08:19',3),(46,'#10000046',8,'1','default','pending',127.00,0.00,0.00,NULL,NULL,0.00,127.00,1,NULL,1,NULL,'IuFOq378Gf1YbkLAtFNOo6nyh0PBJ',46,'2023-05-02 13:08:19','2023-05-02 21:08:19',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2023-05-02 21:08:01','2023-05-02 21:08:01',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2023-05-02 21:08:01','2023-05-02 21:08:01',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2023-05-02 21:08:01','2023-05-02 21:08:01');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2023-05-02 21:08:01','2023-05-02 21:08:01'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2023-05-02 21:08:01','2023-05-02 21:08:01');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,24),(3,5),(3,19),(5,15),(6,9),(6,12),(7,2),(7,10),(8,11),(8,18),(8,20),(8,22),(9,1),(10,3),(10,13),(11,6),(11,21),(12,14),(13,4),(13,16),(14,7),(14,8),(14,17),(14,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,3),(1,10),(1,11),(1,14),(1,15),(1,16),(1,21),(1,22),(1,24),(2,1),(2,8),(2,9),(2,17),(2,18),(2,19),(2,23),(3,4),(3,5),(3,6),(3,7),(3,12),(3,13),(3,20);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,5),(1,8),(1,16),(1,23),(2,1),(2,3),(2,6),(2,18),(3,5),(3,8),(3,10),(3,19),(4,2),(4,10),(4,12),(4,24),(5,1),(5,6),(5,11),(5,20),(6,2),(6,9),(6,20),(6,23),(7,4),(7,5),(7,19),(7,20),(8,1),(8,14),(8,15),(8,21),(9,3),(9,8),(9,16),(9,21),(10,16),(10,21),(10,24),(11,15),(11,17),(11,22),(11,23),(12,10),(12,11),(12,14),(12,15),(13,9),(13,21),(13,23),(14,3),(14,6),(14,18),(14,21),(15,7),(15,17),(15,22),(16,9),(16,15),(16,20),(17,5),(17,8),(17,9),(17,22),(18,1),(18,4),(18,7),(18,20),(19,2),(19,14),(19,23),(19,24),(20,1),(20,8),(20,10),(20,24),(21,7),(21,16),(21,19),(21,23),(22,4),(22,5),(22,23),(23,1),(23,19),(23,20),(24,10),(24,12),(24,20),(24,22);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(4,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(5,27,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(6,27,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(7,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(8,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(9,38,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(10,38,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(11,39,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(12,39,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(13,45,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(14,45,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(15,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(16,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(17,47,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(18,47,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(19,59,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(20,59,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(21,60,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(22,60,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:05','2023-05-02 21:08:05'),(23,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(24,66,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(25,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(26,67,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(27,68,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(28,68,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(29,76,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(30,76,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(31,77,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(32,77,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(33,78,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06'),(34,78,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-05-02 21:08:06','2023-05-02 21:08:06');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,7),(2,14),(2,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(2,'New','#00c9a7','published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(3,'Sale','#fe9931','published','2023-05-02 21:08:01','2023-05-02 21:08:01');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,5),(2,1),(2,4),(2,6),(3,1),(3,2),(3,6),(4,3),(4,4),(4,6),(5,1),(5,5),(5,6),(6,1),(6,3),(6,5),(7,5),(7,6),(8,1),(8,4),(8,6),(9,2),(9,6),(10,4),(10,6),(11,1),(11,2),(11,3),(12,2),(12,3),(12,5),(13,4),(13,6),(14,1),(14,3),(14,5),(15,1),(15,2),(16,1),(16,4),(16,5),(17,2),(17,4),(17,6),(18,3),(18,4),(18,5),(19,4),(19,6),(20,2),(20,5),(20,6),(21,1),(21,2),(21,3),(22,1),(22,2),(23,1),(23,3),(24,2),(24,4),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(2,'Bags',NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(3,'Shoes',NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(4,'Clothes',NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01'),(5,'Hand bag',NULL,'published','2023-05-02 21:08:01','2023-05-02 21:08:01');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (9,1,5),(13,1,7),(19,1,10),(25,1,13),(31,1,16),(53,1,27),(59,1,30),(61,1,31),(77,1,39),(89,1,45),(93,1,47),(95,1,48),(117,1,59),(15,2,8),(23,2,12),(29,2,15),(43,2,22),(47,2,24),(63,2,32),(87,2,44),(91,2,46),(105,2,53),(107,2,54),(111,2,56),(1,3,1),(17,3,9),(21,3,11),(27,3,14),(39,3,20),(41,3,21),(45,3,23),(81,3,41),(85,3,43),(97,3,49),(119,3,60),(123,3,62),(3,4,2),(5,4,3),(7,4,4),(11,4,6),(37,4,19),(49,4,25),(55,4,28),(57,4,29),(99,4,50),(109,4,55),(113,4,57),(121,4,61),(33,5,17),(35,5,18),(51,5,26),(65,5,33),(67,5,34),(69,5,35),(71,5,36),(73,5,37),(75,5,38),(79,5,40),(83,5,42),(101,5,51),(103,5,52),(115,5,58),(2,6,1),(10,6,5),(22,6,11),(26,6,13),(28,6,14),(40,6,20),(44,6,22),(58,6,29),(64,6,32),(96,6,48),(100,6,50),(102,6,51),(108,6,54),(116,6,58),(8,7,4),(18,7,9),(52,7,26),(60,7,30),(118,7,59),(14,8,7),(24,8,12),(34,8,17),(50,8,25),(54,8,27),(72,8,36),(94,8,47),(110,8,55),(114,8,57),(16,9,8),(20,9,10),(32,9,16),(36,9,18),(42,9,21),(46,9,23),(56,9,28),(70,9,35),(74,9,37),(76,9,38),(80,9,40),(86,9,43),(88,9,44),(90,9,45),(98,9,49),(112,9,56),(124,9,62),(4,10,2),(6,10,3),(12,10,6),(30,10,15),(38,10,19),(48,10,24),(62,10,31),(66,10,33),(68,10,34),(78,10,39),(82,10,41),(84,10,42),(92,10,46),(104,10,52),(106,10,53),(120,10,60),(122,10,61);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,2,1),(5,29,2,0),(6,30,2,0),(7,31,3,1),(8,32,3,0),(9,33,3,0),(10,34,3,0),(11,35,4,1),(12,36,4,0),(13,37,5,1),(14,38,5,0),(15,39,5,0),(16,40,6,1),(17,41,7,1),(18,42,7,0),(19,43,8,1),(20,44,8,0),(21,45,9,1),(22,46,9,0),(23,47,9,0),(24,48,10,1),(25,49,10,0),(26,50,11,1),(27,51,11,0),(28,52,11,0),(29,53,11,0),(30,54,12,1),(31,55,12,0),(32,56,12,0),(33,57,12,0),(34,58,12,0),(35,59,13,1),(36,60,13,0),(37,61,14,1),(38,62,15,1),(39,63,15,0),(40,64,15,0),(41,65,16,1),(42,66,17,1),(43,67,17,0),(44,68,17,0),(45,69,18,1),(46,70,18,0),(47,71,19,1),(48,72,19,0),(49,73,19,0),(50,74,20,1),(51,75,20,0),(52,76,21,1),(53,77,21,0),(54,78,21,0),(55,79,22,1),(56,80,22,0),(57,81,23,1),(58,82,23,0),(59,83,23,0),(60,84,24,1),(61,85,24,0),(62,86,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-05-03',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-140-A0',0,11,0,1,1,3,0,0,433,NULL,NULL,NULL,17.00,15.00,14.00,693.00,NULL,102529,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,6,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-191-A0',0,20,0,1,1,2,0,0,367,NULL,NULL,NULL,20.00,18.00,18.00,737.00,NULL,125080,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-191-A0',0,18,0,1,1,4,0,0,413,NULL,NULL,NULL,18.00,10.00,13.00,727.00,NULL,163497,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-161-A0',0,13,0,1,1,5,0,0,81,71.28,NULL,NULL,14.00,19.00,17.00,634.00,NULL,166322,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-182-A0',0,12,0,1,1,6,0,0,40,NULL,NULL,NULL,14.00,12.00,12.00,671.00,NULL,189034,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-153-A0',0,14,0,1,1,7,0,0,53,NULL,NULL,NULL,16.00,12.00,12.00,622.00,NULL,153136,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,5,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-145-A0',0,11,0,1,1,6,0,0,121,NULL,NULL,NULL,15.00,13.00,16.00,612.00,NULL,170519,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-119-A0',0,11,0,1,1,7,0,0,113,100.57,NULL,NULL,20.00,17.00,13.00,572.00,NULL,173774,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,5,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-187-A0',0,12,0,1,1,5,0,0,113,NULL,NULL,NULL,20.00,10.00,16.00,514.00,NULL,18790,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-154-A0',0,11,0,1,1,4,0,0,364,NULL,NULL,NULL,19.00,16.00,14.00,565.00,NULL,2691,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-200-A0',0,13,0,1,1,1,0,0,130,NULL,NULL,NULL,19.00,12.00,16.00,588.00,NULL,144426,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-181-A0',0,20,0,1,1,7,0,0,128,90.88,NULL,NULL,12.00,19.00,20.00,681.00,NULL,196858,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-164-A0',0,19,0,1,1,6,0,0,130,NULL,NULL,NULL,19.00,18.00,19.00,603.00,NULL,97159,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-184-A0',0,19,0,1,1,2,0,0,118,NULL,NULL,NULL,19.00,20.00,10.00,522.00,NULL,160195,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-194-A0',0,11,0,1,1,1,0,0,112,NULL,NULL,NULL,11.00,19.00,18.00,520.00,NULL,43706,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,5,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-105-A0',0,11,0,1,1,7,0,0,123,100.86,NULL,NULL,11.00,13.00,13.00,614.00,NULL,179668,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,6,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-173-A0',0,10,0,1,1,6,0,0,121,NULL,NULL,NULL,14.00,11.00,15.00,866.00,NULL,15833,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,6,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-172-A0',0,15,0,1,1,7,0,0,127,NULL,NULL,NULL,15.00,19.00,13.00,691.00,NULL,102121,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,6,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-141-A0',0,12,0,1,1,7,0,0,116,NULL,NULL,NULL,14.00,19.00,11.00,800.00,NULL,35249,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-199-A0',0,20,0,1,1,7,0,0,127,97.79,NULL,NULL,12.00,16.00,10.00,530.00,NULL,146194,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-176-A0',0,14,0,1,1,7,0,0,123,NULL,NULL,NULL,11.00,19.00,15.00,645.00,NULL,59894,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-115-A0',0,16,0,1,1,3,0,0,128,NULL,NULL,NULL,20.00,15.00,16.00,627.00,NULL,76932,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-113-A0',0,17,0,1,1,2,0,0,124,NULL,NULL,NULL,20.00,18.00,13.00,745.00,NULL,114462,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-125-A0',0,17,0,1,1,1,0,0,125,111.25,NULL,NULL,19.00,18.00,11.00,668.00,NULL,27427,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,5,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-140-A0',0,11,0,1,0,3,1,0,433,NULL,NULL,NULL,17.00,15.00,14.00,693.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(26,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-140-A0-A1',0,11,0,1,0,3,1,0,433,NULL,NULL,NULL,17.00,15.00,14.00,693.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(27,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-140-A0-A2',0,11,0,1,0,3,1,0,433,NULL,NULL,NULL,17.00,15.00,14.00,693.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(28,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-191-A0',0,20,0,1,0,2,1,0,367,NULL,NULL,NULL,20.00,18.00,18.00,737.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-191-A0-A1',0,20,0,1,0,2,1,0,367,NULL,NULL,NULL,20.00,18.00,18.00,737.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(30,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-191-A0-A2',0,20,0,1,0,2,1,0,367,NULL,NULL,NULL,20.00,18.00,18.00,737.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-191-A0',0,18,0,1,0,4,1,0,413,NULL,NULL,NULL,18.00,10.00,13.00,727.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-191-A0-A1',0,18,0,1,0,4,1,0,413,NULL,NULL,NULL,18.00,10.00,13.00,727.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(33,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-191-A0-A2',0,18,0,1,0,4,1,0,413,NULL,NULL,NULL,18.00,10.00,13.00,727.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-191-A0-A3',0,18,0,1,0,4,1,0,413,NULL,NULL,NULL,18.00,10.00,13.00,727.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(35,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-161-A0',0,13,0,1,0,5,1,0,81,71.28,NULL,NULL,14.00,19.00,17.00,634.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(36,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-161-A0-A1',0,13,0,1,0,5,1,0,81,66.42,NULL,NULL,14.00,19.00,17.00,634.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(37,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-182-A0',0,12,0,1,0,6,1,0,40,NULL,NULL,NULL,14.00,12.00,12.00,671.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(38,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-182-A0-A1',0,12,0,1,0,6,1,0,40,NULL,NULL,NULL,14.00,12.00,12.00,671.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(39,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-182-A0-A2',0,12,0,1,0,6,1,0,40,NULL,NULL,NULL,14.00,12.00,12.00,671.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(40,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-153-A0',0,14,0,1,0,7,1,0,53,NULL,NULL,NULL,16.00,12.00,12.00,622.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-145-A0',0,11,0,1,0,6,1,0,121,NULL,NULL,NULL,15.00,13.00,16.00,612.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-145-A0-A1',0,11,0,1,0,6,1,0,121,NULL,NULL,NULL,15.00,13.00,16.00,612.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(43,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-119-A0',0,11,0,1,0,7,1,0,113,100.57,NULL,NULL,20.00,17.00,13.00,572.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(44,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-119-A0-A1',0,11,0,1,0,7,1,0,113,80.23,NULL,NULL,20.00,17.00,13.00,572.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(45,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-187-A0',0,12,0,1,0,5,1,0,113,NULL,NULL,NULL,20.00,10.00,16.00,514.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-187-A0-A1',0,12,0,1,0,5,1,0,113,NULL,NULL,NULL,20.00,10.00,16.00,514.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(47,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-187-A0-A2',0,12,0,1,0,5,1,0,113,NULL,NULL,NULL,20.00,10.00,16.00,514.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(48,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-154-A0',0,11,0,1,0,4,1,0,364,NULL,NULL,NULL,19.00,16.00,14.00,565.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-154-A0-A1',0,11,0,1,0,4,1,0,364,NULL,NULL,NULL,19.00,16.00,14.00,565.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-200-A0',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,19.00,12.00,16.00,588.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-200-A0-A1',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,19.00,12.00,16.00,588.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(52,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-200-A0-A2',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,19.00,12.00,16.00,588.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(53,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-200-A0-A3',0,13,0,1,0,1,1,0,130,NULL,NULL,NULL,19.00,12.00,16.00,588.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(54,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-181-A0',0,20,0,1,0,7,1,0,128,90.88,NULL,NULL,12.00,19.00,20.00,681.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(55,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-181-A0-A1',0,20,0,1,0,7,1,0,128,111.36,NULL,NULL,12.00,19.00,20.00,681.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-181-A0-A2',0,20,0,1,0,7,1,0,128,90.88,NULL,NULL,12.00,19.00,20.00,681.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-181-A0-A3',0,20,0,1,0,7,1,0,128,112.64,NULL,NULL,12.00,19.00,20.00,681.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-181-A0-A4',0,20,0,1,0,7,1,0,128,90.88,NULL,NULL,12.00,19.00,20.00,681.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(59,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-164-A0',0,19,0,1,0,6,1,0,130,NULL,NULL,NULL,19.00,18.00,19.00,603.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(60,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-164-A0-A1',0,19,0,1,0,6,1,0,130,NULL,NULL,NULL,19.00,18.00,19.00,603.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(61,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-184-A0',0,19,0,1,0,2,1,0,118,NULL,NULL,NULL,19.00,20.00,10.00,522.00,NULL,0,'2023-05-02 21:08:05','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(62,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-194-A0',0,11,0,1,0,1,1,0,112,NULL,NULL,NULL,11.00,19.00,18.00,520.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(63,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-194-A0-A1',0,11,0,1,0,1,1,0,112,NULL,NULL,NULL,11.00,19.00,18.00,520.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(64,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-194-A0-A2',0,11,0,1,0,1,1,0,112,NULL,NULL,NULL,11.00,19.00,18.00,520.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-105-A0',0,11,0,1,0,7,1,0,123,100.86,NULL,NULL,11.00,13.00,13.00,614.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(66,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-173-A0',0,10,0,1,0,6,1,0,121,NULL,NULL,NULL,14.00,11.00,15.00,866.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-173-A0-A1',0,10,0,1,0,6,1,0,121,NULL,NULL,NULL,14.00,11.00,15.00,866.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(68,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-173-A0-A2',0,10,0,1,0,6,1,0,121,NULL,NULL,NULL,14.00,11.00,15.00,866.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(69,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-172-A0',0,15,0,1,0,7,1,0,127,NULL,NULL,NULL,15.00,19.00,13.00,691.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(70,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-172-A0-A1',0,15,0,1,0,7,1,0,127,NULL,NULL,NULL,15.00,19.00,13.00,691.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(71,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-141-A0',0,12,0,1,0,7,1,0,116,NULL,NULL,NULL,14.00,19.00,11.00,800.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(72,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-141-A0-A1',0,12,0,1,0,7,1,0,116,NULL,NULL,NULL,14.00,19.00,11.00,800.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(73,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-141-A0-A2',0,12,0,1,0,7,1,0,116,NULL,NULL,NULL,14.00,19.00,11.00,800.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(74,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-199-A0',0,20,0,1,0,7,1,0,127,97.79,NULL,NULL,12.00,16.00,10.00,530.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(75,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-199-A0-A1',0,20,0,1,0,7,1,0,127,106.68,NULL,NULL,12.00,16.00,10.00,530.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(76,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-176-A0',0,14,0,1,0,7,1,0,123,NULL,NULL,NULL,11.00,19.00,15.00,645.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(77,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-176-A0-A1',0,14,0,1,0,7,1,0,123,NULL,NULL,NULL,11.00,19.00,15.00,645.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(78,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-176-A0-A2',0,14,0,1,0,7,1,0,123,NULL,NULL,NULL,11.00,19.00,15.00,645.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-115-A0',0,16,0,1,0,3,1,0,128,NULL,NULL,NULL,20.00,15.00,16.00,627.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(80,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-115-A0-A1',0,16,0,1,0,3,1,0,128,NULL,NULL,NULL,20.00,15.00,16.00,627.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(81,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-113-A0',0,17,0,1,0,2,1,0,124,NULL,NULL,NULL,20.00,18.00,13.00,745.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(82,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-113-A0-A1',0,17,0,1,0,2,1,0,124,NULL,NULL,NULL,20.00,18.00,13.00,745.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(83,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-113-A0-A2',0,17,0,1,0,2,1,0,124,NULL,NULL,NULL,20.00,18.00,13.00,745.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(84,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-125-A0',0,17,0,1,0,1,1,0,125,111.25,NULL,NULL,19.00,18.00,11.00,668.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(85,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-125-A0-A1',0,17,0,1,0,1,1,0,125,107.5,NULL,NULL,19.00,18.00,11.00,668.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(86,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-125-A0-A2',0,17,0,1,0,1,1,0,125,90,NULL,NULL,19.00,18.00,11.00,668.00,NULL,0,'2023-05-02 21:08:06','2023-05-02 21:08:15','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',27,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',28,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',29,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',30,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',31,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',32,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',33,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',34,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',35,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',36,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',37,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',38,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',39,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',40,'Chobani vani Hy Lạp',NULL,NULL),('vi',41,'Gừng khô Canada',NULL,NULL),('vi',42,'Gừng khô Canada',NULL,NULL),('vi',43,'Hải sản Alaska',NULL,NULL),('vi',44,'Hải sản Alaska',NULL,NULL),('vi',45,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',46,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',47,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',48,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',49,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',50,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',51,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',52,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',53,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',54,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',55,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',56,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',57,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',58,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',59,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',60,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',61,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',62,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',63,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',64,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',66,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',67,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',68,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',69,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',70,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',71,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',72,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',73,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',74,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',75,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',76,'Dưa hấu chen',NULL,NULL),('vi',77,'Dưa hấu chen',NULL,NULL),('vi',78,'Dưa hấu chen',NULL,NULL),('vi',79,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',80,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',81,'Chuối đầy màu sắc',NULL,NULL),('vi',82,'Chuối đầy màu sắc',NULL,NULL),('vi',83,'Chuối đầy màu sắc',NULL,NULL),('vi',84,'Nấm đặc trưng và caramel',NULL,NULL),('vi',85,'Nấm đặc trưng và caramel',NULL,NULL),('vi',86,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,6,5.00,'Clean & perfect source code','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/11.jpg\"}'),(2,1,10,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(4,4,24,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\"]'),(5,5,19,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),(6,10,6,2.00,'Best ecommerce CMS online store!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(7,5,11,3.00,'Clean & perfect source code','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(8,8,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(9,3,19,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\"]'),(10,10,14,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(11,8,14,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(12,3,12,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(13,4,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\"]'),(14,4,13,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(15,3,1,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(16,7,7,2.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(17,5,6,4.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(18,10,21,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(19,5,12,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\"]'),(20,6,22,1.00,'Best ecommerce CMS online store!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(21,8,6,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(23,6,4,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(24,1,20,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(25,6,10,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(26,1,9,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(28,4,15,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(29,4,21,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(30,9,23,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\"]'),(31,9,15,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(32,6,12,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(33,5,5,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(34,3,13,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(35,6,23,1.00,'Clean & perfect source code','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(36,6,3,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\"]'),(37,4,6,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\"]'),(38,8,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(39,2,17,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(40,3,11,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(41,7,8,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(42,10,3,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(43,9,1,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(44,8,16,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(45,6,14,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\"]'),(46,4,19,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(47,9,11,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(50,4,22,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(51,1,13,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(52,1,23,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(54,2,16,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/23.jpg\"}'),(55,5,16,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(58,7,1,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(59,7,12,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(61,7,16,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(62,2,12,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(63,2,19,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/11.jpg\"}'),(64,2,20,4.00,'Clean & perfect source code','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(65,4,8,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(66,10,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(67,6,15,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(68,9,16,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\"]'),(69,1,5,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/23.jpg\"}'),(70,4,20,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(71,9,14,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(72,7,9,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(74,8,5,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(75,8,21,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(78,3,14,4.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(79,9,9,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\"]'),(80,1,11,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(81,8,20,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(82,6,18,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(84,1,18,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(88,2,23,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\"]'),(89,9,5,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\"]'),(91,1,2,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(93,10,7,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\"]'),(94,10,4,5.00,'Best ecommerce CMS online store!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/4.jpg\"]'),(95,5,7,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(97,10,18,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(98,8,24,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(100,9,19,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-05-02 21:08:08','2023-05-02 21:08:08','[\"products\\/1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-04-26 05:08:16','2023-04-26 05:08:16','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-05-01 05:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-04-21 05:08:16','2023-04-21 05:08:16','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-05-01 05:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(5,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,2,2,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-04-22 21:08:16','2023-04-22 21:08:16','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-05-01 05:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-04-24 23:08:16','2023-04-24 23:08:16','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-05-01 07:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-04-18 15:08:16','2023-04-18 15:08:16','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-05-01 07:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-04-19 09:08:16','2023-04-19 09:08:16','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-05-01 09:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-04-30 01:08:16','2023-04-30 01:08:16','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-05-01 11:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-04-27 05:08:16','2023-04-27 05:08:16','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-05-01 11:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-04-19 13:08:16','2023-04-19 13:08:16','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-05-01 13:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-04-27 13:08:16','2023-04-27 13:08:16','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-05-01 13:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-04-26 15:08:16','2023-04-26 15:08:16','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-05-01 15:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-04-20 09:08:16','2023-04-20 09:08:16','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-05-01 15:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(32,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,12,12,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-04-25 21:08:16','2023-04-25 21:08:16','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-05-01 17:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(37,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-04-23 13:08:16','2023-04-23 13:08:16','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-05-01 17:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\ACL\\Models\\User'),(40,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-04-24 05:08:16','2023-04-24 05:08:16','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-05-01 19:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(42,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-04-26 09:08:17','2023-04-26 09:08:17','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-05-01 19:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,16,16,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(45,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-04-27 21:08:17','2023-04-27 21:08:17','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-05-01 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(47,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-05-01 21:08:17','2023-05-01 21:08:17','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-05-01 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(49,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-04-29 21:08:17','2023-04-29 21:08:17','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-05-01 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(51,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,19,19,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(53,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-04-29 05:08:17','2023-04-29 05:08:17','Botble\\ACL\\Models\\User'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-05-01 23:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-04-24 15:08:17','2023-04-24 15:08:17','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-05-01 23:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(58,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-04-29 13:08:17','2023-04-29 13:08:17','Botble\\ACL\\Models\\User'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-05-02 01:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-04-26 05:08:17','2023-04-26 05:08:17','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-05-02 01:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(63,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-04-25 09:08:17','2023-04-25 09:08:17','Botble\\ACL\\Models\\User'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-05-02 03:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-04-28 09:08:17','2023-04-28 09:08:17','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-05-02 03:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(68,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-04-30 21:08:17','2023-04-30 21:08:17','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-05-02 05:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(70,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(71,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-04-28 21:08:17','2023-04-28 21:08:17','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-05-02 05:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,27,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(74,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-04-28 05:08:17','2023-04-28 05:08:17','Botble\\ACL\\Models\\User'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-05-02 07:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(77,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-04-28 19:08:17','2023-04-28 19:08:17','Botble\\ACL\\Models\\User'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-05-02 07:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(79,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,29,29,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\ACL\\Models\\User'),(81,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-05-02 09:08:17','2023-05-02 09:08:17','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-05-02 09:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(83,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-04-29 09:08:18','2023-04-29 09:08:18','Botble\\ACL\\Models\\User'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-05-02 09:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,31,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(86,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-05-02 01:08:18','2023-05-02 01:08:18','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-05-02 11:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(88,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-04-28 17:08:18','2023-04-28 17:08:18','Botble\\ACL\\Models\\User'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-05-02 11:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(90,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,33,33,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(92,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-04-29 21:08:18','2023-04-29 21:08:18','Botble\\ACL\\Models\\User'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-05-02 13:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,34,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(95,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-05-01 13:08:18','2023-05-01 13:08:18','Botble\\ACL\\Models\\User'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-05-02 13:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(97,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,35,35,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(98,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,35,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(99,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-04-30 21:08:18','2023-04-30 21:08:18','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-05-02 13:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(102,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-05-01 21:08:18','2023-05-01 21:08:18','Botble\\ACL\\Models\\User'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-05-02 15:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(104,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-04-30 15:08:18','2023-04-30 15:08:18','Botble\\ACL\\Models\\User'),(105,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-05-02 15:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(106,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,38,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(107,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-04-30 15:08:18','2023-04-30 15:08:18','Botble\\ACL\\Models\\User'),(108,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-05-02 15:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(109,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-05-02 09:08:18','2023-05-02 09:08:18','Botble\\ACL\\Models\\User'),(110,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-05-02 15:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(111,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(112,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-05-02 01:08:18','2023-05-02 01:08:18','Botble\\ACL\\Models\\User'),(113,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-05-02 17:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(114,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(115,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-05-01 13:08:18','2023-05-01 13:08:18','Botble\\ACL\\Models\\User'),(116,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-05-02 17:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(117,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-05-02 05:08:18','2023-05-02 05:08:18','Botble\\ACL\\Models\\User'),(118,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-05-02 17:08:18','2023-05-02 21:08:18','Botble\\ACL\\Models\\User'),(119,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2023-05-02 05:08:18','2023-05-02 05:08:18','Botble\\ACL\\Models\\User'),(120,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2023-05-02 19:08:19','2023-05-02 21:08:19','Botble\\ACL\\Models\\User'),(121,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,44,'2023-05-02 21:08:19','2023-05-02 21:08:19','Botble\\ACL\\Models\\User'),(122,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2023-05-02 13:08:19','2023-05-02 13:08:19','Botble\\ACL\\Models\\User'),(123,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2023-05-02 19:08:19','2023-05-02 21:08:19','Botble\\ACL\\Models\\User'),(124,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2023-05-02 13:08:19','2023-05-02 13:08:19','Botble\\ACL\\Models\\User'),(125,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2023-05-02 19:08:19','2023-05-02 21:08:19','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2598.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0018716788','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:08:16',NULL,NULL,NULL),(2,2,NULL,1590.00,NULL,NULL,'','delivered',381.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0017489224','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:08:16','2023-05-03 04:08:16',NULL,NULL),(3,3,NULL,2004.00,NULL,NULL,'','approved',375.00,'pending','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD007594067','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-13 04:08:16',NULL,NULL,NULL),(4,4,NULL,1386.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0042044632','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-13 04:08:16','2023-05-03 04:08:16',NULL,NULL),(5,5,NULL,4120.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0036918556','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-09 04:08:16','2023-05-03 04:08:16',NULL,NULL),(6,6,NULL,1362.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0098190545','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-06 04:08:16','2023-05-03 04:08:16',NULL,NULL),(7,7,NULL,1386.00,NULL,NULL,'','approved',866.00,'pending','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD005421297','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:08:16',NULL,NULL,NULL),(8,8,NULL,1144.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0085228649','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:08:16',NULL,NULL,NULL),(9,9,NULL,1176.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0077663996','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-13 04:08:16','2023-05-03 04:08:16',NULL,NULL),(10,10,NULL,866.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0026125890','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:16','2023-05-03 04:08:16',NULL,NULL),(11,11,NULL,1028.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0029060600','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-06 04:08:16',NULL,NULL,NULL),(12,12,NULL,1203.00,NULL,NULL,'','delivered',246.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0046247418','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-08 04:08:16','2023-05-03 04:08:16',NULL,NULL),(13,13,NULL,622.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0078364868','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:08:16','2023-05-03 04:08:16',NULL,NULL),(14,14,NULL,4848.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:16','2023-05-02 21:08:16','JJD0053342543','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:08:16','2023-05-03 04:08:16',NULL,NULL),(15,15,NULL,2376.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0086191490','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:08:17',NULL,NULL,NULL),(16,16,NULL,2120.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0073614987','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:17','2023-05-03 04:08:17',NULL,NULL),(17,17,NULL,1454.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD002581598','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:17',NULL,NULL,NULL),(18,18,NULL,1902.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0037834995','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:17',NULL,NULL,NULL),(19,19,NULL,622.00,NULL,NULL,'','delivered',53.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0030521827','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:17','2023-05-03 04:08:17',NULL,NULL),(20,20,NULL,3254.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0048544575','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:08:17','2023-05-03 04:08:17',NULL,NULL),(21,21,NULL,2004.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0099150615','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:17',NULL,NULL,NULL),(22,22,NULL,3999.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0033053169','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-10 04:08:17','2023-05-03 04:08:17',NULL,NULL),(23,23,NULL,1935.00,NULL,NULL,'','approved',369.00,'pending','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0029841830','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:08:17',NULL,NULL,NULL),(24,24,NULL,3218.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0025078346','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-06 04:08:17','2023-05-03 04:08:17',NULL,NULL),(25,25,NULL,1342.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0060611181','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:08:17',NULL,NULL,NULL),(26,26,NULL,1732.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0085982034','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:08:17','2023-05-03 04:08:17',NULL,NULL),(27,27,NULL,3481.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0095075037','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:17','2023-05-03 04:08:17',NULL,NULL),(28,28,NULL,2211.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0045656389','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:08:17','2023-05-03 04:08:17',NULL,NULL),(29,29,NULL,1224.00,NULL,NULL,'','delivered',242.00,'completed','pending',0.00,0,'2023-05-02 21:08:17','2023-05-02 21:08:17','JJD0036688470','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:08:17','2023-05-03 04:08:17',NULL,NULL),(30,30,NULL,5018.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0071638285','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-10 04:08:18',NULL,NULL,NULL),(31,31,NULL,681.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0044735414','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-08 04:08:18','2023-05-03 04:08:18',NULL,NULL),(32,32,NULL,1362.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0097713547','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-09 04:08:18',NULL,NULL,NULL),(33,33,NULL,603.00,NULL,NULL,'','delivered',130.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0076307640','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-06 04:08:18','2023-05-03 04:08:18',NULL,NULL),(34,34,NULL,1412.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0085112366','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:18','2023-05-03 04:08:18',NULL,NULL),(35,35,NULL,1362.00,NULL,NULL,'','delivered',256.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0014443142','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-09 04:08:18','2023-05-03 04:08:18',NULL,NULL),(36,36,NULL,1560.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0026035264','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:08:18','2023-05-03 04:08:18',NULL,NULL),(37,37,NULL,1144.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0065751833','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-09 04:08:18',NULL,NULL,NULL),(38,38,NULL,565.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0072119083','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-08 04:08:18','2023-05-03 04:08:18',NULL,NULL),(39,39,NULL,2598.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0019574194','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:08:18',NULL,NULL,NULL),(40,40,NULL,645.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0038847160','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:08:18','2023-05-03 04:08:18',NULL,NULL),(41,41,NULL,4677.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD001398214','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:08:18','2023-05-03 04:08:18',NULL,NULL),(42,42,NULL,634.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0081030448','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:08:18',NULL,NULL,NULL),(43,43,NULL,2235.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:18','2023-05-02 21:08:18','JJD0097880347','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-09 04:08:18',NULL,NULL,NULL),(44,44,NULL,3635.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:19','2023-05-02 21:08:19','JJD0071566678','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:08:19','2023-05-03 04:08:19',NULL,NULL),(45,45,NULL,1542.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:19','2023-05-02 21:08:19','JJD0063966933','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:08:19',NULL,NULL,NULL),(46,46,NULL,530.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:08:19','2023-05-02 21:08:19','JJD0044282773','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-10 04:08:19',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-05-02 21:08:08','2023-05-02 21:08:08');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-05-02 21:08:08','2023-05-02 21:08:08');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-05-02 21:08:08','2023-05-02 21:08:08');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-05-02 21:08:06','2023-05-02 21:08:06'),(2,'None',0.000000,2,'published','2023-05-02 21:08:06','2023-05-02 21:08:06'),(3,'Import Tax',15.000000,3,'published','2023-05-02 21:08:06','2023-05-02 21:08:06');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(2,'Payment',1,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(3,'Order &amp; Returns',2,'published','2023-05-02 21:08:12','2023-05-02 21:08:12');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-05-02 21:08:12','2023-05-02 21:08:12'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-05-02 21:08:12','2023-05-02 21:08:12');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','bcf397d7c2898d1774aaa9eed157ea20',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','6d8c439111a315db1284bef3efb58d1b',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','4421ab71370a3efca84c322b70deb288',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','c5255356fd28b7a00239208c7575e81e',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','05b702516e52a4ab2e6d31dc391275f4',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','f4943f5f07d30438044d91cc39ce85aa',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','36eb5f93bc882813ba82d9f200c95245',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','bcf397d7c2898d1774aaa9eed157ea20',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','6d8c439111a315db1284bef3efb58d1b',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','4421ab71370a3efca84c322b70deb288',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','c5255356fd28b7a00239208c7575e81e',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','05b702516e52a4ab2e6d31dc391275f4',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','f4943f5f07d30438044d91cc39ce85aa',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','36eb5f93bc882813ba82d9f200c95245',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','9d26b3443d915f79db55e912dd38dbf9',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','29b7971f691ab2a4038607d7f7a41a53',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','806f56c16af7a6770423ed236d41162b',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','566a67ad8c0e75dd34b5c5d064289eed',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','3aba5c85f02fcd2afee0e424f7950d01',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','d59692edc108f24b34cc6f9298323074',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','33aafb9390fa927fcbe1e7741221cbe3',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','7b8935e89225100106bfa9814a265463',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','29b7971f691ab2a4038607d7f7a41a53',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','e36354c02eb1aa1f3ee010dd5d9b7485',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','566a67ad8c0e75dd34b5c5d064289eed',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','3aba5c85f02fcd2afee0e424f7950d01',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','d59692edc108f24b34cc6f9298323074',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','33aafb9390fa927fcbe1e7741221cbe3',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,1,0),(3,'Arabic','ar','ar','ar',0,2,1);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',1307,'product-categories/icon-1.png','[]','2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(2,0,'icon-10','icon-10',1,'image/png',1307,'product-categories/icon-10.png','[]','2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(3,0,'icon-11','icon-11',1,'image/png',1307,'product-categories/icon-11.png','[]','2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(4,0,'icon-12','icon-12',1,'image/png',1307,'product-categories/icon-12.png','[]','2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(5,0,'icon-13','icon-13',1,'image/png',1307,'product-categories/icon-13.png','[]','2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(6,0,'icon-14','icon-14',1,'image/png',1307,'product-categories/icon-14.png','[]','2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(7,0,'icon-2','icon-2',1,'image/png',1307,'product-categories/icon-2.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(8,0,'icon-3','icon-3',1,'image/png',1307,'product-categories/icon-3.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(9,0,'icon-4','icon-4',1,'image/png',1307,'product-categories/icon-4.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(10,0,'icon-5','icon-5',1,'image/png',1307,'product-categories/icon-5.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(11,0,'icon-6','icon-6',1,'image/png',1307,'product-categories/icon-6.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(12,0,'icon-7','icon-7',1,'image/png',1307,'product-categories/icon-7.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(13,0,'icon-8','icon-8',1,'image/png',1307,'product-categories/icon-8.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(14,0,'icon-9','icon-9',1,'image/png',1307,'product-categories/icon-9.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(15,0,'image-1','image-1',1,'image/png',1307,'product-categories/image-1.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(16,0,'image-10','image-10',1,'image/png',1307,'product-categories/image-10.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(17,0,'image-11','image-11',1,'image/png',1307,'product-categories/image-11.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(18,0,'image-12','image-12',1,'image/png',1307,'product-categories/image-12.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(19,0,'image-13','image-13',1,'image/png',1307,'product-categories/image-13.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(20,0,'image-14','image-14',1,'image/png',1307,'product-categories/image-14.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(21,0,'image-15','image-15',1,'image/png',1307,'product-categories/image-15.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(22,0,'image-2','image-2',1,'image/png',1307,'product-categories/image-2.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(23,0,'image-3','image-3',1,'image/png',1307,'product-categories/image-3.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(24,0,'image-4','image-4',1,'image/png',1307,'product-categories/image-4.png','[]','2023-05-02 21:08:00','2023-05-02 21:08:00',NULL),(25,0,'image-5','image-5',1,'image/png',1307,'product-categories/image-5.png','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(26,0,'image-6','image-6',1,'image/png',1307,'product-categories/image-6.png','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(27,0,'image-7','image-7',1,'image/png',1307,'product-categories/image-7.png','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(28,0,'image-8','image-8',1,'image/png',1307,'product-categories/image-8.png','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(29,0,'image-9','image-9',1,'image/png',1307,'product-categories/image-9.png','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(30,0,'1-1','1-1',2,'image/jpeg',2165,'products/1-1.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(31,0,'1','1',2,'image/jpeg',2165,'products/1.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(32,0,'10-1','10-1',2,'image/jpeg',2165,'products/10-1.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(33,0,'10','10',2,'image/jpeg',2165,'products/10.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(34,0,'11-1','11-1',2,'image/jpeg',2165,'products/11-1.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(35,0,'11','11',2,'image/jpeg',2165,'products/11.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(36,0,'12-1','12-1',2,'image/jpeg',2165,'products/12-1.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(37,0,'12','12',2,'image/jpeg',2165,'products/12.jpg','[]','2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(38,0,'13-1','13-1',2,'image/jpeg',2165,'products/13-1.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(39,0,'13','13',2,'image/jpeg',2165,'products/13.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(40,0,'14-1','14-1',2,'image/jpeg',2165,'products/14-1.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(41,0,'14','14',2,'image/jpeg',2165,'products/14.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(42,0,'15-1','15-1',2,'image/jpeg',2165,'products/15-1.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(43,0,'15','15',2,'image/jpeg',2165,'products/15.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(44,0,'16-1','16-1',2,'image/jpeg',2165,'products/16-1.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(45,0,'16-2','16-2',2,'image/jpeg',2165,'products/16-2.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(46,0,'16-3','16-3',2,'image/jpeg',2165,'products/16-3.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(47,0,'16-4','16-4',2,'image/jpeg',2165,'products/16-4.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(48,0,'16-5','16-5',2,'image/jpeg',2165,'products/16-5.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(49,0,'16-6','16-6',2,'image/jpeg',2165,'products/16-6.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(50,0,'16','16',2,'image/jpeg',2165,'products/16.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(51,0,'17-1','17-1',2,'image/jpeg',2165,'products/17-1.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(52,0,'17','17',2,'image/jpeg',2165,'products/17.jpg','[]','2023-05-02 21:08:02','2023-05-02 21:08:02',NULL),(53,0,'18-1','18-1',2,'image/jpeg',2165,'products/18-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(54,0,'18','18',2,'image/jpeg',2165,'products/18.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(55,0,'19-1','19-1',2,'image/jpeg',2165,'products/19-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(56,0,'19','19',2,'image/jpeg',2165,'products/19.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(57,0,'2-1','2-1',2,'image/jpeg',2165,'products/2-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(58,0,'2','2',2,'image/jpeg',2165,'products/2.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(59,0,'20-1','20-1',2,'image/jpeg',2165,'products/20-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(60,0,'20','20',2,'image/jpeg',2165,'products/20.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(61,0,'21-1','21-1',2,'image/jpeg',2165,'products/21-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(62,0,'21','21',2,'image/jpeg',2165,'products/21.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(63,0,'22-1','22-1',2,'image/jpeg',2165,'products/22-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(64,0,'22','22',2,'image/jpeg',2165,'products/22.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(65,0,'23-1','23-1',2,'image/jpeg',2165,'products/23-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(66,0,'23','23',2,'image/jpeg',2165,'products/23.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(67,0,'24-1','24-1',2,'image/jpeg',2165,'products/24-1.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(68,0,'24','24',2,'image/jpeg',2165,'products/24.jpg','[]','2023-05-02 21:08:03','2023-05-02 21:08:03',NULL),(69,0,'3-1','3-1',2,'image/jpeg',2165,'products/3-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(70,0,'3','3',2,'image/jpeg',2165,'products/3.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(71,0,'4-1','4-1',2,'image/jpeg',2165,'products/4-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(72,0,'4','4',2,'image/jpeg',2165,'products/4.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(73,0,'5-1','5-1',2,'image/jpeg',2165,'products/5-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(74,0,'5','5',2,'image/jpeg',2165,'products/5.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(75,0,'6-1','6-1',2,'image/jpeg',2165,'products/6-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(76,0,'6','6',2,'image/jpeg',2165,'products/6.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(77,0,'7-1','7-1',2,'image/jpeg',2165,'products/7-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(78,0,'7','7',2,'image/jpeg',2165,'products/7.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(79,0,'8-1','8-1',2,'image/jpeg',2165,'products/8-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(80,0,'8','8',2,'image/jpeg',2165,'products/8.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(81,0,'9-1','9-1',2,'image/jpeg',2165,'products/9-1.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(82,0,'9','9',2,'image/jpeg',2165,'products/9.jpg','[]','2023-05-02 21:08:04','2023-05-02 21:08:04',NULL),(83,0,'1','1',3,'image/jpeg',2165,'customers/1.jpg','[]','2023-05-02 21:08:06','2023-05-02 21:08:06',NULL),(84,0,'2','2',3,'image/jpeg',2165,'customers/2.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(85,0,'3','3',3,'image/jpeg',2165,'customers/3.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(86,0,'4','4',3,'image/jpeg',2165,'customers/4.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(87,0,'5','5',3,'image/jpeg',2165,'customers/5.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(88,0,'6','6',3,'image/jpeg',2165,'customers/6.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(89,0,'7','7',3,'image/jpeg',2165,'customers/7.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(90,0,'8','8',3,'image/jpeg',2165,'customers/8.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(91,0,'9','9',3,'image/jpeg',2165,'customers/9.jpg','[]','2023-05-02 21:08:07','2023-05-02 21:08:07',NULL),(92,0,'1','1',4,'image/png',3187,'flash-sales/1.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(93,0,'2','2',4,'image/png',2392,'flash-sales/2.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(94,0,'3','3',4,'image/png',2392,'flash-sales/3.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(95,0,'4','4',4,'image/png',2392,'flash-sales/4.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(96,0,'5','5',4,'image/png',2392,'flash-sales/5.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(97,0,'1-1','1-1',5,'image/png',10577,'sliders/1-1.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(98,0,'1-2','1-2',5,'image/png',10577,'sliders/1-2.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(99,0,'1-3','1-3',5,'image/png',2697,'sliders/1-3.png','[]','2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(100,0,'2-1','2-1',5,'image/png',4556,'sliders/2-1.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(101,0,'2-2','2-2',5,'image/png',4556,'sliders/2-2.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(102,0,'2-3','2-3',5,'image/png',2697,'sliders/2-3.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(103,0,'3-1','3-1',5,'image/png',10577,'sliders/3-1.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(104,0,'3-2','3-2',5,'image/png',10577,'sliders/3-2.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(105,0,'4-1','4-1',5,'image/png',10577,'sliders/4-1.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(106,0,'4-2','4-2',5,'image/png',10577,'sliders/4-2.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(107,0,'4-3','4-3',5,'image/png',2697,'sliders/4-3.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(108,0,'5-1','5-1',5,'image/png',5213,'sliders/5-1.png','[]','2023-05-02 21:08:09','2023-05-02 21:08:09',NULL),(109,0,'5-2','5-2',5,'image/png',5213,'sliders/5-2.png','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(110,0,'banner-1','banner-1',5,'image/png',12801,'sliders/banner-1.png','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(111,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',2165,'sliders/thumbnail-1.jpg','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(112,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',2165,'sliders/thumbnail-2.jpg','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(113,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',2165,'sliders/thumbnail-3.jpg','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(114,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',2165,'sliders/thumbnail-4.jpg','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(115,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',2165,'sliders/thumbnail-5.jpg','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(116,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',2165,'sliders/thumbnail-6.jpg','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(117,0,'1','1',6,'image/png',2165,'news/1.png','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(118,0,'10','10',6,'image/png',2165,'news/10.png','[]','2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(119,0,'11','11',6,'image/png',2165,'news/11.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(120,0,'2','2',6,'image/png',2165,'news/2.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(121,0,'3','3',6,'image/png',2165,'news/3.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(122,0,'4','4',6,'image/png',2165,'news/4.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(123,0,'5','5',6,'image/png',2165,'news/5.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(124,0,'6','6',6,'image/png',2165,'news/6.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(125,0,'7','7',6,'image/png',2165,'news/7.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(126,0,'8','8',6,'image/png',2165,'news/8.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(127,0,'9','9',6,'image/png',2165,'news/9.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(128,0,'1','1',7,'image/png',3010,'promotion/1.png','[]','2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(129,0,'10','10',7,'image/png',2722,'promotion/10.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(130,0,'11','11',7,'image/png',2722,'promotion/11.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(131,0,'12','12',7,'image/png',2722,'promotion/12.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(132,0,'2','2',7,'image/png',3010,'promotion/2.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(133,0,'3','3',7,'image/png',3010,'promotion/3.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(134,0,'4','4',7,'image/png',2266,'promotion/4.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(135,0,'5','5',7,'image/png',3847,'promotion/5.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(136,0,'6','6',7,'image/png',3847,'promotion/6.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(137,0,'7','7',7,'image/png',2905,'promotion/7.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(138,0,'8','8',7,'image/png',1926,'promotion/8.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(139,0,'9','9',7,'image/png',2722,'promotion/9.png','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(140,0,'app-store','app-store',8,'image/jpeg',1064,'general/app-store.jpg','[]','2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(141,0,'category-1','category-1',8,'image/png',231,'general/category-1.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(142,0,'facebook','facebook',8,'image/png',646,'general/facebook.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(143,0,'favicon','favicon',8,'image/png',3890,'general/favicon.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(144,0,'google-play','google-play',8,'image/jpeg',1064,'general/google-play.jpg','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(145,0,'header-bg','header-bg',8,'image/png',16995,'general/header-bg.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(146,0,'home-6','home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(147,0,'icon-1','icon-1',8,'image/png',2024,'general/icon-1.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(148,0,'icon-2','icon-2',8,'image/png',3531,'general/icon-2.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(149,0,'icon-3','icon-3',8,'image/png',2344,'general/icon-3.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(150,0,'icon-4','icon-4',8,'image/png',2314,'general/icon-4.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(151,0,'icon-5','icon-5',8,'image/png',2853,'general/icon-5.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(152,0,'instagram','instagram',8,'image/png',2586,'general/instagram.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(153,0,'loading','loading',8,'image/gif',25062,'general/loading.gif','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(154,0,'login-1','login-1',8,'image/png',3099,'general/login-1.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(155,0,'logo','logo',8,'image/png',16457,'general/logo.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(156,0,'newsletter-background-image','newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2023-05-02 21:08:13','2023-05-02 21:08:13',NULL),(157,0,'newsletter-image','newsletter-image',8,'image/png',3997,'general/newsletter-image.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(158,0,'open-graph-image','open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(159,0,'payment-methods','payment-methods',8,'image/png',268,'general/payment-methods.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(160,0,'pinterest','pinterest',8,'image/png',2128,'general/pinterest.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(161,0,'twitter','twitter',8,'image/png',1759,'general/twitter.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(162,0,'youtube','youtube',8,'image/png',1083,'general/youtube.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(163,0,'1','1',9,'image/png',1307,'stores/1.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(164,0,'10','10',9,'image/png',1307,'stores/10.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(165,0,'11','11',9,'image/png',1307,'stores/11.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(166,0,'12','12',9,'image/png',1307,'stores/12.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(167,0,'13','13',9,'image/png',1307,'stores/13.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(168,0,'14','14',9,'image/png',1307,'stores/14.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(169,0,'15','15',9,'image/png',1307,'stores/15.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(170,0,'16','16',9,'image/png',1307,'stores/16.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(171,0,'17','17',9,'image/png',1307,'stores/17.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(172,0,'2','2',9,'image/png',1307,'stores/2.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(173,0,'3','3',9,'image/png',1307,'stores/3.png','[]','2023-05-02 21:08:14','2023-05-02 21:08:14',NULL),(174,0,'4','4',9,'image/png',1307,'stores/4.png','[]','2023-05-02 21:08:15','2023-05-02 21:08:15',NULL),(175,0,'5','5',9,'image/png',1307,'stores/5.png','[]','2023-05-02 21:08:15','2023-05-02 21:08:15',NULL),(176,0,'6','6',9,'image/png',1307,'stores/6.png','[]','2023-05-02 21:08:15','2023-05-02 21:08:15',NULL),(177,0,'7','7',9,'image/png',1307,'stores/7.png','[]','2023-05-02 21:08:15','2023-05-02 21:08:15',NULL),(178,0,'8','8',9,'image/png',1307,'stores/8.png','[]','2023-05-02 21:08:15','2023-05-02 21:08:15',NULL),(179,0,'9','9',9,'image/png',1307,'stores/9.png','[]','2023-05-02 21:08:15','2023-05-02 21:08:15',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2023-05-02 21:07:59','2023-05-02 21:07:59',NULL),(2,0,'products','products',0,'2023-05-02 21:08:01','2023-05-02 21:08:01',NULL),(3,0,'customers','customers',0,'2023-05-02 21:08:06','2023-05-02 21:08:06',NULL),(4,0,'flash-sales','flash-sales',0,'2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(5,0,'sliders','sliders',0,'2023-05-02 21:08:08','2023-05-02 21:08:08',NULL),(6,0,'news','news',0,'2023-05-02 21:08:10','2023-05-02 21:08:10',NULL),(7,0,'promotion','promotion',0,'2023-05-02 21:08:11','2023-05-02 21:08:11',NULL),(8,0,'general','general',0,'2023-05-02 21:08:12','2023-05-02 21:08:12',NULL),(9,0,'stores','stores',0,'2023-05-02 21:08:14','2023-05-02 21:08:14',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-05-02 21:08:15','2023-05-02 21:08:15'),(2,2,'header-navigation','2023-05-02 21:08:15','2023-05-02 21:08:15'),(3,6,'main-menu','2023-05-02 21:08:16','2023-05-02 21:08:16'),(4,7,'header-navigation','2023-05-02 21:08:16','2023-05-02 21:08:16');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:15'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-05-02 21:08:15','2023-05-02 21:08:16'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(53,6,52,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Trang chủ 1',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-02 21:08:16','2023-05-02 21:08:16');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-05-02 21:08:15','2023-05-02 21:08:15'),(2,'Header menu','header-menu','published','2023-05-02 21:08:15','2023-05-02 21:08:15'),(3,'Product categories','product-categories','published','2023-05-02 21:08:15','2023-05-02 21:08:15'),(4,'Information','information','published','2023-05-02 21:08:15','2023-05-02 21:08:15'),(5,'Company','company','published','2023-05-02 21:08:15','2023-05-02 21:08:15'),(6,'Menu chính','menu-chinh','published','2023-05-02 21:08:16','2023-05-02 21:08:16'),(7,'Menu trên cùng','menu-tren-cung','published','2023-05-02 21:08:16','2023-05-02 21:08:16'),(8,'Product categories','danh-muc-san-pham','published','2023-05-02 21:08:16','2023-05-02 21:08:16'),(9,'Information','thong-tin','published','2023-05-02 21:08:16','2023-05-02 21:08:16'),(10,'Công ty','cong-ty','published','2023-05-02 21:08:16','2023-05-02 21:08:16');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:08:01','2023-05-02 21:08:01'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:08:05','2023-05-02 21:08:05'),(68,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(69,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(70,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(71,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(72,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(73,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(74,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(75,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(76,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(77,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-05-02 21:08:08','2023-05-02 21:08:08'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-05-02 21:08:10','2023-05-02 21:08:10'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2023-05-02 21:08:11','2023-05-02 21:08:11'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2023-05-02 21:08:11','2023-05-02 21:08:11'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2023-05-02 21:08:11','2023-05-02 21:08:11'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2023-05-02 21:08:11','2023-05-02 21:08:11'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2023-05-02 21:08:11','2023-05-02 21:08:11'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2023-05-02 21:08:11','2023-05-02 21:08:11'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2023-05-02 21:08:12','2023-05-02 21:08:12'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2023-05-02 21:08:15','2023-05-02 21:08:15'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2023-05-02 21:08:15','2023-05-02 21:08:15'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2023-05-02 21:08:15','2023-05-02 21:08:15'),(149,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2023-05-02 21:08:15','2023-05-02 21:08:15'),(150,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2023-05-02 21:08:15','2023-05-02 21:08:15'),(151,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',6,'Botble\\Marketplace\\Models\\Store','2023-05-02 21:08:15','2023-05-02 21:08:15');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2020_11_18_150916_ads_create_ads_table',2),(28,'2021_12_02_035301_add_ads_translations_table',2),(29,'2023_04_17_062645_add_open_in_new_tab',2),(30,'2015_06_29_025744_create_audit_history',3),(31,'2015_06_18_033822_create_blog_table',4),(32,'2021_02_16_092633_remove_default_value_for_author_type',4),(33,'2021_12_03_030600_create_blog_translations',4),(34,'2022_04_19_113923_add_index_to_table_posts',4),(35,'2016_06_17_091537_create_contacts_table',5),(36,'2020_03_05_041139_create_ecommerce_tables',6),(37,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(38,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(39,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(40,'2021_02_18_073505_update_table_ec_reviews',6),(41,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(42,'2021_03_10_025153_change_column_tax_amount',6),(43,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(44,'2021_04_28_074008_ecommerce_create_product_label_table',6),(45,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(46,'2021_06_28_153141_correct_slugs_data',6),(47,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(48,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(49,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(50,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(51,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(52,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(53,'2021_11_23_071403_correct_languages_for_product_variations',6),(54,'2021_11_28_031808_add_product_tags_translations',6),(55,'2021_12_01_031123_add_featured_image_to_ec_products',6),(56,'2022_01_01_033107_update_table_ec_shipments',6),(57,'2022_02_16_042457_improve_product_attribute_sets',6),(58,'2022_03_22_075758_correct_product_name',6),(59,'2022_04_19_113334_add_index_to_ec_products',6),(60,'2022_04_28_144405_remove_unused_table',6),(61,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(62,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(63,'2022_06_16_095633_add_index_to_some_tables',6),(64,'2022_06_30_035148_create_order_referrals_table',6),(65,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(66,'2022_08_14_032836_create_ec_order_returns_table',6),(67,'2022_08_14_033554_create_ec_order_return_items_table',6),(68,'2022_08_15_040324_add_billing_address',6),(69,'2022_08_30_091114_support_digital_products_table',6),(70,'2022_09_13_095744_create_options_table',6),(71,'2022_09_13_104347_create_option_value_table',6),(72,'2022_10_05_163518_alter_table_ec_order_product',6),(73,'2022_10_12_041517_create_invoices_table',6),(74,'2022_10_12_142226_update_orders_table',6),(75,'2022_10_13_024916_update_table_order_returns',6),(76,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(77,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(78,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(79,'2022_11_19_041643_add_ec_tax_product_table',6),(80,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(81,'2022_12_17_041532_fix_address_in_order_invoice',6),(82,'2022_12_26_070329_create_ec_product_views_table',6),(83,'2023_01_04_033051_fix_product_categories',6),(84,'2023_01_09_050400_add_ec_global_options_translations_table',6),(85,'2023_01_10_093754_add_missing_option_value_id',6),(86,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(87,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(88,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(89,'2023_02_27_095752_remove_duplicate_reviews',6),(90,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(91,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(92,'2018_07_09_221238_create_faq_table',7),(93,'2021_12_03_082134_create_faq_translations',7),(94,'2016_10_03_032336_create_languages_table',8),(95,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(96,'2021_12_03_075608_create_page_translations',9),(97,'2019_11_18_061011_create_country_table',10),(98,'2021_12_03_084118_create_location_translations',10),(99,'2021_12_03_094518_migrate_old_location_data',10),(100,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(101,'2022_01_16_085908_improve_plugin_location',10),(102,'2022_08_04_052122_delete_location_backup_tables',10),(103,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(104,'2021_07_06_030002_create_marketplace_table',11),(105,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(106,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(107,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(108,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(109,'2021_12_06_031304_update_table_mp_customer_revenues',11),(110,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(111,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(112,'2022_11_02_071413_add_more_info_for_store',11),(113,'2022_11_02_080444_add_tax_info',11),(114,'2023_02_01_062030_add_store_translations',11),(115,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(116,'2023_02_17_023648_fix_store_prefix',11),(117,'2017_10_24_154832_create_newsletter_table',12),(118,'2017_05_18_080441_create_payment_tables',13),(119,'2021_03_27_144913_add_customer_type_into_table_payments',13),(120,'2021_05_24_034720_make_column_currency_nullable',13),(121,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(122,'2021_10_19_020859_update_metadata_field',13),(123,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(124,'2022_07_07_153354_update_charge_id_in_table_payments',13),(125,'2017_07_11_140018_create_simple_slider_table',14),(126,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,10,4,866.00,0.00,866.00,0.00,'USD',NULL,'2023-04-29 13:08:19','2023-04-29 13:08:19',0,'add-amount'),(2,2,5,1334.00,0.00,1334.00,0.00,'USD',NULL,'2023-05-01 21:08:19','2023-05-01 21:08:19',0,'add-amount'),(3,3,6,256.00,0.00,256.00,0.00,'USD',NULL,'2023-05-01 17:08:19','2023-05-01 17:08:19',0,'add-amount'),(4,2,9,260.00,0.00,260.00,1334.00,'USD',NULL,'2023-04-24 13:08:19','2023-04-24 13:08:19',0,'add-amount'),(5,10,10,121.00,0.00,121.00,866.00,'USD',NULL,'2023-04-30 03:08:19','2023-04-30 03:08:19',0,'add-amount'),(6,9,13,53.00,0.00,53.00,0.00,'USD',NULL,'2023-04-29 09:08:19','2023-04-29 09:08:19',0,'add-amount'),(7,2,14,832.00,0.00,832.00,1594.00,'USD',NULL,'2023-04-30 09:08:20','2023-04-30 09:08:20',0,'add-amount'),(8,3,16,508.00,0.00,508.00,256.00,'USD',NULL,'2023-04-30 01:08:20','2023-04-30 01:08:20',0,'add-amount'),(9,2,22,762.00,0.00,762.00,2426.00,'USD',NULL,'2023-04-23 07:08:20','2023-04-23 07:08:20',0,'add-amount'),(10,10,26,242.00,0.00,242.00,987.00,'USD',NULL,'2023-04-10 09:08:20','2023-04-10 09:08:20',0,'add-amount'),(11,2,27,616.00,0.00,616.00,3188.00,'USD',NULL,'2023-04-18 21:08:20','2023-04-18 21:08:20',0,'add-amount'),(12,5,28,1101.00,0.00,1101.00,0.00,'USD',NULL,'2023-04-18 09:08:20','2023-04-18 09:08:20',0,'add-amount'),(13,3,31,128.00,0.00,128.00,764.00,'USD',NULL,'2023-04-24 21:08:20','2023-04-24 21:08:20',0,'add-amount'),(14,2,34,237.00,0.00,237.00,3804.00,'USD',NULL,'2023-04-06 15:08:21','2023-04-06 15:08:21',0,'add-amount'),(15,9,36,336.00,0.00,336.00,53.00,'USD',NULL,'2023-04-08 05:08:21','2023-04-08 05:08:21',0,'add-amount'),(16,2,38,364.00,0.00,364.00,4041.00,'USD',NULL,'2023-03-31 09:08:21','2023-03-31 09:08:21',0,'add-amount'),(17,3,40,123.00,0.00,123.00,892.00,'USD',NULL,'2023-04-19 05:08:21','2023-04-19 05:08:21',0,'add-amount'),(18,10,41,1662.00,0.00,1662.00,1229.00,'USD',NULL,'2023-04-01 09:08:21','2023-04-01 09:08:21',0,'add-amount'),(19,2,44,2065.00,0.00,2065.00,4405.00,'USD',NULL,'2023-03-26 09:08:21','2023-03-26 09:08:21',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,845.00,6470.00,'USD','','{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}',NULL,0,'pending',NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21',NULL),(2,2,0.00,1276.00,5625.00,'USD','','{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}',NULL,0,'pending',NULL,'2023-05-02 21:08:21','2023-05-02 21:08:21',NULL),(3,2,0.00,349.00,4349.00,'USD','','{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}',NULL,0,'pending',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(4,2,0.00,291.00,4000.00,'USD','','{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}',NULL,0,'completed',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(5,3,0.00,299.00,1015.00,'USD','','{\"name\":\"Eli Moore\",\"number\":\"+14437369379\",\"full_name\":\"Alden Hessel\",\"description\":\"Emely Hagenes\"}',NULL,0,'completed',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(6,3,0.00,74.00,716.00,'USD','','{\"name\":\"Eli Moore\",\"number\":\"+14437369379\",\"full_name\":\"Alden Hessel\",\"description\":\"Emely Hagenes\"}',NULL,0,'pending',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(7,5,0.00,145.00,1101.00,'USD','','{\"name\":\"Lavonne Konopelski\",\"number\":\"+14802288371\",\"full_name\":\"Wendy Gerlach\",\"description\":\"Dr. Maria Kovacek V\"}',NULL,0,'completed',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(8,5,0.00,113.00,956.00,'USD','','{\"name\":\"Lavonne Konopelski\",\"number\":\"+14802288371\",\"full_name\":\"Wendy Gerlach\",\"description\":\"Dr. Maria Kovacek V\"}',NULL,0,'completed',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(9,6,0.00,1.00,0.00,'USD','','{\"name\":\"Allison Renner\",\"number\":\"+12184536713\",\"full_name\":\"Beth Kuphal IV\",\"description\":\"Jordane Dooley\"}',NULL,0,'processing',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(10,6,0.00,1.00,0.00,'USD','','{\"name\":\"Allison Renner\",\"number\":\"+12184536713\",\"full_name\":\"Beth Kuphal IV\",\"description\":\"Jordane Dooley\"}',NULL,0,'pending',NULL,'2023-05-02 21:08:22','2023-05-02 21:08:22',NULL),(11,9,0.00,61.00,389.00,'USD','','{\"name\":\"Melyna Rodriguez\",\"number\":\"+16617936793\",\"full_name\":\"Easton Runolfsson\",\"description\":\"Prof. Ruthie Gleichner IV\"}',NULL,0,'processing',NULL,'2023-05-02 21:08:23','2023-05-02 21:08:23',NULL),(12,9,0.00,37.00,328.00,'USD','','{\"name\":\"Melyna Rodriguez\",\"number\":\"+16617936793\",\"full_name\":\"Easton Runolfsson\",\"description\":\"Prof. Ruthie Gleichner IV\"}',NULL,0,'processing',NULL,'2023-05-02 21:08:23','2023-05-02 21:08:23',NULL),(13,10,0.00,125.00,2891.00,'USD','','{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}',NULL,0,'completed',NULL,'2023-05-02 21:08:23','2023-05-02 21:08:23',NULL),(14,10,0.00,500.00,2766.00,'USD','','{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}',NULL,0,'processing',NULL,'2023-05-02 21:08:23','2023-05-02 21:08:23',NULL),(15,10,0.00,245.00,2266.00,'USD','','{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}',NULL,0,'processing',NULL,'2023-05-02 21:08:23','2023-05-02 21:08:23',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','jefferey.waters@example.org','+13517972601','30204 Juvenal Brook','BO','New York','South Zelda',2,'stores/1.png','Sint unde odio dolor excepturi.','Earum inventore et est ut. Totam pariatur adipisci quidem ea perspiciatis. Minima ipsum numquam consequatur est.','published',NULL,'2023-05-02 21:08:15','2023-05-02 21:08:15',NULL,NULL),(2,'Global Office','fabiola.donnelly@example.org','+15055495991','58425 Pink Freeway Suite 895','IS','Florida','South Emelia',3,'stores/2.png','Facere perferendis quisquam magni numquam.','Numquam possimus ad non reprehenderit nulla et. Qui tempora neque et. Dolorem occaecati dignissimos sint qui.','published',NULL,'2023-05-02 21:08:15','2023-05-02 21:08:15',NULL,NULL),(3,'Young Shop','karli14@example.net','+16614197408','200 O\'Hara Radial Apt. 969','EG','Pennsylvania','Schadenside',5,'stores/3.png','Et consequatur eos sit aliquid nulla.','Consequatur qui aliquam soluta. Sed sed voluptas eos voluptas. Non necessitatibus quaerat harum et perferendis ullam.','published',NULL,'2023-05-02 21:08:15','2023-05-02 21:08:15',NULL,NULL),(4,'Global Store','silas.oconnell@example.com','+19857359995','817 Johns Vista Suite 795','SK','Utah','Erdmanburgh',6,'stores/4.png','Eaque provident pariatur molestiae sed qui aut.','Enim dolores iusto sint. Nostrum atque est et iusto odio aperiam accusamus.','published',NULL,'2023-05-02 21:08:15','2023-05-02 21:08:15',NULL,NULL),(5,'Robert’s Store','kschamberger@example.org','+14244062538','7767 Wilma Squares','BY','Pennsylvania','Kubshire',9,'stores/5.png','Eligendi non architecto fugit.','Officiis tempore rerum unde sit asperiores. Quidem aut nesciunt voluptatum voluptas vel. Quia illo quos sit.','published',NULL,'2023-05-02 21:08:15','2023-05-02 21:08:15',NULL,NULL),(6,'Stouffer','holly.schaefer@example.org','+14323319134','8530 Kreiger Row','IT','Kentucky','Jodiebury',10,'stores/6.png','Quam neque quo iure ipsum explicabo inventore.','Qui maxime error occaecati aut ducimus cum. Recusandae odit inventore vitae sint. Consectetur est eos blanditiis ratione qui deserunt id.','published',NULL,'2023-05-02 21:08:15','2023-05-02 21:08:15',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,3709.00,0.00,6470.00,'$2y$10$o3gfe6vAvcp4hBkKzRUaVus3Yn71JF0XwxAIOorr4VUqerwjkEwXS','{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}','2023-05-02 21:08:15','2023-05-02 21:08:22','bank_transfer',NULL),(2,3,642.00,0.00,1015.00,'$2y$10$RY/yR1bHhax0XgkIBARoTuk0bicu/Q6QLn.BudGTR8HBLCY.Zq8DS','{\"name\":\"Eli Moore\",\"number\":\"+14437369379\",\"full_name\":\"Alden Hessel\",\"description\":\"Emely Hagenes\"}','2023-05-02 21:08:15','2023-05-02 21:08:22','bank_transfer',NULL),(3,5,843.00,0.00,1101.00,'$2y$10$s2evzQIVJevYZCgPO/1hy.2QIKwUN44B40AvB3XuLsU8ZoDyQ2qDq','{\"name\":\"Lavonne Konopelski\",\"number\":\"+14802288371\",\"full_name\":\"Wendy Gerlach\",\"description\":\"Dr. Maria Kovacek V\"}','2023-05-02 21:08:15','2023-05-02 21:08:22','bank_transfer',NULL),(4,6,-2.00,0.00,0.00,'$2y$10$t45iWMzPl69rfeYZ1Y9eJO184LXXeB7GezYEuk1wXHj1Q3oXovqUq','{\"name\":\"Allison Renner\",\"number\":\"+12184536713\",\"full_name\":\"Beth Kuphal IV\",\"description\":\"Jordane Dooley\"}','2023-05-02 21:08:15','2023-05-02 21:08:23','bank_transfer',NULL),(5,9,291.00,0.00,389.00,'$2y$10$iaTFf8JGI6bMzDFaaYZ44OLhTb2P99XuUoX7fvbcp0TeLrIqtHk4i','{\"name\":\"Melyna Rodriguez\",\"number\":\"+16617936793\",\"full_name\":\"Easton Runolfsson\",\"description\":\"Prof. Ruthie Gleichner IV\"}','2023-05-02 21:08:15','2023-05-02 21:08:23','bank_transfer',NULL),(6,10,2021.00,0.00,2891.00,'$2y$10$N1JGjBW583pseuIpnN5fieCkarl7Kd.FBFIkkBK.tCKMqTdKprR3u','{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}','2023-05-02 21:08:15','2023-05-02 21:08:23','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(7,'About us','<p>And the executioner myself,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'it\'s laid for a conversation. \'You don\'t know one,\' said Alice. \'Why, you don\'t know one,\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. One of the ground--and I should be raving mad--at least not so mad as it.</p><p>She said the Gryphon. Alice did not get hold of it; and as Alice could see, as she could. The next thing is, to get to,\' said the Gryphon. \'Then, you know,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was no use in waiting by the pope, was soon left alone. \'I wish the creatures wouldn\'t be so easily offended, you know!\' The Mouse gave a look askance-- Said he thanked the whiting kindly, but he could think of any that do,\' Alice said very politely, \'if I had our Dinah here, I know.</p><p>When the Mouse had changed his mind, and was delighted to find that her neck from being broken. She hastily put down her flamingo, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t talk about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the.</p><p>No, there were no arches left, and all dripping wet, cross, and uncomfortable. The first question of course was, how to spell \'stupid,\' and that you have just been reading about; and when Alice had been looking over his shoulder with some curiosity. \'What a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen. \'Well, I never heard of one,\' said Alice, (she had grown to her very earnestly, \'Now, Dinah, tell me your history, you know,\' Alice gently remarked; \'they\'d.</p>',1,NULL,'right-sidebar',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(9,'Terms &amp; Conditions','<p>Lory, who at last she spread out her hand again, and looking anxiously about her. \'Oh, do let me hear the rattle of the jury had a pencil that squeaked. This of course, I meant,\' the King had said that day. \'A likely story indeed!\' said Alice, in a tone of great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Why, you don\'t explain it as she could, for the pool was getting quite crowded with the bread-and-butter getting so used to.</p><p>This question the Dodo solemnly presented the thimble, saying \'We beg your pardon,\' said Alice in a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same side of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously round, to make ONE respectable person!\' Soon her eye fell upon a little sharp bark just over her head through the doorway; \'and even if.</p><p>Hatter. \'You MUST remember,\' remarked the King, \'unless it was very deep, or she fell past it. \'Well!\' thought Alice \'without pictures or conversations?\' So she was always ready to play croquet.\' Then they all stopped and looked at it uneasily, shaking it every now and then, if I would talk on such a thing as \"I get what I say,\' the Mock Turtle went on, \'that they\'d let Dinah stop in the distance. \'Come on!\' and ran till she was coming back to the general conclusion, that wherever you go on?.</p><p>Alice again, for this curious child was very uncomfortable, and, as they came nearer, Alice could speak again. In a little startled when she turned the corner, but the Rabbit say to this: so she helped herself to some tea and bread-and-butter, and went down on her lap as if she did not get hold of its mouth open, gazing up into the earth. Let me see--how IS it to be no chance of getting up and bawled out, \"He\'s murdering the time! Off with his nose, you know?\' \'It\'s the first question, you.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(10,'Returns &amp; Exchanges','<p>Footman remarked, \'till tomorrow--\' At this moment Alice felt a very good advice, (though she very good-naturedly began hunting about for some minutes. The Caterpillar and Alice rather unwillingly took the least idea what Latitude was, or Longitude I\'ve got to see what this bottle was NOT marked \'poison,\' so Alice went on in a languid, sleepy voice. \'Who are YOU?\' said the King exclaimed, turning to Alice, that she began thinking over other children she knew, who might do very well to.</p><p>Alice looked all round the hall, but they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself, \'if one only knew the name again!\' \'I won\'t indeed!\' said the Hatter. \'Stolen!\' the King said to the Gryphon. \'--you advance twice--\' \'Each with a trumpet in one hand and a large fan in the window, I only wish people knew that: then they both sat silent and looked at the picture.) \'Up, lazy thing!\' said Alice, as she swam nearer to make out at all the party were placed along.</p><p>And oh, I wish you could manage it?) \'And what are YOUR shoes done with?\' said the Duchess; \'and most of \'em do.\' \'I don\'t like them!\' When the sands are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Duchess was VERY ugly; and secondly, because they\'re making such a capital one for catching mice--oh, I beg your acceptance of this elegant thimble\'; and, when it grunted again, and the pair of white kid gloves: she took up the conversation a little. \'\'Tis so,\'.</p><p>SOMEBODY ought to be executed for having missed their turns, and she jumped up in spite of all the time they had to run back into the way down one side and then a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together. Alice laughed so much contradicted in her lessons in the kitchen that did not like the Mock Turtle went on. \'Or would you tell me,\' said Alice, always ready to make out that part.\' \'Well, at any rate, the Dormouse sulkily remarked, \'If you do.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(11,'Shipping &amp; Delivery','<p>Duchess; \'and that\'s why. Pig!\' She said this she looked up, and began by producing from under his arm a great many more than three.\' \'Your hair wants cutting,\' said the Queen. \'Their heads are gone, if it likes.\' \'I\'d rather not,\' the Cat again, sitting on the bank, with her head!\' Alice glanced rather anxiously at the end.\' \'If you didn\'t sign it,\' said Alice. \'Exactly so,\' said the March Hare said--\' \'I didn\'t!\' the March Hare said in a sort of way to hear the very middle of one! There.</p><p>Dormouse,\' thought Alice; but she was not going to shrink any further: she felt that she was in a few minutes, and began whistling. \'Oh, there\'s no use in talking to herself, \'I wish I could shut up like a mouse, you know. But do cats eat bats? Do cats eat bats? Do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, this here ought to eat or drink something or other; but the Gryphon replied very politely, \'if I had it written up somewhere.\' Down, down.</p><p>Alice alone with the lobsters to the door. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight. Alice remained looking thoughtfully at the mushroom (she had grown to her feet as the rest of the fact. \'I keep them to sell,\' the Hatter went on, turning to the beginning of the court, arm-in-arm with the bread-knife.\' The March Hare was said to herself. \'Shy, they seem to dry me at all.\' \'In that.</p><p>Alice thought to herself what such an extraordinary ways of living would be grand, certainly,\' said Alice, rather doubtfully, as she went on for some time in silence: at last she spread out her hand, and a large ring, with the distant green leaves. As there seemed to be a great many more than Alice could hardly hear the very middle of the shepherd boy--and the sneeze of the March Hare will be the use of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the Queen said--\' \'Get.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(12,'Privacy Policy','<p>Alice thought the poor little thing sobbed again (or grunted, it was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the King in a low, hurried tone. He looked at poor Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have dropped them, I wonder?\' Alice guessed in a great crash, as if it likes.\' \'I\'d.</p><p>IV. The Rabbit started violently, dropped the white kid gloves: she took courage, and went on so long since she had a head unless there was no longer to be a letter, written by the end of the officers: but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a very respectful tone, but frowning and making quite a new idea to Alice, \'Have you seen the Mock Turtle. So she set to work, and very soon finished it off. \'If everybody minded their own business,\' the Duchess to play with, and.</p><p>Duchess sang the second verse of the room. The cook threw a frying-pan after her as hard as she did not seem to put down the little thing was snorting like a wild beast, screamed \'Off with their heads off?\' shouted the Queen, and Alice was not here before,\' said the King. \'It began with the Queen was in livery: otherwise, judging by his face only, she would get up and to stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my life.\' \'You are old, Father.</p><p>THE SLUGGARD,\"\' said the King triumphantly, pointing to the door, she walked off, leaving Alice alone with the words have got in as well,\' the Hatter continued, \'in this way:-- \"Up above the world she was ever to get an opportunity of adding, \'You\'re looking for it, she found herself lying on their hands and feet, to make out what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot as far as they came nearer, Alice could speak again. The Mock Turtle to sing \"Twinkle.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>Pigeon, but in a melancholy air, and, after folding his arms and frowning at the end.\' \'If you can\'t take LESS,\' said the Caterpillar. Alice folded her hands, and she sat still and said to the game. CHAPTER IX. The Mock Turtle in the middle of her childhood: and how she was to get out again. Suddenly she came up to them she heard one of the shelves as she went on, \'if you don\'t know where Dinn may be,\' said the King, with an M, such as mouse-traps, and the Hatter and the baby violently up and.</p><p>Alice, a little snappishly. \'You\'re enough to get out again. That\'s all.\' \'Thank you,\' said the King, \'and don\'t be particular--Here, Bill! catch hold of this remark, and thought to herself, \'if one only knew how to spell \'stupid,\' and that if something wasn\'t done about it just at present--at least I mean what I used to say than his first speech. \'You should learn not to be executed for having cheated herself in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\".</p><p>I\'ll manage better this time,\' she said, by way of settling all difficulties, great or small. \'Off with her head!\' Those whom she sentenced were taken into custody by the Hatter, and, just as I do,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Rabbit angrily. \'Here! Come and help me out of sight, they were gardeners, or soldiers, or courtiers, or three times over to the game. CHAPTER IX. The Mock Turtle sighed deeply, and began, in a.</p><p>Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her knee, and looking anxiously round to see what was coming. It was opened by another footman in livery came running out of its mouth, and addressed her in the lap of her going, though she felt very glad she had accidentally upset the week before. \'Oh, I know!\' exclaimed Alice, who always took a minute or two, it was the Rabbit noticed Alice, as she stood watching them, and was delighted to find that the.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>I am to see if she were looking up into a chrysalis--you will some day, you know--and then after that into a chrysalis--you will some day, you know--and then after that into a cucumber-frame, or something of the Mock Turtle. Alice was too much frightened to say than his first remark, \'It was a child,\' said the King, the Queen, who had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I can\'t be civil, you\'d better leave off,\' said the Caterpillar took the.</p><p>Father William,\' the young Crab, a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen was to twist it up into a line along the passage into the garden at once; but, alas for poor Alice! when she turned away. \'Come back!\' the Caterpillar decidedly, and he called the Queen, but she did not sneeze, were the cook, to see what was coming. It was so small as this is May it won\'t be raving mad--at least not so mad as it was labelled \'ORANGE MARMALADE\', but to get.</p><p>Dormouse. \'Write that down,\' the King said gravely, \'and go on till you come and join the dance? Will you, won\'t you, will you join the dance. So they couldn\'t get them out of this elegant thimble\'; and, when it saw Alice. It looked good-natured, she thought: still it was a body to cut it off from: that he had a large mustard-mine near here. And the Gryphon said, in a sort of people live about here?\' \'In THAT direction,\' the Cat went on, \'\"--found it advisable to go down the chimney close.</p><p>They had a vague sort of people live about here?\' \'In THAT direction,\' waving the other paw, \'lives a March Hare. \'Then it ought to be almost out of its little eyes, but it makes me grow smaller, I can listen all day about it!\' Last came a little way out of that is--\"Birds of a globe of goldfish she had never left off staring at the corners: next the ten courtiers; these were ornamented all over with diamonds, and walked two and two, as the hall was very nearly carried it out again, so.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>I\'m I, and--oh dear, how puzzling it all seemed quite dull and stupid for life to go down the little golden key was lying on the trumpet, and then the Mock Turtle sighed deeply, and began, in a sorrowful tone, \'I\'m afraid I don\'t keep the same thing, you know.\' \'Who is it I can\'t get out of sight before the end of every line: \'Speak roughly to your places!\' shouted the Queen, turning purple. \'I won\'t!\' said Alice. \'You are,\' said the Dodo, pointing to the shore. CHAPTER III. A Caucus-Race and.</p><p>Queen\'s shrill cries to the Hatter. \'Nor I,\' said the King, and the choking of the Shark, But, when the White Rabbit blew three blasts on the door and went on: \'--that begins with a kind of serpent, that\'s all I can creep under the table: she opened it, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about for a conversation. Alice replied, so eagerly that the meeting adjourn, for the hot day made.</p><p>The chief difficulty Alice found at first she would have made a rush at the end of half an hour or so, and giving it a minute or two sobs choked his voice. \'Same as if it began ordering people about like mad things all this time, sat down in a few minutes, and she felt a little anxiously. \'Yes,\' said Alice, surprised at this, she looked back once or twice, and shook itself. Then it got down off the fire, licking her paws and washing her face--and she is of finding morals in things!\' Alice.</p><p>Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself, and fanned herself with one finger for the hedgehogs; and in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came suddenly upon an open place, with a sigh: \'it\'s always tea-time, and we\'ve no time to go, for the White Rabbit returning, splendidly dressed, with a bound into the garden at once; but, alas for poor Alice! when she went back to the jury, in a day did you call.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>I\'ll set Dinah at you!\' There was nothing else to do, and in another moment, when she was in confusion, getting the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, raising its voice to a day-school, too,\' said Alice; not that she had hoped) a fan and two or three of the jurymen. \'It isn\'t mine,\' said the Duchess, \'as pigs have to fly; and the bright eager eyes were nearly out of it, and yet it was good practice to say \'creatures,\' you see, Alice had no pictures.</p><p>Dormouse sulkily remarked, \'If you knew Time as well as she was peering about anxiously among the bright eager eyes were getting so used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and the other ladder?--Why, I hadn\'t drunk quite so much!\' said Alice, surprised at this, but at last it sat down a large arm-chair at one and then said, \'It was much pleasanter at home,\' thought poor Alice, that she was walking hand in her pocket) till she had brought herself down to.</p><p>Alice had no pictures or conversations?\' So she set off at once, while all the children she knew that it seemed quite natural to Alice with one of the Lobster Quadrille, that she could not possibly reach it: she could do to hold it. As soon as she went on again:-- \'You may not have lived much under the circumstances. There was not a VERY unpleasant state of mind, she turned the corner, but the tops of the officers of the song. \'What trial is it?\' he said. (Which he certainly did NOT, being.</p><p>I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish you wouldn\'t squeeze so.\' said the Gryphon. \'How the creatures order one about, and called out, \'Sit down, all of you, and listen to her, And mentioned me to introduce some other subject of conversation. While she was about a thousand times as large as the Rabbit, and had to stoop to save her neck from being run over; and the March Hare. The Hatter was the Cat went on, taking first one side and up I goes like a.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>Exactly as we needn\'t try to find my way into a sort of knot, and then all the arches are gone from this side of the doors of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, and I\'m I, and--oh dear, how puzzling it all seemed quite natural); but when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I was sent for.\' \'You ought to be patted on the end of the court and got behind Alice as he came, \'Oh!.</p><p>Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to stay with it as you go on? It\'s by far the most important piece of it had grown to her to speak with. Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the look of the pack, she could not think of nothing better to say but \'It belongs to a mouse, you know. Come on!\' So they went on eagerly: \'There is.</p><p>I sleep\" is the same thing,\' said the Hatter. He had been (Before she had a little nervous about this; \'for it might happen any minute, \'and then,\' thought Alice, and she thought it must be kind to them,\' thought Alice, \'shall I NEVER get any older than you, and listen to me! When I used to know. Let me see--how IS it to his ear. Alice considered a little quicker. \'What a curious appearance in the sea, some children digging in the same words as before, \'It\'s all his fancy, that: they never.</p><p>She generally gave herself very good advice, (though she very seldom followed it), and handed back to the porpoise, \"Keep back, please: we don\'t want to go! Let me think: was I the same solemn tone, only changing the order of the Lobster Quadrille, that she was shrinking rapidly; so she went on. \'I do,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course was, how to speak first, \'why your cat grins like that?\' \'It\'s a pun!\' the King replied. Here the Queen in front of.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'X9OQJNY1SH','paystack',NULL,363.00,1,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'WXS1IQC67A','cod',NULL,381.00,2,'pending','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'NT6F02PNTU','cod',NULL,375.00,3,'pending','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'BH6TRJ7FJ6','paystack',NULL,866.00,4,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'YYRDSCUNYN','stripe',NULL,1334.00,5,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'QHLP7OUG1I','paypal',NULL,256.00,6,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'MTWMIX26ZG','cod',NULL,866.00,7,'pending','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'PYDFOOQA2S','mollie',NULL,226.00,8,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'O4QKXNH5OM','paypal',NULL,260.00,9,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'JCKLDNXIJF','paypal',NULL,121.00,10,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'SREKC0VV9B','bank_transfer',NULL,226.00,11,'pending','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'ZVGPA2ZYAF','cod',NULL,246.00,12,'pending','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'KE9RDVVFPE','mollie',NULL,53.00,13,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'AWFPVOVN2N','mollie',NULL,832.00,14,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:16','2023-05-02 21:08:16','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'GUOIIVKKOT','paystack',NULL,511.00,15,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'RTMXRHBXXW','razorpay',NULL,508.00,16,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'LMJDHMRQPI','stripe',NULL,826.00,17,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'QIZRB4DW5A','paypal',NULL,243.00,18,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'VGLH7TDKZF','cod',NULL,53.00,19,'pending','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'HQ2NT5GFIV','bank_transfer',NULL,638.00,20,'pending','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'F1UIC3JAAE','razorpay',NULL,375.00,21,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'LSQ7WRSRKK','razorpay',NULL,762.00,22,'completed','confirm',8,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'PUYYYJLRY9','cod',NULL,369.00,23,'pending','confirm',8,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'LG9KYYRT0E','bank_transfer',NULL,1216.00,24,'pending','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'MUZVFII5P9','sslcommerz',NULL,80.00,25,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'YO7ZDXF0WV','mollie',NULL,242.00,26,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'AG2GWFV57M','razorpay',NULL,616.00,27,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'YMJXN4HKPV','paystack',NULL,1101.00,28,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'PYZJSQPSJB','cod',NULL,242.00,29,'pending','confirm',7,NULL,NULL,'2023-05-02 21:08:17','2023-05-02 21:08:17','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'JTMAV1AO84','paypal',NULL,1028.00,30,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'EDLXGUPOY4','paypal',NULL,128.00,31,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'89E0M2AYX3','razorpay',NULL,256.00,32,'completed','confirm',7,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'ZL9MALCE63','cod',NULL,130.00,33,'pending','confirm',7,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'ZWPO5NG5KD','razorpay',NULL,237.00,34,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'27YJK15I7P','cod',NULL,256.00,35,'pending','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'9M3S9CCNQV','paystack',NULL,336.00,36,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'5OMNONGC9M','razorpay',NULL,226.00,37,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'FYH7FWELFB','paystack',NULL,364.00,38,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'CRANNIC3LK','paypal',NULL,363.00,39,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'LTEFSBIPPA','sslcommerz',NULL,123.00,40,'completed','confirm',4,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'SLON81WXJS','sslcommerz',NULL,1662.00,41,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'V8NGQQX3ZA','paystack',NULL,81.00,42,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'JB3RHFVC4J','mollie',NULL,372.00,43,'completed','confirm',1,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'P9VVODENPW','sslcommerz',NULL,2065.00,44,'completed','confirm',8,NULL,NULL,'2023-05-02 21:08:18','2023-05-02 21:08:18','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'EWUQSS3OSB','mollie',NULL,339.00,45,'completed','confirm',8,NULL,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'A3NQPLLH80','stripe',NULL,127.00,46,'completed','confirm',8,NULL,NULL,'2023-05-02 21:08:19','2023-05-02 21:08:19','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(2,2),(3,2),(2,3),(3,3),(1,4),(4,4),(1,5),(4,5),(1,6),(3,6),(1,7),(3,7),(1,8),(3,8),(1,9),(3,9),(1,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',1683,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',1032,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',1718,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',2045,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',1211,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',933,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',157,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1195,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',203,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',124,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',2188,NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,2,1,'2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL,1,1,1,'2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-05-02 21:07:59'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'ecommerce_store_name','Nest',NULL,NULL),(9,'ecommerce_store_phone','18006268',NULL,NULL),(10,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(11,'ecommerce_store_state','Singapore',NULL,NULL),(12,'ecommerce_store_city','Singapore',NULL,NULL),(13,'ecommerce_store_country','SG',NULL,NULL),(14,'media_random_hash','552b94947f819f8733680d88c9dc973c',NULL,NULL),(15,'permalink-botble-blog-models-post','blog',NULL,NULL),(16,'permalink-botble-blog-models-category','blog',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(23,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'simple_slider_using_assets','0',NULL,NULL),(26,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'theme','nest',NULL,NULL),(29,'admin_favicon','general/favicon.png',NULL,NULL),(30,'admin_logo','general/logo.png',NULL,NULL),(31,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(32,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(33,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(34,'theme-nest-favicon','general/favicon.png',NULL,NULL),(35,'theme-nest-logo','general/logo.png',NULL,NULL),(36,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(37,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(38,'theme-nest-hotline','1900 - 888',NULL,NULL),(39,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(40,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(41,'theme-nest-homepage_id','1',NULL,NULL),(42,'theme-nest-blog_page_id','5',NULL,NULL),(43,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(44,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(45,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(46,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(47,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(48,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(49,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(50,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(51,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(52,'theme-nest-number_of_products_per_page','12',NULL,NULL),(53,'theme-nest-preloader_enabled','yes',NULL,NULL),(54,'theme-nest-preloader_version','v2',NULL,NULL),(55,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(56,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(57,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(58,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(59,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(60,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(61,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(62,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(63,'theme-nest-vi-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(64,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(65,'theme-nest-vi-homepage_id','1',NULL,NULL),(66,'theme-nest-vi-blog_page_id','5',NULL,NULL),(67,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(68,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(18,8,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(19,8,'Rau tươi <br>Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(20,9,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(21,9,'Rau tươi <br>Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(22,10,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(23,10,'Rau tươi <br>Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(24,11,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(25,11,'Rau tươi <br>Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(26,12,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(27,12,'Rau tươi <br>Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(28,13,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-05-02 21:08:10','2023-05-02 21:08:10'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-05-02 21:08:10','2023-05-02 21:08:10');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(5,'Home slider 5','home-slider-5',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(6,'Home slider 6','home-slider-6',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2023-05-02 21:08:10','2023-05-02 21:08:10');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:07:59','2023-05-02 21:07:59'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:08:01','2023-05-02 21:08:01'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:08:01','2023-05-02 21:08:01'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:08:01','2023-05-02 21:08:01'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:08:01','2023-05-02 21:08:01'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:08:01','2023-05-02 21:08:01'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:08:01','2023-05-02 21:08:01'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:08:05','2023-05-02 21:08:05'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-05-02 21:08:11','2023-05-02 21:08:11'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-05-02 21:08:11','2023-05-02 21:08:11'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-05-02 21:08:11','2023-05-02 21:08:11'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-05-02 21:08:11','2023-05-02 21:08:11'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-05-02 21:08:11','2023-05-02 21:08:11'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-05-02 21:08:11','2023-05-02 21:08:11'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2023-05-02 21:08:11','2023-05-02 21:08:11'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-05-02 21:08:15','2023-05-02 21:08:15'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-05-02 21:08:15','2023-05-02 21:08:15'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-05-02 21:08:15','2023-05-02 21:08:15'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-05-02 21:08:15','2023-05-02 21:08:15'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2023-05-02 21:08:15','2023-05-02 21:08:15'),(94,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2023-05-02 21:08:15','2023-05-02 21:08:15');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:08:11','2023-05-02 21:08:11'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:08:11','2023-05-02 21:08:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5406 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$KbiYoj3cimHpZZhpXlVyMO44Ndv3PY2JU2T8/xOA/YolpVDiupKom',NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11','Super','Admin','botble',NULL,1,1,NULL,NULL),(2,'user@botble.com',NULL,'$2y$10$g2chyM.980bWF6vavcTRKunw9T79LeZYs6D16w.cwa.RYFGiFeQl2',NULL,'2023-05-02 21:08:11','2023-05-02 21:08:11','Normal','Admin','admin',NULL,0,0,'{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-05-02 21:08:12','2023-05-02 21:08:12'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2023-05-02 21:08:12','2023-05-02 21:08:12');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03 11:08:57