/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : kx

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 11/06/2018 15:30:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutuses
-- ----------------------------
DROP TABLE IF EXISTS `aboutuses`;
CREATE TABLE `aboutuses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutuses
-- ----------------------------
INSERT INTO `aboutuses` VALUES (1, '行政地位', 'Administrative status', '苏州大学计算机科学与技术学院学生科技协会是在院党委，院行政领导下，由院团委具体指导的学术科技团体。科协在人才济济的计科院中引领学生组织的工作，取得了优秀院组织的荣誉。', '#', '2018-06-10 14:29:06', '2018-06-10 14:29:06');
INSERT INTO `aboutuses` VALUES (2, '部门设置', 'Departments', '科协内部有宣传部、活动部、外联部、图文中心、科研部、项目部、办公室这七个部门；各个部门各司其职，共同为科协的发展建言献策。', '#', '2018-06-10 14:29:40', '2018-06-10 14:29:40');
INSERT INTO `aboutuses` VALUES (3, '近期活动', 'Activities', '在每一年科协的工作中，科协举办的各种活动是科协的一大特色。科协的传统活动有新生英文短句大赛，来自未来的风app设计大赛以及智慧之星大赛；科协的各类技术讲座也是科协的一大亮点，例如PS讲座，拆机讲座，C语言，C++讲座以及python讲座也都是座无虚席。还有冬至包饺子活动，科协大联谊以及科协大聚餐也为科协的每一位同学送去了温暖；更有每年一次校级活动，比如去年举办的校园闯关解密马拉松赢得了全校师生的一致好评。', '#', '2018-06-10 14:30:00', '2018-06-10 14:39:21');

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discription` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES (1, '校园闯关解密马拉松', 'activities/June2018/iZOr81y6SJNCXXumgXu5.jpg', '是宣传部想出并且策划的科协组织的校级活动，由其他部门进行辅助完成，主要是在本部东区，设立9个关卡，在完成每个关卡的游戏之后以马拉松的形式对下一个关卡进行猜字谜寻找，报名人数超过300+。', '2018-06-11 02:27:17', '2018-06-11 02:27:17');
INSERT INTO `activities` VALUES (2, '情书集活动', 'activities/June2018/WVTkIUuS0RCsVo5vDlE9.jpg', '是宣传部独立策划组织的一个活动，主要是从邮箱和微信后台留言来收集同学们写给某人的情书，然后通过网络管理平台进行发出展示，并且对其中一些抽中的情书给予寄出。对于一些外省的学校抽中奖之后也可以寄出。', '2018-06-11 02:27:52', '2018-06-11 02:27:52');
INSERT INTO `activities` VALUES (3, '科协周刊', 'activities/June2018/cZIV2FFfHOZ0osTN4XVh.jpg', '是宣传部广告组每周在H5平台进行创作的一个广告推送，会在网络平台进行展示。', '2018-06-11 02:28:18', '2018-06-11 02:28:18');
INSERT INTO `activities` VALUES (4, '春游', 'activities/June2018/QAG3th84ExVGmPIUfwa8.jpg', '由宣传部内部举行的春游活动，部长会带干事去烧烤爬山等。', '2018-06-11 02:28:48', '2018-06-11 02:28:48');
INSERT INTO `activities` VALUES (5, '拆机讲座', 'activities/June2018/kR7CKWuzg5E4Apfgn2vt.jpg', '向同学们介绍电脑内部的硬件知识，同学们可以亲身参与进来，体验拆机的乐趣。', '2018-06-11 02:29:18', '2018-06-11 02:29:18');
INSERT INTO `activities` VALUES (6, 'Python讲座', 'activities/June2018/a6o72DDrjILYP7aLhkFS.jpg', '在大学第一次编程语言考试之前为大家梳理一下知识点和上机注意事项，方便同学们尽快适应python课程。', '2018-06-11 02:29:49', '2018-06-11 02:29:49');
INSERT INTO `activities` VALUES (7, '代码绘图大赛', 'activities/June2018/YDoN3BwjWQ60dboaK7H5.png', '在代码可运行的基础上直观看上去能表现出比较有意思的图像，充分发挥大家自己的想象力，可以锻炼大家的实际操作能力。', '2018-06-11 02:30:18', '2018-06-11 02:30:18');
INSERT INTO `activities` VALUES (8, '电脑义诊', 'activities/June2018/wOyQnpST4EmllzHe7OG7.jpg', '充分发挥学院优势，面向全校，为大家解决电脑软件和硬件方面的问题，同时还能提升自己硬件方面的知识。', '2018-06-11 02:30:45', '2018-06-11 02:30:45');
INSERT INTO `activities` VALUES (9, '实验室讲座', 'activities/June2018/72o53p9Wy88MbGh2PfOA.jpg', '与研究生会合作，为大家介绍学院的几大实验室，同时兼顾实验室招新的相关事宜。', '2018-06-11 02:31:21', '2018-06-11 02:31:21');
INSERT INTO `activities` VALUES (10, '兴趣小组', 'activities/June2018/x0XOmzzUUkIfunzEZnCt.jpg', '为在某一方面感兴趣的同学提供更加方便快捷的学习和交流方式。', '2018-06-11 02:32:02', '2018-06-11 02:32:02');
INSERT INTO `activities` VALUES (11, '草坪狼人杀', 'activities/June2018/EQhxWcOvZunlywnD4DIt.jpg', '有趣又令人难忘', '2018-06-11 02:32:30', '2018-06-11 02:32:30');
INSERT INTO `activities` VALUES (12, '来自未来的风', 'activities/June2018/1FLfNPWcSPAmV7PyiFjW.jpg', '通过举办校级活动APP创意展示大赛 ，激发当代大学生的创新思维，科学利用电脑，激发灵感，鼓动创意，抒发情感，展现才华的宗旨，以一个先锋形象引领一种设计文化，以一个主任翁的身份表现大学生自己的生活，让技术与艺术、情感完美的结合，彰显当代大学生风采。此次大赛奖品丰厚，参与者十分积极，此次活动大获成功。', '2018-06-11 02:33:02', '2018-06-11 02:33:02');
INSERT INTO `activities` VALUES (13, '科协各种会议', 'activities/June2018/JKMYvMBQ8NMAm8a3EfjU.jpg', '全体大会、受聘大会、换届大会 科协全体会议，完成大会预期目标之余，大会期间还有小游戏，有惩罚也有奖励。', '2018-06-11 02:33:33', '2018-06-11 02:33:33');
INSERT INTO `activities` VALUES (14, '嘴巴上的科协', 'activities/June2018/m0VK4fZi9H9yJVSxILMA.jpg', '特色主题系列讲座，例如office讲座，苏州风情讲座等，邀请各种大神担任主讲人，绝对涨姿势啊！', '2018-06-11 02:34:04', '2018-06-11 02:34:04');
INSERT INTO `activities` VALUES (15, '新生中英文短剧大赛', 'activities/June2018/BvD41wvSGBI5TNV2StSX.jpg', '本次活动主要针对刚刚入学的大一新生，希望通过此次活动，大一新生可以在排练的过程中互相了解熟悉，提高班级的凝聚力，也可以锻炼班委的组织沟通能力，更可以全面提高大一新生的口语能力和英语水平，也给他们提供一个融入大学生活的契机，一个展现青春、展示才华的舞台。', '2018-06-11 02:34:32', '2018-06-11 02:34:32');
INSERT INTO `activities` VALUES (16, '智慧之星', 'activities/June2018/4Zvnzsf6ekAx19joxAXR.jpg', '第二个学期我们主要负责的一个活动，同样的精彩纷呈', '2018-06-11 02:35:00', '2018-06-11 02:35:00');
INSERT INTO `activities` VALUES (17, '冬至包饺子', 'activities/June2018/t23UTbgWv8O3ZUWnzWqg.jpg', '此外上一年我们还有负责一些有趣的小活动：比如冬至包饺子。', '2018-06-11 02:35:33', '2018-06-11 02:35:33');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categories_slug_unique`(`slug`) USING BTREE,
  INDEX `categories_parent_id_foreign`(`parent_id`) USING BTREE,
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, NULL, 1, 'Category 1', 'category-1', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `categories` VALUES (2, NULL, 1, 'Category 2', 'category-2', '2018-06-10 10:10:56', '2018-06-10 10:10:56');

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `data_rows_data_type_id_foreign`(`data_type_id`) USING BTREE,
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES (1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `data_rows` VALUES (2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2);
INSERT INTO `data_rows` VALUES (3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3);
INSERT INTO `data_rows` VALUES (4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4);
INSERT INTO `data_rows` VALUES (5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5);
INSERT INTO `data_rows` VALUES (6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6);
INSERT INTO `data_rows` VALUES (7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7);
INSERT INTO `data_rows` VALUES (8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8);
INSERT INTO `data_rows` VALUES (9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10);
INSERT INTO `data_rows` VALUES (10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11);
INSERT INTO `data_rows` VALUES (11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12);
INSERT INTO `data_rows` VALUES (12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12);
INSERT INTO `data_rows` VALUES (13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `data_rows` VALUES (14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2);
INSERT INTO `data_rows` VALUES (15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3);
INSERT INTO `data_rows` VALUES (16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4);
INSERT INTO `data_rows` VALUES (17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `data_rows` VALUES (18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2);
INSERT INTO `data_rows` VALUES (19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3);
INSERT INTO `data_rows` VALUES (20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4);
INSERT INTO `data_rows` VALUES (21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5);
INSERT INTO `data_rows` VALUES (22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9);
INSERT INTO `data_rows` VALUES (23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `data_rows` VALUES (24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2);
INSERT INTO `data_rows` VALUES (25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3);
INSERT INTO `data_rows` VALUES (26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4);
INSERT INTO `data_rows` VALUES (27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5);
INSERT INTO `data_rows` VALUES (28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6);
INSERT INTO `data_rows` VALUES (29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7);
INSERT INTO `data_rows` VALUES (30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `data_rows` VALUES (31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2);
INSERT INTO `data_rows` VALUES (32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3);
INSERT INTO `data_rows` VALUES (33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4);
INSERT INTO `data_rows` VALUES (34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5);
INSERT INTO `data_rows` VALUES (35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6);
INSERT INTO `data_rows` VALUES (36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7);
INSERT INTO `data_rows` VALUES (37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8);
INSERT INTO `data_rows` VALUES (38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9);
INSERT INTO `data_rows` VALUES (39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10);
INSERT INTO `data_rows` VALUES (40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11);
INSERT INTO `data_rows` VALUES (41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12);
INSERT INTO `data_rows` VALUES (42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13);
INSERT INTO `data_rows` VALUES (43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14);
INSERT INTO `data_rows` VALUES (44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15);
INSERT INTO `data_rows` VALUES (45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1);
INSERT INTO `data_rows` VALUES (46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2);
INSERT INTO `data_rows` VALUES (47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3);
INSERT INTO `data_rows` VALUES (48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4);
INSERT INTO `data_rows` VALUES (49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5);
INSERT INTO `data_rows` VALUES (50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6);
INSERT INTO `data_rows` VALUES (51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7);
INSERT INTO `data_rows` VALUES (52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8);
INSERT INTO `data_rows` VALUES (53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9);
INSERT INTO `data_rows` VALUES (54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10);
INSERT INTO `data_rows` VALUES (55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11);
INSERT INTO `data_rows` VALUES (56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12);
INSERT INTO `data_rows` VALUES (74, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (75, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (76, 11, 'sub_title', 'text', 'Sub Title', 0, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (77, 11, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (78, 11, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (79, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6);
INSERT INTO `data_rows` VALUES (80, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` VALUES (81, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (82, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (83, 14, 'sub_title', 'text', 'Sub Title', 0, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (84, 14, 'content', 'text_area', 'Content', 0, 1, 1, 1, 1, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (85, 14, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (86, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6);
INSERT INTO `data_rows` VALUES (87, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` VALUES (88, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (89, 15, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (90, 15, 'nick_name', 'text', 'Nick Name', 0, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (91, 15, 'discription', 'text_area', 'Discription', 0, 1, 1, 1, 1, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (92, 15, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (93, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6);
INSERT INTO `data_rows` VALUES (94, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` VALUES (95, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (96, 16, 'discription', 'text', 'Discription', 0, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (97, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (98, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (99, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO `data_rows` VALUES (100, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (101, 18, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (102, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (103, 18, 'discription', 'text_area', 'Discription', 0, 1, 1, 1, 1, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (104, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (105, 19, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (106, 19, 'discription', 'text_area', 'Discription', 0, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (107, 19, 'imgae', 'image', 'Imgae', 0, 1, 1, 1, 1, 1, NULL, 4);
INSERT INTO `data_rows` VALUES (108, 19, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (109, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6);
INSERT INTO `data_rows` VALUES (110, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `data_types_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `data_types_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES (1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-06-10 10:10:45', '2018-06-10 10:10:45');
INSERT INTO `data_types` VALUES (2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-06-10 10:10:45', '2018-06-10 10:10:45');
INSERT INTO `data_types` VALUES (3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-06-10 10:10:45', '2018-06-10 10:10:45');
INSERT INTO `data_types` VALUES (4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `data_types` VALUES (5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `data_types` VALUES (6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `data_types` VALUES (11, 'about_us', 'about-us', 'About Us', 'About Uses', NULL, 'App\\AboutUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-10 13:24:14', '2018-06-10 13:24:14');
INSERT INTO `data_types` VALUES (14, 'aboutuses', 'aboutuses', 'Aboutus', 'Aboutuses', NULL, 'App\\AboutUs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-10 13:26:10', '2018-06-10 13:26:10');
INSERT INTO `data_types` VALUES (15, 'departments', 'departments', 'Department', 'Departments', NULL, 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-10 15:10:29', '2018-06-10 15:10:29');
INSERT INTO `data_types` VALUES (16, 'latest_work', 'latest-work', 'Latest Work', 'Latest Works', NULL, 'App\\LatestWork', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-10 15:36:19', '2018-06-10 15:36:19');
INSERT INTO `data_types` VALUES (18, 'activities', 'activities', 'Activity', 'Activities', NULL, 'App\\Activity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-11 02:23:59', '2018-06-11 02:23:59');
INSERT INTO `data_types` VALUES (19, 'labs', 'labs', 'Lab', 'Labs', NULL, 'App\\Lab', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-11 02:53:57', '2018-06-11 02:53:57');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discription` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, '理事会', '科协吉祥物', '科协的最高决策机构和核心领导机构，由经验丰富的大三学长学姐组成。主要职责是确定科协的发展方向，制定发展战略，执行人事任免权、财务监管权等，以及审核科协各项规章制度及奖惩制度，督促和协调科协各部门工作。', NULL, '2018-06-10 15:10:58', '2018-06-10 15:10:58');
INSERT INTO `departments` VALUES (2, '宣传部', '科协形象担当', '宣传部，科协的“门面担当”，所有人对科协的了解均来自于宣传部的推广，负责科协微信，QQ等网络平台的运营，包揽了科协所有视频以及广告的制作，同时参与组织策划科协的一切对外活动，是科协负责事项范围最广的一个部门。', NULL, '2018-06-10 15:11:19', '2018-06-10 15:11:19');
INSERT INTO `departments` VALUES (3, '科研部', '科协\"黑科技势力\"', '科研部？宅？闷骚？不存在的。这里有的是热心又认真的学长学姐，浓厚的学习氛围，机智幽默的日常。在这里，大家文可以学到许多自己想学的技术，武可以get到办活动所需要的相关技能，认识许多优秀的小伙伴，锻炼自身的实战能力。 PS：想为科协的官方网站贡献自己的一份力量的欢迎加入科研部哦。', NULL, '2018-06-10 15:11:50', '2018-06-10 15:11:50');
INSERT INTO `departments` VALUES (4, '项目部', '科协\"项目管家\"', '项目部，顾名思义就是掌管整个学院的项目进程。主要负责学院“大学生挑战杯”，“大学生创新创业计划”，“大学生科研基金项目”三大主要活动的立项，中期检查，报销和结题工作。加入我们，就能知晓学院顶尖大神的学术动向，提早对科研项目有所了解，有更多机会与他们交流提升自己。同时项目部作为科协连接体的存在，负责反馈老师意见、联络校级组织、与其他部门沟通、接触同学材料申报审批，是科协不可或缺的一部分。同时组建兴趣小组，培养计算机能力，拓展思维', NULL, '2018-06-10 15:12:15', '2018-06-10 15:12:15');
INSERT INTO `departments` VALUES (5, '外联部', '科协\"财务大臣\"', '在外联部，你可以学习与商家沟通的能力，学习如何进行商务筹划的能力，大胆的与商家进行面对面的交流谈判，认识更多的商家，掌控一个组织的经济命脉，而且，我们具有极强的外联能力，与新闻中心负责人有着密切的联系，我们还有一半的部长加入了辩论社，足以体现出我们沟通与谈判的能力，最后，外联部的学长学姐坐等你们来撩哦！', NULL, '2018-06-10 15:13:25', '2018-06-10 15:13:25');
INSERT INTO `departments` VALUES (6, '办公室', '科协核心部门', '科协办公室担负着科协各部门协调、沟通的重要角色。作为计算机学院科协的核心部门，我们维持着科协的正常运转，加强完善科协内部建设的学生群众性组织，并负责科协一切活动的主持人以及礼仪人员的安排与培训，监督并协助科协其他部门所有活动的举办，主办招新、科协每一次全体大会以及系列讲座“嘴巴上的科协”。办公室掌握最实用的office技能，执笔最文艺的书法文案，收集最新的资料信息，掌控科协发展的最新动向。', NULL, '2018-06-10 15:13:47', '2018-06-10 15:13:47');
INSERT INTO `departments` VALUES (7, '活动部', '科协\"实力担当\"', '活动部是一个主要负责落实各项活动的部门。比如活动前期的准备工作（场地租借，物资采购，摆摊宣传等），作为工作人员参与活动（场地布置，灯光，催场等），以及活动之后的一系列工作（材料上报等）。我们不仅有自己需要负责活动（新英，智慧之星等），还要协助其他部门办好活动。', NULL, '2018-06-10 15:14:07', '2018-06-10 15:14:07');
INSERT INTO `departments` VALUES (8, '图文中心', '科协\"美的缔造者\"', '1)图文中心，传说中“美的缔造者”，活动从不抛头露面的宁静的幕后组织，气氛十分温馨且永远为饭局里仿佛与世隔绝的沉稳的一桌。他们用PS与画笔，在海报和宣传单的DDL中自由穿梭；他们举着单反，咔嚓咔嚓记录着每场活动，是当之无愧的表情包素材大亨。图文中心追求美，追求高端也追求小清新，热切地期待着每一个热爱美的新成员的加入。 2)我们低调，不代表着平凡。 表情包，随手为之，不足为道。 宣传单，信手施为，画笔轻摇。 我们在科协深藏不漏，每一次活动却也离不开我们独搞。 有人说，我们过于沉默，因为我们总在思考。 他们不懂，我们图文的宁静，我们图文的好。 静而思动之时，漫天漫地，尽由我们主导！', NULL, '2018-06-10 15:16:00', '2018-06-10 15:20:53');

-- ----------------------------
-- Table structure for labs
-- ----------------------------
DROP TABLE IF EXISTS `labs`;
CREATE TABLE `labs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discription` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgae` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of labs
-- ----------------------------
INSERT INTO `labs` VALUES (1, '中文信息处理与自然语言理解', '课题组简介：中文信息处理与自然语言理解实验室以自然语言理解、社会计算为主要研究方向。主要的研究内容包括：语言计算（词法、句法、语义、篇章分析等），机器翻译，社会计算（情感分析、信息抽取、事件挖掘、事件预测等）。实验室紧紧围绕自然语言理解领域的发展趋势，强调原创性科学研究及应用开发研究，已成为我国自然语言理解和社会计算领域的重要研究基地和具有国际影响力的研究中心之一。', 'labs/June2018/WLZ3VvnoBNVL3UNkiZPW.jpg', 'http://nlp.suda.edu.cn', '2018-06-11 02:54:00', '2018-06-11 03:11:43');
INSERT INTO `labs` VALUES (2, '图像处理与模式分析', '课题组简介：“模式分析与图像处理”课题组以模式分析、机器学习和并行分布计算为手段，研究图像处理和计算生物学等交叉领域的目标问题。本课题组由3位教授、4位副教授等10位老师组成，含有3位博士生导师、6位硕士生导师。在近五年中，本课题组老师承接了国家自然科学基金12项、其它政府纵向项目6项、横向项目经费超过600万元。本课题组在计算机专业的顶级期刊PAMI和JMR发表论文3篇、顶级会议SIGMOD发表论文1篇、Bioinformatics、《计算机学报》等权威期刊发表论文6篇。研究成果包括：主题建模的分布式在线学习方法及其应用、蛋白质结构的计算机预测方法等。', 'labs/June2018/LUjfR69CM8LaiEf06iYv.jpg', NULL, '2018-06-11 02:55:33', '2018-06-11 02:55:33');
INSERT INTO `labs` VALUES (3, '软件形式化与自动推理', '课题组简介：软件形式化与自动推理学科方向针对国家信息化发展和重大工程应用对软件的战略需求，采用理论研究和实证研究相结合的方法，以自动推理和机器学习为基础，主要开展关于深度强化学习、智能软件形式化描述与分析、逻辑软件模型生成及校验、Deep Web搜索引擎软件等方面的研究。在此基础上建立软件及其环境构造与验证、演化与控制的方法和关键技术体系，研究软件开发工具和运行支撑平台及环境，并逐步深入到嵌入式软件和基于网络的大型应用软件中，为相关应用和工程的软件研发提供了科学支撑。', 'labs/June2018/EGAp3scL7g0FbasCHFDg.jpg', NULL, '2018-06-11 02:56:04', '2018-06-11 02:56:04');
INSERT INTO `labs` VALUES (4, '高性能计算', '课题组简介：学科组近年来围绕高性能计算及网络技术相关研究方向，特别是并行与分布式体系结构，无线网络及移动互联网，数据共享网络及网络安全，网络软件工程及协同计算、社会网络与云计算、下一代网络及高效算法等方面开展了广泛和深入的科学研究。学科组在IEEE TPDS、IEEE TIT、IEEE TVT、IEEE TMM、IEEE INFOCOM、Infor. Sci.、Comp. J.、Theor. Comput. Sci.、JPDC、J. Supercom.、《计算机学报》等国内外学术期刊和会议上发表高质量学术论文100多篇，其中被SCI收录60多篇。承担国家级、省部级和市厅级科研项目40多项，申请发明与实用新型专利30多项。', 'labs/June2018/arNDqmFAhmb6ry1mLcvA.jpg', NULL, '2018-06-11 02:56:35', '2018-06-11 02:56:35');
INSERT INTO `labs` VALUES (5, '嵌入式系统及应用', '课题组简介：嵌入式系统及应用课题组致力于嵌入式系统与物联网理论、技术方法及应用研究。2000年以来一直与恩智浦半导体合作，从事嵌入式微控制器底层驱动与应用原型设计、书籍撰写、技术服务与培训等工作。已出版著作8部、获得发明专利6项、完成科研项目30余项。现主要研究方向是图形构件化可编程逻辑控制器、互联网+智能制造技术架构、汽车电子、特殊功能3D打印机、专用功能微型无人机等。', 'labs/June2018/ETjDP3bjJlOShcNHBY0r.jpg', NULL, '2018-06-11 02:57:04', '2018-06-11 02:57:04');
INSERT INTO `labs` VALUES (6, '机器学习理论及应用', '课题组简介：本课题组以“机器学习”为研究中心和特色，研究领域涉及机器学习的理论和应用、类脑计算、大数据分析、机器视觉、群智感知等。在此基础上，与企事业单位开展了广泛的合作，研究开发了一系列应用软件和嵌入式系统。“十二五”期间，课题组抓住“李群机器学习”、 “动态模糊逻辑”等研究方向进行深入研究，取得一系列有显示度的成绩，已在国际知名学术会议与期刊上发表论文100余篇，主持国家自然科学基金重点项目1项、面上及青年项目8项。', 'labs/June2018/d1qH79f0v75vzduNKeAr.jpg', NULL, '2018-06-11 02:57:00', '2018-06-11 02:58:14');
INSERT INTO `labs` VALUES (7, '先进数据分析', '课题组简介：先进数据分析研究中心（Advanced Data Analytics Laboratory of Soochow University，简称ADA），重点从事大数据和高性能海量实时数据分析研究，专注于时空数据库、数据质量管理、数据挖掘、轨迹计算、并行及分布式系统研究、移动计算、图形挖掘、数据安全与隐私、知识发现、智能分析、云计算与信息服务等。目前主要承担包括苏州大学特聘教授科研启动金，自然科学基金委重点、面上和青年项目，江苏省自然科学基金面上项目，江苏省博士后科研基金项目，教育部博士点基金项目等十余项，在研项目总经费超过一千万。', 'labs/June2018/VqNZIt4hxHP9EyuG30Pp.jpg', NULL, '2018-06-11 02:59:00', '2018-06-11 02:59:00');

-- ----------------------------
-- Table structure for latest_works
-- ----------------------------
DROP TABLE IF EXISTS `latest_works`;
CREATE TABLE `latest_works`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `discription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of latest_works
-- ----------------------------
INSERT INTO `latest_works` VALUES (1, '科协联谊', 'latest-work/June2018/Cw84NVDJImPWTcer3YSy.jpg', '2018-06-10 15:40:42', '2018-06-10 15:40:42');
INSERT INTO `latest_works` VALUES (2, '校园闯关解谜马拉松', 'latest-work/June2018/dZ2he7NjOHQPymKJdn7N.jpg', '2018-06-10 15:41:49', '2018-06-10 15:41:49');
INSERT INTO `latest_works` VALUES (3, '科协轰趴', 'latest-work/June2018/cbAcxGZqfkZTGkt4IyCb.jpg', '2018-06-10 15:42:18', '2018-06-10 15:42:18');
INSERT INTO `latest_works` VALUES (4, '来自未来的风', 'latest-work/June2018/c9Ntvqo48JK125PBc262.jpg', '2018-06-10 15:42:48', '2018-06-10 15:42:48');
INSERT INTO `latest_works` VALUES (5, '新生英语短剧大赛', 'latest-work/June2018/tZ7vx54qXfK3KYM4QM55.jpg', '2018-06-10 15:43:18', '2018-06-10 15:43:18');
INSERT INTO `latest_works` VALUES (6, '科协大会', 'latest-work/June2018/5nEal8V8v5OsRSj3dAOv.jpg', '2018-06-10 15:43:45', '2018-06-10 15:43:45');
INSERT INTO `latest_works` VALUES (7, '校园闯关解谜马拉松', 'latest-work/June2018/IMPLIWLklXIpoZUhFgVT.jpg', '2018-06-10 15:44:06', '2018-06-10 15:44:06');
INSERT INTO `latest_works` VALUES (8, '冬至包饺子', 'latest-work/June2018/IUNKJnp622qSFjoGBMVj.jpg', '2018-06-10 15:44:20', '2018-06-10 15:44:20');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_items_menu_id_foreign`(`menu_id`) USING BTREE,
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES (1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-06-10 10:10:45', '2018-06-10 10:10:45', 'voyager.dashboard', NULL);
INSERT INTO `menu_items` VALUES (2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-06-10 10:10:45', '2018-06-10 10:10:45', 'voyager.media.index', NULL);
INSERT INTO `menu_items` VALUES (3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-06-10 10:10:45', '2018-06-10 10:10:45', 'voyager.users.index', NULL);
INSERT INTO `menu_items` VALUES (4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-06-10 10:10:45', '2018-06-10 10:10:45', 'voyager.roles.index', NULL);
INSERT INTO `menu_items` VALUES (5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-06-10 10:10:46', '2018-06-10 10:10:46', NULL, NULL);
INSERT INTO `menu_items` VALUES (6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-06-10 10:10:46', '2018-06-10 10:10:46', 'voyager.menus.index', NULL);
INSERT INTO `menu_items` VALUES (7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-06-10 10:10:46', '2018-06-10 10:10:46', 'voyager.database.index', NULL);
INSERT INTO `menu_items` VALUES (8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-06-10 10:10:46', '2018-06-10 10:10:46', 'voyager.compass.index', NULL);
INSERT INTO `menu_items` VALUES (9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-06-10 10:10:46', '2018-06-10 10:10:46', 'voyager.bread.index', NULL);
INSERT INTO `menu_items` VALUES (10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-06-10 10:10:46', '2018-06-10 10:10:46', 'voyager.settings.index', NULL);
INSERT INTO `menu_items` VALUES (11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-06-10 10:10:46', '2018-06-10 10:10:46', 'voyager.hooks', NULL);
INSERT INTO `menu_items` VALUES (12, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-06-10 10:10:56', '2018-06-10 10:10:56', 'voyager.categories.index', NULL);
INSERT INTO `menu_items` VALUES (13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-06-10 10:10:56', '2018-06-10 10:10:56', 'voyager.posts.index', NULL);
INSERT INTO `menu_items` VALUES (14, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-06-10 10:10:56', '2018-06-10 10:10:56', 'voyager.pages.index', NULL);
INSERT INTO `menu_items` VALUES (15, 1, 'About Us', '', '_self', NULL, NULL, NULL, 15, '2018-06-10 12:58:31', '2018-06-10 12:58:31', 'voyager.about-us.index', NULL);
INSERT INTO `menu_items` VALUES (18, 1, 'Departments', '', '_self', NULL, NULL, NULL, 16, '2018-06-10 15:10:29', '2018-06-10 15:10:29', 'voyager.departments.index', NULL);
INSERT INTO `menu_items` VALUES (19, 1, 'Latest Works', '', '_self', NULL, NULL, NULL, 17, '2018-06-10 15:36:19', '2018-06-10 15:36:19', 'voyager.latest-work.index', NULL);
INSERT INTO `menu_items` VALUES (20, 1, 'Activities', '', '_self', NULL, NULL, NULL, 18, '2018-06-11 02:23:59', '2018-06-11 02:23:59', 'voyager.activities.index', NULL);
INSERT INTO `menu_items` VALUES (21, 1, 'Labs', '', '_self', NULL, NULL, NULL, 19, '2018-06-11 02:53:57', '2018-06-11 02:53:57', 'voyager.labs.index', NULL);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menus_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'admin', '2018-06-10 10:10:45', '2018-06-10 10:10:45');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, '阿斯蒂芬', '123@456.com', '阿斯顿法', '阿斯顿法', '2018-06-11 13:00:13', '2018-06-11 13:00:13');
INSERT INTO `messages` VALUES (2, 'asdfasdf', 'asdfasd@sdfa', '阿斯顿法', 'asdfasd', '2018-06-11 13:00:35', '2018-06-11 13:00:35');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO `migrations` VALUES (4, '2016_01_01_000000_create_data_types_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_05_19_173453_create_menu_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_10_21_190000_create_roles_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_10_21_190000_create_settings_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_11_30_135954_create_permission_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO `migrations` VALUES (11, '2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO `migrations` VALUES (12, '2017_01_14_005015_create_translations_table', 1);
INSERT INTO `migrations` VALUES (13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO `migrations` VALUES (14, '2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO `migrations` VALUES (19, '2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (20, '2018_03_11_000000_add_user_settings', 1);
INSERT INTO `migrations` VALUES (21, '2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (22, '2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO `migrations` VALUES (23, '2016_01_01_000000_create_pages_table', 2);
INSERT INTO `migrations` VALUES (24, '2016_01_01_000000_create_posts_table', 2);
INSERT INTO `migrations` VALUES (25, '2016_02_15_204651_create_categories_table', 2);
INSERT INTO `migrations` VALUES (26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pages_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-06-10 10:10:56', '2018-06-10 10:10:56');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `permission_role_permission_id_index`(`permission_id`) USING BTREE,
  INDEX `permission_role_role_id_index`(`role_id`) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (1, 2);
INSERT INTO `permission_role` VALUES (2, 1);
INSERT INTO `permission_role` VALUES (2, 2);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (3, 2);
INSERT INTO `permission_role` VALUES (4, 1);
INSERT INTO `permission_role` VALUES (4, 2);
INSERT INTO `permission_role` VALUES (5, 1);
INSERT INTO `permission_role` VALUES (5, 2);
INSERT INTO `permission_role` VALUES (6, 1);
INSERT INTO `permission_role` VALUES (7, 1);
INSERT INTO `permission_role` VALUES (8, 1);
INSERT INTO `permission_role` VALUES (9, 1);
INSERT INTO `permission_role` VALUES (10, 1);
INSERT INTO `permission_role` VALUES (11, 1);
INSERT INTO `permission_role` VALUES (12, 1);
INSERT INTO `permission_role` VALUES (13, 1);
INSERT INTO `permission_role` VALUES (14, 1);
INSERT INTO `permission_role` VALUES (15, 1);
INSERT INTO `permission_role` VALUES (16, 1);
INSERT INTO `permission_role` VALUES (17, 1);
INSERT INTO `permission_role` VALUES (18, 1);
INSERT INTO `permission_role` VALUES (19, 1);
INSERT INTO `permission_role` VALUES (20, 1);
INSERT INTO `permission_role` VALUES (21, 1);
INSERT INTO `permission_role` VALUES (22, 1);
INSERT INTO `permission_role` VALUES (23, 1);
INSERT INTO `permission_role` VALUES (24, 1);
INSERT INTO `permission_role` VALUES (25, 1);
INSERT INTO `permission_role` VALUES (26, 1);
INSERT INTO `permission_role` VALUES (26, 2);
INSERT INTO `permission_role` VALUES (27, 1);
INSERT INTO `permission_role` VALUES (28, 1);
INSERT INTO `permission_role` VALUES (29, 1);
INSERT INTO `permission_role` VALUES (30, 1);
INSERT INTO `permission_role` VALUES (31, 1);
INSERT INTO `permission_role` VALUES (32, 1);
INSERT INTO `permission_role` VALUES (33, 1);
INSERT INTO `permission_role` VALUES (34, 1);
INSERT INTO `permission_role` VALUES (35, 1);
INSERT INTO `permission_role` VALUES (36, 1);
INSERT INTO `permission_role` VALUES (37, 1);
INSERT INTO `permission_role` VALUES (38, 1);
INSERT INTO `permission_role` VALUES (39, 1);
INSERT INTO `permission_role` VALUES (40, 1);
INSERT INTO `permission_role` VALUES (41, 1);
INSERT INTO `permission_role` VALUES (57, 1);
INSERT INTO `permission_role` VALUES (58, 1);
INSERT INTO `permission_role` VALUES (59, 1);
INSERT INTO `permission_role` VALUES (60, 1);
INSERT INTO `permission_role` VALUES (61, 1);
INSERT INTO `permission_role` VALUES (62, 1);
INSERT INTO `permission_role` VALUES (63, 1);
INSERT INTO `permission_role` VALUES (64, 1);
INSERT INTO `permission_role` VALUES (65, 1);
INSERT INTO `permission_role` VALUES (66, 1);
INSERT INTO `permission_role` VALUES (67, 1);
INSERT INTO `permission_role` VALUES (68, 1);
INSERT INTO `permission_role` VALUES (69, 1);
INSERT INTO `permission_role` VALUES (70, 1);
INSERT INTO `permission_role` VALUES (71, 1);
INSERT INTO `permission_role` VALUES (72, 1);
INSERT INTO `permission_role` VALUES (73, 1);
INSERT INTO `permission_role` VALUES (74, 1);
INSERT INTO `permission_role` VALUES (75, 1);
INSERT INTO `permission_role` VALUES (76, 1);
INSERT INTO `permission_role` VALUES (77, 1);
INSERT INTO `permission_role` VALUES (78, 1);
INSERT INTO `permission_role` VALUES (79, 1);
INSERT INTO `permission_role` VALUES (80, 1);
INSERT INTO `permission_role` VALUES (81, 1);
INSERT INTO `permission_role` VALUES (82, 1);
INSERT INTO `permission_role` VALUES (83, 1);
INSERT INTO `permission_role` VALUES (84, 1);
INSERT INTO `permission_role` VALUES (85, 1);
INSERT INTO `permission_role` VALUES (86, 1);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissions_key_index`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'browse_admin', NULL, '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (2, 'browse_bread', NULL, '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (3, 'browse_database', NULL, '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (4, 'browse_media', NULL, '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (5, 'browse_compass', NULL, '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (6, 'browse_menus', 'menus', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (7, 'read_menus', 'menus', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (8, 'edit_menus', 'menus', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (9, 'add_menus', 'menus', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (10, 'delete_menus', 'menus', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (11, 'browse_roles', 'roles', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (12, 'read_roles', 'roles', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (13, 'edit_roles', 'roles', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (14, 'add_roles', 'roles', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (15, 'delete_roles', 'roles', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (16, 'browse_users', 'users', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (17, 'read_users', 'users', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (18, 'edit_users', 'users', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (19, 'add_users', 'users', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (20, 'delete_users', 'users', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (21, 'browse_settings', 'settings', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (22, 'read_settings', 'settings', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (23, 'edit_settings', 'settings', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (24, 'add_settings', 'settings', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (25, 'delete_settings', 'settings', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (26, 'browse_hooks', NULL, '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `permissions` VALUES (27, 'browse_categories', 'categories', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (28, 'read_categories', 'categories', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (29, 'edit_categories', 'categories', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (30, 'add_categories', 'categories', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (31, 'delete_categories', 'categories', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (32, 'browse_posts', 'posts', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (33, 'read_posts', 'posts', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (34, 'edit_posts', 'posts', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (35, 'add_posts', 'posts', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (36, 'delete_posts', 'posts', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (37, 'browse_pages', 'pages', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (38, 'read_pages', 'pages', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (39, 'edit_pages', 'pages', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (40, 'add_pages', 'pages', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (41, 'delete_pages', 'pages', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `permissions` VALUES (57, 'browse_about_us', 'about_us', '2018-06-10 13:24:14', '2018-06-10 13:24:14');
INSERT INTO `permissions` VALUES (58, 'read_about_us', 'about_us', '2018-06-10 13:24:14', '2018-06-10 13:24:14');
INSERT INTO `permissions` VALUES (59, 'edit_about_us', 'about_us', '2018-06-10 13:24:14', '2018-06-10 13:24:14');
INSERT INTO `permissions` VALUES (60, 'add_about_us', 'about_us', '2018-06-10 13:24:14', '2018-06-10 13:24:14');
INSERT INTO `permissions` VALUES (61, 'delete_about_us', 'about_us', '2018-06-10 13:24:14', '2018-06-10 13:24:14');
INSERT INTO `permissions` VALUES (62, 'browse_aboutuses', 'aboutuses', '2018-06-10 13:26:10', '2018-06-10 13:26:10');
INSERT INTO `permissions` VALUES (63, 'read_aboutuses', 'aboutuses', '2018-06-10 13:26:10', '2018-06-10 13:26:10');
INSERT INTO `permissions` VALUES (64, 'edit_aboutuses', 'aboutuses', '2018-06-10 13:26:10', '2018-06-10 13:26:10');
INSERT INTO `permissions` VALUES (65, 'add_aboutuses', 'aboutuses', '2018-06-10 13:26:10', '2018-06-10 13:26:10');
INSERT INTO `permissions` VALUES (66, 'delete_aboutuses', 'aboutuses', '2018-06-10 13:26:10', '2018-06-10 13:26:10');
INSERT INTO `permissions` VALUES (67, 'browse_departments', 'departments', '2018-06-10 15:10:29', '2018-06-10 15:10:29');
INSERT INTO `permissions` VALUES (68, 'read_departments', 'departments', '2018-06-10 15:10:29', '2018-06-10 15:10:29');
INSERT INTO `permissions` VALUES (69, 'edit_departments', 'departments', '2018-06-10 15:10:29', '2018-06-10 15:10:29');
INSERT INTO `permissions` VALUES (70, 'add_departments', 'departments', '2018-06-10 15:10:29', '2018-06-10 15:10:29');
INSERT INTO `permissions` VALUES (71, 'delete_departments', 'departments', '2018-06-10 15:10:29', '2018-06-10 15:10:29');
INSERT INTO `permissions` VALUES (72, 'browse_latest_work', 'latest_work', '2018-06-10 15:36:19', '2018-06-10 15:36:19');
INSERT INTO `permissions` VALUES (73, 'read_latest_work', 'latest_work', '2018-06-10 15:36:19', '2018-06-10 15:36:19');
INSERT INTO `permissions` VALUES (74, 'edit_latest_work', 'latest_work', '2018-06-10 15:36:19', '2018-06-10 15:36:19');
INSERT INTO `permissions` VALUES (75, 'add_latest_work', 'latest_work', '2018-06-10 15:36:19', '2018-06-10 15:36:19');
INSERT INTO `permissions` VALUES (76, 'delete_latest_work', 'latest_work', '2018-06-10 15:36:19', '2018-06-10 15:36:19');
INSERT INTO `permissions` VALUES (77, 'browse_activities', 'activities', '2018-06-11 02:23:59', '2018-06-11 02:23:59');
INSERT INTO `permissions` VALUES (78, 'read_activities', 'activities', '2018-06-11 02:23:59', '2018-06-11 02:23:59');
INSERT INTO `permissions` VALUES (79, 'edit_activities', 'activities', '2018-06-11 02:23:59', '2018-06-11 02:23:59');
INSERT INTO `permissions` VALUES (80, 'add_activities', 'activities', '2018-06-11 02:23:59', '2018-06-11 02:23:59');
INSERT INTO `permissions` VALUES (81, 'delete_activities', 'activities', '2018-06-11 02:23:59', '2018-06-11 02:23:59');
INSERT INTO `permissions` VALUES (82, 'browse_labs', 'labs', '2018-06-11 02:53:57', '2018-06-11 02:53:57');
INSERT INTO `permissions` VALUES (83, 'read_labs', 'labs', '2018-06-11 02:53:57', '2018-06-11 02:53:57');
INSERT INTO `permissions` VALUES (84, 'edit_labs', 'labs', '2018-06-11 02:53:57', '2018-06-11 02:53:57');
INSERT INTO `permissions` VALUES (85, 'add_labs', 'labs', '2018-06-11 02:53:57', '2018-06-11 02:53:57');
INSERT INTO `permissions` VALUES (86, 'delete_labs', 'labs', '2018-06-11 02:53:57', '2018-06-11 02:53:57');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `posts` VALUES (2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `posts` VALUES (3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `posts` VALUES (4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-06-10 10:10:56', '2018-06-10 10:10:56');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'Administrator', '2018-06-10 10:10:46', '2018-06-10 10:10:46');
INSERT INTO `roles` VALUES (2, 'user', 'Normal User', '2018-06-10 10:10:46', '2018-06-10 10:10:46');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site');
INSERT INTO `settings` VALUES (2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site');
INSERT INTO `settings` VALUES (3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site');
INSERT INTO `settings` VALUES (4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site');
INSERT INTO `settings` VALUES (5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin');
INSERT INTO `settings` VALUES (6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin');
INSERT INTO `settings` VALUES (7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin');
INSERT INTO `settings` VALUES (8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin');
INSERT INTO `settings` VALUES (9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin');
INSERT INTO `settings` VALUES (10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique`(`table_name`, `column_name`, `foreign_key`, `locale`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES (1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `translations` VALUES (20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-06-10 10:10:57', '2018-06-10 10:10:57');
INSERT INTO `translations` VALUES (30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-06-10 10:10:57', '2018-06-10 10:10:57');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `user_roles_user_id_index`(`user_id`) USING BTREE,
  INDEX `user_roles_role_id_index`(`role_id`) USING BTREE,
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'users/default.png',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$b5uC5D0/i6jX9uxzY9kcdOW25ToxvYEOZ0l2eaur14LLT3ZE25Tba', 'SagBkE6unJgB5MTCNBfrVGTQ16WuX3sFjffH5XFhAqSv0Q0vIURqz4rnP058', NULL, '2018-06-10 10:10:56', '2018-06-10 10:10:56');
INSERT INTO `users` VALUES (2, 1, 'tianhaoo', '360726539@qq.com', 'users/default.png', '$2y$10$dLRaTgb.1vdYdjYXTugWB.oeqFjPnqVV1r/W7Ee/93YWYMF6BZV92', 'KyzBWnaUxulhkE1jQxn6817w7hwQz26kmO6YkLdm3lDTDWqH2rlredKK6vmR', '{\"locale\":\"en\"}', '2018-06-10 11:13:42', '2018-06-10 11:14:28');
INSERT INTO `users` VALUES (3, 2, 'abc', '123@456.com', 'users/default.png', '$2y$10$JK2Xctd3hXGywACFjha7k.Q7thYSvlSzlNXXZzwJHp94xy6/aIvR2', '7BVXjKUKqvB8xq751j2wDS1vb4RuJ8JEdgJ15AbxtZfjpPDfgW8oRMLLMk7K', NULL, '2018-06-10 12:14:00', '2018-06-10 12:14:00');
INSERT INTO `users` VALUES (4, 2, 'asdf', '12@34.com', 'users/default.png', '$2y$10$5eifFp0pQDCoPfm78A6vVOGnRAQ/Jd9Lc1VT6PvpLkw70h4.XUF6a', 'GoNelqwLVcuOpl06LG7xFNgbVWrjN7YtSzvO3LHJ8nkV0YUSXdCQjSns0zwN', NULL, '2018-06-10 12:14:29', '2018-06-10 12:14:29');
INSERT INTO `users` VALUES (5, 2, 'asdfg', '12@345.com', 'users/default.png', '$2y$10$g7Nbyj.wygawp.ZPwt3D6uAIZ/dKWkv88DMWzWX/EQIAnPUDZyYCi', NULL, NULL, '2018-06-10 12:34:28', '2018-06-10 12:34:28');
INSERT INTO `users` VALUES (6, 2, 'asfgji', '1234@5678.com', 'users/default.png', '$2y$10$YAhtpV14yxRok6A0c0R0X.tLwKNptXto6h9h2MHV6DSTM4lr9NIvu', 'QdNWs3fCOBrFOksyIEW7D7gp3XsQsoa9qVg7prKYeTgKvLWUnQMMTeqknObh', NULL, '2018-06-10 12:38:19', '2018-06-10 12:38:19');
INSERT INTO `users` VALUES (7, 2, 'asdfsadg', '12@34546576.com', 'users/default.png', '$2y$10$0vK1AzHqAbPCUOTGFz5vn.YpQCKb3YyKxmLAuDqeBCJnaVKZ8lIiC', '0iPoMtER4S0UtSGX1ERTuw4x3r2lhC7GIFdFJ29h5Bwv4SrMGL5BkEsgf8ov', NULL, '2018-06-10 14:58:11', '2018-06-10 14:58:11');

SET FOREIGN_KEY_CHECKS = 1;
