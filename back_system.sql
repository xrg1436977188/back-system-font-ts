/*
 Navicat Premium Data Transfer

 Source Server         : back_system
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : back_system

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 18/05/2024 18:36:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `download_number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (30, '四六级必备4500词汇02.pdf', 'http://127.0.0.1:3007/upload/四六级必备4500词汇02.pdf', '3572.064453125', '李四', '2024-03-25 15:26:37.361', 0);
INSERT INTO `files` VALUES (31, '打印复印价格表.docx', 'http://127.0.0.1:3007/upload/打印复印价格表.docx', '264.630859375', '张三', '2024-05-08 20:27:57.220', 0);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` int(255) NULL DEFAULT NULL,
  `onlyId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (19, 'http://127.0.0.1:3007/upload/a0.jpg', 123456, '66e9adc4-316a-4cb9-a291-bc426b5fa519');
INSERT INTO `image` VALUES (18, 'http://127.0.0.1:3007/upload/a0.jpg', 123456, 'ccfb10dc-79c0-46e0-a869-532bf5d5d8e3');
INSERT INTO `image` VALUES (17, 'http://127.0.0.1:3007/upload/avatar.jpg', NULL, 'e201498e-2a6c-411d-b650-f56ae692b1d8');
INSERT INTO `image` VALUES (16, 'http://127.0.0.1:3007/upload/a0.jpg', NULL, '8d4e024d-26c1-4e68-8ee9-09af4050536b');
INSERT INTO `image` VALUES (20, 'http://127.0.0.1:3007/upload/a0.jpg', 123456, '6a03b438-7fa1-4b81-b68a-3d5c109aee63');
INSERT INTO `image` VALUES (21, 'http://127.0.0.1:3007/upload/a0.jpg', 123456, '5fd1d87e-032d-42b6-9fb7-fc6321dd7983');
INSERT INTO `image` VALUES (22, 'http://127.0.0.1:3007/upload/a0.jpg', 123456, '042736ef-f598-4c37-8ae0-b3f6c6e8df1f');
INSERT INTO `image` VALUES (23, 'http://127.0.0.1:3007/upload/pic3.jpg', 123456, 'bfd2bcea-01d1-4b6f-bcf2-7da265587d52');
INSERT INTO `image` VALUES (24, 'http://127.0.0.1:3007/upload/a0.jpg', 123456, '193501bf-c388-49c5-bb82-8edc99a67a64');
INSERT INTO `image` VALUES (25, 'http://127.0.0.1:3007/upload/avatar.jpg', 111117, 'b79da0ae-b8ff-48de-a5af-9352ed284487');
INSERT INTO `image` VALUES (26, 'http://127.0.0.1:3007/upload/11-04.jpg', NULL, '86313e7b-6964-4eb7-b870-e97fb5e58a41');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(12) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES (1, 123456, '李四', '111@qq.com', '2024-03-16 15:50:36.783');
INSERT INTO `login_log` VALUES (2, 123456, '李四', '111@qq.com', '2024-03-18 08:33:44.455');
INSERT INTO `login_log` VALUES (3, 123456, '李四', '111@qq.com', '2024-03-18 08:58:03.143');
INSERT INTO `login_log` VALUES (4, 123456, '李四', '111@qq.com', '2024-03-25 15:10:58.614');
INSERT INTO `login_log` VALUES (5, 123456, '李四', '111@qq.com', '2024-03-25 16:01:04.534');
INSERT INTO `login_log` VALUES (6, 123456, '李四', '111@qq.com', '2024-03-25 17:12:14.388');
INSERT INTO `login_log` VALUES (7, 123456, '李四', '111@qq.com', '2024-03-25 17:14:31.827');
INSERT INTO `login_log` VALUES (8, 111117, '小龙女', '111113@qq.com', '2024-03-25 20:51:01.011');
INSERT INTO `login_log` VALUES (9, 333333, '赵六', '333@qq.com', '2024-03-25 20:56:10.796');
INSERT INTO `login_log` VALUES (10, 222222, '王五', '222@qq.com', '2024-04-02 10:25:25.617');
INSERT INTO `login_log` VALUES (11, 222222, '王五', '222@qq.com', '2024-04-04 13:04:50.175');
INSERT INTO `login_log` VALUES (12, 123666, '张三', '123666@qq.com', '2024-04-07 15:53:20.433');
INSERT INTO `login_log` VALUES (13, 123666, '张三', '123666@qq.com', '2024-04-07 15:54:19.260');
INSERT INTO `login_log` VALUES (14, 123666, '张三', '123666@qq.com', '2024-04-07 15:55:31.001');
INSERT INTO `login_log` VALUES (15, 123666, '张三', '123666@qq.com', '2024-04-07 15:59:10.791');
INSERT INTO `login_log` VALUES (16, 123666, '张三', '123666@qq.com', '2024-04-07 16:03:16.468');
INSERT INTO `login_log` VALUES (17, 123666, '张三', '123666@qq.com', '2024-04-07 16:04:16.165');
INSERT INTO `login_log` VALUES (18, 123666, '张三', '123666@qq.com', '2024-05-04 19:37:13.616');
INSERT INTO `login_log` VALUES (19, 123666, '张三', '123666@qq.com', '2024-05-04 19:38:27.348');
INSERT INTO `login_log` VALUES (20, 123666, '张三', '123666@qq.com', '2024-05-04 19:40:18.428');
INSERT INTO `login_log` VALUES (21, 123666, '张三', '123666@qq.com', '2024-05-04 19:44:10.642');
INSERT INTO `login_log` VALUES (22, 111111, '张三', '123666@qq.com', '2024-05-08 17:37:29.547');
INSERT INTO `login_log` VALUES (23, 111111, '张三', '111111@qq.com', '2024-05-08 17:46:59.999');
INSERT INTO `login_log` VALUES (24, 111111, '张三', '111111@qq.com', '2024-05-08 18:11:23.841');
INSERT INTO `login_log` VALUES (25, 111111, '张三', '111111@qq.com', '2024-05-08 20:27:04.730');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_publish_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_publish_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_receipt_object` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_click_number` int(11) NULL DEFAULT NULL,
  `message_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_publish_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message_status` int(11) NULL DEFAULT NULL,
  `message_delete_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (26, '下班开会', '公司公告', '总裁办', '李四', '全体成员', 0, '', '2024-03-16 13:46:41.336', '2024-03-16 14:11:23.217', '重要', 1, '2024-03-18 09:13:26.016');
INSERT INTO `message` VALUES (27, '系统升级2.0版本', '系统消息', '总裁办', '李四', '全体成员', 0, '', '2024-03-16 13:47:30.048', NULL, '必要', 0, NULL);
INSERT INTO `message` VALUES (28, '下班开会两小时', '公司公告', '总裁办', '李四', '全体成员', 0, '', '2024-03-18 09:13:21.448', NULL, '必要', 0, NULL);
INSERT INTO `message` VALUES (29, '3.0', '系统消息', '', '张三', '', 0, '', '2024-05-08 18:29:19.420', NULL, '', 0, NULL);
INSERT INTO `message` VALUES (30, '4', '系统消息', '', '张三', '', 0, '', '2024-05-08 18:31:15.371', NULL, '', 0, NULL);
INSERT INTO `message` VALUES (31, '5', '系统消息', '', '张三', '', 0, '', '2024-05-08 18:31:47.619', NULL, '', 0, NULL);
INSERT INTO `message` VALUES (32, '4', '公司公告', '总裁办', '张三', '总裁办', 0, '', '2024-05-08 18:32:15.221', NULL, '一般', 0, NULL);

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES (3, '李四', '对产品\'西瓜\'进行了审核操作，审核结果为\'同意\'', '高级', '2024-03-16 13:23:04.378');
INSERT INTO `operation_log` VALUES (4, '李四', '对产品\'鞋子\'进行了审核操作，审核结果为\'同意\'', '高级', '2024-03-25 20:48:15.951');

-- ----------------------------
-- Table structure for outproduct
-- ----------------------------
DROP TABLE IF EXISTS `outproduct`;
CREATE TABLE `outproduct`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_out_id` int(11) NULL DEFAULT NULL,
  `product_out_number` int(11) NULL DEFAULT NULL,
  `product_out_price` int(11) NULL DEFAULT NULL,
  `product_out_apply_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_audit_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_out_audit_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audit_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_apply_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outproduct
-- ----------------------------
INSERT INTO `outproduct` VALUES (5, 2001, 20, 100, '李四', '2024-03-16 13:23:04.369', '李四', '同意出库', NULL);
INSERT INTO `outproduct` VALUES (6, 2003, 10, 50, '李四', '2024-03-25 20:48:15.941', '李四', '同意出库', NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_in_warehouse_number` int(11) NULL DEFAULT NULL,
  `product_single_price` int(11) NULL DEFAULT NULL,
  `product_all_price` int(11) NULL DEFAULT NULL,
  `product_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_create_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_out_id` int(11) NULL DEFAULT NULL,
  `product_out_number` int(11) NULL DEFAULT NULL,
  `product_out_price` int(11) NULL DEFAULT NULL,
  `product_out_apply_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_apply_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apply_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_out_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_audit_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_out_audit_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audit_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (4, 1001, '西瓜', '食品类', '个', 200, 5, 1000, NULL, '李四', '2024-03-15 20:49:25.059', '2024-03-16 19:27:51.044', '西瓜入库', 2024, 10, 50, '张三', '2024-05-08 18:02:54.534', '请求入库', '申请出库', NULL, NULL, NULL);
INSERT INTO `product` VALUES (5, 1002, '芝麻', '食品类', '个', 600, 1, 600, NULL, '李四', '2024-03-15 21:01:35.373', '2024-03-16 19:27:31.876', '芝麻入库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (6, 1003, '鞋子', '服饰类', '个', 10, 5, 50, NULL, '李四', '2024-03-15 21:13:47.898', NULL, '鞋子入库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (8, 1005, 'AD钙奶', '日用品类', '箱', 200, 2, 400, NULL, '', '2024-03-25 20:57:30.084', NULL, 'AD入库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (7, 1004, '小猪仔', '食品类', '斤', 200, 200, 40000, NULL, '李四', '2024-03-25 20:44:16.005', NULL, '小猪仔入库', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int(11) NOT NULL,
  `set_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `set_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `set_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'swiper1', 'http://127.0.0.1:3007/upload/p6.jpg', NULL);
INSERT INTO `setting` VALUES (2, 'swiper2', 'http://127.0.0.1:3007/upload/p4.jpg', NULL);
INSERT INTO `setting` VALUES (3, 'swiper3', 'http://127.0.0.1:3007/upload/p3.jpg', NULL);
INSERT INTO `setting` VALUES (4, 'swiper4', 'http://127.0.0.1:3007/upload/p2.jpg', NULL);
INSERT INTO `setting` VALUES (5, 'swiper5', 'http://127.0.0.1:3007/upload/sw4.jpg', NULL);
INSERT INTO `setting` VALUES (6, 'swiper6', 'http://127.0.0.1:3007/upload/sw4jpg.jpg', NULL);
INSERT INTO `setting` VALUES (7, '公司名称', 'xxx科技有限公司', NULL);
INSERT INTO `setting` VALUES (8, '公司介绍', NULL, '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;\">江西国鼎科技是一家计算机设备及软件批发商。业务涵盖计算机软硬件、网络设备、工业自控设备、机电设备、办公自动化设备、通讯器材、仪器仪表、电子产品、电器机械、建筑材料、五金交电、文化用品、安防产品、有线电视器材的销售等。</span></p>');
INSERT INTO `setting` VALUES (9, '公司架构', NULL, '<p><span style=\"color: rgb(5, 7, 59);\">1、战略架构是企业的战略规划，它包括企业的长期目标、战略方向和关键业务领域。战略架构的作用是指导企业的整体发展方向，帮助企业实现战略目标。战略架构的制定需要考虑到市场环境、竞争态势、企业资源、领导团队的智慧和决策等多个因素。</span></p><p><span style=\"color: rgb(5, 7, 59);\">2、业务架构是针对企业业务运行和管理的IT系统架构，它涵盖了企业的各个业务领域和业务流程。业务架构的作用是将企业的战略目标和业务需求转化为IT系统的功能和流程，确保IT系统能够支持企业的业务运行和发展。业务架构需要考虑的业务范围包括销售、市场、生产、物流、人力资源、财务管理等。</span></p><p><span style=\"color: rgb(5, 7, 59);\">3、应用架构是针对企业应用的IT系统架构，它包括各种应用程序的功能、模块、流程和交互关系等。应用架构的作用是将企业的业务需求转化为具体的应用程序，确保应用程序能够满足业务需求并实现业务功能。应用架构需要考虑的应用程序包括各种业务管理软件、客户服务软件、数据分析工具等。</span></p><p><span style=\"color: rgb(5, 7, 59);\">4、技术架构是针对企业IT系统的技术设计和实现，它包括硬件、软件、网络和安全等方面的技术。技术架构的作用是将企业的业务需求转化为可实现的技术方案，确保IT系统能够支持企业的业务需求并具有可靠性、可扩展性和可维护性。技术架构需要考虑的技术范围包括服务器、存储、数据库、操作系统、中间件等。</span></p><p><span style=\"color: rgb(5, 7, 59);\">5、数据架构是针对企业数据管理和利用的IT系统架构，它包括数据的组织、存储、访问和管理等方面的设计。数据架构的作用是将企业的业务需求转化为数据管理和利用的方案，确保IT系统能够支持企业的数据管理和利用，并保证数据质量和安全性。数据架构需要考虑的数据范围包括客户数据、产品数据、订单数据、员工数据等。</span></p>');
INSERT INTO `setting` VALUES (10, '公司战略', NULL, '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 14px;\">企业发展战略目标的指导下，通过诊断、分析、评估企业管理和IT现状，优化企业的管理模式和业务流程，结合所属行业信息化方面的实践经验和对最新信息技术发展趋势，提出企业信息化建设的远景目标和战略，制定企业信息化的系统架构、确定信息系统各部分的逻辑关系，以及具体信息系统的架构设计、选型和实施策略，对信息化目标和内容进行整体规划，并进行可行性分析。全面系统地指导企业信息化的进程，协调发展地进行企业信息技术的应用，及时地满足企业发展的需要，有效充分地利用企业的资源，促进企业战略目标的实现，满足企业可持续发展的需要。</span></p>');
INSERT INTO `setting` VALUES (11, '公司高层', NULL, '<p>高层，又称高层管理人员，是公司中直接向董事会报告与负责、执行董事会决议、承担公司日常经营决策与运营管理职责的高级管理人员。在大型、多层次结构的公司中，通常指执行委员会成员。具体工作一般为监督与解释外部环境状况以及就影响整个公司的问题进行决策；负责制定和规划公司战略目标、制定实现既定目标的战略和路径；合理配置资源、组织和监控公司业务正常运营，确保公司经营总体的成功。</p>');
INSERT INTO `setting` VALUES (12, '部门设置', '[\"总裁办\",\"组织部\",\"财务部\",\"行政部\",\"技术部\"]', NULL);
INSERT INTO `setting` VALUES (13, '产品设置', '[\"食品类\",\"服饰类\",\"日用品类\",\"电子类\"]', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(12) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `read_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `read_status` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 111111, '$2a$10$k1mm1SSX50RKBVLQ5.6u0ucG7yb8H2k.0mG.IPooysfkY3U7s0mRy', '超级管理员', '组织部', '张三', '男', '111111@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-01-31 10:44:18.102', NULL, '0', '[]', 1);
INSERT INTO `users` VALUES (2, 123456, '$2a$10$EnyTKwk1vH3XR51JS2SmP.FMfvucK9pDbmPnG6VH/lty9WZRgVPJ6', '产品管理员', '总裁办', '李四', '男', '111@qq.com', 'http://127.0.0.1:3007/upload/a0.jpg', '2024-03-15 19:34:40.940', '2024-03-16 13:29:01.112', '0', '[]', 1);
INSERT INTO `users` VALUES (3, 222222, '$2a$10$xOR/cKZOe0/ER9jD10W9dOFsWcTYSx31SMSLgINrA2yL0/sRpRB4O', '用户', '总裁办', '王五', '男', '222@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-15 20:35:43.256', NULL, '0', '[]', 1);
INSERT INTO `users` VALUES (4, 333333, '$2a$10$uHb.KW0uktZZkOzSAuGzOub4W9O6JusY2zni9CtkhIMYxn8CUANna', '产品管理员', '总裁办', '赵六', '男', '333@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-15 20:38:13.872', '2024-03-16 13:29:25.448', '0', '[]', 1);
INSERT INTO `users` VALUES (5, 444444, '$2a$10$bA0b0aXVQInLk..aVosdxuLuwFRlPPusK.ghhWOAk/yx8UjzKdLSm', '消息管理员', '组织部', '李想', '女', '444@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-15 20:40:04.579', '2024-03-16 13:29:36.624', '0', NULL, 0);
INSERT INTO `users` VALUES (6, 12341234, '$2a$10$MTT3afFCXfb/DbUOPI649uFbX36Sf8PFsP0C/Rv7LdoGZ7PFJ42TS', '产品管理员', '组织部', '键盘侠', '男', '12341234@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 16:03:35.810', '2024-05-08 18:22:17.684', '0', NULL, 0);
INSERT INTO `users` VALUES (49, 111222333, '$2a$10$hNAqU.9KnAsxhdwdjnzuzedTBwtyVF/uoi9hxvIJicTQK7StLfPpi', '产品管理员', '技术部', '菜鸟', '男', '111222333@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:22:35.171', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (50, 11112222, '$2a$10$fooIC5dvP1bLje0kcLyg6eOtsoX1FufkBOd41P7bLsPGKbzLs7oD2', '用户管理员', '财务部', '女汉子', '女', '11112222@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:23:28.550', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (51, 222333, '$2a$10$1oAy1IBanlN3zMVv2Me9Je9BIp1N5VhYXU.x2DRUsz8orPMJ8SIua', '产品管理员', '行政部', '咆哮哥', '男', '222333@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:24:17.190', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (52, 3334444, '$2a$10$agIqTmrqFNrwxSlrZMukwuTXl6vwCPuBRPsA4dtya1oGZq2ku7etq', '产品管理员', '财务部', '马尔查哈', '女', '3334444@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:25:32.361', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (53, 128128, '$2a$10$BmOWVODma1vl/cJT89ZzXuvFpjPHl2M4vKxrIK6NBGnXq50emCzu2', '用户管理员', '技术部', '养猪人士', '男', '128128@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:33:50.905', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (54, 118118, '$2a$10$eboaXJ2PbX5l5UFhq2crku56Z.DD9blcil5HnC3jeQr9EBR7eYopu', '用户管理员', '组织部', '颓废男孩', '男', '118118@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:34:43.746', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (55, 111112, '$2a$10$b6t4AQv.HmL5f1GKz5kFK.blHJ/zFIi4jExSFeXg7TqCI4oJDO5k2', '产品管理员', '财务部', '金海陵王', '男', '111112@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:35:16.382', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (56, 111113, '$2a$10$nqaSFWHZk6wlu16NQV6DZOiWYn1bxsmezFHSYOjgIBEfjSGT62eI6', '消息管理员', '行政部', '神仙', '男', '111113@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:35:54.172', NULL, '0', NULL, 0);
INSERT INTO `users` VALUES (57, 111117, '$2a$10$ukoZ7qXIZeCMRt2E4TSerOFerWfj./leZ7OkP.HVMWPCNUCkk/nWe', '消息管理员', '财务部', '小龙女', '女', '111113@qq.com', 'http://127.0.0.1:3007/upload/avatar.jpg', '2024-03-25 20:36:17.176', NULL, '0', '[]', 1);

SET FOREIGN_KEY_CHECKS = 1;
