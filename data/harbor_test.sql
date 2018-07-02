/*
 Navicat Premium Data Transfer

 Source Server         : aliyun_database
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 47.94.202.250:3306
 Source Schema         : harbor

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 02/07/2018 11:06:08
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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_activity
-- ----------------------------
INSERT INTO `biz_activity` VALUES (1, NULL, 'picture/2018-06-27/0D5D62454D82460C9916B8507C0905AB.jpg', NULL, '品牌活动', 0);
INSERT INTO `biz_activity` VALUES (2, NULL, 'picture/2018-06-27/F116AB83C7F94499832BD10CC64442CB.jpg', NULL, '商场活动', 0);
INSERT INTO `biz_activity` VALUES (3, NULL, 'picture/2018-06-27/9352E66AEA2B48B285D9C06E5BFABA5F.jpg', NULL, '品牌活动', 0);
INSERT INTO `biz_activity` VALUES (4, NULL, 'picture/2018-06-27/0F07FCC98C7F4E0886F7845DB96BFB5F.jpg', NULL, '活动12', 1);
INSERT INTO `biz_activity` VALUES (5, NULL, 'picture/2018-06-27/B92CE234CF254E2194F2BADFE07AED5A.png', NULL, '618活动', 0);
INSERT INTO `biz_activity` VALUES (6, NULL, 'picture/2018-06-27/B13A7A5237BF4F06AD6DBA2EDE90D9BF.png', NULL, '双123', 0);
INSERT INTO `biz_activity` VALUES (7, NULL, 'picture/2018-06-27/60456E8FBA274658B9825054351D7FFE.png', NULL, '12', 0);
INSERT INTO `biz_activity` VALUES (8, NULL, 'picture/2018-06-27/36ED1151239C4B019EB014916A85AC2D.png', NULL, '暑期促销', 0);
INSERT INTO `biz_activity` VALUES (9, NULL, '', NULL, '12', 1);
INSERT INTO `biz_activity` VALUES (10, NULL, 'picture\\2018-07-02\\E00BC906386A4AC481297DB083CB1036.jpg', NULL, 'huanq', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_activity_material
-- ----------------------------
INSERT INTO `biz_activity_material` VALUES (118, 'picture/2018-06-27/AE8894EB836B439DB54DE6B9F16BE96B.png', 11098, '广西TV.png', 'AE8894EB836B439DB54DE6B9F16BE96B.png', 8);
INSERT INTO `biz_activity_material` VALUES (119, 'picture/2018-06-27/BFB75007AFA8493E9C00734817828A79.png', 6773, '贵州TV.png', 'BFB75007AFA8493E9C00734817828A79.png', 6);
INSERT INTO `biz_activity_material` VALUES (120, 'picture/2018-06-27/F2645DC5FF104D6C8E3A1C2A0C7C6D1D.jpg', 855408, '2DA2881E77164A1C82A8CA041E9008FD.jpg', 'F2645DC5FF104D6C8E3A1C2A0C7C6D1D.jpg', 6);
INSERT INTO `biz_activity_material` VALUES (121, 'picture/2018-06-27/5D7276D0C0E94117A9170A2ED1DD3826.png', 1558, '0B162F4A92BD4D228D696F3B0761E64D.png', '5D7276D0C0E94117A9170A2ED1DD3826.png', 8);
INSERT INTO `biz_activity_material` VALUES (122, 'picture/2018-06-27/6DC3F5F2972044DC9006B62FEC03A4F6.png', 1558, '0B162F4A92BD4D228D696F3B0761E64D.png', '6DC3F5F2972044DC9006B62FEC03A4F6.png', 8);
INSERT INTO `biz_activity_material` VALUES (123, 'picture/2018-06-29/760586732D7E41B68691339C6FDE2EC3.jpg', 639876, '1920x1080.jpg', '760586732D7E41B68691339C6FDE2EC3.jpg', 7);
INSERT INTO `biz_activity_material` VALUES (124, 'picture/2018-06-29/2EB4D4FFAD4D464284EB20F907C02D68.jpg', 1396523, '1920-1080.jpg', '2EB4D4FFAD4D464284EB20F907C02D68.jpg', 7);
INSERT INTO `biz_activity_material` VALUES (125, 'picture/2018-06-29/4DA851FBC9F2427BB141711DFCB35935.jpg', 2146092, '3.jpg', '4DA851FBC9F2427BB141711DFCB35935.jpg', 7);

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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_building
-- ----------------------------
INSERT INTO `biz_building` VALUES (35, 'A23-001', 'A23-001', 'rgb(255, 165, 0)', 1, 1, '123', '51', '708', '340');
INSERT INTO `biz_building` VALUES (36, 'A23-002', 'A23-002', 'rgb(0, 139, 139)', 1, 1, '122', '66', '541', '418');
INSERT INTO `biz_building` VALUES (38, '10010', '10091', 'rgb(30, 144, 255)', 1, 1, '50', '50', '346', '485');
INSERT INTO `biz_building` VALUES (39, 'A002', '特克斯', 'rgb(255, 215, 0)', 1, 1, '66', '66', '857', '344');
INSERT INTO `biz_building` VALUES (40, 'A01', '', 'rgb(192, 192, 192)', 1, 4, '50', '50', '329', '402');
INSERT INTO `biz_building` VALUES (42, 'A0909', 'dada', 'rgb(255, 165, 0)', 1, 1, '66', '66', '942', '407');
INSERT INTO `biz_building` VALUES (51, '12424', '4124', 'rgb(192, 192, 192)', 2, 1, '66', '66', '368', '419');
INSERT INTO `biz_building` VALUES (52, '10086', '10087', 'rgb(220, 20, 60)', 2, 1, '66', '66', '474', '341');

-- ----------------------------
-- Table structure for biz_floor
-- ----------------------------
DROP TABLE IF EXISTS `biz_floor`;
CREATE TABLE `biz_floor`  (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '楼层ID\n\n\n',
  `floor_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '第几楼层',
  `floor_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '  楼层名称\n      \n\n\n',
  PRIMARY KEY (`floor_id`) USING BTREE,
  UNIQUE INDEX `floor_number`(`floor_number`) USING BTREE COMMENT '编号唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_floor
-- ----------------------------
INSERT INTO `biz_floor` VALUES (1, 'F1', '一楼');
INSERT INTO `biz_floor` VALUES (2, 'F2', '二楼');
INSERT INTO `biz_floor` VALUES (3, 'F3', '三楼');
INSERT INTO `biz_floor` VALUES (6, 'F6', '六楼');
INSERT INTO `biz_floor` VALUES (7, 'F7', '七楼');
INSERT INTO `biz_floor` VALUES (9, 'B1', '负一楼');
INSERT INTO `biz_floor` VALUES (10, 'B2', '负二楼');
INSERT INTO `biz_floor` VALUES (11, 'B3', '负三楼');

-- ----------------------------
-- Table structure for biz_format
-- ----------------------------
DROP TABLE IF EXISTS `biz_format`;
CREATE TABLE `biz_format`  (
  `biz_format_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业态ID\n\n\n',
  `biz_format_number` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业态编号\n\n\n',
  `biz_format_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业态种类\n\n\n',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态：未删除/删除(1/0)',
  PRIMARY KEY (`biz_format_id`) USING BTREE,
  UNIQUE INDEX `biz_format_number`(`biz_format_number`) USING BTREE COMMENT '编号唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_format
-- ----------------------------
INSERT INTO `biz_format` VALUES (1, NULL, 'AAA', 1);
INSERT INTO `biz_format` VALUES (2, 'A0001', '电影', 0);
INSERT INTO `biz_format` VALUES (3, NULL, '配套', 0);
INSERT INTO `biz_format` VALUES (4, NULL, 'BBB', 1);
INSERT INTO `biz_format` VALUES (5, 'A0003', '餐饮', 0);
INSERT INTO `biz_format` VALUES (6, 'A0004', '名品', 1);
INSERT INTO `biz_format` VALUES (7, 'A0005', '皮具箱包', 0);
INSERT INTO `biz_format` VALUES (8, 'A0006', '运动户外', 0);
INSERT INTO `biz_format` VALUES (9, 'A0007', '杂品类', 0);
INSERT INTO `biz_format` VALUES (10, 'A0008', '男装', 0);
INSERT INTO `biz_format` VALUES (11, 'A0009', '女装', 0);
INSERT INTO `biz_format` VALUES (12, 'A0010', '快时尚', 1);
INSERT INTO `biz_format` VALUES (13, 'A0011', '儿童', 0);
INSERT INTO `biz_format` VALUES (14, NULL, '', 1);
INSERT INTO `biz_format` VALUES (15, 'A0099', '其他', 0);
INSERT INTO `biz_format` VALUES (16, 'A0012', '娱乐', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_map
-- ----------------------------
INSERT INTO `biz_map` VALUES (3, '一楼底层', 'picture/2018-06-27/D3F308FDA5264AC9A64E646CEBE0097A.png', 1);
INSERT INTO `biz_map` VALUES (4, '二楼底层', 'picture/2018-06-29/380BD6F4C9B14CE9A4659469E42A8F1A.png', 2);

-- ----------------------------
-- Table structure for biz_screensaver
-- ----------------------------
DROP TABLE IF EXISTS `biz_screensaver`;
CREATE TABLE `biz_screensaver`  (
  `screensaver_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '屏保ID\n\n\n',
  `screensaver_program_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保节目名称\n\n\n',
  `add_screensaver_time` datetime(0) DEFAULT NULL COMMENT '创建屏保的时间',
  PRIMARY KEY (`screensaver_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `biz_screensaver` VALUES (15, '10010', '2018-06-27 18:23:53');
INSERT INTO `biz_screensaver` VALUES (16, '0628', '2018-06-28 10:24:09');
INSERT INTO `biz_screensaver` VALUES (17, '629', '2018-06-29 10:16:27');
INSERT INTO `biz_screensaver` VALUES (19, 'tianzheng', '2018-06-29 11:01:01');
INSERT INTO `biz_screensaver` VALUES (21, 'cheshi', '2018-06-29 11:02:46');
INSERT INTO `biz_screensaver` VALUES (34, 'qqq', '2018-06-29 16:47:32');
INSERT INTO `biz_screensaver` VALUES (35, 'aaa', '2018-06-29 17:16:38');
INSERT INTO `biz_screensaver` VALUES (36, '1212', '2018-06-29 17:17:19');
INSERT INTO `biz_screensaver` VALUES (37, '跳转', '2018-07-01 04:45:31');
INSERT INTO `biz_screensaver` VALUES (38, 'qq', '2018-07-01 05:11:03');
INSERT INTO `biz_screensaver` VALUES (39, 'aaa', '2018-07-02 11:05:16');

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
INSERT INTO `biz_screensaver_material` VALUES (1, 'picture/2018-06-27/678CC4BAEFC1494DA8B9486749931C6D.png', 803484, '1.png', '678CC4BAEFC1494DA8B9486749931C6D.png', '1', 1);
INSERT INTO `biz_screensaver_material` VALUES (23, 'picture/2018-06-27/BE1456D95E5847C291DD2311A3012AFA.png', 14172, '辽宁TV.png', 'BE1456D95E5847C291DD2311A3012AFA.png', '1', 0);
INSERT INTO `biz_screensaver_material` VALUES (24, 'picture/2018-06-27/CD1D1BB833154B51BDEBFEFDED668C0F.jpg', 348680, '1221094425364wtwwz2b47q.jpg', 'CD1D1BB833154B51BDEBFEFDED668C0F.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (25, 'picture/2018-06-27/890E910FC1E442378B085D56DFE6B262.jpg', 599044, '1221094425365c6ysm2381a.jpg', '890E910FC1E442378B085D56DFE6B262.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (26, 'picture/2018-06-27/36D632F061F0490E9EBF52DB258910CE.jpg', 455315, '1221094425365h6uqvmhlfg.jpg', '36D632F061F0490E9EBF52DB258910CE.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (27, 'picture/2018-06-27/54738D7BF5964E1595CE671F892E73BA.jpg', 643283, '1221094425365i0oxmakcbb.jpg', '54738D7BF5964E1595CE671F892E73BA.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (28, 'picture/2018-06-27/F782E32910CE4E81BDE1F7C6A5FE302B.jpg', 687623, '1221094425365kcinezmi88.jpg', 'F782E32910CE4E81BDE1F7C6A5FE302B.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (35, 'picture/2018-06-27/B6327F94631F4C59B4FB3550D3C48AF9.jpg', 803484, '20180627104047.jpg', 'B6327F94631F4C59B4FB3550D3C48AF9.jpg', '1', 0);
INSERT INTO `biz_screensaver_material` VALUES (37, 'picture/2018-06-27/7D25F596BBED474BA0730887A8F657C4.jpg', 761489, '1D21FF3B18724CAC9E178851131FD4B3.jpg', '7D25F596BBED474BA0730887A8F657C4.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (38, 'picture/2018-06-27/678CC4BAEFC1494DA8B9486749931C6D.png', 803484, '1.png', '678CC4BAEFC1494DA8B9486749931C6D.png', '1', 0);
INSERT INTO `biz_screensaver_material` VALUES (39, 'picture/2018-06-29/46348D9997164853B8C1F3CFD68055F8.jpg', 855408, 'a6.jpg', '46348D9997164853B8C1F3CFD68055F8.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (40, 'picture/2018-06-29/46348D9997164853B8C1F3CFD68055F8.jpg', 855408, 'a6.jpg', '46348D9997164853B8C1F3CFD68055F8.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (41, 'picture/2018-06-29/69636DF7D0374F67AD42C5AED6742E1C.jpg', 558709, 'a4.jpg', '69636DF7D0374F67AD42C5AED6742E1C.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (42, 'picture/2018-06-29/46348D9997164853B8C1F3CFD68055F8.jpg', 855408, 'a6.jpg', '46348D9997164853B8C1F3CFD68055F8.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (43, 'picture/2018-06-29/69636DF7D0374F67AD42C5AED6742E1C.jpg', 558709, 'a4.jpg', '69636DF7D0374F67AD42C5AED6742E1C.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (44, 'picture/2018-06-29/4D6FE1A433144FDCB4EAB6FE4513418B.jpg', 558709, 'a4.jpg', '4D6FE1A433144FDCB4EAB6FE4513418B.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (45, 'picture/2018-06-29/410E0D8F2378462D9BB3488F31071087.jpg', 558709, 'a4.jpg', '410E0D8F2378462D9BB3488F31071087.jpg', '横屏', 0);
INSERT INTO `biz_screensaver_material` VALUES (46, 'picture/2018-06-29/51B431B95EB7429F8C5795A47D54C05F.jpg', 558709, 'a4.jpg', '51B431B95EB7429F8C5795A47D54C05F.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (47, 'picture/2018-06-29/FD5A2AE62D294495B6929C52D940E08A.jpg', 253893, 'a3.jpg', 'FD5A2AE62D294495B6929C52D940E08A.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (48, 'picture/2018-06-29/629A0B28386647E39FC069C69DB78168.jpg', 558709, 'a4.jpg', '629A0B28386647E39FC069C69DB78168.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (52, 'picture/2018-06-29/3D59AFCD3A784CA5BF5C67CD234FB534.jpg', 558709, 'a4.jpg', '3D59AFCD3A784CA5BF5C67CD234FB534.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (53, 'picture/2018-06-29/CEC6DA46A86D4438B08111E082851E90.jpg', 253893, 'a3.jpg', 'CEC6DA46A86D4438B08111E082851E90.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (54, 'picture/2018-06-29/BAEED01BBE954C64A29BA9775ECD9057.jpg', 558709, 'a4.jpg', 'BAEED01BBE954C64A29BA9775ECD9057.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (55, 'picture/2018-06-29/2AD54C2BF7824BB5961F0DE734A93B9F.jpg', 253893, 'a3.jpg', '2AD54C2BF7824BB5961F0DE734A93B9F.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (56, 'picture/2018-06-29/05B7CC728A3745A69EDF7D1AEDC90453.jpg', 558709, 'a4.jpg', '05B7CC728A3745A69EDF7D1AEDC90453.jpg', '横屏', 1);
INSERT INTO `biz_screensaver_material` VALUES (58, 'picture/2018-06-29/8665927807E14AEE9E0847F71E14F905.jpg', 159515, 'about1.jpg', '8665927807E14AEE9E0847F71E14F905.jpg', '横屏', 1);

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
  INDEX `floor_id`(`floor_id`) USING BTREE,
  INDEX `biz_format_id`(`biz_format_id`) USING BTREE,
  CONSTRAINT `biz_shop_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `biz_floor` (`floor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_shop
-- ----------------------------
INSERT INTO `biz_shop` VALUES ('015537b36aa849cb8096bc2111ffa2f5', 'A002', '特克斯', 'tekesi', 1, 3, 'L1A002', 0, 'picture/2018-06-27/526BA4989A9E45298A6BAAF3F32AD7F5.png', '********', '********', '2018-06-27 11:38:55', NULL, 1);
INSERT INTO `biz_shop` VALUES ('03b2c677cddd488fbe59a99de4a91cca', 'L1086', '一线小生', 'yixianxiaosheng', 2, 5, 'L1086', 1, 'picture/2018-06-28/8123AD7685F645A3B93CAD50832BF4C4.png', NULL, NULL, '2018-06-28 16:49:32', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('1160286482524ff29598a7283a8064d9', '添加', '商铺', 'shangpu', 2, 5, 'q', 1, 'picture/2018-06-28/1C02C1359DBB45F1A43FC1B159A3BD68.jpg', '32', '23', '2018-06-28 10:37:19', NULL, 323);
INSERT INTO `biz_shop` VALUES ('1b08dc2072f945eda48b19421567283e', 'A009', 'shop.v1', 'shop.v1', 3, 3, 'L3A008', 1, 'picture/2018-06-27/9486D8051E984EBCB2690C8CC4D04057.png', '**************', '**************', '2018-06-27 14:51:47', NULL, 2);
INSERT INTO `biz_shop` VALUES ('2622604d87dc4a6899df26634d2bb057', '12424', '4124', '4124', 2, 5, '123', 1, 'picture/2018-06-27/7FD03430F06E46969E94B96155CCF0C5.jpg', '122', '12', '2018-06-27 14:45:37', NULL, 12);
INSERT INTO `biz_shop` VALUES ('44f562964e014a7caa9d2a7458b26db4', 'bc0001', '张大厨', 'zhangdachu', 2, 5, 'bc0001', 1, 'picture\\2018-07-02\\94507260C331443D8B6DC171D6B69827.png', '22332-222', '111', '2018-07-02 10:46:29', NULL, 11);
INSERT INTO `biz_shop` VALUES ('517d10cb9d274a97b67ad2e719fd4798', 'B1016', '张亮麻辣烫', 'zhangliangmalatang', 1, 5, 'B1016', 0, 'picture/2018-06-28/012C82A8E9B74758A3710BC51146680F.png', NULL, NULL, '2018-06-28 17:37:57', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('54e6490d470941278e6acb747049c40c', 'L4050', '欢乐思碧客', 'huanlesibike', 3, 5, 'L4050', 1, 'picture/2018-06-28/B1D5A07AD5E245E5819E13B56FBE8B30.png', NULL, NULL, '2018-06-28 15:05:06', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('58f826d9efcb48b2abd294a40d024c38', '21', '12', '12', 6, 13, '214', 1, 'picture\\2018-07-02\\86372F8EFD6A4F44B65EDFDBF14853B9.jpg', NULL, NULL, '2018-07-02 11:03:23', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('6ab8826a10e94573a4b84ad3ff456509', 'shop0001', '商铺测试1', 'shangpuceshi1', 1, 5, 'B10010', 1, 'picture/2018-06-27/50C45E05F0234DCAA8D26B60A01B2AC9.png', '223333', '3333', '2018-06-27 14:10:52', NULL, 22);
INSERT INTO `biz_shop` VALUES ('73e71d7650c8437fad91ba3c22d32267', 'A001', '食惟天', 'shiweitian', 2, 5, 'F1A001', 0, 'picture/2018-06-28/E869FA2C14EF4D808F5C87E9D1961E12.jpg', '***********', '***********', '2018-06-26 18:08:09', NULL, 1);
INSERT INTO `biz_shop` VALUES ('7c0f5c01c1154d87b44ed43843cd6672', '商铺', '添加', 'tianjia', 3, 3, '2133', 1, 'picture/2018-06-28/6BD4B05BDD0E4CDE8718814B8F595C92.jpg', '12', '12', '2018-06-28 10:40:52', NULL, 2);
INSERT INTO `biz_shop` VALUES ('7cbedcf49838441892a76ed5a19422ed', 'L4054', '厕所串串', 'cesuochuanchuan', 3, 5, 'L4054', 1, 'picture/2018-06-28/F9C33B655FE04E7986B363DDAA984D9A.png', NULL, NULL, '2018-06-28 15:07:01', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('8a287846a93a407d80ebea4895459ae7', 'L4019', '吧啦嘴', 'balazui', 2, 5, 'L4019', 1, 'picture/2018-06-28/AF4FFC969646485AB61801CD4A361CEB.png', NULL, NULL, '2018-06-28 16:46:23', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('8e638889727749a4be00734570d5d831', '10010', '10091', '10091', 1, 3, '12131', 1, 'picture/2018-06-28/E155C5E4702A4B308193414B8964A7E2.jpg', '1', '123', '2018-06-27 17:30:37', NULL, 13);
INSERT INTO `biz_shop` VALUES ('91410d7283c24c25ba35d6174f4150d1', 'L1007', '小熊饼干', 'xiaoxiongbinggan', 3, 5, 'L1007', 1, 'picture/2018-06-28/127BFEA1ADDD407CB88A958FDC3A6407.png', NULL, NULL, '2018-06-28 14:58:51', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('93f81921cd5245f38559c3090b5848bc', '10086', '10087', '10087', 2, 3, '10099', 1, 'picture/2018-06-28/2605A38B81B84A3282E71A7F157CDD70.jpg', '11', '3', '2018-06-28 09:50:36', NULL, 2);
INSERT INTO `biz_shop` VALUES ('aba12bde1d2a436f8f50a0d2dc9b601d', 'A10086', '10086', '10086', 3, 2, '10010', 1, 'picture/2018-06-27/B917FFED4339492A93A4B0585AF04B7E.jpg', '12', '12', '2018-06-27 17:19:58', NULL, 12);
INSERT INTO `biz_shop` VALUES ('b2f766790bda4b05a1aae874c2695052', 'B1003A', '老翟板面', 'laozhaibanmian', 3, 5, 'B1003A', 1, 'picture/2018-06-28/9A0467797F99443A9FC3FDE484F35B9A.png', NULL, NULL, '2018-06-28 15:02:21', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('d3e8e8fd9b6b4a2d83f80329eb473fb7', 'L2066', '丁三宝', 'dingsanbao', 3, 5, 'L2066', 1, 'picture/2018-06-28/74E4E4F209F34774943CEF6720F70856.png', NULL, NULL, '2018-06-28 15:01:02', NULL, NULL);
INSERT INTO `biz_shop` VALUES ('f155dc97565b4e0e9cd31f4b64999e8f', 'B1015', '吃噻酸菜鱼', 'chisaisuancaiyu', 3, 5, 'B1015', 1, 'picture/2018-06-28/9A0467797F99443A9FC3FDE484F35B9A.png', NULL, NULL, '2018-06-28 15:03:18', NULL, NULL);

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
INSERT INTO `biz_shop_visit` VALUES ('10010', 0, '2018-06-21 07:05:16');
INSERT INTO `biz_shop_visit` VALUES ('10086', 0, '2018-06-21 11:44:34');
INSERT INTO `biz_shop_visit` VALUES ('12424', 0, '2018-06-21 04:06:30');
INSERT INTO `biz_shop_visit` VALUES ('21', 0, '2018-07-02 03:03:24');
INSERT INTO `biz_shop_visit` VALUES ('A001', 0, '2018-06-26 10:08:10');
INSERT INTO `biz_shop_visit` VALUES ('A002', 0, '2018-06-21 00:57:32');
INSERT INTO `biz_shop_visit` VALUES ('A10086', 0, '2018-06-21 06:53:43');
INSERT INTO `biz_shop_visit` VALUES ('B1003A', 0, '2018-06-21 17:22:18');
INSERT INTO `biz_shop_visit` VALUES ('B1015', 0, '2018-06-21 17:23:20');
INSERT INTO `biz_shop_visit` VALUES ('B1016', 0, '2018-06-21 20:10:53');
INSERT INTO `biz_shop_visit` VALUES ('bc0001', 0, '2018-07-02 02:46:30');
INSERT INTO `biz_shop_visit` VALUES ('L1007', 0, '2018-06-21 17:18:31');
INSERT INTO `biz_shop_visit` VALUES ('L1086', 0, '2018-06-21 19:18:25');
INSERT INTO `biz_shop_visit` VALUES ('L2066', 0, '2018-06-21 17:20:52');
INSERT INTO `biz_shop_visit` VALUES ('L4019', 0, '2018-06-21 19:15:00');
INSERT INTO `biz_shop_visit` VALUES ('L4050', 0, '2018-06-21 17:25:17');
INSERT INTO `biz_shop_visit` VALUES ('L4054', 0, '2018-06-21 17:27:21');
INSERT INTO `biz_shop_visit` VALUES ('shop0001', 0, '2018-06-21 03:28:51');
INSERT INTO `biz_shop_visit` VALUES ('商铺', 0, '2018-06-21 12:39:02');
INSERT INTO `biz_shop_visit` VALUES ('添加', 0, '2018-06-21 12:35:11');

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
  INDEX `floor_id`(`floor_id`) USING BTREE,
  CONSTRAINT `biz_terminal_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `biz_floor` (`floor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_terminal
-- ----------------------------
INSERT INTO `biz_terminal` VALUES ('3a73aac14ee44211bf5ae64aa1f0e768', 'T0001', 'terminal.v1', '192.168.1.103', '2', 'c001', 20, 0, 0, '2018-06-26 18:23:03', NULL, 2, '2018-06-29 09:30:33', 2);
INSERT INTO `biz_terminal` VALUES ('58d1119784664b24979b1d218184dff2', 'TEAMTER0001', '终端1', '192.168.1.186', '2', '二楼太阳厅左梯1', 90, 0, 0, '2018-06-27 15:03:17', '2018-06-29 16:31:53', 2, '2018-07-01 03:25:43', 2);
INSERT INTO `biz_terminal` VALUES ('73adaa68f4f94704a60da5d612593c31', 'lsj001', '刘世进测试终端', '192.168.1.186', '2', '一楼手扶梯左', 90, 0, 0, '2018-06-27 18:35:37', NULL, 1, '2018-06-29 10:12:02', 2);
INSERT INTO `biz_terminal` VALUES ('8352b2b314cf4beea22052dff3dd9d04', '222', '233', '192.168.1.186', '1', '2222', 0, 0, 0, '2018-06-27 18:20:18', '2018-06-29 15:10:21', 2, '2018-07-01 02:10:43', 1);
INSERT INTO `biz_terminal` VALUES ('b0c15069c1dd4479b773885d2b43835d', 'teamter0002', '终端2', '192.168.1.186', '1', '一楼手扶梯左1', 180, 0, 0, '2018-06-27 15:04:56', NULL, 1, '2018-06-29 09:30:33', 1);
INSERT INTO `biz_terminal` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', 'zhongduan100', '终端100', '192.168.1.186', '1', '11111', 180, 0, 0, '2018-06-27 17:55:13', NULL, 2, '2018-06-29 09:30:33', 1);
INSERT INTO `biz_terminal` VALUES ('e604a3353edf40d4ae5df167d5689a82', 'tz', 'zhe', '113.57.29.131', '1', 'wuhan', 0, 0, 0, '2018-07-02 01:55:30', NULL, 3, '2018-07-02 02:08:37', 1);

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
INSERT INTO `biz_terminal_visit` VALUES ('222', 0, '2018-06-21 07:59:05');
INSERT INTO `biz_terminal_visit` VALUES ('lsj001', 0, '2018-06-21 08:15:41');
INSERT INTO `biz_terminal_visit` VALUES ('T0001', 0, '2018-06-26 10:23:03');
INSERT INTO `biz_terminal_visit` VALUES ('TEAMTER0001', 19, '2018-06-29 10:14:47');
INSERT INTO `biz_terminal_visit` VALUES ('teamter0002', 1, '2018-06-29 08:12:57');
INSERT INTO `biz_terminal_visit` VALUES ('tz', 0, '2018-07-02 01:55:29');
INSERT INTO `biz_terminal_visit` VALUES ('zhongduan100', 0, '2018-06-21 07:31:54');

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
INSERT INTO `screensaver_material_relation` VALUES (15, 23);
INSERT INTO `screensaver_material_relation` VALUES (16, 26);
INSERT INTO `screensaver_material_relation` VALUES (16, 27);
INSERT INTO `screensaver_material_relation` VALUES (16, 28);
INSERT INTO `screensaver_material_relation` VALUES (16, 37);
INSERT INTO `screensaver_material_relation` VALUES (17, 27);
INSERT INTO `screensaver_material_relation` VALUES (19, 25);
INSERT INTO `screensaver_material_relation` VALUES (19, 26);
INSERT INTO `screensaver_material_relation` VALUES (19, 27);
INSERT INTO `screensaver_material_relation` VALUES (21, 25);
INSERT INTO `screensaver_material_relation` VALUES (21, 26);
INSERT INTO `screensaver_material_relation` VALUES (21, 27);
INSERT INTO `screensaver_material_relation` VALUES (21, 35);
INSERT INTO `screensaver_material_relation` VALUES (21, 37);
INSERT INTO `screensaver_material_relation` VALUES (34, 44);
INSERT INTO `screensaver_material_relation` VALUES (34, 45);
INSERT INTO `screensaver_material_relation` VALUES (35, 23);
INSERT INTO `screensaver_material_relation` VALUES (35, 25);
INSERT INTO `screensaver_material_relation` VALUES (35, 35);
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
INSERT INTO `screensaver_published_terminal_relation` VALUES (34, '3a73aac14ee44211bf5ae64aa1f0e768', '2018-06-29 16:47:32');
INSERT INTO `screensaver_published_terminal_relation` VALUES (21, '73adaa68f4f94704a60da5d612593c31', '2018-06-29 17:17:44');
INSERT INTO `screensaver_published_terminal_relation` VALUES (21, '58d1119784664b24979b1d218184dff2', '2018-06-29 17:17:44');
INSERT INTO `screensaver_published_terminal_relation` VALUES (37, 'b0c15069c1dd4479b773885d2b43835d', '2018-07-01 04:45:31');
INSERT INTO `screensaver_published_terminal_relation` VALUES (39, 'bd6ccbfb1ad240d7a91a13b899e9f73a', '2018-07-02 11:05:16');

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
INSERT INTO `shop_picture_relation` VALUES ('8e638889727749a4be00734570d5d831', 'picture/2018-06-27/764EFA8B45DA4B63B1DC1DB0AF642989.jpg', 855408, '764EFA8B45DA4B63B1DC1DB0AF642989.jpg');
INSERT INTO `shop_picture_relation` VALUES ('93f81921cd5245f38559c3090b5848bc', 'picture/2018-06-28/D32B64756633482C8A3DD33E19F3B467.jpg', 855408, 'D32B64756633482C8A3DD33E19F3B467.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1160286482524ff29598a7283a8064d9', 'picture/2018-06-28/94A22BD1C4B44019A9F3C68782840C25.jpg', 855408, '94A22BD1C4B44019A9F3C68782840C25.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1160286482524ff29598a7283a8064d9', 'picture/2018-06-28/C7F13F2F3B154EA28F54F77194A980FD.jpg', 558709, 'C7F13F2F3B154EA28F54F77194A980FD.jpg');
INSERT INTO `shop_picture_relation` VALUES ('7c0f5c01c1154d87b44ed43843cd6672', 'picture/2018-06-28/8FDADDC6B5464756BBEA10002BA9E37F.jpg', 200430, '8FDADDC6B5464756BBEA10002BA9E37F.jpg');
INSERT INTO `shop_picture_relation` VALUES ('7c0f5c01c1154d87b44ed43843cd6672', 'picture/2018-06-28/C34993431A82442E95FA7D45E12DDEB6.jpg', 855408, 'C34993431A82442E95FA7D45E12DDEB6.jpg');
INSERT INTO `shop_picture_relation` VALUES ('f155dc97565b4e0e9cd31f4b64999e8f', 'picture/2018-06-28/55BD4C893BC14CA5B3A1EE69E6BACB35.png', 13089, '55BD4C893BC14CA5B3A1EE69E6BACB35.png');
INSERT INTO `shop_picture_relation` VALUES ('aba12bde1d2a436f8f50a0d2dc9b601d', 'picture/2018-06-27/A38FA21768FB4342B170B467F104A95E.jpg', 855408, 'A38FA21768FB4342B170B467F104A95E.jpg');
INSERT INTO `shop_picture_relation` VALUES ('aba12bde1d2a436f8f50a0d2dc9b601d', 'picture/2018-06-28/097C83AA5BDF4A98B420A8635592B6C3.jpg', 200430, '097C83AA5BDF4A98B420A8635592B6C3.jpg');
INSERT INTO `shop_picture_relation` VALUES ('517d10cb9d274a97b67ad2e719fd4798', 'picture/2018-06-28/E2047AC9527240CEA455CDDE57E549DC.jpg', 855408, 'E2047AC9527240CEA455CDDE57E549DC.jpg');
INSERT INTO `shop_picture_relation` VALUES ('2622604d87dc4a6899df26634d2bb057', 'picture/2018-06-27/F86E67AAD1194C2096C7558DA7439FBB.jpg', 130540, 'F86E67AAD1194C2096C7558DA7439FBB.jpg');
INSERT INTO `shop_picture_relation` VALUES ('2622604d87dc4a6899df26634d2bb057', 'picture/2018-06-28/8B206CEE130840019C766A92351385DA.jpg', 200430, '8B206CEE130840019C766A92351385DA.jpg');
INSERT INTO `shop_picture_relation` VALUES ('015537b36aa849cb8096bc2111ffa2f5', 'picture/2018-06-27/E8ED0903DC9B439FB60C52608C0F0175.jpg', 761489, 'E8ED0903DC9B439FB60C52608C0F0175.jpg');
INSERT INTO `shop_picture_relation` VALUES ('73e71d7650c8437fad91ba3c22d32267', 'picture/2018-06-28/AAA97E6150F54792B2186C897B512D50.jpg', 181387, 'AAA97E6150F54792B2186C897B512D50.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1b08dc2072f945eda48b19421567283e', 'picture/2018-06-29/E51954A563B34C18B935AEC7E6DD37D6.jpg', 181387, 'E51954A563B34C18B935AEC7E6DD37D6.jpg');
INSERT INTO `shop_picture_relation` VALUES ('1b08dc2072f945eda48b19421567283e', 'picture/2018-06-29/8D0BF4F791AF4E76BBF85AAC1E0E5FFF.jpg', 855408, '8D0BF4F791AF4E76BBF85AAC1E0E5FFF.jpg');
INSERT INTO `shop_picture_relation` VALUES ('6ab8826a10e94573a4b84ad3ff456509', 'picture/2018-06-27/0CB35E35F7FB4161BE317DB69037716B.png', 17586, '0CB35E35F7FB4161BE317DB69037716B.png');
INSERT INTO `shop_picture_relation` VALUES ('44f562964e014a7caa9d2a7458b26db4', 'picture\\2018-07-02\\5D7B010023B5461AADE06EE12DAEC49A.png', 10153, '5D7B010023B5461AADE06EE12DAEC49A.png');
INSERT INTO `shop_picture_relation` VALUES ('44f562964e014a7caa9d2a7458b26db4', 'picture\\2018-07-02\\F4AA3B28940B4B9EA3CB7967D2E13F21.png', 5453, 'F4AA3B28940B4B9EA3CB7967D2E13F21.png');
INSERT INTO `shop_picture_relation` VALUES ('58f826d9efcb48b2abd294a40d024c38', 'picture\\2018-07-02\\C5B1D7A0CCD34456ABD290E901808D00.jpg', 855408, 'C5B1D7A0CCD34456ABD290E901808D00.jpg');

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
INSERT INTO `terminal_first_page_relation` VALUES ('8352b2b314cf4beea22052dff3dd9d04', 47);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 46);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 47);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('b0c15069c1dd4479b773885d2b43835d', 54);
INSERT INTO `terminal_first_page_relation` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', 1);
INSERT INTO `terminal_first_page_relation` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', 47);
INSERT INTO `terminal_first_page_relation` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', 48);
INSERT INTO `terminal_first_page_relation` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', 53);
INSERT INTO `terminal_first_page_relation` VALUES ('bd6ccbfb1ad240d7a91a13b899e9f73a', 55);
INSERT INTO `terminal_first_page_relation` VALUES ('e604a3353edf40d4ae5df167d5689a82', 56);

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
CREATE DEFINER = `root`@`%` TRIGGER `delete_visit` BEFORE DELETE ON `biz_terminal` FOR EACH ROW BEGIN

DELETE FROM harbor.biz_terminal_visit WHERE harbor.biz_terminal_visit.terminal_number=old.terminal_number;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
