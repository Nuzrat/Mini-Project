-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 05:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_mgt_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `asset_id` int(11) NOT NULL,
  `asset` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `expired_date` varchar(50) NOT NULL,
  `Depreciation` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`asset_id`, `asset`, `purchase_date`, `expired_date`, `Depreciation`, `status`) VALUES
(12, 'watch', '2022-11-15', '2022-11-24', '60', 'pending'),
(13, 'laptop', '2022-11-10', '2022-11-17', '40', 'pending'),
(14, 'computer', '2022-11-11', '2022-11-18', '40', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `assign_table`
--

CREATE TABLE `assign_table` (
  `assign_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_table`
--

INSERT INTO `assign_table` (`assign_id`, `emp_id`, `dept_id`, `asset_id`) VALUES
(4, 4, 4, 13);

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
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add asset', 7, 'add_asset'),
(26, 'Can change asset', 7, 'change_asset'),
(27, 'Can delete asset', 7, 'delete_asset'),
(28, 'Can view asset', 7, 'view_asset'),
(29, 'Can add changed asset', 8, 'add_changedasset'),
(30, 'Can change changed asset', 8, 'change_changedasset'),
(31, 'Can delete changed asset', 8, 'delete_changedasset'),
(32, 'Can view changed asset', 8, 'view_changedasset'),
(33, 'Can add complaints', 9, 'add_complaints'),
(34, 'Can change complaints', 9, 'change_complaints'),
(35, 'Can delete complaints', 9, 'delete_complaints'),
(36, 'Can view complaints', 9, 'view_complaints'),
(37, 'Can add it administrator', 10, 'add_itadministrator'),
(38, 'Can change it administrator', 10, 'change_itadministrator'),
(39, 'Can delete it administrator', 10, 'delete_itadministrator'),
(40, 'Can view it administrator', 10, 'view_itadministrator'),
(41, 'Can add it supervisor', 11, 'add_itsupervisor'),
(42, 'Can change it supervisor', 11, 'change_itsupervisor'),
(43, 'Can delete it supervisor', 11, 'delete_itsupervisor'),
(44, 'Can view it supervisor', 11, 'view_itsupervisor'),
(45, 'Can add login', 12, 'add_login'),
(46, 'Can change login', 12, 'change_login'),
(47, 'Can delete login', 12, 'delete_login'),
(48, 'Can view login', 12, 'view_login');

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
-- Table structure for table `changed_asset`
--

CREATE TABLE `changed_asset` (
  `chanded_asst_id` int(11) NOT NULL,
  `Asset` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `replay` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `ITAdministrator_ID` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaint_id`, `complaint`, `replay`, `status`, `ITAdministrator_ID`, `asset_id`) VALUES
(8, 'ddd', 'pending', 'pending', 2, 0),
(9, 'not  ok', 'pending', 'pending', 3, 0),
(10, 'bad service', 'pending', 'pending', 2, 0),
(11, 'bad service', 'pending', 'pending', 2, 12),
(13, 'not ok', 'fine', 'pending', 2, 12),
(14, 'bad', 'pending', 'pending', 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `department`) VALUES
(1, 'kgf'),
(2, 'kmp'),
(3, 'jfc'),
(4, 'computer');

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
(1, 'admin', 'logentry'),
(7, 'asset', 'asset'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'changed_asset', 'changedasset'),
(9, 'complaints', 'complaints'),
(5, 'contenttypes', 'contenttype'),
(10, 'it_administrator', 'itadministrator'),
(11, 'it_supervisor', 'itsupervisor'),
(12, 'login', 'login'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2022-11-07 09:59:40.451689'),
(2, 'auth', '0001_initial', '2022-11-07 10:00:10.859995'),
(3, 'admin', '0001_initial', '2022-11-07 10:00:22.598988'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-07 10:00:22.912965'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-07 10:00:23.084741'),
(6, 'asset', '0001_initial', '2022-11-07 10:00:23.381544'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-11-07 10:00:27.378518'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-11-07 10:00:31.691865'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-11-07 10:00:32.597709'),
(10, 'auth', '0004_alter_user_username_opts', '2022-11-07 10:00:32.691477'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-11-07 10:00:34.691457'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-11-07 10:00:34.862798'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-07 10:00:34.940907'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-11-07 10:00:35.222093'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-07 10:00:35.487656'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-11-07 10:00:35.831322'),
(17, 'auth', '0011_update_proxy_permissions', '2022-11-07 10:00:36.721736'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-07 10:00:37.299727'),
(19, 'changed_asset', '0001_initial', '2022-11-07 10:00:37.362727'),
(20, 'complaints', '0001_initial', '2022-11-07 10:00:37.442002'),
(21, 'it_administrator', '0001_initial', '2022-11-07 10:00:38.051331'),
(22, 'it_supervisor', '0001_initial', '2022-11-07 10:00:38.316796'),
(23, 'login', '0001_initial', '2022-11-07 10:00:38.535492'),
(24, 'sessions', '0001_initial', '2022-11-07 10:00:41.972289');

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
('a98u8ehyr8feuq8r0st7xe92estt860q', 'eyJ1aWQiOjJ9:1otoOE:8jLdFxtyWSn6KrfwrBEln60M436hU4tY7pIZXfysUgw', '2022-11-26 11:09:34.970164'),
('lzvgzthc85jnwpjj3m071o5i3nqdmf7d', 'eyJ1aWQiOjJ9:1ou4cF:ZJ_pmXRr0aq3lUtaC4OmBGeIrp7vD_5TFOc_8FuwFek', '2022-11-27 04:29:07.414888');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `age`, `address`, `phone`) VALUES
(1, 'radhika', 22, 'kozhikode', '7558229613'),
(2, 'abcd', 25, 'kozhikode', '7558229613'),
(3, 'anurag', 21, 'kozhikode', '9086454343'),
(4, 'amrutha', 20, 'SREESHYLAM, Valiya Parambil, Mayanad P O', '7034324217');

-- --------------------------------------------------------

--
-- Table structure for table `it_administrator`
--

CREATE TABLE `it_administrator` (
  `ITAdministrator_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it_administrator`
--

INSERT INTO `it_administrator` (`ITAdministrator_ID`, `username`, `password`, `Name`, `Age`, `Gender`, `Address`, `status`) VALUES
(1, 'ap', 'ap', 'anjali', '23', 'female', 'kozhikode', 'approved'),
(2, 'an', 'an', 'anju', '23', 'female', 'calicut', 'rejected'),
(3, 'ra', 'ra', 'radhika', '22', 'female', 'kozhikode', 'approved'),
(4, 'dd', 'dd', 'Ayesha', '22', 'male', 'dfdg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `it_supervisor`
--

CREATE TABLE `it_supervisor` (
  `ITSupervisor_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `it_supervisor`
--

INSERT INTO `it_supervisor` (`ITSupervisor_ID`, `username`, `password`, `Name`, `Age`, `Gender`, `Address`, `status`) VALUES
(1, 'aaa', 'aaa', 'abcd', '23', 'male', 'kozhikode', 'approved'),
(2, 'shy', 'shy', 'shythya', '23', 'female', 'calicut', 'rejected'),
(3, 'ee', 'ee', 'Anushka', '22', 'female', 'dfdg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'an', 'an', 'itadministrator', 2),
(2, 'shy', 'shy', 'itsupervisor', 2),
(3, 'admin', 'admin', 'admin', 0),
(4, 'ra', 'ra', 'itadministrator', 3),
(5, 'dd', 'dd', 'itadministrator', 4),
(6, 'ee', 'ee', 'itsupervisor', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `assign_table`
--
ALTER TABLE `assign_table`
  ADD PRIMARY KEY (`assign_id`);

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
-- Indexes for table `changed_asset`
--
ALTER TABLE `changed_asset`
  ADD PRIMARY KEY (`chanded_asst_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

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
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `it_administrator`
--
ALTER TABLE `it_administrator`
  ADD PRIMARY KEY (`ITAdministrator_ID`);

--
-- Indexes for table `it_supervisor`
--
ALTER TABLE `it_supervisor`
  ADD PRIMARY KEY (`ITSupervisor_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `assign_table`
--
ALTER TABLE `assign_table`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `changed_asset`
--
ALTER TABLE `changed_asset`
  MODIFY `chanded_asst_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `it_administrator`
--
ALTER TABLE `it_administrator`
  MODIFY `ITAdministrator_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `it_supervisor`
--
ALTER TABLE `it_supervisor`
  MODIFY `ITSupervisor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
