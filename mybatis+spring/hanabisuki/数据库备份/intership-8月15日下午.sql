/*
Navicat MySQL Data Transfer

Source Server         : 2
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : intership

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-08-15 15:32:00
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
) ENGINE=InnoDB AUTO_INCREMENT=1377 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1240', '不要乱删东西', '节奏大师', '2019-08-05 13:08:37', '2019-08-14 15:25:37', '1');
INSERT INTO `comment` VALUES ('1247', '&lt;script&gt;', '&lt;script&gt;', '2019-08-05 13:18:31', '2019-08-05 13:18:31', '1');
INSERT INTO `comment` VALUES ('1251', '无内鬼，再来点SQL注入', '\";SELECT * FORM USER;', '2019-08-05 13:35:21', '2019-08-05 13:39:35', '1');
INSERT INTO `comment` VALUES ('1252', '无内鬼，再再来点SQL注入', '&rsquo;or 1=1#', '2019-08-05 13:36:02', '2019-08-05 13:36:02', '1');
INSERT INTO `comment` VALUES ('1358', '&lt;td&gt;', '节奏大师', '2019-08-05 13:47:12', '2019-08-14 17:30:22', '4');
INSERT INTO `comment` VALUES ('1359', '&gt;&lt;script&gt;alert(2)&lt;/script&gt;', '', '2019-08-05 13:50:54', '2019-08-05 13:50:54', '4');
INSERT INTO `comment` VALUES ('1361', ' \' or 1=1', 'anything', '2019-08-05 13:54:52', '2019-08-05 13:54:52', '4');
INSERT INTO `comment` VALUES ('1362', 'test', 'test', '2019-08-05 14:11:20', '2019-08-05 14:11:20', '4');
INSERT INTO `comment` VALUES ('1363', '1', '1', '2019-08-05 14:15:29', '2019-08-05 14:15:29', '4');
INSERT INTO `comment` VALUES ('1364', '1&quot;', '1&quot;', '2019-08-05 14:15:48', '2019-08-05 14:16:22', '4');
INSERT INTO `comment` VALUES ('1365', '杰哥教你', '登dua郎', '2019-08-05 14:25:43', '2019-08-05 14:25:43', '1');
INSERT INTO `comment` VALUES ('1367', '我是五号的第一条评论', '这是第二测试组用户', '2019-08-07 14:29:22', '2019-08-07 14:29:22', '5');
INSERT INTO `comment` VALUES ('1368', 'smoke', 'everyday', '2019-08-09 09:42:51', '2019-08-09 09:42:51', '2');
INSERT INTO `comment` VALUES ('1369', '&aring;&aring;&aring;', '&aelig;&micro;&egrave;&macr;&aring;&shy;&ccedil;&not;&brvbar;&auml;&cedil;&sup2;', '2019-08-13 09:49:34', '2019-08-13 09:49:34', '1');
INSERT INTO `comment` VALUES ('1370', '无内鬼', '蛤点黄尸废青', '2019-08-13 09:52:48', '2019-08-15 11:09:24', '1');
INSERT INTO `comment` VALUES ('1372', '无内鬼', '讲点香港笑话', '2019-08-14 16:54:01', '2019-08-14 16:54:01', '1');
INSERT INTO `comment` VALUES ('1373', '无内鬼', '讲点香港笑话', '2019-08-14 16:54:23', '2019-08-14 16:54:23', '1');
INSERT INTO `comment` VALUES ('1374', '111', '讲点香港笑话', '2019-08-14 17:10:32', '2019-08-14 17:10:32', '1');
INSERT INTO `comment` VALUES ('1375', '有内鬼', '和内鬼交易', '2019-08-15 11:09:53', '2019-08-15 11:09:53', '1');
INSERT INTO `comment` VALUES ('1376', '无内鬼', '我就是内鬼', '2019-08-15 14:48:56', '2019-08-15 14:48:56', '2');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `spendTime` int(11) DEFAULT NULL,
  `result` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userId`),
  CONSTRAINT `log_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('22', '2019-08-15 11:34:53', '1', 'Select ', 'Comment', '16', 'success');
INSERT INTO `log` VALUES ('23', '2019-08-15 11:34:53', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('24', '2019-08-15 11:35:00', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('25', '2019-08-15 11:35:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('26', '2019-08-15 11:35:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('27', '2019-08-15 11:35:00', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('28', '2019-08-15 11:35:01', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('29', '2019-08-15 11:35:01', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('30', '2019-08-15 13:27:01', '666', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('31', '2019-08-15 13:27:01', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('32', '2019-08-15 13:27:01', '666', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('33', '2019-08-15 13:27:01', '666', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('34', '2019-08-15 13:27:02', '666', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('35', '2019-08-15 13:27:02', '666', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('36', '2019-08-15 13:27:07', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('37', '2019-08-15 13:27:07', '666', 'Update', 'User', '37', 'success');
INSERT INTO `log` VALUES ('38', '2019-08-15 13:27:20', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('39', '2019-08-15 13:27:20', '666', 'Update', 'User', '50', 'success');
INSERT INTO `log` VALUES ('40', '2019-08-15 13:27:22', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('41', '2019-08-15 13:27:22', '666', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('42', '2019-08-15 13:27:22', '666', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('43', '2019-08-15 13:35:52', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('44', '2019-08-15 13:35:52', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('45', '2019-08-15 13:35:52', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('46', '2019-08-15 13:35:52', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('47', '2019-08-15 13:35:57', '1', 'Select ', 'Comment', '6', 'success');
INSERT INTO `log` VALUES ('48', '2019-08-15 13:36:04', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('49', '2019-08-15 13:36:04', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('50', '2019-08-15 13:36:04', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('51', '2019-08-15 13:53:57', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('52', '2019-08-15 13:53:57', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('53', '2019-08-15 13:53:57', '1', 'Select ', 'Comment', '13', 'success');
INSERT INTO `log` VALUES ('54', '2019-08-15 13:53:57', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('55', '2019-08-15 14:31:51', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('56', '2019-08-15 14:31:51', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('57', '2019-08-15 14:31:51', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('58', '2019-08-15 14:31:51', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('59', '2019-08-15 14:33:02', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('60', '2019-08-15 14:33:02', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('61', '2019-08-15 14:33:02', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('62', '2019-08-15 14:33:02', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('63', '2019-08-15 14:33:54', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('64', '2019-08-15 14:33:54', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('65', '2019-08-15 14:33:54', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('66', '2019-08-15 14:33:57', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('67', '2019-08-15 14:33:57', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('68', '2019-08-15 14:33:57', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('69', '2019-08-15 14:33:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('70', '2019-08-15 14:33:58', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('71', '2019-08-15 14:33:58', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('72', '2019-08-15 14:33:58', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('73', '2019-08-15 14:33:58', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('74', '2019-08-15 14:33:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('75', '2019-08-15 14:33:58', '1', 'Select', 'Rights or Group', '6', 'success');
INSERT INTO `log` VALUES ('76', '2019-08-15 14:33:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('77', '2019-08-15 14:33:59', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('78', '2019-08-15 14:33:59', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('79', '2019-08-15 14:34:07', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('80', '2019-08-15 14:34:07', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('81', '2019-08-15 14:34:07', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('82', '2019-08-15 14:34:07', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('83', '2019-08-15 14:34:07', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('84', '2019-08-15 14:34:07', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('85', '2019-08-15 14:34:07', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('86', '2019-08-15 14:34:07', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('87', '2019-08-15 14:35:41', '1', 'Select', 'Rights or Group', '16', 'success');
INSERT INTO `log` VALUES ('88', '2019-08-15 14:35:41', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('89', '2019-08-15 14:35:41', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('90', '2019-08-15 14:35:41', '1', 'Select ', 'Comment', '18', 'success');
INSERT INTO `log` VALUES ('91', '2019-08-15 14:36:55', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('92', '2019-08-15 14:36:55', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('93', '2019-08-15 14:36:55', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('94', '2019-08-15 14:36:55', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('95', '2019-08-15 14:45:32', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('96', '2019-08-15 14:45:32', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('97', '2019-08-15 14:45:32', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('98', '2019-08-15 14:45:32', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('99', '2019-08-15 14:46:47', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('100', '2019-08-15 14:46:47', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('101', '2019-08-15 14:46:47', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('102', '2019-08-15 14:46:47', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('103', '2019-08-15 14:46:49', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('104', '2019-08-15 14:46:49', '1', 'Select ', 'Comment', '0', 'success');
INSERT INTO `log` VALUES ('105', '2019-08-15 14:46:49', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('106', '2019-08-15 14:48:24', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('107', '2019-08-15 14:48:24', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('108', '2019-08-15 14:48:24', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('109', '2019-08-15 14:48:26', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('110', '2019-08-15 14:48:26', '1', 'Select', 'Rights or Group', '12', 'success');
INSERT INTO `log` VALUES ('111', '2019-08-15 14:48:26', '1', 'Select ', 'Comment', '0', 'success');
INSERT INTO `log` VALUES ('112', '2019-08-15 14:48:26', '1', 'Delete', 'Comment', '57', 'success');
INSERT INTO `log` VALUES ('113', '2019-08-15 14:48:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('114', '2019-08-15 14:48:26', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('115', '2019-08-15 14:48:26', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('116', '2019-08-15 14:48:32', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('117', '2019-08-15 14:48:32', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('118', '2019-08-15 14:48:33', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('119', '2019-08-15 14:48:42', '2', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('120', '2019-08-15 14:48:42', '2', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('121', '2019-08-15 14:48:42', '2', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('122', '2019-08-15 14:48:42', '2', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('123', '2019-08-15 14:48:56', '2', 'Insert', 'Comment', '51', 'success');
INSERT INTO `log` VALUES ('124', '2019-08-15 14:48:56', '2', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('125', '2019-08-15 14:48:56', '2', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('126', '2019-08-15 14:48:56', '2', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('127', '2019-08-15 14:50:07', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('128', '2019-08-15 14:50:07', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('129', '2019-08-15 14:50:07', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('130', '2019-08-15 14:50:07', '1', 'Select ', 'Comment', '3', 'success');

-- ----------------------------
-- Table structure for rolerights
-- ----------------------------
DROP TABLE IF EXISTS `rolerights`;
CREATE TABLE `rolerights` (
  `roleName` char(3) NOT NULL,
  `rights` varchar(8) NOT NULL,
  PRIMARY KEY (`roleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolerights
-- ----------------------------
INSERT INTO `rolerights` VALUES ('AU', '11111111');
INSERT INTO `rolerights` VALUES ('BAN', '00000000');
INSERT INTO `rolerights` VALUES ('BU', '00011111');
INSERT INTO `rolerights` VALUES ('CU', '00000111');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(75) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `type` varchar(5) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `groupId` (`groupId`),
  KEY `type` (`type`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `usergroup` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`type`) REFERENCES `rolerights` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '渥世尼戈葛', 'eeafb716f93fa090d7716749a6eefa72', '1@test.com', '13900000019', '1', 'BU');
INSERT INTO `user` VALUES ('2', '铁憨憨', '9a440f1f071dad3043b6c8ba93bb761c', '2@test.com', '13900000002', '2', 'CU');
INSERT INTO `user` VALUES ('3', '史布世·芝辉·则易炬', 'ea8753722c0e8ecde195d6adb8ba7c0d', '3@test.com', '13900000003', '1', 'CU');
INSERT INTO `user` VALUES ('4', '带带大师兄', 'eeafb716f93fa090d7716749a6eefa72', 'xie@test.com', '13900000058', '1', 'CU');
INSERT INTO `user` VALUES ('5', 'test2', '54b41981bebd0b6c2a8553ee5c1e2f9b', '5@test.com', '13900000022', '2', 'BU');
INSERT INTO `user` VALUES ('666', 'admin', 'e8465345a7296214eb9e53baca4ee833', 'admin@admin.com', '13999999999', '3', 'AU');

-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) DEFAULT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergroup
-- ----------------------------
INSERT INTO `usergroup` VALUES ('1', '测试一组', 'NG');
INSERT INTO `usergroup` VALUES ('2', '测试二组', 'NG');
INSERT INTO `usergroup` VALUES ('3', '超级用户', 'SG');
