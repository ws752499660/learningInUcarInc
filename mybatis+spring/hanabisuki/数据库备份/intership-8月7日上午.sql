/*
Navicat MySQL Data Transfer

Source Server         : 2
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : intership

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-08-07 10:23:41
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
) ENGINE=InnoDB AUTO_INCREMENT=1367 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1239', '&gt;&lt;script&gt;alert(2)&lt;/script&gt;', '讲点香港笑话', '2019-08-05 13:08:27', '2019-08-05 13:51:10', '1');
INSERT INTO `comment` VALUES ('1240', '不要乱删东西', '节奏大师', '2019-08-05 13:08:37', '2019-08-05 13:08:37', '1');
INSERT INTO `comment` VALUES ('1241', '123', '4564534', '2019-08-05 13:08:44', '2019-08-05 13:08:44', '1');
INSERT INTO `comment` VALUES ('1242', '无内鬼', '再见~', '2019-08-05 13:08:58', '2019-08-05 13:08:58', '3');
INSERT INTO `comment` VALUES ('1243', '游戏游艺设备', '节奏大师', '2019-08-05 13:09:04', '2019-08-05 13:09:04', '3');
INSERT INTO `comment` VALUES ('1244', '&lt;img src=1 &omicron;nerr&omicron;r=alert(1) /&gt;', '&lt;img src=1 &omicron;nerr&omicron;r=alert(1) /&gt;', '2019-08-05 13:15:38', '2019-08-05 13:15:38', '1');
INSERT INTO `comment` VALUES ('1247', '&lt;script&gt;', '&lt;script&gt;', '2019-08-05 13:18:31', '2019-08-05 13:18:31', '1');
INSERT INTO `comment` VALUES ('1250', '无内鬼，来点注入', '&lt;script&gt;alert(0)&lt;/script&gt;  &lt;script&gt;debugger&lt;/script&gt;', '2019-08-05 13:34:25', '2019-08-05 13:34:29', '1');
INSERT INTO `comment` VALUES ('1251', '无内鬼，再来点SQL注入', '\";SELECT * FORM USER;', '2019-08-05 13:35:21', '2019-08-05 13:39:35', '1');
INSERT INTO `comment` VALUES ('1252', '无内鬼，再再来点SQL注入', '&rsquo;or 1=1#', '2019-08-05 13:36:02', '2019-08-05 13:36:02', '1');
INSERT INTO `comment` VALUES ('1253', '无内鬼，再再再来点SQL注入', '’or 1=1#	', '2019-08-05 13:37:47', '2019-08-05 13:37:47', '3');
INSERT INTO `comment` VALUES ('1254', '无内鬼,再再再再来点SQL注入', ';and 1=1 and 1=2', '2019-08-05 13:38:58', '2019-08-05 13:38:58', '3');
INSERT INTO `comment` VALUES ('1357', '&lt;scrip&gt;', '', '2019-08-05 13:46:45', '2019-08-05 13:46:45', '4');
INSERT INTO `comment` VALUES ('1358', ' &lt;td&gt;', '', '2019-08-05 13:47:12', '2019-08-05 13:47:12', '4');
INSERT INTO `comment` VALUES ('1359', '&gt;&lt;script&gt;alert(2)&lt;/script&gt;', '', '2019-08-05 13:50:54', '2019-08-05 13:50:54', '4');
INSERT INTO `comment` VALUES ('1361', ' \' or 1=1', 'anything', '2019-08-05 13:54:52', '2019-08-05 13:54:52', '4');
INSERT INTO `comment` VALUES ('1362', 'test', 'test', '2019-08-05 14:11:20', '2019-08-05 14:11:20', '4');
INSERT INTO `comment` VALUES ('1363', '1', '1', '2019-08-05 14:15:29', '2019-08-05 14:15:29', '4');
INSERT INTO `comment` VALUES ('1364', '1&quot;', '1&quot;', '2019-08-05 14:15:48', '2019-08-05 14:16:22', '4');
INSERT INTO `comment` VALUES ('1365', '杰哥教你', '登dua郎', '2019-08-05 14:25:43', '2019-08-05 14:25:43', '1');
INSERT INTO `comment` VALUES ('1366', 'www. baidu.com', '', '2019-08-05 16:28:35', '2019-08-05 16:28:35', '4');

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
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `usergroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '渥世尼戈葛', 'eeafb716f93fa090d7716749a6eefa72', '1@test.com', '13900000012', null, '');
INSERT INTO `user` VALUES ('3', '史布世·芝辉·则易炬', 'ea8753722c0e8ecde195d6adb8ba7c0d', '3@test.com', '13900000003', null, '');
INSERT INTO `user` VALUES ('4', '11222&quot;&gt;', '8af57c2ead460b609e042819827657a8', 'xie@test.com', '13900000058', null, '');
INSERT INTO `user` VALUES ('5', 'test2', '54b41981bebd0b6c2a8553ee5c1e2f9b', '5@test.com', '13900000022', null, '');

-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(255) DEFAULT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergroup
-- ----------------------------
