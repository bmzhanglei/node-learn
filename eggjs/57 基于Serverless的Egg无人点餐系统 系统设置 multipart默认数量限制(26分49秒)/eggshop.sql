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

 Date: 21/04/2021 14:42:55
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
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `access` VALUES (38, '菜品管理', '', 1, '', 1, 0, 100, '', 1617783233);
INSERT INTO `access` VALUES (39, '菜品管理', '菜品列表', 2, 'product', 1, 38, 100, '', 1617783272);
INSERT INTO `access` VALUES (40, '菜品管理', '菜品分类', 2, 'productCate', 1, 38, 100, '', 1617783322);
INSERT INTO `access` VALUES (41, '菜品管理', '增加菜品', 3, 'product/add', 1, 38, 100, '', 1618794392);
INSERT INTO `access` VALUES (43, '菜品管理', '修改菜品', 3, 'product/edit', 1, 38, 100, '', 1618794766);
INSERT INTO `access` VALUES (44, '菜品管理', '删除菜品', 3, 'product/delete', 1, 38, 100, '', 1618794782);
INSERT INTO `access` VALUES (45, '菜品管理', '增加菜品-执行增加', 3, 'product/doAdd', 1, 38, 100, '', 1618794819);
INSERT INTO `access` VALUES (46, '菜品管理', '增加菜品-执行修改', 3, 'product/doEdit', 1, 38, 100, '', 1618794854);
INSERT INTO `access` VALUES (47, '菜品管理', '增加菜品分类', 3, 'productCate/add', 1, 38, 100, '', 1618794889);
INSERT INTO `access` VALUES (48, '菜品管理', '修改菜品分类', 3, 'productCate/edit', 1, 38, 100, '', 1618794903);
INSERT INTO `access` VALUES (49, '菜品管理', '菜品分类-执行增加', 3, 'productCate/doAdd', 1, 38, 100, '', 1618794937);
INSERT INTO `access` VALUES (50, '菜品管理', '菜品分类-执行修改', 3, 'productCate/doEdit', 1, 38, 100, '', 1618794945);
INSERT INTO `access` VALUES (51, '菜品管理', '菜品分类-删除', 3, 'productCate/delete', 1, 38, 100, '', 1618794981);
INSERT INTO `access` VALUES (52, '其他管理', '', 1, '', 1, 0, 100, '', 1618799693);
INSERT INTO `access` VALUES (53, '其他管理', '桌号管理', 2, 'table', 1, 52, 100, '', 1618799777);
INSERT INTO `access` VALUES (54, '其他管理', '增加桌号', 3, 'table/add', 1, 52, 100, '', 1618799802);
INSERT INTO `access` VALUES (55, '其他管理', '编辑桌号', 3, 'table/edit', 1, 52, 100, '', 1618799858);
INSERT INTO `access` VALUES (56, '其他管理', '桌号-执行增加', 3, 'table/doAdd', 1, 52, 100, '', 1618799888);
INSERT INTO `access` VALUES (57, '其他管理', '桌号-执行修改', 3, 'table/doEdit', 1, 52, 100, '', 1618799908);
INSERT INTO `access` VALUES (58, '其他管理', '桌号-删除桌号', 3, 'table/delete', 1, 52, 100, '', 1618799924);
INSERT INTO `access` VALUES (59, '其他管理', '系统设置', 2, 'setting', 1, 52, 100, '', 1618969021);

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
INSERT INTO `admin` VALUES (3, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 1, 4, NULL, 1, NULL);
INSERT INTO `admin` VALUES (24, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '1520171111', '554066692@qq.com', 0, 7, NULL, 0, NULL);
INSERT INTO `admin` VALUES (26, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '152017222', '11114292@qq.com', 1, 9, 1616926119, 0, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cid` int(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `sale_count` int(0) NULL DEFAULT NULL,
  `is_best` tinyint(0) NULL DEFAULT NULL,
  `is_hot` tinyint(0) NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 6, '2', 11.00, '20210413/1618308332.jpg', '<p><em style=\"font-style: normal; color: rgb(247, 49, 49); font-family: Arial, sans-serif; font-size: 13px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">娃娃菜炖豆腐</em><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">是一道家常菜，口感脆嫩清甜，制作原料主要有娃娃菜、豆腐。娃娃菜富含维生素和硒，叶绿素含量较高，具有丰富的营养价值。由于娃娃菜还含有丰富的纤维素及微量元素，因此娃娃菜板豆腐还有助于预防结肠癌</span>&nbsp;。&nbsp;</p>', NULL, 1, 1, 100, '1', 1618287133);
INSERT INTO `product` VALUES (2, 8, '手撕包菜', 18.00, '20210419/1618803624.jpeg', '<p><em style=\"font-style: normal; color: rgb(247, 49, 49); font-family: Arial, sans-serif; font-size: 13px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">手撕包菜</em><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">是一道色香味俱全的汉族名菜，属于湘菜系。此菜红白相间，麻辣鲜香，爽脆清甜，除了可开胃增食欲外，还有美白祛斑、预防感冒和胃溃疡等作用。以小青包菜、蒜片、葱段、茶油、盐、味精、鸡精、生抽、高汤、醋等制作而成</span> </p>', NULL, NULL, 1, 100, '1', 1618287206);
INSERT INTO `product` VALUES (3, 6, '香酥黄金鱼', 38.00, '20210419/1618803676.jpg', '<p>娃娃菜炖豆腐</p>', NULL, 0, 0, 100, '1', 1618299797);
INSERT INTO `product` VALUES (6, 7, '凉拌三丝', 15.00, '20210419/1618803761.jpeg', '<p><em style=\"font-style: normal; color: rgb(247, 49, 49); font-family: Arial, sans-serif; font-size: 13px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">凉拌三丝</em><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">是一道以海带丝、青椒丝、红椒丝作为主要食材，以酱油、盐、醋、白糖、姜末、芝麻等作为辅料制作而成的传统名菜</span> </p>', NULL, 1, 1, 100, '1', 1618803761);
INSERT INTO `product` VALUES (7, 7, '凉拌牛肉 ', 36.00, '20210419/1618804669.jpg', '<p><a href=\"https://baike.baidu.com/item/%E7%89%9B%E8%82%89\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">牛肉</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">(肥瘦)：牛肉富含蛋白质，氨基酸组成比猪肉更接近人体需要，能提高机体抗病能力，对生长发育及术后，病后调养的人在补充失血、修复组织等方面特别适宜，寒冬食牛肉可暖胃，是该季节的补益佳品；牛肉有补中益气，滋养脾胃，强健筋骨，化痰息风，止渴止涎之功效，适宜于中气下隐、气短体虚、筋骨酸软、</span><a href=\"https://baike.baidu.com/item/%E8%B4%AB%E8%A1%80\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">贫血</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">久病及面黄目眩之人食用；水牛肉能安胎补神，</span><a href=\"https://baike.baidu.com/item/%E9%BB%84%E7%89%9B\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\" target=\"_blank\">黄牛</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 28px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">肉能安中益气、健脾养胃、强筋壮骨</span> </p>', NULL, 1, 1, 100, '1', 1618804670);
INSERT INTO `product` VALUES (8, 16, '鲜蔬菌菇粥', 18.00, '20210419/1618805152.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">菌菇蔬菜粥是一道用大米、鲜香菇、木耳、胡萝卜、菠菜为主料制作的美食,辅料有盐、香油、水等。养生美味。</span></p>', NULL, 1, 1, 100, '1', 1618805152);
INSERT INTO `product` VALUES (9, 11, '酱烧黄金鲽鱼', 38.00, '20210419/1618805567.jpg', '<p><img src=\"https://itying-1251179943.cos.ap-beijing.myqcloud.com/20210419/1618805563.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br></p><p><img src=\"https://itying-1251179943.cos.ap-beijing.myqcloud.com/20210419/1618805589.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', NULL, 1, 1, 100, '1', 1618805567);
INSERT INTO `product` VALUES (10, 7, '高担麻酱酿皮', 10.00, '20210419/1618805645.jpg', '', NULL, 1, 1, 100, '1', 1618805645);
INSERT INTO `product` VALUES (11, 11, '椰汁咖喱鸡块', 45.00, '20210419/1618805708.jpg', '<p>1</p>', NULL, 1, 1, 100, '1', 1618805708);
INSERT INTO `product` VALUES (12, 8, '牛肉炒蒜苔', 45.00, '20210419/1618805752.jpg', '<p>2</p>', NULL, 1, 1, 100, '1', 1618805753);
INSERT INTO `product` VALUES (13, 12, '炒茄子', 21.00, '20210419/1618805801.jpg', '', NULL, 1, 1, 100, '1', 1618805801);
INSERT INTO `product` VALUES (14, 12, '西红柿炒鸡蛋', 21.00, '20210419/1618805839.jpg', '<p>西红柿炒鸡蛋aaaa</p>', NULL, 1, 1, 100, '1', 1618805839);
INSERT INTO `product` VALUES (15, 13, '米饭', 1.00, '20210419/1618805905.jpg', '', NULL, 1, 1, 100, '1', 1618805906);
INSERT INTO `product` VALUES (16, 15, '啤酒1', 4.00, '20210419/1618805967.jpg', '<p>aa</p>', NULL, 1, 1, 100, '1', 1618805968);

-- ----------------------------
-- Table structure for product_cate
-- ----------------------------
DROP TABLE IF EXISTS `product_cate`;
CREATE TABLE `product_cate`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_cate
-- ----------------------------
INSERT INTO `product_cate` VALUES (6, '精选热菜', '精选热菜', '1', 100, 1617793289);
INSERT INTO `product_cate` VALUES (7, '精选凉菜', '精选凉菜', '1', 100, 1617793311);
INSERT INTO `product_cate` VALUES (8, '城心小炒', '城心小炒', '1', 101, 1617793319);
INSERT INTO `product_cate` VALUES (11, '特色菜', '特色菜', '1', 100, 1618299635);
INSERT INTO `product_cate` VALUES (12, '田园时蔬', '田园时蔬', '1', 100, 1618299657);
INSERT INTO `product_cate` VALUES (13, '粗粮主食', '粗粮主食', '1', 100, 1618299678);
INSERT INTO `product_cate` VALUES (14, '最常点的菜', '最常点的菜', '1', 100, 1618299687);
INSERT INTO `product_cate` VALUES (15, '酒水饮料', '酒水饮料', '1', 100, 1618803467);
INSERT INTO `product_cate` VALUES (16, '养生汤', '养生汤', '1', 100, 1618803507);

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

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `printer_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `printer_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `client_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wifi_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wifi_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `alipay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weixinpay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, '无人点餐系统', '20210421/1618980977.jpg', '无人点餐系统', '无人点餐系统', '2222', '1111', '3333', '444', '5555', '6666', '777', '888', '', '');

-- ----------------------------
-- Table structure for table
-- ----------------------------
DROP TABLE IF EXISTS `table`;
CREATE TABLE `table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `table_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table
-- ----------------------------
INSERT INTO `table` VALUES (2, '金玉堂', 'a002', NULL, 1, 1618802269);
INSERT INTO `table` VALUES (3, '前程堂', 'a003', NULL, 1, 1618802279);
INSERT INTO `table` VALUES (4, '一层1号11', '001', NULL, 1, 1618889081);

SET FOREIGN_KEY_CHECKS = 1;
