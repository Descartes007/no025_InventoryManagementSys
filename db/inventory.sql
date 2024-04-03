/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : inventory

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 25/05/2023 16:21:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chukujilu
-- ----------------------------
DROP TABLE IF EXISTS `chukujilu`;
CREATE TABLE `chukujilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `shangjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `shangpinshuliang` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `chukushijian` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1683718948177 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chukujilu
-- ----------------------------
INSERT INTO `chukujilu` VALUES (1683637405776, '2023-05-06 21:03:25', '账号1', '商家1', '商品名称1', '商品类型1', 6, '2023-05-06 21:03:18');
INSERT INTO `chukujilu` VALUES (1683693669028, '2023-05-10 12:41:08', '账号1', '商家1', '商品名称1', '商品类型1', 1, '2023-05-10 12:41:06');
INSERT INTO `chukujilu` VALUES (1683718948176, '2023-05-10 19:42:27', '账号3', '商家3', '商品名称3', '商品类型3', 10, '2023-05-10 19:42:26');

-- ----------------------------
-- Table structure for chukushenqing
-- ----------------------------
DROP TABLE IF EXISTS `chukushenqing`;
CREATE TABLE `chukushenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `shangjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `shangpinshuliang` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `chukushuliang` int(11) NULL DEFAULT NULL COMMENT '出库数量',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `beizhushuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注说明',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/inventory/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/inventory/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/inventory/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for operatelog
-- ----------------------------
DROP TABLE IF EXISTS `operatelog`;
CREATE TABLE `operatelog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1661645503508033538 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operatelog
-- ----------------------------
INSERT INTO `operatelog` VALUES (1, '2023-05-10 20:54:16', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656284395125362689, '2023-05-10 21:05:46', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656285405893906433, '2023-05-10 21:09:47', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656287552047960066, '2023-05-10 21:18:19', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656287919653539842, '2023-05-10 21:19:47', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656287966076096514, '2023-05-10 21:19:58', 'admin', '退出');
INSERT INTO `operatelog` VALUES (1656288300152410113, '2023-05-10 21:21:17', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656288431958413313, '2023-05-10 21:21:49', '账号2', '商品信息修改');
INSERT INTO `operatelog` VALUES (1656621764844204033, '2023-05-11 19:26:21', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656622920756637698, '2023-05-11 19:30:57', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656623030311858178, '2023-05-11 19:31:23', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656623852017954818, '2023-05-11 19:34:39', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656624251848372226, '2023-05-11 19:36:14', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656624996626739201, '2023-05-11 19:39:12', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656625754885595137, '2023-05-11 19:42:13', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656625956455456769, '2023-05-11 19:43:01', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656626557528580098, '2023-05-11 19:45:24', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1656627925626658818, '2023-05-11 19:50:50', 'admin', '退出');
INSERT INTO `operatelog` VALUES (1660554500726382593, '2023-05-22 15:53:39', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1660554500726382594, '2023-05-22 15:53:39', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1660554521165225986, '2023-05-22 15:53:44', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1661622167033913346, '2023-05-25 14:36:10', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1661622168355119105, '2023-05-25 14:36:11', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1661622216983879682, '2023-05-25 14:36:22', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1661633029396275201, '2023-05-25 15:19:20', '账号2', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661636331412414465, '2023-05-25 15:32:27', '账号1', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661636404368138241, '2023-05-25 15:32:45', '账号2', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661637187289505794, '2023-05-25 15:35:51', '账号1', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661637371587223554, '2023-05-25 15:36:35', 'admin', '登录');
INSERT INTO `operatelog` VALUES (1661637421935648769, '2023-05-25 15:36:47', '11', '商品信息保存');
INSERT INTO `operatelog` VALUES (1661637661531070465, '2023-05-25 15:37:44', '11', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661637858931793921, '2023-05-25 15:38:31', '账号4', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661637916150489090, '2023-05-25 15:38:45', '11', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661638825664348161, '2023-05-25 15:42:22', '11', '商品信息保存');
INSERT INTO `operatelog` VALUES (1661638925442646018, '2023-05-25 15:42:46', '11', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661639092510162945, '2023-05-25 15:43:26', '11', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661639204166729730, '2023-05-25 15:43:52', '11', '商品信息保存');
INSERT INTO `operatelog` VALUES (1661639249280663554, '2023-05-25 15:44:03', '11', '商品信息修改');
INSERT INTO `operatelog` VALUES (1661645503508033537, '2023-05-25 16:08:54', '账号1', '商品信息修改');

