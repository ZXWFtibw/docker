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

 Date: 06/07/2018 15:41:32
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_activity
-- ----------------------------
INSERT INTO `biz_activity` VALUES (1, NULL, 'uploadImg\\business\\2018-07-06\\145738C1D41D4DAA8B77D5C8887EB7E4.jpg', NULL, 'a001', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_floor
-- ----------------------------
INSERT INTO `biz_floor` VALUES (1, 'F1', '一楼');
INSERT INTO `biz_floor` VALUES (2, 'F2', '二楼');
INSERT INTO `biz_floor` VALUES (3, 'F3', '三楼');
INSERT INTO `biz_floor` VALUES (4, 'F4', '四楼');
INSERT INTO `biz_floor` VALUES (5, 'F5', '五楼');
INSERT INTO `biz_floor` VALUES (6, 'F6', '六楼');
INSERT INTO `biz_floor` VALUES (7, 'F7', '七楼');
INSERT INTO `biz_floor` VALUES (8, 'B1', '负一楼');
INSERT INTO `biz_floor` VALUES (9, 'B2', '负二楼');
INSERT INTO `biz_floor` VALUES (10, 'B3', '负三楼');

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_format
-- ----------------------------
INSERT INTO `biz_format` VALUES (1, 'cy', '餐饮', 0, 1);
INSERT INTO `biz_format` VALUES (2, 'zp', '杂品类', 0, 2);
INSERT INTO `biz_format` VALUES (3, 'mp', '名品', 0, 3);
INSERT INTO `biz_format` VALUES (4, 'ss', '快时尚', 0, 4);
INSERT INTO `biz_format` VALUES (5, 'xz', '鞋类', 0, 5);
INSERT INTO `biz_format` VALUES (6, 'rt', '儿童', 0, 6);
INSERT INTO `biz_format` VALUES (7, 'pj', '皮具箱包', 0, 7);
INSERT INTO `biz_format` VALUES (8, 'mz', '男装', 0, 8);
INSERT INTO `biz_format` VALUES (9, 'nz', '女装', 0, 9);
INSERT INTO `biz_format` VALUES (10, 'yl', '娱乐', 0, 10);
INSERT INTO `biz_format` VALUES (11, 'yd', '运动户外', 0, 11);
INSERT INTO `biz_format` VALUES (12, 'qt', '其他', 0, 12);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_map
-- ----------------------------
INSERT INTO `biz_map` VALUES (1, '一楼', 'uploadImg\\business\\2018-07-06\\EA95C6969D1643F5ADC72B8BB0B1BDB9.png', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_screensaver
-- ----------------------------
INSERT INTO `biz_screensaver` VALUES (5, '123', '2018-07-06 14:05:09');
INSERT INTO `biz_screensaver` VALUES (7, 'zx', '2018-07-06 14:12:29');
INSERT INTO `biz_screensaver` VALUES (8, 'wq', '2018-07-06 14:12:38');
INSERT INTO `biz_screensaver` VALUES (12, 'sss', '2018-07-06 14:17:47');
INSERT INTO `biz_screensaver` VALUES (13, 'zzz', '2018-07-06 14:18:00');
INSERT INTO `biz_screensaver` VALUES (14, 'qqqq', '2018-07-06 14:18:11');
INSERT INTO `biz_screensaver` VALUES (15, 'ads', '2018-07-06 14:20:58');
INSERT INTO `biz_screensaver` VALUES (16, 'adsadsd', '2018-07-06 14:26:19');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of biz_screensaver_material
-- ----------------------------
INSERT INTO `biz_screensaver_material` VALUES (3, 'uploadImg\\business\\2018-07-06\\4804AB3E45E04D67BAA9BC44F38EE2AB.jpg', 215200, 'a2.jpg', '4804AB3E45E04D67BAA9BC44F38EE2AB.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (4, 'uploadImg\\business\\2018-07-06\\BD1A9A8C96AD4FC2BE2FD00A035F3601.jpg', 253893, 'a3.jpg', 'BD1A9A8C96AD4FC2BE2FD00A035F3601.jpg', '2', 1);
INSERT INTO `biz_screensaver_material` VALUES (6, 'uploadImg\\business\\2018-07-06\\7042CDC7280A4DF5AFB0A1344E38A700.jpg', 558709, 'a4.jpg', '7042CDC7280A4DF5AFB0A1344E38A700.jpg', '2', 0);
INSERT INTO `biz_screensaver_material` VALUES (7, 'uploadImg\\business\\2018-07-06\\8DF8BCF8910344DAB736F1777F92CFCB.jpg', 855408, 'a6.jpg', '8DF8BCF8910344DAB736F1777F92CFCB.jpg', '2', 0);

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
INSERT INTO `biz_shop` VALUES ('071af828fa7f44afaab4854a34957d03', 'B1007A', '魔力三千品', 'molisanqianpin', 7, 1, 'B1007A', 1, 'uploadImg/business/20180127/01201801271515471036.png', NULL, '魔力三千品，传承了经典的四川传统味道，又作出独特的口味搭配，全新的视觉包装让消费者易于识别。魔力三千品以“四川水煮菜、吃了就上瘾”的服务理念，深受广大消费者的赞誉，目前在上海、江苏、山东、河南、等地已拥有多家连锁店，秉承“经典川菜 百年传承”的魔力三千品将带给您值得品尝三千次的美味。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('08996d5d70e94f99a87f6382eb2a1db2', 'B1001B', '麦德龙', 'maidelong', 7, 2, 'B1001B', 1, 'uploadImg/business/20170211/01201702111038261033.png', '0516-67668888', '麦德龙集团是全球最大的零售和贸易公司之一， 2014/2015财年销售额约590亿欧元。目前，集团在全球29个国家拥有约220,000名员工和超过2,000家商场。麦德龙集团的出色表现得益于旗下销售业态在各自领域内的杰出贡献，其中包括全球自助式批发业务先驱麦德龙现购自运、欧洲消费电子市场领导者万得城和Saturn电器卖场以及Real大卖场。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('08a408852e2648e5ae0f00a9cf87a944', 'L4037', '鸭爪爪', 'yazhuazhua', 3, 1, 'L4037', 1, 'uploadImg/business/20170609/01201706090929271011.png', NULL, '干锅端上桌就被香辣的气味吸引，鲜红的辣椒和焦香的芝麻夹杂在鸭肉之间，远远的便能闻到诱人的香气，夹起一整只鸭爪入口，皮嫩肉烂，鲜香麻辣的味道瞬间就点燃味蕾细细的啃完鸭掌上的每一寸肉，绝对有入口即化的感觉！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('0a5ade6a6b8e47439a65a6dfcfbffd03', 'L4024', '初客牛排', 'chukeniupai', 3, 1, 'L4024', 1, 'uploadImg/business/20170822/01201708221242211027.png', '1.5951462992E10', '我想把最鲜最有湿度的的味道留给你，所以，你来了，牛排才能上板，180秒，是牛排离开铁板的时间，60秒，是牛排见你的路程。最佳的湿度，最美的味道，就是现在。18606171232', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('0a80d40174ac4e19b758765c72819a28', 'L1070', '影儿', 'yinger', 6, 4, 'L1070', 1, 'uploadImg/business/20170104/01201701041617561041.png', '0516-87792827', '作为影儿时尚集团于2005年推出的第三个品牌，PSALTER诗篇首创新学院风，在学院风格中独树一帜。锐意创新的新学院风也将崇尚精致手工的精神内核完美融入，让时装传达的书卷气息有着人文的厚度与温度。“你的存在，生命的意义”PSALTER诗篇以其诗性的平凡与厚积薄发的活力，为每一个独立的存在构筑美之典范。       PSALTER诗篇以新学院之名开启一场崭新美学时尚之旅。知性的书卷气与新锐的活力并行，是PSALTER诗篇引领下新学院风的最好诠释。翻开PSALTER诗篇的新篇章，眼见外在的浪漫着色，心存内里的人文之温。PSALTER诗篇始终关注和专注时尚最本真的内在，用诗性的眼光，用考究的态度，缔造新学院风尚。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('0b092bd9deec4fc0bbe60d45f06f0217', 'L2076', 'ONLY', 'ONLY', 5, 12, 'L2076', 1, 'uploadImg/business/20170703/01201707031033221042.png', '0516-87792992', 'ONLY的第一个系列于1995年在丹麦发布——次年进入中国，成为最先进入中国市场的国际集团之一。在创立之初ONLY就带着斯堪的纳维亚血统的叛逆，在这个高速发展的领域勇敢地探索着自己的道路。牛仔是ONLY产品系列的D.N.A 。至今，ONLY仍然忠于自己的本源，保持着在牛仔生产技术以及剪裁设计方面的领跑者地位。目前，时装系列已经延伸至更广阔的领域。但使命从未改变，ONLY想要用触手可及的时装来满足消费者对时尚的渴望——坚持自我，打破常规，创意十足。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('0e1eb0fc22fa4965a79578fb1cd90271', 'L2053', '柏朗亚高', 'bolangyagao', 5, 8, 'L2053', 1, 'uploadImg/business/20170103/01201701031704591006.png', NULL, '上海柏朗亚高服饰有限公司简介男装是意大利注册品牌，其产品均由上海柏朗亚高服饰有限公司经营管理，商品开发；在1998年夏投入中国市场，从此开辟了一条发展自由品牌的道路。其品牌发展到现在以塑造概念生活为品牌形象，为消费者提供了欧洲流行同步的品牌服饰，历经公司的成长与经营，服饰已经成为中国市场知名的男装品牌，公司业绩也得到了巨大的提升。以成为“世界知名品牌”为目标，每年产品均按意大利的风格设计，简洁，轻松，随意，制作考究，现代又有经典的创意，配合进口面料为主体，是体现社交与休闲的成功运筹帷幄的男装品牌。品牌不断的拓展全国市场，均在华东，华北，东北等地区一级城市开发特许经销商，开设专卖店（柜）四十余家，不断的形成辐射全国的营销网架，互相协调共同配销的商品；紧密配合公司的运营模式：深韵国际流行动态；突破传统的商品概念；引导国内消费流行；打造精简休闲品牌；使商品行销业绩不断成长。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('0f0acec1c43d457db6b811687d2a2965', 'B1007', '九重签旋转小火锅', 'jiuzhongqianxuanzhuanxiaohuoguo', 7, 1, 'B1007', 1, 'uploadImg/business/20170609/01201706090908481004.png', NULL, '新颖的吧台式就餐形式和传统火锅的完美结合，始终秉持“卫生清洁第一、营养快捷为要、大众消费是本、亲切关怀得宜”的经营理念。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('17ec0f4e378c4f42a76b8c1909539f2f', 'L3010', '诗凡黎', 'shifanli', 4, 9, 'L3010', 1, 'uploadImg/business/20170211/01201702110046101030.png', NULL, '诗凡黎是伊芙丽旗下少女服饰品牌，创建于2011年。俏皮、帅气、清新，是“SEIFINI”赋予每一件衣服的灵魂。目标客群针对18-28岁女性的需求，对90后新生客群的特点及心态有独到的见解，以年轻、趣味、梦想的产品理念。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('184af59836474c9e9159b45afbcdfeea', 'B1008', '德蒙斯特', 'demengsite', 7, 6, 'B1008', 1, 'uploadImg/business/20170105/01201701051553181080.png', NULL, '德蒙斯特品牌童装由“中国十佳童装设计师”邱国萍女士领衔设计，综合国际流行趋势，深入体察儿童生活需求，把\\\"家\\\"和\\\"爱\\\"的概念与孩子的新奇梦想融入到韩版童装的设计中，透过时尚元素、舒适面料和韩式版型呈现不一样的服装风格。       致力为3-15岁的孩子们奉上柔软舒适、品质优良的生活服饰及节日盛装，陪伴小朋友快乐成长。       德蒙斯特产品系列包括：春、夏、秋、冬四季服饰，以及年节盛装，满足小朋友全年的日常穿着需求。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('1b4123ee57d04c358943b52094a7d16a', 'L1013', '千百度', 'qianbaidu', 6, 5, 'L1013', 1, 'uploadImg/business/20170104/01201701041614511038.png', '0516-87797096', 'banner千百度，一个富有文化和浪漫气息的时尚品牌，蕴含米兰时尚风潮，是美丽华实业公司旗下主打品牌之一。首席设计师为意大利知名时尚设计人，设计风格时尚、简洁、舒适而富有活力，紧追世界时尚潮流。该品牌产品时尚、品质优良，无论是设计，还是选材，均充分体现了“关爱女性，创造和谐、高品质生活”的品牌理念，自1995年进入中国大陆市场以来，便深深赢得中国都市女性喜爱。虽然“千百度”已连续3年销售排名全国第三，但却很少有人知道她的主人——鸿国集团董事长陈奕熙。10年前，在省委宣传部工作的陈奕熙毅然只身下海，做起了“千百度”女鞋。如今，“千百度”已由当年的小作坊发展成为拥有资产15亿元的多元化集团公司。面对辉煌，陈奕熙在记者采访时却显现着一种儒商的谦逊和平和。他说，我们正在和意大利客商洽谈品牌合作，我们要收购英国的一个老品牌，我们还准备在美国、日本开厂，让“千百度”走向世界。千百度在中国品牌女鞋的排名到2003年是第三,稳固上升的趋势,使业内称奇,令市场喝彩.他们觉得\\\"千百度\\\"作为中国品牌名字有中国特色,予人优质产品,千锤百炼的感觉,还带有日本,台湾的味道;英文名字C.banner.可解作\\\"中国鞋业的旗帜品牌定位\\\"时尚,性感.在品牌定位\\\"千百度\\\"试图给消费者一种时尚的,物有所值得,性感的感觉,设计队伍由香港,意大利和台湾设计师组成.每一季推出几百款新款鞋,并在当地受欢迎的时尚杂志<时尚>和<瑞丽>常年打广告,建立品牌知名度.随着品牌知名度,美誉度的不断上升.2003年元月千百度被评为\\\"南京 名牌 \\\"六月在海外的成功上市,年中江苏省驰名商标的评选又为我们申报\\\"中国驰名商标\\\"的成功奠定了基础.千百度女鞋的销量位居国内第二位,其目标是打造女鞋第一品牌.', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('1cf6fd2ef34d447c88feff296ec92137', 'L3015', '阿迪达斯', 'adidasi', 4, 11, 'L3015', 1, 'uploadImg/business/20170211/01201702110027081025.png', NULL, '阿迪达斯（adidas）是德国运动用品制造商，阿迪达斯AG的成员公司。以其创办人阿道夫?阿迪?达斯勒（Adolf Adi Dassler）命名，在1920年于接近纽伦堡的黑措根奥拉赫开始生产鞋类产品。1949年8月18日以adidas AG名字登记。阿迪达斯原本由两兄弟共同开设，在分道扬镳后，阿道夫的哥哥鲁道夫?达斯勒 （Rudolf Dassler）开设了运动品牌puma。其经典广告语：“没有不可能”（Impossible is nothing）。2011年3月，斥资1.6亿欧元启用全新口号——adidas is all in（全倾全力）。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('1e1c320b590f42528e4a85ef6e5f87e6', 'L3047', '耐克', 'naike', 4, 11, 'L3047', 1, 'uploadImg/business/20170824/01201708241717461029.jpg', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('20d8b09b93ed48fd889427807ca657d2', 'L2039', '爵士丹尼', 'jueshidanni', 5, 8, 'L2039', 1, 'uploadImg/business/20170208/01201702082327541011.png', NULL, '自1998年品牌创立至今，A.JESDANI爵士丹尼在中国各大城市已开设超过300多家的终端门店，累计会员数量近6万名，在中国一线商圈，连续多年蝉联高端男装销冠殊荣。为迎合并引导中国精英男士日渐国际范的着装需求，A.JESDANI爵士丹尼结盟顶尖的意大利I.D.D.设计机构，联袂欧洲数家顶级面料供应商，全力塑造“为非凡奉上不凡”的高端男服品牌。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2175f2f11f894b6c95ac1c35faa46107', 'L4041', '手工炸鸡', 'shougongzhaji', 3, 1, 'L4041', 1, 'uploadImg/business/20170609/01201706090905401002.png', NULL, '正宗韩国炸鸡，100%新鲜鸡肉，无激素！姐姐家炸鸡绝对品质保证：三黄鸡+自己都吃的油（绝非地沟油），配上姐姐亲手熬制的酱料，咬上去直接是舌头与肌肉的碰撞，而不是厚实的面粉，姐姐家就是这么炫酷这么任性。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('22c9203fca784efca8414be3844c1443', 'L3026', '九染', 'jiuran', 4, 8, 'L3026', 1, 'uploadImg/business/20180127/01201801271231401009.jpg', NULL, '九染品牌是来自广州的设计师品牌，该品牌以优雅、简约、自由为设计理念，专注高水平的设计和高品质的面料工艺，定制高端舒适的贴心衣物，倡导经典而不张扬的生活态度，为聪明而骄傲的男性带去魅力与自信，力求在任何穿衣场合都能绽放独特气质。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2347731bf09241edaa8f97154642b752', 'S1-1-1002', '锋尚造型', 'fengshangzaoxing', 6, 12, 'S1-1-1002', 1, 'uploadImg/business/20180125/01201801251604571030.png', NULL, '锋尚造型成立于2013年，是一家专业的形象设计公司，以其专业的技术，完善的服务，超前的眼光，领先于美发行业，公司贯彻一切以顾客为本，引领美发潮流的经营理念，提供最专业的技术，最完善的服务。以打造卓越品牌，塑造行业新标准为目标，努力奋斗。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2393f7e4cdcb44c9ba8fdb3b5c47446b', 'L2064', '乔顿', 'qiaodun', 5, 8, 'L2064', 1, 'uploadImg/business/20170103/01201701031741431019.png', '0516-87799126', '品牌故事：       乔顿男装都市男人一站式购衣的首选之地。乔顿男装服装，高贵与雍容中透露着内敛的骄傲。乔顿男装服装，就象男人的特质，契合男人的品味，是服装界独一无二的经典符号。              乔顿?JODOLL构筑了乔顿品牌服饰柔、挺、薄、轻的国际现代流行导向。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('24755fd1ac0145fcb2e2030b751e66cc', 'B1001', '家得乐', 'jiadele', 7, 2, 'B1001', 1, 'uploadImg/business/20170104/01201701041558581025.png', NULL, '月星家得乐超市是月星集团专业打造的居家连锁超市，主要经营各式专业居家用品，商品种类繁多，强调物美价廉，彰显个性魅力，大到沙发，儿童套房，小到橱具，布艺饰品等，上万种商品满足了众多消费者一站式购物的需要，或新颖别致，或精致典雅，汇聚着艺术的精华。与居家办公和谐的搭配，极具装饰性，让您真正感受到生活的高品位。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('272b2e3d347b4ec8b20fec23a82cd685', 'L2003', 'LANCY', 'LANCY', 5, 2, 'L2003', 1, 'uploadImg/business/20170211/01201702110002311016.png', NULL, '朗姿，中国高端时尚品牌，拥有国际视野及国际影响力，致力成为成就“泛时尚生态圈”的互联网化和国际化的一流时尚产业集团。       朗姿股份, 中国国内第一家高端女装上市公司,是一家集研发设计、生产、销售、物流于一体的现代化企业。旗下拥有朗姿（LANCY FROM25）、莫佐(MOJO.S.PHINE)、莱茵(LIME FLARE)、玛丽 (marie n°mary) 、JIGOTT、liaalancy、FABIANA FILIPPI、DeWL、Agabang等国际国内知名品牌，多品牌运作格局，分别诠释着朗姿对时尚的不同理解，实现了顾客群体全面覆盖，满足不同消费者的个性化消费需求。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('273df0cecdb44c2698f9b36d71c832b3', 'L2032', '哥伦尼澳', 'gelunniao', 5, 3, 'L2032', 1, 'uploadImg/business/20170208/01201702082316371010.png', NULL, '哥伦尼澳（COLOMNIAO）坚信时尚就是在继承与颠覆之间不断寻求平衡，哥伦尼澳（COLOMNIAO）的设计推陈出新，结合了时尚人群对潮流的创意理念和专业人士的心得认知，让新鲜的创意永远融入哥伦尼澳（COLOMNIAO）的经典中。哥伦尼澳（COLOMNIAO）适合任意一种经典时尚的搭配，涵盖丰富生活的任何角落，华丽中散发着一种质朴与亲切。       哥伦尼澳（COLOMNIAO）是西班牙皇室贵族的典范，秉承皇室眷顾的传承历史，以上乘品质与精湛工艺见称，是欧洲中高档知名男装品牌之一。哥伦尼澳（COLOMNIAO）手工精细制作细腻、经典，并结合中欧文艺复兴以来追求个性发展的大方、洒脱、自然为一体，从骨子里透出贵族的高傲与奢侈，进而创造出纯粹个性化的男人世界。跨越时代，他成为那个时代的精神领袖，掀起了时尚界的震撼，从此，哥伦尼澳（COLOMNIAO）承载了整个世纪的传奇……', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2b8e97f3f5b24815ac702faef03b9019', 'B1028', '沫伐小火锅', 'mofaxiaohuoguo', 7, 1, 'B1028', 1, 'uploadImg/business/20170609/01201706090916111006.png', NULL, '沫伐旋转小火锅 麻辣失态火锅店,中央厨房操作,干净卫生,味道鲜美。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2e7c800fb401445b8eb40b6e79835db3', 'L1018', '康莉', 'kangli', 6, 9, 'L1018', 1, 'uploadImg/business/20170104/01201701041612551036.png', '1.8626013172E10', '康莉品牌源自宝岛台湾，用浪漫、自我、儒雅的生活格调演绎着品牌的含义，为一系列康莉产品注入了近乎完美的设计元素，并揉入了“似水流年，完美不变”的品牌文化内涵，使其成为具有独特和自我风格的潮流风向标，无论是业务繁忙的职场还是情调典雅的酒吧，亦无论是严谨的谈判场所还是热闹的PARTY，康莉均能在不经意中流露出自我的个性风采。康莉具有婉约的时尚感，充满时代气息的色彩语调，穿梭于贵气和性感之间，让都市中的白领女性在康莉中展现独有的小资情调，成为都市生活中的新贵。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2e7d59896e6141c3b9edf88c4c266683', 'L2058', '佛朗尼齐拉', 'folangniqila', 5, 8, 'L2058', 1, 'uploadImg/business/20170103/01201701031740361018.png', '0516-87798061', 'Frognie Zila（佛朗尼?齐拉），国际高端男装品牌之一。        Frognie Zila自品牌创建之日起，始终坚持以欧罗巴文化为基点，追求卓越，不断创新。经过多年不懈的努力，逐步形成了简约、优雅、精致、雍容的都市风格，在瞬息万变现代化生活中，为都市男性提供了一种时尚而不落伍、有品位而不繁琐、大气而不落俗套的着装风格，让男士们在穿着Frognie Zila品牌服装的过程中，去体会一种浓郁的欧洲风情和充满时代感的都市文化的特色。为生活在都市生活圈的政界要员、商贾名流、金融界精英及社会成功人士，提供了一种全新的、有别于国内市场中所谓的粤派、闽派，浙派品牌的文化节点，形成一个具有国际化、高品质、同时兼具都市文化魅力的高端男装系列品牌。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('2ff2709cb42d4fefa043fad415d01ad3', 'B1023', '优宿优品', 'yousuyoupin', 7, 2, 'B1023', 1, 'uploadImg/business/20170211/01201702111133131036.png', NULL, 'USUPSO优宿优品成为“生活优品消费”领域的开拓者和领导者作为“生活优品消费”领域的开拓者和领导者，USUPSO优宿优品自创立以来在全球市场上获得广大消费者的认可和好评，每年有超过100,000,000人次到店消费。USUPSO优宿优品奉行的“简约、自然、富质感”生活哲学和“回归自然，还原产品本质”的品牌理念也备受业界和市场的瞩目，在欧美、日韩等时尚消费前沿市场先后刮起“生活优品消费”之风。 USUPSO优宿优品精益求精、勇于创新USUPSO优宿优品无论是产品品质，还是经营管理上，都讲求精益求精、勇于创新，既保证了品牌出色的品质，又以其清新自然、简约大气的风格，揭开了生活优品消费的新时代。如今，随着USUPSO优宿优品全球化进程的加快，品牌在细分市场上进行更为专业化的管理和精准化的营销，进驻中国市场，必将为中国生活优品消费市场的发展带来新的力量。 USUPSO优宿优品成立了全球首家“生活优品调研室”为了设计制造“货真价实”的商品，USUPSO优宿优品成立了全球首家“生活优品调研室”，从产品的设计、素材、功能、技术及安全性等方面出发，确保产品符合全球市场的标准，并从设计、制造到物流的各个环节与众多优质合作伙伴形成深厚的战略合作关系，为客户创造更高的价值。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('302ae8964af444f0988505dd699e6d33', 'L2063', '捷思凯莱', 'jiesikailai', 5, 8, 'L2063', 1, 'uploadImg/business/20170313/01201703131558591027.png', NULL, '捷思凯莱男装既有潇洒不羁的一面，也有稳重知性的性格，男人的嬉皮与优雅，都能够通过捷思凯莱男装得到完美的诠释。在色彩搭配、选料、裁剪及品质上凝聚了男儿刚烈的气质，捷思凯莱男装坚韧的个性，创意独特。捷思凯莱男装卓越不凡：均为1、2线当红产品，讲究品位、品质和时尚，风格多元，优势突出。把男性的自信干练特质表露不凡。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('318a76764374490fa826dd5bc42ab40d', 'L3073', '疯狂积木', 'fengkuangjimu', 4, 6, 'L3073', 1, 'uploadImg/business/20180125/01201801251559241028.png', NULL, '疯狂积木所采用的是塑料积木，形状有上千种多种，每一种形状都有十几种不同的颜色。它靠小朋友自己动脑动手，可以拼插出变化无穷的造型，令人爱不释手。积木对小孩智力开发，培养动手能力和想象力，促进儿童认知能力的发展有着重大意义。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('338e6834f467479ebbeafe1c955c1f71', 'L3007A', '起色', 'qise', 4, 9, 'L3007A', 1, 'uploadImg/business/20180127/01201801271426191016.png', NULL, '主打品牌有“起色”“起色枫情”两个品牌。以18-40岁的时尚都市女性为主流群体设计，崇尚简洁与精致的融合，结构与细节的完美把握柔和东西时尚元素。搭配明快的色彩、出色的版型、精湛的工艺、舒适的 面料，随意唯美中散发出青春的活力与知性的美丽。敏锐地捕捉现代都市女性的心理，通过撷取时尚潮流的精髓并加以创意发挥，做到在时装设计风格上独树一帜。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('35bc63ca151744eeab012fbd0bd85963', 'L1036', '瑞贝卡', 'ruibeika', 6, 5, 'L1036', 1, 'uploadImg/business/20170105/01201701051515121064.png', '0516-87738802', '瑞贝卡女鞋REBACCA SHOES時尚  舒适  潮流 REBACCA瑞贝卡品牌创建于1998年，是行业中具代表性的中高端女鞋品牌之一，涵盖正装、时尚流行、休闲、婚宴鞋等品类产品。我们充分研究不同地域、不同年龄、不同地区脚型的细微差别，集合多方的经验与技术，着重在楦型、结构、选材等方面，创造出最佳舒适度的鞋履。REBACCA瑞贝卡女鞋除了非常舒适之外,产品更不断注入最新的時尚元素。我們帶给您的，不仅是一双舒适女鞋，更是一份時尚的体验。REBACCA瑞贝卡女鞋的设计极具时代韵味不但是潮流与个性的象征，并且从选料颜色，以至采用先进制作， REBACCA都表露出对产品外形，品质与工艺的严谨要求。瑞贝卡全系列采用纯正牛皮打造的皮鞋极具优雅气质，不但舒适透气，且经久耐磨。并且柔软舒适透气的真皮鞋垫，具有皮质原始的透气性及柔韧性，脚感十分舒适，体现瑞貝卡工艺技术的精湛。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('3642085345ff4df68b6f1fe0ad0f8c1d', 'L3033', 'CH9II HOMME', 'CH9II HOMME', 4, 8, 'L3033', 1, 'uploadImg/business/20180125/01201801251442311001.png', NULL, 'CH9II HOMME 是徐州独品行商贸有限公司旗下男装设计品牌，拥有开发设计、生产销售、一体化经营模式，追求原创、自然、艺术，结合生活态度来设计并传达CH9II HOMME品牌理念，始终领先一步的个性时尚定值以及对原创设计的坚持与付出，塑造了品牌形象店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('38dfe8b044ce4c9d84d4b4bb3c287d22', 'L4064', '上影影院', 'shangyingyingyuan', 3, 10, 'L4064', 1, 'uploadImg/business/20170313/01201703131653441059.png', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('3a05df56dd7c4be7a3ace0d65c9c18d1', 'L2027', '安莉芳', 'anlifang', 5, 9, 'L2027', 1, 'uploadImg/business/20170213/01201702131443181058.png', NULL, '安莉芳，香港内衣品牌，创办于1975年，产品设计时尚，制作精巧，能为不同年龄的女士提供全线内衣产品，无论是活泼的青春少女，还是成熟女士，妊娠母亲，安莉芳皆能全面照顾周到，除了内衣系列，集团旗下的泳衣系列及睡衣系列，均能够令顾客满意。提供舒适、称心满意的产品及服务是安莉芳集团对顾客的承诺。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('3a41f57ea89b4a45bd5a47f35744d818', 'L3062', '井格火锅', 'jinggehuoguo', 4, 1, 'L3062', 1, 'uploadImg/business/20170824/01201708241721341031.jpg', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('3d480e44bb6642d6b334a750d55cb87e', 'L3009', 'The Shoes Bar', 'The Shoes Bar', 4, 5, 'L3009', 1, 'uploadImg/business/20170411/01201704111353571018.png', NULL, 'THE SHOES BAR是一家针对都市年轻、潮流人士，以销售时尚、休闲、运动鞋为主, 涵盖综合品牌及特别渠道品牌的鞋类和配件产品', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('4106db79c63b413d8145fcefa38cdf8c', 'L1084', '木槿生活', 'mujinshenghuo', 6, 12, 'L1084', 1, 'uploadImg/business/20170411/01201704111346181014.png', NULL, 'MUMUSO木槿生活保持独特魅力地缘由所在，也是MOMOSU木槿生活尝试让更多人的日常生活变得更好的缘由所在。一直以来，木槿生活都坚持为大众提供经济、实惠、年轻、时尚的生活用品，将功能、质量、设计、价值结合在一起，并始终牢记可持续发展理念。从产品、包装到市场终端服务，木槿生活将这种理念贯彻到日常经营的每个环节。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('41663a7109c549f38a4ae516aa2dad33', 'L3044', '美侬甲艺', 'meinongjiayi', 4, 4, 'L3044', 1, 'uploadImg/business/20170630/01201706300831461030.png', NULL, '美侬?美睫店开业啦！舒适优雅的环境，各种中高端甲油胶品牌（经SGS认证健康环保）+进口美睫睫毛（可柔洗30天不乱不倒）。专业的眉眼唇定妆技术（纯植物色乳，不含重金属，健康环保）。女为悦己者容 快快开启专属你的美丽定制吧。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('4219cca902b44e3bae8382953703cb33', 'L1082', '海澜之家特卖', 'hailanzhijiatemai', 6, 8, 'L1082', 1, 'uploadImg/business/20180127/01201801271227131006.png', NULL, '\\\"海澜之家\\\"是海澜之家股份有限公司旗下服装品牌，自推出以来，以全国连锁、超大规模、男装自选的全新营销模式引发了中国服装市场的新一轮革命，其平价优质的市场定位，款式多、品种全的货品选择，无干扰、自选式购衣方式迅速赢得了广大消费者的欢迎，塑造了\\\"海澜之家--男人的衣柜\\\"的鲜明品牌形象。2014年4月11日，海澜之家上市。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('4829ca75d14344de83fd1d5242c4579e', 'S1-1-2003', '蒲公英书院', 'pugongyingshuyuan', 5, 12, 'S1-1-2003', 1, 'uploadImg/business/20170725/01201707251014151011.png', NULL, '蒲公英书院是徐州一家采用多媒体教学的书法机构。改用视频讲解，更直观、清晰，课后老是一对一辅导，两种方式结合，让学生快速掌握每个笔画及字体的规范性，先进的教学理念和全新的教学方案，会使您的孩子在短时间内提高书写能力并热爱书法。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('49317b74980b4c9b95d129ab73406374', 'L2054', 'us_polo_assn', 'us_polo_assn', 5, 2, 'L2054', 1, 'uploadImg/business/20170208/01201702082302151008.png', NULL, 'US POLO ASSN是美国马球协会(U.S. Polo ASSN.)开发的休闲服装品牌，该品牌产品品味极致，优雅休闲中略带自由奔放，时而绅士时而狂野的完美平衡，使得它成为众所皆知的时尚名牌，视为品味与气质的象征！        源于1890年美国马球运动,马球运动，一个被尊崇为身份和地位的“贵族运动”，随着1890年美国马球协会的创立，以U.S.POLO ASS及马球运动的图案注册的美国马球协会品牌也随之遍布美国走向世界，以该品牌开发的皮具、运动服饰等系列产品更是以独具匠心的品质设计和卓越不凡的品牌格调成为社会各界名流的时尚之选。        一个多世纪以来，U.S.POLO ASS 所代表的休闲、自由、时尚的精神内涵不断地在其品牌产品中得到完美地体现和延伸。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('497e721b15424eec88b074838dd58793', 'L1003', '范思哲', 'fansizhe', 6, 9, 'L1003', 1, 'uploadImg/business/20170105/01201701051454411052.png', '0516-87791162', 'VERSACE COLLECTION 的足迹要追溯到上世纪 1991 年，专门为男士而开的一条线，主攻美国市场，并以独特的正装和时尚的款式迅速取得了成功。VERSACE COLLECTION 的以其独特的品质很快赢得了市场，并迅速在全球市场上受到了极大的欢迎。2009 年，在极富创意和喜欢独特裁剪风格的设计师 Donatella Versace 的带领下， VERSACE COLLECTION 又开辟了女装高级成衣系列，由 VERSACE S.P.A. 负责生产和营销。VERSACE COLLECTION， 是一个极具品牌特色的品牌，美杜莎半脸 logo，让人过目不忘，是 VERSACE 总部惯用的品牌形象。VERSACE COLLECTION 提供完整的成衣系列，不仅如此，VERSACE COLLECTION 还推出配件系列，该系列不但承继VERSACE 的精髓，而且也以极富创意的特质创造属于 VERSACE ACCESSORY 系列的品牌特色。VERSACE COLLECTION 为粉丝们创导和引领了一种追求个性且有型有格的穿衣风格，恰如其分的性感，避免了虚有其表的浮华 , ”一切都刚刚好“。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('4be14dca54b44fb28f251bacdd45dfb9', 'S1-1-4001', '环球孙菲艺术中心', 'huanqiusunfeiyishuzhongxin', 3, 12, 'S1-1-4001', 1, 'uploadImg/business/20170824/01201708241731311034.jpg', '0516-87799508', '亲爱的朋友们，您是否希望您的身体变得更加挺拔秀丽，气质变得更加高雅？那就来环球孙菲艺术中心吧！一、教学目标：通过舞蹈等相关高雅艺术培训，注重培养您的艺术表演能力和文艺底蕴，全面提升阴的审美能力和艺术修养。二、教学优势：1.本中心舞蹈课程都是由专业院校的教师执教，并有中国舞蹈家协会颁发的教师资格证，本中心会定期安排学员参加中国舞蹈家协会级别考试；2.中国内地著名柔术演员孙菲老师亲临指导，面对面教学；3.成为孙菲艺术中心的学员，有可能跟导师登上央视，卫视，各大舞台，并且我们也可选择推送学员考入孙菲老师毕业学校沈阳市艺术学校及北京舞蹈学院；三、课程内容：舞蹈培训（包括中国舞、爵士舞、街舞、芭蕾舞等），主持人口才培训、成人形体瑜伽培训，音乐钢琴培训、独唱、合唱。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('4e440a70973d48f4aae3bdc15218e7e7', 'L1010', 'ST&SAT集合', 'ST&SATjihe', 6, 5, 'L1010', 1, 'uploadImg/business/20170104/01201701041617001039.png', '1.572078858E10', '佛山星期六鞋业股份有限公司（股份代码：002291），为中国大陆领先的鞋业品牌运营商，经营的品牌以年轻和时尚为主，公司拥有规范化的庞大销售网络和专业化的品牌运营团队。公司拥有设计研发中心及专业制造工厂、十二个分公司，三十个办事处，在中国大陆拥有各品牌形象专卖店（专柜） 1200个，经营的品牌包括：自有“ST&SAT”（星期六）、“FBL”（菲伯利尔）和“SAFIYA”（索菲娅）、“MOOFFY”、“Rizzo”品牌；代理意大利“Baldinin”、\\\"Killah\\\"品牌。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('4e5e9a5254d8446195f310b93a190462', 'L2057', '伦德保罗', 'lundebaoluo', 5, 8, 'L2057', 1, 'uploadImg/business/20170103/01201701031734331016.png', '0516-87799884', 'Londa Polo（伦德 保罗）品牌定位为中高档都市生活休闲男装，在国内一线城市已经发展百来家专卖店和高档商场专柜。依托公司强大的设计开发系统，伦德保罗男装每年均推出具有国际时尚潮流的男装系列。产品款式在紧随欧美时尚潮流的同时，更保持特有的品牌风格。是时尚和经典的象征，个性与高雅的结合，引领着国内的时尚潮流和穿着理念，并赢得了顾客的一致认可', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('51941bd4694c4a4b9bddfc5fbfdde34d', 'S1-1-2001', '红黄蓝亲子园', 'honghuanglanqinziyuan', 5, 12, 'S1-1-2001', 1, 'uploadImg/business/20170411/01201704111405381020.png', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('53956a4cd05448e3a5be0f6001fde28c', 'L2075', '杰克琼斯', 'jiekeqiongsi', 5, 8, 'L2075', 1, 'uploadImg/business/20170702/01201707021407381039.png', '0516-87791663', 'ACK & JONES（杰克琼斯）始终专注男装设计和流行趋势，代表着都市精英一丝不苟的穿衣品味。JACK & JONES（杰克琼斯）坚持“成就最好的男人”的品牌承诺，授予展现天性的力量，赞扬率性造型的能力，展现雄性本能与野心，打造女性渴望的男人，让男性散发出非凡气度，无论身在职场还是生活中都能以最佳姿态迈向成功。其考究的做工，不流于浮夸的剪裁,让职场精英们尽显自信和独到着装品味。独有的简洁设计，丰富多样的服装与各式配件极大程度上满足了都市男性对服装的全方位诉求，为都市男性塑造专属的个人风格。身为业界领导品牌，JACK & JONES（杰克琼斯）重新定义“率性”并将改变大众的认知，让率性成为阳刚与酷型的代名词，成为年轻男人追随的时尚指标。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('539ec415a5794b63a7cbff6dd8b854e2', 'L1004', '明仁眼镜', 'mingrenyanjing', 6, 12, 'L1004', 1, 'uploadImg/business/20170104/01201701041614221037.png', '0516-83561506', '明仁眼镜是徐州专业领先的眼镜公司，于1998年成立，是徐州地区规模较大的一家专业眼镜连锁机构。公司拥有强大的眼镜行业价格优势，与各大眼镜制造商有着良好的合作关系。产品能满足高，中，低档各层次消费群体的需求，形成了让消费者普遍认可的经营风格，其商品结构合理，售前售中售后服务措施细致完善。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('53e279a5a39a41be859b129670e003c4', 'L3067', '凯儿得乐', 'kaierdele', 4, 6, 'L3067', 1, 'uploadImg/business/20170725/01201707251005371005.png', NULL, '凯儿得乐所倡导的品牌理念：HEALTH——关注健康HAPPY——得乐成长CARE——用心呵护宝宝每一天每个孩子都是一个天使，宝宝的健康成长是妈妈最大的心愿！凯儿得乐肩负民族使命，坚守产品底线，持续研发制造具有国际品质的多元孕婴童产品以及专业、亲切、关怀的母婴健康服务咨询，以爱之名，为宝宝创造安全健康的贴身用品消耗圈，让民族的未来之星，能够健康成长，得乐开怀！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('577ce352fe774322a87bcff43398aa1a', 'L2019', '革言', 'geyan', 5, 7, 'L2019', 1, 'uploadImg/business/20180125/01201801251640091000.png', NULL, '浙江格莱美服装有限公司始建于1996年，位于浙江省嘉兴市海盐县百步工业园区，是一家专注于研发设计、生产和销售皮革、裘皮、毛皮服装的时尚服饰公司。公司采用ODM加OBM相结合的经营模式，ODM业务目前已是国内外众多一线品牌服装企业指定皮衣供应商，公司近年将创建品牌、产品设计研发、发展销售渠道、柔性供应链建设作为战略目标，将企业的经营活动全面纳入品牌战略发展轨道，目前旗下有GOMINO和革言两个皮具服饰品牌。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('583f90f2b9aa471b9e758d52a38b9471', 'L4039', '神和料理', 'shenheliaoli', 3, 1, 'L4039', 1, 'uploadImg/business/20170824/01201708241728591033.jpg', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('58580bf34b784ce6b828e43bfaa90c83', 'L2037', '马诺伦萨', 'manuolunsa', 5, 8, 'L2037', 1, 'uploadImg/business/20170911/01201709111708561000.png', NULL, 'METRO MESSE马诺伦萨男装品牌：     不管你是否承认，意大利米兰无疑是世界时尚帝国的地都。这里有着GUCCI、PRADA、SALVATORE等为大众所熟知的顶级品牌，但真正属于米兰的品牌，却是对于中国人不太熟悉的品牌METRO MESSE马诺伦萨。在意大利，作为一名潇洒俊逸的绅士一定都要拥有一套属于自己的METRO MESSE马诺伦萨的，因为真正的意大利男人，一定深深了解METRO MESSE马诺伦萨品牌传递的那份价值—卓越的款式与非凡的品位！       曾在圣罗兰YSL(Paris)设计一系列当代男性服饰长达5年之久的Max Azria，希望将法式设计风格及意大利式生活形态相结合，以满足现代时尚成功男性对服装的需求，于是决定创立自己的品牌。1989年METRO MESSE马诺伦萨正式创立的品牌，METRO MESSE马诺伦萨是取自意大利文的原意[卓越的款式与非凡的品位]。从他的设计裁剪中，你可以找到多样的服装款式以满足男性不同的生活需求，让注重款式感的男性，不论在工作、约会、外出、或是参加社交，从白天到黑夜，METRO MESSE马诺伦萨绝对胜任各种场合的选择。       在METRO MESSE马诺伦萨的服饰帝国里，涵盖西装套装、商务休闲系列、牛仔系列、皮具及各式各样的配件，每年设计款式达千款，并且生产出大量高品质的产品。为了让更多人可以拥有METRO MESSE马诺伦萨，他以降低成本的方式，合理整合售出的价位，创造出生活上全面性的品牌，而此经营模式，METRO MESSE马诺伦萨成功占有意大利的消费市场，亦让欧美世界为之疯狂 。在20年的品牌运作过程中，METRO MESSE马诺伦萨很快将销售扩展到了全世界，米兰、纽约、东京、伦敦、台北……这些时尚之都无一不被METRO MESSE马诺伦萨的绅士气质所折服。         如今，METRO MESSE马诺伦萨首度登陆内地，即将在中国内地时尚中心开幕。Max Azria就是希望透过他的服饰，让更多中国时尚的成功男士消费者拥有那分自信和气度，共同缔造___马诺伦萨新的辉煌！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('58bf84a558a74e4c9235a07071bce856', 'L1097', '汤鲜生', 'tangxiansheng', 6, 1, 'L1097', 1, 'uploadImg/business/20180127/01201801271511121032.png', NULL, '汤鲜生麻辣烫是一家立足于徐州的本土品牌，将重庆麻辣烫的麻、辣、鲜、香、醇厚融为一体，秉承了重庆麻辣烫特有的的醇香厚实，精选优质天然原辅材料，严格量化的秘制配方炒制；打造出了一种别具一格的风味。汤鲜生麻辣烫专门为每一个劲爽酷辣的年轻人，提供鲜香麻辣的年轻味道，坚持打造干净、卫生、放心的麻辣烫。菜品丰富，汤头鲜浓，清香中求醇厚，麻辣中透着柔和。新鲜的食材与丰富饱满的口感层次，一定会让品尝过的你过嘴不忘。店铺分布 :徐州', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('58cd855fcc6c401a873338e8c92aece8', 'S1-1-1006', '福彩', 'fucai', 6, 12, 'S1-1-1006', 1, 'uploadImg/business/20170213/01201702131353391055.png', '1.5905202894E10', '中国福利彩票始于1987年，以“团结各界热心社会福利事业的人士，发扬社会主义人道主义精神，筹集社会福利资金，兴办残疾人、老年人、孤儿福利事业和帮助有困难的人”、即“扶老、助残、救孤、济困”为宗旨。随后又设立了中国福利彩票发行中心作为发行机构。目前中国福利彩票的种类有：刮刮乐、双色球、3D、地方福彩、七乐彩、35选7、29选7、东方6+1、华东15选5、新3D。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5a0ccf4345404887aacc9910b5b0e961', 'L2034', '佛伦斯', 'folunsi', 5, 8, 'L2034', 1, 'uploadImg/business/20170103/01201701031719351012.png', '1.8952290731E10', '为追求随心生活态度的男士而创造 用做减法的方式来进行设计增强服装实穿性又具个性把当代人文，生活理念融入服装贴近生活为都市男士们打造出相应的形象彰显品位给生活增添几许艺术的气息', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5a967d71d9894fcf91269db95f7d4adc', 'L2018', '阳光时尚', 'yangguangshishang', 5, 4, 'L2018', 1, 'uploadImg/business/20170208/01201702082341311012.png', NULL, '阳光时尚是一个在江苏阳光集团巨人肩膀上诞生的高端品牌，它给我们带来一股全新的商务服装时尚风潮。       阳光时尚将一如既往地积极推广新经典商务主义的理念和“阳光人生、时尚生活”的生活态度，致力于将SUNSHINE打 造成中国时尚商务服饰领域最具影响力的领导品牌，引领现代时尚商务新风潮。       承担着本土民族品牌崛起的使命，SUNSHINE凭借江苏阳光集团全球知名精纺呢绒生产基地及高档服装生产基地的优 势，采用江苏阳光集团最佳品质面料，运用江苏阳光集团国际顶尖奢侈品服装生产流水线生产一流品质的高档服装。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5bf4bf59b6dd43b6a869832bc4e0df66', 'L3004', '咖飞', 'kafei', 4, 4, 'L3004', 1, 'uploadImg/business/20170103/01201701031725381013.png', '1.5162266551E10', '设计师品牌咖飞为活力青年提供上可开会，下可约会的时尚通勤装，更有吸睛的情侣系列表达浓浓爱意。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5c98a5b730bb4aae8b852c434f87327c', 'L4002A', '三石书屋', 'sanshishuwu', 3, 12, 'L4002A', 1, 'uploadImg/business/20180127/01201801271427361017.jpg', NULL, '三石文化创意空间是依托于徐州市文广新局建立的文化创意孵化基地。旗下三石书吧是集图书销售，咖啡休闲，书友沙龙于一体的多功能休闲空间。自2015年10月开业以来，“三石书吧”品牌已为广大市民所认知，这里汇集全国著名出版社精选上万册优秀图书供读者阅读，店内书籍不断更新，同时还提供品味纯正的咖啡，各种鲜、蔬果茶，饮品。人文环境优雅，文化氛围浓郁，成为徐州当地文化地标之一，跟随三石书吧共同成长还有一群忠实的会员。店铺分布 :徐州', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5cd2b6efcf9e48789e57fdddd295f61c', 'L2051', '恩裳十二蓝', 'enshangshierlan', 5, 9, 'L2051', 1, 'uploadImg/business/20170411/01201704111352361017.png', NULL, 'INSUN恩裳以建筑般的简约结构为设计特色，以低调的黑、白、灰、驼主色营造高雅视觉，其优雅的线条，精美的裁剪，加之在其一直推崇的实用主义哲学基础上，注重众多华丽细节的设计博得了许多国内精英女性阶层的喜爱。与身和谐，与心自由的设计理念和对生活的热情是“INSUN”诠释时尚的根本动力。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5cdec41c98dc4910aa4f75a6c0edf063', 'L2031', 'X-MOOM', 'X-MOOM', 5, 9, 'L2031', 1, 'uploadImg/business/20170103/01201701031704031005.png', '1.5152112144E10', 'X-MOOM设计崇尚自然流畅、个性独立、大气而内在的知性美感。具有艺术表现力的设计形式感贯穿于形态与色彩、质感与结构、气质与神态的交相辉映之中，展现知性女性冷静而个性的人格魅力。跨界的设计团队集合多元的设计理念，艺术精神是其孜孜以求的时尚境界，设计灵感来自前沿的绘画、音乐、电影、DV、新媒体流派，包容了精英文化和通俗文化，且在创造流行和时尚中不断探索艺术和商业间的新融合。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('5cf402d400314361965cb48f3d8e4d2c', 'L2044', 'Falouina', 'Falouina', 5, 9, 'L2044', 1, 'uploadImg/business/20170103/01201701031711561010.png', '0516-87988689', '当代中国女性所梦想的生活方式，其基本要素离不开爱、自然、亲切、温暖、单纯、明亮、彩色……上述种种，组成了理想的生活模样。       创立于2000年的中国女装品牌FA LOUINA以人心的美好、生活的良善、环境的健康作为品牌的方向，传播健康自然的在世态度和简约精致的生活美学。       秉承艺术与工匠精神。FA LOUINA以“美感、合适、生命的长度”考量每一件服饰的设计与生产，让服装回归中国女性的生活本质。       敬畏大自然，保护生态环境。大自然赋予了我们最好的材料。品质优良的棉、麻、丝、毛，是FALOUINA的首选。事实上，这种对自然材质的严苛要求也表现在对面辅料生活商的选择上，与那些持有并实践环保理念的供应商合作。对可循环材料的采用不仅减少了对环境的污染，同时穿着的感受更加舒适。       内心干净柔软、气质美好友善，FA LOUINA一如中国女性体贴入微的邻家姐妹', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('61ca79f8a25843968699a2555911350c', 'L3005', 'NOLA', 'NOLA', 4, 7, 'L3005', 1, 'uploadImg/business/20170206/01201702062151331001.png', NULL, '感受纯粹女人的个性时尚、体验唯我独尊的贴心服务，NOLA.真我女人的代名词', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('6349ec373d544da1bbb5a53b10d2e34b', 'L2029', '璞玉', 'puyu', 5, 12, 'L2029', 1, 'uploadImg/business/20170411/01201704111350161016.png', NULL, '“璞玉”意为未经雕琢之玉。而绿玉温润古朴：美人颜如玉，君子德如玉，壮志节如玉—这是一种品性，是一种精神。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('65536d3f52dd46fd899c070ccc15b0da', 'L4061', '贝尼泰迪', 'beinitaidi', 3, 1, 'L4061', 1, 'uploadImg/business/20170609/01201706090854151001.png', NULL, '炸鱼薯条是英国国粹之一但它并非是由英国人民自己创造的是南欧的犹太人将这一食物在第一次工业革命后带入带入英国的但是炸鱼薯条的流行最大的推手就是第二次世界大战在二战期间英国对人民实物发放有所限制但是并未对土豆以及海中捕捞的海鱼作出限制这可是解决了英国人民的饥饿问题的。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('6667b2aede5547c1a29ae1756b5aa4e8', 'L1057', 'COZY STEPS', 'COZY STEPS', 6, 5, 'L1057', 1, 'uploadImg/business/20170523/01201705231355511003.png', NULL, 'COZY STEPS品牌创建于1994年，隶属于革乐美时尚集团，是备受消费者喜爱的舒适鞋履品牌，也是少数几家融通从传统到现代科技并实现完全资源整合的品牌之一。COZY STEPS自诞生之初便饱含了革乐美200多年制革工艺的品牌基因，传承其优良的匠心精神和严谨的制鞋态度，坚持以科技缔造舒适，秉承“舒适，简约，自由，科技”的品牌理念，始终致力于为每一位消费者提供高品质的皮革产品和非凡的舒适享受', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('6a0ea66ffb584dfcb8f04d432955bd64', 'L3006', '秋熠', 'qiuyi', 4, 4, 'L3006', 1, 'uploadImg/business/20170629/01201706291359311026.png', NULL, '为美而设计，为经典而创造！2008年“秋熠”凭借对市场敏锐的时尚触觉，在中国展开了一场关于高档成衣的浪漫之约。严谨的制作工艺，浪漫的思维方式，时尚的设计手法，严格的面料排选，认真的细节考究，秋熠的浪漫之约已逐渐成为中国众多爱美女性的时尚风向标。秋熠在发展市场以来，结合中国独有的特色，在产品设计、品牌形象等方面都时刻注入新鲜血液，以充满激情的创作灵感，为中国女性带来一次时尚的革命，在以后的时间里，秋熠的设计精英将超强发挥其创意。始自经典之笔，成就时尚之美！ 女人，并非仅只是柔媚浪漫！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('6b5c2923ba194e03bdc0cb44b4a52af5', 'S1-1-4007', '光明跆拳道', 'guangmingtaiquandao', 3, 12, 'S1-1-4007', 1, 'uploadImg/business/20170411/01201704111415201021.png', NULL, '以继承和发扬中华传统武术为使命，努力让更多国人加入到大众化武术健身行列中，把武术普及到每个人的生活当中。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('6e5bfd35c0ca4247ac5d278668f243a8', 'L2061', '梵梦狄斯', 'fanmengdisi', 5, 8, 'L2061', 1, 'uploadImg/business/20170103/01201701031717331011.png', NULL, 'FANMDIS由Fanco Chiarugi 始创于上个世纪五十年代意大利佛罗伦萨的一个小镇埃柯那。经过60周年的发展FANMDIS集团已发展成为集成衣设计、生产，面料研发、生产的多元化公司，并在逐步实现他的全球化战略。FANMDIS一直秉承创建初期为上流社会30—45岁男士服务的宗旨。他们年轻富有、独立自主，追求精致人生，在事业上正处于“黄金”期，拥有积极进取、勇于拼搏的气魄和精神；在生活注重品质、讲究细节，追求绅士般的优雅格调', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('70c21e3715e047218c2c7d8b25c9b521', 'L3039', '探路者', 'tanluzhe', 4, 11, 'L3039', 1, 'uploadImg/business/20170211/01201702110034031027.png', NULL, '探路者的快速成长根源于自主品牌的梦想，公司广泛采用新材料、新技术、新工艺，产品覆盖户外生活各个领域，既能满足极限爱好者高山探险的需求，更面向大众倡导积极、健康的户外休闲生活方式。公司持续打造“质量、创新、服务”三个核心竞争力，管理体系日臻完善。2008年探路者成为“北京奥运会特许供应商”，2009年成为“中国南(北)极考察队独家专用产品”。探路者品牌作为中国南北极考察队独家专用产品，为极地考察活动定制了“极酷、企鹅、昆仑、蓝鲸”四大系列包括极地靴、羽绒服、冲锋衣等多品类专用服装，连续6年为中国南北极科学考察队贴身护航，产品备受极地考察队员的好评。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('71913ad397564b81a799f64724eb8541', 'L2077', 'VERO MODA', 'VERO MODA', 5, 9, 'L2077', 1, 'uploadImg/business/20170703/01201707031038081044.png', '0516-87792992', 'VERO MODA为独立自信的现代女性打造摩登而不失优雅的精致时装，以满足她们生活中多变的着装需求。VERO MODA来自世界各地的时装设计师从全球潮流热地搜寻新一季的设计灵感，在其中注入VERO MODA精神，从而打造出每一季走在时尚前沿而又不失自我个性的魅力女装', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('72245b5cca444a17a1f0d984f668652e', 'L2007', '波仕曼', 'boshiman', 5, 8, 'L2007', 1, 'uploadImg/business/20180125/01201801251538591020.jpg', NULL, '波仕曼品牌一直致力于引领商务休闲男装的时尚潮流，优雅含蓄、大方简洁、做工考究、代表了欧洲顶级服装工艺水平和高级时装风格。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('73a5e3e518af4017adc9cb506e9bd349', 'L1047', '拉尔夫劳伦', 'laerfulaolun', 6, 2, 'L1047', 1, 'uploadImg/business/20170105/01201701051510391059.png', '1.8020580562E10', '拉尔夫?劳伦来自美国，并且带有一股浓烈的美国气息。拉尔夫?劳伦名下的两个品牌Poloby Ralph Lauren和Ralph Lauren在全球开创了高品质时装的销售领域，将设计师拉尔夫?劳伦的盛名和拉尔夫?劳伦品牌的光辉形象不断发扬。拉尔夫?劳伦(RALPH LAUREN)时装界“美国经典”品牌。拉尔夫?劳伦（RalphLauren）是有着浓浓美国气息的高品味时装品牌，款式高度风格 化是拉夫?劳伦旗下的两个著名品牌\\\"Lauren Ralph Lauren”（拉夫?劳伦女装）和\\\"Polo Ralph Lauren”（拉尔夫?劳伦马球男装）的共同特点。除时装外，拉夫?劳伦（Ralph Lauren）品牌还包括香水、童装、家居等产品。Ralph Lauren勾勒出的是一个美国梦：漫漫草坪、晶莹古董、名马宝驹。Ralph Lauren（拉尔夫?劳伦）的产品：无论是服装还是家具，无论是香水还是器皿，都迎合了顾客对上层社会完美生活的向往。或者正如Ralph Lauren（拉夫?劳伦 ）先生本人所说：“我设计的目的就是去实现人们心目中的美梦——可以想象到的最好现实。”拉夫?劳伦（Ralph Lauren）时装设计融合幻想、浪漫、创新和古典的灵感呈现，所有的细节架构在一种不被时间淘汰的价值观上。拉夫?劳伦（Ralph Lauren）的主要消费阶层是中等或以上收入的消费者和社会名流，而舒适、好穿价格适中的拉夫?劳伦(Ralph Lauren)POLO衫无论在欧美还是亚洲，几乎已成为人人衣柜中必备的衣着款式！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('7418b890cb664b3f80f679f7afbf88bd', 'B1018', '蜀道飘香', 'shudaopiaoxiang', 7, 1, 'B1018', 1, 'uploadImg/business/20170609/01201706090925431009.png', NULL, '很正宗、最有特色的火锅，无公害、一次性，严把原料关、配料关。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('752210391c044f52b7c0684b2c7eab37', 'L2010', '波司登', 'bosideng', 5, 8, 'L2010', 1, 'uploadImg/business/20170103/01201701031709481009.png', '0516-87793103', '波司登国际有限公司是中国最大的羽绒服企业，其零售分销网络拥有超过5000个零售网点，专门售卖本集团的六大核心品牌羽绒服，包括（波司登）（雪中飞）（康博）(冰洁)（双羽） 和（上羽）。通过这些品牌，本集团提供多种羽绒服产品以迎合不同阶层的消费者，巩固及扩展了其在中国羽绒服行业的市场，龙头地位。波司登国际控股有限公司于2007年在香港主板上市。       波司登男装作为波司登品牌延伸重点项目之一，子2004年面世以来，在竞争激烈的男装市场中起跑迅速，进入市场的7年来，市场销售额每年以50%以上的速度增长，2009年5月26日，波司登国际控股有限公司全资收购了波司登男装业务，并把波司登男装列为“波司登”旗下的品牌延伸重点项目和首要发展项目。目前波司登男装已经在全国建立了包括直营专卖店在内的营销终端近1000家，销售网络覆盖全国，并率先以自主品牌进驻欧洲市场，为更多中国服装品牌进入国际市场树立了典范。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('75912a46663441aaa1b684d701b0390f', 'L2043', '比华利保罗', 'bihualibaoluo', 5, 7, 'L2043', 1, 'uploadImg/business/20170103/01201701031705371007.png', '0516-87790079', '1982年，比华利保罗（BEVERLY HILLS POLO CUB）诞生在阳光灿烂的美国加州西海岸。如今，经过20多年的全球发展，比华利保罗（BEVERLY HILLS POLO CUB）不仅成为美国著名的休闲品牌，其产品及销售网络更已遍布全球五大洲100多个国家和地区，拥有90多个授权与40多个分授权，比华利保罗（BEVERLY HILLS POLO CUB）是一个真正全球化的品牌。          时至今日，比华利保罗（BEVERLY HILLS POLO CUB）已成为全方位的休闲生活品牌，产品涉及休闲生活的各个领域，比华利保罗（BEVERLY HILLS POLO CUB）产品包括箱包、鞋具、服饰、手表、家居用品等，所有产品皆经过设计大师的精心设计，选用优质时尚面料，所有款式、功能、配件、辅料都经过斟酌，反复挑选，细微之处，无不体现着比华利保罗（BEVERLY HILLS POLO CUB）独有的品位和风格。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('785e7807a65940008df781ea0e754115', 'L1032', '沙驰', 'shachi', 6, 7, 'L1032', 1, 'uploadImg/business/20170909/01201709091502311009.png', NULL, '沙驰鞋履做工精细、款式独特、注重皮料特性的设计，加之沙驰飘逸、尔雅的品牌形象，尊贵之中处处体现着自由、创新的精神，秉承意式风格经典工艺和穿着文化，致力于为成功人士提供品质卓越的高端鞋品和高标准的穿着服务，并期望能将国际品牌的价值享受和文化体验传达给消费者。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('7be36afc27e643af9b928366ae046cd7', 'L2005', 'PLANED', 'PLANED', 5, NULL, 'L2005', 1, 'uploadImg/business/20180125/01201801251506401006.png', NULL, '南京欧边迪服饰有限公司,旗下自主品牌：PLANED，普莱德,代理品牌：梦凡蒂诗。南京欧边迪服饰有限公司是一支多种经营专业团队，有着丰富的经验、严格的管理、高端的形象，致力打造商场服装品牌折扣及推广。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('7d6822a6bddb4fada51390496fbd70e6', 'L2025', 'Koradior', 'Koradior', 5, 4, 'L2025', 1, 'uploadImg/business/20170211/01201702110003471017.png', NULL, 'Koradior(珂莱蒂尔)立足于幸福生活，赋予女性美更亲切，更具创造性的解读。巴黎优雅，塞纳河的不羁，格拉斯玫瑰的风情万种，共同将法国的时尚与浪漫演绎成流动的色彩，孕育了Koradior品牌根植的生活土壤；源远流长的欧洲文明被聚拢、碾碎、消化、释放，最终浓缩为Koradior品牌的设计理念，于是便诞生了最能体现女性优雅魅力的经典服饰。        玫瑰盛年，心中有爱；送人玫瑰，手有余香--Koradior认为年青的真实意义，无关乎年龄，而在于心态；时尚不只是一种美感，也是一种积极乐观的生活态度。“玫瑰盛年，闲情雅质”--这便是Koradior创造和引领的时尚生活方式。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('7e9ca49522f44c75924169e8c349eaa4', 'L2002', '菲梦时代', 'feimengshidai', 5, 3, 'L2002', 1, 'uploadImg/business/20180125/01201801251555111026.png', NULL, 'FAIRY DREAM STAY品牌创始人Férycie是法国香榭丽舍大街享有盛名的服装设计师。她的作品深受法国贵族阶层的喜爱。于2015年由香港进入国内市场，并在深圳成立设计师团队与生产基地。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('8485c19918be4c138883bd97748af443', 'B1026', '老陈家豆腐脑', 'laochenjiadoufunao', 7, 1, 'B1026', 1, 'uploadImg/business/20170609/01201706090910431005.png', NULL, '老陈家豆腐脑在用“文化传承”彰显特色的同时，以一个更包容的形式去延展品牌的能量，老陈家采用现代工艺与传统工艺相结合，既减少了做工时间，保留了食物最原本的味道。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('852fd6b628714d549ece2544d95acc75', 'L1042A', '爱华仕', 'aihuashi', 6, 7, 'L1042A', 1, 'uploadImg/business/20170105/01201701051448031046.png', '1.3852439814E10', '爱华仕 “OIWAS”2001年进入国内市场，依靠良好的品质，新颖的款式，优秀的服务使得爱华仕“OIWAS”迅速在国内拥有超过 3000多家终端门店。零售终端不断增加，遍布全国各大省市和地区，每日向各地消费者提供品质优良的款式新颖的时尚箱包，是消费者购买箱包的首选品牌。随着爱华仕“OIWAS”品牌知名度的不断扩大，杰出的成绩使爱华仕“OIWAS”受到各界人士的关注，更汇聚了各方优秀的人才，如香港著名的设计团队的加盟，他们带来了欧美和亚洲最时尚、最流行元素，结合爱华仕“OIWAS”品牌设计出一款款让人心动的产品，为消费者带来更多难以置信的惊喜。显而易见爱华仕“OIWAS”已经引领国内箱包时尚潮流节奏，是众多竞争对手争相模仿学习的对象。“人人拥有爱华仕！”是爱华仕创始人、米兰时尚大师加里亚诺的非凡梦想，也是爱华仕人的梦想和使命！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('8626fdfa83b346bf996fbb13a4d68234', 'L1016', '哈森', 'hasen', 6, 5, 'L1016', 1, 'uploadImg/business/20170105/01201701051501211055.png', '0516-87791667', 'Harson哈森1979年始创于台湾，致力于中高档男女真皮鞋研发制作。哈森品牌以其文雅的风格，优秀的品质受到了许多消费者的青睐和关注。不管潮流怎样转变，HARSON始终会让你走在时尚的最前沿，HARSON代表女人品位极致的表示。哈森以专业，诚信，服务为己任，引进意大利时尚格式奉献予国内女性，把握足下潮流，拥有先进的生产装备，能够给消费者提供优质的售后服务。哈森懂得女人，旗下主要拥有哈森和卡迪娜两个品牌，风格各有千秋，迎合了不同消费者的需求。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('87a3db965c314932b68427812e113411', 'L3011', '茵曼', 'yinman', 4, 12, 'L3011', 1, 'uploadImg/business/20170211/01201702110110151032.png', NULL, '茵曼以“素雅而简洁、个性而不张扬”的品牌形象风格诞生，更专注于产品品质与消费者体验的打造。让消费群体切身体验与世无争，脱离都市喧哗，倡导自然“慢生活”的品牌主张，品位悠闲自在的棉麻生活', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('8d2c30810bbc4bf9b272c69ee225afc3', 'L1026-1027', 'US POLO ASSN', 'US POLO ASSN', 6, NULL, 'L1026-1027', 1, 'uploadImg/business/20180125/01201801251524481013.jpg', '516.0', 'U.S. POLO ASSN. (美国马球协会)品牌是美国马球运动最真实的代表, 是由始于1890年美国唯一一家对马球运动具有监管权利的非营利性机构\\\"美国马球协会\\\"官方认可的。至今，品牌系列产品通过特许经营方式已覆盖超过135个国家，以专卖店、百货商店和品牌店模式经营。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('8e6e324625424c65b3359db8f306ddef', 'L2040', '夫兰茜', 'fulanqian', 5, 9, 'L2040', 1, 'uploadImg/business/20170725/01201707250953171000.png', NULL, '主打品牌“FOLORIA夫兰茜”推出以来，广受赞誉。目前上市的有减压利器-纯美系列，温暖宜人-亲肤系列，健康伴侣-梦幻系列，胸器必备-珍爱系列，清新美背-内秀系列和夫兰先生抗菌男裤等系列产品。产品关键工艺多采用德国专利技术，配合意大利珂唯蔲公司及台湾等进口面料，以更舒适，更美丽，更健康为基本诉求，配合位于深圳等地的国内外一线品牌合作加工工厂代工，努力打造一流产品！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('8e718a6de7ff49e8a12a70d1fffacd17', 'L3013', '特步', 'tebu', 4, 11, 'L3013', 1, 'uploadImg/business/20170824/01201708241735221035.jpg', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('8f11c09336e74a749759fad482e2e9fe', 'L1033', 'TRANOI', 'TRANOI', 6, 5, 'L1033', 1, 'uploadImg/business/20170104/01201701041606041033.png', '0516-87790612', 'TRANOI 品牌来自于世界上最富盛名的奢侈品制造王国---意大利，由出生于意大利鞋匠之家的Mr. Marco 和当时沉浸时尚界多年的设计师Mr. Polo先生共同创立。时隔不久Mr. Polo 先生逝世，Mr. Marco为了纪念两人之间的友谊，在1978年正式将该设计师的品牌命名为“TRANOI”（意大利语翻译为“我们之间”），品牌象征着“信念、执着、传承、经典”。TRANOI品牌于2011年首次进驻中国，走经典时尚路线。旗下的设计师将时尚界最流行的元素与精湛的工艺完美糅合，一切风格自由掌控，打造出具有 “时尚、经典、舒适”的独特品牌。深受时尚、高端品味人士的喜爱，彰显个人魅力，经典中演绎时尚。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('90a151ea306b4d8783e2823dac40301a', 'L3058-3059', '征途者', 'zhengtuzhe', 4, 11, 'L3058-3059', 1, 'uploadImg/business/20180204/01201802041758271001.jpg', '1.3685199888E10', '“征途者”户外服饰是“福建威尼尔服饰发展有限公司”旗下品牌，主要经营产品户外冲锋衣冲锋裤滑雪服速干衣裤等户外服饰。威尼尔服饰发展有限公司投资创建于1996年，是一家以户外、休闲、运动为主导、集设计、开发、生产、销售于一体的独资知名服饰公司。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('93038b00e71f482c948f6ce28f004933', 'L4028', '鸟叔炸鸡', 'niaoshuzhaji', 3, 1, 'L4028', 1, 'uploadImg/business/20170609/01201706090923461008.png', NULL, '鸟叔炸鸡以经营风靡亚洲的韩式炸鸡为主，引领时尚胃蕾，主导美食潮流走向。2007年成立品牌调研小组，前往世界各国考察，搜罗名优小吃。并成立专门的研发小组，和国内一流的生产商建立品牌同盟关系，为产品的研发和后续跟进打下坚实的基础。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('995ba05ec20341818f57368b49f87d09', 'L3020', '霖缘印记', 'linyuanyinji', 4, 4, 'L3020', 1, 'uploadImg/business/20170103/01201701031730531014.png', '1.3952255818E10', '人们需求的东西太多，各种产品推陈出新,不断给人们新鲜感，正因为如此一种极简主义的概念，渐渐流行起来。       在穿衣之道上，没有哪种风格比简单更为直接而广泛又深的人心，极简的意图就是为了让人能穿着干净、舒适，当了解顾客内心的需求，并针对当下风格迎合顾客。品牌故事       霖缘印记是以简洁的欧美风格为基础的时尚品牌，主要经营销售服装、鞋、裤子配饰等，专注与提供优质时尚产品。       一个好的品牌，不仅要具备行业灵敏度紧跟国际流行动态，更要善于在日常生活中寻找和挖掘顾客的潜在需求。引领顾客发现更多，奉承简洁、大方、以品质追求时尚风格、以风格和服务满足客户的价值。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('999c4db2248c44248371f4d8c4aa09b9', 'L1101', '时尚有方', 'shishangyoufang', 6, 4, 'L1101', 1, 'uploadImg/business/20170523/01201705231355521007.png', NULL, '2050style设计师品牌集合店隶属于苏州贰零伍零服饰有限公司。2050style将购物、休闲、多元化服务综合融入进门店，不仅为消费者带来时尚潮流，更突出客户多元化服务。        2050style不仅为消费者带来领先的时尚潮流，更带来源自设计团队的出色灵感 “年轻活力、超值时尚、多元服务、无限选择“是2050style的定位。       2050style旗下五大风格十一个模块，风格各异，新颖独特的品牌涵盖了时装领域的方方面面，专为不同的生活理念精心打造——从最前卫的流行风格到都市里的优雅装扮，所有的系列不断更新，以满足不同生活方式的目标消费群的特殊需求。        [优雅]-优雅魅力，独立自信,专为自信练达但又不失娇柔魅力的年轻职业女性而设计。        [休闲]-张扬自我个性，放飞自由心情专为渴望标新立异、追求自由生活、释放青春活力的年轻人设计。        [摩登]-摩登典雅。华灯初起，游走于城市街头的你，典雅又不失魅力，无法被定性的美丽。        [浪漫]-不管怎样变化，这一种氛围永远被需要。为追求生活品质，喜欢营造生活乐趣的女性设计。        [棉感]-完美的舒适体验，适合对面料舒适度有较高要求的人群。同样适合皮肤敏感人群。        [内衣]-这是关于美丽与秘密的体验，你的任何需求我们都照顾的到。                    2050style设计师品牌集合店，真诚欢迎您加入我们的团队，共创美好未来！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('9d8ed8ed35db4cdeadfd745eaefb8776', 'L2006A', '迪奥圣丹尼', 'diaoshengdanni', 5, 3, 'L2006A', 1, 'uploadImg/business/20180125/01201801251546351022.jpg', NULL, '迪奥圣丹尼品牌是来自意大利米兰的中高档男女装品牌，该品牌在坚持“简约、时尚、经典”设计风格和精良的局部手工制作工艺的基础上，更多的采用了高品质的新型自然面料，从而进一步明晰了为“现代商务 科技商务”人士 服务的品牌定位，并已迅速成为了一个颇受注目的专业设计师品牌 。现已在浙江、上海、江苏、山东等多家知名商业广场、知名百货商场均有不凡的市场表现。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('9d9b46bb8d1648c1a5185c41f65c2967', 'L2105', '瑁恩瑁爱', 'maoenmaoai', 5, 6, 'L2105', 1, 'uploadImg/business/20180127/01201801271433251019.png', NULL, '瑁恩瑁爱隶属于山东安卡米服饰有限公司，自创建以来致力于为 全国更多的家庭及其孩子们提供高品质产品与服务，现已发展成一个集童装的设计、生产、销售为一体的集团公司。作为中国婴幼童服饰产业的先驱者及行业领导 者，通过加盟与直营相结合的销售模式，在全国各地开设连锁专卖店，倾力为0—16岁的儿童提供“更安全、更舒适、更时尚”的童装产品。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('9ed18eb6a2454373b564bf087756b73c', 'B1024', '汇易悠', 'huiyiyou', 7, 1, 'B1024', 1, 'uploadImg/business/20180127/01201801271509391030.png', NULL, '沙拉?游记餐饮品牌以潮流的眼光、独到的品味、上乘的品质为食客提供时尚的消费选择。公司不仅凭借知名的系列产品获得各地消费者的广泛好评，更通过完善的商业运营，让众多品牌加盟商与我们一起携手迈向成功。沙拉游记制作沙拉坚持严谨操作、严苛把关的理念，保证沙拉的品质；推出西游主题装修营销，创意有趣吸引眼球；并不断推陈出新，百种单品，花式组合。店铺分布 :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('a1b034102731454cab65e663910a836a', 'L2072', 'ASOBIO', 'ASOBIO', 5, 4, 'L2072', 1, 'uploadImg/business/20170105/01201701051140191001.png', '1.7712162275E10', 'ASOBIO（[?’s?ubju:]），一词是由意大利语和日语的复合词，代表改变、时尚和动感。中文名字是傲鸶（AoSi），由英语发音演变而来。品牌标志由一组名称的简单字母和一个三角符号组成，蕴涵着简约时尚的品牌内涵。三角符号意喻点击播放，传递着勇于创新，引领潮流的精神。无论你是活力四射的年轻一族，还是崇尚简约时尚的白领人士，亦或具有独特品位、轻奢口味的社交达人，都能让你在不同的场合(社交\\\\商务\\\\休闲)中应对自如,展现最好的自己。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('a41c206065bd4ae9b9906ba046aadc2b', 'L4055', '一锅两头牛', 'yiguoliangtouniu', 3, 1, 'L4055', 1, 'uploadImg/business/20170609/01201706090933171013.png', NULL, '一锅两头牛火锅，汤鲜而不淡，微辣而不燥，锅底不一而足，味道千变万化。在火锅边品尝着来自经典的地道好食，是一种不需言出的温暖。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('a475caa6c9f947bea4b60eb97c15c153', 'L3043', 'MAC     MIOCO', 'MAC     MIOCO', 4, 6, 'L3043', 1, 'uploadImg/business/20170630/01201706300840571034.png', NULL, '广州咪碌卡服饰有限公司创立于韩国时尚之城，是以儿童服饰研发，设计生存，销售为一体的大型儿童服饰综合型公司，有配套设施完善的生产车间，保证产品品质。MAC?MIOCO品牌拥有一批高学历的儿童服饰设计,营销专业人才,时刻洞察国际流行时尚元素,自主设计开发产品,同时与韩国主流时尚机构联合,保证产品的时尚潮流感。　　韩国时装品牌MAC?MIOCO秉承\\\"以优惠的价格提供时尚和质量”的理念.MAC?MIOCO韩国时装品牌为您带来全新的时尚体现。　　产品低碳环保面料,力求对宝贝们全心呵护,注重产品的健康性,舒适度和柔软度.把“简约但不简单”的设计理念巧妙地融入产品之中。紧贴欧韩时尚的潮流元素,专为2-8岁儿童创立的高端童装品牌.在欧韩风格的基础上结合中国市场的需求,设计2-8岁,身高为80cm-130cm的亚洲儿童童装，鞋，袜，饰品等产品.', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('a7d7cf2ffb1648f0967fe6e86345859c', 'S1-1-3001', '花拾间', 'huashijian', 4, 12, 'S1-1-3001', 1, 'uploadImg/business/20170725/01201707251001471003.png', '0516-87988958', '花拾间秉承“天然的才是最好的”理念，奉行：健康，贴心，专业，安全的宗旨，为广大女性提供最全面的养生保健服务。花拾间拥有9700亩中药种植基地，从种植，采摘，分拣，加工，研发统一制作，取自天然，用的自然。                  花拾间让你从内而外的美丽。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('a9f3df49e3ac421cb9645d79fdbe84a5', 'L2047', 'BIQI', 'BIQI', 5, 9, 'L2047', 1, 'uploadImg/business/20170103/01201701031708361008.png', '0516--87988670', '碧琦，意喻“碧绿无暇的美玉”，一如东方女性的美丽与优雅。品牌致力于为现代都市中的杰出女性打造明艳动人，舒适自信的着装风格，“以人为本，从心出发”是碧琦时装的品牌风格理念，我们不断探索，在舒适得体与优雅美感之间寻找最佳平衡点。        时尚不停轮回，变幻莫测的流行趋势考验着女性的搭配功力，碧琦的设计团队擅长将流行元素以不经意的手法融入在细微之处，简洁优美的廓形下彰显恰到好处的时尚度，使每一件时装都呈现着温润和谐的美感；完美诠释心理年龄在25-45岁之间，有品位的成功女性的成熟魅力的高贵气质。这也是碧琦时装多年来坚持的品牌理念——创造优雅女人的舒适境界。       不论是宴会、婚礼上的华丽礼服，还是出入职场的干练套装，亦或是日常生活中的甜美连衣裙……每一种场合，碧琦都可以给出最精致得体的着装方案；薄如蝉丝的真丝小衫，厚实华丽的优雅皮草，我们倾尽心思认真诠释都市女性的每一种美。       碧琦的原创还体现在每一季别出心裁的独特面料，灵感源自大自然中的奇花异草，经过设计师巧夺天工的设计变幻为绝美花型，选取高品质面料精心印染织造，最终呈现出独树一帜的品牌特色', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('aafd6c4a94cf400db48446b5aa62316b', 'L3035', '新百伦', 'xinbailun', 4, 11, 'L3035', 1, 'uploadImg/business/20170314/01201703141409521068.png', NULL, 'new Balance，1906年William J. Riley先生在美国马拉松之城波士顿成立的品牌，在美国及许多国家被誉为“总统慢跑鞋”，“慢跑鞋之王”。New Balance自1906年创立于美国波士顿以来，秉着制造卓越产品的精神，不断的在科技材质、产品外观与舒适感持续作进步。唯一不变的是New Balance以高标准道德规范、100%顾客满意度、团队合作的精神来经营，以期成为高科技。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('ab158c7921b647698c9f11cd83c56a00', 'L2062', '威可多', 'weikeduo', 5, 8, 'L2062', 1, 'uploadImg/business/20170105/01201701051355421035.png', '1.816875115E10', '高级男装品牌VICUTU（VICUTU），根植于都市精英文化，打造成功与品味的专属风尚。VICUTU命名源自于英文单词VICTORY，意为胜利，象征着追求成功，富于品味的都市精英文化。创始之初，“VICUTU”即以高档西服产品受到严谨、干练的商务男士的青睐。              VICUTU结合亚洲男士的体型特征，独创西服版型中的弯曲比例，使男人轮廓之美尽显，着装风格更具男人内涵。VICUTU秉承西服本身所蕴含的绅士风度以及严谨、庄重、典雅的西式古典精神，融合东方文化的细腻和柔和，塑造出时尚优雅、庄重精致的都市男人范，恰如其分地流露出含蓄之中的华贵和时尚之余的稳重。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('ae2ed065572a49a5b1f0c1d7f76733c7', 'L3056', '趣野', 'quye', 4, 11, 'L3056', 1, 'uploadImg/business/20170103/01201701031743321020.png', NULL, '趣野，您身边的户外专家       一个多品牌的精选集成店，一个跨界的生活方式门店，一个O2O的体验中心，一个您享受户外的出发点。       推荐生活方式的专家，户外装备的集中营，性价比的提供者，身边的户外向导。       这里是户外装备集中营，精选户外品牌，聚集国际、国内知名的户外产品。直接采购，保证产品的高品质和性价比。       精选野营聚会、旅行徒步、钓鱼骑行、登山探险、休旅生活五大类户外旅行装备，给您最佳的装备组合，尽情享受别样的生活乐趣。签约多个户外运动俱乐部，给趣野客户提供各类户外运动的培训和活动分享，我们就是您身边的户外向导。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('b14deccadb2d4bc2a8f7c6fd444b0827', 'L4063', '杨国福', 'yangguofu', 3, 1, 'L4063', 1, 'uploadImg/business/20170609/01201706090931501012.png', NULL, '麻辣烫万千，杨国福领鲜，营养健康，好吃不贵，纯正麻辣烫，鲜活好滋味，美名天下扬，国福好味享。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('b34f03d170824bc580087bc700e85f89', 'B1011', '索大人刀削面', 'suodarendaoxuemian', 7, 1, 'B1011', 1, 'uploadImg/business/20170609/01201706090927421010.png', NULL, '刀削面是山西最有代表性的面条，堪称天下一绝，已有数百年的历史。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('b383cab4015648d2bdf2ff19e107ecbf', 'L2056', '瑞士莱茵', 'ruishilaiyin', 5, 11, 'L2056', 1, 'uploadImg/business/20170105/01201701051355421034.png', '0516-87799221', '瑞士莱茵是一个活力阳光，崇尚自然的休闲户外品牌，以一种海纳百川、广揽万物生灵胸襟面对变化莫测的生活趋势，以激情豪迈的生活态度在趋势中不断突破，完善自我迎接征途中每一个精彩挑战，从此开启了跨界休闲装的全新程！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('b655cfd2dc3141f4ac5d421282c77f9b', 'L1081', '免税店', 'mianshuidian', 6, 12, 'L1081', 1, 'uploadImg/business/20170411/01201704111345341013.png', NULL, '贝比酷普贸易有限公司，中国总部设在淮海经济区中心城市-徐州经济开发区，是一家主营进出口贸易的外资企业，是江苏省第一家有鲜奶进口资质的企业，是徐州第一家进口优质水的企业，进出口贸易业务服务于：大洋洲，亚洲等部分国家及地区，以上两款产品在中国唯一指定代理总经销商，拥有两款产品在中国的知识产权。2016年，引进徐州保税物流园进口商品展示中心，是淮海经济区唯一一家海关监管商检备案的保税跨境电商实体平台入驻徐州。旗下新西兰.澳大利亚，美国，加拿大产品系列有鲜奶，水果，酒水，保健品，母婴日用品等。已销往北京，天津，上海，杭州，深圳等10多个城市。公司本着立足徐州，面向全国，坚持高端需求，高湛经营，高精运作的战略思维，与澳大利亚，新西兰贸易往来中保持着强劲良好的发展势头，致力打造成为紧密连接淮海经济区中新贸易关系的安全新纽带。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('b6987db021b447cf8b19a84c09d9db68', 'L1022', 'LACOSTE', 'LACOSTE', 6, 2, 'L1022', 1, 'uploadImg/business/20170104/01201701041605361032.png', '0516-87730119', 'LACOSTE创始于1933年的LACOSTE一直是轻松高雅的代名词。凭借其纯正的体育血统，如今的LACOSTE象征着一种舒适、优雅的生活态度，独特的设计和高品质的产品涵盖了男装、女装和童装。LACOSTE 2012年的年销售额达到了18亿欧元，在全世界114个国家的LACOSTE精选销售网络中，平均每秒钟就有2件LACOSTE商品通过LACOSTE专卖店、商场专柜或者网络专营店售出。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('be3eee50a50641b788c3dee133e7d79f', 'L1023', '丹尼爱特(男)', 'danniaite(nan)', 6, 8, 'L1023', 1, 'uploadImg/business/20170104/01201701041607421034.png', '0516-87796201', 'DANIEL HECHTER是Mr.Daniel Hechter于1962年创立的同名品牌。 品牌宣扬其法国优雅的生活方式，低调有质感的设计，精选的面料和合身的剪裁都倡导着对生活的热爱。一如DANIEL HECHTER品牌的双斜线LOGO一样，倡导不浮夸不浮躁的时尚感，传承于法国文化，优雅而富有智慧。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('c0e4396a98234f568dc6fb6dd2e7ef85', 'L1020', '丹尼爱特', 'danniaite', 6, 2, 'L1020', 1, 'uploadImg/business/20170104/01201701041609131035.png', '0516-8776345', 'Daniel Hechter品牌是法国著名设计师Daniel Hechter创办，并以自己的名字而命名。1962年Daniel Hechter在巴黎建立一个时尚屋，给广大的客户群提供舒适的、高品质的和富有创意的时尚服饰。发展至今，Daniel Hecter这个品牌囊括了七个不同类型的部门。1998年，Daniel Hechter的法国时尚屋被UOAG(Miltenberger Otto Aulbach GmbH)公司兼并，使得公司成功并平稳地扩大了国际市场。如今，Daniel Hechter已成为一个闻名世界的国际品牌。      到目前为止，Daniel Hechter产品线已包括男装、女装、童装、皮具、眼镜、内衣、鞋子及室内装饰品等。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('c7dece11a60f4d9b92023667236eb734', 'L4039A', '你好,小厨', 'nihao,xiaochu', 3, 1, 'L4039A', 1, 'uploadImg/business/20170609/01201706090921251007.png', NULL, '抱歉，暂无', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('c9e29745bf3f447aba28b4cf147367e4', 'L2014', '蔓哈顿', 'manhadun', 5, 8, 'L2014', 1, 'uploadImg/business/20170103/01201701031737271017.png', '0516－81802389', '蔓哈顿一直是中国男装领域的高级男装品牌，为现代商务人士提供华美与奢华的全套装扮，缔造沉稳、自由、乐观的新贵生活方式 。       吉弗雷品牌定位都市精英，倡导都市精英男士追求“儒雅的生活态度”，诠释儒雅新绅士的着装文化。       SMITHPOLOV倡导英伦马球以及马术运动主义和当今国际流行色彩，诠释敢于承担的勇气和坚毅生命力的贵族运动精神。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('ccdf897eb3714cc78d69108c35d1f43e', 'S1-1-2004', '创意美术', 'chuangyimeishu', 5, 12, 'S1-1-2004', 1, 'uploadImg/business/20170725/01201707250931041052.png', NULL, '创意美术Artinstitution创办于2014年，画室具有先进的教学理念、这是令得专业教学体系、成功的教学方法，能在短时间内激发学生的潜能，让每一位学生学有所获。画室每年都辅导学生参加全国考级和参赛，为学生的艺术之路保驾护航。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('cd45e341188e4fb8a10bb9ad0635069d', 'L1008', '赫芙莉', 'hefuli', 6, 12, 'L1008', 1, 'uploadImg/business/20170411/01201704111343551011.png', NULL, '上海赫芙莉食品有限公司由丁佐宏先生创立于2001年12月29日,经营食品流通以及进出口业务，经过15年脚踏实地的发展，其主营品牌：“环球小熊”“Golbal Bear”日趋成熟。环球小熊曲奇坚持采用进口原材料，经过精心的烘焙，给消费者带来真正健康、美味的曲奇。赫芙莉坚持品牌自营，目前在上海，江苏等地开设直营店铺5家。以优质的产品和贴心的服务，受到广大消费者的好评。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('cdb55b3542be4b73a9cc4a9a63b15e1a', 'L3061', '恩吉拉儿童教育中心', 'enjilaertongjiaoyuzhongxin', 4, 12, 'L3061', 1, 'uploadImg/business/20170313/01201703131612541033.png', NULL, '恩吉拉（ENJOR）国际早教隶属于金梧桐（北京）教育咨询有限公司，在美国恩吉拉专属服务于集团内企业高管子女而设定的贵族学校。 2009年品牌创始人吴宗泰先生回国后把其婴幼儿教学理念以及教材进行不断的研发修定，成为了中国一流的早教机构，逐步面向社会招生，第一家中心设立在北京，服务于大众。让中国的宝宝与父母也能接受最专业的早期教育。经过几年的实践恩吉拉（ENJOR）受到了社会的广泛赞誉。  依托美国的先进教育理念、优越的跨国交流特权，恩吉拉引进国际先进教学方法和教学理念,根据中国儿童特性，研发出整套科学缜密的课程体系， 以全面开发婴幼儿的潜能为目标，以创新早教为理念，普及早教知识，为更多的宝宝以及家庭贡献爱心为发展使命,旨在为0-6岁的宝宝提供科学的早期潜能开发以及成长指导。  恩吉拉专业教学团队不间断对课程体系进行更新完善，同时特邀美国儿童教育专家以及北京师范大学幼儿专家对教师团队进行授课培训，使教师团队不断注入新能量、新知识、新活力，更好地帮助宝宝成长。  经过不断地发展完善，恩吉拉（ENJOR）国际早教拥有教师团队、营销团队、管理团队、运营团队等四大专业团队，先后荣获“中国最具口碑的儿童教育品牌”、“中国早教十佳品牌”、“中国早教贡献奖”、“中国十大品牌少儿教育机构”等。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('d28dc072364d408f8eb4a281a1664835', 'L4062', '小喵泡泡 鱼', 'xiaomiaopaopao yu', 3, 12, 'L4062', 1, 'uploadImg/business/20170411/01201704111434491022.png', NULL, NULL, '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('d4a1b8bc81b642c4a94e1b222a5393fb', 'L1077', 'GANT', 'GANT', 6, 2, 'L1077', 1, 'uploadImg/business/20170104/01201701041605081031.png', '1.5895289163E10', '诞生于美国的GANT，是一家致力于传递经典美式休闲与欧洲高雅风格的现代高品质生活方式品牌。现隶属Maus Frères集团，总部设立于瑞典斯德哥尔摩。GANT品牌旗下共有三条产品系列——GANT Originals、GANT Rugger、Diamond G，产品类型包含服装、手表、眼镜、鞋类等。如今，GANT在全球70多个国家拥有超过750家直营店和4000家精选的零售商店铺。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('d4f8e00977f442c49b380e5a57186a6b', 'L3040', '安踏', 'anta', 4, 11, 'L3040', 1, 'uploadImg/business/20170314/01201703141406351066.png', NULL, '安踏体育用品有限公司 (港交所：2020)，简称安踏体育、安踏，是中国领先的体育用品企业，主要从事设计、开发、制造和行销安踏品牌的体育用品，包括运动鞋、服装及配饰。主要提供ANTA男鞋,女鞋,运动鞋,休闲鞋,篮球鞋,跑鞋,综训鞋;提供最好的商品,最优质的服务', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('d645f2f2300f48ec9b58b3010970ace0', 'L3089', '京百味', 'jingbaiwei', 4, 1, 'L3089', 1, 'uploadImg/business/20180127/01201801271504281026.png', NULL, '京百味品牌经过十五年的酝酿，不断创新，以诚为本，客户至上的原则，持续向前发展,现已成为台湾知名品牌。简约而又亲切的环境，热情周到的服务，让无数消费者赞不绝口，更是获得了 “特色名吃”、“国际风味、台湾风情相结合”等殊荣。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('dafced66b7b9486f9a457d602303fce6', 'L3029', 'KOOL', 'KOOL', 4, NULL, 'L3029', 1, 'uploadImg/business/20180125/01201801251506401006.png', NULL, 'KOOL男装创立于1963年，注册于欧洲的比利时、荷兰、卢森堡地区，50余年出口欧洲的制衣经验让KOOL秉承了简约优雅地欧洲风格。KOOL品牌持有者东方国际创业股份有限公司实力雄厚，于2000年7月上市。公司前身为拥有40余年经营历史的上海市服装进出口公司，她是我国成立最早、经营规模最大、进出口金额名列前茅的专业服装进出口企业，如今已发展成为一家集货物贸易和现代物流为一体的、产业经营与资本运作相结合的综合型主板上市公司。店铺分布 :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('dc41478313614081b362f4b23b2454fc', 'L1028', 'CK', 'CK', 6, 2, 'L1028', 1, 'uploadImg/business/20170314/01201703141047201064.png', NULL, '于1968年创立, 在时装设计与市场营销方面有着领导地位的品牌之一。透过直接零售经营与庞大的商品特许授权协议及网络，将主线设计师系列的服饰及其他副线的商品作全球性销售。品牌的纯净、自然和简约美的风格，是现代精致设计的典范。从服装、配饰、内衣、香水到家居用品，其出众的设计和广告，在给人以新颖、大胆、新锐印象的同时, 夹杂着美式的自在和性感。“CALVIN KLEIN 已成为现在时尚、自然简约的代名词。同时，我们也代表着一种广泛意义上的性感。我们的品牌不仅影响年轻人，也影响着不同年龄层的人群。”创始人 Calvin Klein', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('e09ea2239be64e2199a19e5850942cea', 'L2084-2085', '优家宝贝', 'youjiabaobei', 5, 2, 'L2084-2085', 1, 'uploadImg/business/20180127/01201801271436331021.png', NULL, '优家宝贝隶属于东恩资本，是华东地区最大的母婴连锁经营机构。在全国拥有1500多个良性运营门店，所涉及的业务遍及所有省市。东恩在母婴产业品牌化运营中积极探索与实践，助推母婴产业一次又一次跨越式发展。十年磨一剑，2011年东恩资本，以极赋远见的前瞻性的眼光斥资五千万,拓展运营旗下加盟品牌\\\"优家宝贝\\\"。定位专业的母婴品牌加盟连锁公司，以\\\"专注母婴，用心服务\\\"为核心价值。优家宝贝产品囊括了国内外母婴产品品牌，近万款单品。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('e17f24fd26f34986b8dda8865ff76c03', 'L3032', '路伴', 'luban', 4, 5, 'L3032', 1, 'uploadImg/business/20170103/01201701031733061015.png', '0516-87799396', '品牌1990年创立于美国纽约曼哈顿的【road mate路伴】，在当时一片讲究绅士、正装皮鞋的大环境下，大胆坚持休闲舒适的品牌风格，挑战主流流行模式，以极具个性化的外形设计，舒适的穿着体验，坚固的制鞋品质，深深打动了全美消费者的心，并带动了户外休闲的流行风尚，成为世界知名的休闲鞋品牌，行销全球20余国、100多个城市。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('e1d5089c9c964af3abf112aa7e878e8e', 'L1019', 'YELLOW EARTH', 'YELLOW EARTH', 6, 2, 'L1019', 1, 'uploadImg/business/20170313/01201703131718111061.png', NULL, 'Yellow Earth品牌于1991年在澳大利亚花园城市墨尔本注册成立。Yellow Earth集团是国际领先的高档羊毛皮消费品类综合运营商，拥有自主的澳大利亚知名品牌Yellow Earth 和垂直一体化的国际供应链，致力于自然，舒适，健康的生活品味和时尚追求。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('e2d10f3a153b4f649ff3ad354a864588', 'L4021', '酷跳', 'kutiao', 3, 11, 'L4021', 1, 'uploadImg/business/20180127/01201801271325081010.png', NULL, '酷跳体育设备（深圳）有限公司是我国一家进驻内地的蹦床公园公司，成立于2015年3月，公司由两个加拿大华裔年轻创业家创办而成。酷跳是中国第一家专业运营蹦床主题运动公园的企业中国唯一一家引进美国原装进口蹦床设备的蹦床公园。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('e45e215cf36a4beda85105105fa3f6a8', 'L2070', '豌豆生活', 'wandoushenghuo', 5, 7, 'L2070', 1, 'uploadImg/business/20170424/01201704240949131005.png', '1.5862153303E10', '品牌故事：      豌豆生活日韩休闲百货品牌，秉承“休闲、时尚、清新、简约”的价值理念，为您带来最前沿、最时尚、最流行、最便捷的韩式生活解决方案。从此，韩式生活不只在韩剧里！豌豆生活休闲百货品牌，囊包”创意家居、生活百货、健康美容、精品包饰、季节性产品、数码配件、饰品系列、文体礼品、进口零食“等十大产品系列，用心为消费者提供一站式采购韩式创意生活，时尚触手可及，尽享豌豆生活！豌豆生活日韩著名休闲百货品牌主张”健康、节约“型时尚消费理念，产品价格贴近消费者的生活！', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('ea57accd9d0e4a528e323adebac4a3de', 'L3081', '蜜芽乐园', 'miyaleyuan', 4, 6, 'L3081', 1, 'uploadImg/business/20170725/01201707251010421009.png', NULL, '对孩子们而言，他们天生的能力就是通过玩乐来学习和成长。蜜芽乐园根据0到12岁的儿童在不同年龄段的身体、心理、认知、社交、语言方面的发展需要，设计了全新的游乐设备，帮助孩子们开发5种能力:创造性、挑战性、社会性、感性和身体性。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('ecfb46bca6e345f3adddbd224dbb47a7', 'L2026', '娜尔思', 'naersi', 5, 9, 'L2026', 1, 'uploadImg/business/20170211/01201702110006271018.png', NULL, '娜尔思（NAERSI）是深圳市赢家服饰有限公司旗下品牌，创建于1994年末，娜尔思（NAERSI）遵循经典与时髦的描绘理念，将摩登和高雅的气味贯穿于服装中，让每一位穿戴娜尔思（NAERSI）的女人能表达自傲睿智、知性高雅的日子态度，让自傲在盛年女人的精美日子中得以完满展示。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('ef0c7ac941bf4c1d8cc5d6a0b95c6ac8', 'L1058', 'BOSS sunwen', 'BOSS sunwen', 6, 3, 'L1058', 1, 'uploadImg/business/20170208/01201702082243121006.png', '0516-87986616', 'BOSSsunwen-英伦风轻奢侈品牌，秉承着BOSSsunwen品牌所特有的正统与休闲相结合的设计风格，崇尚优雅舒适、自热从容的生活理念。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f0b7fb63090241898b818057ff2f4be9', 'L1012', '中国移动', 'zhongguoyidong', 6, 12, 'L1012', 1, 'uploadImg/business/20170213/01201702131401301057.png', '0516-69919691', '中国移动营业厅提供业务介绍,手机话费充值查询,套餐资费介绍及网上查询办理,号码购买,优惠购机,积分查询,优惠活动等网上自助服务。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f0d15646f89f44148757186dc5fbf93b', 'L2074', '思莱德', 'silaide', 5, 8, 'L2074', 1, 'uploadImg/business/20170702/01201707021400231037.png', '0516-87791663', '思莱德（SELECTED）的设计理念是为顾客提供一个全能衣橱，让顾客轻松打造出能应付各种场合的百变形象。SELECTED男装拥有经典的触感和时尚的表达，在高品质的基础上，添加锐意的细节与纯粹独有的质感，散发着不可抗拒的冷峻魅力。思莱德（SELECTED）男装是高品味的典型代表，用现代的方式传释古典绅士精神。选择思莱德（SELECTED）的男士，坚毅成熟，有力而自信，他坚持经典、独特的风格；追求高尚、精良的质地；注重完美无瑕的贴切剪裁，丰富多变的深邃内涵……他的品位彰显着他的自由、地位和风范。SELECTED将男士高尚的品质无限释放，体现出男人丰富的性情，轻松营造多变的经典商务形象。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f1c9e55c5ec2477aa8dbab00733424d9', 'L3018', '伊芙丽', 'yifuli', 4, 4, 'L3018', 1, 'uploadImg/business/20170725/01201707251018071013.png', NULL, 'EIFINI伊芙丽，诞生于2001年，以法式优雅、自信、自然在作为品牌灵魂，以摩登与浪漫为品牌代名词，充分演绎出现代女性在生活中，不同角色的灵活转换。产品注重款式细节的设计，整体色彩的搭配、融合、款式的组合，通过不同的搭配方式来满足客户各种场合的需求，体现快乐，精致，时尚的穿着理念。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f2264eed6f2343d79e62ebd5a5a4d6d3', 'L2095', '毛毛球乐园', 'maomaoqiuleyuan', 5, 6, 'L2095', 1, 'uploadImg/business/20180127/01201801271350111012.png', NULL, '毛毛球乐园，是北京卧龙轩集团旗下的品牌，以儿童产业为核心业务的综合性企业。卧龙轩以强大的经济实力和丰富的产业资源为基础，在儿童教育、儿童娱乐等项目注入资金与运营管理，全力打造“理想、情怀、实干”的儿童产业。毛毛球乐园，在大型时尚家庭式购物中心内面向12岁以下儿童和家长开设主题游乐园和动漫亲子园，以自有IP为情感依托，打造 一园一特色， 向儿童和家长们提供寓教于乐、寓乐于学、安全放心、释放儿童天性的场所。店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f3c5b66acd5e4027b48ce9502cedf06f', 'L2020', '兰帕特保罗', 'lanpatebaoluo', 5, 8, 'L2020', 1, 'uploadImg/business/20170105/01201701051355421033.png', NULL, 'LANPATE(兰帕特)是二十世纪英国皇室贵族成员之一，从小接受家族的正统教育，当然马球也是其中一门必修的科目，自此以后他对马球运动产生浓厚的兴趣。13岁的LANPATE(兰帕特)就骑上他挚爱的小马驹来回驰骋于绿茵草地上，经过长达5年的刻苦训练，凭着精湛的技术18岁那年LANPATE(兰帕特)加入了当时英国颇具权威性的马球俱乐部“The Royal County of Berkshire Polo Club”，从此踏上了马球的职业生涯。他参加了各种俱乐部的职业赛和世界级的公开赛，并且取得了辉煌的成绩，多次被选为“最有价值球员”。再经过几年时间的历练，LANPATE(兰帕特)邀请了几个志同道合的朋友共同建立了自己的马球俱乐部，继续征战于他的马球职业。        LANPATE(兰帕特)对所有事情都要求严格，球队的训练场地、马匹的驯养，运动装备的配置都是要用好的，甚至队服的设计、面料的甄选他都亲力亲为。时尚触觉敏锐的他，在队服设计上运用了英式经典沉稳的配色，低调奢华而不失时尚感，皇室马球风格的徽章图案刺绣工艺，纯手工打造的纽扣，舒适透气的面料，合体修身的立体剪裁，使得每件队服都透露出浓浓的英国皇家贵族气息，这件马球服装因此而命名为“LANPATEPOLO”。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f66c804682da4edfb6f50d296dfa316a', 'L1005', '膜法世家', 'mofashijia', 6, 4, 'L1005', 1, 'uploadImg/business/20180127/01201801271424271014.png', NULL, '膜法世家是拥有多系列成分天然、功效卓越的特色面膜类护理产品，配方成分是绿色天然野生和有机种植，让人远离污染，亲近自然。膜法世家1908系列面膜自上市以来，以其天然、安全、卓越的护肤效果，得到了热烈好评与鼎力支持。 店铺分布  :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f74a37f0c39c433b82e0aba0a0e283ca', 'L2049', '上格皮草', 'shanggepicao', 5, 9, 'L2049', 1, 'uploadImg/business/20170314/01201703141613031071.png', NULL, '上格（SOVOGUE），源于19世纪的日本，是享誉日本的知名轻奢女装品牌，以个性、时尚、经典、舒适为主题的原创设计为大众所熟知，只为设计时尚高雅的都市女装，为现代女性带去自信与知性，它高端典雅，无论任何场合都能美丽绽放。贯彻个性而不张扬的生活态度，把流行与经典以多元化的手法融为一体。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f84ba555dca449aab032eeca5ecf9985', 'L1051-1052', 'ECCO', 'ECCO', 6, 5, 'L1051-1052', 1, 'uploadImg/business/20170104/01201701041604371030.png', '0516-87799810', 'ECCO（中文名称：爱步），成立于1963年，是来自丹麦的鞋履品牌。其鞋类产品涵盖男士系列、女士系列、休闲正装系列、户外系列、运动系列、高尔夫系列和儿童系列；其他产品包括包袋配件、小皮件、鞋护产品等。[1] ECCO采用自上而下的营运模式——从皮革原料的生产，到设计研发和产品制造，每个环节都由ECCO直接监管。截止2015年，ECCO已在全球超过85个国家拥有约4000家品牌销售点；在中国，拥有超过950个销售点。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('f9a323be004c4a2eb927569387c5a97b', 'S1-1-3003', '东方童画', 'dongfangtonghua', 4, 6, 'S1-1-3003', 1, 'uploadImg/business/20180125/01201801251549521024.png', NULL, '东方童画成立于2003年，专注少儿美术普及教育，以“让童年更美好”为使命，秉承科学创意、用心启迪、美化人生的教育理念，以普及中国少儿美术教育为初衷，对接国际教学理念，结合中国国情，为中国儿童不断输入与国际水平同步的，新美术教育资源。店铺分布 :全国', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('fd3ad43afbeb44699dd48cee3bf92e13', 'L1088', 'π茶', 'paicha', 6, 1, 'L1088', 1, 'uploadImg/business/20170411/01201704111347191015.png', NULL, 'π茶优选全球鲜果，上等茶饮原料，已创意手工工艺制作，全新演绎休闲、舒适生活方式。', '2018-07-05 07:15:56', NULL, 1);
INSERT INTO `biz_shop` VALUES ('fd9a2559ce2a43a79db12dc81d5708da', 'B1032A', '漂移轮滑', 'piaoyilunhua', 7, 11, 'B1032A', 1, 'uploadImg/business/20170313/01201703131532061010.png', NULL, '漂移轮滑自2006成立，从事专业自由式轮滑、轮舞培训。2015年荣获体育局颁发的轮滑社会活动中心称号，为国家和学校培养轮滑人才，多次参加省级国家级轮滑比赛并获得全国季军、亚军、省冠军等优异成绩。此外本俱乐部还是徐州慈善总会，徐州福利院唯一一个轮滑公益的俱乐部，不定期举行公益演出，公益援教等公益活动。欢迎广大轮滑爱好者和爱心人士的加入。       本俱乐部秉承开心教学，成长孩子的理念。在愉快的课程中学会技能，锻炼身体，培养自立，勇敢，耐挫的性格。已拥有上千会员，经过训练合格的会员，达到运动员标准者可参加省赛、市赛均可获得一级运动员、二级运动员、三级运动员证书。为中国轮滑运动的发展储备高水平运动人才。', '2018-07-05 07:15:56', NULL, 1);

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
INSERT INTO `biz_shop_visit` VALUES ('B1001', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1001B', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1007', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1007A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1008', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1011', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1018', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1023', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1024', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1026', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1028', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('B1032A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1003', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1004', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1005', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1008', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1010', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1012', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1013', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1016', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1018', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1019', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1020', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1022', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1023', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1026-1027', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1028', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1032', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1033', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1036', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1042A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1047', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1051-1052', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1057', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1058', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1070', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1077', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1081', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1082', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1084', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1088', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1097', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L1101', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2002', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2003', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2005', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2006A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2007', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2010', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2014', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2018', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2019', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2020', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2025', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2026', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2027', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2029', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2031', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2032', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2034', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2037', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2039', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2040', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2043', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2044', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2047', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2049', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2051', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2053', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2054', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2056', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2057', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2058', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2061', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2062', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2063', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2064', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2070', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2072', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2074', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2075', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2076', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2077', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2084-2085', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2095', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L2105', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3004', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3005', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3006', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3007A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3009', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3010', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3011', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3013', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3015', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3018', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3020', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3026', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3029', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3032', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3033', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3035', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3039', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3040', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3043', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3044', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3047', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3056', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3058-3059', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3061', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3062', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3067', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3073', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3081', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L3089', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4002A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4021', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4024', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4028', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4037', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4039', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4039A', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4041', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4055', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4061', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4062', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4063', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('L4064', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-1002', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-1006', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-2001', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-2003', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-2004', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-3001', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-3003', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-4001', 0, '2018-07-05 07:15:56');
INSERT INTO `biz_shop_visit` VALUES ('S1-1-4007', 0, '2018-07-05 07:15:56');

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
INSERT INTO `biz_terminal` VALUES ('86d21d5c2b3d4acfb10dc3ed8199c084', 'A001', '312rq', NULL, '0', '21', 31, 0, 0, '2018-07-05 15:45:35', NULL, 1, '2018-07-06 06:30:06', 0);
INSERT INTO `biz_terminal` VALUES ('c1213b126b8d41489be88134a0a9e572', 'A002', '13', NULL, '2', '1', 0, 0, 0, '2018-07-05 16:41:37', NULL, 6, '2018-07-06 06:30:06', 0);
INSERT INTO `biz_terminal` VALUES ('e9f0b122289644a08c478729e9dea7e7', 'a003', '213', NULL, '1', '123', 23, 0, 0, '2018-07-06 15:23:25', NULL, 5, NULL, 1);

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
INSERT INTO `biz_terminal_visit` VALUES ('21饿1', 0, '2018-07-05 08:41:39');
INSERT INTO `biz_terminal_visit` VALUES ('a003', 0, '2018-07-06 07:23:27');
INSERT INTO `biz_terminal_visit` VALUES ('tz123', 0, '2018-07-05 07:45:37');

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
INSERT INTO `screensaver_material_relation` VALUES (7, 6);
INSERT INTO `screensaver_material_relation` VALUES (8, 7);
INSERT INTO `screensaver_material_relation` VALUES (12, 6);
INSERT INTO `screensaver_material_relation` VALUES (13, 6);
INSERT INTO `screensaver_material_relation` VALUES (14, 7);
INSERT INTO `screensaver_material_relation` VALUES (15, 6);
INSERT INTO `screensaver_material_relation` VALUES (15, 7);
INSERT INTO `screensaver_material_relation` VALUES (16, 7);

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
INSERT INTO `screensaver_published_terminal_relation` VALUES (15, 'c1213b126b8d41489be88134a0a9e572', '2018-07-06 14:28:10');

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
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('c325a0eefbaa4a37a4a2b20fcc1b227b', 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 0, '2018-07-06 13:48:27');

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
INSERT INTO `terminal_first_page_relation` VALUES ('c1213b126b8d41489be88134a0a9e572', 4);

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
