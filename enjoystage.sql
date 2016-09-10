/*
Navicat MySQL Data Transfer

Source Server         : local-mysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : enjoystage

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2016-09-10 10:48:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `alipay`
-- ----------------------------
DROP TABLE IF EXISTS `alipay`;
CREATE TABLE `alipay` (
  `aliuser` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `money` int(4) DEFAULT NULL,
  PRIMARY KEY (`aliuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alipay
-- ----------------------------
INSERT INTO `alipay` VALUES ('18829290139', '123456', '1000');
INSERT INTO `alipay` VALUES ('18829292377', '123456', '100');
INSERT INTO `alipay` VALUES ('18829292378', '123456', '3000');

-- ----------------------------
-- Table structure for `cardpay`
-- ----------------------------
DROP TABLE IF EXISTS `cardpay`;
CREATE TABLE `cardpay` (
  `cardID` varchar(19) NOT NULL,
  `identifyID` varchar(18) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`cardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cardpay
-- ----------------------------
INSERT INTO `cardpay` VALUES ('612098790001', '6105021995', '123456', '12345678901');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodID` int(16) NOT NULL AUTO_INCREMENT,
  `goodname` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `storagerate` int(4) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'coolpad', '3500.00', '200', null);
INSERT INTO `goods` VALUES ('2', 'iphone', '1000.00', '100', null);
INSERT INTO `goods` VALUES ('3', 'letv', '2000.00', '90', null);
INSERT INTO `goods` VALUES ('4', 'xiaomi', '1500.00', '2', null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderID` int(16) NOT NULL AUTO_INCREMENT,
  `userID` int(16) DEFAULT NULL,
  `goodID` int(16) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=10000003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('10000000', '1', '1');
INSERT INTO `orders` VALUES ('10000001', '1', '2');
INSERT INTO `orders` VALUES ('10000002', '2', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userID` int(16) NOT NULL AUTO_INCREMENT,
  `username` char(20) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'shiyue', '123456', '18829292377', '西安邮电大学', null);
INSERT INTO `users` VALUES ('2', 'tongyang', '123456', '18829292377', '西安邮电大学', null);
INSERT INTO `users` VALUES ('8', 'zhengbei', '123456', null, null, null);
INSERT INTO `users` VALUES ('9', 'tongzhe', '123456', '12345', '12345', '123@qq.com');
INSERT INTO `users` VALUES ('10', '赵盼盼', '111111', null, null, null);
