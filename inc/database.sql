/*
Navicat MySQL Data Transfer

Source Server         : rootserver
Source Server Version : 50173
Source Host           : bund-des-schatten.de:3306
Source Database       : ni579393_1sql1

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-02-18 15:06:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `w_members`
-- ----------------------------
DROP TABLE IF EXISTS `w_members`;
CREATE TABLE `w_members` (
  `member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL DEFAULT '',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `signup_date` datetime NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of w_members
-- ----------------------------

-- ----------------------------
-- Table structure for `w_news`
-- ----------------------------
DROP TABLE IF EXISTS `w_news`;
CREATE TABLE `w_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(48) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cat` text NOT NULL,
  `news` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of w_news
-- ----------------------------

-- ----------------------------
-- Table structure for `w_scav`
-- ----------------------------
DROP TABLE IF EXISTS `w_scav`;
CREATE TABLE `w_scav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(48) NOT NULL,
  `charname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `klasse` varchar(100) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `punkte` varchar(1) NOT NULL,
  `beschreibung` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of w_scav
-- ----------------------------

-- ----------------------------
-- Table structure for `w_scav_chars`
-- ----------------------------
DROP TABLE IF EXISTS `w_scav_chars`;
CREATE TABLE `w_scav_chars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main` varchar(48) NOT NULL,
  `twinks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of w_scav_chars
-- ----------------------------

-- ----------------------------
-- Table structure for `w_scav_dkp`
-- ----------------------------
DROP TABLE IF EXISTS `w_scav_dkp`;
CREATE TABLE `w_scav_dkp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dkp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of w_scav_dkp
-- ----------------------------
