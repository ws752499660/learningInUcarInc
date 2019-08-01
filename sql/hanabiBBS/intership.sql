/*
Navicat MySQL Data Transfer

Source Server         : 2
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : intership

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-07-31 15:22:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `editTime` datetime DEFAULT NULL,
  `commentUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commentUserId` (`commentUserId`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`commentUserId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('568', '游戏游艺设备', '节奏大师', '2019-07-31 11:23:53', '2019-07-31 11:23:53', '1');
INSERT INTO `comment` VALUES ('569', '无内鬼', '讲点香港笑话', '2019-07-31 13:13:43', '2019-07-31 13:13:43', '1');
INSERT INTO `comment` VALUES ('571', '777', '777', '2019-07-31 14:44:18', '2019-07-31 14:44:18', '1');
INSERT INTO `comment` VALUES ('572', 'zhenhaokan', 'duia', '2019-07-31 14:44:27', '2019-07-31 14:44:27', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(25) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '渥世尼戈葛', '123456', '1@test.com', '13900000001');
INSERT INTO `user` VALUES ('3', 'user3', '123456', '3@test.com', '13900000003');
