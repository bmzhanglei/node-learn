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

 Date: 07/04/2021 12:02:34
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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES (9, '管理员管理', '', 1, '', 1, 0, 100, '', 1617166227);
INSERT INTO `access` VALUES (10, '角色管理', '', 1, '', 1, 0, 100, '', 1617166258);
INSERT INTO `access` VALUES (12, '管理员管理', '管理员列表', 2, 'manager', 1, 9, 100, '111', 1617166934);
INSERT INTO `access` VALUES (13, '管理员管理', '增加管理员', 2, 'manager/add', 1, 9, 100, '', 1617167014);
INSERT INTO `access` VALUES (14, '管理员管理', '修改管理员', 3, 'manager/edit', 1, 9, 100, '', 1617167068);
INSERT INTO `access` VALUES (15, '角色管理', '角色列表', 2, 'role', 1, 10, 100, '', 1617167109);
INSERT INTO `access` VALUES (16, '角色管理', '增加角色', 2, 'role/add', 1, 10, 100, '', 1617167135);
INSERT INTO `access` VALUES (22, '权限管理', '', 1, '', 1, 0, 100, '', 1617248453);
INSERT INTO `access` VALUES (23, '权限管理', '增加权限', 2, 'access/add', 1, 22, 100, '', 1617248481);
INSERT INTO `access` VALUES (24, '权限管理', '修改权限', 3, 'access/edit', 1, 22, 100, '', 1617248771);
INSERT INTO `access` VALUES (25, '角色管理', '删除角色', 3, 'role/delete', 1, 10, 100, '', 1617248810);
INSERT INTO `access` VALUES (26, '管理员管理', '删除管理员', 3, 'manager/delete', 1, 9, 100, '', 1617271892);
INSERT INTO `access` VALUES (27, '权限管理', '权限列表', 2, 'access', 1, 22, 100, '', 1617353161);
INSERT INTO `access` VALUES (28, '角色管理', '编辑角色', 3, 'role/edit', 1, 10, 100, '', 1617698106);
INSERT INTO `access` VALUES (29, '角色管理', '执行增加-角色', 3, 'role/doAdd', 1, 10, 100, '', 1617698203);
INSERT INTO `access` VALUES (30, '角色管理', '执行修改-角色', 3, 'role/doEdit', 1, 10, 100, '', 1617698226);
INSERT INTO `access` VALUES (31, '管理员管理', '执行修改-管理员', 3, 'manager/doEdit', 1, 9, 100, '', 1617759485);
INSERT INTO `access` VALUES (32, '管理员管理', '执行增加-管理员', 3, 'manager/doAdd', 1, 9, 100, '', 1617759497);
INSERT INTO `access` VALUES (33, '角色管理', '角色授权', 3, 'role/auth', 1, 10, 100, '', 1617759662);
INSERT INTO `access` VALUES (34, '角色管理', '角色授权-执行授权', 3, 'role/doAuth', 1, 10, 100, '', 1617759687);
INSERT INTO `access` VALUES (35, '权限管理', '执行增加-权限', 3, 'access/doAdd', 1, 22, 100, '', 1617759835);
INSERT INTO `access` VALUES (36, '权限管理', '执行修改-权限', 3, 'access/doEdit', 1, 22, 100, '', 1617759854);
INSERT INTO `access` VALUES (37, '权限管理', '删除权限', 3, 'access/delete', 1, 22, 100, '', 1617759893);

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
INSERT INTO `admin` VALUES (24, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '1520171111', '554066692@qq.com', NULL, 7, NULL, 0, NULL);
INSERT INTO `admin` VALUES (26, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '152017222', '11114292@qq.com', 1, 9, 1616926119, 0, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_access
-- ----------------------------
INSERT INTO `role_access` VALUES (84, 25, 8);
INSERT INTO `role_access` VALUES (85, 9, 4);
INSERT INTO `role_access` VALUES (86, 12, 4);
INSERT INTO `role_access` VALUES (87, 13, 4);
INSERT INTO `role_access` VALUES (88, 14, 4);
INSERT INTO `role_access` VALUES (89, 26, 4);
INSERT INTO `role_access` VALUES (90, 10, 4);
INSERT INTO `role_access` VALUES (91, 15, 4);
INSERT INTO `role_access` VALUES (92, 16, 4);
INSERT INTO `role_access` VALUES (93, 25, 4);
INSERT INTO `role_access` VALUES (94, 22, 4);
INSERT INTO `role_access` VALUES (95, 9, 7);
INSERT INTO `role_access` VALUES (96, 12, 7);
INSERT INTO `role_access` VALUES (97, 13, 7);
INSERT INTO `role_access` VALUES (98, 14, 7);
INSERT INTO `role_access` VALUES (99, 26, 7);
INSERT INTO `role_access` VALUES (109, 9, 9);
INSERT INTO `role_access` VALUES (110, 12, 9);
INSERT INTO `role_access` VALUES (111, 13, 9);
INSERT INTO `role_access` VALUES (112, 14, 9);
INSERT INTO `role_access` VALUES (113, 26, 9);
INSERT INTO `role_access` VALUES (114, 10, 9);
INSERT INTO `role_access` VALUES (115, 15, 9);
INSERT INTO `role_access` VALUES (116, 16, 9);
INSERT INTO `role_access` VALUES (117, 25, 9);
INSERT INTO `role_access` VALUES (118, 28, 9);
INSERT INTO `role_access` VALUES (119, 29, 9);
INSERT INTO `role_access` VALUES (120, 30, 9);

SET FOREIGN_KEY_CHECKS = 1;