-- ----------------------------
-- Table structure for pandian
-- ----------------------------
DROP TABLE IF EXISTS `pandian`;
CREATE TABLE `pandian`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `bianhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `shangjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `shangpinguige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `shangpinshuliang` int(11) NULL DEFAULT NULL COMMENT '损坏数量',
  `miaoshu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1685002658058 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pandian
-- ----------------------------
INSERT INTO `pandian` VALUES (1685002480976, '2023-05-08 10:14:11', 'L112', '账号1', '商家1', '商品名称1', '商品类型1', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian1.jpg', '商品规格1', 1, '商品包装损坏，请及时处理。商品包装损坏，请及时处理。商品包装损坏，请及时处理。商品包装损坏，请及时处理。商品包装损坏，请及时处理。商品包装损坏，请及时处理。商品包装损坏，请及时处理。');
INSERT INTO `pandian` VALUES (1685002658057, '2023-05-08 10:14:11', NULL, '账号3', '商家3', '商品名称3', '商品类型3', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian3.jpg', '商品规格3', 2, '过期产品');

-- ----------------------------
-- Table structure for rukujilu
-- ----------------------------
DROP TABLE IF EXISTS `rukujilu`;
CREATE TABLE `rukujilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `shangjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `shangpinshuliang` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `rukushijian` datetime(0) NULL DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1685000567307 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入库记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rukujilu
-- ----------------------------
INSERT INTO `rukujilu` VALUES (1683637337343, '2023-05-09 21:02:16', '账号1', '商家1', '商品名称1', '商品类型1', 12, '2023-05-09 21:02:13');
INSERT INTO `rukujilu` VALUES (1683693468048, '2023-05-10 12:37:47', '账号1', '商家1', '商品名称1', '商品类型1', 1, '2023-05-10 00:00:00');
INSERT INTO `rukujilu` VALUES (1683711761128, '2023-05-10 17:42:40', '123', '商家A', '商品123', '商品类型2', 1001, '2023-05-10 17:42:37');
INSERT INTO `rukujilu` VALUES (1683718934592, '2023-05-10 19:42:14', '账号3', '商家3', '商品名称3', '商品类型3', 100, '2023-05-10 19:42:12');
INSERT INTO `rukujilu` VALUES (1685000265840, '2023-05-25 15:37:44', '11', '11', '11', '商品类型1', 1, '2023-05-25 00:00:00');
INSERT INTO `rukujilu` VALUES (1685000313090, '2023-05-25 15:38:32', '账号4', '商家4', '商品名称4', '商品类型4', 1, '2023-05-25 00:00:00');
INSERT INTO `rukujilu` VALUES (1685000325898, '2023-05-25 15:38:45', '11', '11', '11', '商品类型1', 2, '2023-05-25 15:38:44');
INSERT INTO `rukujilu` VALUES (1685000567306, '2023-05-25 15:42:46', '11', '11', '11', '商品类型1', 1, '2023-05-25 15:42:45');

-- ----------------------------
-- Table structure for shanghu
-- ----------------------------
DROP TABLE IF EXISTS `shanghu`;
CREATE TABLE `shanghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `shangjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家',
  `lianxiren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `shangjiadizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610418320449 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shanghu
-- ----------------------------
INSERT INTO `shanghu` VALUES (11, '2023-05-08 10:14:11', '商户1', '123456', '商家1', '联系人1', '13823888881', '773890001@qq.com', '商家地址1');
INSERT INTO `shanghu` VALUES (12, '2023-05-08 10:14:11', '商户2', '123456', '商家2', '联系人2', '13823888882', '773890002@qq.com', '商家地址2');
INSERT INTO `shanghu` VALUES (13, '2023-05-08 10:14:11', '商户3', '123456', '商家3', '联系人3', '13823888883', '773890003@qq.com', '商家地址3');
INSERT INTO `shanghu` VALUES (14, '2023-05-08 10:14:11', '商户4', '123456', '商家4', '联系人4', '13823888884', '773890004@qq.com', '商家地址4');
INSERT INTO `shanghu` VALUES (15, '2023-05-08 10:14:11', '商户5', '123456', '商家5', '联系人5', '13823888885', '773890005@qq.com', '商家地址5');
INSERT INTO `shanghu` VALUES (1610418320448, '2023-05-08 10:14:11', '123', '123', '商家A', '留言', '13455445566', '4645654@qq.com', '湖南省长沙市的说法广东佛山');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610418471789 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (31, '2023-05-08 10:14:11', '商品类型1');
INSERT INTO `shangpinfenlei` VALUES (32, '2023-05-08 10:14:11', '商品类型2');
INSERT INTO `shangpinfenlei` VALUES (33, '2023-05-08 10:14:11', '商品类型3');
INSERT INTO `shangpinfenlei` VALUES (34, '2023-05-08 10:14:11', '商品类型4');
INSERT INTO `shangpinfenlei` VALUES (35, '2023-05-08 10:14:11', '商品类型5');
INSERT INTO `shangpinfenlei` VALUES (36, '2023-05-08 10:14:11', '商品类型6');
INSERT INTO `shangpinfenlei` VALUES (1610418471788, '2023-05-08 10:14:11', '商品类型123');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `bianhao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `shangjia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `shangpinguige` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `shangpinshuliang` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1685000633050 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES (21, '2023-05-08 10:14:11', 'L112', '账号1', '商家1', '商品名称1', '商品类型1', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian1.jpg', '商品规格1', 1);
INSERT INTO `shangpinxinxi` VALUES (22, '2023-05-08 10:14:11', 'P123', '账号2', '商家2', '白酒2', '商品类型2', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian2.jpg', '商品规格2', 0);
INSERT INTO `shangpinxinxi` VALUES (23, '2023-05-08 10:14:11', NULL, '账号3', '商家3', '商品名称3', '商品类型3', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian3.jpg', '商品规格3', 90);
INSERT INTO `shangpinxinxi` VALUES (24, '2023-05-08 10:14:11', NULL, '账号4', '商家4', '商品名称4', '商品类型4', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian4.jpg', '商品规格4', 1);
INSERT INTO `shangpinxinxi` VALUES (25, '2023-05-08 10:14:11', NULL, '账号5', '商家5', '商品名称5', '商品类型5', 'http://localhost:8080/inventory/upload/shangpinxinxi_shangpintupian5.jpg', '商品规格5', 0);
INSERT INTO `shangpinxinxi` VALUES (1610418374733, '2023-05-08 10:14:11', NULL, '123', '商家A', '商品123', '商品类型2', 'http://localhost:8080/inventory/upload/1610418367297.jpg', '奥德赛广东佛山工号', 1001);
INSERT INTO `shangpinxinxi` VALUES (1685000633049, '2023-05-25 15:43:52', '11', '11', '11', '11', '商品类型1', '', '11', 0);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (3, 1, 'admin', 'users', '管理员', 'egxj0yhlozv0a4775dcycf9ppy0acnop', '2023-05-09 20:59:17', '2023-05-25 16:36:36');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2023-05-08 10:14:11');

SET FOREIGN_KEY_CHECKS = 1;
