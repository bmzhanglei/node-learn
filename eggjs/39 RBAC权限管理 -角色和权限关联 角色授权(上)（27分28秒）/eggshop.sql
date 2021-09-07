/*
 Navicat MySQL Data Transfer

 Source Server         : 192.168.0.14
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 192.168.0.14:3306
 Source Schema         : eggshop

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 01/04/2021 18:47:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `action_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `module_id` int(0) NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES (9, '管理员管理', '', 1, '', 1, 0, 100, '', 1617166227);
INSERT INTO `access` VALUES (10, '角色管理', '', 1, '', 1, 0, 100, '', 1617166258);
INSERT INTO `access` VALUES (12, '管理员管理', '管理员列表', 2, 'manager/', 1, 9, 1001, '111', 1617166934);
INSERT INTO `access` VALUES (13, '管理员管理', '增加管理员', 2, 'manager/add', 1, 9, 100, '', 1617167014);
INSERT INTO `access` VALUES (14, '管理员管理', '修改管理员', 3, 'manager/edit', 1, 9, 100, '', 1617167068);
INSERT INTO `access` VALUES (15, '角色管理', '角色列表', 2, 'role', 1, 10, 100, '', 1617167109);
INSERT INTO `access` VALUES (16, '角色管理', '增加角色', 2, 'role/add', 1, 10, 100, '', 1617167135);
INSERT INTO `access` VALUES (22, '权限管理', '', 1, '', 1, 0, 100, '', 1617248453);
INSERT INTO `access` VALUES (23, '权限管理', '增加权限', 2, 'access/add', 1, 22, 100, '', 1617248481);
INSERT INTO `access` VALUES (24, '权限管理', '修改权限', 2, 'access/edit', 1, 22, 100, '', 1617248771);
INSERT INTO `access` VALUES (25, '角色管理', '删除角色', 3, 'role/delete', 1, 10, 100, '', 1617248810);
INSERT INTO `access` VALUES (26, '管理员管理', '删除管理员', 3, 'manager/delete', 1, 9, 100, '', 1617271892);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  `is_super` tinyint(1) NULL DEFAULT NULL,
  `last_login` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (3, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, 4, NULL, 1, NULL);
INSERT INTO `admin` VALUES (24, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '1520171111', '554066692@qq.com', NULL, 7, NULL, NULL, NULL);
INSERT INTO `admin` VALUES (26, 'zhangsan', '25d55ad283aa400af464c76d713c07ad', '152017222', '11114292@qq.com', 1, 4, 1616926119, 0, NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (4, '技术部门', '技术部门', 1, 1616659119);
INSERT INTO `role` VALUES (7, '销售部门', '销售部门', 1, 1616662026);
INSERT INTO `role` VALUES (8, '超级管理员', '超级管理员', 1, 1616924540);
INSERT INTO `role` VALUES (9, '财务部门', '财务部门', 1, 1616924547);

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `access_id` int(0) NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_access
-- ----------------------------
INSERT INTO `role_access` VALUES (35, 12, 4);
INSERT INTO `role_access` VALUES (36, 13, 4);
INSERT INTO `role_access` VALUES (37, 14, 4);
INSERT INTO `role_access` VALUES (38, 10, 4);
INSERT INTO `role_access` VALUES (39, 15, 4);
INSERT INTO `role_access` VALUES (40, 16, 4);
INSERT INTO `role_access` VALUES (41, 25, 4);
INSERT INTO `role_access` VALUES (45, 9, 8);
INSERT INTO `role_access` VALUES (46, 12, 8);
INSERT INTO `role_access` VALUES (47, 13, 8);
INSERT INTO `role_access` VALUES (48, 14, 8);
INSERT INTO `role_access` VALUES (49, 26, 8);

SET FOREIGN_KEY_CHECKS = 1;
