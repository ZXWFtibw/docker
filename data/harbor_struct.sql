/*
 Navicat Premium Data Transfer

 Source Server         : virtual_database
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 192.168.1.80:3306
 Source Schema         : harbor

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 05/07/2018 15:33:30
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
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for biz_floor
-- ----------------------------
DROP TABLE IF EXISTS `biz_floor`;
CREATE TABLE `biz_floor`  (
  `floor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '楼层ID\n\n\n',
  `floor_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '第几楼层',
  `floor_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '  楼层名称\n      \n\n\n',
  PRIMARY KEY (`floor_id`) USING BTREE,
  UNIQUE INDEX `floor_number`(`floor_number`) USING BTREE COMMENT '编号唯一',
  UNIQUE INDEX `floor_name`(`floor_name`) USING BTREE COMMENT '楼层名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for biz_screensaver
-- ----------------------------
DROP TABLE IF EXISTS `biz_screensaver`;
CREATE TABLE `biz_screensaver`  (
  `screensaver_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '屏保ID\n\n\n',
  `screensaver_program_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '屏保节目名称\n\n\n',
  `add_screensaver_time` datetime(0) DEFAULT NULL COMMENT '创建屏保的时间',
  PRIMARY KEY (`screensaver_id`) USING BTREE,
  UNIQUE INDEX `screensaver_program_name`(`screensaver_program_name`) USING BTREE COMMENT '屏保节目名称唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for screensaver_material_relation
-- ----------------------------
DROP TABLE IF EXISTS `screensaver_material_relation`;
CREATE TABLE `screensaver_material_relation`  (
  `screensaver_id` int(11) NOT NULL COMMENT '屏保ID\n\n\n',
  `screensaver_material_id` int(11) NOT NULL COMMENT '屏保素材ID',
  UNIQUE INDEX `screensaver_material_index`(`screensaver_id`, `screensaver_material_id`) USING BTREE COMMENT '屏保-屏保素材联合唯一索引'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for terminal_first_page_relation
-- ----------------------------
DROP TABLE IF EXISTS `terminal_first_page_relation`;
CREATE TABLE `terminal_first_page_relation`  (
  `terminal_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '终端ID',
  `screensaver_material_id` int(11) NOT NULL COMMENT '首页素材ID',
  UNIQUE INDEX `terminal_first_page_index`(`terminal_id`, `screensaver_material_id`) USING BTREE COMMENT '终端首页素材去重'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
