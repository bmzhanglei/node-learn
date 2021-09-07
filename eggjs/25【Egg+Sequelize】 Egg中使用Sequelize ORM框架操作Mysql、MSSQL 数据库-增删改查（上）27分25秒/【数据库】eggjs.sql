/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : eggjs

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-09-10 21:20:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '8月份CPI同比上涨2.8% 猪肉价格上涨46.7%', null, '1', '1');
INSERT INTO `article` VALUES ('2', '中国联通与中国电信共建共享5G网络 用户归属不变', null, '1', '1');
INSERT INTO `article` VALUES ('3', '林郑月娥斥责暴徒破坏港铁:不能因为没生命就肆意破坏', null, '2', '1');
INSERT INTO `article` VALUES ('4', '这些老师的口头禅，想起那些年“被支配的恐惧”了吗', null, '2', '1');
INSERT INTO `article` VALUES ('5', '美国空军一号差点遭雷劈，特朗普惊呼：令人惊奇', null, '3', '1');

-- ----------------------------
-- Table structure for `article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `article_cate`;
CREATE TABLE `article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_cate
-- ----------------------------
INSERT INTO `article_cate` VALUES ('1', '国内', null, '1');
INSERT INTO `article_cate` VALUES ('2', '国际', null, '1');
INSERT INTO `article_cate` VALUES ('3', '娱乐', null, '1');

-- ----------------------------
-- Table structure for `lesson`
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES ('1', '计算机网络', '2019-05-12 13:12:32', '2019-05-12 13:12:35', null);
INSERT INTO `lesson` VALUES ('2', 'Java程序设计', '2019-05-12 13:12:50', '2019-05-12 13:12:52', null);
INSERT INTO `lesson` VALUES ('3', '软件项目管理', '2019-05-12 13:13:07', '2019-05-12 13:13:10', null);
INSERT INTO `lesson` VALUES ('4', '网络安全', '2019-05-12 13:13:22', '2019-05-12 13:13:25', null);

-- ----------------------------
-- Table structure for `lesson_student`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_student`;
CREATE TABLE `lesson_student` (
  `lesson_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lesson_student
-- ----------------------------
INSERT INTO `lesson_student` VALUES ('1', '1');
INSERT INTO `lesson_student` VALUES ('2', '1');
INSERT INTO `lesson_student` VALUES ('3', '1');
INSERT INTO `lesson_student` VALUES ('1', '2');
INSERT INTO `lesson_student` VALUES ('4', '2');
INSERT INTO `lesson_student` VALUES ('1', '3');
INSERT INTO `lesson_student` VALUES ('2', '3');
INSERT INTO `lesson_student` VALUES ('1', '4');
INSERT INTO `lesson_student` VALUES ('2', '4');
INSERT INTO `lesson_student` VALUES ('3', '4');
INSERT INTO `lesson_student` VALUES ('1', '5');
INSERT INTO `lesson_student` VALUES ('2', '5');
INSERT INTO `lesson_student` VALUES ('1', '6');
INSERT INTO `lesson_student` VALUES ('4', '6');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(12) NOT NULL COMMENT '学号',
  `password` varchar(32) NOT NULL,
  `classId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '160101', '202cb962ac59075b964b07152d234b70', '1', '张三');
INSERT INTO `student` VALUES ('2', '160201', '202cb962ac59075b964b07152d234b70', '2', '李四');
INSERT INTO `student` VALUES ('3', '160102', '202cb962ac59075b964b07152d234b70', '1', '王五');
INSERT INTO `student` VALUES ('4', '160103', '202cb962ac59075b964b07152d234b70', '1', '王麻子');
INSERT INTO `student` VALUES ('5', '160104', '202cb962ac59075b964b07152d234b70', '1', '赵四');
INSERT INTO `student` VALUES ('6', '160202', '202cb962ac59075b964b07152d234b70', '2', '刘能');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '20', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('2', '李四1', '25', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('3', '李四2', '25', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('4', '李四3', '25', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('5', '李四4', '22', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('6', '李四5', '25', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('7', '李四6', '33', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('8', '李四7', '5', '男', '2019-09-10', '2019-09-10');
INSERT INTO `user` VALUES ('9', '王麻子', '22', '女', '2019-09-10', '2019-09-10');
