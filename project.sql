-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 09:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add usersdata', 1, 'add_usersdata'),
(2, 'Can change usersdata', 1, 'change_usersdata'),
(3, 'Can delete usersdata', 1, 'delete_usersdata'),
(4, 'Can view usersdata', 1, 'view_usersdata'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$WRkDMHCI4vb2dStesABhzM$Gb9rqWlc+OaoREbMppMwSuWkwAduxOmt+zK8fr0LSd4=', '2022-02-14 20:18:26.719396', 1, 'rabeena', '', '', 'rabeena@gmail.com', 1, 1, '2022-02-14 17:56:57.356901'),
(2, 'pbkdf2_sha256$320000$nnbvGGpUnCg4bygt7af0gp$7H/KWwH3xHNosodg/EPRc3CDtjHpUEgBzDUPM9PaW3o=', '2022-02-14 19:24:55.319719', 0, 'dhanwant_01', 'Suraj', 'Ram', 'surajram@gmail.com', 0, 1, '2022-02-14 19:04:44.474852'),
(3, 'pbkdf2_sha256$320000$5N4Gtzr2QvU33waIQjQDvx$h9w57KKO6dKRyxxxutsqm0eVXBP+VUJuOEGG29WffyA=', NULL, 0, 'welcome', 'Suraj', 'Ram', 'surajram@gmail.com', 0, 1, '2022-02-14 19:12:51.558900'),
(4, 'pbkdf2_sha256$320000$smrH74BjiOahKvt1eSe5mh$2qgaRGZKmSnulmGLwPhGqEh7s5ly7bYim5QEyW8P7W4=', NULL, 0, '18113027', 'Suraj', 'Ram', 'surajram@gmail.com', 0, 1, '2022-02-14 19:13:39.624735'),
(5, 'pbkdf2_sha256$320000$UXsvXRcAnniIWYIAxe7Zwz$Ndou3XLKbrHHYVUn45/4d0otakEARe1oDup79OKj/XU=', NULL, 0, 'Dhanwantpal_singh', 'Suraj', 'Ram', 'surajram@gmail.com', 0, 1, '2022-02-14 19:14:32.201816'),
(6, 'pbkdf2_sha256$320000$noxlCakKLyD7qnEFIGLGoc$A73vRJQwqsJqeYEdgjISX8iN3bni422NBwCNYxXBXD8=', NULL, 0, 'Dhanwantpal_singh1', 'Suraj', 'Ram', 'surajram@gmail.com', 0, 1, '2022-02-14 19:15:33.347867');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-14 18:02:11.202505', '1', 'Usersdata object (1)', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(1, 'proj', 'usersdata'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-14 17:51:24.792192'),
(2, 'auth', '0001_initial', '2022-02-14 17:51:32.993187'),
(3, 'admin', '0001_initial', '2022-02-14 17:51:34.385371'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-14 17:51:34.484323'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-14 17:51:34.584091'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-14 17:51:35.205420'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-14 17:51:36.176170'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-14 17:51:36.278951'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-14 17:51:36.313435'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-14 17:51:36.731918'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-14 17:51:36.881877'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-14 17:51:36.950873'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-14 17:51:37.037873'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-14 17:51:37.121313'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-14 17:51:37.213794'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-14 17:51:37.247437'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-14 17:51:37.319902'),
(18, 'proj', '0001_initial', '2022-02-14 17:51:37.554848'),
(19, 'sessions', '0001_initial', '2022-02-14 17:51:38.559975'),
(20, 'proj', '0002_usersdata_userid', '2022-02-14 17:54:17.024840'),
(21, 'proj', '0003_usersdata_desc_usersdata_title', '2022-02-14 20:12:31.798125'),
(22, 'proj', '0004_alter_usersdata_userid', '2022-02-14 20:17:59.827519'),
(23, 'proj', '0005_remove_usersdata_userid', '2022-02-14 20:19:20.324071');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('v4n70t1ejm4x3pelu62bsn4vgtyww92p', '.eJxVjMsOwiAQAP-FsyFAeenRu9_Q7LKLVA0kpT0Z_92Q9KDXmcm8xQz7Vua98zovJC5Ci9MvQ0hPrkPQA-q9ydTqti4oRyIP2-WtEb-uR_s3KNDL2BIjuwxMKZ7BJYqBrGIMHpJ1xnkkRMxZMUwYdWLOk3PGGqsVB0_i8wUz-zl4:1nJhnm:Nux7Ogd0KzYzvCBUzqZ1lNcpVSo7v4umEEdjrteeSxA', '2022-02-28 20:18:26.871991');

-- --------------------------------------------------------

--
-- Table structure for table `proj_usersdata`
--

CREATE TABLE `proj_usersdata` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proj_usersdata`
--

INSERT INTO `proj_usersdata` (`id`, `username`, `file`, `desc`, `title`) VALUES
(1, 'dhanwant_01', 'video/kendel.pdf', '0', '0'),
(2, '', 'Doc3.docx', '', 'deugdeuyd'),
(3, '', 'Doc2.docx', '', 'eweugfyuyyd'),
(4, '', 'Doc2.docx', 'ddewiweuh', 'bewfiuwehf'),
(5, '', 'Doc3.docx', 'bwefbweufweefuihwefbwefhweb', 'dbwiefiwuefh'),
(6, '', 'Doc3.docx', 'cbewffbgwufbweuygbewyfgbweuy', 'ebwyfgwefy'),
(7, '', '', 'cbewffbgwufbweuygbewyfgbweuy', 'fewyfgery'),
(8, '', '', 'cbewffbgwufbweuygbewyfgbweuy', 'ceuygwey'),
(9, '', '', 'cbewffbgwufbweuygbewyfgbweuy', 'dd'),
(10, '', '', 'ded', 'deudyge');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `proj_usersdata`
--
ALTER TABLE `proj_usersdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `proj_usersdata`
--
ALTER TABLE `proj_usersdata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
