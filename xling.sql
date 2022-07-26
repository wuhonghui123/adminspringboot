/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云服务器
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 120.25.164.209:3306
 Source Schema         : xling

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 26/07/2022 11:01:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification`  (
  `id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1, 2默认为我的收藏和我的待选, 该字段不可被菜品表中引用',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100005 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '我的收藏', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.0WftkWURoF3pVG6lQjgsHwHaHa?https://s1.aigei.com/src/img/png/9a/9aa6f2d02d65422480512c2d12bf604a.png?imageMogr2/auto-orient/thumbnail/!237x237r/gravity/Center/crop/237x237/quality/85/&e=1735488000&token=P7S2Xpzfz11vAkASLTkfHN7Fw-oOZBecqeJaxypL:UxZeAuNHZv-https://img.icons8.com/dusk/2x/adobe-acrobat.png');
INSERT INTO `classification` VALUES ('10', '荤菜', 'https://img.icons8.com/office/2x/ninja-turtle.png');
INSERT INTO `classification` VALUES ('100000', '单人套餐', NULL);
INSERT INTO `classification` VALUES ('100001', '双人套餐', NULL);
INSERT INTO `classification` VALUES ('100002', '3~4人套餐', NULL);
INSERT INTO `classification` VALUES ('100003', '多人套餐', NULL);
INSERT INTO `classification` VALUES ('100004', '十人全家桶套餐', NULL);
INSERT INTO `classification` VALUES ('11', '汤', 'https://img.icons8.com/office/2x/sons-of-anarchy.png');
INSERT INTO `classification` VALUES ('12', '凉拌', 'https://img.icons8.com/office/2x/the-flash-head.png');
INSERT INTO `classification` VALUES ('2', '我的待选', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.0WftkWURoF3pVG6lQjgsHwHaHa?pid=ImgDet&rs=1');
INSERT INTO `classification` VALUES ('3', '热销之王', 'https://tse1-mm.cn.bing.net/th?id=OIP-https://img.icons8.com/office/2x/collectibles.png');
INSERT INTO `classification` VALUES ('4', '今日爆款', 'https://tse1-mm.cn.bing.net/th?id=OIP-https://img.icons8.com/office/2x/logo.png');
INSERT INTO `classification` VALUES ('6', '每日必点', 'https://tse1-mm.cn.bing.net/th?id=OIP-https://img.icons8.com/office/2x/butting-in.png');
INSERT INTO `classification` VALUES ('7', '下酒菜', 'https://img.icons8.com/office/2x/meeting-room.png');
INSERT INTO `classification` VALUES ('8', '主食', 'https://img.icons8.com/office/2x/video-conference.png');
INSERT INTO `classification` VALUES ('9', '蔬菜', 'https://img.icons8.com/office/2x/jake.png');

-- ----------------------------
-- Table structure for combo
-- ----------------------------
DROP TABLE IF EXISTS `combo`;
CREATE TABLE `combo`  (
  `id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '从 100000 开始计数, 严格区分菜品',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `sale` int(0) NULL DEFAULT 0,
  `like_num` int(0) NULL DEFAULT 0,
  `publish_status` tinyint(1) NULL DEFAULT NULL COMMENT '上架状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `combo_name_index2`(`name`) USING BTREE,
  FULLTEXT INDEX `combo_name_index`(`name`) WITH PARSER `ngram`
) ENGINE = InnoDB AUTO_INCREMENT = 100006 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of combo
-- ----------------------------
INSERT INTO `combo` VALUES ('100000', '单人套餐B', 58, 0, 23, 1);
INSERT INTO `combo` VALUES ('100001', '单人套餐A', 8, 0, 1, 1);
INSERT INTO `combo` VALUES ('100006', '双人套餐A', 88, 0, 0, 0);

-- ----------------------------
-- Table structure for combo_food
-- ----------------------------
DROP TABLE IF EXISTS `combo_food`;
CREATE TABLE `combo_food`  (
  `combo_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_num` int(0) NOT NULL DEFAULT 0,
  `is_add` tinyint(1) NOT NULL DEFAULT 0 COMMENT '这个字段表示菜品是否是新加的',
  INDEX `combo_id`(`combo_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of combo_food
-- ----------------------------
INSERT INTO `combo_food` VALUES ('100000', '8', 2, 0);
INSERT INTO `combo_food` VALUES ('100006', '8', 2, 0);
INSERT INTO `combo_food` VALUES ('100006', '6', 1, 0);
INSERT INTO `combo_food` VALUES ('100006', '4', 1, 0);
INSERT INTO `combo_food` VALUES ('100001', '5', 1, 0);

-- ----------------------------
-- Table structure for commend
-- ----------------------------
DROP TABLE IF EXISTS `commend`;
CREATE TABLE `commend`  (
  `commend_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐理由',
  `stars` double NULL DEFAULT NULL COMMENT '推荐指数',
  `comments_time` datetime(0) NULL DEFAULT NULL,
  `StoreReply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `StoreReply_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`commend_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commend
-- ----------------------------
INSERT INTO `commend` VALUES ('1', '2', '1', '很酷', 4.5, '2022-07-26 00:54:44', NULL, NULL);

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否上架',
  `recommend_status` tinyint(1) NULL DEFAULT 0 COMMENT '是否菜品推荐,事实上这个字段完全没有,我们在recommend表中存储这些信息,写在这里只是为了增加可读性',
  `new_status` tinyint(1) NULL DEFAULT 0 COMMENT '是否新品推荐',
  `sale` int(0) NOT NULL DEFAULT 0,
  `like_num` int(0) NOT NULL DEFAULT 0,
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `main_ingredient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主料',
  `ingredient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配料',
  `make_method` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `weight` double NULL DEFAULT NULL COMMENT '重量',
  `make_time` double NULL DEFAULT NULL COMMENT '制作时间(分)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dish_name_index1`(`name`) USING BTREE,
  INDEX `sell_num`(`sale`) USING BTREE,
  FULLTEXT INDEX `dish_name_index`(`name`) WITH PARSER `ngram`
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci MAX_ROWS = 100000 ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', '凉拌木耳', 25, 1, 0, 0, 88, 77, '治疗感冒很有用哦!', 'https://tse1-mm.cn.bing.net/th/id/R-C.0df05ec81c8c21dfd8508e3f493becdd?rik=uOc8Nm9hIFmEDQ&riu=http%3a%2f%2fpic9.nipic.com%2f20100823%2f5539726_120433029033_2.jpg&ehk=yemlk22y9Ye%2f1k6umy7MKkYGRsZ6pBiunDaYh10qCuA%3d&risl=&pid=ImgRaw&r=0', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 25);
INSERT INTO `food` VALUES ('17', '剁椒鱼头(辣)', 48, 1, 0, 1, 88, 23, '够辣够开胃，本店最受欢迎的菜品之一', 'https://tse1-mm.cn.bing.net/th/id/R-C.53f50a391551472acbc9f5de96630a1b?rik=GmvuyXkBuinqcQ&riu=http%3a%2f%2fpic46.nipic.com%2f20140815%2f2221083_170059246493_2.jpg&ehk=ReNG7VdPCP0oqE27ooh3KlhvhqdMeG%2bjQVTm7HT4CWI%3d&risl=&pid=ImgRaw&r=0', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 25);
INSERT INTO `food` VALUES ('18', '肉末茄子', 15.2, 0, 1, 1, 87, 0, '很好吃的，快来吃吧', 'https://img.zcool.cn/community/01b70e5b5ac3cca801215c8f1ae499.jpg@1280w_1l_2o_100sh.jpg', NULL, NULL, '爆炒', 28, 8);
INSERT INTO `food` VALUES ('19', '123456', 12, 0, 1, 1, 87, 0, '1312312', '23', '32', '13', '31232', 0, 21);
INSERT INTO `food` VALUES ('21', 'ttt', 3, 0, 0, 0, 87, 0, 'ew', 'ttt', 'ew', 'wer', 'wer', 3, 3);
INSERT INTO `food` VALUES ('4', '凉拌猪脑', 38, 1, 1, 1, 88, 88, '这道菜口感丰富，层次鲜明，搭配的味道非常淡香，吃在嘴里有一种幸福的感觉', 'https://tse1-mm.cn.bing.net/th/id/R-C.471d815cb1a3d75f7dd044301161cb3d?rik=eAbMJ3yXF83EWQ&riu=http%3a%2f%2fseopic.699pic.com%2fphoto%2f50042%2f5731.jpg_wh1200.jpg&ehk=qa1Ew7mPEIhg71JlNRq7hn7OEKalJU1mAfb9RkjdNas%3d&risl=&pid=ImgRaw&r=0', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 5);
INSERT INTO `food` VALUES ('5', '好吃蒸包', 8, 1, 1, 1, 88, 90, '纤手搓来玉色匀，碧油煎出嫩黄深。夜来春睡知轻重，压扁佳人缠臂金。', 'https://tse1-mm.cn.bing.net/th/id/R-C.eca12549a3f927a4f706e1ea2900f566?rik=xtR3QlOsycKJbA&riu=http%3a%2f%2fpic6.nipic.com%2f20100413%2f4229075_090019041246_2.jpg&ehk=PTy0r6McbkaceD%2bqPaRXzqFPFl7GjnXWrv5Mr1sO6lU%3d&risl=&pid=ImgRaw&r=0', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 2.5);
INSERT INTO `food` VALUES ('6', '牛肉丸子', 30, 1, 1, 1, 88, 23, '纤小牛肉，个小，皮薄，只要往开水中一捞，就能盛入碗中，吃上一口，好鲜美！', 'https://tse1-mm.cn.bing.net/th/id/R-C.fd4b7ef86cd3ad1d0fc1367f7bee60a4?rik=fIMJs7SYdqS6rA&riu=http%3a%2f%2fpic6.nipic.com%2f20100416%2f4229075_090725069388_2.jpg&ehk=oemcL7ZTrC7oJTT%2bIUur3FkaL1nq5a6%2bniONTr19C2k%3d&risl=&pid=ImgRaw&r=0', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 14);
INSERT INTO `food` VALUES ('7', '红烧鸡块', 32, 1, 1, 1, 88, 111, '初游唐安饭薏米，炊成不减雕胡美。大如苋实白如玉，滑欲流匙香满屋。', 'https://tse1-mm.cn.bing.net/th/id/R-C.3bfbe2ea2de094d3f5fcc0d3ed9c0bb9?rik=hMV8vGpRe2Baxw&riu=http%3a%2f%2fpic4.nipic.com%2f20090728%2f78273_095123081_2.jpg&ehk=W3pJEGxCJdzOz1HgxTGcZFr6MJnd7EDJt%2b%2bhz4OtBIs%3d&risl=&pid=ImgRaw&r=0', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 2);
INSERT INTO `food` VALUES ('8', '蛋羹', 10, 0, 1, 1, 88, 231, '饭前甜点，真的香！！', 'https://img.zcool.cn/community/0136865b5ac064a801215c8f5f44b0.jpg@1280w_1l_2o_100sh.jpg', '主料就是核心价值观', '暂无辅料', '我怎么知道制作方法', 5, 2.5);

-- ----------------------------
-- Table structure for food_class
-- ----------------------------
DROP TABLE IF EXISTS `food_class`;
CREATE TABLE `food_class`  (
  `food_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classification_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`food_id`, `classification_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_class
-- ----------------------------
INSERT INTO `food_class` VALUES ('100000', '100001');
INSERT INTO `food_class` VALUES ('100000', '100002');
INSERT INTO `food_class` VALUES ('100006', '100001');
INSERT INTO `food_class` VALUES ('100006', '100002');
INSERT INTO `food_class` VALUES ('13', '3');
INSERT INTO `food_class` VALUES ('13', '4');
INSERT INTO `food_class` VALUES ('13', '6');
INSERT INTO `food_class` VALUES ('14', '3');
INSERT INTO `food_class` VALUES ('14', '4');
INSERT INTO `food_class` VALUES ('14', '6');
INSERT INTO `food_class` VALUES ('15', '3');
INSERT INTO `food_class` VALUES ('17', '3');
INSERT INTO `food_class` VALUES ('18', '3');
INSERT INTO `food_class` VALUES ('18', '4');
INSERT INTO `food_class` VALUES ('18', '6');
INSERT INTO `food_class` VALUES ('21', '3');
INSERT INTO `food_class` VALUES ('21', '4');
INSERT INTO `food_class` VALUES ('21', '6');

-- ----------------------------
-- Table structure for order_a
-- ----------------------------
DROP TABLE IF EXISTS `order_a`;
CREATE TABLE `order_a`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_type` tinyint(0) NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consume_type` tinyint(0) NOT NULL,
  `table` tinyint(0) NOT NULL DEFAULT -1,
  `create_time` datetime(0) NOT NULL,
  `final_time` datetime(0) NULL DEFAULT NULL,
  `original_price` double NOT NULL,
  `shop_discount` double NULL DEFAULT 0,
  `coupon_discount` double NULL DEFAULT 0,
  `address_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expected_time` datetime(0) NULL DEFAULT NULL COMMENT '预约时间',
  `taste` tinyint(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `other_fee` double NULL DEFAULT 0,
  `delete_flag` int(0) NOT NULL DEFAULT 0 COMMENT '0代表未被删除,1代表客户删除,2代表管理员删除,3代表都删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_a
-- ----------------------------

-- ----------------------------
-- Table structure for order_food
-- ----------------------------
DROP TABLE IF EXISTS `order_food`;
CREATE TABLE `order_food`  (
  `order_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '存储id是为了防止用户继续加餐的情况, 此时需要菜品ID',
  `food_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '冗余的存储这些信息是因为订单是过时的, 菜品信息可能会被改变',
  `food_num` int(0) NOT NULL,
  `food_price` double NOT NULL,
  INDEX `form_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_food
-- ----------------------------

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment_status` int(0) NULL DEFAULT NULL COMMENT '表示订单是否可支付',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `user_id` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `food_id` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `food_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `food_num` int(0) NULL DEFAULT NULL,
  `food_price` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '#14889A', 'theme', 'color', '主题色', 0, 'admin', '2018-09-23 19:52:54', NULL, NULL, '主题色', 0);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机构管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '桂林骏泰', NULL, 0, 'admin', '2021-06-08 06:47:36', NULL, NULL, 0);
INSERT INTO `sys_dept` VALUES (38, '蓝桥', NULL, 0, 'admin', '2020-08-12 15:33:58', NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'male', '男', 'sex', '性别', 0, 'admin', '2018-09-23 19:52:54', NULL, NULL, '性别', 0);
INSERT INTO `sys_dict` VALUES (2, 'female', '女', 'sex', '性别', 1, 'admin', '2018-09-23 19:53:17', NULL, NULL, '性别', 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(0) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录状态（online:在线，登录初始状态，方便统计在线人数；login:退出登录后将online置为login；logout:退出登录）',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL,类型：1.普通页面（如用户管理， /sys/user） 2.嵌套完整外部页面，以http(s)开头的链接 3.嵌套服务器页面，使用iframe:前缀+目标URL(如SQL监控， iframe:/druid/login.html, iframe:前缀会替换成服务器地址)',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `type` int(0) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, NULL, NULL, 0, 'el-icon-setting', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (2, '用户管理', 1, '/sys/user', NULL, 1, 'el-icon-service', 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (3, '查看', 2, NULL, 'sys:user:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (4, '新增', 2, NULL, 'sys:user:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (5, '修改', 2, NULL, 'sys:user:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (6, '删除', 2, NULL, 'sys:user:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (7, '机构管理', 1, '/sys/dept', NULL, 1, 'el-icon-news', 2, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (8, '查看', 7, NULL, 'sys:dept:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, '新增', 7, NULL, 'sys:dept:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, '修改', 7, NULL, 'sys:dept:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, '删除', 7, NULL, 'sys:dept:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, '角色管理', 1, '/sys/role', NULL, 1, 'el-icon-view', 4, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, '查看', 12, NULL, 'sys:role:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, '新增', 12, NULL, 'sys:role:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, '修改', 12, NULL, 'sys:role:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, '删除', 12, NULL, 'sys:role:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, '菜单管理', 1, '/sys/menu', NULL, 1, 'el-icon-menu', 5, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, '查看', 17, NULL, 'sys:menu:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, '新增', 17, NULL, 'sys:menu:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, '修改', 17, NULL, 'sys:menu:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, '删除', 17, NULL, 'sys:menu:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, '字典管理', 1, '/sys/dict', NULL, 1, 'el-icon-edit-outline', 7, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, '查看', 22, NULL, 'sys:dict:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, '新增', 22, NULL, 'sys:dict:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, '修改', 22, NULL, 'sys:dict:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, '删除', 22, NULL, 'sys:dict:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (27, '系统配置', 1, '/sys/config', NULL, 1, 'el-icon-edit-outline', 7, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (28, '查看', 27, NULL, 'sys:config:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (29, '新增', 27, NULL, 'sys:config:add', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (30, '修改', 27, NULL, 'sys:config:edit', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (31, '删除', 27, NULL, 'sys:config:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (32, '登录日志', 1, '/sys/loginlog', NULL, 1, 'el-icon-info', 8, NULL, NULL, 'admin', '2018-09-23 19:32:28', 0);
INSERT INTO `sys_menu` VALUES (33, '查看', 32, NULL, 'sys:loginlog:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, '删除', 32, NULL, 'sys:loginlog:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (35, '操作日志', 1, '/sys/log', NULL, 1, 'el-icon-info', 8, NULL, NULL, 'admin', '2018-09-23 19:32:28', 0);
INSERT INTO `sys_menu` VALUES (36, '查看', 35, NULL, 'sys:log:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (37, '删除', 35, NULL, 'sys:log:delete', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (38, '系统监控', 0, '', '', 0, 'el-icon-info', 4, 'admin', '2018-12-27 10:57:29', 'admin', '2019-01-10 17:31:04', 0);
INSERT INTO `sys_menu` VALUES (39, '数据监控', 38, 'http://127.0.0.1:8001/druid/login.html', NULL, 1, 'el-icon-warning', 0, NULL, NULL, 'admin', '2018-12-27 11:03:45', 0);
INSERT INTO `sys_menu` VALUES (40, '查看', 39, NULL, 'sys:druid:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (41, '服务监控', 38, 'http://127.0.0.1:8000/', NULL, 1, 'el-icon-view', 1, 'admin', '2018-11-02 20:02:15', 'admin', '2018-12-27 11:03:53', 0);
INSERT INTO `sys_menu` VALUES (42, '查看', 41, NULL, 'sys:monitor:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (43, '服务治理', 0, '', '', 0, 'el-icon-service', 2, 'admin', '2018-12-27 11:05:48', 'admin', '2018-12-27 11:06:39', 0);
INSERT INTO `sys_menu` VALUES (44, '注册中心', 43, 'http://127.0.0.1:8500', NULL, 1, ' el-icon-view', 0, 'admin', '2018-11-03 11:06:48', 'admin', '2018-12-27 11:08:11', 0);
INSERT INTO `sys_menu` VALUES (45, '查看', 44, NULL, 'sys:consul:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (46, '接口文档', 0, 'http://127.0.0.1:8001/swagger-ui.html', NULL, 1, 'el-icon-document', 3, NULL, NULL, 'admin', '2018-12-27 11:04:18', 0);
INSERT INTO `sys_menu` VALUES (47, '查看', 46, NULL, 'sys:swagger:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (48, '代码生成', 0, '/generator/generator', '', 1, 'el-icon-star-on', 5, 'admin', '2018-11-15 14:39:30', 'admin', '2018-11-15 14:56:18', 0);
INSERT INTO `sys_menu` VALUES (49, '查看', 48, NULL, 'sys:generator:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (50, '在线用户', 0, '/sys/online', '', 1, 'el-icon-view', 5, 'admin', '2018-11-15 14:39:30', 'admin', '2018-11-15 14:56:18', 0);
INSERT INTO `sys_menu` VALUES (51, '查看', 50, NULL, 'sys:online:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (52, '使用案例', 0, NULL, NULL, 0, 'el-icon-picture-outline', 6, NULL, NULL, 'admin', '2018-11-15 14:39:43', 0);
INSERT INTO `sys_menu` VALUES (53, '国际化', 52, '/demo/i18n', NULL, 1, 'el-icon-edit', 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (54, '查看', 53, NULL, 'sys:dict:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (55, '换皮肤', 52, '/demo/theme', NULL, 1, 'el-icon-picture', 2, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_menu` VALUES (56, '查看', 55, NULL, 'sys:dict:view', 2, NULL, 0, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'admin', '超级管理员', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 19:07:18', 0);
INSERT INTO `sys_role` VALUES (2, 'pm', '项目经理', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 11:39:28', 0);
INSERT INTO `sys_role` VALUES (3, 'dev', '开发人员', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 11:39:28', 0);
INSERT INTO `sys_role` VALUES (4, 'test', '测试人员', 'admin', '2019-01-19 11:11:11', 'admin', '2019-01-19 11:11:11', 0);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色机构' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (1, 1, 1, 'admin', '2019-01-11 08:30:37', 'admin', '2019-01-11 08:30:25');
INSERT INTO `sys_role_dept` VALUES (2, 2, 1, 'admin', '2019-01-11 08:31:01', 'admin', '2019-01-11 08:31:04');
INSERT INTO `sys_role_dept` VALUES (3, 3, 1, 'admin', '2019-01-11 08:31:18', 'admin', '2019-01-11 08:31:21');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 623 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (469, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (470, 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (471, 2, 3, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (472, 2, 4, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (473, 2, 5, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (474, 2, 6, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (475, 2, 7, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (476, 2, 8, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (477, 2, 9, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (478, 2, 10, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (479, 2, 11, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (480, 2, 12, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (481, 2, 13, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (482, 2, 14, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (483, 2, 15, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (484, 2, 16, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (485, 2, 17, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (486, 2, 18, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (487, 2, 19, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (488, 2, 20, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (489, 2, 21, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (490, 2, 22, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (491, 2, 23, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (492, 2, 24, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (493, 2, 25, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (494, 2, 26, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (495, 2, 27, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (496, 2, 28, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (497, 2, 29, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (498, 2, 30, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (499, 2, 31, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (500, 2, 32, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (501, 2, 33, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (502, 2, 34, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (503, 2, 35, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (504, 2, 36, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (505, 2, 37, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (506, 2, 43, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (507, 2, 44, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (508, 2, 45, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (509, 2, 46, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (510, 2, 47, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (511, 2, 38, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (512, 2, 39, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (513, 2, 40, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (514, 2, 41, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (515, 2, 42, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (516, 2, 48, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (517, 2, 49, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (518, 2, 50, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (519, 2, 51, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (520, 2, 52, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (521, 2, 53, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (522, 2, 54, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (523, 2, 55, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (524, 2, 56, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (572, 3, 1, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (573, 3, 2, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (574, 3, 3, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (575, 3, 4, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (576, 3, 5, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (577, 3, 6, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (578, 3, 7, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (579, 3, 8, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (580, 3, 12, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (581, 3, 13, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (582, 3, 17, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (583, 3, 18, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (584, 3, 22, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (585, 3, 23, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (586, 3, 24, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (587, 3, 25, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (588, 3, 26, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (589, 3, 27, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (590, 3, 28, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (591, 3, 29, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (592, 3, 30, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (593, 3, 31, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (594, 3, 32, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (595, 3, 33, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (596, 3, 35, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (597, 3, 36, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (598, 3, 43, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (599, 3, 44, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (600, 3, 45, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (601, 3, 38, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (602, 3, 39, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (603, 3, 40, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (604, 3, 41, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (605, 3, 42, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (606, 3, 50, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (607, 3, 51, 'admin', '2019-01-22 14:45:28', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (608, 4, 1, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (609, 4, 2, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (610, 4, 3, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (611, 4, 7, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (612, 4, 8, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (613, 4, 17, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (614, 4, 18, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (615, 4, 32, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (616, 4, 33, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (617, 4, 35, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (618, 4, 36, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (619, 4, 46, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (620, 4, 47, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (621, 4, 50, 'admin', '2019-01-22 14:46:44', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (622, 4, 51, 'admin', '2019-01-22 14:46:44', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `nick_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '机构ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(0) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '超管', NULL, 'bd1718f058d8a02468134432b8656a86', 'YzcmCZNvbXocrsz9dm8e', 'liwei.bluesky@hotmail.com', '18076757556', 1, 1, 'admin', '2021-08-13 18:11:11', 'admin', '2021-08-13 18:11:11', 0);
INSERT INTO `sys_user` VALUES (2, 'liwei', '李伟', NULL, '727f76787b7a79cc5942ee7714579e3c', 'b3f2ded289524fe98b12', '7274561@qq.com', '18076757556', 1, 38, 'admin', '2021-08-13 19:43:00', 'admin', '2021-08-14 18:10:02', 0);
INSERT INTO `sys_user` VALUES (3, '10086', NULL, NULL, '727f76787b7a79cc5942ee7714579e3c', 'b3f2ded289524fe98b12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user_role` VALUES (93, 2, 2, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rank` int(0) NOT NULL DEFAULT 0 COMMENT '会员积分',
  `integral` int(0) NOT NULL DEFAULT 0 COMMENT '会员等级',
  `wallet` int(0) NOT NULL DEFAULT 0 COMMENT '会员钱包',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log`  (
  `user_id` int(0) NOT NULL,
  `last_login_time` datetime(0) NOT NULL,
  `last_login_ip` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
