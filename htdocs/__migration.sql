-- 2 Oct, 2023 Migration
ALTER TABLE `Auth` ADD `sec_email` varchar(256) NULL;

DROP TABLE IF EXISTS `Auth`;
CREATE TABLE `Auth` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(10) NOT NULL,
  `blocked` int NOT NULL DEFAULT '1',
  `active` int NOT NULL DEFAULT '0',
  `sec_email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int NOT NULL,
  `bio` longtext NOT NULL,
  `avater` varchar(1024) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `dob` date NOT NULL,
  `instagram` varchar(1024) DEFAULT NULL,
  `twitter` varchar(1024) DEFAULT NULL,
  `facebook` varchar(1024) DEFAULT NULL,
  KEY `Id` (`Id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Auth` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Adminer 4.8.1 MySQL 8.1.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `Klinton_05_Authen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Klinton_05_Authen`;

CREATE TABLE `Auth` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(10) NOT NULL,
  `blocked` int NOT NULL DEFAULT '1',
  `active` int NOT NULL DEFAULT '0',
  `sec_email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `token` varchar(32) NOT NULL,
  `login_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(20) NOT NULL,
  `user_agent` varchar(256) NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `fingerprint` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `Auth` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `users` (
  `Id` int NOT NULL,
  `bio` longtext NOT NULL,
  `avatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `dob` date NOT NULL,
  `instagram` varchar(1024) DEFAULT NULL,
  `twitter` varchar(1024) DEFAULT NULL,
  `facebook` varchar(1024) DEFAULT NULL,
  KEY `Id` (`Id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Auth` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 2024-01-22 16:16:44

