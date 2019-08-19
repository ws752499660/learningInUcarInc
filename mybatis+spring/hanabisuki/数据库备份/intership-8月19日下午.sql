/*
Navicat MySQL Data Transfer

Source Server         : 2
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : intership

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-08-19 15:29:02
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
) ENGINE=InnoDB AUTO_INCREMENT=1378 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
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
INSERT INTO `comment` VALUES ('1377', '游戏游艺设备', '再见~', '2019-08-16 17:01:46', '2019-08-16 17:01:46', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;

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
INSERT INTO `log` VALUES ('131', '2019-08-16 09:04:37', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('132', '2019-08-16 09:04:37', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('133', '2019-08-16 09:04:37', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('134', '2019-08-16 09:04:37', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('135', '2019-08-16 09:06:47', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('136', '2019-08-16 09:06:47', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('137', '2019-08-16 09:06:47', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('138', '2019-08-16 09:06:47', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('139', '2019-08-16 15:08:24', '1', 'Select', 'Rights or Group', '6', 'success');
INSERT INTO `log` VALUES ('140', '2019-08-16 15:08:24', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('141', '2019-08-16 15:08:24', '1', 'Select ', 'Comment', '6', 'success');
INSERT INTO `log` VALUES ('142', '2019-08-16 15:08:24', '1', 'Select ', 'Comment', '10', 'success');
INSERT INTO `log` VALUES ('143', '2019-08-16 15:08:25', '1', 'Select', 'Rights or Group', '17', 'success');
INSERT INTO `log` VALUES ('144', '2019-08-16 15:08:25', '1', 'Select', 'User', '9', 'success');
INSERT INTO `log` VALUES ('145', '2019-08-16 15:08:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('146', '2019-08-16 15:08:26', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('147', '2019-08-16 15:08:26', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('148', '2019-08-16 15:08:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('149', '2019-08-16 15:08:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('150', '2019-08-16 15:08:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('151', '2019-08-16 15:09:40', '1', 'Select', 'Rights or Group', '13', 'success');
INSERT INTO `log` VALUES ('152', '2019-08-16 15:09:40', '1', 'Select', 'Rights or Group', '15', 'success');
INSERT INTO `log` VALUES ('153', '2019-08-16 15:09:40', '1', 'Select ', 'Comment', '20', 'success');
INSERT INTO `log` VALUES ('154', '2019-08-16 15:09:41', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('155', '2019-08-16 15:09:42', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('156', '2019-08-16 15:09:42', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('157', '2019-08-16 15:09:42', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('158', '2019-08-16 15:09:42', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('159', '2019-08-16 15:09:42', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('160', '2019-08-16 15:09:42', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('161', '2019-08-16 15:09:42', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('162', '2019-08-16 15:09:42', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('163', '2019-08-16 15:10:21', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('164', '2019-08-16 15:10:21', '1', 'Select', 'Rights or Group', '13', 'success');
INSERT INTO `log` VALUES ('165', '2019-08-16 15:10:21', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('166', '2019-08-16 15:10:21', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('167', '2019-08-16 15:10:25', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('168', '2019-08-16 15:10:25', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('169', '2019-08-16 15:10:25', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('170', '2019-08-16 15:10:27', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('171', '2019-08-16 15:10:27', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('172', '2019-08-16 15:10:27', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('173', '2019-08-16 15:10:28', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('174', '2019-08-16 15:10:28', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('175', '2019-08-16 15:10:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('176', '2019-08-16 15:10:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('177', '2019-08-16 15:10:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('178', '2019-08-16 15:10:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('179', '2019-08-16 15:10:28', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('180', '2019-08-16 15:10:28', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('181', '2019-08-16 15:10:52', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('182', '2019-08-16 15:10:52', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('183', '2019-08-16 15:10:52', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('184', '2019-08-16 15:10:52', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('185', '2019-08-16 15:10:54', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('186', '2019-08-16 15:10:54', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('187', '2019-08-16 15:10:54', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('188', '2019-08-16 15:10:54', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('189', '2019-08-16 15:10:54', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('190', '2019-08-16 15:10:54', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('191', '2019-08-16 15:10:54', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('192', '2019-08-16 15:10:54', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('193', '2019-08-16 15:11:59', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('194', '2019-08-16 15:11:59', '1', 'Select', 'Rights or Group', '23', 'success');
INSERT INTO `log` VALUES ('195', '2019-08-16 15:11:59', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('196', '2019-08-16 15:11:59', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('197', '2019-08-16 15:12:02', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('198', '2019-08-16 15:12:02', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('199', '2019-08-16 15:12:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('200', '2019-08-16 15:12:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('201', '2019-08-16 15:12:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('202', '2019-08-16 15:12:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('203', '2019-08-16 15:12:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('204', '2019-08-16 15:12:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('205', '2019-08-16 15:13:21', '1', 'Select', 'Rights or Group', '25', 'success');
INSERT INTO `log` VALUES ('206', '2019-08-16 15:13:21', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('207', '2019-08-16 15:13:21', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('208', '2019-08-16 15:13:21', '1', 'Select ', 'Comment', '24', 'success');
INSERT INTO `log` VALUES ('209', '2019-08-16 15:13:24', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('210', '2019-08-16 15:13:24', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('211', '2019-08-16 15:13:24', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('212', '2019-08-16 15:13:24', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('213', '2019-08-16 15:13:24', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('214', '2019-08-16 15:13:24', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('215', '2019-08-16 15:13:24', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('216', '2019-08-16 15:13:24', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('217', '2019-08-16 15:13:48', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('218', '2019-08-16 15:13:48', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('219', '2019-08-16 15:13:49', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('220', '2019-08-16 15:13:49', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('221', '2019-08-16 15:13:49', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('222', '2019-08-16 15:13:49', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('223', '2019-08-16 15:13:49', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('224', '2019-08-16 15:13:49', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('225', '2019-08-16 15:13:49', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('226', '2019-08-16 15:13:49', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('227', '2019-08-16 15:15:53', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('228', '2019-08-16 15:15:53', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('229', '2019-08-16 15:15:53', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('230', '2019-08-16 15:15:53', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('231', '2019-08-16 15:15:55', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('232', '2019-08-16 15:15:55', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('233', '2019-08-16 15:15:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('234', '2019-08-16 15:15:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('235', '2019-08-16 15:15:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('236', '2019-08-16 15:15:55', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('237', '2019-08-16 15:15:55', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('238', '2019-08-16 15:15:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('239', '2019-08-16 15:15:56', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('240', '2019-08-16 15:15:56', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('241', '2019-08-16 17:00:58', '1', 'Select', 'Rights or Group', '17', 'success');
INSERT INTO `log` VALUES ('242', '2019-08-16 17:00:59', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('243', '2019-08-16 17:00:59', '1', 'Select ', 'Comment', '23', 'success');
INSERT INTO `log` VALUES ('244', '2019-08-16 17:00:59', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('245', '2019-08-16 17:01:40', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('246', '2019-08-16 17:01:40', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('247', '2019-08-16 17:01:40', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('248', '2019-08-16 17:01:45', '1', 'Insert', 'Comment', '116', 'success');
INSERT INTO `log` VALUES ('249', '2019-08-16 17:01:46', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('250', '2019-08-16 17:01:46', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('251', '2019-08-16 17:01:46', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('252', '2019-08-16 17:01:55', '1', 'Select', 'Rights or Group', '7', 'success');
INSERT INTO `log` VALUES ('253', '2019-08-16 17:01:55', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('254', '2019-08-16 17:01:55', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('255', '2019-08-16 17:01:57', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('256', '2019-08-16 17:01:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('257', '2019-08-16 17:01:57', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('258', '2019-08-16 17:01:57', '1', 'Delete', 'Comment', '27', 'success');
INSERT INTO `log` VALUES ('259', '2019-08-16 17:01:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('260', '2019-08-16 17:01:57', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('261', '2019-08-16 17:01:57', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('262', '2019-08-16 17:23:34', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('263', '2019-08-16 17:23:34', '1', 'Select ', 'Comment', '0', 'success');
INSERT INTO `log` VALUES ('264', '2019-08-16 17:23:34', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('265', '2019-08-19 09:43:24', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('266', '2019-08-19 09:43:24', '1', 'Select', 'Rights or Group', '20', 'success');
INSERT INTO `log` VALUES ('267', '2019-08-19 09:43:24', '1', 'Select ', 'Comment', '17', 'success');
INSERT INTO `log` VALUES ('268', '2019-08-19 09:43:24', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('269', '2019-08-19 09:45:18', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('270', '2019-08-19 09:45:18', '1', 'Select', 'User', '14', 'success');
INSERT INTO `log` VALUES ('271', '2019-08-19 09:45:18', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('272', '2019-08-19 09:45:18', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('273', '2019-08-19 09:45:18', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('274', '2019-08-19 09:45:18', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('275', '2019-08-19 09:45:18', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('276', '2019-08-19 09:45:18', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('277', '2019-08-19 09:45:21', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('278', '2019-08-19 09:45:21', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('279', '2019-08-19 10:10:36', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('280', '2019-08-19 10:10:36', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('281', '2019-08-19 10:10:36', '1', 'Select ', 'Comment', '0', 'success');
INSERT INTO `log` VALUES ('282', '2019-08-19 10:10:36', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('283', '2019-08-19 10:10:38', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('284', '2019-08-19 10:10:38', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('285', '2019-08-19 10:10:38', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('286', '2019-08-19 10:10:38', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('287', '2019-08-19 10:10:38', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('288', '2019-08-19 10:10:38', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('289', '2019-08-19 10:10:38', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('290', '2019-08-19 10:10:38', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('291', '2019-08-19 10:10:39', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('292', '2019-08-19 10:10:39', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('293', '2019-08-19 10:10:54', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('294', '2019-08-19 10:10:54', '1', 'Select', 'Rights or Group', '80', 'success');
INSERT INTO `log` VALUES ('295', '2019-08-19 10:10:54', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('296', '2019-08-19 10:10:54', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('297', '2019-08-19 10:10:56', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('298', '2019-08-19 10:10:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('299', '2019-08-19 10:10:57', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('300', '2019-08-19 10:10:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('301', '2019-08-19 10:10:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('302', '2019-08-19 10:10:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('303', '2019-08-19 10:10:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('304', '2019-08-19 10:10:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('305', '2019-08-19 10:10:58', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('306', '2019-08-19 10:10:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('307', '2019-08-19 10:25:52', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('308', '2019-08-19 10:25:52', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('309', '2019-08-19 10:25:52', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('310', '2019-08-19 10:25:52', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('311', '2019-08-19 10:25:53', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('312', '2019-08-19 10:25:53', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('313', '2019-08-19 10:25:53', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('314', '2019-08-19 10:25:53', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('315', '2019-08-19 10:25:53', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('316', '2019-08-19 10:25:53', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('317', '2019-08-19 10:25:53', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('318', '2019-08-19 10:25:53', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('319', '2019-08-19 10:25:55', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('320', '2019-08-19 10:25:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('321', '2019-08-19 10:26:04', '1', 'Update', 'User', '86', 'success');
INSERT INTO `log` VALUES ('322', '2019-08-19 10:26:04', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('323', '2019-08-19 10:26:05', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('324', '2019-08-19 10:26:05', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('325', '2019-08-19 10:26:05', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('326', '2019-08-19 10:26:05', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('327', '2019-08-19 10:26:05', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('328', '2019-08-19 10:26:05', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('329', '2019-08-19 10:26:05', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('330', '2019-08-19 10:26:55', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('331', '2019-08-19 10:26:55', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('332', '2019-08-19 10:26:55', '1', 'Select ', 'Comment', '6', 'success');
INSERT INTO `log` VALUES ('333', '2019-08-19 10:26:55', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('334', '2019-08-19 10:26:57', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('335', '2019-08-19 10:26:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('336', '2019-08-19 10:26:57', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('337', '2019-08-19 10:26:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('338', '2019-08-19 10:26:57', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('339', '2019-08-19 10:26:57', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('340', '2019-08-19 10:26:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('341', '2019-08-19 10:26:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('342', '2019-08-19 10:26:58', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('343', '2019-08-19 10:26:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('344', '2019-08-19 10:27:02', '1', 'Update', 'User', '52', 'success');
INSERT INTO `log` VALUES ('345', '2019-08-19 10:27:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('346', '2019-08-19 10:27:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('347', '2019-08-19 10:27:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('348', '2019-08-19 10:27:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('349', '2019-08-19 10:27:02', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('350', '2019-08-19 10:27:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('351', '2019-08-19 10:27:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('352', '2019-08-19 10:27:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('353', '2019-08-19 10:28:42', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('354', '2019-08-19 10:28:42', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('355', '2019-08-19 10:28:42', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('356', '2019-08-19 10:28:42', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('357', '2019-08-19 10:28:43', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('358', '2019-08-19 10:28:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('359', '2019-08-19 10:28:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('360', '2019-08-19 10:28:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('361', '2019-08-19 10:28:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('362', '2019-08-19 10:28:43', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('363', '2019-08-19 10:28:43', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('364', '2019-08-19 10:28:43', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('365', '2019-08-19 10:28:44', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('366', '2019-08-19 10:28:44', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('367', '2019-08-19 10:29:05', '1', 'Update', 'User', '165', 'success');
INSERT INTO `log` VALUES ('368', '2019-08-19 10:29:10', '1', 'Select', 'Rights or Group', '17', 'success');
INSERT INTO `log` VALUES ('369', '2019-08-19 10:29:10', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('370', '2019-08-19 10:29:10', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('371', '2019-08-19 10:29:10', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('372', '2019-08-19 10:29:10', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('373', '2019-08-19 10:29:10', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('374', '2019-08-19 10:29:10', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('375', '2019-08-19 10:29:10', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('376', '2019-08-19 10:39:14', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('377', '2019-08-19 10:39:14', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('378', '2019-08-19 10:39:14', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('379', '2019-08-19 10:39:14', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('380', '2019-08-19 10:39:16', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('381', '2019-08-19 10:39:16', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('382', '2019-08-19 10:39:16', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('383', '2019-08-19 10:39:16', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('384', '2019-08-19 10:39:16', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('385', '2019-08-19 10:39:16', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('386', '2019-08-19 10:39:16', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('387', '2019-08-19 10:39:16', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('388', '2019-08-19 10:39:18', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('389', '2019-08-19 10:39:18', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('390', '2019-08-19 10:39:30', '1', 'Update', 'User', '51', 'success');
INSERT INTO `log` VALUES ('391', '2019-08-19 10:39:30', '1', 'Select', 'Rights or Group', '7', 'success');
INSERT INTO `log` VALUES ('392', '2019-08-19 10:39:30', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('393', '2019-08-19 10:39:30', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('394', '2019-08-19 10:39:30', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('395', '2019-08-19 10:39:30', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('396', '2019-08-19 10:39:30', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('397', '2019-08-19 10:39:30', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('398', '2019-08-19 10:39:30', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('399', '2019-08-19 10:58:16', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('400', '2019-08-19 10:58:16', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('401', '2019-08-19 11:23:38', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('402', '2019-08-19 11:23:38', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('403', '2019-08-19 11:23:39', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('404', '2019-08-19 11:23:39', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('405', '2019-08-19 11:23:40', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('406', '2019-08-19 11:23:40', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('407', '2019-08-19 11:23:40', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('408', '2019-08-19 11:23:40', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('409', '2019-08-19 11:23:41', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('410', '2019-08-19 11:23:41', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('411', '2019-08-19 11:23:41', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('412', '2019-08-19 11:23:41', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('413', '2019-08-19 11:23:42', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('414', '2019-08-19 11:23:42', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('415', '2019-08-19 11:25:53', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('416', '2019-08-19 11:25:53', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('417', '2019-08-19 11:25:53', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('418', '2019-08-19 11:25:53', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('419', '2019-08-19 11:25:55', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('420', '2019-08-19 11:25:55', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('421', '2019-08-19 11:25:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('422', '2019-08-19 11:25:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('423', '2019-08-19 11:25:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('424', '2019-08-19 11:25:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('425', '2019-08-19 11:25:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('426', '2019-08-19 11:25:55', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('427', '2019-08-19 11:25:56', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('428', '2019-08-19 11:25:56', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('429', '2019-08-19 11:26:02', '1', 'Update', 'User', '53', 'success');
INSERT INTO `log` VALUES ('430', '2019-08-19 11:26:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('431', '2019-08-19 11:26:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('432', '2019-08-19 11:26:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('433', '2019-08-19 11:26:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('434', '2019-08-19 11:26:02', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('435', '2019-08-19 11:26:02', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('436', '2019-08-19 11:26:02', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('437', '2019-08-19 11:26:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('438', '2019-08-19 11:27:41', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('439', '2019-08-19 11:27:41', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('440', '2019-08-19 11:27:41', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('441', '2019-08-19 11:27:41', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('442', '2019-08-19 11:27:43', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('443', '2019-08-19 11:27:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('444', '2019-08-19 11:27:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('445', '2019-08-19 11:27:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('446', '2019-08-19 11:27:43', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('447', '2019-08-19 11:27:43', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('448', '2019-08-19 11:27:43', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('449', '2019-08-19 11:27:43', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('450', '2019-08-19 11:27:44', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('451', '2019-08-19 11:27:44', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('452', '2019-08-19 13:15:21', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('453', '2019-08-19 13:15:21', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('454', '2019-08-19 13:15:21', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('455', '2019-08-19 13:15:21', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('456', '2019-08-19 13:15:32', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('457', '2019-08-19 13:15:32', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('458', '2019-08-19 13:15:32', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('459', '2019-08-19 13:15:32', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('460', '2019-08-19 13:15:32', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('461', '2019-08-19 13:15:32', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('462', '2019-08-19 13:15:32', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('463', '2019-08-19 13:15:32', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('464', '2019-08-19 13:15:33', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('465', '2019-08-19 13:15:33', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('466', '2019-08-19 13:17:20', '1', 'Update', 'User', '104', 'success');
INSERT INTO `log` VALUES ('467', '2019-08-19 13:17:20', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('468', '2019-08-19 13:20:02', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('469', '2019-08-19 13:20:03', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('470', '2019-08-19 13:20:03', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('471', '2019-08-19 13:20:03', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('472', '2019-08-19 13:20:04', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('473', '2019-08-19 13:20:04', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('474', '2019-08-19 13:20:04', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('475', '2019-08-19 13:20:04', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('476', '2019-08-19 13:20:04', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('477', '2019-08-19 13:20:04', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('478', '2019-08-19 13:20:04', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('479', '2019-08-19 13:20:04', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('480', '2019-08-19 13:20:05', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('481', '2019-08-19 13:20:05', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('482', '2019-08-19 13:22:01', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('483', '2019-08-19 13:22:01', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('484', '2019-08-19 13:22:01', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('485', '2019-08-19 13:22:01', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('486', '2019-08-19 13:22:03', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('487', '2019-08-19 13:22:03', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('488', '2019-08-19 13:22:03', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('489', '2019-08-19 13:22:03', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('490', '2019-08-19 13:22:03', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('491', '2019-08-19 13:22:03', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('492', '2019-08-19 13:22:03', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('493', '2019-08-19 13:22:03', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('494', '2019-08-19 13:22:04', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('495', '2019-08-19 13:22:04', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('496', '2019-08-19 13:23:53', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('497', '2019-08-19 13:23:53', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('498', '2019-08-19 13:23:53', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('499', '2019-08-19 13:23:53', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('500', '2019-08-19 13:23:54', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('501', '2019-08-19 13:23:54', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('502', '2019-08-19 13:23:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('503', '2019-08-19 13:23:55', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('504', '2019-08-19 13:23:55', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('505', '2019-08-19 13:23:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('506', '2019-08-19 13:23:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('507', '2019-08-19 13:23:55', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('508', '2019-08-19 13:23:56', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('509', '2019-08-19 13:23:56', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('510', '2019-08-19 13:24:08', '1', 'Update', 'User', '69', 'success');
INSERT INTO `log` VALUES ('511', '2019-08-19 13:24:08', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('512', '2019-08-19 13:24:08', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('513', '2019-08-19 13:24:08', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('514', '2019-08-19 13:24:08', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('515', '2019-08-19 13:24:08', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('516', '2019-08-19 13:24:08', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('517', '2019-08-19 13:24:08', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('518', '2019-08-19 13:24:08', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('519', '2019-08-19 13:52:08', '1', 'Select', 'Rights or Group', '6', 'success');
INSERT INTO `log` VALUES ('520', '2019-08-19 13:52:08', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('521', '2019-08-19 13:52:09', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('522', '2019-08-19 13:52:09', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('523', '2019-08-19 13:52:11', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('524', '2019-08-19 13:52:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('525', '2019-08-19 13:52:28', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('526', '2019-08-19 13:54:01', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('527', '2019-08-19 13:54:01', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('528', '2019-08-19 13:54:01', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('529', '2019-08-19 13:54:01', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('530', '2019-08-19 13:54:05', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('531', '2019-08-19 13:54:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('532', '2019-08-19 13:54:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('533', '2019-08-19 13:54:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('534', '2019-08-19 13:54:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('535', '2019-08-19 13:54:06', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('536', '2019-08-19 13:54:06', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('537', '2019-08-19 13:54:06', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('538', '2019-08-19 13:57:23', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('539', '2019-08-19 13:57:23', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('540', '2019-08-19 13:57:23', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('541', '2019-08-19 13:57:23', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('542', '2019-08-19 13:57:24', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('543', '2019-08-19 13:57:25', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('544', '2019-08-19 13:57:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('545', '2019-08-19 13:57:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('546', '2019-08-19 13:57:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('547', '2019-08-19 13:57:25', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('548', '2019-08-19 13:57:25', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('549', '2019-08-19 13:57:25', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('550', '2019-08-19 13:57:41', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('551', '2019-08-19 13:57:41', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('552', '2019-08-19 13:57:46', '1', 'Update', 'User', '33', 'success');
INSERT INTO `log` VALUES ('553', '2019-08-19 13:57:46', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('554', '2019-08-19 13:57:46', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('555', '2019-08-19 13:57:46', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('556', '2019-08-19 13:57:46', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('557', '2019-08-19 13:57:46', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('558', '2019-08-19 13:57:46', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('559', '2019-08-19 13:57:46', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('560', '2019-08-19 13:57:46', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('561', '2019-08-19 13:59:11', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('562', '2019-08-19 13:59:11', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('563', '2019-08-19 13:59:11', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('564', '2019-08-19 13:59:11', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('565', '2019-08-19 13:59:14', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('566', '2019-08-19 13:59:14', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('567', '2019-08-19 13:59:14', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('568', '2019-08-19 13:59:14', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('569', '2019-08-19 13:59:14', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('570', '2019-08-19 13:59:14', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('571', '2019-08-19 13:59:14', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('572', '2019-08-19 13:59:14', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('573', '2019-08-19 13:59:15', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('574', '2019-08-19 13:59:15', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('575', '2019-08-19 13:59:19', '1', 'Update', 'User', '60', 'success');
INSERT INTO `log` VALUES ('576', '2019-08-19 13:59:19', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('577', '2019-08-19 13:59:19', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('578', '2019-08-19 13:59:19', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('579', '2019-08-19 13:59:19', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('580', '2019-08-19 13:59:19', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('581', '2019-08-19 13:59:19', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('582', '2019-08-19 13:59:19', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('583', '2019-08-19 13:59:19', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('584', '2019-08-19 13:59:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('585', '2019-08-19 13:59:57', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('586', '2019-08-19 13:59:57', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('587', '2019-08-19 13:59:57', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('588', '2019-08-19 13:59:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('589', '2019-08-19 13:59:58', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('590', '2019-08-19 13:59:58', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('591', '2019-08-19 13:59:58', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('592', '2019-08-19 13:59:58', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('593', '2019-08-19 13:59:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('594', '2019-08-19 13:59:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('595', '2019-08-19 13:59:58', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('596', '2019-08-19 14:05:47', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('597', '2019-08-19 14:05:47', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('598', '2019-08-19 14:05:47', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('599', '2019-08-19 14:05:47', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('600', '2019-08-19 14:05:50', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('601', '2019-08-19 14:05:50', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('602', '2019-08-19 14:05:50', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('603', '2019-08-19 14:05:50', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('604', '2019-08-19 14:05:50', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('605', '2019-08-19 14:05:50', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('606', '2019-08-19 14:05:51', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('607', '2019-08-19 14:05:51', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('608', '2019-08-19 14:09:55', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('609', '2019-08-19 14:09:55', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('610', '2019-08-19 14:09:55', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('611', '2019-08-19 14:09:55', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('612', '2019-08-19 14:09:56', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('613', '2019-08-19 14:09:57', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('614', '2019-08-19 14:09:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('615', '2019-08-19 14:09:57', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('616', '2019-08-19 14:09:57', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('617', '2019-08-19 14:09:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('618', '2019-08-19 14:09:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('619', '2019-08-19 14:09:57', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('620', '2019-08-19 14:14:56', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('621', '2019-08-19 14:14:56', '1', 'Select', 'Rights or Group', '7', 'success');
INSERT INTO `log` VALUES ('622', '2019-08-19 14:14:56', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('623', '2019-08-19 14:14:56', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('624', '2019-08-19 14:14:58', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('625', '2019-08-19 14:14:58', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('626', '2019-08-19 14:14:58', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('627', '2019-08-19 14:14:58', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('628', '2019-08-19 14:14:59', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('629', '2019-08-19 14:14:59', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('630', '2019-08-19 14:14:59', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('631', '2019-08-19 14:14:59', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('632', '2019-08-19 14:16:04', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('633', '2019-08-19 14:16:04', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('634', '2019-08-19 14:16:04', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('635', '2019-08-19 14:16:04', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('636', '2019-08-19 14:16:06', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('637', '2019-08-19 14:16:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('638', '2019-08-19 14:16:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('639', '2019-08-19 14:16:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('640', '2019-08-19 14:16:06', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('641', '2019-08-19 14:16:06', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('642', '2019-08-19 14:16:06', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('643', '2019-08-19 14:16:06', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('644', '2019-08-19 14:30:18', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('645', '2019-08-19 14:30:18', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('646', '2019-08-19 14:30:18', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('647', '2019-08-19 14:30:18', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('648', '2019-08-19 14:30:20', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('649', '2019-08-19 14:30:20', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('650', '2019-08-19 14:30:20', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('651', '2019-08-19 14:30:20', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('652', '2019-08-19 14:30:20', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('653', '2019-08-19 14:30:20', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('654', '2019-08-19 14:30:20', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('655', '2019-08-19 14:30:20', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('656', '2019-08-19 14:30:21', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('657', '2019-08-19 14:30:21', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('658', '2019-08-19 14:30:25', '1', 'Update', 'User', '32', 'success');
INSERT INTO `log` VALUES ('659', '2019-08-19 14:30:25', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('660', '2019-08-19 14:30:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('661', '2019-08-19 14:30:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('662', '2019-08-19 14:30:25', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('663', '2019-08-19 14:30:25', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('664', '2019-08-19 14:30:25', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('665', '2019-08-19 14:30:25', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('666', '2019-08-19 14:30:25', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('667', '2019-08-19 14:30:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('668', '2019-08-19 14:30:58', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('669', '2019-08-19 14:30:58', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('670', '2019-08-19 14:30:58', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('671', '2019-08-19 14:30:59', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('672', '2019-08-19 14:30:59', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('673', '2019-08-19 14:30:59', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('674', '2019-08-19 14:30:59', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('675', '2019-08-19 14:30:59', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('676', '2019-08-19 14:30:59', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('677', '2019-08-19 14:30:59', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('678', '2019-08-19 14:30:59', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('679', '2019-08-19 14:39:45', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('680', '2019-08-19 14:39:45', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('681', '2019-08-19 14:39:45', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('682', '2019-08-19 14:39:45', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('683', '2019-08-19 14:39:47', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('684', '2019-08-19 14:39:47', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('685', '2019-08-19 14:39:47', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('686', '2019-08-19 14:39:47', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('687', '2019-08-19 14:39:47', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('688', '2019-08-19 14:39:47', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('689', '2019-08-19 14:39:47', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('690', '2019-08-19 14:39:47', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('691', '2019-08-19 14:40:27', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('692', '2019-08-19 14:40:27', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('693', '2019-08-19 14:40:34', '1', 'Update', 'User', '58', 'success');
INSERT INTO `log` VALUES ('694', '2019-08-19 14:40:34', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('695', '2019-08-19 14:40:34', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('696', '2019-08-19 14:40:34', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('697', '2019-08-19 14:40:34', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('698', '2019-08-19 14:40:34', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('699', '2019-08-19 14:40:34', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('700', '2019-08-19 14:40:34', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('701', '2019-08-19 14:40:34', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('702', '2019-08-19 14:44:26', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('703', '2019-08-19 14:44:26', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('704', '2019-08-19 14:44:26', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('705', '2019-08-19 14:44:26', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('706', '2019-08-19 14:44:28', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('707', '2019-08-19 14:44:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('708', '2019-08-19 14:44:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('709', '2019-08-19 14:44:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('710', '2019-08-19 14:44:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('711', '2019-08-19 14:44:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('712', '2019-08-19 14:44:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('713', '2019-08-19 14:44:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('714', '2019-08-19 14:44:30', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('715', '2019-08-19 14:44:30', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('716', '2019-08-19 14:45:58', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('717', '2019-08-19 14:45:58', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('718', '2019-08-19 14:45:58', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('719', '2019-08-19 14:45:58', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('720', '2019-08-19 14:45:59', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('721', '2019-08-19 14:45:59', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('722', '2019-08-19 14:46:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('723', '2019-08-19 14:46:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('724', '2019-08-19 14:46:00', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('725', '2019-08-19 14:46:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('726', '2019-08-19 14:46:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('727', '2019-08-19 14:46:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('728', '2019-08-19 14:46:02', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('729', '2019-08-19 14:46:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('730', '2019-08-19 14:49:02', '666', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('731', '2019-08-19 14:49:02', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('732', '2019-08-19 14:49:02', '666', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('733', '2019-08-19 14:49:02', '666', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('734', '2019-08-19 14:49:05', '666', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('735', '2019-08-19 14:49:05', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('736', '2019-08-19 14:49:05', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('737', '2019-08-19 14:49:05', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('738', '2019-08-19 14:49:05', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('739', '2019-08-19 14:49:05', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('740', '2019-08-19 14:49:05', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('741', '2019-08-19 14:49:05', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('742', '2019-08-19 14:49:05', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('743', '2019-08-19 14:49:05', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('744', '2019-08-19 14:49:05', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('745', '2019-08-19 14:49:05', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('746', '2019-08-19 14:49:05', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('747', '2019-08-19 14:49:06', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('748', '2019-08-19 14:49:12', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('749', '2019-08-19 14:49:12', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('750', '2019-08-19 14:49:19', '666', 'Update', 'User', '85', 'success');
INSERT INTO `log` VALUES ('751', '2019-08-19 14:49:19', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('752', '2019-08-19 14:49:19', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('753', '2019-08-19 14:49:19', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('754', '2019-08-19 14:49:19', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('755', '2019-08-19 14:49:19', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('756', '2019-08-19 14:49:19', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('757', '2019-08-19 14:49:19', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('758', '2019-08-19 14:49:20', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('759', '2019-08-19 14:49:20', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('760', '2019-08-19 14:49:20', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('761', '2019-08-19 14:49:20', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('762', '2019-08-19 14:49:20', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('763', '2019-08-19 14:49:20', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('764', '2019-08-19 14:49:20', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('765', '2019-08-19 14:51:04', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('766', '2019-08-19 14:51:04', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('767', '2019-08-19 14:51:04', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('768', '2019-08-19 14:51:04', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('769', '2019-08-19 14:51:06', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('770', '2019-08-19 14:51:06', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('771', '2019-08-19 14:51:06', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('772', '2019-08-19 14:51:11', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('773', '2019-08-19 14:51:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('774', '2019-08-19 14:51:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('775', '2019-08-19 14:51:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('776', '2019-08-19 14:51:11', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('777', '2019-08-19 14:51:11', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('778', '2019-08-19 14:51:11', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('779', '2019-08-19 14:51:11', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('780', '2019-08-19 14:52:05', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('781', '2019-08-19 14:52:05', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('782', '2019-08-19 14:52:15', '1', 'Update', 'User', '76', 'success');
INSERT INTO `log` VALUES ('783', '2019-08-19 14:52:15', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('784', '2019-08-19 14:52:15', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('785', '2019-08-19 14:52:15', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('786', '2019-08-19 14:52:15', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('787', '2019-08-19 14:52:15', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('788', '2019-08-19 14:52:15', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('789', '2019-08-19 14:52:15', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('790', '2019-08-19 14:52:15', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('791', '2019-08-19 15:08:22', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('792', '2019-08-19 15:08:22', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('793', '2019-08-19 15:08:22', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('794', '2019-08-19 15:08:22', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('795', '2019-08-19 15:08:23', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('796', '2019-08-19 15:08:23', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('797', '2019-08-19 15:08:23', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('798', '2019-08-19 15:08:23', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('799', '2019-08-19 15:08:23', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('800', '2019-08-19 15:08:24', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('801', '2019-08-19 15:08:24', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('802', '2019-08-19 15:08:24', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('803', '2019-08-19 15:08:53', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('804', '2019-08-19 15:08:53', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('805', '2019-08-19 15:09:00', '1', 'Update', 'User', '91', 'success');
INSERT INTO `log` VALUES ('806', '2019-08-19 15:09:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('807', '2019-08-19 15:09:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('808', '2019-08-19 15:09:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('809', '2019-08-19 15:09:00', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('810', '2019-08-19 15:09:00', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('811', '2019-08-19 15:09:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('812', '2019-08-19 15:09:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('813', '2019-08-19 15:09:00', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('814', '2019-08-19 15:09:02', '1', 'Select', 'User', '28', 'success');
INSERT INTO `log` VALUES ('815', '2019-08-19 15:09:02', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('816', '2019-08-19 15:10:23', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('817', '2019-08-19 15:10:23', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('818', '2019-08-19 15:10:23', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('819', '2019-08-19 15:10:23', '1', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('820', '2019-08-19 15:10:38', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('821', '2019-08-19 15:10:38', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('822', '2019-08-19 15:10:38', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('823', '2019-08-19 15:10:38', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('824', '2019-08-19 15:10:38', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('825', '2019-08-19 15:10:38', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('826', '2019-08-19 15:10:38', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('827', '2019-08-19 15:10:38', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('828', '2019-08-19 15:10:44', '1', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('829', '2019-08-19 15:10:44', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('830', '2019-08-19 15:10:47', '1', 'Update', 'User', '126', 'success');
INSERT INTO `log` VALUES ('831', '2019-08-19 15:10:48', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('832', '2019-08-19 15:10:48', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('833', '2019-08-19 15:10:48', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('834', '2019-08-19 15:10:48', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('835', '2019-08-19 15:10:48', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('836', '2019-08-19 15:10:48', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('837', '2019-08-19 15:10:48', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('838', '2019-08-19 15:10:48', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('839', '2019-08-19 15:12:17', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('840', '2019-08-19 15:12:17', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('841', '2019-08-19 15:12:17', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('842', '2019-08-19 15:12:17', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('843', '2019-08-19 15:12:21', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('844', '2019-08-19 15:12:21', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('845', '2019-08-19 15:12:21', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('846', '2019-08-19 15:12:21', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('847', '2019-08-19 15:12:21', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('848', '2019-08-19 15:12:21', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('849', '2019-08-19 15:12:21', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('850', '2019-08-19 15:12:21', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('851', '2019-08-19 15:12:32', '1', 'Select', 'User', '5', 'success');
INSERT INTO `log` VALUES ('852', '2019-08-19 15:12:32', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('853', '2019-08-19 15:14:12', '1', 'Update', 'User', '76', 'success');
INSERT INTO `log` VALUES ('854', '2019-08-19 15:14:12', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('855', '2019-08-19 15:14:12', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('856', '2019-08-19 15:14:12', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('857', '2019-08-19 15:14:12', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('858', '2019-08-19 15:14:12', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('859', '2019-08-19 15:14:12', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('860', '2019-08-19 15:14:12', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('861', '2019-08-19 15:14:12', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('862', '2019-08-19 15:16:28', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('863', '2019-08-19 15:16:29', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('864', '2019-08-19 15:16:29', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('865', '2019-08-19 15:16:29', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('866', '2019-08-19 15:16:31', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('867', '2019-08-19 15:16:31', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('868', '2019-08-19 15:16:31', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('869', '2019-08-19 15:16:31', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('870', '2019-08-19 15:16:31', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('871', '2019-08-19 15:16:31', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('872', '2019-08-19 15:16:31', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('873', '2019-08-19 15:16:31', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('874', '2019-08-19 15:16:32', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('875', '2019-08-19 15:16:32', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('876', '2019-08-19 15:17:51', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('877', '2019-08-19 15:17:51', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('878', '2019-08-19 15:17:51', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('879', '2019-08-19 15:17:51', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('880', '2019-08-19 15:17:52', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('881', '2019-08-19 15:17:52', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('882', '2019-08-19 15:17:52', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('883', '2019-08-19 15:17:52', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('884', '2019-08-19 15:17:52', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('885', '2019-08-19 15:17:52', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('886', '2019-08-19 15:17:52', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('887', '2019-08-19 15:17:52', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('888', '2019-08-19 15:17:54', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('889', '2019-08-19 15:17:54', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('890', '2019-08-19 15:18:10', '1', 'Select', 'Rights or Group', '5', 'success');
INSERT INTO `log` VALUES ('891', '2019-08-19 15:18:10', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('892', '2019-08-19 15:18:10', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('893', '2019-08-19 15:18:10', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('894', '2019-08-19 15:18:11', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('895', '2019-08-19 15:18:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('896', '2019-08-19 15:18:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('897', '2019-08-19 15:18:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('898', '2019-08-19 15:18:11', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('899', '2019-08-19 15:18:11', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('900', '2019-08-19 15:18:11', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('901', '2019-08-19 15:18:11', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('902', '2019-08-19 15:18:13', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('903', '2019-08-19 15:18:13', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('904', '2019-08-19 15:18:24', '1', 'Update', 'User', '82', 'success');
INSERT INTO `log` VALUES ('905', '2019-08-19 15:18:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('906', '2019-08-19 15:18:26', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('907', '2019-08-19 15:18:26', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('908', '2019-08-19 15:18:26', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('909', '2019-08-19 15:18:26', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('910', '2019-08-19 15:18:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('911', '2019-08-19 15:18:26', '1', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('912', '2019-08-19 15:18:26', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('913', '2019-08-19 15:22:32', '1', 'Select', 'Rights or Group', '4', 'success');
INSERT INTO `log` VALUES ('914', '2019-08-19 15:22:32', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('915', '2019-08-19 15:22:32', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('916', '2019-08-19 15:22:32', '1', 'Select ', 'Comment', '3', 'success');
INSERT INTO `log` VALUES ('917', '2019-08-19 15:22:33', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('918', '2019-08-19 15:22:33', '1', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('919', '2019-08-19 15:22:33', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('920', '2019-08-19 15:22:33', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('921', '2019-08-19 15:22:33', '1', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('922', '2019-08-19 15:22:33', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('923', '2019-08-19 15:22:33', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('924', '2019-08-19 15:22:33', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('925', '2019-08-19 15:22:36', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('926', '2019-08-19 15:22:36', '1', 'Select ', 'Comment', '0', 'success');
INSERT INTO `log` VALUES ('927', '2019-08-19 15:22:36', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('928', '2019-08-19 15:22:41', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('929', '2019-08-19 15:22:41', '666', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('930', '2019-08-19 15:22:41', '666', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('931', '2019-08-19 15:22:41', '666', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('932', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('933', '2019-08-19 15:22:45', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('934', '2019-08-19 15:22:45', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('935', '2019-08-19 15:22:45', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('936', '2019-08-19 15:22:45', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('937', '2019-08-19 15:22:45', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('938', '2019-08-19 15:22:45', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('939', '2019-08-19 15:22:45', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('940', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('941', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('942', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('943', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('944', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('945', '2019-08-19 15:22:45', '666', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('946', '2019-08-19 15:22:48', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('947', '2019-08-19 15:22:48', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('948', '2019-08-19 15:22:53', '666', 'Update', 'User', '125', 'success');
INSERT INTO `log` VALUES ('949', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('950', '2019-08-19 15:22:54', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('951', '2019-08-19 15:22:54', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('952', '2019-08-19 15:22:54', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('953', '2019-08-19 15:22:54', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('954', '2019-08-19 15:22:54', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('955', '2019-08-19 15:22:54', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('956', '2019-08-19 15:22:54', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('957', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('958', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('959', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('960', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('961', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('962', '2019-08-19 15:22:54', '666', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('963', '2019-08-19 15:24:25', '1', 'Select', 'Rights or Group', '6', 'success');
INSERT INTO `log` VALUES ('964', '2019-08-19 15:24:25', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('965', '2019-08-19 15:24:25', '1', 'Select ', 'Comment', '5', 'success');
INSERT INTO `log` VALUES ('966', '2019-08-19 15:24:25', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('967', '2019-08-19 15:24:28', '1', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('968', '2019-08-19 15:24:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('969', '2019-08-19 15:24:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('970', '2019-08-19 15:24:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('971', '2019-08-19 15:24:28', '1', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('972', '2019-08-19 15:24:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('973', '2019-08-19 15:24:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('974', '2019-08-19 15:24:28', '1', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('975', '2019-08-19 15:24:30', '1', 'Select', 'Rights or Group', '3', 'success');
INSERT INTO `log` VALUES ('976', '2019-08-19 15:24:30', '1', 'Select ', 'Comment', '1', 'success');
INSERT INTO `log` VALUES ('977', '2019-08-19 15:24:30', '1', 'Select ', 'Comment', '4', 'success');
INSERT INTO `log` VALUES ('978', '2019-08-19 15:24:35', '666', 'Select', 'Rights or Group', '2', 'success');
INSERT INTO `log` VALUES ('979', '2019-08-19 15:24:35', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('980', '2019-08-19 15:24:35', '666', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('981', '2019-08-19 15:24:35', '666', 'Select ', 'Comment', '2', 'success');
INSERT INTO `log` VALUES ('982', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('983', '2019-08-19 15:24:38', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('984', '2019-08-19 15:24:38', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('985', '2019-08-19 15:24:38', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('986', '2019-08-19 15:24:38', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('987', '2019-08-19 15:24:38', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('988', '2019-08-19 15:24:38', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('989', '2019-08-19 15:24:38', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('990', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('991', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('992', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('993', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('994', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('995', '2019-08-19 15:24:38', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('996', '2019-08-19 15:24:40', '666', 'Select', 'User', '2', 'success');
INSERT INTO `log` VALUES ('997', '2019-08-19 15:24:40', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('998', '2019-08-19 15:25:08', '666', 'Update', 'User', '90', 'success');
INSERT INTO `log` VALUES ('999', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('1000', '2019-08-19 15:25:09', '666', 'Select', 'User', '3', 'success');
INSERT INTO `log` VALUES ('1001', '2019-08-19 15:25:09', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('1002', '2019-08-19 15:25:09', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('1003', '2019-08-19 15:25:09', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('1004', '2019-08-19 15:25:09', '666', 'Select', 'User', '0', 'success');
INSERT INTO `log` VALUES ('1005', '2019-08-19 15:25:09', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('1006', '2019-08-19 15:25:09', '666', 'Select', 'User', '1', 'success');
INSERT INTO `log` VALUES ('1007', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('1008', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('1009', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '0', 'success');
INSERT INTO `log` VALUES ('1010', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('1011', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '1', 'success');
INSERT INTO `log` VALUES ('1012', '2019-08-19 15:25:09', '666', 'Select', 'Rights or Group', '1', 'success');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('0', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/e071ba43-d7fc-4f00-a079-efcda6df4025dio.jpg', null, 'e071ba43-d7fc-4f00-a079-efcda6df4025dio.jpg');
INSERT INTO `picture` VALUES ('13', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/6be710c4-ab06-4143-89c8-bbf512aa9298捕获3.JPG', '1', '6be710c4-ab06-4143-89c8-bbf512aa9298捕获3.JPG');
INSERT INTO `picture` VALUES ('14', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/d8bfb953-2fa6-4a26-aa1f-85a66bbecdc42jo.jpg', '666', 'd8bfb953-2fa6-4a26-aa1f-85a66bbecdc42jo.jpg');
INSERT INTO `picture` VALUES ('15', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/ed7c72de-c3f4-4563-92d8-b39d0f9e507f3jo.jfif', '1', 'ed7c72de-c3f4-4563-92d8-b39d0f9e507f3jo.jfif');
INSERT INTO `picture` VALUES ('16', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/e1a1092b-3d64-4ddd-a87e-cdad955ffcde', '3', 'e1a1092b-3d64-4ddd-a87e-cdad955ffcde');
INSERT INTO `picture` VALUES ('17', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/f8e467a6-0464-4553-b477-be9e84799e92', '3', 'f8e467a6-0464-4553-b477-be9e84799e92');
INSERT INTO `picture` VALUES ('18', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/6bef7f4c-c8a1-4964-bdd8-c65c6aa933b4', '1', '6bef7f4c-c8a1-4964-bdd8-c65c6aa933b4');
INSERT INTO `picture` VALUES ('19', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/063b29ac-24fa-47e5-80df-51026faedf5b', '1', '063b29ac-24fa-47e5-80df-51026faedf5b');
INSERT INTO `picture` VALUES ('21', 'D:/wily/projects/learn/mybatis/hanabisuki/picture/eb54f204-f218-4fdf-b6e0-4950f88da9f14jo.jfif', '3', 'eb54f204-f218-4fdf-b6e0-4950f88da9f14jo.jfif');

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
  `pictureId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupId` (`groupId`),
  KEY `type` (`type`),
  KEY `pictureId` (`pictureId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `usergroup` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`type`) REFERENCES `rolerights` (`roleName`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`pictureId`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=667 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '渥世尼戈葛', 'eeafb716f93fa090d7716749a6eefa72', '1@test.com', '13900000019', '1', 'BU', '15');
INSERT INTO `user` VALUES ('2', '铁憨憨', '9a440f1f071dad3043b6c8ba93bb761c', '2@test.com', '13900000002', '2', 'CU', null);
INSERT INTO `user` VALUES ('3', '史布世&middot;芝辉&middot;则易炬', 'e8465345a7296214eb9e53baca4ee833', '3@test.com', '13900000003', '1', 'CU', '21');
INSERT INTO `user` VALUES ('4', '带带大师兄', 'eeafb716f93fa090d7716749a6eefa72', 'xie@test.com', '13900000058', '1', 'CU', '13');
INSERT INTO `user` VALUES ('5', 'test2', '54b41981bebd0b6c2a8553ee5c1e2f9b', '5@test.com', '13900000022', '2', 'BU', null);
INSERT INTO `user` VALUES ('666', 'admin', 'e8465345a7296214eb9e53baca4ee833', 'admin@admin.com', '13999999999', '3', 'AU', '14');

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
