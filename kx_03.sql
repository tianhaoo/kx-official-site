-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-02-08 13:04:36
-- 服务器版本： 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kx`
--

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `activity_content` text,
  `activity_start_time` int(11) DEFAULT NULL,
  `activity_end_time` int(11) DEFAULT NULL,
  `activity_department_id` int(11) NOT NULL,
  `activity_create_user_id` int(11) NOT NULL,
  `activity_create_time` int(11) DEFAULT NULL,
  `activity_update_time` int(11) DEFAULT NULL,
  `activity_delete_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `activity`
--

INSERT INTO `activity` (`id`, `activity_name`, `activity_content`, `activity_start_time`, `activity_end_time`, `activity_department_id`, `activity_create_user_id`, `activity_create_time`, `activity_update_time`, `activity_delete_time`) VALUES
(1, '活动1', '活动1活动1', NULL, NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `department_create_time` int(11) DEFAULT NULL,
  `department_update_time` int(11) DEFAULT NULL,
  `department_delete_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `department`
--

INSERT INTO `department` (`id`, `department_name`, `department_create_time`, `department_update_time`, `department_delete_time`) VALUES
(1, '理事会', NULL, NULL, NULL),
(2, '办公室', NULL, NULL, NULL),
(3, '项目部', NULL, NULL, NULL),
(4, '科研部', NULL, NULL, NULL),
(5, '图文中心', NULL, NULL, NULL),
(6, '宣传部', NULL, NULL, NULL),
(7, '活动部', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_priority` double NOT NULL,
  `role_create_time` bigint(20) DEFAULT NULL,
  `role_update_time` bigint(20) DEFAULT NULL,
  `role_delete_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `role_name`, `role_priority`, `role_create_time`, `role_update_time`, `role_delete_time`) VALUES
(1, '超级管理员', 1, NULL, NULL, NULL),
(2, '理事长', 3, NULL, NULL, NULL),
(3, '部长', 5, NULL, NULL, NULL),
(4, '干事', 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `syslog`
--

CREATE TABLE `syslog` (
  `id` int(11) NOT NULL,
  `syslog_level` int(11) NOT NULL,
  `syslog_description` text NOT NULL,
  `syslog_user_id` int(11) NOT NULL,
  `syslog_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_account` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `user_department_id` int(11) DEFAULT NULL,
  `user_avatar_name` varchar(255) DEFAULT NULL,
  `user_create_time` bigint(20) DEFAULT NULL,
  `user_update_time` bigint(20) DEFAULT NULL,
  `user_delete_time` bigint(20) DEFAULT NULL,
  `user_is_visible` int(11) NOT NULL DEFAULT '1',
  `user_latest_login_time` bigint(20) DEFAULT NULL,
  `user_latest_login_ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user_account`, `user_password`, `user_name`, `user_role_id`, `user_department_id`, `user_avatar_name`, `user_create_time`, `user_update_time`, `user_delete_time`, `user_is_visible`, `user_latest_login_time`, `user_latest_login_ip`) VALUES
(1, '1', '$2y$10$UAnHs0XrqZvRJBARI3FCcO3xVLR3T5xdja3N2Rc1ewgFW/NaNMv.i', '超级管理员', 1, 1, 'img.jpg', NULL, NULL, NULL, 1, 1486523266, '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syslog`
--
ALTER TABLE `syslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `syslog`
--
ALTER TABLE `syslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
