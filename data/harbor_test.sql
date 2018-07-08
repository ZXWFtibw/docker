/*
 Navicat Premium Data Transfer

 Source Server         : test database
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 192.168.1.146:3306
 Source Schema         : harbor

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 08/07/2018 12:04:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biz_activity
-- ----------------------------
DROP TABLE IF EXISTS `biz_activity`;
CREATE TABLE `biz_activity`  (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动ID\n\n\n',
  `activity_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动名称',
  `activity_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动logo图片（.jpg）路径\n\n\n',
  `activity_logo_size` bigint(20) DEFAULT NULL COMMENT '活动logo图片大小',
  `activity_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动类型\n\n\n',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态：未删除/删除(1/0)\n\n\n',
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_activity
-- ----------------------------
INSERT INTO `biz_activity` VALUES (1, NULL, 'uploadImg/business/2018-06-27/0D5D62454D82460C9916B8507C0905AB.jpg', NULL, '品牌活动', 0);
INSERT INTO `biz_activity` VALUES (2, NULL, 'uploadImg/business/2018-06-27/F116AB83C7F94499832BD10CC64442CB.jpg', NULL, '商场活动', 0);
INSERT INTO `biz_activity` VALUES (3, NULL, 'uploadImg/business/2018-06-27/9352E66AEA2B48B285D9C06E5BFABA5F.jpg', NULL, '品牌活动', 0);
INSERT INTO `biz_activity` VALUES (4, NULL, 'uploadImg/business/2018-06-27/0F07FCC98C7F4E0886F7845DB96BFB5F.jpg', NULL, '活动12', 1);
INSERT INTO `biz_activity` VALUES (5, NULL, 'uploadImg/business/2018-06-27/B92CE234CF254E2194F2BADFE07AED5A.png', NULL, '618活动', 0);
INSERT INTO `biz_activity` VALUES (6, NULL, 'uploadImg/business/2018-06-27/B13A7A5237BF4F06AD6DBA2EDE90D9BF.png', NULL, '双123', 0);
INSERT INTO `biz_activity` VALUES (7, NULL, 'uploadImg/business/2018-06-27/60456E8FBA274658B9825054351D7FFE.png', NULL, '12', 0);
INSERT INTO `biz_activity` VALUES (8, NULL, 'uploadImg/business/2018-06-27/36ED1151239C4B019EB014916A85AC2D.png', NULL, '暑期促销', 0);
INSERT INTO `biz_activity` VALUES (9, NULL, '', NULL, '12', 1);
INSERT INTO `biz_activity` VALUES (10, NULL, 'uploadImg/business\\2018-07-02\\E00BC906386A4AC481297DB083CB1036.jpg', NULL, 'huanq', 0);
INSERT INTO `biz_activity` VALUES (11, NULL, 'uploadImg/business\\2018-07-03\\444D26E2FD334F7B9B8B9DD1D2909A7D.jpg', NULL, 'Bb', 1);

-- ----------------------------
-- Table structure for biz_activity_material
-- ----------------------------
DROP TABLE IF EXISTS `biz_activity_material`;
CREATE TABLE `biz_activity_material`  (
  `activity_material_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动素材ID\n\n\n',
  `activity_material_img_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动素材图片路径\n\n\n',
  `activity_material_size` bigint(20) DEFAULT NULL COMMENT '活动素材图片大小\n\n\n',
  `activity_material_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动素材名称',
  `activity_material_img_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '活动素材图片原名',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动ID(join表biz_activity查询活动类型)',
  PRIMARY KEY (`activity_material_id`) USING BTREE,
  INDEX `activity_id`(`activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_activity_material
-- ----------------------------
INSERT INTO `biz_activity_material` VALUES (118, 'uploadImg/business/2018-06-27/AE8894EB836B439DB54DE6B9F16BE96B.png', 11098, '广西TV.png', 'AE8894EB836B439DB54DE6B9F16BE96B.png', 8);
INSERT INTO `biz_activity_material` VALUES (119, 'uploadImg/business/2018-06-27/BFB75007AFA8493E9C00734817828A79.png', 6773, '贵州TV.png', 'BFB75007AFA8493E9C00734817828A79.png', 6);
INSERT INTO `biz_activity_material` VALUES (120, 'uploadImg/business/2018-06-27/F2645DC5FF104D6C8E3A1C2A0C7C6D1D.jpg', 855408, '2DA2881E77164A1C82A8CA041E9008FD.jpg', 'F2645DC5FF104D6C8E3A1C2A0C7C6D1D.jpg', 6);
INSERT INTO `biz_activity_material` VALUES (121, 'uploadImg/business/2018-06-27/5D7276D0C0E94117A9170A2ED1DD3826.png', 1558, '0B162F4A92BD4D228D696F3B0761E64D.png', '5D7276D0C0E94117A9170A2ED1DD3826.png', 8);
INSERT INTO `biz_activity_material` VALUES (122, 'uploadImg/business/2018-06-27/6DC3F5F2972044DC9006B62FEC03A4F6.png', 1558, '0B162F4A92BD4D228D696F3B0761E64D.png', '6DC3F5F2972044DC9006B62FEC03A4F6.png', 8);
INSERT INTO `biz_activity_material` VALUES (123, 'uploadImg/business/2018-06-29/760586732D7E41B68691339C6FDE2EC3.jpg', 639876, '1920x1080.jpg', '760586732D7E41B68691339C6FDE2EC3.jpg', 7);
INSERT INTO `biz_activity_material` VALUES (124, 'uploadImg/business/2018-06-29/2EB4D4FFAD4D464284EB20F907C02D68.jpg', 1396523, '1920-1080.jpg', '2EB4D4FFAD4D464284EB20F907C02D68.jpg', 7);
INSERT INTO `biz_activity_material` VALUES (125, 'uploadImg/business/2018-06-29/4DA851FBC9F2427BB141711DFCB35935.jpg', 2146092, '3.jpg', '4DA851FBC9F2427BB141711DFCB35935.jpg', 7);
INSERT INTO `biz_activity_material` VALUES (137, 'uploadImg/business/2018-07-04/0A5122C13A624768B76E9DA7D992A64B.jpg', 200430, 'about2.jpg', '0A5122C13A624768B76E9DA7D992A64B.jpg', 10);

-- ----------------------------
-- Table structure for biz_building
-- ----------------------------
DROP TABLE IF EXISTS `biz_building`;
CREATE TABLE `biz_building`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '建筑定位信息ID',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '建筑编号（left join商铺表）',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '建筑名',
  `color` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '建筑显示颜色',
  `layer` int(11) DEFAULT NULL COMMENT '楼层ID',
  `type` int(11) DEFAULT NULL COMMENT '业态ID',
  `width` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '宽度',
  `height` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '高度',
  `page_x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'pageX',
  `page_y` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'pageY',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE COMMENT '建筑编号唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_building
-- ----------------------------
INSERT INTO `biz_building` VALUES (39, 'A002', '特克斯', 'rgb(255, 215, 0)', 1, 1, '66', '66', '857', '344');
INSERT INTO `biz_building` VALUES (40, 'A01', '', 'rgb(192, 192, 192)', 1, 4, '50', '50', '329', '402');
INSERT INTO `biz_building` VALUES (51, '12424', '4124', 'rgb(192, 192, 192)', 2, 1, '66', '66', '368', '419');
INSERT INTO `biz_building` VALUES (53, '222', '', 'rgb(192, 192, 192)', 1, 4, '50', '50', '729', '437');
INSERT INTO `biz_building` VALUES (59, 'A23-001', 'A23-001', 'rgb(255, 165, 0)', 1, 1, '123', '50', '708', '340');
INSERT INTO `biz_building` VALUES (64, 'A2100', '2100', 'rgb(255, 165, 0)', 1, 1, '50', '50', '1030.3999633789062', '486');
INSERT INTO `biz_building` VALUES (67, '10086', '10087', 'rgb(220, 20, 60)', 2, 1, '68.375', '50', '564.4', '336.796875');
INSERT INTO `biz_building` VALUES (68, 'B1214', '', 'rgb(192, 192, 192)', 2, 1, '59', '53', '341', '339');
INSERT INTO `biz_building` VALUES (69, '肯德基', '', 'rgb(192, 192, 192)', 2, 1, '50', '50', '476', '340');
INSERT INTO `biz_building` VALUES (73, 'B1016', '张亮麻辣烫', 'rgb(192, 192, 192)', 1, 1, '50', '56', '53', '188');
INSERT INTO `biz_building` VALUES (74, 'L1086', '一线小生', 'rgb(192, 192, 192)', 2, 1, '66', '66', '28', '61');
INSERT INTO `biz_building` VALUES (75, 'B23', '永辉超市', 'rgb(192, 192, 192)', 10, 1, '550', '166', '608', '668');
INSERT INTO `biz_building` VALUES (76, 'B1003A', '老斋板面', 'rgb(192, 192, 192)', 1, 1, '122', '50', '541', '419');
INSERT INTO `biz_building` VALUES (77, '07083', '', 'rgb(192, 192, 192)', 15, 4, '66', '66', '681', '447');
INSERT INTO `biz_building` VALUES (79, '07081', '', 'rgb(192, 192, 192)', 3, 4, '66', '66', '302', '477');
INSERT INTO `biz_building` VALUES (83, 'L2066', '丁三宝', 'rgb(192, 192, 192)', 3, 1, '66', '66', '447', '339');
INSERT INTO `biz_building` VALUES (84, 'L1007', '小熊饼干', 'rgb(192, 192, 192)', 3, 1, '66', '66', '40', '49');
INSERT INTO `biz_building` VALUES (85, 'A10086', '', 'rgb(192, 192, 192)', 3, 1, '74', '50', '127', '158');
INSERT INTO `biz_building` VALUES (87, '@13', '213@', 'rgb(192, 192, 192)', 14, 1, '121', '110', '1008', '452');

-- ----------------------------
-- Table structure for biz_floor
-- ----------------------------
DROP TABLE IF EXISTS `biz_floor`;
CREATE TABLE `biz_floor`  (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '楼层ID\n\n\n',
  `floor_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '第几楼层',
  `floor_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '  楼层名称\n      \n\n\n',
  `sort_number` int(11) DEFAULT NULL COMMENT '楼层排序码',
  PRIMARY KEY (`floor_id`) USING BTREE,
  UNIQUE INDEX `floor_number`(`floor_number`) USING BTREE COMMENT '编号唯一',
  UNIQUE INDEX `floor_name`(`floor_name`) USING BTREE COMMENT '楼层名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_floor
-- ----------------------------
INSERT INTO `biz_floor` VALUES (1, 'F1', '一楼', 10);
INSERT INTO `biz_floor` VALUES (2, 'F2', '二楼', 20);
INSERT INTO `biz_floor` VALUES (3, 'F3', '三楼', 30);
INSERT INTO `biz_floor` VALUES (6, 'F6', '六楼', 60);
INSERT INTO `biz_floor` VALUES (7, 'F7', '七楼', 70);
INSERT INTO `biz_floor` VALUES (9, 'B1', '负一楼', 110);
INSERT INTO `biz_floor` VALUES (10, 'B2', '负二楼', 120);
INSERT INTO `biz_floor` VALUES (11, 'B3', '负三楼', 130);
INSERT INTO `biz_floor` VALUES (14, 'F4', '四楼', 40);
INSERT INTO `biz_floor` VALUES (15, 'F5', '五楼', 50);
INSERT INTO `biz_floor` VALUES (17, 'F8', '八楼', 80);

-- ----------------------------
-- Table structure for biz_format
-- ----------------------------
DROP TABLE IF EXISTS `biz_format`;
CREATE TABLE `biz_format`  (
  `biz_format_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业态ID\n\n\n',
  `biz_format_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业态编号\n\n\n',
  `biz_format_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业态种类\n\n\n',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态：未删除/删除(1/0)',
  `biz_format_pid` int(11) DEFAULT NULL COMMENT '排序码(由小到大排序)',
  PRIMARY KEY (`biz_format_id`) USING BTREE,
  UNIQUE INDEX `biz_format_number`(`biz_format_number`) USING BTREE COMMENT '编号唯一',
  UNIQUE INDEX `biz_format_type`(`biz_format_type`) USING BTREE COMMENT '业态类型唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_format
-- ----------------------------
INSERT INTO `biz_format` VALUES (1, NULL, 'AAA', 1, 0);
INSERT INTO `biz_format` VALUES (2, 'A0001', '电影', 0, 20);
INSERT INTO `biz_format` VALUES (3, 'A00133', '配套', 0, 50);
INSERT INTO `biz_format` VALUES (4, NULL, 'BBB', 1, 1);
INSERT INTO `biz_format` VALUES (5, 'A0003', '餐饮', 0, 10);
INSERT INTO `biz_format` VALUES (6, 'A0004', '名品', 1, 2);
INSERT INTO `biz_format` VALUES (7, 'A0005', '皮具箱包', 0, 40);
INSERT INTO `biz_format` VALUES (8, NULL, NULL, 1, 3);
INSERT INTO `biz_format` VALUES (9, 'A0007', '杂品类', 0, 30);
INSERT INTO `biz_format` VALUES (10, 'A0008', '男装', 1, 3);
INSERT INTO `biz_format` VALUES (11, 'A0009', '女装', 0, 60);
INSERT INTO `biz_format` VALUES (12, 'A0010', '快时尚', 1, 4);
INSERT INTO `biz_format` VALUES (13, 'A0011', '儿童', 0, 70);
INSERT INTO `biz_format` VALUES (14, NULL, '', 1, 4);
INSERT INTO `biz_format` VALUES (15, 'A0099', '其他', 0, 9999);
INSERT INTO `biz_format` VALUES (16, 'A0012', '娱乐', 1, 4);
INSERT INTO `biz_format` VALUES (17, 'tian', 'zhen', 1, 1);
INSERT INTO `biz_format` VALUES (18, '21', '321', 1, 112);
INSERT INTO `biz_format` VALUES (19, NULL, '123', 1, 12);
INSERT INTO `biz_format` VALUES (20, 'tqq', '129', 1, 42);
INSERT INTO `biz_format` VALUES (21, 'C003', '003', 1, 1);
INSERT INTO `biz_format` VALUES (22, 'zzzzz', 'ssss', 1, 1);
INSERT INTO `biz_format` VALUES (23, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (24, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (25, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (26, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (27, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (28, NULL, 'da', 1, 21);
INSERT INTO `biz_format` VALUES (29, 'ad', 'adz', 1, 1);
INSERT INTO `biz_format` VALUES (30, 'ads', 'ad', 1, 1);
INSERT INTO `biz_format` VALUES (35, 'C0031', '13213123', 1, 1);
INSERT INTO `biz_format` VALUES (38, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (40, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (41, '123', 'adda', 0, 150);
INSERT INTO `biz_format` VALUES (42, '12', '12', 0, 130);
INSERT INTO `biz_format` VALUES (43, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (45, NULL, NULL, 1, 1123);
INSERT INTO `biz_format` VALUES (46, NULL, NULL, 1, 12);
INSERT INTO `biz_format` VALUES (47, 'ttttqqqq', 'aaabbb', 0, 160);
INSERT INTO `biz_format` VALUES (48, 'zz', '21', 0, 120);
INSERT INTO `biz_format` VALUES (49, 'zzzz', 'qqqq', 0, 110);
INSERT INTO `biz_format` VALUES (50, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (52, 'A1111', '11111', 0, 140);
INSERT INTO `biz_format` VALUES (53, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (55, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (56, NULL, NULL, 1, 1);
INSERT INTO `biz_format` VALUES (57, NULL, NULL, 1, 1);

-- ----------------------------
-- Table structure for biz_map
-- ----------------------------
DROP TABLE IF EXISTS `biz_map`;
CREATE TABLE `biz_map`  (
  `map_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地图ID',
  `map_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地图名称',
  `map_img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地图底图路径\n\n\n',
  `floor_id` int(11) DEFAULT NULL COMMENT '楼层ID',
  PRIMARY KEY (`map_id`) USING BTREE,
  UNIQUE INDEX `map_floor_index`(`floor_id`) USING BTREE,
  CONSTRAINT `biz_map_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `biz_floor` (`floor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_map
-- ----------------------------
INSERT INTO `biz_map` VALUES (3, '一楼', 'uploadImg/business/2018-06-27/D3F308FDA5264AC9A64E646CEBE0097A.png', 1);
INSERT INTO `biz_map` VALUES (4, '二楼', 'uploadImg/business/2018-06-29/380BD6F4C9B14CE9A4659469E42A8F1A.png', 2);
INSERT INTO `biz_map` VALUES (5, '三楼', 'uploadImg/business/2018-07-06/41EF9819E6C24306A30BEC0E7E92A181.png', 3);
INSERT INTO `biz_map` VALUES (6, '四楼', 'uploadImg/business/2018-07-06/5A297FCA5ACB4984BA7FC46E1CFF0D94.png', 14);
INSERT INTO `biz_map` VALUES (7, '五楼', 'uploadImg/business/2018-07-06/4DC4086A17F4446A98D61B912EB7FC44.png', 15);
INSERT INTO `biz_map` VALUES (8, 'B1', 'uploadImg/business/2018-07-06/3B686EFC1F194036BFAA90EA34146B8B.png', 9);
INSERT INTO `biz_map` VALUES (9, 'B2', 'uploadImg/business/2018-07-06/763D326C58B94B4C889987C052561378.png', 10);

-- ----------------------------
-- Table structure for biz_screensaver
-- ----------------------------
DROP TABLE IF EXISTS `biz_screensaver`;
CREATE TABLE `biz_screensaver`  (
  `screensaver_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '屏保ID\n\n\n',
  `screensaver_program_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保节目名称\n\n\n',
  `add_screensaver_time` datetime(0) DEFAULT NULL COMMENT '创建屏保的时间',
  PRIMARY KEY (`screensaver_id`) USING BTREE,
  UNIQUE INDEX `screensaver_program_name`(`screensaver_program_name`) USING BTREE COMMENT '屏保节目名称唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_screensaver
-- ----------------------------
INSERT INTO `biz_screensaver` VALUES (1, 'A001', '2018-06-26 17:31:24');
INSERT INTO `biz_screensaver` VALUES (3, '餐饮轮播图', '2018-06-26 18:23:41');
INSERT INTO `biz_screensaver` VALUES (7, '环球', '2018-06-27 11:44:06');
INSERT INTO `biz_screensaver` VALUES (8, '商铺', '2018-06-27 11:56:09');
INSERT INTO `biz_screensaver` VALUES (9, '2222', '2018-06-27 14:55:20');
INSERT INTO `biz_screensaver` VALUES (10, '333', '2018-06-27 14:56:39');
INSERT INTO `biz_screensaver` VALUES (11, '屏保1', '2018-06-27 15:33:58');
INSERT INTO `biz_screensaver` VALUES (12, '竖屏1', '2018-06-27 17:53:16');
INSERT INTO `biz_screensaver` VALUES (13, '2', '2018-06-27 17:54:17');
INSERT INTO `biz_screensaver` VALUES (14, '1009', '2018-06-27 18:23:44');
INSERT INTO `biz_screensaver` VALUES (16, '0628', '2018-06-28 10:24:09');
INSERT INTO `biz_screensaver` VALUES (19, 'tianzheng', '2018-06-29 11:01:01');
INSERT INTO `biz_screensaver` VALUES (21, 'cheshi', '2018-06-29 11:02:46');
INSERT INTO `biz_screensaver` VALUES (34, 'qqq', '2018-06-29 16:47:32');
INSERT INTO `biz_screensaver` VALUES (36, '1212', '2018-06-29 17:17:19');
INSERT INTO `biz_screensaver` VALUES (37, '跳转', '2018-07-01 04:45:31');
INSERT INTO `biz_screensaver` VALUES (38, 'qq', '2018-07-01 05:11:03');
INSERT INTO `biz_screensaver` VALUES (39, 'aaad', '2018-07-02 11:05:16');
INSERT INTO `biz_screensaver` VALUES (40, '测试', '2018-07-02 08:23:46');
INSERT INTO `biz_screensaver` VALUES (41, 'ad', '2018-07-03 16:42:27');
INSERT INTO `biz_screensaver` VALUES (42, 'aaa', '2018-07-03 16:42:37');
INSERT INTO `biz_screensaver` VALUES (43, 'gg', '2018-07-03 16:42:54');
INSERT INTO `biz_screensaver` VALUES (44, 'bh', '2018-07-04 09:51:50');
INSERT INTO `biz_screensaver` VALUES (50, 'ads', '2018-07-04 10:42:43');
INSERT INTO `biz_screensaver` VALUES (51, 'tizheng', '2018-07-04 11:17:48');
INSERT INTO `biz_screensaver` VALUES (53, 'protect.v2', '2018-07-04 15:41:15');
INSERT INTO `biz_screensaver` VALUES (54, 'protect.v1', '2018-07-04 15:41:32');
INSERT INTO `biz_screensaver` VALUES (55, '0708001', '2018-07-08 01:03:51');

-- ----------------------------
-- Table structure for biz_screensaver_material
-- ----------------------------
DROP TABLE IF EXISTS `biz_screensaver_material`;
CREATE TABLE `biz_screensaver_material`  (
  `screensaver_material_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '屏保素材ID\n\n\n',
  `screensaver_material_img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保素材图片路径\n\n\n',
  `screensaver_material_size` bigint(20) DEFAULT NULL COMMENT '屏保素材图片大小\n\n\n',
  `screensaver_material_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保素材名称\n\n\n',
  `screensaver_material_img_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保素材图片原名',
  `screensaver_material_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保素材类型(横屏/竖屏)',
  `is_first_page` int(1) DEFAULT NULL COMMENT '是否为首页素材(不是首页素材0/是首页素材1)',
  PRIMARY KEY (`screensaver_material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_screensaver_material
-- ----------------------------
INSERT INTO `biz_screensaver_material` VALUES (1, 'uploadImg/business/2018-06-27/678CC4BAEFC1494DA8B9486749931C6D.png', 803484, '1.png', '678CC4BAEFC1494DA8B9486749931C6D.png', '1', 1);
INSERT INTO `biz_screensaver_material` VALUES (23, 'uploadImg/business/2018-06-27/BE1456D95E5847C291DD2311A3012AFA.png', 14172, '辽宁TV.png', 'BE1456D95E5847C291DD2311A3012AFA.png', '1', 0);
INSERT INTO `biz_screensaver_material` VALUES (24, 'uploadImg/business/2018-06-27/CD1D1BB833154B51BDEBFEFDED668C0F.jpg', 348680, '1221094425364wtwwz2b47q.jpg', 'CD1D1BB833154B51BDEBFEFDED668C0F.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (25, 'uploadImg/business/2018-06-27/890E910FC1E442378B085D56DFE6B262.jpg', 599044, '1221094425365c6ysm2381a.jpg', '890E910FC1E442378B085D56DFE6B262.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (26, 'uploadImg/business/2018-06-27/36D632F061F0490E9EBF52DB258910CE.jpg', 455315, '1221094425365h6uqvmhlfg.jpg', '36D632F061F0490E9EBF52DB258910CE.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (27, 'uploadImg/business/2018-06-27/54738D7BF5964E1595CE671F892E73BA.jpg', 643283, '1221094425365i0oxmakcbb.jpg', '54738D7BF5964E1595CE671F892E73BA.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (28, 'uploadImg/business/2018-06-27/F782E32910CE4E81BDE1F7C6A5FE302B.jpg', 687623, '1221094425365kcinezmi88.jpg', 'F782E32910CE4E81BDE1F7C6A5FE302B.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (35, 'uploadImg/business/2018-06-27/B6327F94631F4C59B4FB3550D3C48AF9.jpg', 803484, '20180627104047.jpg', 'B6327F94631F4C59B4FB3550D3C48AF9.jpg', '1', 0);
INSERT INTO `biz_screensaver_material` VALUES (37, 'uploadImg/business/2018-06-27/7D25F596BBED474BA0730887A8F657C4.jpg', 761489, '1D21FF3B18724CAC9E178851131FD4B3.jpg', '7D25F596BBED474BA0730887A8F657C4.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (38, 'uploadImg/business/2018-06-27/678CC4BAEFC1494DA8B9486749931C6D.png', 803484, '1.png', '678CC4BAEFC1494DA8B9486749931C6D.png', '1', 0);
INSERT INTO `biz_screensaver_material` VALUES (39, 'uploadImg/business/2018-06-29/46348D9997164853B8C1F3CFD68055F8.jpg', 855408, 'a6.jpg', '46348D9997164853B8C1F3CFD68055F8.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (40, 'uploadImg/business/2018-06-29/46348D9997164853B8C1F3CFD68055F8.jpg', 855408, 'a6.jpg', '46348D9997164853B8C1F3CFD68055F8.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (41, 'uploadImg/business/2018-06-29/69636DF7D0374F67AD42C5AED6742E1C.jpg', 558709, 'a4.jpg', '69636DF7D0374F67AD42C5AED6742E1C.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (42, 'uploadImg/business/2018-06-29/46348D9997164853B8C1F3CFD68055F8.jpg', 855408, 'a6.jpg', '46348D9997164853B8C1F3CFD68055F8.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (43, 'uploadImg/business/2018-06-29/69636DF7D0374F67AD42C5AED6742E1C.jpg', 558709, 'a4.jpg', '69636DF7D0374F67AD42C5AED6742E1C.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (46, 'uploadImg/business/2018-06-29/51B431B95EB7429F8C5795A47D54C05F.jpg', 558709, 'a4.jpg', '51B431B95EB7429F8C5795A47D54C05F.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (47, 'uploadImg/business/2018-06-29/FD5A2AE62D294495B6929C52D940E08A.jpg', 253893, 'a3.jpg', 'FD5A2AE62D294495B6929C52D940E08A.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (48, 'uploadImg/business/2018-06-29/629A0B28386647E39FC069C69DB78168.jpg', 558709, 'a4.jpg', '629A0B28386647E39FC069C69DB78168.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (53, 'uploadImg/business/2018-06-29/CEC6DA46A86D4438B08111E082851E90.jpg', 253893, 'a3.jpg', 'CEC6DA46A86D4438B08111E082851E90.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (54, 'uploadImg/business/2018-06-29/BAEED01BBE954C64A29BA9775ECD9057.jpg', 558709, 'a4.jpg', 'BAEED01BBE954C64A29BA9775ECD9057.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (55, 'uploadImg/business/2018-06-29/2AD54C2BF7824BB5961F0DE734A93B9F.jpg', 253893, 'a3.jpg', '2AD54C2BF7824BB5961F0DE734A93B9F.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (56, 'uploadImg/business/2018-06-29/05B7CC728A3745A69EDF7D1AEDC90453.jpg', 558709, 'a4.jpg', '05B7CC728A3745A69EDF7D1AEDC90453.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (58, 'uploadImg/business/2018-06-29/8665927807E14AEE9E0847F71E14F905.jpg', 159515, 'about1.jpg', '8665927807E14AEE9E0847F71E14F905.jpg', '2', 1);

-- ----------------------------
-- Table structure for biz_shop
-- ----------------------------
DROP TABLE IF EXISTS `biz_shop`;
CREATE TABLE `biz_shop`  (
  `shop_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺ID（uuid）',
  `shop_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商铺编码\n\n\n',
  `shop_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商铺名称\n\n\n',
  `shop_english_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商铺英文名\n\n\n',
  `floor_id` int(11) DEFAULT NULL COMMENT '商铺所属楼层ID（join表biz_floor）\n\n\n',
  `biz_format_id` int(11) DEFAULT NULL COMMENT '业态ID（join表biz_format）\n\n\n',
  `shop_house_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商铺的门牌号\n\n\n',
  `is_shop_enabled` int(1) DEFAULT NULL COMMENT '商铺是否启用：启用/停用(1/0)\n\n\n',
  `shop_logo_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商铺LOGO路径\n\n\n',
  `shop_tel` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系方式(电话号码)\n\n\n',
  `shop_descript` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '商铺介绍\n\n\n',
  `add_shop_time` datetime(0) DEFAULT NULL COMMENT '商铺创建时间\n        \n\n\n',
  `shop_checkin_time` datetime(0) DEFAULT NULL COMMENT '商铺入驻日期\n\n\n',
  `shop_weight` int(11) DEFAULT NULL COMMENT '商铺权重\n\n\n',
  PRIMARY KEY (`shop_id`) USING BTREE,
  UNIQUE INDEX `shop_number`(`shop_number`) USING BTREE COMMENT '编号唯一',
  UNIQUE INDEX `shop_name`(`shop_name`) USING BTREE COMMENT '商铺名称唯一',
  INDEX `floor_id`(`floor_id`) USING BTREE,
  INDEX `biz_format_id`(`biz_format_id`) USING BTREE,
  CONSTRAINT `biz_shop_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `biz_floor` (`floor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_shop
-- ----------------------------
INSERT INTO `biz_shop` VALUES ('015537b36aa849cb8096bc2111ffa2f5', 'A002', '特克斯', 'tekesi', 1, 3, 'L1A002', 0, 'uploadImg/business/2018-06-27/526BA4989A9E45298A6BAAF3F32AD7F5.png', '********', '********', '2018-06-27 11:38:55', NULL, 1);
INSERT INTO `biz_shop` VALUES ('03b2c677cddd488fbe59a99de4a91cca', 'L1086', '一线小生', 'yixianxiaosheng', 2, 5, 'L1086', 1, 'uploadImg/business/2018-06-28/8123AD7685F645A3B93CAD50832BF4C4.png', NULL, NULL, '2018-06-28 16:49:32', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('1160286482524ff29598a7283a8064d9', '添加', '商铺', 'shangpu', 2, 5, 'q', 1, 'uploadImg/business/2018-06-28/1C02C1359DBB45F1A43FC1B159A3BD68.jpg', '32', '23', '2018-06-28 10:37:19', NULL, 323);
INSERT INTO `biz_shop` VALUES ('1b08dc2072f945eda48b19421567283e', 'A009', 'shop.v1', 'shop.v1', 3, 3, 'L3A008', 1, 'uploadImg/business/2018-06-27/9486D8051E984EBCB2690C8CC4D04057.png', '**************', '**************', '2018-06-27 14:51:47', NULL, 2);
INSERT INTO `biz_shop` VALUES ('2622604d87dc4a6899df26634d2bb057', '12424', '4124', '4124', 2, 5, '123', 1, 'uploadImg/business/2018-06-27/7FD03430F06E46969E94B96155CCF0C5.jpg', '122', '12', '2018-06-27 14:45:37', NULL, 12);
INSERT INTO `biz_shop` VALUES ('330f65162ef4447d9ee1de05c7249d4f', '@13', '213@', '213@', 14, 41, '12', 1, 'uploadImg/business/20180708/CED9C9F28FC54EBF9FC77B5AE3ECCDEA.png', NULL, '', '2018-07-06 10:34:57', NULL, 100);
INSERT INTO `biz_shop` VALUES ('44f562964e014a7caa9d2a7458b26db4', 'bc0001', '张大厨', 'zhangdachu', 2, 5, 'bc0001', 1, 'uploadImg/business\\2018-07-02\\94507260C331443D8B6DC171D6B69827.png', '22332-222', '213123哈哈哈哈哈', '2018-07-02 10:46:29', NULL, 11);
INSERT INTO `biz_shop` VALUES ('517d10cb9d274a97b67ad2e719fd4798', 'B1016', '张亮麻辣烫', 'zhangliangmalatang', 1, 5, 'B1016a', 1, 'uploadImg/business/2018-07-06/ED44EB0F798146D2B5FEC86CC39CAE91.png', '027-84567654转123', '黑龙江省张亮餐饮有限公司,是一家集品牌管理、美食研发、原料供应、餐饮连锁、特许经营于一体的的餐饮管理机构。张亮麻辣烫是黑龙江省张亮餐饮有限公司重点打造的餐饮企业', '2018-06-28 17:37:57', NULL, 100);
INSERT INTO `biz_shop` VALUES ('54e6490d470941278e6acb747049c40c', 'L4050', '欢乐思碧客', 'huanlesibike', 3, 5, 'L4050', 1, 'uploadImg/business/2018-06-28/B1D5A07AD5E245E5819E13B56FBE8B30.png', NULL, NULL, '2018-06-28 15:05:06', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('6ab8826a10e94573a4b84ad3ff456509', 'shop0001', '商铺测试1', 'shangpuceshi1', 1, 5, 'B10010', 1, 'uploadImg/business/2018-06-27/50C45E05F0234DCAA8D26B60A01B2AC9.png', '223333', '3333', '2018-06-27 14:10:52', NULL, 22);
INSERT INTO `biz_shop` VALUES ('73e71d7650c8437fad91ba3c22d32267', 'A001', '食惟天', 'shiweitian', 2, 5, 'F1A001', 0, 'uploadImg/business/2018-06-28/E869FA2C14EF4D808F5C87E9D1961E12.jpg', '***********', '***********', '2018-06-26 18:08:09', NULL, 1);
INSERT INTO `biz_shop` VALUES ('7c0f5c01c1154d87b44ed43843cd6672', '商铺', '添加', 'tianjia', 3, 3, '2133', 1, 'uploadImg/business/2018-06-28/6BD4B05BDD0E4CDE8718814B8F595C92.jpg', '12', '12', '2018-06-28 10:40:52', NULL, 2);
INSERT INTO `biz_shop` VALUES ('7cbedcf49838441892a76ed5a19422ed', 'L4054', '厕所串串', 'cesuochuanchuan', 3, 5, 'L4054', 0, 'uploadImg/business/2018-06-28/F9C33B655FE04E7986B363DDAA984D9A.png', NULL, NULL, '2018-06-28 15:07:01', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('8a287846a93a407d80ebea4895459ae7', 'L4019', '吧啦嘴', 'balazui', 2, 5, 'L4019', 0, 'uploadImg/business/2018-06-28/AF4FFC969646485AB61801CD4A361CEB.png', NULL, NULL, '2018-06-28 16:46:23', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('8e638889727749a4be00734570d5d831', '10010', '10091', '10091', 1, 3, '12131', 1, 'uploadImg/business/2018-06-28/E155C5E4702A4B308193414B8964A7E2.jpg', '1', '123', '2018-06-27 17:30:37', NULL, 13);
INSERT INTO `biz_shop` VALUES ('91410d7283c24c25ba35d6174f4150d1', 'L1007', '小熊饼干', 'xiaoxiongbinggan', 3, 5, 'L1007', 1, 'uploadImg/business/2018-06-28/127BFEA1ADDD407CB88A958FDC3A6407.png', NULL, NULL, '2018-06-28 14:58:51', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('93f81921cd5245f38559c3090b5848bc', '10086', '10087', '10087', 2, 3, '10099', 1, 'uploadImg/business/2018-06-28/2605A38B81B84A3282E71A7F157CDD70.jpg', '11', '3', '2018-06-28 09:50:36', NULL, 2);
INSERT INTO `biz_shop` VALUES ('a20e8e5b4d0e4d4eb635b11550322e7d', 'zzzzzz', 'zzzzz', 'zzzzz', 11, 9, 'afrg', 1, 'uploadImg/business/2018-07-03/C50EDDB3798040B3A3C7616CB9DBE150.png', '1246246', '', '2018-07-03 19:27:26', NULL, 21);
INSERT INTO `biz_shop` VALUES ('aba12bde1d2a436f8f50a0d2dc9b601d', 'A10086', '10086', '10086', 3, 2, '10010', 1, 'uploadImg/business/2018-06-27/B917FFED4339492A93A4B0585AF04B7E.jpg', '12', '12', '2018-06-27 17:19:58', NULL, 12);
INSERT INTO `biz_shop` VALUES ('b2f766790bda4b05a1aae874c2695052', 'B1003A', '老翟板面', 'laozhaibanmian', 1, 5, 'B1003A1', 1, 'uploadImg/business/2018-06-28/9A0467797F99443A9FC3FDE484F35B9A.png', '027-87654321转123', '徐州老翟餐饮管理有限公司创始人翟广法先生依托徐州得天独厚的饮食文化条件，潜心挖掘彭祖烹饪养生文化精华，集行业多家板面之长，结合现代营养健康需要，经十余年不懈努力，研究开发了\"老翟板面\"。 \n\"老翟板面\"光滑劲道，汤浓味好，鲜香袭人，其面中大块牛肉更为翟广法先生精心研制而成。老翟板面中的牛肉，以几十种天然配料与优质牛肉经数道工艺，精心加工而成，其选料考究，工艺独特，入口醇香，嚼劲十足，令人回味，赞不绝口。更有顾客赞曰：千吃、万吃不如老翟板面牛肉好吃，因而称之为\"老翟牛肉，真材实料\"。', '2018-06-28 15:02:21', NULL, 100);
INSERT INTO `biz_shop` VALUES ('d3e8e8fd9b6b4a2d83f80329eb473fb7', 'L2066', '丁三宝', 'dingsanbao', 3, 5, 'L2066', 1, 'uploadImg/business/2018-06-28/74E4E4F209F34774943CEF6720F70856.png', NULL, NULL, '2018-06-28 15:01:02', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('eb96756a00944585a7e47df6b2515c86', 'B23', '@3', '@3', 9, 7, '231', 1, 'uploadImg/business/2018-07-03/A00606232E8A4AE4930FCB6B52A174EF.jpg', NULL, '', '2018-07-03 19:19:12', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('f155dc97565b4e0e9cd31f4b64999e8f', 'B1015', '吃噻酸菜鱼', 'chisaisuancaiyu', 3, 5, 'B1015', 1, 'uploadImg/business/2018-06-28/9A0467797F99443A9FC3FDE484F35B9A.png', NULL, NULL, '2018-06-28 15:03:18', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('f4f1864944f5480593ed03fabd5d844d', 'cheshi', '123', '123', 9, 9, '213', 0, 'uploadImg/business/2018-07-02/D42265A23C5247C1BE768A0CB611D699.jpg', '123', '21323213', '2018-07-02 09:31:06', NULL, 214);

-- ----------------------------
-- Table structure for biz_shop_visit
-- ----------------------------
DROP TABLE IF EXISTS `biz_shop_visit`;
CREATE TABLE `biz_shop_visit`  (
  `shop_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺ID（join表biz_shop查询商铺名称）',
  `shop_visit_amount` decimal(65, 0) DEFAULT NULL COMMENT '商铺访问量',
  `shop_visit_time` datetime(0) DEFAULT NULL COMMENT '商铺访问时间（更新访问量时）',
  PRIMARY KEY (`shop_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_shop_visit
-- ----------------------------
INSERT INTO `biz_shop_visit` VALUES ('10010', 6, '2018-07-06 09:05:30');
INSERT INTO `biz_shop_visit` VALUES ('10086', 3, '2018-07-08 03:34:32');
INSERT INTO `biz_shop_visit` VALUES ('12424', 3, '2018-07-05 09:16:33');
INSERT INTO `biz_shop_visit` VALUES ('@13', 1, '2018-07-08 03:35:19');
INSERT INTO `biz_shop_visit` VALUES ('A001', 1, '2018-07-06 05:32:02');
INSERT INTO `biz_shop_visit` VALUES ('A002', 30, '2018-07-06 10:32:56');
INSERT INTO `biz_shop_visit` VALUES ('A10086', 3, '2018-07-08 03:06:44');
INSERT INTO `biz_shop_visit` VALUES ('B1003A', 13, '2018-07-08 02:57:28');
INSERT INTO `biz_shop_visit` VALUES ('B1015', 6, '2018-07-08 02:56:12');
INSERT INTO `biz_shop_visit` VALUES ('B1016', 92, '2018-07-08 02:58:06');
INSERT INTO `biz_shop_visit` VALUES ('B23', 7, '2018-07-06 04:02:04');
INSERT INTO `biz_shop_visit` VALUES ('bc0001', 1, '2018-07-08 02:30:21');
INSERT INTO `biz_shop_visit` VALUES ('cheshi', 1, '2018-07-06 05:31:43');
INSERT INTO `biz_shop_visit` VALUES ('L1007', 6, '2018-07-08 03:13:35');
INSERT INTO `biz_shop_visit` VALUES ('L1086', 0, '2018-06-21 19:18:25');
INSERT INTO `biz_shop_visit` VALUES ('L2066', 3, '2018-07-08 03:06:16');
INSERT INTO `biz_shop_visit` VALUES ('L4019', 0, '2018-06-21 19:15:00');
INSERT INTO `biz_shop_visit` VALUES ('L4050', 0, '2018-06-21 17:25:17');
INSERT INTO `biz_shop_visit` VALUES ('L4054', 0, '2018-06-21 17:27:21');
INSERT INTO `biz_shop_visit` VALUES ('shop0001', 9, '2018-07-06 09:36:29');
INSERT INTO `biz_shop_visit` VALUES ('zzzzzz', 1, '2018-07-06 05:15:35');
INSERT INTO `biz_shop_visit` VALUES ('商铺', 2, '2018-07-06 09:36:20');
INSERT INTO `biz_shop_visit` VALUES ('添加', 4, '2018-07-08 02:30:34');

-- ----------------------------
-- Table structure for biz_terminal
-- ----------------------------
DROP TABLE IF EXISTS `biz_terminal`;
CREATE TABLE `biz_terminal`  (
  `terminal_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '终端ID（使用uuid）\n\n\n',
  `terminal_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端编号\n\n\n',
  `terminal_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端名称',
  `terminal_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端名称\n\n\n',
  `terminal_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端类型(横屏/竖屏)',
  `terminal_location` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端位置',
  `terminal_rotation_angle` int(11) DEFAULT NULL COMMENT '旋转角度(度)\n\n\n',
  `is_terminal_online` int(1) DEFAULT NULL COMMENT '终端是否在线\n\n\n',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态：未删除/删除(1/0)\n\n\n',
  `add_terminal_time` datetime(0) DEFAULT NULL COMMENT '终端创建时间\n\n\n',
  `register_terminal_time` datetime(0) DEFAULT NULL COMMENT '终端注册时间\n\n\n',
  `floor_id` int(11) DEFAULT NULL COMMENT '楼层ID\n      \n\n\n',
  `terminal_switch_time` datetime(0) DEFAULT NULL COMMENT '开关机时间\n\n\n',
  `terminal_platform` int(11) DEFAULT NULL COMMENT '终端平台\n\n\n',
  PRIMARY KEY (`terminal_id`) USING BTREE,
  UNIQUE INDEX `terminal_number`(`terminal_number`) USING BTREE COMMENT '编号唯一',
  UNIQUE INDEX `terminal_name`(`terminal_name`) USING BTREE COMMENT '终端名称唯一',
  INDEX `floor_id`(`floor_id`) USING BTREE,
  CONSTRAINT `biz_terminal_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `biz_floor` (`floor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_terminal
-- ----------------------------
INSERT INTO `biz_terminal` VALUES ('05dc948fa6d8475e9b6981a3b844e872', NULL, NULL, NULL, '2', '', 0, 0, 1, '2018-07-04 10:44:43', NULL, 7, NULL, 2);
INSERT INTO `biz_terminal` VALUES ('28162802ec644112a0658fd086a3fb0c', NULL, '终端8', '192.168.1.103', '2', 'L00CF', 0, 0, 1, '2018-07-02 10:25:12', NULL, 1, '2018-07-01 20:06:29', 2);
INSERT INTO `biz_terminal` VALUES ('3a73aac14ee44211bf5ae64aa1f0e768', 'T0001', 'terminal.v1', '192.168.1.103', '2', 'c001', 20, 0, 0, '2018-06-26 18:23:03', NULL, 2, '2018-07-06 08:02:24', 2);
INSERT INTO `biz_terminal` VALUES ('486641f5cb1746f686aa7eca1477d917', '07083', '二维码07083', NULL, '0', '五楼扶梯', 45, 0, 0, '2018-07-08 01:07:51', NULL, 15, '2018-07-08 02:16:52', 0);
INSERT INTO `biz_terminal` VALUES ('58d1119784664b24979b1d218184dff2', 'TEAMTER0001', '终端1', '192.168.1.186', '2', '二楼太阳厅左梯1', 90, 0, 0, '2018-06-27 15:03:17', '2018-07-02 09:25:32', 2, '2018-07-08 03:19:54', 2);
INSERT INTO `biz_terminal` VALUES ('73adaa68f4f94704a60da5d612593c31', 'lsj001', '刘世进测试终端', '192.168.1.186', '0', '一楼手扶梯左', 0, 0, 0, '2018-06-27 18:35:37', NULL, 1, '2018-07-06 08:02:24', 2);
INSERT INTO `biz_terminal` VALUES ('8352b2b314cf4beea22052dff3dd9d04', '2225', '233', '192.168.1.186', '0', '2222', 0, 0, 0, '2018-06-27 18:20:18', '2018-06-29 15:10:21', 2, '2018-07-06 08:02:24', 1);
INSERT INTO `biz_terminal` VALUES ('84b0091bdb37435dad19dfa00a15a993', NULL, '终端6', '192.168.1.103', '2', 'L2002', 0, 0, 1, '2018-07-02 10:17:48', NULL, 2, '2018-07-01 20:08:24', 2);
INSERT INTO `biz_terminal` VALUES ('9c7b5fe5d4dc482ba2fd41b0e6db5df2', '12411', 'T9', NULL, '2', '', 0, 0, 0, '2018-07-03 04:00:28', NULL, 11, '2018-07-06 08:02:24', 2);
INSERT INTO `biz_terminal` VALUES ('a8048e352d6f435aabfd8ad6622e3822', 'term', 'T9wz', '192.168.1.186', '2', 'L002', 0, 0, 0, '2018-07-02 10:47:50', '2018-07-06 02:56:27', 6, '2018-07-06 08:02:24', 2);
INSERT INTO `biz_terminal` VALUES ('b0c15069c1dd4479b773885d2b43835d', 'teamter0002', '终端2', '192.168.1.186', '1', '一楼手扶梯左1', 180, 0, 0, '2018-06-27 15:04:56', NULL, 1, '2018-07-06 08:02:24', 1);
INSERT INTO `biz_terminal` VALUES ('bd041a3016524195aae102471d3ea7d3', '1234', 'android2', '192.168.1.191', '0', '12', 22, 0, 0, '2018-07-03 03:26:12', '2018-07-03 03:26:28', 9, '2018-07-06 08:02:24', 1);
INSERT INTO `biz_terminal` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', NULL, NULL, '192.168.1.186', '1', '11111', 180, 0, 1, '2018-06-27 17:55:13', NULL, 2, '2018-07-02 14:08:13', 1);
INSERT INTO `biz_terminal` VALUES ('bdb91efb00794b2e8dbbcb74a3663a95', 'lsj010', '刘世进测试终端10', '192.168.1.186', '2', '三楼阳光厅扶梯左', 90, 0, 0, '2018-07-06 09:41:36', '2018-07-06 09:42:02', 3, '2018-07-08 01:46:08', 2);
INSERT INTO `biz_terminal` VALUES ('c574779a04f54e05a36c7f7ecc72c84b', '07081', 'windows终端', '192.168.1.186', '2', '三楼电梯左', 180, 1, 0, '2018-07-08 01:39:27', '2018-07-08 01:44:32', 3, '2018-07-08 04:00:01', 2);
INSERT INTO `biz_terminal` VALUES ('e604a3353edf40d4ae5df167d5689a82', NULL, 'zhe', '113.57.29.131', '1', 'wuhan', 0, 0, 1, '2018-07-02 01:55:30', NULL, 3, '2018-07-01 20:20:45', 1);
INSERT INTO `biz_terminal` VALUES ('ea6bbb6515bc48cb9442b06138f2e694', '123456', 'android1', '192.168.1.191', '1', '1212121', 0, 0, 0, '2018-07-03 01:15:54', '2018-07-03 01:16:00', 9, '2018-07-06 08:02:24', 1);
INSERT INTO `biz_terminal` VALUES ('ec0ba8dab5c54916829123402a21d5c9', '07082', '测试终端07082', '192.168.1.112', '1', '会议室', 90, 1, 0, '2018-07-08 00:59:29', '2018-07-08 01:01:05', 3, '2018-07-08 04:01:59', 1);

-- ----------------------------
-- Table structure for biz_terminal_visit
-- ----------------------------
DROP TABLE IF EXISTS `biz_terminal_visit`;
CREATE TABLE `biz_terminal_visit`  (
  `terminal_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '终端ID',
  `terminal_visit_amount` decimal(65, 0) DEFAULT NULL COMMENT '终端访问量',
  `terminal_visit_time` datetime(0) DEFAULT NULL COMMENT '终端访问时间（更新访问量时）',
  PRIMARY KEY (`terminal_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_terminal_visit
-- ----------------------------
INSERT INTO `biz_terminal_visit` VALUES ('07081', 43, '2018-07-08 04:03:35');
INSERT INTO `biz_terminal_visit` VALUES ('07082', 0, '2018-07-08 00:59:29');
INSERT INTO `biz_terminal_visit` VALUES ('07083', 33, '2018-07-08 03:59:46');
INSERT INTO `biz_terminal_visit` VALUES ('1234', 26, '2018-07-06 08:58:40');
INSERT INTO `biz_terminal_visit` VALUES ('123456', 0, '2018-07-01 19:41:41');
INSERT INTO `biz_terminal_visit` VALUES ('12411', 0, '2018-06-21 08:15:41');
INSERT INTO `biz_terminal_visit` VALUES ('2225', 5, '2018-07-06 09:06:38');
INSERT INTO `biz_terminal_visit` VALUES ('lsj001', 91, '2018-07-06 10:16:18');
INSERT INTO `biz_terminal_visit` VALUES ('lsj010', 16, '2018-07-08 01:39:39');
INSERT INTO `biz_terminal_visit` VALUES ('T0001', 0, '2018-07-01 22:27:50');
INSERT INTO `biz_terminal_visit` VALUES ('TEAMTER0001', 0, '2018-07-02 00:29:50');
INSERT INTO `biz_terminal_visit` VALUES ('teamter0002', 25, '2018-07-01 22:24:05');
INSERT INTO `biz_terminal_visit` VALUES ('term', 2, '2018-07-06 05:50:03');

-- ----------------------------
-- Table structure for screensaver_material_relation
-- ----------------------------
DROP TABLE IF EXISTS `screensaver_material_relation`;
CREATE TABLE `screensaver_material_relation`  (
  `screensaver_id` int(11) NOT NULL COMMENT '屏保ID\n\n\n',
  `screensaver_material_id` int(11) NOT NULL COMMENT '屏保素材ID',
  UNIQUE INDEX `screensaver_material_index`(`screensaver_id`, `screensaver_material_id`) USING BTREE COMMENT '屏保-屏保素材联合唯一索引'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of screensaver_material_relation
-- ----------------------------
INSERT INTO `screensaver_material_relation` VALUES (9, 23);
INSERT INTO `screensaver_material_relation` VALUES (9, 27);
INSERT INTO `screensaver_material_relation` VALUES (10, 23);
INSERT INTO `screensaver_material_relation` VALUES (10, 24);
INSERT INTO `screensaver_material_relation` VALUES (10, 27);
INSERT INTO `screensaver_material_relation` VALUES (11, 27);
INSERT INTO `screensaver_material_relation` VALUES (11, 28);
INSERT INTO `screensaver_material_relation` VALUES (12, 23);
INSERT INTO `screensaver_material_relation` VALUES (12, 35);
INSERT INTO `screensaver_material_relation` VALUES (13, 23);
INSERT INTO `screensaver_material_relation` VALUES (13, 35);
INSERT INTO `screensaver_material_relation` VALUES (13, 38);
INSERT INTO `screensaver_material_relation` VALUES (14, 27);
INSERT INTO `screensaver_material_relation` VALUES (16, 26);
INSERT INTO `screensaver_material_relation` VALUES (16, 27);
INSERT INTO `screensaver_material_relation` VALUES (16, 28);
INSERT INTO `screensaver_material_relation` VALUES (16, 37);
INSERT INTO `screensaver_material_relation` VALUES (19, 25);
INSERT INTO `screensaver_material_relation` VALUES (19, 26);
INSERT INTO `screensaver_material_relation` VALUES (19, 27);
INSERT INTO `screensaver_material_relation` VALUES (21, 25);
INSERT INTO `screensaver_material_relation` VALUES (21, 26);
INSERT INTO `screensaver_material_relation` VALUES (21, 27);
INSERT INTO `screensaver_material_relation` VALUES (21, 35);
INSERT INTO `screensaver_material_relation` VALUES (21, 37);
INSERT INTO `screensaver_material_relation` VALUES (36, 25);
INSERT INTO `screensaver_material_relation` VALUES (36, 26);
INSERT INTO `screensaver_material_relation` VALUES (36, 27);
INSERT INTO `screensaver_material_relation` VALUES (36, 35);
INSERT INTO `screensaver_material_relation` VALUES (36, 37);
INSERT INTO `screensaver_material_relation` VALUES (37, 25);
INSERT INTO `screensaver_material_relation` VALUES (37, 27);
INSERT INTO `screensaver_material_relation` VALUES (38, 23);
INSERT INTO `screensaver_material_relation` VALUES (39, 23);
INSERT INTO `screensaver_material_relation` VALUES (39, 25);
INSERT INTO `screensaver_material_relation` VALUES (40, 35);
INSERT INTO `screensaver_material_relation` VALUES (40, 40);
INSERT INTO `screensaver_material_relation` VALUES (41, 42);
INSERT INTO `screensaver_material_relation` VALUES (41, 43);
INSERT INTO `screensaver_material_relation` VALUES (42, 35);
INSERT INTO `screensaver_material_relation` VALUES (42, 43);
INSERT INTO `screensaver_material_relation` VALUES (43, 28);
INSERT INTO `screensaver_material_relation` VALUES (43, 35);
INSERT INTO `screensaver_material_relation` VALUES (43, 43);
INSERT INTO `screensaver_material_relation` VALUES (44, 27);
INSERT INTO `screensaver_material_relation` VALUES (44, 42);
INSERT INTO `screensaver_material_relation` VALUES (50, 23);
INSERT INTO `screensaver_material_relation` VALUES (50, 42);
INSERT INTO `screensaver_material_relation` VALUES (50, 43);
INSERT INTO `screensaver_material_relation` VALUES (51, 35);
INSERT INTO `screensaver_material_relation` VALUES (53, 24);
INSERT INTO `screensaver_material_relation` VALUES (53, 37);
INSERT INTO `screensaver_material_relation` VALUES (53, 39);
INSERT INTO `screensaver_material_relation` VALUES (53, 41);
INSERT INTO `screensaver_material_relation` VALUES (53, 42);
INSERT INTO `screensaver_material_relation` VALUES (54, 37);
INSERT INTO `screensaver_material_relation` VALUES (54, 40);
INSERT INTO `screensaver_material_relation` VALUES (54, 41);
INSERT INTO `screensaver_material_relation` VALUES (55, 23);
INSERT INTO `screensaver_material_relation` VALUES (55, 27);
INSERT INTO `screensaver_material_relation` VALUES (55, 28);
INSERT INTO `screensaver_material_relation` VALUES (55, 35);
INSERT INTO `screensaver_material_relation` VALUES (55, 37);
INSERT INTO `screensaver_material_relation` VALUES (55, 40);

-- ----------------------------
-- Table structure for screensaver_published_terminal_relation
-- ----------------------------
DROP TABLE IF EXISTS `screensaver_published_terminal_relation`;
CREATE TABLE `screensaver_published_terminal_relation`  (
  `screensaver_id` int(11) NOT NULL COMMENT '屏保ID\n\n\n',
  `terminal_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '终端已发布的ID\n\n\n',
  `screensaver_publish_time` datetime(0) DEFAULT NULL COMMENT '屏保发布时间',
  INDEX `screensaver_terminal_index`(`screensaver_id`, `terminal_id`) USING BTREE COMMENT '屏保终端联合唯一索引'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of screensaver_published_terminal_relation
-- ----------------------------
INSERT INTO `screensaver_published_terminal_relation` VALUES (40, '3a73aac14ee44211bf5ae64aa1f0e768', '2018-07-02 08:23:47');
INSERT INTO `screensaver_published_terminal_relation` VALUES (19, 'b0c15069c1dd4479b773885d2b43835d', '2018-07-02 10:09:07');
INSERT INTO `screensaver_published_terminal_relation` VALUES (36, 'ea6bbb6515bc48cb9442b06138f2e694', '2018-07-03 01:16:41');
INSERT INTO `screensaver_published_terminal_relation` VALUES (38, 'bd041a3016524195aae102471d3ea7d3', '2018-07-03 03:27:19');
INSERT INTO `screensaver_published_terminal_relation` VALUES (40, '8352b2b314cf4beea22052dff3dd9d04', '2018-07-03 03:27:48');
INSERT INTO `screensaver_published_terminal_relation` VALUES (54, '73adaa68f4f94704a60da5d612593c31', '2018-07-04 15:41:32');
INSERT INTO `screensaver_published_terminal_relation` VALUES (54, '58d1119784664b24979b1d218184dff2', '2018-07-04 15:41:32');
INSERT INTO `screensaver_published_terminal_relation` VALUES (54, 'a8048e352d6f435aabfd8ad6622e3822', '2018-07-06 02:59:18');
INSERT INTO `screensaver_published_terminal_relation` VALUES (55, 'ec0ba8dab5c54916829123402a21d5c9', '2018-07-08 01:55:24');
INSERT INTO `screensaver_published_terminal_relation` VALUES (55, 'c574779a04f54e05a36c7f7ecc72c84b', '2018-07-08 01:58:24');

-- ----------------------------
-- Table structure for shop_picture_relation
-- ----------------------------
DROP TABLE IF EXISTS `shop_picture_relation`;
CREATE TABLE `shop_picture_relation`  (
  `shop_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺ID',
  `shop_picture_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺图片路径\n\n\n',
  `shop_picture_size` bigint(20) DEFAULT NULL COMMENT '商铺图片大小\n        \n\n\n',
  `shop_picture_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '商铺图片原名',
  INDEX `shop_picture_index`(`shop_id`, `shop_picture_path`) USING BTREE COMMENT 'shop_picture_index'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_picture_relation
-- ----------------------------
INSERT INTO `shop_picture_relation` VALUES ('8e638889727749a4be00734570d5d831', 'uploadImg/business/2018-06-27/764EFA8B45DA4B63B1DC1DB0AF642989.jpg', 855408, '764EFA8B45DA4B63B1DC1DB0AF642989.jpg');
INSERT INTO `shop_picture_relation` VALUES ('93f81921cd5245f38559c3090b5848bc', 'uploadImg/business/2018-06-28/D32B64756633482C8A3DD33E19F3B467.jpg', 855408, 'D32B64756633482C8A3DD33E19F3B467.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1160286482524ff29598a7283a8064d9', 'uploadImg/business/2018-06-28/94A22BD1C4B44019A9F3C68782840C25.jpg', 855408, '94A22BD1C4B44019A9F3C68782840C25.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1160286482524ff29598a7283a8064d9', 'uploadImg/business/2018-06-28/C7F13F2F3B154EA28F54F77194A980FD.jpg', 558709, 'C7F13F2F3B154EA28F54F77194A980FD.jpg');
INSERT INTO `shop_picture_relation` VALUES ('7c0f5c01c1154d87b44ed43843cd6672', 'uploadImg/business/2018-06-28/8FDADDC6B5464756BBEA10002BA9E37F.jpg', 200430, '8FDADDC6B5464756BBEA10002BA9E37F.jpg');
INSERT INTO `shop_picture_relation` VALUES ('7c0f5c01c1154d87b44ed43843cd6672', 'uploadImg/business/2018-06-28/C34993431A82442E95FA7D45E12DDEB6.jpg', 855408, 'C34993431A82442E95FA7D45E12DDEB6.jpg');
INSERT INTO `shop_picture_relation` VALUES ('f155dc97565b4e0e9cd31f4b64999e8f', 'uploadImg/business/2018-06-28/55BD4C893BC14CA5B3A1EE69E6BACB35.png', 13089, '55BD4C893BC14CA5B3A1EE69E6BACB35.png');
INSERT INTO `shop_picture_relation` VALUES ('aba12bde1d2a436f8f50a0d2dc9b601d', 'uploadImg/business/2018-06-27/A38FA21768FB4342B170B467F104A95E.jpg', 855408, 'A38FA21768FB4342B170B467F104A95E.jpg');
INSERT INTO `shop_picture_relation` VALUES ('aba12bde1d2a436f8f50a0d2dc9b601d', 'uploadImg/business/2018-06-28/097C83AA5BDF4A98B420A8635592B6C3.jpg', 200430, '097C83AA5BDF4A98B420A8635592B6C3.jpg');
INSERT INTO `shop_picture_relation` VALUES ('2622604d87dc4a6899df26634d2bb057', 'uploadImg/business/2018-06-27/F86E67AAD1194C2096C7558DA7439FBB.jpg', 130540, 'F86E67AAD1194C2096C7558DA7439FBB.jpg');
INSERT INTO `shop_picture_relation` VALUES ('2622604d87dc4a6899df26634d2bb057', 'uploadImg/business/2018-06-28/8B206CEE130840019C766A92351385DA.jpg', 200430, '8B206CEE130840019C766A92351385DA.jpg');
INSERT INTO `shop_picture_relation` VALUES ('015537b36aa849cb8096bc2111ffa2f5', 'uploadImg/business/2018-06-27/E8ED0903DC9B439FB60C52608C0F0175.jpg', 761489, 'E8ED0903DC9B439FB60C52608C0F0175.jpg');
INSERT INTO `shop_picture_relation` VALUES ('73e71d7650c8437fad91ba3c22d32267', 'uploadImg/business/2018-06-28/AAA97E6150F54792B2186C897B512D50.jpg', 181387, 'AAA97E6150F54792B2186C897B512D50.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1b08dc2072f945eda48b19421567283e', 'uploadImg/business/2018-06-29/E51954A563B34C18B935AEC7E6DD37D6.jpg', 181387, 'E51954A563B34C18B935AEC7E6DD37D6.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1b08dc2072f945eda48b19421567283e', 'uploadImg/business/2018-06-29/8D0BF4F791AF4E76BBF85AAC1E0E5FFF.jpg', 855408, '8D0BF4F791AF4E76BBF85AAC1E0E5FFF.jpg');
INSERT INTO `shop_picture_relation` VALUES ('6ab8826a10e94573a4b84ad3ff456509', 'uploadImg/business/2018-06-27/0CB35E35F7FB4161BE317DB69037716B.png', 17586, '0CB35E35F7FB4161BE317DB69037716B.png');
INSERT INTO `shop_picture_relation` VALUES ('f4f1864944f5480593ed03fabd5d844d', 'uploadImg/business/2018-07-02/20EAE8D7C0F4449D9FEDEE1FD96C20A1.jpg', 558709, '20EAE8D7C0F4449D9FEDEE1FD96C20A1.jpg');
INSERT INTO `shop_picture_relation` VALUES ('f4f1864944f5480593ed03fabd5d844d', 'uploadImg/business/2018-07-02/AC97C0503E574208A24B292A225EC471.jpg', 181387, 'AC97C0503E574208A24B292A225EC471.jpg');
INSERT INTO `shop_picture_relation` VALUES ('44f562964e014a7caa9d2a7458b26db4', 'uploadImg/business\\2018-07-02\\5D7B010023B5461AADE06EE12DAEC49A.png', 10153, '5D7B010023B5461AADE06EE12DAEC49A.png');
INSERT INTO `shop_picture_relation` VALUES ('44f562964e014a7caa9d2a7458b26db4', 'uploadImg/business\\2018-07-02\\F4AA3B28940B4B9EA3CB7967D2E13F21.png', 5453, 'F4AA3B28940B4B9EA3CB7967D2E13F21.png');
INSERT INTO `shop_picture_relation` VALUES ('517d10cb9d274a97b67ad2e719fd4798', 'uploadImg/business/2018-06-28/E2047AC9527240CEA455CDDE57E549DC.jpg', 855408, 'E2047AC9527240CEA455CDDE57E549DC.jpg');
INSERT INTO `shop_picture_relation` VALUES ('517d10cb9d274a97b67ad2e719fd4798', 'uploadImg/business/2018-07-06/8B3AE32245214B6C9B6F4FB0308274EC.png', 32691, '8B3AE32245214B6C9B6F4FB0308274EC.png');
INSERT INTO `shop_picture_relation` VALUES ('b2f766790bda4b05a1aae874c2695052', 'resources/uploadImg/business/2018-07-06/2E6322ACC988412D8B0A8BB58FBD7B51.jpg', 603246, '2E6322ACC988412D8B0A8BB58FBD7B51.jpg');
INSERT INTO `shop_picture_relation` VALUES ('b2f766790bda4b05a1aae874c2695052', 'resources/uploadImg/business/2018-07-06/5647607590BB496C84D01D02950F4DAA.jpg', 382490, '5647607590BB496C84D01D02950F4DAA.jpg');
INSERT INTO `shop_picture_relation` VALUES ('a20e8e5b4d0e4d4eb635b11550322e7d', 'uploadImg/business/2018-07-03/55F228D94FD74C01B13FB020EF681EE0.png', 5453, '55F228D94FD74C01B13FB020EF681EE0.png');
INSERT INTO `shop_picture_relation` VALUES ('a20e8e5b4d0e4d4eb635b11550322e7d', 'uploadImg/business/20180708/53EB9483A4C64CBEBB0AA8B011C2561D.jpg', 855408, '53EB9483A4C64CBEBB0AA8B011C2561D.jpg');
INSERT INTO `shop_picture_relation` VALUES ('eb96756a00944585a7e47df6b2515c86', 'resources/uploadImg/business/2018-07-06/71A24F70A36C4006A2BCBCA05431868B.jpg', 181387, '71A24F70A36C4006A2BCBCA05431868B.jpg');
INSERT INTO `shop_picture_relation` VALUES ('eb96756a00944585a7e47df6b2515c86', 'uploadImg/business/2018-07-03/8F4317032C584617BBA23067E133E705.jpg', 558709, '8F4317032C584617BBA23067E133E705.jpg');
INSERT INTO `shop_picture_relation` VALUES ('eb96756a00944585a7e47df6b2515c86', 'uploadImg/business/20180708/F4AE332A05FC4AD9B40017BC09D77E51.jpg', 181387, 'F4AE332A05FC4AD9B40017BC09D77E51.jpg');
INSERT INTO `shop_picture_relation` VALUES ('330f65162ef4447d9ee1de05c7249d4f', 'uploadImg/business/20180708/DBFC6C2CBD414FE2902437051B901D25.jpeg', 168192, 'DBFC6C2CBD414FE2902437051B901D25.jpeg');
INSERT INTO `shop_picture_relation` VALUES ('330f65162ef4447d9ee1de05c7249d4f', 'uploadImg/business/20180708/EFCCE2ED73AA4F43A9559A75455ECFB2.jpg', 558709, 'EFCCE2ED73AA4F43A9559A75455ECFB2.jpg');
INSERT INTO `shop_picture_relation` VALUES ('d3e8e8fd9b6b4a2d83f80329eb473fb7', 'uploadImg/business/20180708/31F55D2FB91E46C29662A08F9FC4E31E.jpeg', 168192, '31F55D2FB91E46C29662A08F9FC4E31E.jpeg');
INSERT INTO `shop_picture_relation` VALUES ('91410d7283c24c25ba35d6174f4150d1', 'uploadImg/business/20180708/988DDAFD5498452C9D491A30A10FDC0A.png', 14553, '988DDAFD5498452C9D491A30A10FDC0A.png');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID(uuid)',
  `user_loginname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登陆名',
  `user_password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户密码',
  `user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户昵称',
  `user_alias` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户别名',
  `user_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `user_wechat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户微信',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态：未删除/删除(1/0)',
  `add_user_time` datetime(0) DEFAULT NULL COMMENT '添加用户时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_loginname`(`user_loginname`) USING BTREE COMMENT '用户名唯一'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('5a0e886a08cf4c8880382ebebd7203b6', 'ftibw', 'e10adc3949ba59abbe56e057f20f883e', 'ssssevn', NULL, NULL, NULL, 0, '2018-07-02 19:22:46');
INSERT INTO `sys_user` VALUES ('bc06b905fa664f7aa73ef6edf1ae3d1d', 'tianzheng', '202cb962ac59075b964b07152d234b70', 'tianzheng', NULL, NULL, NULL, 0, '2018-07-01 15:24:44');
INSERT INTO `sys_user` VALUES ('ed9ad133664c4209b8fb133d6af74246', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '小明', '', '', '', 0, '2018-06-19 14:24:19');

-- ----------------------------
-- Table structure for terminal_first_page_relation
-- ----------------------------
DROP TABLE IF EXISTS `terminal_first_page_relation`;
CREATE TABLE `terminal_first_page_relation`  (
  `terminal_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '终端ID',
  `screensaver_material_id` int(11) NOT NULL COMMENT '首页素材ID',
  UNIQUE INDEX `terminal_first_page_index`(`terminal_id`, `screensaver_material_id`) USING BTREE COMMENT '终端首页素材去重'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terminal_first_page_relation
-- ----------------------------
INSERT INTO `terminal_first_page_relation` VALUES ('3a73aac14ee44211bf5ae64aa1f0e768', 1);
INSERT INTO `terminal_first_page_relation` VALUES ('3a73aac14ee44211bf5ae64aa1f0e768', 46);
INSERT INTO `terminal_first_page_relation` VALUES ('3a73aac14ee44211bf5ae64aa1f0e768', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('58d1119784664b24979b1d218184dff2', 46);
INSERT INTO `terminal_first_page_relation` VALUES ('58d1119784664b24979b1d218184dff2', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('73adaa68f4f94704a60da5d612593c31', 1);
INSERT INTO `terminal_first_page_relation` VALUES ('73adaa68f4f94704a60da5d612593c31', 47);
INSERT INTO `terminal_first_page_relation` VALUES ('73adaa68f4f94704a60da5d612593c31', 48);
INSERT INTO `terminal_first_page_relation` VALUES ('73adaa68f4f94704a60da5d612593c31', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('8352b2b314cf4beea22052dff3dd9d04', 46);
INSERT INTO `terminal_first_page_relation` VALUES ('8352b2b314cf4beea22052dff3dd9d04', 47);
INSERT INTO `terminal_first_page_relation` VALUES ('a8048e352d6f435aabfd8ad6622e3822', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('a8048e352d6f435aabfd8ad6622e3822', 58);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 46);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 47);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 54);
INSERT INTO `terminal_first_page_relation` VALUES ('bd041a3016524195aae102471d3ea7d3', 55);
INSERT INTO `terminal_first_page_relation` VALUES ('bdb91efb00794b2e8dbbcb74a3663a95', 46);
INSERT INTO `terminal_first_page_relation` VALUES ('bdb91efb00794b2e8dbbcb74a3663a95', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('c574779a04f54e05a36c7f7ecc72c84b', 48);
INSERT INTO `terminal_first_page_relation` VALUES ('c574779a04f54e05a36c7f7ecc72c84b', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('c574779a04f54e05a36c7f7ecc72c84b', 58);

-- ----------------------------
-- Table structure for visit_count_log
-- ----------------------------
DROP TABLE IF EXISTS `visit_count_log`;
CREATE TABLE `visit_count_log`  (
  `num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '(商铺/终端)编号',
  `terminal_ip` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '终端IP',
  `visit_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '程序执行信息',
  `log_time` datetime(0) DEFAULT NULL COMMENT '统计日志添加时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visit_count_log
-- ----------------------------
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 08:12:16');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 11:30:47');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 11:35:19');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 11:36:00');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 11:36:12');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 11:46:06');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:12:48');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:13:38');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:20:11');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:20:33');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:22:26');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:23:16');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:51:23');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 12:56:15');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-21 20:05:05');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.192', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-22 04:47:21');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.192', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-22 05:19:55');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-29 07:59:17');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0002', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-29 08:12:57');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.193', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-06-29 10:14:47');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-01 18:36:55');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-01 18:40:30');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-01 18:45:13');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-01 18:45:46');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-01 19:33:03');
INSERT INTO `visit_count_log` VALUES ('TEAMTER0001', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-01 22:24:06');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-02 07:02:53');
INSERT INTO `visit_count_log` VALUES ('12424', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-05 09:12:47');
INSERT INTO `visit_count_log` VALUES ('10086', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-05 09:12:57');
INSERT INTO `visit_count_log` VALUES ('12424', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-05 09:15:41');
INSERT INTO `visit_count_log` VALUES ('12424', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-05 09:16:33');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 01:36:52');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 01:36:56');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 01:37:04');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 01:37:56');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 01:38:08');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 01:54:49');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:08:48');
INSERT INTO `visit_count_log` VALUES ('10010', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:08:56');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:08:59');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:09:01');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:09:27');
INSERT INTO `visit_count_log` VALUES ('10010', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:09:56');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:10:11');
INSERT INTO `visit_count_log` VALUES ('10010', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:10:13');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:10:16');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:10:17');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:10:20');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:17:46');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:17:51');
INSERT INTO `visit_count_log` VALUES ('10010', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:17:53');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:19:54');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:20:01');
INSERT INTO `visit_count_log` VALUES ('term', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 03:20:48');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:26:28');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:26:41');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:29:39');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:30:09');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:33:11');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:33:21');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:35:52');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:36:50');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:37:23');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:38:38');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:42:50');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:56:51');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 03:59:06');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:00:23');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:01:29');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:01:32');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:01:34');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:01:41');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:02:01');
INSERT INTO `visit_count_log` VALUES ('B23', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:02:04');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:38:14');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:38:28');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:38:41');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:40:04');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:41:25');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:42:05');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:43:07');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:43:29');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:44:27');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:45:04');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:46:27');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:46:54');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:47:22');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:48:15');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:48:47');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:49:24');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:51:33');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:51:44');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:52:07');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:52:34');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:58:37');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 04:59:45');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:06:18');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:09:06');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:09:55');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:10:34');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:13:46');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:14:01');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:14:29');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:14:39');
INSERT INTO `visit_count_log` VALUES ('zzzzzz', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:15:35');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:15:38');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:28:35');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:29:54');
INSERT INTO `visit_count_log` VALUES ('添加', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:41');
INSERT INTO `visit_count_log` VALUES ('cheshi', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:43');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:45');
INSERT INTO `visit_count_log` VALUES ('10010', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:48');
INSERT INTO `visit_count_log` VALUES ('商铺', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:50');
INSERT INTO `visit_count_log` VALUES ('10086', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:52');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:31:53');
INSERT INTO `visit_count_log` VALUES ('A001', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:32:02');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:32:48');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:33:08');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:35:07');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:35:59');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:37:17');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:38:22');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:39:32');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:40:27');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:41:05');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:41:23');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:41:30');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:41:31');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:42:05');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:42:09');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:42:21');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:43:20');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:44:57');
INSERT INTO `visit_count_log` VALUES ('添加', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:45:02');
INSERT INTO `visit_count_log` VALUES ('添加', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:45:08');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:45:16');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:45:40');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:47:26');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:48:25');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:49:43');
INSERT INTO `visit_count_log` VALUES ('term', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 05:50:03');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:50:10');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:51:05');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:51:36');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:51:52');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:53:48');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:54:46');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:56:52');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:57:56');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:58:18');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:58:38');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 05:58:46');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:01:17');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:01:44');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:04:08');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:07:05');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:08:08');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:08:53');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:08:58');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:11:02');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:12:10');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:31:02');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:31:39');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:32:46');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:33:08');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:33:33');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:35:42');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:38:32');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:38:59');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 06:57:58');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 07:21:11');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 07:22:11');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 07:35:58');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:47:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:49:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:52:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:52:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:54:07');
INSERT INTO `visit_count_log` VALUES ('A001', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:54:14');
INSERT INTO `visit_count_log` VALUES ('A001', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:57:27');
INSERT INTO `visit_count_log` VALUES ('A001', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:57:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:57:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 07:57:43');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:04:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:12:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:18:32');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:23:56');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:24:17');
INSERT INTO `visit_count_log` VALUES ('2225', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:24:33');
INSERT INTO `visit_count_log` VALUES ('2225', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:24:37');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:25:56');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:12');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:34');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:40');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:41');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:52');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:54');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:56');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:26:59');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:00');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:13');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:15');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:15');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:21');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:25');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:29');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:32');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:34');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:35');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:36');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:37');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:38');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:39');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:40');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:40');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:42');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:45');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:49');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:52');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:53');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:53');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:54');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:55');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:55');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:56');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:27:56');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:29:38');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:29:43');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:29:50');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:29:54');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:29:56');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:00');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:01');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:03');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:07');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:09');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:10');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:11');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:11');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:12');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:12');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:27');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:37');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:49');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:30:58');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:04');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:08');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:12');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:16');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:22');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:31');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:38');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:31:41');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:32:33');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:32:48');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:33:17');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:35:23');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:35:25');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:35:32');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:35:40');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:35:45');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:35:50');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:37:55');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:04');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:16');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:30');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:30');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:33');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:37');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:41');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:42');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:58');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:39:59');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:40:07');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:40:08');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:40:10');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:44:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:44:42');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:44:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:44:56');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:39');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:41');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:44');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:46');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:49');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:51');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:46:54');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:47:42');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:48:02');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:50:59');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:02');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:02');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:03');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:03');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:04');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:06');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:10');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:11');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:11');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:13');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:23');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:51:23');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:10');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:10');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:11');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:13');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:13');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:52:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:56:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:57:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:57:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:57:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:57:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:57:48');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:58:27');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:58:31');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:58:38');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:58:39');
INSERT INTO `visit_count_log` VALUES ('1234', '192.168.1.153', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 08:58:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:58:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:58:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:58:57');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:59:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:59:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 08:59:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:23');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:00:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:01:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:01:50');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:01:58');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:02:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:02:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:02:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:02:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:02:44');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:02:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:04:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:04:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:05:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:05:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:05:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:05:21');
INSERT INTO `visit_count_log` VALUES ('10010', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:05:30');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:33');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:33');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:45');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:45');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:45');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:46');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:05:52');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:06:00');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:06:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:06:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:06:24');
INSERT INTO `visit_count_log` VALUES ('2225', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:06:28');
INSERT INTO `visit_count_log` VALUES ('2225', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:06:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:06:29');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:06:31');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:06:37');
INSERT INTO `visit_count_log` VALUES ('2225', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:06:38');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:07:38');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:08:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:08:58');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:08:59');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:09:02');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:09:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:09:48');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:09:49');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:10:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:10:43');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:11:03');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:11:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:11:23');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:11:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:12:03');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:12:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:12:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:13:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:13:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:14:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:14:11');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:14:34');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:14:45');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:14:54');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:15:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:16:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:16:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:17:29');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:17:46');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:17:48');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:17:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:18:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:19:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:19:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:19:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:19:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:20:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:20:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:21:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:21:43');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:22:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:22:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:22:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:22:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:24:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:24:06');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:24:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:24:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:28:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:28:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:28:59');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:29:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:29:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:30:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:30:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:30:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:31:27');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:31:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:31:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:32:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:32:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:34:26');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:34:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:34:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:34:43');
INSERT INTO `visit_count_log` VALUES ('B1015', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:35:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:35:57');
INSERT INTO `visit_count_log` VALUES ('B1015', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:09');
INSERT INTO `visit_count_log` VALUES ('B1015', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:16');
INSERT INTO `visit_count_log` VALUES ('商铺', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:20');
INSERT INTO `visit_count_log` VALUES ('B1015', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:25');
INSERT INTO `visit_count_log` VALUES ('shop0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:29');
INSERT INTO `visit_count_log` VALUES ('B1015', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:36');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:36:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:36:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:36:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:37:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:37:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:37:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:37:38');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:37:56');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:38:32');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:40:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:40:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:40:59');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:41:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:41:19');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:42:11');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:42:17');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:42:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:42:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:42:43');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:42:48');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:42:57');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:43:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:45:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:46:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:47:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:47:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:47:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:48:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.191', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:48:33');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:48:52');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:48:53');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:48:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:49:50');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:51:26');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:51:26');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:51:33');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:51:33');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:51:40');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 09:51:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:53:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:54:45');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 09:54:48');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:57:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:59:06');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:59:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:59:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 09:59:31');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:00:50');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:01:25');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:01:49');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:01:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:02:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:02:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:02:26');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:02:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:02:46');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:02:57');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:03:05');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:03:43');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:04:06');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:04:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:04:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:05:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:07:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:08:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:09:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:09:44');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:10:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:10:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:10:50');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:11:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:11:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:12:11');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:12:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:13:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:13:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:13:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:13:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:14:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:14:31');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:14:42');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:14:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:15:12');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:15:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:15:26');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:15:38');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:15:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:16:02');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:16:11');
INSERT INTO `visit_count_log` VALUES ('lsj001', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 10:16:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:16:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:16:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:16:35');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:16:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:20:26');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:21:12');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 10:24:04');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:24:46');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:25:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:26:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:27:31');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 10:29:54');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:30:37');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:31:47');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:32:01');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:32:37');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:32:43');
INSERT INTO `visit_count_log` VALUES ('A002', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:32:56');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-06 10:33:33');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-06 10:35:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:35:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:35:42');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:36:25');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:36:38');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-06 10:36:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:52:27');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:52:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:53:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:53:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:53:56');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:54:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:54:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:55:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:59:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:59:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:59:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 00:59:58');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:00:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:00:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:00:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:00:50');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:01:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:01:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:01:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:01:58');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:02:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:02:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:02:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:02:46');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:02:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:03:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:03:16');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:03:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:03:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:03:50');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:04:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:04:09');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:04:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:04:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:05:54');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 01:09:10');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 01:09:29');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:10:49');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:11:25');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:13:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:13:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:14:11');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:14:42');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:14:58');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:15:08');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:15:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:15:26');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:15:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:17:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:18:57');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:20:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:23:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:23:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:25:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:26:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:28:31');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:29:04');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:30:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:30:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:30:51');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:30:58');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:31:56');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:32:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:32:18');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:32:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:32:48');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:33:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:33:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:33:51');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:34:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:34:13');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:34:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:35:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:35:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:35:33');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:35:52');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:36:31');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:36:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:39:01');
INSERT INTO `visit_count_log` VALUES ('lsj010', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 01:39:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:40:26');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:41:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:41:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:41:50');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:42:32');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:42:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:43:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:43:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:43:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:44:48');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:45:27');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 01:47:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:50:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:51:15');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:51:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:53:30');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:53:57');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:54:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:54:17');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:54:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:55:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:55:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:56:21');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:56:28');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:57:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:57:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:57:29');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:57:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:57:57');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 01:58:01');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:01:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:01:48');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:02:32');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:02:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:03:31');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:07:32');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:07:37');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:08:00');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:09:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:09:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:10:14');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:10:22');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:10:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:11:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:11:55');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:12:04');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:12:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:13:10');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:13:24');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:13:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:13:56');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:14:23');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:17:56');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:18:16');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:18:25');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:18:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:19:13');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:19:41');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:19:41');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:20:07');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:20:13');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:20:20');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:20:26');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:20:48');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:21:09');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:21:18');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:21:25');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:21:49');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:22:23');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:22:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:22:44');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:24:19');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:24:49');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:25:14');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:25:22');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:25:39');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:25:44');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:27:27');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:27:36');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:27:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:28:45');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:29:45');
INSERT INTO `visit_count_log` VALUES ('bc0001', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:30:21');
INSERT INTO `visit_count_log` VALUES ('添加', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:30:34');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:31:37');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:31:58');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:32:02');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:32:05');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:32:14');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:32:32');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:32:40');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:32:44');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:34:39');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:35:42');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:35:51');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:36:50');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:38:24');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:39:28');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:42:53');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:44:24');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:46:35');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:46:48');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:48:35');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:50:23');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:50:27');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:50:34');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:50:38');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:50:45');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:50:47');
INSERT INTO `visit_count_log` VALUES ('A01', '192.168.1.173', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 02:51:08');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:52:54');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:53:26');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:53:36');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:56:00');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:56:02');
INSERT INTO `visit_count_log` VALUES ('B1015', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:56:12');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:56:35');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:56:37');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 02:56:46');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:57:11');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:57:19');
INSERT INTO `visit_count_log` VALUES ('B1003A', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:57:28');
INSERT INTO `visit_count_log` VALUES ('B1016', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 02:58:06');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:03:29');
INSERT INTO `visit_count_log` VALUES ('A10086', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:03:53');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:05:39');
INSERT INTO `visit_count_log` VALUES ('L2066', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:05:49');
INSERT INTO `visit_count_log` VALUES ('L2066', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:06:00');
INSERT INTO `visit_count_log` VALUES ('L2066', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:06:16');
INSERT INTO `visit_count_log` VALUES ('A10086', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:06:28');
INSERT INTO `visit_count_log` VALUES ('A10086', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:06:44');
INSERT INTO `visit_count_log` VALUES ('x3008', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 03:07:30');
INSERT INTO `visit_count_log` VALUES ('L1007', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:07:34');
INSERT INTO `visit_count_log` VALUES ('L1007', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:07:47');
INSERT INTO `visit_count_log` VALUES ('L1007', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:08:11');
INSERT INTO `visit_count_log` VALUES ('L1007', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:08:27');
INSERT INTO `visit_count_log` VALUES ('L1007', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:08:44');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:12:14');
INSERT INTO `visit_count_log` VALUES ('L1007', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:13:35');
INSERT INTO `visit_count_log` VALUES ('x3008', '192.168.1.177', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":false}', '2018-07-08 03:14:53');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:15:02');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:16:06');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:17:22');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:18:25');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:20:08');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:21:12');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:22:42');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:25:15');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:26:27');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:30:50');
INSERT INTO `visit_count_log` VALUES ('10086', '192.168.1.173', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:34:32');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:35:14');
INSERT INTO `visit_count_log` VALUES ('@13', '192.168.1.186', '{\"method\":\"ShopController.updateShopVisit\",\"success\":true}', '2018-07-08 03:35:19');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:35:37');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:37:14');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:37:27');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:39:03');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:50:28');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:52:28');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:53:28');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:53:32');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:54:16');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.157', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:54:32');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:55:12');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:55:17');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:55:39');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:55:55');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:56:11');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.184', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:56:14');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:56:40');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.163', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:57:16');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.163', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:57:24');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:58:28');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:58:34');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:59:40');
INSERT INTO `visit_count_log` VALUES ('07083', '192.168.1.162', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 03:59:46');
INSERT INTO `visit_count_log` VALUES ('07081', '192.168.1.186', '{\"method\":\"TerminalController.updateTerminalVisit\",\"success\":true}', '2018-07-08 04:03:35');

-- ----------------------------
-- Triggers structure for table biz_shop
-- ----------------------------
DROP TRIGGER IF EXISTS `insert`;
delimiter ;;
CREATE DEFINER = `root`@`%` TRIGGER `insert` AFTER INSERT ON `biz_shop` FOR EACH ROW BEGIN

INSERT INTO biz_shop_visit(shop_number,shop_visit_amount,shop_visit_time) VALUES(new.shop_number,0,CURRENT_TIMESTAMP);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table biz_shop
-- ----------------------------
DROP TRIGGER IF EXISTS `delete`;
delimiter ;;
CREATE DEFINER = `root`@`%` TRIGGER `delete` BEFORE DELETE ON `biz_shop` FOR EACH ROW BEGIN

DELETE FROM harbor.biz_shop_visit WHERE harbor.biz_shop_visit.shop_number=old.shop_number;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table biz_terminal
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_visit`;
delimiter ;;
CREATE DEFINER = `root`@`%` TRIGGER `insert_visit` AFTER INSERT ON `biz_terminal` FOR EACH ROW begin

INSERT INTO biz_terminal_visit(terminal_number,terminal_visit_amount,terminal_visit_time) VALUES(new.terminal_number,0,CURRENT_TIMESTAMP);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table biz_terminal
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_visit`;
delimiter ;;
CREATE DEFINER = `root`@`%` TRIGGER `delete_visit` BEFORE UPDATE ON `biz_terminal` FOR EACH ROW BEGIN

DELETE FROM harbor.biz_terminal_visit WHERE new.terminal_number is null and harbor.biz_terminal_visit.terminal_number=old.terminal_number;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
