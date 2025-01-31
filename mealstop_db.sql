/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 10.4.32-MariaDB : Database - mealstop_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mealstop_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `mealstop_db`;

/*Table structure for table `admin_password` */

DROP TABLE IF EXISTS `admin_password`;

CREATE TABLE `admin_password` (
  `PasswordID` int(11) NOT NULL AUTO_INCREMENT,
  `PasswordHash` varchar(255) NOT NULL,
  `CreatedAt` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`PasswordID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `admin_password` */

insert  into `admin_password`(`PasswordID`,`PasswordHash`,`CreatedAt`) values 
(1,'ac9689e2272427085e35b9d3e3e8bed88cb3434828b43b86fc0596cad4c6e270','2024-12-01 11:37:10');

/*Table structure for table `dailymeals` */

DROP TABLE IF EXISTS `dailymeals`;

CREATE TABLE `dailymeals` (
  `DailyMealID` int(11) NOT NULL AUTO_INCREMENT,
  `MealCode` varchar(50) NOT NULL,
  `MealName` varchar(100) NOT NULL,
  `DateAdded` date NOT NULL,
  `TotalCost` decimal(10,2) DEFAULT NULL,
  `SellingPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`DailyMealID`),
  KEY `MealCode` (`MealCode`),
  CONSTRAINT `dailymeals_ibfk_1` FOREIGN KEY (`MealCode`) REFERENCES `meals` (`MealCode`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `dailymeals` */

insert  into `dailymeals`(`DailyMealID`,`MealCode`,`MealName`,`DateAdded`,`TotalCost`,`SellingPrice`) values 
(127,'PorkSteak','Pork Steak','2025-01-13',1500.00,150.00),
(128,'adobo01','Adobo','2025-01-13',900.00,100.00),
(129,'Igado','igado','2025-01-13',600.00,100.00),
(130,'langka','langka gulay','2025-01-13',240.00,50.00),
(131,'ssfish','sweet and sour','2025-01-13',480.00,100.00),
(132,'gabigulay','gabi','2025-01-13',300.00,50.00),
(133,'Nilagangbaboy','Nilaga','2025-01-13',2000.00,150.00),
(134,'Sinabawangisda','isda sinabawan','2025-01-13',1200.00,130.00),
(135,'rice25klg','rice','2025-01-13',1350.00,20.00),
(136,'Bclexpress','Bicol Express','2025-01-13',500.00,100.00),
(137,'ck','fried chicken','2025-01-13',1200.00,100.00),
(138,'PorkSteak','Pork Steak','2025-01-14',1500.00,150.00),
(139,'adobo01','Adobo','2025-01-14',900.00,100.00),
(140,'pakbet','pakbet gulay','2025-01-14',240.00,50.00),
(141,'Nilagangbaboy','Nilaga','2025-01-14',2000.00,150.00),
(142,'Bclexpress','Bicol Express','2025-01-14',500.00,100.00),
(143,'menudo1','Menudo','2025-01-14',480.00,100.00),
(144,'Dinuguan','Dinuguan','2025-01-14',600.00,100.00),
(145,'amp','ampalaya','2025-01-14',200.00,50.00),
(146,'ck','fried chicken','2025-01-14',1200.00,100.00),
(147,'rice25klg','rice','2025-01-14',1350.00,20.00),
(148,'Sinabawangisda','isda sinabawan','2025-01-14',1200.00,130.00),
(149,'ssfish','sweet and sour','2025-01-14',480.00,100.00),
(150,'Igado','igado','2025-01-14',600.00,100.00),
(151,'PorkSteak','Pork Steak','2025-01-15',1500.00,150.00),
(152,'Igado','igado','2025-01-15',600.00,100.00),
(153,'pakbet','pakbet gulay','2025-01-15',240.00,50.00),
(154,'langka','langka gulay','2025-01-15',240.00,50.00),
(155,'gabigulay','gabi','2025-01-15',300.00,50.00),
(156,'Sinabawangisda','isda sinabawan','2025-01-15',1200.00,130.00),
(157,'Nilagangbaboy','Nilaga','2025-01-15',2000.00,150.00),
(158,'Bclexpress','Bicol Express','2025-01-15',500.00,100.00),
(159,'Dinuguan','Dinuguan','2025-01-15',600.00,100.00),
(160,'ck','fried chicken','2025-01-15',1200.00,100.00),
(161,'rice25klg','rice','2025-01-15',1350.00,20.00),
(162,'PorkSteak','Pork Steak','2025-01-16',1500.00,150.00),
(163,'Igado','igado','2025-01-16',600.00,100.00),
(164,'adobo01','Adobo','2025-01-16',900.00,100.00),
(165,'Nilagangbaboy','Nilaga','2025-01-16',2000.00,150.00),
(166,'Sinabawangisda','isda sinabawan','2025-01-16',1200.00,130.00),
(167,'ssfish','sweet and sour','2025-01-16',480.00,100.00),
(168,'Bclexpress','Bicol Express','2025-01-16',500.00,100.00),
(169,'rice25klg','rice','2025-01-16',1350.00,20.00),
(170,'Dinuguan','Dinuguan','2025-01-16',600.00,100.00),
(171,'pakbet','pakbet gulay','2025-01-16',240.00,50.00),
(172,'gabigulay','gabi','2025-01-16',300.00,50.00),
(173,'ck','fried chicken','2025-01-16',1200.00,100.00),
(174,'PorkSteak','Pork Steak','2025-01-17',1500.00,150.00),
(175,'Igado','igado','2025-01-17',600.00,100.00),
(176,'adobo01','Adobo','2025-01-17',900.00,100.00),
(177,'menudo1','Menudo','2025-01-17',480.00,100.00),
(178,'pakbet','pakbet gulay','2025-01-17',240.00,50.00),
(179,'Nilagangbaboy','Nilaga','2025-01-17',2000.00,150.00),
(180,'Sinabawangisda','isda sinabawan','2025-01-17',1200.00,130.00),
(181,'ssfish','sweet and sour','2025-01-17',480.00,100.00),
(182,'Bclexpress','Bicol Express','2025-01-17',500.00,100.00),
(183,'rice25klg','rice','2025-01-17',1350.00,20.00),
(184,'ck','fried chicken','2025-01-17',1200.00,100.00),
(185,'Dinuguan','Dinuguan','2025-01-17',600.00,100.00),
(186,'amp','ampalaya','2025-01-17',200.00,50.00),
(187,'PorkSteak','Pork Steak','2025-01-18',1500.00,150.00),
(188,'adobo01','Adobo','2025-01-18',900.00,100.00),
(189,'Bclexpress','Bicol Express','2025-01-18',500.00,100.00),
(190,'langka','langka gulay','2025-01-18',240.00,50.00),
(191,'rice25klg','rice','2025-01-18',1350.00,20.00),
(193,'PorkSteak','Pork Steak','2025-01-23',1500.00,150.00),
(194,'PorkSteak','Pork Steak','2025-01-24',1500.00,150.00),
(195,'Igado','igado','2025-01-31',600.00,100.00);

/*Table structure for table `expenses` */

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category` varchar(50) NOT NULL,
  `expense_amount` decimal(10,2) NOT NULL,
  `expense_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IsDeleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `expenses` */

insert  into `expenses`(`expense_id`,`expense_category`,`expense_amount`,`expense_date`,`description`,`last_updated`,`IsDeleted`) values 
(1,'Miscelleneous',100.00,'2024-12-07','N/A','2024-12-07 00:00:00',0),
(2,'Rent',13500.00,'2024-12-16','','2024-12-16 00:00:00',0),
(3,'Employee Salaries',21000.00,'2025-01-06','\r\n','2025-01-06 00:00:00',0),
(4,'Insurance',5550.00,'2025-01-06','philhealth','2025-01-14 00:00:00',0),
(5,'Insurance',4200.00,'2025-01-06','sss','2025-01-14 00:00:00',0);

/*Table structure for table `meals` */

DROP TABLE IF EXISTS `meals`;

CREATE TABLE `meals` (
  `MealID` int(11) NOT NULL AUTO_INCREMENT,
  `MealCode` varchar(50) NOT NULL,
  `MealName` varchar(100) NOT NULL,
  `TotalCost` decimal(10,2) DEFAULT NULL,
  `SellingPrice` decimal(10,2) NOT NULL,
  `DateAdded` date NOT NULL,
  `LastUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IsDeleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`MealID`),
  UNIQUE KEY `MealCode` (`MealCode`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `meals` */

insert  into `meals`(`MealID`,`MealCode`,`MealName`,`TotalCost`,`SellingPrice`,`DateAdded`,`LastUpdated`,`IsDeleted`) values 
(2,'PorkSteak','Pork Steak',1500.00,155.00,'2024-12-15','2025-01-24 11:44:54',0),
(3,'Igado','igado',600.00,100.00,'2024-12-15','2024-12-15 00:00:00',0),
(4,'adobo01','Adobo',900.00,100.00,'2024-12-15','2024-12-16 07:40:21',0),
(5,'pakbet','pakbet gulay',240.00,50.00,'2024-12-15','2024-12-15 00:00:00',0),
(6,'langka','langka gulay',240.00,50.00,'2024-12-15','2024-12-15 00:00:00',0),
(7,'Nilagangbaboy','Nilaga',2000.00,150.00,'2024-12-15','2024-12-15 00:00:00',0),
(8,'Sinabawangisda','isda sinabawan',1200.00,130.00,'2024-12-15','2024-12-15 00:00:00',0),
(9,'ffx3parts','fried fish',480.00,80.00,'2024-12-16','2024-12-16 07:35:59',0),
(10,'ssfish','sweet and sour',480.00,100.00,'2024-12-16','2024-12-16 00:00:00',0),
(11,'gabigulay','gabi',300.00,50.00,'2024-12-16','2024-12-16 00:00:00',0),
(12,'Bclexpress','Bicol Express',500.00,100.00,'2024-12-16','2024-12-16 00:00:00',0),
(13,'rice25klg','rice',1350.00,20.00,'2024-12-16','2024-12-16 00:00:00',0),
(14,'menudo1','Menudo',480.00,100.00,'2024-12-16','2024-12-16 00:00:00',0),
(15,'ck','fried chicken',1200.00,100.00,'2024-12-19','2024-12-19 00:00:00',0),
(16,'amp','ampalaya',200.00,50.00,'2025-01-01','2025-01-01 00:00:00',0),
(17,'Dinuguan','Dinuguan',600.00,100.00,'2025-01-14','2025-01-14 00:00:00',0);

/*Table structure for table `product_stock_records` */

DROP TABLE IF EXISTS `product_stock_records`;

CREATE TABLE `product_stock_records` (
  `StockID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductCode` varchar(50) NOT NULL,
  `StockAdded` int(11) DEFAULT 0,
  `ExpiryDate` date DEFAULT NULL,
  `StockRemoved` int(11) DEFAULT 0,
  `DateAdded` date DEFAULT NULL,
  PRIMARY KEY (`StockID`),
  KEY `ProductCode` (`ProductCode`),
  CONSTRAINT `product_stock_records_ibfk_1` FOREIGN KEY (`ProductCode`) REFERENCES `products` (`ProductCode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product_stock_records` */

insert  into `product_stock_records`(`StockID`,`ProductCode`,`StockAdded`,`ExpiryDate`,`StockRemoved`,`DateAdded`) values 
(59,'Bottledsprite',48,'2030-01-10',0,'2025-01-10'),
(60,'GlassSprite',72,'2030-01-10',0,'2025-01-10'),
(65,'cupcakes1',60,'2026-12-12',0,'2025-01-12'),
(66,'candies2x5',200,'2029-01-12',0,'2025-01-12'),
(67,'Biscuitsassrtd',50,'2029-01-12',0,'2025-01-12'),
(68,'RoyalMismo',72,'2029-01-12',0,'2025-01-12'),
(75,'Bottledsprite',72,'2029-01-13',0,'2025-01-13'),
(76,'GlassSprite',72,'2029-01-13',0,'2025-01-13'),
(77,'cupcakes1',50,'2029-01-13',0,'2025-01-13'),
(78,'Biscuitsassrtd',50,'2029-01-13',0,'2025-01-13'),
(84,'candies2x5',280,'2029-01-16',0,'2025-01-16'),
(87,'coffeetwin',60,'2029-01-17',0,'2025-01-17'),
(94,'cupcakes1',30,'2029-01-17',0,'2025-01-17'),
(95,'Biscuitsassrtd',30,'2029-01-17',0,'2025-01-17'),
(96,'RoyalMismo',24,'2030-01-17',0,'2025-01-17');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductCode` varchar(50) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `CostPrice` decimal(10,2) NOT NULL,
  `Stocks` int(11) DEFAULT NULL,
  `DateAdded` date DEFAULT curdate(),
  `StockLevel` int(11) DEFAULT 0,
  `LastUpdated` date DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `Category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductCode` (`ProductCode`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `products` */

insert  into `products`(`ProductID`,`ProductCode`,`ProductName`,`UnitPrice`,`CostPrice`,`Stocks`,`DateAdded`,`StockLevel`,`LastUpdated`,`IsDeleted`,`Category`) values 
(23,'Bottledsprite','BotSprite',40.00,25.00,22,'2025-01-10',0,'2025-01-10',0,'Beverage'),
(24,'GlassSprite','Gsprite',25.00,15.00,48,'2025-01-10',0,'2025-01-10',0,'Beverage'),
(25,'cupcakes1','cupcake1',15.00,10.00,41,'2025-01-12',0,'2025-01-16',0,'Snacks'),
(26,'candies2x5','candies',3.00,2.00,132,'2025-01-12',0,'2025-01-12',0,'Snacks'),
(27,'Biscuitsassrtd','biscuitassrtd',15.00,8.00,26,'2025-01-12',0,'2025-01-12',0,'Snacks'),
(28,'RoyalMismo','RoyalM',40.00,22.00,30,'2025-01-12',0,'2025-01-12',0,'Beverage'),
(29,'coffeetwin','coffee',25.00,8.00,16,'2025-01-17',0,'2025-01-17',0,'Beverage');

/*Table structure for table `saleitems` */

DROP TABLE IF EXISTS `saleitems`;

CREATE TABLE `saleitems` (
  `SaleItemID` int(11) NOT NULL AUTO_INCREMENT,
  `SaleID` int(11) DEFAULT NULL,
  `ItemCode` varchar(50) DEFAULT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  `ItemType` varchar(20) NOT NULL,
  `ItemCost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`SaleItemID`),
  KEY `SaleID` (`SaleID`),
  CONSTRAINT `saleitems_ibfk_1` FOREIGN KEY (`SaleID`) REFERENCES `sales` (`SaleID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saleitems` */

insert  into `saleitems`(`SaleItemID`,`SaleID`,`ItemCode`,`ItemName`,`Quantity`,`UnitPrice`,`TotalPrice`,`ItemType`,`ItemCost`) values 
(269,45,'mineral350ml','mineral',42,20.00,840.00,'Product',9),
(270,45,'mineral500ml','mineral2',56,30.00,1680.00,'Product',12),
(271,45,'jfBIG','junk food',22,30.00,660.00,'Product',19),
(272,45,'JUNKFBIG','JUNKFOOD',37,50.00,1850.00,'Product',37),
(273,45,'COKEMISMO','COKE1',46,40.00,1840.00,'Product',20),
(274,45,'cupnoodlesassrtd','cupnoodles',62,50.00,3100.00,'Product',23),
(275,45,'cokeinabottle','coke2',43,20.00,860.00,'Product',10),
(276,45,'GlassSprite','Gsprite',12,25.00,300.00,'Product',15),
(277,45,'Bottledsprite','BotSprite',27,40.00,1080.00,'Product',25),
(278,45,'cupcakes1','cupcake1',21,15.00,315.00,'Product',10),
(279,45,'candies2x5','candies',60,3.00,180.00,'Product',2),
(280,45,'Biscuitsassrtd','biscuitassrtd',26,15.00,390.00,'Product',8),
(281,45,'RoyalMismo','RoyalM',17,40.00,680.00,'Product',22),
(282,46,'PorkSteak','Pork Steak',23,100.00,2300.00,'Meal',1500),
(283,46,'Igado','igado',21,100.00,2100.00,'Meal',600),
(284,46,'adobo01','Adobo',31,100.00,3100.00,'Meal',900),
(285,46,'langka','langka gulay',15,50.00,750.00,'Meal',240),
(286,46,'Nilagangbaboy','Nilaga',30,150.00,4500.00,'Meal',2000),
(287,46,'Sinabawangisda','isda sinabawan',25,130.00,3250.00,'Meal',1200),
(288,46,'ssfish','sweet and sour',18,100.00,1800.00,'Meal',480),
(289,46,'gabigulay','gabi',15,50.00,750.00,'Meal',300),
(290,46,'Bclexpress','Bicol Express',39,100.00,3900.00,'Meal',500),
(291,46,'ck','fried chicken',47,100.00,4700.00,'Meal',1200),
(292,46,'rice25klg','rice',100,20.00,2000.00,'Meal',1350),
(293,46,'rice25klg','rice',100,20.00,2000.00,'Meal',1350),
(294,47,'PorkSteak','Pork Steak',22,100.00,2200.00,'Meal',1500),
(295,47,'Igado','igado',17,100.00,1700.00,'Meal',600),
(296,47,'adobo01','Adobo',29,100.00,2900.00,'Meal',900),
(297,47,'PorkSteak','Pork Steak',17,100.00,1700.00,'Meal',1500),
(298,47,'pakbet','pakbet gulay',15,50.00,750.00,'Meal',240),
(299,47,'Nilagangbaboy','Nilaga',23,150.00,3450.00,'Meal',2000),
(300,47,'Sinabawangisda','isda sinabawan',28,130.00,3640.00,'Meal',1200),
(301,47,'ssfish','sweet and sour',12,100.00,1200.00,'Meal',480),
(302,47,'Bclexpress','Bicol Express',32,100.00,3200.00,'Meal',500),
(303,47,'menudo1','Menudo',11,100.00,1100.00,'Meal',480),
(304,47,'ck','fried chicken',36,100.00,3600.00,'Meal',1200),
(305,47,'amp','ampalaya',16,50.00,800.00,'Meal',200),
(306,47,'Dinuguan','Dinuguan',27,100.00,2700.00,'Meal',600),
(307,47,'rice25klg','rice',100,20.00,2000.00,'Meal',1350),
(308,48,'mineral350ml','mineral',30,20.00,600.00,'Product',9),
(309,48,'mineral500ml','mineral2',20,30.00,600.00,'Product',12),
(310,48,'jfBIG','junk food',15,30.00,450.00,'Product',19),
(311,48,'JUNKFBIG','JUNKFOOD',8,50.00,400.00,'Product',37),
(312,48,'COKEMISMO','COKE1',23,40.00,920.00,'Product',20),
(313,48,'cupnoodlesassrtd','cupnoodles',63,50.00,3150.00,'Product',23),
(314,48,'cokeinabottle','coke2',29,20.00,580.00,'Product',10),
(315,48,'Bottledsprite','BotSprite',5,40.00,200.00,'Product',25),
(316,48,'GlassSprite','Gsprite',11,25.00,275.00,'Product',15),
(317,48,'cupcakes1','cupcake1',18,15.00,270.00,'Product',10),
(318,48,'candies2x5','candies',36,3.00,108.00,'Product',2),
(319,48,'Biscuitsassrtd','biscuitassrtd',10,15.00,150.00,'Product',8),
(320,48,'RoyalMismo','RoyalM',9,40.00,360.00,'Product',22),
(321,49,'PorkSteak','Pork Steak',24,100.00,2400.00,'Meal',1500),
(322,49,'Igado','igado',22,100.00,2200.00,'Meal',600),
(323,49,'pakbet','pakbet gulay',15,50.00,750.00,'Meal',240),
(324,49,'langka','langka gulay',15,50.00,750.00,'Meal',240),
(325,49,'Nilagangbaboy','Nilaga',26,150.00,3900.00,'Meal',2000),
(326,49,'Sinabawangisda','isda sinabawan',29,130.00,3770.00,'Meal',1200),
(327,49,'gabigulay','gabi',15,50.00,750.00,'Meal',300),
(328,49,'Bclexpress','Bicol Express',24,100.00,2400.00,'Meal',500),
(329,49,'ck','fried chicken',32,100.00,3200.00,'Meal',1200),
(330,49,'Dinuguan','Dinuguan',30,100.00,3000.00,'Meal',600),
(331,49,'rice25klg','rice',100,20.00,2000.00,'Meal',1350),
(332,50,'mineral350ml','mineral',68,20.00,1360.00,'Product',9),
(333,50,'mineral500ml','mineral2',42,30.00,1260.00,'Product',12),
(334,50,'jfBIG','junk food',12,30.00,360.00,'Product',19),
(335,50,'JUNKFBIG','JUNKFOOD',16,50.00,800.00,'Product',37),
(336,50,'COKEMISMO','COKE1',21,40.00,840.00,'Product',20),
(337,50,'cupnoodlesassrtd','cupnoodles',41,50.00,2050.00,'Product',23),
(338,50,'cokeinabottle','coke2',26,20.00,520.00,'Product',10),
(339,50,'Bottledsprite','BotSprite',9,40.00,360.00,'Product',25),
(340,50,'GlassSprite','Gsprite',11,25.00,275.00,'Product',15),
(341,50,'cupcakes1','cupcake1',10,15.00,150.00,'Product',10),
(342,50,'candies2x5','candies',36,3.00,108.00,'Product',2),
(343,50,'Biscuitsassrtd','biscuitassrtd',11,15.00,165.00,'Product',8),
(344,50,'RoyalMismo','RoyalM',9,40.00,360.00,'Product',22),
(345,51,'PorkSteak','Pork Steak',28,100.00,2800.00,'Meal',1500),
(346,51,'Igado','igado',16,100.00,1600.00,'Meal',600),
(347,51,'adobo01','Adobo',22,100.00,2200.00,'Meal',900),
(348,51,'pakbet','pakbet gulay',15,50.00,750.00,'Meal',240),
(349,51,'Nilagangbaboy','Nilaga',29,150.00,4350.00,'Meal',2000),
(350,51,'Sinabawangisda','isda sinabawan',30,130.00,3900.00,'Meal',1200),
(351,51,'ssfish','sweet and sour',9,100.00,900.00,'Meal',480),
(352,51,'gabigulay','gabi',15,50.00,750.00,'Meal',300),
(353,51,'Bclexpress','Bicol Express',26,100.00,2600.00,'Meal',500),
(354,51,'ck','fried chicken',33,100.00,3300.00,'Meal',1200),
(355,51,'Dinuguan','Dinuguan',25,100.00,2500.00,'Meal',600),
(356,51,'rice25klg','rice',100,20.00,2000.00,'Meal',1350),
(357,52,'mineral350ml','mineral',32,20.00,640.00,'Product',9),
(358,52,'mineral500ml','mineral2',36,30.00,1080.00,'Product',12),
(359,52,'jfBIG','junk food',11,30.00,330.00,'Product',19),
(360,52,'JUNKFBIG','JUNKFOOD',9,50.00,450.00,'Product',37),
(361,52,'COKEMISMO','COKE1',36,40.00,1440.00,'Product',20),
(362,52,'cupnoodlesassrtd','cupnoodles',43,50.00,2150.00,'Product',23),
(363,52,'cokeinabottle','coke2',22,20.00,440.00,'Product',10),
(364,52,'Bottledsprite','BotSprite',17,40.00,680.00,'Product',25),
(365,52,'GlassSprite','Gsprite',24,25.00,600.00,'Product',15),
(366,52,'cupcakes1','cupcake1',11,15.00,165.00,'Product',10),
(367,52,'candies2x5','candies',63,3.00,189.00,'Product',2),
(368,52,'Biscuitsassrtd','biscuitassrtd',20,15.00,300.00,'Product',8),
(369,52,'RoyalMismo','RoyalM',10,40.00,400.00,'Product',22),
(370,53,'PorkSteak','Pork Steak',30,100.00,3000.00,'Meal',1500),
(371,53,'Igado','igado',25,100.00,2500.00,'Meal',600),
(372,53,'adobo01','Adobo',33,100.00,3300.00,'Meal',900),
(373,53,'pakbet','pakbet gulay',15,50.00,750.00,'Meal',240),
(374,53,'Nilagangbaboy','Nilaga',30,150.00,4500.00,'Meal',2000),
(375,53,'Sinabawangisda','isda sinabawan',28,130.00,3640.00,'Meal',1200),
(376,53,'ssfish','sweet and sour',12,100.00,1200.00,'Meal',480),
(377,53,'Bclexpress','Bicol Express',38,100.00,3800.00,'Meal',500),
(378,53,'menudo1','Menudo',22,100.00,2200.00,'Meal',480),
(379,53,'ck','fried chicken',40,100.00,4000.00,'Meal',1200),
(380,53,'amp','ampalaya',15,50.00,750.00,'Meal',200),
(381,53,'Dinuguan','Dinuguan',30,100.00,3000.00,'Meal',600),
(382,53,'rice25klg','rice',100,20.00,2000.00,'Meal',1350),
(383,54,'mineral350ml','mineral',34,20.00,680.00,'Product',9),
(384,54,'mineral500ml','mineral2',30,30.00,900.00,'Product',12),
(385,54,'jfBIG','junk food',21,30.00,630.00,'Product',19),
(386,54,'JUNKFBIG','JUNKFOOD',28,50.00,1400.00,'Product',37),
(387,54,'COKEMISMO','COKE1',34,40.00,1360.00,'Product',20),
(388,54,'cupnoodlesassrtd','cupnoodles',49,50.00,2450.00,'Product',23),
(389,54,'cokeinabottle','coke2',47,20.00,940.00,'Product',10),
(390,54,'Bottledsprite','BotSprite',19,40.00,760.00,'Product',25),
(391,54,'GlassSprite','Gsprite',12,25.00,300.00,'Product',15),
(392,54,'cupcakes1','cupcake1',16,15.00,240.00,'Product',10),
(393,54,'candies2x5','candies',93,3.00,279.00,'Product',2),
(394,54,'Biscuitsassrtd','biscuitassrtd',15,15.00,225.00,'Product',8),
(395,54,'RoyalMismo','RoyalM',9,40.00,360.00,'Product',22),
(396,54,'coffeetwin','coffee',44,25.00,1100.00,'Product',8),
(397,55,'PorkSteak','Pork Steak',22,150.00,3300.00,'Meal',1500),
(398,55,'adobo01','Adobo',32,100.00,3200.00,'Meal',900),
(399,55,'langka','langka gulay',15,50.00,750.00,'Meal',240),
(400,55,'Bclexpress','Bicol Express',36,100.00,3600.00,'Meal',500),
(401,56,'TthBrsh','Tooth Brush',1,50.00,50.00,'Product',30),
(402,57,'rice25klg','rice',1,20.00,20.00,'Meal',1350),
(403,58,'TthBrsh','Tooth Brush',1,50.00,50.00,'Product',30),
(404,59,'mineral 350ml','Mineral 1',2,20.00,40.00,'Product',450),
(405,60,'PorkSteak','Pork Steak',1,150.00,150.00,'Meal',1500),
(406,61,'Biscuitsassrtd','biscuitassrtd',1,15.00,15.00,'Product',8),
(407,62,'Bottledsprite','BotSprite',1,40.00,40.00,'Product',25),
(408,62,'Bottledsprite','BotSprite',1,40.00,40.00,'Product',25),
(409,63,'JUNKFBIG','JUNKFOOD',1,50.00,50.00,'Product',37),
(410,64,'PorkSteak','Pork Steak',1,150.00,150.00,'Meal',1500),
(411,65,'Igado','igado',1,100.00,100.00,'Meal',600),
(412,66,'Biscuitsassrtd','biscuitassrtd',1,15.00,15.00,'Product',8),
(413,67,'Biscuitsassrtd','biscuitassrtd',4,15.00,60.00,'Product',8);

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `SaleID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `SaleType` varchar(20) NOT NULL,
  PRIMARY KEY (`SaleID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `sales` */

insert  into `sales`(`SaleID`,`Date`,`TotalAmount`,`SaleType`) values 
(45,'2025-01-13',13775.00,'Product'),
(46,'2025-01-13',31150.00,'Meal'),
(47,'2025-01-14',30940.00,'Meal'),
(48,'2025-01-14',8063.00,'Product'),
(49,'2025-01-15',25120.00,'Meal'),
(50,'2025-01-15',8608.00,'Product'),
(51,'2025-01-16',27650.00,'Meal'),
(52,'2025-01-16',8864.00,'Product'),
(53,'2025-01-17',34640.00,'Meal'),
(54,'2025-01-17',11624.00,'Product'),
(55,'2025-01-18',10850.00,'Meal'),
(56,'2025-01-18',50.00,'Product'),
(57,'2025-01-18',20.00,'Meal'),
(58,'2025-01-18',50.00,'Product'),
(59,'2025-01-18',40.00,'Product'),
(60,'2025-01-23',150.00,'Meal'),
(61,'2025-01-23',15.00,'Product'),
(62,'2025-01-23',80.00,'Product'),
(63,'2025-01-24',50.00,'Product'),
(64,'2025-01-24',150.00,'Meal'),
(65,'2025-01-31',100.00,'Meal'),
(66,'2025-01-31',15.00,'Product'),
(67,'2025-01-31',60.00,'Product');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
