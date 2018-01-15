/*
Navicat MySQL Data Transfer

Source Server         : aga
Source Server Version : 50637
Source Host           : 127.0.0.1:3306
Source Database       : aga

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-01-15 09:19:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baskets
-- ----------------------------
DROP TABLE IF EXISTS `baskets`;
CREATE TABLE `baskets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sum_cost` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paid_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of baskets
-- ----------------------------
INSERT INTO `baskets` VALUES ('1', '1', '0', '2018-01-12 17:52:13', '2018-01-12 15:52:13', '2017-08-11 12:18:46', '3');

-- ----------------------------
-- Table structure for baskets_statuses
-- ----------------------------
DROP TABLE IF EXISTS `baskets_statuses`;
CREATE TABLE `baskets_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of baskets_statuses
-- ----------------------------
INSERT INTO `baskets_statuses` VALUES ('1', 'active', '2017-09-20 19:41:14', null, null);
INSERT INTO `baskets_statuses` VALUES ('2', 'non-active', '2017-12-01 06:32:26', '0000-00-00 00:00:00', null);
INSERT INTO `baskets_statuses` VALUES ('3', '\r\nready', '2017-12-01 06:32:55', null, null);
INSERT INTO `baskets_statuses` VALUES ('4', '\r\nprocessed', '2017-12-01 09:11:35', null, null);
INSERT INTO `baskets_statuses` VALUES ('5', 'hide', '2017-12-01 14:38:10', null, null);

-- ----------------------------
-- Table structure for basket_infos
-- ----------------------------
DROP TABLE IF EXISTS `basket_infos`;
CREATE TABLE `basket_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `count` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of basket_infos
-- ----------------------------
INSERT INTO `basket_infos` VALUES ('56', '1', '2', '2017-12-01 06:18:54', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('57', '1', '1', '2017-12-01 06:18:56', null, null, '11', '2');
INSERT INTO `basket_infos` VALUES ('58', '1', '3', '2017-12-01 06:19:00', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('59', '1', '1', '2017-12-01 06:21:25', null, null, '9', '2');
INSERT INTO `basket_infos` VALUES ('60', '1', '5', '2017-12-01 06:21:26', null, null, '8', '2');
INSERT INTO `basket_infos` VALUES ('61', '1', '5', '2017-12-01 06:21:45', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('62', '1', '8', '2017-12-01 06:21:46', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('63', '1', '2', '2017-12-01 06:21:48', null, null, '6', '2');
INSERT INTO `basket_infos` VALUES ('64', '1', '6', '2017-12-01 06:21:50', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('65', '1', '4', '2017-12-01 06:21:52', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('66', '1', '3', '2017-12-01 11:24:46', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('67', '1', '5', '2017-12-01 11:24:47', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('68', '1', '6', '2017-12-01 11:24:52', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('69', '1', '3', '2017-12-04 07:26:33', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('70', '1', '5', '2017-12-04 07:26:35', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('71', '1', '2', '2017-12-04 07:26:38', null, null, '6', '2');
INSERT INTO `basket_infos` VALUES ('72', '1', '1', '2017-12-04 18:59:42', null, null, '6', '2');
INSERT INTO `basket_infos` VALUES ('73', '1', '2', '2017-12-04 18:59:43', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('74', '1', '5', '2017-12-04 19:12:00', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('75', '1', '3', '2017-12-04 19:12:01', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('76', '1', '2', '2017-12-04 19:12:04', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('77', '1', '1', '2017-12-04 19:37:10', null, null, '6', '2');
INSERT INTO `basket_infos` VALUES ('78', '1', '2', '2017-12-04 19:47:07', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('79', '1', '5', '2017-12-04 19:47:08', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('80', '1', '8', '2017-12-04 19:47:09', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('81', '1', '4', '2017-12-04 19:47:11', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('82', '1', '1', '2017-12-05 05:33:05', null, null, '5', '2');
INSERT INTO `basket_infos` VALUES ('83', '1', '3', '2017-12-05 05:33:07', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('84', '1', '4', '2017-12-05 05:33:08', null, null, '3', '2');
INSERT INTO `basket_infos` VALUES ('85', '1', '1', '2017-12-05 12:04:25', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('86', '1', '3', '2017-12-05 12:04:27', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('87', '1', '2', '2017-12-05 13:38:55', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('88', '1', '6', '2017-12-05 13:38:56', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('89', '1', '2', '2017-12-06 01:39:08', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('90', '1', '1', '2017-12-06 01:39:10', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('91', '1', '6', '2017-12-06 01:39:11', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('92', '1', '3', '2017-12-08 02:51:35', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('93', '1', '8', '2017-12-08 02:51:38', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('94', '1', '4', '2017-12-08 02:51:41', null, null, '3', '2');
INSERT INTO `basket_infos` VALUES ('95', '1', '1', '2017-12-08 02:53:07', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('96', '1', '5', '2017-12-08 02:53:08', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('97', '1', '2', '2017-12-08 02:53:09', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('98', '1', '1', '2017-12-08 14:17:42', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('99', '1', '5', '2017-12-08 14:17:45', null, null, '7', '2');
INSERT INTO `basket_infos` VALUES ('100', '1', '8', '2017-12-08 14:17:46', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('101', '1', '1', '2017-12-08 16:15:18', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('102', '1', '5', '2017-12-08 16:15:20', null, null, '6', '2');
INSERT INTO `basket_infos` VALUES ('103', '1', '4', '2017-12-08 16:15:21', null, null, '3', '2');
INSERT INTO `basket_infos` VALUES ('104', '1', '1', '2017-12-08 20:58:06', null, null, '4', '2');
INSERT INTO `basket_infos` VALUES ('105', '1', '2', '2017-12-08 20:58:07', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('106', '1', '5', '2017-12-08 20:58:08', null, null, '5', '2');
INSERT INTO `basket_infos` VALUES ('107', '1', '8', '2017-12-08 20:58:09', null, null, '1', '2');
INSERT INTO `basket_infos` VALUES ('108', '5', '3', '2017-12-09 07:42:35', null, null, '1', '1');
INSERT INTO `basket_infos` VALUES ('109', '5', '5', '2017-12-09 07:42:36', null, null, '1', '1');
INSERT INTO `basket_infos` VALUES ('110', '1', '2', '2017-12-09 07:45:37', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('111', '1', '5', '2017-12-09 07:45:39', null, null, '3', '2');
INSERT INTO `basket_infos` VALUES ('112', '1', '4', '2017-12-09 07:45:51', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('113', '1', '1', '2018-01-08 09:09:50', null, null, '0', '2');
INSERT INTO `basket_infos` VALUES ('114', '1', '2', '2018-01-08 09:09:52', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('115', '1', '5', '2018-01-08 09:09:54', null, null, '2', '2');
INSERT INTO `basket_infos` VALUES ('116', '1', '1', '2018-01-11 09:46:20', null, null, '0', '1');
INSERT INTO `basket_infos` VALUES ('117', '1', '5', '2018-01-11 09:46:22', null, null, '2', '3');
INSERT INTO `basket_infos` VALUES ('118', '1', '10', '2018-01-11 09:46:23', null, null, '1', '3');

-- ----------------------------
-- Table structure for booking_query
-- ----------------------------
DROP TABLE IF EXISTS `booking_query`;
CREATE TABLE `booking_query` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `booking_code` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_query
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', null, '1', 'Category 1', 'category-1', '2017-08-07 08:03:41', '2017-08-07 08:03:41');
INSERT INTO `categories` VALUES ('2', null, '1', 'Category 2', 'category-2', '2017-08-07 08:03:41', '2017-08-07 08:03:41');

-- ----------------------------
-- Table structure for communications
-- ----------------------------
DROP TABLE IF EXISTS `communications`;
CREATE TABLE `communications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_admin_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of communications
-- ----------------------------
INSERT INTO `communications` VALUES ('1', '3', '1', '2017-08-14 18:31:13', null, null);

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('2', '1', 'author_id', 'text', 'Author', '1', '0', '1', '1', '0', '1', '', '2');
INSERT INTO `data_rows` VALUES ('3', '1', 'category_id', 'text', 'Category', '1', '0', '1', '1', '1', '0', '', '3');
INSERT INTO `data_rows` VALUES ('4', '1', 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('5', '1', 'excerpt', 'text_area', 'excerpt', '1', '0', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('6', '1', 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', '', '6');
INSERT INTO `data_rows` VALUES ('7', '1', 'image', 'image', 'Post Image', '0', '1', '1', '1', '1', '1', '\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}', '7');
INSERT INTO `data_rows` VALUES ('8', '1', 'slug', 'text', 'slug', '1', '0', '1', '1', '1', '1', '\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}', '8');
INSERT INTO `data_rows` VALUES ('9', '1', 'meta_description', 'text_area', 'meta_description', '1', '0', '1', '1', '1', '1', '', '9');
INSERT INTO `data_rows` VALUES ('10', '1', 'meta_keywords', 'text_area', 'meta_keywords', '1', '0', '1', '1', '1', '1', '', '10');
INSERT INTO `data_rows` VALUES ('11', '1', 'status', 'select_dropdown', 'status', '1', '1', '1', '1', '1', '1', '\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}', '11');
INSERT INTO `data_rows` VALUES ('12', '1', 'created_at', 'timestamp', 'created_at', '0', '1', '1', '0', '0', '0', '', '12');
INSERT INTO `data_rows` VALUES ('13', '1', 'updated_at', 'timestamp', 'updated_at', '0', '0', '0', '0', '0', '0', '', '13');
INSERT INTO `data_rows` VALUES ('14', '2', 'id', 'number', 'id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('15', '2', 'author_id', 'text', 'author_id', '1', '0', '0', '0', '0', '0', '', '2');
INSERT INTO `data_rows` VALUES ('16', '2', 'title', 'text', 'title', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('17', '2', 'excerpt', 'text_area', 'excerpt', '1', '0', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('18', '2', 'body', 'rich_text_box', 'body', '1', '0', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('19', '2', 'slug', 'text', 'slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"title\"}}', '6');
INSERT INTO `data_rows` VALUES ('20', '2', 'meta_description', 'text', 'meta_description', '1', '0', '1', '1', '1', '1', '', '7');
INSERT INTO `data_rows` VALUES ('21', '2', 'meta_keywords', 'text', 'meta_keywords', '1', '0', '1', '1', '1', '1', '', '8');
INSERT INTO `data_rows` VALUES ('22', '2', 'status', 'select_dropdown', 'status', '1', '1', '1', '1', '1', '1', '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', '9');
INSERT INTO `data_rows` VALUES ('23', '2', 'created_at', 'timestamp', 'created_at', '1', '1', '1', '0', '0', '0', '', '10');
INSERT INTO `data_rows` VALUES ('24', '2', 'updated_at', 'timestamp', 'updated_at', '1', '0', '0', '0', '0', '0', '', '11');
INSERT INTO `data_rows` VALUES ('25', '2', 'image', 'image', 'image', '0', '1', '1', '1', '1', '1', '', '12');
INSERT INTO `data_rows` VALUES ('26', '3', 'id', 'number', 'id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('27', '3', 'name', 'text', 'name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('28', '3', 'email', 'text', 'email', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('29', '3', 'password', 'password', 'password', '1', '0', '0', '1', '1', '0', '', '4');
INSERT INTO `data_rows` VALUES ('30', '3', 'remember_token', 'text', 'remember_token', '0', '0', '0', '0', '0', '0', '', '5');
INSERT INTO `data_rows` VALUES ('31', '3', 'created_at', 'timestamp', 'created_at', '0', '1', '1', '0', '0', '0', '', '6');
INSERT INTO `data_rows` VALUES ('32', '3', 'updated_at', 'timestamp', 'updated_at', '0', '0', '0', '0', '0', '0', '', '7');
INSERT INTO `data_rows` VALUES ('33', '3', 'avatar', 'image', 'avatar', '0', '1', '1', '1', '1', '1', '', '8');
INSERT INTO `data_rows` VALUES ('34', '5', 'id', 'number', 'id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('35', '5', 'name', 'text', 'name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('36', '5', 'created_at', 'timestamp', 'created_at', '0', '0', '0', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('37', '5', 'updated_at', 'timestamp', 'updated_at', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('38', '4', 'id', 'number', 'id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('39', '4', 'parent_id', 'select_dropdown', 'parent_id', '0', '0', '1', '1', '1', '1', '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '2');
INSERT INTO `data_rows` VALUES ('40', '4', 'order', 'text', 'order', '1', '1', '1', '1', '1', '1', '{\"default\":1}', '3');
INSERT INTO `data_rows` VALUES ('41', '4', 'name', 'text', 'name', '1', '1', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('42', '4', 'slug', 'text', 'slug', '1', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('43', '4', 'created_at', 'timestamp', 'created_at', '0', '0', '1', '0', '0', '0', '', '6');
INSERT INTO `data_rows` VALUES ('44', '4', 'updated_at', 'timestamp', 'updated_at', '0', '0', '0', '0', '0', '0', '', '7');
INSERT INTO `data_rows` VALUES ('45', '6', 'id', 'number', 'id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('46', '6', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('47', '6', 'created_at', 'timestamp', 'created_at', '0', '0', '0', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('48', '6', 'updated_at', 'timestamp', 'updated_at', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('49', '6', 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('50', '1', 'seo_title', 'text', 'seo_title', '0', '1', '1', '1', '1', '1', '', '14');
INSERT INTO `data_rows` VALUES ('51', '1', 'featured', 'checkbox', 'featured', '1', '1', '1', '1', '1', '1', '', '15');
INSERT INTO `data_rows` VALUES ('52', '3', 'role_id', 'text', 'role_id', '1', '1', '1', '1', '1', '1', '', '9');
INSERT INTO `data_rows` VALUES ('58', '10', 'id', 'text', 'Id', '1', '1', '1', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('59', '10', 'name', 'text', 'Name', '1', '1', '1', '0', '0', '0', '', '2');
INSERT INTO `data_rows` VALUES ('60', '10', 'address', 'text', 'Address', '1', '1', '1', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('87', '19', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('88', '19', 'user_id', 'number', 'User Id', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('89', '19', 'sum_cost', 'number', 'Sum Cost', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('90', '19', 'created_at', 'timestamp', 'Created At', '1', '1', '1', '1', '0', '1', '', '4');
INSERT INTO `data_rows` VALUES ('91', '19', 'paid_at', 'timestamp', 'Paid At', '0', '1', '1', '1', '1', '1', '', '6');
INSERT INTO `data_rows` VALUES ('92', '19', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '5');
INSERT INTO `data_rows` VALUES ('93', '20', 'id', 'checkbox', 'Id', '1', '1', '1', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('94', '20', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('95', '20', 'address', 'text', 'Address', '1', '1', '1', '0', '1', '0', '', '3');
INSERT INTO `data_rows` VALUES ('109', '22', 'id', 'number', 'Id', '1', '1', '1', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('110', '22', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '0', '', '2');
INSERT INTO `data_rows` VALUES ('111', '22', 'created_at', 'timestamp', 'Created At', '1', '1', '1', '1', '0', '1', '', '3');
INSERT INTO `data_rows` VALUES ('112', '22', 'deleted_at', 'timestamp', 'Deleted At', '0', '1', '1', '1', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('113', '22', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '5');
INSERT INTO `data_rows` VALUES ('114', '23', 'id', 'number', 'Id', '1', '1', '1', '1', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('115', '23', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '0', '', '2');
INSERT INTO `data_rows` VALUES ('116', '23', 'created_at', 'timestamp', 'Created At', '1', '1', '1', '1', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('117', '23', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('118', '23', 'deleted_at', 'timestamp', 'Deleted At', '0', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('119', '30', 'id', 'checkbox', 'Id', '1', '1', '1', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('120', '30', 'shop_admin', 'select_dropdown', 'Shop Admin', '1', '1', '1', '1', '1', '1', '{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '2');
INSERT INTO `data_rows` VALUES ('121', '30', 'shop_id', 'checkbox', 'Shop Id', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('122', '30', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '', '4');
INSERT INTO `data_rows` VALUES ('123', '30', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '5');
INSERT INTO `data_rows` VALUES ('124', '30', 'deleted_at', 'timestamp', 'Deleted At', '0', '1', '1', '1', '1', '1', '', '6');
INSERT INTO `data_rows` VALUES ('125', '31', 'id', 'checkbox', 'Id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('126', '31', 'user_id', 'checkbox', 'User Id', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('127', '31', 'product_id', 'checkbox', 'Product Id', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('128', '31', 'product_price', 'checkbox', 'Product Price', '1', '1', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('129', '31', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{\"default\":\"DEFAULT GETDATE()\"}', '5');
INSERT INTO `data_rows` VALUES ('130', '31', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '6');
INSERT INTO `data_rows` VALUES ('131', '31', 'deleted_at', 'timestamp', 'Deleted At', '0', '1', '1', '1', '1', '1', '', '7');
INSERT INTO `data_rows` VALUES ('133', '34', 'id', 'checkbox', 'Id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('134', '34', 'user_id', 'checkbox', 'User Id', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('135', '34', 'name', 'checkbox', 'Name', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('136', '34', 'status', 'checkbox', 'Status', '1', '1', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('137', '34', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '', '5');
INSERT INTO `data_rows` VALUES ('138', '34', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '6');
INSERT INTO `data_rows` VALUES ('139', '34', 'deleted_at', 'timestamp', 'Deleted At', '0', '1', '1', '1', '1', '1', '', '7');
INSERT INTO `data_rows` VALUES ('140', '36', 'id', 'checkbox', 'Id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('141', '36', 'user_id', 'checkbox', 'User Id', '0', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('142', '36', 'product_id', 'checkbox', 'Product Id', '0', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('143', '36', 'count', 'checkbox', 'Count', '0', '1', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('144', '36', 'booking_code', 'checkbox', 'Booking Code', '0', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('145', '36', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '', '6');
INSERT INTO `data_rows` VALUES ('146', '36', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '7');
INSERT INTO `data_rows` VALUES ('147', '36', 'deleted_at', 'timestamp', 'Deleted At', '0', '1', '1', '1', '1', '1', '', '8');
INSERT INTO `data_rows` VALUES ('148', '37', 'id', 'checkbox', 'Id', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('149', '37', 'name', 'checkbox', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('150', '37', 'price', 'checkbox', 'Price', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('151', '37', 'weight_type', 'checkbox', 'Weight Type', '1', '1', '1', '1', '1', '1', '', '4');
INSERT INTO `data_rows` VALUES ('152', '37', 'weight', 'checkbox', 'Weight', '1', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('153', '37', 'shop_id', 'checkbox', 'Shop Id', '1', '1', '1', '1', '1', '1', '', '6');
INSERT INTO `data_rows` VALUES ('154', '37', 'sale', 'checkbox', 'Sale', '0', '1', '1', '1', '1', '1', '', '7');
INSERT INTO `data_rows` VALUES ('155', '37', 'sale_expiration_date', 'checkbox', 'Sale Expiration Date', '0', '1', '1', '1', '1', '1', '', '8');
INSERT INTO `data_rows` VALUES ('156', '37', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '', '9');
INSERT INTO `data_rows` VALUES ('157', '37', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '10');
INSERT INTO `data_rows` VALUES ('158', '37', 'img_path', 'checkbox', 'Img Path', '1', '1', '1', '1', '1', '1', '', '11');
INSERT INTO `data_rows` VALUES ('159', '37', 'sale_price', 'checkbox', 'Sale Price', '0', '1', '1', '1', '1', '1', '', '12');
INSERT INTO `data_rows` VALUES ('160', '37', 'type_id', 'checkbox', 'Type Id', '1', '1', '1', '1', '1', '1', '', '13');
INSERT INTO `data_rows` VALUES ('161', '37', 'sale_start_date', 'timestamp', 'Sale Start Date', '0', '1', '1', '1', '1', '1', '', '14');
INSERT INTO `data_rows` VALUES ('162', '37', 'description', 'checkbox', 'Description', '0', '1', '1', '1', '1', '1', '', '15');

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', '', '', '1', '0', '2017-08-07 08:03:40', '2017-08-07 08:03:40');
INSERT INTO `data_types` VALUES ('2', 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', '', '', '1', '0', '2017-08-07 08:03:40', '2017-08-07 08:03:40');
INSERT INTO `data_types` VALUES ('3', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', '1', '0', '2017-08-07 08:03:40', '2017-08-07 08:03:40');
INSERT INTO `data_types` VALUES ('4', 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', '', '', '1', '0', '2017-08-07 08:03:40', '2017-08-07 08:03:40');
INSERT INTO `data_types` VALUES ('5', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', '1', '0', '2017-08-07 08:03:40', '2017-08-07 08:03:40');
INSERT INTO `data_types` VALUES ('6', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', '1', '0', '2017-08-07 08:03:40', '2017-08-07 08:03:40');
INSERT INTO `data_types` VALUES ('10', 'shop', 'shop', 'Shop', 'Shops', 'voyager-shop', 'App\\Shop', '', '', '1', '0', '2017-08-07 13:19:40', '2017-08-07 13:19:40');
INSERT INTO `data_types` VALUES ('19', 'baskets', 'baskets', 'Basket', 'Baskets', '', 'App\\Basket', '', '', '1', '0', '2017-08-11 12:06:13', '2017-08-11 12:06:13');
INSERT INTO `data_types` VALUES ('20', 'shops', 'shops', 'Shops', 'Shops', '', 'App\\Shop', '', '', '1', '0', '2017-08-11 12:35:44', '2017-08-11 12:35:44');
INSERT INTO `data_types` VALUES ('22', 'product_types', 'product-types', 'Product Type', 'Product Types', '', 'App\\ProductType', '', '', '1', '0', '2017-08-14 08:14:59', '2017-08-14 08:14:59');
INSERT INTO `data_types` VALUES ('23', 'weight_types', 'weight-types', 'Weight Type', 'Weight Types', '', 'App\\WeightType', '', '', '1', '0', '2017-08-14 09:08:53', '2017-08-14 09:08:53');
INSERT INTO `data_types` VALUES ('30', 'communications', 'communications', 'Communication', 'Communications', '', 'App\\Communication', '', '', '1', '0', '2017-08-14 15:28:05', '2017-08-14 15:28:05');
INSERT INTO `data_types` VALUES ('31', 'basket_infos', 'basket-infos', 'Basket Info', 'Basket Infos', '', 'App\\BasketInfo', '', '', '1', '0', '2017-11-27 17:59:41', '2017-11-27 17:59:41');
INSERT INTO `data_types` VALUES ('34', 'template', 'template', 'Template', 'Templates', '', 'App\\Template', '', '', '1', '0', '2017-12-01 11:50:42', '2017-12-01 11:50:42');
INSERT INTO `data_types` VALUES ('36', 'booking_query', 'booking-query', 'Booking Query', 'Booking Queries', '', 'App\\BookingQuery', '', '', '1', '0', '2017-12-08 20:19:25', '2017-12-08 20:19:25');
INSERT INTO `data_types` VALUES ('37', 'products', 'products', 'Product', 'Products', '', 'App\\Product', '', '', '1', '0', '2018-01-12 15:31:54', '2018-01-12 15:31:54');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'admin', '2017-08-07 08:03:41', '2017-08-07 08:03:41');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Dashboard', '/admin', '_self', 'voyager-boat', null, null, '1', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null, null);
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '/admin/media', '_self', 'voyager-images', null, null, '4', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Posts', '/admin/posts', '_self', 'voyager-news', null, null, '5', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('4', '1', 'Users', '/admin/users', '_self', 'voyager-person', null, null, '3', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null, null);
INSERT INTO `menu_items` VALUES ('5', '1', 'Categories', '/admin/categories', '_self', 'voyager-categories', null, null, '7', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Pages', '/admin/pages', '_self', 'voyager-file-text', null, null, '6', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Roles', '/admin/roles', '_self', 'voyager-lock', null, null, '2', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null, null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '8', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('9', '1', 'Menu Builder', '/admin/menus', '_self', 'voyager-list', null, '8', '1', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Database', '/admin/database', '_self', 'voyager-data', null, '8', '2', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('11', '1', 'Settings', '/admin/settings', '_self', 'voyager-settings', null, null, '9', '2017-08-07 08:03:41', '2017-08-11 10:28:50', null, null);
INSERT INTO `menu_items` VALUES ('13', '1', 'Basket', '/admin/baskets', '_self', '', '#000000', null, '10', '2017-08-11 10:17:13', '2017-08-11 12:07:08', null, '');
INSERT INTO `menu_items` VALUES ('16', '1', 'Shops', '/admin/shops', '_self', '', '#000000', null, '11', '2017-08-11 12:48:39', '2017-08-11 12:48:39', null, '');
INSERT INTO `menu_items` VALUES ('17', '1', 'Products', '/admin/products', '_self', '', '#000000', null, '12', '2017-08-11 13:06:46', '2017-08-11 13:06:46', null, '');
INSERT INTO `menu_items` VALUES ('18', '1', 'Product Types', 'admin/product-types', '_self', '', '#000000', null, '13', '2017-08-14 08:22:15', '2017-08-14 08:33:59', null, '');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_01_000000_add_voyager_user_fields', '1');
INSERT INTO `migrations` VALUES ('4', '2016_01_01_000000_create_data_types_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_01_01_000000_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_01_01_000000_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_02_15_204651_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('8', '2016_05_19_173453_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_10_21_190000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_10_21_190000_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('11', '2016_11_30_135954_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('12', '2016_11_30_141208_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('13', '2016_12_26_201236_data_types__add__server_side', '1');
INSERT INTO `migrations` VALUES ('14', '2017_01_13_000000_add_route_to_menu_items_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_01_14_005015_create_translations_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_01_15_000000_add_permission_group_id_to_permissions_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_01_15_000000_create_permission_groups_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1');
INSERT INTO `migrations` VALUES ('19', '2017_03_06_000000_add_controller_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('20', '2017_04_21_000000_add_order_to_data_rows_table', '1');
INSERT INTO `migrations` VALUES ('21', '2018_01_10_160533_create_subscriptions_add_users', '2');

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of packages
-- ----------------------------

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/AAgCCnqHfLlRub9syUdw.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2017-08-07 08:03:42', '2017-08-07 08:03:42');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('2', 'browse_database', null, '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('3', 'browse_media', null, '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('4', 'browse_settings', null, '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('5', 'browse_menus', 'menus', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('6', 'read_menus', 'menus', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('7', 'edit_menus', 'menus', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('8', 'add_menus', 'menus', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('9', 'delete_menus', 'menus', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('10', 'browse_pages', 'pages', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('11', 'read_pages', 'pages', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('12', 'edit_pages', 'pages', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('13', 'add_pages', 'pages', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('14', 'delete_pages', 'pages', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('15', 'browse_roles', 'roles', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('16', 'read_roles', 'roles', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('17', 'edit_roles', 'roles', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('18', 'add_roles', 'roles', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('19', 'delete_roles', 'roles', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('20', 'browse_users', 'users', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('21', 'read_users', 'users', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('22', 'edit_users', 'users', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('23', 'add_users', 'users', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('24', 'delete_users', 'users', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('25', 'browse_posts', 'posts', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('26', 'read_posts', 'posts', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('27', 'edit_posts', 'posts', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('28', 'add_posts', 'posts', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('29', 'delete_posts', 'posts', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('30', 'browse_categories', 'categories', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('31', 'read_categories', 'categories', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('32', 'edit_categories', 'categories', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('33', 'add_categories', 'categories', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('34', 'delete_categories', 'categories', '2017-08-07 08:03:41', '2017-08-07 08:03:41', null);
INSERT INTO `permissions` VALUES ('40', 'browse_shop', 'shop', '2017-08-07 13:19:40', '2017-08-07 13:19:40', null);
INSERT INTO `permissions` VALUES ('41', 'read_shop', 'shop', '2017-08-07 13:19:40', '2017-08-07 13:19:40', null);
INSERT INTO `permissions` VALUES ('42', 'edit_shop', 'shop', '2017-08-07 13:19:40', '2017-08-07 13:19:40', null);
INSERT INTO `permissions` VALUES ('43', 'add_shop', 'shop', '2017-08-07 13:19:40', '2017-08-07 13:19:40', null);
INSERT INTO `permissions` VALUES ('44', 'delete_shop', 'shop', '2017-08-07 13:19:40', '2017-08-07 13:19:40', null);
INSERT INTO `permissions` VALUES ('70', 'browse_baskets', 'baskets', '2017-08-11 12:06:13', '2017-08-11 12:06:13', null);
INSERT INTO `permissions` VALUES ('71', 'read_baskets', 'baskets', '2017-08-11 12:06:13', '2017-08-11 12:06:13', null);
INSERT INTO `permissions` VALUES ('72', 'edit_baskets', 'baskets', '2017-08-11 12:06:13', '2017-08-11 12:06:13', null);
INSERT INTO `permissions` VALUES ('73', 'add_baskets', 'baskets', '2017-08-11 12:06:13', '2017-08-11 12:06:13', null);
INSERT INTO `permissions` VALUES ('74', 'delete_baskets', 'baskets', '2017-08-11 12:06:13', '2017-08-11 12:06:13', null);
INSERT INTO `permissions` VALUES ('75', 'browse_shops', 'shops', '2017-08-11 12:35:44', '2017-08-11 12:35:44', null);
INSERT INTO `permissions` VALUES ('76', 'read_shops', 'shops', '2017-08-11 12:35:44', '2017-08-11 12:35:44', null);
INSERT INTO `permissions` VALUES ('77', 'edit_shops', 'shops', '2017-08-11 12:35:44', '2017-08-11 12:35:44', null);
INSERT INTO `permissions` VALUES ('78', 'add_shops', 'shops', '2017-08-11 12:35:44', '2017-08-11 12:35:44', null);
INSERT INTO `permissions` VALUES ('79', 'delete_shops', 'shops', '2017-08-11 12:35:44', '2017-08-11 12:35:44', null);
INSERT INTO `permissions` VALUES ('85', 'browse_product_types', 'product_types', '2017-08-14 08:14:59', '2017-08-14 08:14:59', null);
INSERT INTO `permissions` VALUES ('86', 'read_product_types', 'product_types', '2017-08-14 08:14:59', '2017-08-14 08:14:59', null);
INSERT INTO `permissions` VALUES ('87', 'edit_product_types', 'product_types', '2017-08-14 08:14:59', '2017-08-14 08:14:59', null);
INSERT INTO `permissions` VALUES ('88', 'add_product_types', 'product_types', '2017-08-14 08:14:59', '2017-08-14 08:14:59', null);
INSERT INTO `permissions` VALUES ('89', 'delete_product_types', 'product_types', '2017-08-14 08:14:59', '2017-08-14 08:14:59', null);
INSERT INTO `permissions` VALUES ('90', 'browse_weight_types', 'weight_types', '2017-08-14 09:08:53', '2017-08-14 09:08:53', null);
INSERT INTO `permissions` VALUES ('91', 'read_weight_types', 'weight_types', '2017-08-14 09:08:53', '2017-08-14 09:08:53', null);
INSERT INTO `permissions` VALUES ('92', 'edit_weight_types', 'weight_types', '2017-08-14 09:08:53', '2017-08-14 09:08:53', null);
INSERT INTO `permissions` VALUES ('93', 'add_weight_types', 'weight_types', '2017-08-14 09:08:53', '2017-08-14 09:08:53', null);
INSERT INTO `permissions` VALUES ('94', 'delete_weight_types', 'weight_types', '2017-08-14 09:08:53', '2017-08-14 09:08:53', null);
INSERT INTO `permissions` VALUES ('95', 'browse_communications', 'communications', '2017-08-14 15:28:06', '2017-08-14 15:28:06', null);
INSERT INTO `permissions` VALUES ('96', 'read_communications', 'communications', '2017-08-14 15:28:06', '2017-08-14 15:28:06', null);
INSERT INTO `permissions` VALUES ('97', 'edit_communications', 'communications', '2017-08-14 15:28:06', '2017-08-14 15:28:06', null);
INSERT INTO `permissions` VALUES ('98', 'add_communications', 'communications', '2017-08-14 15:28:06', '2017-08-14 15:28:06', null);
INSERT INTO `permissions` VALUES ('99', 'delete_communications', 'communications', '2017-08-14 15:28:06', '2017-08-14 15:28:06', null);
INSERT INTO `permissions` VALUES ('100', 'browse_basket_infos', 'basket_infos', '2017-11-27 17:59:41', '2017-11-27 17:59:41', null);
INSERT INTO `permissions` VALUES ('101', 'read_basket_infos', 'basket_infos', '2017-11-27 17:59:41', '2017-11-27 17:59:41', null);
INSERT INTO `permissions` VALUES ('102', 'edit_basket_infos', 'basket_infos', '2017-11-27 17:59:41', '2017-11-27 17:59:41', null);
INSERT INTO `permissions` VALUES ('103', 'add_basket_infos', 'basket_infos', '2017-11-27 17:59:41', '2017-11-27 17:59:41', null);
INSERT INTO `permissions` VALUES ('104', 'delete_basket_infos', 'basket_infos', '2017-11-27 17:59:41', '2017-11-27 17:59:41', null);
INSERT INTO `permissions` VALUES ('105', 'browse_template', 'template', '2017-12-01 11:50:42', '2017-12-01 11:50:42', null);
INSERT INTO `permissions` VALUES ('106', 'read_template', 'template', '2017-12-01 11:50:42', '2017-12-01 11:50:42', null);
INSERT INTO `permissions` VALUES ('107', 'edit_template', 'template', '2017-12-01 11:50:42', '2017-12-01 11:50:42', null);
INSERT INTO `permissions` VALUES ('108', 'add_template', 'template', '2017-12-01 11:50:42', '2017-12-01 11:50:42', null);
INSERT INTO `permissions` VALUES ('109', 'delete_template', 'template', '2017-12-01 11:50:42', '2017-12-01 11:50:42', null);
INSERT INTO `permissions` VALUES ('110', 'browse_booking_query', 'booking_query', '2017-12-08 20:19:25', '2017-12-08 20:19:25', null);
INSERT INTO `permissions` VALUES ('111', 'read_booking_query', 'booking_query', '2017-12-08 20:19:25', '2017-12-08 20:19:25', null);
INSERT INTO `permissions` VALUES ('112', 'edit_booking_query', 'booking_query', '2017-12-08 20:19:25', '2017-12-08 20:19:25', null);
INSERT INTO `permissions` VALUES ('113', 'add_booking_query', 'booking_query', '2017-12-08 20:19:25', '2017-12-08 20:19:25', null);
INSERT INTO `permissions` VALUES ('114', 'delete_booking_query', 'booking_query', '2017-12-08 20:19:25', '2017-12-08 20:19:25', null);
INSERT INTO `permissions` VALUES ('115', 'browse_products', 'products', '2018-01-12 15:31:54', '2018-01-12 15:31:54', null);
INSERT INTO `permissions` VALUES ('116', 'read_products', 'products', '2018-01-12 15:31:54', '2018-01-12 15:31:54', null);
INSERT INTO `permissions` VALUES ('117', 'edit_products', 'products', '2018-01-12 15:31:54', '2018-01-12 15:31:54', null);
INSERT INTO `permissions` VALUES ('118', 'add_products', 'products', '2018-01-12 15:31:54', '2018-01-12 15:31:54', null);
INSERT INTO `permissions` VALUES ('119', 'delete_products', 'products', '2018-01-12 15:31:54', '2018-01-12 15:31:54', null);

-- ----------------------------
-- Table structure for permission_groups
-- ----------------------------
DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permission_groups
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('1', '3');
INSERT INTO `permission_role` VALUES ('2', '1');
INSERT INTO `permission_role` VALUES ('3', '1');
INSERT INTO `permission_role` VALUES ('3', '3');
INSERT INTO `permission_role` VALUES ('4', '1');
INSERT INTO `permission_role` VALUES ('4', '3');
INSERT INTO `permission_role` VALUES ('5', '1');
INSERT INTO `permission_role` VALUES ('5', '3');
INSERT INTO `permission_role` VALUES ('6', '1');
INSERT INTO `permission_role` VALUES ('6', '3');
INSERT INTO `permission_role` VALUES ('7', '1');
INSERT INTO `permission_role` VALUES ('8', '1');
INSERT INTO `permission_role` VALUES ('9', '1');
INSERT INTO `permission_role` VALUES ('10', '1');
INSERT INTO `permission_role` VALUES ('10', '3');
INSERT INTO `permission_role` VALUES ('11', '1');
INSERT INTO `permission_role` VALUES ('11', '3');
INSERT INTO `permission_role` VALUES ('12', '1');
INSERT INTO `permission_role` VALUES ('13', '1');
INSERT INTO `permission_role` VALUES ('14', '1');
INSERT INTO `permission_role` VALUES ('15', '1');
INSERT INTO `permission_role` VALUES ('16', '1');
INSERT INTO `permission_role` VALUES ('17', '1');
INSERT INTO `permission_role` VALUES ('18', '1');
INSERT INTO `permission_role` VALUES ('19', '1');
INSERT INTO `permission_role` VALUES ('20', '1');
INSERT INTO `permission_role` VALUES ('20', '3');
INSERT INTO `permission_role` VALUES ('21', '1');
INSERT INTO `permission_role` VALUES ('21', '3');
INSERT INTO `permission_role` VALUES ('22', '1');
INSERT INTO `permission_role` VALUES ('23', '1');
INSERT INTO `permission_role` VALUES ('24', '1');
INSERT INTO `permission_role` VALUES ('25', '1');
INSERT INTO `permission_role` VALUES ('25', '3');
INSERT INTO `permission_role` VALUES ('26', '1');
INSERT INTO `permission_role` VALUES ('26', '3');
INSERT INTO `permission_role` VALUES ('27', '1');
INSERT INTO `permission_role` VALUES ('28', '1');
INSERT INTO `permission_role` VALUES ('29', '1');
INSERT INTO `permission_role` VALUES ('30', '1');
INSERT INTO `permission_role` VALUES ('31', '1');
INSERT INTO `permission_role` VALUES ('32', '1');
INSERT INTO `permission_role` VALUES ('33', '1');
INSERT INTO `permission_role` VALUES ('34', '1');
INSERT INTO `permission_role` VALUES ('40', '1');
INSERT INTO `permission_role` VALUES ('40', '3');
INSERT INTO `permission_role` VALUES ('41', '1');
INSERT INTO `permission_role` VALUES ('41', '3');
INSERT INTO `permission_role` VALUES ('42', '1');
INSERT INTO `permission_role` VALUES ('43', '1');
INSERT INTO `permission_role` VALUES ('44', '1');
INSERT INTO `permission_role` VALUES ('70', '1');
INSERT INTO `permission_role` VALUES ('70', '3');
INSERT INTO `permission_role` VALUES ('71', '1');
INSERT INTO `permission_role` VALUES ('71', '3');
INSERT INTO `permission_role` VALUES ('72', '1');
INSERT INTO `permission_role` VALUES ('72', '3');
INSERT INTO `permission_role` VALUES ('73', '1');
INSERT INTO `permission_role` VALUES ('73', '3');
INSERT INTO `permission_role` VALUES ('74', '1');
INSERT INTO `permission_role` VALUES ('74', '3');
INSERT INTO `permission_role` VALUES ('75', '1');
INSERT INTO `permission_role` VALUES ('75', '3');
INSERT INTO `permission_role` VALUES ('76', '1');
INSERT INTO `permission_role` VALUES ('76', '3');
INSERT INTO `permission_role` VALUES ('77', '1');
INSERT INTO `permission_role` VALUES ('78', '1');
INSERT INTO `permission_role` VALUES ('79', '1');
INSERT INTO `permission_role` VALUES ('85', '1');
INSERT INTO `permission_role` VALUES ('85', '3');
INSERT INTO `permission_role` VALUES ('86', '1');
INSERT INTO `permission_role` VALUES ('86', '3');
INSERT INTO `permission_role` VALUES ('87', '1');
INSERT INTO `permission_role` VALUES ('88', '1');
INSERT INTO `permission_role` VALUES ('89', '1');
INSERT INTO `permission_role` VALUES ('90', '1');
INSERT INTO `permission_role` VALUES ('90', '3');
INSERT INTO `permission_role` VALUES ('91', '1');
INSERT INTO `permission_role` VALUES ('91', '3');
INSERT INTO `permission_role` VALUES ('92', '1');
INSERT INTO `permission_role` VALUES ('93', '1');
INSERT INTO `permission_role` VALUES ('94', '1');
INSERT INTO `permission_role` VALUES ('95', '1');
INSERT INTO `permission_role` VALUES ('95', '3');
INSERT INTO `permission_role` VALUES ('96', '1');
INSERT INTO `permission_role` VALUES ('96', '3');
INSERT INTO `permission_role` VALUES ('97', '1');
INSERT INTO `permission_role` VALUES ('98', '1');
INSERT INTO `permission_role` VALUES ('99', '1');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '0', null, 'Lorem Ipsum Post', null, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/nlje9NZQ7bTMYOUG4lF1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `posts` VALUES ('2', '0', null, 'My Sample Post', null, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/7uelXHi85YOfZKsoS6Tq.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `posts` VALUES ('3', '0', null, 'Latest Post', null, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/9txUSY6wb7LTBSbDPrD9.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `posts` VALUES ('4', '0', null, 'Yarr Post', null, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/yuk1fBwmKKZdY2qR1ZKM.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2017-08-07 08:03:42', '2017-08-07 08:03:42');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `weight_type` tinyint(4) NOT NULL,
  `weight` double NOT NULL,
  `shop_id` int(11) NOT NULL,
  `sale` tinyint(4) DEFAULT NULL,
  `sale_expiration_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img_path` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` double DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `sale_start_date` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `ft1` (`name`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Coca-cola', '14.5', '1', '1', '1', '0', '2017-08-18', '2017-08-14 13:09:00', '2017-11-27 17:23:01', 'products/November2017/n1xVHAng0AcsxleUTSdi.jpg', '10.1', '1', null, '');
INSERT INTO `products` VALUES ('2', 'Fanta', '15.8', '1', '1', '2', '1', '2017-09-03', '2017-08-14 09:46:00', '2017-11-27 17:23:18', 'products/November2017/kBxDtRovYFgie1PoNI5m.jpg', '10.1', '1', null, null);
INSERT INTO `products` VALUES ('3', 'Holland cheese', '33.33', '3', '100', '2', '1', '2015-03-11', '2017-11-27 17:24:35', '2017-11-27 17:24:35', 'products/November2017/hFFCYjzdbKacUovceU8y.png', '21.11', '2', null, null);
INSERT INTO `products` VALUES ('4', 'Cherry', '30.9', '2', '1', '2', '0', '2017-07-25', '2017-11-27 17:26:34', '2017-11-27 17:26:34', 'products/November2017/sPHnKuwPjvVpL5FJirpL.jpg', '25.8', '6', null, null);
INSERT INTO `products` VALUES ('5', 'Cheese', '41.11', '3', '100', '1', '0', '2017-08-21', '2017-11-27 17:28:05', '2017-11-27 17:28:05', 'products/November2017/dzfULtEgAkfmnLKMka9A.jpg', '38.99', '2', null, null);
INSERT INTO `products` VALUES ('6', 'H2Ola', '10.05', '1', '1', '1', '1', '2017-12-29', '2017-11-27 17:29:13', '2017-11-27 17:29:13', 'products/November2017/mjnXxZ8D4yS3vuNhpqL2.jpg', '9.8', '1', null, null);
INSERT INTO `products` VALUES ('8', 'Milk 3,6%', '32', '1', '3', '3', '0', '2121-02-21', '2017-11-27 17:30:41', '2017-11-27 17:30:41', 'products/November2017/NkY5QgiJuRmJOvtNCKam.jpg', '21.21', '2', null, null);
INSERT INTO `products` VALUES ('10', 'potato', '5.5', '2', '1', '1', '1', '2017-12-21', '2017-12-09 07:51:06', '2017-12-09 07:51:06', 'products/December2017/cFkbLitexCwyPIyFSLmm.jpg', '4.4', '6', null, null);

-- ----------------------------
-- Table structure for product_types
-- ----------------------------
DROP TABLE IF EXISTS `product_types`;
CREATE TABLE `product_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_types
-- ----------------------------
INSERT INTO `product_types` VALUES ('1', 'drinkables', '2017-08-14 08:39:41', null, '2017-08-14 08:39:41');
INSERT INTO `product_types` VALUES ('2', 'milky', '2017-08-14 08:43:44', null, '2017-08-14 08:43:44');
INSERT INTO `product_types` VALUES ('3', 'bakery', '2017-11-28 12:39:02', null, '2017-08-14 08:45:05');
INSERT INTO `product_types` VALUES ('4', 'meat', '2017-08-14 08:45:33', null, '2017-08-14 08:45:33');
INSERT INTO `product_types` VALUES ('5', 'domestic', '2017-11-28 14:54:34', null, '2017-08-14 08:46:27');
INSERT INTO `product_types` VALUES ('6', 'vegetables&fruit', '2017-11-28 14:54:48', null, '2017-08-14 08:47:11');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Administrator', '2017-08-07 08:03:41', '2017-08-07 08:03:41');
INSERT INTO `roles` VALUES ('2', 'user', 'Normal User', '2017-08-07 08:03:41', '2017-08-07 08:03:41');
INSERT INTO `roles` VALUES ('3', 'ShopAdmin', 'Shop Admin', '2017-08-14 09:23:40', '2017-08-14 09:24:52');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'title', 'Site Title', 'Site Title', '', 'text', '1');
INSERT INTO `settings` VALUES ('2', 'description', 'Site Description', 'Site Description', '', 'text', '2');
INSERT INTO `settings` VALUES ('3', 'logo', 'Site Logo', '', '', 'image', '3');
INSERT INTO `settings` VALUES ('4', 'admin_bg_image', 'Admin Background Image', '', '', 'image', '9');
INSERT INTO `settings` VALUES ('5', 'admin_title', 'Admin Title', 'Voyager', '', 'text', '4');
INSERT INTO `settings` VALUES ('6', 'admin_description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', '5');
INSERT INTO `settings` VALUES ('7', 'admin_loader', 'Admin Loader', '', '', 'image', '6');
INSERT INTO `settings` VALUES ('8', 'admin_icon_image', 'Admin Icon Image', '', '', 'image', '7');
INSERT INTO `settings` VALUES ('9', 'google_analytics_client_id', 'Google Analytics Client ID', '', '', 'text', '9');

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('1', 'ÐÐ¢Ð‘', 'ÑƒÐ». Ð´.', '2017-08-11 13:01:15', '2017-08-11 13:01:15', null);
INSERT INTO `shops` VALUES ('2', 'ÐœÐ°Ñ€ÐºÐµÑ‚Ñ€Ð¾Ð¿Ñ‚', 'ÑƒÐ». Ð´.', '2017-08-11 13:03:39', '2017-08-11 13:03:39', null);
INSERT INTO `shops` VALUES ('3', 'ÐžÐ¿Ñ‚Ð¾Ð²Ð¸Ñ‡Ð¾Ðº', 'ÑƒÐ». Ð´.', '2017-08-11 13:04:11', '2017-08-11 13:04:11', null);

-- ----------------------------
-- Table structure for statuses
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of statuses
-- ----------------------------
INSERT INTO `statuses` VALUES ('1', 'active', '2018-01-12 17:34:41', null, null);
INSERT INTO `statuses` VALUES ('2', 'non-active', '2018-01-12 17:34:53', null, null);
INSERT INTO `statuses` VALUES ('3', 'processing', '2018-01-12 17:35:11', null, null);
INSERT INTO `statuses` VALUES ('4', 'done', '2018-01-12 17:35:23', null, null);

-- ----------------------------
-- Table structure for subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of subscriptions
-- ----------------------------

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES ('54', '1', 'Monday', '2', '2017-12-08 08:30:39', null, '2018-01-09 13:36:38');
INSERT INTO `templates` VALUES ('55', '1', 'Sunday', '2', '2017-12-08 15:41:10', null, '2018-01-09 13:17:05');
INSERT INTO `templates` VALUES ('56', '1', 'test', '1', '2017-12-09 07:47:35', null, null);
INSERT INTO `templates` VALUES ('57', '1', 'kek', '2', '2018-01-08 09:10:53', null, '2018-01-09 13:36:43');
INSERT INTO `templates` VALUES ('58', '1', 'faa', '2', '2018-01-08 10:53:30', null, '2018-01-09 13:36:46');

-- ----------------------------
-- Table structure for template_infos
-- ----------------------------
DROP TABLE IF EXISTS `template_infos`;
CREATE TABLE `template_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `template_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of template_infos
-- ----------------------------
INSERT INTO `template_infos` VALUES ('14', '1', '3', '2017-12-08 02:51:35', null, null, '54', '1');
INSERT INTO `template_infos` VALUES ('15', '1', '1', '2017-12-08 02:53:07', null, null, '54', '1');
INSERT INTO `template_infos` VALUES ('16', '1', '5', '2017-12-08 02:53:08', null, null, '54', '1');
INSERT INTO `template_infos` VALUES ('17', '1', '2', '2017-12-08 02:53:09', null, null, '54', '3');
INSERT INTO `template_infos` VALUES ('21', '1', '1', '2017-12-08 14:17:42', null, null, '55', '1');
INSERT INTO `template_infos` VALUES ('22', '1', '5', '2017-12-08 14:17:45', null, null, '55', '1');
INSERT INTO `template_infos` VALUES ('23', '1', '8', '2017-12-08 14:17:46', null, null, '55', '1');
INSERT INTO `template_infos` VALUES ('24', '1', '2', '2017-12-09 07:45:37', null, null, '56', '1');
INSERT INTO `template_infos` VALUES ('25', '1', '4', '2017-12-09 07:45:51', null, null, '56', '2');
INSERT INTO `template_infos` VALUES ('26', '1', '1', '2018-01-08 09:09:50', null, null, '57', '0');
INSERT INTO `template_infos` VALUES ('27', '1', '5', '2018-01-08 09:09:54', null, null, '57', '1');
INSERT INTO `template_infos` VALUES ('29', '1', '1', '2018-01-08 09:09:50', null, null, '58', '0');
INSERT INTO `template_infos` VALUES ('30', '1', '5', '2018-01-08 09:09:54', null, null, '58', '1');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES ('1', 'data_types', 'display_name_singular', '1', 'pt', 'Post', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('2', 'data_types', 'display_name_singular', '2', 'pt', 'PÃ¡gina', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('3', 'data_types', 'display_name_singular', '3', 'pt', 'Utilizador', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('4', 'data_types', 'display_name_singular', '4', 'pt', 'Categoria', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('5', 'data_types', 'display_name_singular', '5', 'pt', 'Menu', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('6', 'data_types', 'display_name_singular', '6', 'pt', 'FunÃ§Ã£o', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('7', 'data_types', 'display_name_plural', '1', 'pt', 'Posts', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('8', 'data_types', 'display_name_plural', '2', 'pt', 'PÃ¡ginas', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('9', 'data_types', 'display_name_plural', '3', 'pt', 'Utilizadores', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('10', 'data_types', 'display_name_plural', '4', 'pt', 'Categorias', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('11', 'data_types', 'display_name_plural', '5', 'pt', 'Menus', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('12', 'data_types', 'display_name_plural', '6', 'pt', 'FunÃ§Ãµes', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('13', 'pages', 'title', '1', 'pt', 'OlÃ¡ Mundo', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('14', 'pages', 'slug', '1', 'pt', 'ola-mundo', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('15', 'pages', 'body', '1', 'pt', '<p>OlÃ¡ Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('16', 'menu_items', 'title', '1', 'pt', 'Painel de Controle', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('17', 'menu_items', 'title', '2', 'pt', 'Media', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('18', 'menu_items', 'title', '3', 'pt', 'PublicaÃ§Ãµes', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('19', 'menu_items', 'title', '4', 'pt', 'Utilizadores', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('20', 'menu_items', 'title', '5', 'pt', 'Categorias', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('21', 'menu_items', 'title', '6', 'pt', 'PÃ¡ginas', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('22', 'menu_items', 'title', '7', 'pt', 'FunÃ§Ãµes', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('23', 'menu_items', 'title', '8', 'pt', 'Ferramentas', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('24', 'menu_items', 'title', '9', 'pt', 'Menus', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('25', 'menu_items', 'title', '10', 'pt', 'Base de dados', '2017-08-07 08:03:42', '2017-08-07 08:03:42');
INSERT INTO `translations` VALUES ('26', 'menu_items', 'title', '11', 'pt', 'ConfiguraÃ§Ãµes', '2017-08-07 08:03:42', '2017-08-07 08:03:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$S4iitEfHxIm6dUX0GQ4oA.U13xBnOI4fY8kPd5xq4cWsaOYM4mKQe', 'aeSLl16bhmEejAQsSlt4vkDMsMiLy2GloNXmyGFOkCpF8Vx4cNLPW9F7gMmD', '2017-08-07 08:03:41', '2018-01-09 12:36:27', null, null, null, null);
INSERT INTO `users` VALUES ('2', '2', 'Gleb', 'gleb.deriyenko@gmail.com', 'users/default.png', '$2y$10$Ui1YnZnZl0q9UMHIwE35Z.gxF0CfqOwO0EolYOQz04mwYIWRd9sUu', 's9qOhpe44UZSZQ8mP5DAfNsdYykgdsbtBmWCWml9hyNun6ktxeREOCbrEmjV', '2017-08-07 14:24:14', '2017-08-07 14:46:18', null, null, null, null);
INSERT INTO `users` VALUES ('3', '3', 'Marketopt', 'marketopt@admin.com', 'users/default.png', '$2y$10$BUd6MidBLGeh7NxO9t2jiOUU.JsJ2kd3dRuj8ivG/kiYSDV4Qe3qW', null, '2017-08-14 09:19:47', '2017-08-14 09:25:14', null, null, null, null);
INSERT INTO `users` VALUES ('4', '2', 'bogdan', 'dydka@mail.com', 'users/default.png', '$2y$10$r9lpfhcxMSV.KIbzY86g8eDtIs4idhyahypBSXhVXFbMS6FNn2ClW', null, '2017-11-28 10:16:29', '2017-11-28 10:16:29', null, null, null, null);
INSERT INTO `users` VALUES ('5', '2', 'Karina', 'karina@gmail.com', 'users/default.png', '$2y$10$A0njqOymkYPv.MSIDBUYpuslrlBHTFAPFP9npEp0jOANUUnwkuyM.', null, '2017-12-09 07:42:08', '2017-12-09 07:42:08', null, null, null, null);

-- ----------------------------
-- Table structure for weight_types
-- ----------------------------
DROP TABLE IF EXISTS `weight_types`;
CREATE TABLE `weight_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weight_types
-- ----------------------------
INSERT INTO `weight_types` VALUES ('1', 'liter', '2017-08-14 09:13:59', '2017-08-14 09:13:59', null);
INSERT INTO `weight_types` VALUES ('2', 'kg', '2017-08-14 09:15:49', '2017-08-14 09:15:49', null);
INSERT INTO `weight_types` VALUES ('3', 'gram', '2017-08-14 09:16:16', '2017-08-14 09:16:16', null);
INSERT INTO `weight_types` VALUES ('4', 'thing', '2017-08-14 09:17:00', '2017-08-14 09:17:25', null);
SET FOREIGN_KEY_CHECKS=1;
