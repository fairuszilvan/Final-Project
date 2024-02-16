-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 07:09 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mgtasset`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_code`
--

CREATE TABLE `account_code` (
  `id_account_code` int(11) NOT NULL,
  `id_account_code_parent` int(11) NOT NULL,
  `account_code` varchar(100) NOT NULL,
  `account_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_code`
--

INSERT INTO `account_code` (`id_account_code`, `id_account_code_parent`, `account_code`, `account_name`) VALUES
(1, 0, '1', 'AKTIVA'),
(11, 1, '1.1', 'AKTIVA TETAP'),
(12, 1, '1.2', 'AKTIVA BERGERAK');

-- --------------------------------------------------------

--
-- Table structure for table `app_entity_config`
--

CREATE TABLE `app_entity_config` (
  `id_app_entity_config` int(11) NOT NULL,
  `entity` varchar(150) NOT NULL,
  `setting_name` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_entity_config`
--

INSERT INTO `app_entity_config` (`id_app_entity_config`, `entity`, `setting_name`, `value`) VALUES
(1, 'asset_master', 'DISPLAY_ACCOUNT', 'false'),
(2, 'asset_master', 'DISPLAY_STANDARD_LAIN', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `app_field_config`
--

CREATE TABLE `app_field_config` (
  `id_app_field_config` int(11) NOT NULL,
  `classname` varchar(250) NOT NULL,
  `varian_group` varchar(150) NOT NULL,
  `fieldname` varchar(250) NOT NULL,
  `label` varchar(250) NOT NULL,
  `no_order` int(11) NOT NULL,
  `is_visible` int(1) NOT NULL,
  `is_required` int(1) NOT NULL,
  `is_unique` int(11) DEFAULT 0,
  `is_safe` int(11) DEFAULT 0,
  `is_readonly` int(1) NOT NULL DEFAULT 0,
  `type_field` int(11) DEFAULT 0,
  `max_field` int(4) NOT NULL,
  `default_value` varchar(250) DEFAULT NULL,
  `hide_in_grid` int(1) NOT NULL,
  `pattern` varchar(250) DEFAULT NULL,
  `image_extensions` varchar(250) NOT NULL,
  `image_max_size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_field_config`
--

INSERT INTO `app_field_config` (`id_app_field_config`, `classname`, `varian_group`, `fieldname`, `label`, `no_order`, `is_visible`, `is_required`, `is_unique`, `is_safe`, `is_readonly`, `type_field`, `max_field`, `default_value`, `hide_in_grid`, `pattern`, `image_extensions`, `image_max_size`) VALUES
(1, 'asset_master', '', 'asset_name', 'Nama', 1, 1, 1, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(2, 'asset_master', '', 'asset_code', 'Kode Master Barang', 2, 1, 1, 0, 0, 0, 1, 40, NULL, 0, NULL, '', ''),
(3, 'asset_master', '', 'id_type_asset1', 'Jenis Aset', 3, 1, 1, 0, 0, 0, 2, 12, NULL, 0, NULL, '', ''),
(6, 'asset_master', '', 'id_type_asset2', 'Type Asset 2', 0, 0, 0, 0, 0, 0, 2, 12, NULL, 0, NULL, '', ''),
(7, 'asset_master', '', 'attribute1', 'TEST', 0, 0, 0, 0, 0, 0, 2, 12, NULL, 0, NULL, '', ''),
(20, 'type_asset_item1', '', 'type_asset_item', 'Embuh', 0, 1, 1, 0, 0, 0, 1, 0, NULL, 0, NULL, '', ''),
(21, 'type_asset_item1', '', 'description', 'description', 0, 1, 0, 0, 0, 0, 1, 0, NULL, 0, NULL, '', ''),
(22, 'type_asset_item1', '', 'is_active', 'is active', 0, 1, 1, 0, 0, 0, 2, 0, NULL, 0, NULL, '', ''),
(23, 'kelurahan', '', 'id_kecamatan', 'Kecamatan', 0, 1, 1, 0, 0, 0, 2, 0, NULL, 0, NULL, '', ''),
(24, 'kelurahan', '', 'nama_kelurahan', 'nama kelurahan', 0, 1, 1, 0, 0, 0, 1, 0, NULL, 0, NULL, '', ''),
(25, 'kelurahan', '', 'kodepos', 'kodepos', 0, 0, 0, 0, 0, 0, 2, 0, NULL, 0, NULL, '', ''),
(26, 'asset_item_location', '', 'id_asset_master', 'id asset master', 1, 1, 1, 0, 0, 0, 2, 20, NULL, 0, NULL, '', ''),
(27, 'asset_item_location', '', 'latitude', 'latitude', 2, 1, 1, 0, 0, 0, 1, 60, NULL, 0, NULL, '', ''),
(28, 'asset_item_location', '', 'longitude', 'longitude', 3, 1, 1, 0, 0, 0, 1, 60, NULL, 0, NULL, '', ''),
(29, 'asset_item_location', '', 'address', 'address', 4, 1, 1, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(30, 'asset_item_location', '', 'desa', 'desa', 5, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(31, 'asset_item_location', '', 'kecamatan', 'kecamatan', 6, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(32, 'asset_item_location', '', 'kabupaten', 'kabupaten', 7, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(33, 'asset_item_location', '', 'provinsi', 'provinsi', 8, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(34, 'asset_item_location', '', 'kodepos', 'kodepos', 9, 1, 1, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(35, 'asset_item_location', '', 'id_kabupaten', 'id kabupaten', 10, 1, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(36, 'asset_item_location', '', 'id_propinsi', 'id propinsi', 11, 1, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(37, 'asset_item_location', '', 'id_kecamatan', 'id kecamatan', 12, 1, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(38, 'asset_item_location', '', 'id_kelurahan', 'id kelurahan', 13, 1, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(39, 'asset_item_location', '', 'batas_utara', 'batas utara', 14, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(40, 'asset_item_location', '', 'batas_selatan', 'batas selatan', 15, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(41, 'asset_item_location', '', 'batas_timur', 'batas timur', 16, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(42, 'asset_item_location', '', 'batas_barat', 'batas barat', 17, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(43, 'asset_item_location', '', 'luas', 'luas', 18, 1, 1, 0, 0, 0, 4, 18, NULL, 0, NULL, '', ''),
(44, 'asset_item_location', '', 'keterangan1', 'keterangan1', 19, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(45, 'asset_item_location', '', 'keterangan2', 'keterangan2', 20, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(46, 'asset_item_location', '', 'keterangan3', 'keterangan3', 21, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(47, 'asset_item', '', 'id_asset_master', 'Jenis Barang', 1, 1, 0, 0, 0, 0, 2, 20, NULL, 0, NULL, '', ''),
(48, 'asset_item', '', 'number1', 'Nomor Inventaris', 2, 1, 1, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(49, 'asset_item', '', 'number2', 'number2', 3, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(50, 'asset_item', '', 'number3', 'number3', 4, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(51, 'asset_item', '', 'picture1', 'Foto', 5, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(52, 'asset_item', '', 'picture2', 'picture2', 6, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(53, 'asset_item', '', 'picture3', 'picture3', 7, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(54, 'asset_item', '', 'picture4', 'picture4', 8, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(55, 'asset_item', '', 'picture5', 'picture5', 9, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(56, 'asset_item', '', 'caption_picture1', 'caption picture1', 10, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(57, 'asset_item', '', 'caption_picture2', 'caption picture2', 11, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(58, 'asset_item', '', 'caption_picture3', 'caption picture3', 12, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(59, 'asset_item', '', 'caption_picture4', 'caption picture4', 13, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(60, 'asset_item', '', 'caption_picture5', 'caption picture5', 14, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(61, 'asset_item', '', 'id_asset_received', 'id asset received', 15, 0, 0, 0, 0, 0, 2, 20, NULL, 0, NULL, '', ''),
(62, 'asset_item', '', 'id_asset_item_location', 'id asset item location', 16, 0, 0, 0, 0, 0, 2, 20, NULL, 0, NULL, '', ''),
(63, 'asset_item', '', 'id_type_asset_item1', 'id type asset item1', 17, 0, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(64, 'asset_item', '', 'id_type_asset_item2', 'id type asset item2', 18, 0, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(65, 'asset_item', '', 'id_type_asset_item3', 'id type asset item3', 19, 0, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(66, 'asset_item', '', 'id_type_asset_item4', 'id type asset item4', 20, 0, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(67, 'asset_item', '', 'id_type_asset_item5', 'id type asset item5', 21, 0, 0, 0, 0, 0, 2, 11, NULL, 0, NULL, '', ''),
(68, 'asset_item', '', 'file1', 'file1', 22, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(69, 'asset_item', '', 'file2', 'file2', 23, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(70, 'asset_item', '', 'file3', 'file3', 24, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(71, 'asset_item', '', 'label1', 'NO.INVENTARIS', 1, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(72, 'asset_item', '', 'label2', 'Barcode number', 26, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(73, 'asset_item', '', 'label3', 'label3', 27, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(74, 'asset_item', '', 'label4', 'label4', 28, 0, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', ''),
(75, 'asset_item', '', 'label5', 'Keterangan', 29, 1, 0, 0, 0, 0, 1, 250, NULL, 0, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_setting`
--

CREATE TABLE `app_setting` (
  `id_app_setting` int(11) NOT NULL,
  `setting_name` varchar(250) NOT NULL,
  `is_image` int(1) NOT NULL,
  `value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_setting`
--

INSERT INTO `app_setting` (`id_app_setting`, `setting_name`, `is_image`, `value`) VALUES
(1, 'APP-NAME', 0, 'Train Asset Management'),
(2, 'APP-NAME-SINGKAT', 0, 'APLIK'),
(3, 'APP-NAME-SINGKATAN', 0, 'InTands'),
(4, 'Logo', 1, 'Logo.png'),
(5, 'Icon', 1, 'Icon.jpg'),
(6, 'ADDRESS', 0, 'Alamat Perusahaan'),
(7, 'Copyright', 0, 'Copyright {TAHUN} PUPR. All Right Reserved'),
(8, 'MAIN-BACKGROUND', 1, 'MAIN-BACKGROUND.jpg'),
(100, 'ID-MAIN-ASSET', 0, 'LzloRzRtWjh0S3d3ZitTMko0UENYQT09');

-- --------------------------------------------------------

--
-- Table structure for table `app_vocabulary`
--

CREATE TABLE `app_vocabulary` (
  `id_app_vocabulary` bigint(20) NOT NULL,
  `master_vocab` varchar(150) NOT NULL,
  `vocab_lang1` varchar(250) NOT NULL,
  `vocab_lang2` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_vocabulary`
--

INSERT INTO `app_vocabulary` (`id_app_vocabulary`, `master_vocab`, `vocab_lang1`, `vocab_lang2`) VALUES
(1, 'Type Asset Item 1', 'Kode Aset', ''),
(2, 'Type Asset Item 2', 'Status SIMAK', NULL),
(3, 'Data Aset', 'Data Aset Tanah', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_code`
--

CREATE TABLE `asset_code` (
  `id_asset_code` bigint(20) NOT NULL,
  `id_parent_asset_code` bigint(20) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_dismantle_order`
--

CREATE TABLE `asset_dismantle_order` (
  `id_asset_dismantle_order` bigint(20) NOT NULL,
  `id_pegawai` bigint(20) NOT NULL,
  `type_order` set('INSTALLATION','UNINSTALLATION') NOT NULL,
  `id_job_class` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_number` varchar(150) NOT NULL,
  `order_increment` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_customer` bigint(20) NOT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `created_ip_address` varchar(250) DEFAULT NULL,
  `id_mst_status_dismantle_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset_dismantle_order`
--

INSERT INTO `asset_dismantle_order` (`id_asset_dismantle_order`, `id_pegawai`, `type_order`, `id_job_class`, `order_date`, `order_number`, `order_increment`, `year`, `id_asset_item`, `id_customer`, `notes`, `created_date`, `created_id_user`, `created_ip_address`, `id_mst_status_dismantle_order`) VALUES
(1, 2, 'INSTALLATION', 1, '2022-06-22', '', NULL, 231, 1, 1, 'sfsdfsdf', NULL, NULL, NULL, 0),
(2, 2, 'UNINSTALLATION', 1, '2022-06-22', '', NULL, NULL, 1, 1, '', NULL, NULL, NULL, 0),
(3, 2, 'UNINSTALLATION', 1, '2022-06-22', '', NULL, NULL, 1, 1, 'sdfgh', NULL, NULL, NULL, 0),
(4, 3, 'UNINSTALLATION', 1, '2022-06-22', '', NULL, NULL, 1, 1, '12312312', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `asset_dismantle_received`
--

CREATE TABLE `asset_dismantle_received` (
  `id_asset_dismantle_received` bigint(20) NOT NULL,
  `id_asset_dismantle_order` bigint(20) NOT NULL,
  `id_warehouse` bigint(20) NOT NULL,
  `received_date` date NOT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `is_approved` int(1) NOT NULL DEFAULT 0,
  `approval_user_id` bigint(20) DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `approval_ip_address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asset_item`
--

CREATE TABLE `asset_item` (
  `id_asset_item` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `number1` varchar(250) DEFAULT NULL,
  `number2` varchar(250) DEFAULT NULL,
  `number3` varchar(250) DEFAULT NULL,
  `picture1` varchar(250) DEFAULT NULL,
  `picture2` varchar(250) DEFAULT NULL,
  `picture3` varchar(250) DEFAULT NULL,
  `picture4` varchar(250) NOT NULL,
  `picture5` varchar(250) NOT NULL,
  `caption_picture1` varchar(250) DEFAULT NULL,
  `caption_picture2` varchar(250) DEFAULT NULL,
  `caption_picture3` varchar(250) DEFAULT NULL,
  `caption_picture4` varchar(250) DEFAULT NULL,
  `caption_picture5` varchar(250) DEFAULT NULL,
  `id_asset_received` bigint(20) NOT NULL,
  `id_asset_item_location` bigint(20) NOT NULL,
  `id_type_asset_item1` int(11) NOT NULL,
  `id_type_asset_item2` int(11) NOT NULL,
  `id_type_asset_item3` int(11) NOT NULL,
  `id_type_asset_item4` int(11) NOT NULL,
  `id_type_asset_item5` int(11) NOT NULL,
  `label1` varchar(50) NOT NULL,
  `label2` varchar(50) NOT NULL,
  `label3` varchar(50) NOT NULL,
  `label4` varchar(50) NOT NULL,
  `label5` varchar(50) NOT NULL,
  `file1` varchar(50) NOT NULL,
  `file2` varchar(50) NOT NULL,
  `file3` varchar(50) NOT NULL,
  `status_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item`
--

INSERT INTO `asset_item` (`id_asset_item`, `id_asset_master`, `number1`, `number2`, `number3`, `picture1`, `picture2`, `picture3`, `picture4`, `picture5`, `caption_picture1`, `caption_picture2`, `caption_picture3`, `caption_picture4`, `caption_picture5`, `id_asset_received`, `id_asset_item_location`, `id_type_asset_item1`, `id_type_asset_item2`, `id_type_asset_item3`, `id_type_asset_item4`, `id_type_asset_item5`, `label1`, `label2`, `label3`, `label4`, `label5`, `file1`, `file2`, `file3`, `status_active`) VALUES
(1, 1, '23', '1232', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 10, 100, 0, 0, 0, '', '', '', '', '', '', '', '', 1),
(2, 1, '8', '2312122', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 2, 2, 10, 200, 0, 0, 0, '', '', '', '', '', '', '', '', 1),
(7, 1, 'M11-231', '12312', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_condition_log`
--

CREATE TABLE `asset_item_condition_log` (
  `id_asset_item_condition_log` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_mst_status_condition` int(11) NOT NULL,
  `condition_log_date` date NOT NULL,
  `condition_log_datetime` datetime NOT NULL,
  `condition_log_notes` text DEFAULT NULL,
  `reported_by` varchar(250) DEFAULT NULL,
  `reported_user_id` int(11) DEFAULT NULL,
  `reported_ip_address` varchar(250) DEFAULT NULL,
  `photo1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_condition_log`
--

INSERT INTO `asset_item_condition_log` (`id_asset_item_condition_log`, `id_asset_item`, `id_mst_status_condition`, `condition_log_date`, `condition_log_datetime`, `condition_log_notes`, `reported_by`, `reported_user_id`, `reported_ip_address`, `photo1`) VALUES
(1, 1, 1, '0000-00-00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_deletion`
--

CREATE TABLE `asset_item_deletion` (
  `id_asset_item_deletion` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `status_deletion` set('destroy','acquisition','grant') NOT NULL,
  `execution_date` date NOT NULL,
  `execution_month` int(2) NOT NULL,
  `execution_year` int(4) NOT NULL,
  `execution_id_user` int(11) DEFAULT NULL,
  `execution_user` varchar(250) DEFAULT NULL,
  `income` double(20,2) DEFAULT 0.00,
  `id_mst_status_condition` int(11) NOT NULL,
  `condition_when_deletion` varchar(250) DEFAULT NULL,
  `acquisition_by` varchar(250) DEFAULT NULL,
  `grant_to` varchar(250) DEFAULT NULL,
  `photo1` varchar(250) NOT NULL,
  `photo2` varchar(250) NOT NULL,
  `notes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_deletion`
--

INSERT INTO `asset_item_deletion` (`id_asset_item_deletion`, `id_asset_item`, `status_deletion`, `execution_date`, `execution_month`, `execution_year`, `execution_id_user`, `execution_user`, `income`, `id_mst_status_condition`, `condition_when_deletion`, `acquisition_by`, `grant_to`, `photo1`, `photo2`, `notes`) VALUES
(1, 1, 'destroy', '2020-02-11', 0, 0, NULL, NULL, 0.00, 0, NULL, NULL, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_distribution_current`
--

CREATE TABLE `asset_item_distribution_current` (
  `id_asset_item_distribution_current` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `distribute_to` set('EMPLOYEE','DEPARTEMEN','NOT SET') NOT NULL DEFAULT 'NOT SET',
  `id_pegawai` int(11) DEFAULT NULL,
  `id_departement` bigint(20) DEFAULT NULL,
  `id_asset_item_location` bigint(20) DEFAULT NULL,
  `status` set('ACTIVE','IN-ACTIVE') NOT NULL,
  `start_date` date DEFAULT NULL,
  `start_month` int(2) DEFAULT NULL,
  `start_year` int(4) DEFAULT NULL,
  `duration` varchar(5) DEFAULT NULL,
  `handover_by` varchar(250) DEFAULT NULL,
  `handover_condition_notes` varchar(250) DEFAULT NULL,
  `id_mst_status_condition` int(11) NOT NULL,
  `handover_photos1` varchar(250) DEFAULT NULL,
  `handover_photos2` varchar(250) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_distribution_current`
--

INSERT INTO `asset_item_distribution_current` (`id_asset_item_distribution_current`, `id_asset_item`, `distribute_to`, `id_pegawai`, `id_departement`, `id_asset_item_location`, `status`, `start_date`, `start_month`, `start_year`, `duration`, `handover_by`, `handover_condition_notes`, `id_mst_status_condition`, `handover_photos1`, `handover_photos2`, `notes`) VALUES
(1, 1, 'NOT SET', 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(2, 137, 'DEPARTEMEN', NULL, 1, 2, 'ACTIVE', '0000-00-00', NULL, NULL, 'bulan', 'Pak Budi', 'Barang masih ok lah', 20, '', '', 'Barang-barang bagus'),
(3, 146, 'EMPLOYEE', 1, NULL, 4, 'ACTIVE', '0000-00-00', NULL, NULL, '20', 'Pak Budi', 'Barang masih ok lah', 10, '', '', 'Supaya Bisa '),
(4, 137, 'EMPLOYEE', 1, NULL, 2, 'ACTIVE', '0000-00-00', NULL, NULL, 'bulan', '', '', 20, '', '', ''),
(5, 137, 'EMPLOYEE', 1, NULL, 2, 'ACTIVE', '2020-02-27', 2, 2020, '20', '', '', 20, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_distribution_log`
--

CREATE TABLE `asset_item_distribution_log` (
  `id_asset_item_distribution_log` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `distribute_to` set('USER','DEPARTEMEN','NOT SET') NOT NULL DEFAULT 'NOT SET',
  `id_pegawai` int(11) DEFAULT NULL,
  `from_id_pegawai` int(11) NOT NULL,
  `id_departement` bigint(20) DEFAULT NULL,
  `id_asset_item_location` bigint(20) DEFAULT NULL,
  `status` set('ACTIVE','IN-ACTIVE') NOT NULL,
  `start_date` date DEFAULT NULL,
  `start_month` int(2) DEFAULT NULL,
  `start_year` int(4) DEFAULT NULL,
  `status_distribution` int(1) NOT NULL,
  `end_date` date DEFAULT NULL,
  `end_month` int(2) DEFAULT NULL,
  `end_year` int(4) DEFAULT NULL,
  `duration` varchar(5) DEFAULT NULL,
  `handover_by` varchar(250) DEFAULT NULL,
  `handover_condition_notes` varchar(250) DEFAULT NULL,
  `id_mst_status_condition` int(11) NOT NULL,
  `handover_photos1` varchar(250) DEFAULT NULL,
  `handover_photos2` varchar(250) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_incident`
--

CREATE TABLE `asset_item_incident` (
  `id_asset_item_incident` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `incident_date` date NOT NULL,
  `incident_datetime` datetime NOT NULL,
  `incident_notes` text DEFAULT NULL,
  `reported_by` varchar(250) DEFAULT NULL,
  `reported_user_id` int(11) DEFAULT NULL,
  `reported_ip_address` varchar(250) DEFAULT NULL,
  `photo1` int(11) DEFAULT NULL,
  `photo2` int(11) DEFAULT NULL,
  `photo3` int(11) DEFAULT NULL,
  `photo4` int(11) DEFAULT NULL,
  `photo5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_incident`
--

INSERT INTO `asset_item_incident` (`id_asset_item_incident`, `id_asset_item`, `incident_date`, `incident_datetime`, `incident_notes`, `reported_by`, `reported_user_id`, `reported_ip_address`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`) VALUES
(1, 1, '0000-00-00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2020-01-08', '0000-00-00 00:00:00', 'Kursinya dudukannya patah', 'Bambang Darsono', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 1, '2020-01-08', '0000-00-00 00:00:00', 'www', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 118, '2020-02-21', '0000-00-00 00:00:00', 'Ini rusak apanya ya?', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 102, '2020-02-21', '0000-00-00 00:00:00', 'Sampa sadasd', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 118, '2020-02-21', '0000-00-00 00:00:00', 'Proyektornya rusak lampunya', 'Riksya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 136, '2020-02-21', '0000-00-00 00:00:00', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 151, '2020-03-05', '0000-00-00 00:00:00', 'hancur', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 139, '2020-03-04', '0000-00-00 00:00:00', 'Rusak bagian bumper', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 139, '2020-03-04', '0000-00-00 00:00:00', 'Rusak bagian bumper', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_location`
--

CREATE TABLE `asset_item_location` (
  `id_asset_item_location` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `latitude` varchar(60) NOT NULL,
  `longitude` varchar(60) NOT NULL,
  `address` varchar(250) NOT NULL,
  `desa` varchar(250) DEFAULT NULL,
  `kecamatan` varchar(250) DEFAULT NULL,
  `kabupaten` varchar(250) DEFAULT NULL,
  `provinsi` varchar(250) DEFAULT NULL,
  `kodepos` varchar(250) NOT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `id_propinsi` int(11) DEFAULT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  `id_kelurahan` int(11) DEFAULT NULL,
  `batas_utara` varchar(250) DEFAULT NULL,
  `batas_selatan` varchar(250) DEFAULT NULL,
  `batas_timur` varchar(250) DEFAULT NULL,
  `batas_barat` varchar(250) DEFAULT NULL,
  `luas` double(18,3) NOT NULL,
  `keterangan1` varchar(250) DEFAULT NULL,
  `keterangan2` varchar(250) DEFAULT NULL,
  `keterangan3` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ini khusus untuk aset diam seperti tanah, gedung';

--
-- Dumping data for table `asset_item_location`
--

INSERT INTO `asset_item_location` (`id_asset_item_location`, `id_asset_master`, `latitude`, `longitude`, `address`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `kodepos`, `id_kabupaten`, `id_propinsi`, `id_kecamatan`, `id_kelurahan`, `batas_utara`, `batas_selatan`, `batas_timur`, `batas_barat`, `luas`, `keterangan1`, `keterangan2`, `keterangan3`) VALUES
(1, 1, '-7.975293', '110.923327', 'Ds Baturetno, Baturetno, Kb Wonogiri', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'Gn. Wd. Wonogiri', '', '', '', 132000.000, '', NULL, NULL),
(2, 1, '-7.936381', '110.90587', 'Ds Pulung, Baturetno, Wonogiri', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 'Gn. Wd. Wonogiri', '', '', '', 0.000, 'Bukti Milik saya', NULL, NULL),
(3, 2, 'ds', 's', 's', NULL, NULL, NULL, NULL, 'ss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, NULL, NULL),
(4, 1, '123', '3', 'Banjarnegara', NULL, NULL, NULL, NULL, '3123', 1113, 36, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, NULL, NULL),
(5, 1, 'd', 'd', 'df', NULL, NULL, NULL, NULL, '', 1101, 11, NULL, NULL, NULL, NULL, NULL, NULL, 0.000, NULL, NULL, NULL),
(6, 1, '89,821', '90sa', 'Bandung raya', NULL, NULL, NULL, NULL, '', 1116, NULL, NULL, NULL, 'Utara Jaya', 'Selatan Paling Ujung', 'Timur ', 'barat', 0.000, NULL, NULL, NULL),
(7, 1, '54', '56', 'df', NULL, NULL, NULL, NULL, '', 1102, 13, NULL, NULL, '', '', '', '', 0.000, NULL, NULL, NULL),
(8, 1, 'south', 'east', '', NULL, NULL, NULL, NULL, '', 1111, NULL, NULL, NULL, 'Embuh', 'Nyoh', 'Batas Timur', 'Batas Barat', 0.000, NULL, NULL, NULL),
(9, 1, 'd', 'd', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', 0.000, NULL, NULL, NULL),
(10, 3, 'Ini Baru Loh', 'Ini lebih Baru', '', NULL, NULL, NULL, NULL, '', 1115, NULL, NULL, NULL, 'u', 's', 't', 'b', 0.000, NULL, NULL, NULL),
(11, 1, 's', 't', '', NULL, NULL, NULL, NULL, '', 1111, NULL, NULL, NULL, 'u', 's', 't', 'b', 0.000, '', NULL, NULL),
(12, 1, 'd', '12', '', NULL, NULL, NULL, NULL, '', 1116, NULL, NULL, NULL, 'u', 's', 'Timur ', 'barat', 0.000, 'Bukti Milik', NULL, NULL),
(13, 1, '12.33', '43.1232', '', NULL, NULL, NULL, NULL, '', 1101, NULL, 1, 1, '', '', '', '', 0.000, 'YA', NULL, NULL),
(14, 1, '123', '231', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', '', 12.000, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_maintenance`
--

CREATE TABLE `asset_item_maintenance` (
  `id_asset_item_maintenance` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_asset_master_criteria_maintenance` bigint(20) DEFAULT NULL,
  `last_primer_value` double(20,4) DEFAULT NULL,
  `maintenance_date` date NOT NULL,
  `id_vendor` int(11) DEFAULT NULL,
  `carried_to_vendor_by` varchar(250) DEFAULT NULL,
  `estimated_day` int(11) NOT NULL,
  `status_maintenance` int(11) NOT NULL,
  `maintenance_finish_date` date NOT NULL,
  `maintenance_cost` double(16,2) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `received_user` varchar(250) DEFAULT NULL,
  `maintenance_info` varchar(250) NOT NULL,
  `sparepart_changes_info` varchar(250) DEFAULT NULL,
  `last_condition_report` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_repair`
--

CREATE TABLE `asset_item_repair` (
  `id_asset_item_repair` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_asset_item_incident` bigint(20) DEFAULT NULL,
  `repair_date` date NOT NULL,
  `id_vendor` int(11) DEFAULT NULL,
  `carried_to_vendor_by` varchar(250) DEFAULT NULL,
  `estimated_day` int(11) NOT NULL,
  `status_repair` int(11) NOT NULL,
  `repair_finish_date` date NOT NULL,
  `repair_cost` double(16,2) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `received_user` varchar(250) DEFAULT NULL,
  `repair_info` varchar(250) NOT NULL,
  `sparepart_changes_info` varchar(250) DEFAULT NULL,
  `last_condition_report` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_repair`
--

INSERT INTO `asset_item_repair` (`id_asset_item_repair`, `id_asset_item`, `id_asset_item_incident`, `repair_date`, `id_vendor`, `carried_to_vendor_by`, `estimated_day`, `status_repair`, `repair_finish_date`, `repair_cost`, `received_date`, `received_user`, `repair_info`, `sparepart_changes_info`, `last_condition_report`) VALUES
(1, 1, NULL, '0000-00-00', NULL, NULL, 0, 0, '0000-00-00', NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_tracking_device`
--

CREATE TABLE `asset_item_tracking_device` (
  `id_asset_item_tracking_device` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_device` bigint(20) NOT NULL,
  `installed_date` date DEFAULT NULL,
  `installed_by` varchar(150) DEFAULT NULL,
  `status_active` int(1) NOT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_tracking_device`
--

INSERT INTO `asset_item_tracking_device` (`id_asset_item_tracking_device`, `id_asset_item`, `id_device`, `installed_date`, `installed_by`, `status_active`, `notes`) VALUES
(1, 0, 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_tracking_device_log`
--

CREATE TABLE `asset_item_tracking_device_log` (
  `id_asset_item_tracking_device_log` bigint(20) NOT NULL,
  `id_asset_item_tracking_device` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_device` bigint(20) NOT NULL,
  `installed_date` date DEFAULT NULL,
  `installed_by` varchar(150) DEFAULT NULL,
  `status_active` int(1) NOT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_item_tracking_log`
--

CREATE TABLE `asset_item_tracking_log` (
  `id_asset_item_tracking_log` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_device_tracking` bigint(20) NOT NULL,
  `log_date` date NOT NULL,
  `log_datetime` datetime NOT NULL,
  `device_logtime` datetime DEFAULT NULL,
  `longitude` varchar(250) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `full_message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_item_tracking_log`
--

INSERT INTO `asset_item_tracking_log` (`id_asset_item_tracking_log`, `id_asset_item`, `id_device_tracking`, `log_date`, `log_datetime`, `device_logtime`, `longitude`, `latitude`, `full_message`) VALUES
(1, 0, 0, '0000-00-00', '0000-00-00 00:00:00', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master`
--

CREATE TABLE `asset_master` (
  `id_asset_master` bigint(20) NOT NULL,
  `asset_name` varchar(250) NOT NULL,
  `id_asset_code` bigint(20) DEFAULT NULL,
  `asset_code` varchar(150) NOT NULL,
  `id_account_code` int(11) DEFAULT NULL,
  `id_mst_accrual` int(11) DEFAULT NULL,
  `id_type_asset1` int(11) DEFAULT NULL,
  `id_type_asset2` int(11) DEFAULT NULL,
  `id_type_asset3` int(11) DEFAULT NULL,
  `id_type_asset4` int(11) DEFAULT NULL,
  `id_type_asset5` int(11) DEFAULT NULL,
  `attribute1` varchar(250) DEFAULT NULL,
  `attribute2` varchar(250) DEFAULT NULL,
  `attribute3` varchar(250) DEFAULT NULL,
  `attribute4` varchar(250) DEFAULT NULL,
  `attribute5` varchar(250) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `account_umur_economic_age` bigint(20) DEFAULT NULL,
  `account_residual_value` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master`
--

INSERT INTO `asset_master` (`id_asset_master`, `asset_name`, `id_asset_code`, `asset_code`, `id_account_code`, `id_mst_accrual`, `id_type_asset1`, `id_type_asset2`, `id_type_asset3`, `id_type_asset4`, `id_type_asset5`, `attribute1`, `attribute2`, `attribute3`, `attribute4`, `attribute5`, `deskripsi`, `account_umur_economic_age`, `account_residual_value`) VALUES
(1, 'Modem', 1, '2.11.1', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Modem bla bla', NULL, NULL),
(2, 'STB', NULL, '2.11.2', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ONT', NULL, '2.11.3', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Modem Lagi', NULL, '0122', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8127132112asdasda', NULL, NULL),
(25, 'KRL', NULL, '2.11.1', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'werw', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master_criteria_maintenance`
--

CREATE TABLE `asset_master_criteria_maintenance` (
  `id_asset_master_criteria_maintenance` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `criteria` varchar(200) NOT NULL,
  `type_criteria` int(11) NOT NULL,
  `periodic_value` double NOT NULL,
  `metric` int(11) NOT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master_criteria_maintenance`
--

INSERT INTO `asset_master_criteria_maintenance` (`id_asset_master_criteria_maintenance`, `id_asset_master`, `criteria`, `type_criteria`, `periodic_value`, `metric`, `notes`) VALUES
(1, 11, '1', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master_field_config`
--

CREATE TABLE `asset_master_field_config` (
  `id_asset_master_field_config` int(11) NOT NULL,
  `fieldname` varchar(250) NOT NULL,
  `label` varchar(250) NOT NULL,
  `is_visible` int(1) NOT NULL,
  `is_required` int(1) NOT NULL,
  `type_field` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master_field_config`
--

INSERT INTO `asset_master_field_config` (`id_asset_master_field_config`, `fieldname`, `label`, `is_visible`, `is_required`, `type_field`) VALUES
(1, 'ss', 'ss', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master_location`
--

CREATE TABLE `asset_master_location` (
  `id_asset_master_location` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `latitude` varchar(60) NOT NULL,
  `longitude` varchar(60) NOT NULL,
  `address` varchar(250) NOT NULL,
  `desa` varchar(250) DEFAULT NULL,
  `kecamatan` varchar(250) DEFAULT NULL,
  `kabupaten` varchar(250) DEFAULT NULL,
  `provinsi` varchar(250) DEFAULT NULL,
  `kodepos` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ini khusus untuk aset diam seperti tanah, gedung';

-- --------------------------------------------------------

--
-- Table structure for table `asset_master_map_year`
--

CREATE TABLE `asset_master_map_year` (
  `id_asset_master_map_year` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `year` int(4) NOT NULL,
  `current_count` bigint(20) NOT NULL,
  `total_need` bigint(20) NOT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `updated_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master_map_year`
--

INSERT INTO `asset_master_map_year` (`id_asset_master_map_year`, `id_asset_master`, `year`, `current_count`, `total_need`, `updated_date`, `updated_user`, `updated_ip_address`) VALUES
(1, 11, 1, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master_request`
--

CREATE TABLE `asset_master_request` (
  `id_asset_master_request` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `request_date` date NOT NULL,
  `request_datetime` datetime NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `request_notes` text DEFAULT NULL,
  `requested_by` varchar(250) DEFAULT NULL,
  `requested_user_id` int(11) DEFAULT NULL,
  `requested_ip_address` varchar(250) DEFAULT NULL,
  `approved_status` int(2) NOT NULL,
  `approved_id_user` int(11) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `approved_datetime` datetime DEFAULT NULL,
  `approved_ipaddress` varchar(64) DEFAULT NULL,
  `approved_notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master_request`
--

INSERT INTO `asset_master_request` (`id_asset_master_request`, `id_asset_master`, `request_date`, `request_datetime`, `quantity`, `request_notes`, `requested_by`, `requested_user_id`, `requested_ip_address`, `approved_status`, `approved_id_user`, `approved_date`, `approved_datetime`, `approved_ipaddress`, `approved_notes`) VALUES
(1, 111, '2019-11-07', '0000-00-00 00:00:00', NULL, 'Mantap lah', 'Andrian', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(2, 10, '2020-01-01', '0000-00-00 00:00:00', NULL, 'Sampoerna', '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(3, 11, '2020-01-15', '0000-00-00 00:00:00', NULL, 'Belikan dengan merk yang paling bagus', 'Andrian Mutu', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(4, 10, '2020-02-25', '0000-00-00 00:00:00', 12, 'Dibuat lebih keren dulu ya', 'Andrian Mutu', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(5, 10, '2020-02-18', '0000-00-00 00:00:00', 12, 'Sudah bagus', 'Direquest oleh Seseorang yang hebat', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master_structure`
--

CREATE TABLE `asset_master_structure` (
  `id_asset_master_structure` bigint(20) NOT NULL,
  `id_asset_master_parent` bigint(20) NOT NULL,
  `id_asset_master_child` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master_structure`
--

INSERT INTO `asset_master_structure` (`id_asset_master_structure`, `id_asset_master_parent`, `id_asset_master_child`) VALUES
(110, 1, 10),
(111, 1, 11),
(112, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `asset_received`
--

CREATE TABLE `asset_received` (
  `id_asset_received` bigint(20) NOT NULL,
  `id_asset_master` bigint(20) NOT NULL,
  `number1` varchar(150) DEFAULT NULL,
  `number2` varchar(150) DEFAULT NULL,
  `number3` varchar(150) DEFAULT NULL,
  `received_date` date NOT NULL,
  `received_month` int(3) NOT NULL,
  `received_year` int(4) NOT NULL,
  `price_received` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `id_status_received` int(11) NOT NULL,
  `notes1` varchar(250) DEFAULT NULL,
  `notes2` varchar(250) DEFAULT NULL,
  `notes3` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_received`
--

INSERT INTO `asset_received` (`id_asset_received`, `id_asset_master`, `number1`, `number2`, `number3`, `received_date`, `received_month`, `received_year`, `price_received`, `quantity`, `id_status_received`, `notes1`, `notes2`, `notes3`) VALUES
(1, 1, '', '', '', '2020-01-22', 0, 1981, 3432000, 0, 1, 'PJT-1', NULL, NULL),
(2, 1, NULL, NULL, NULL, '0000-00-00', 0, 0, 0, 0, 1, 'PJT-1', NULL, NULL),
(3, 1, NULL, NULL, NULL, '0000-00-00', 0, 2019, 90000, 0, 2, NULL, NULL, NULL),
(4, 1, NULL, NULL, NULL, '0000-00-00', 0, 2016, 8901020, 0, 1, 'JPT', NULL, NULL),
(5, 1, NULL, NULL, NULL, '0000-00-00', 0, 2019, 90000, 0, 1, 's', NULL, NULL),
(6, 1, NULL, NULL, NULL, '0000-00-00', 0, 2019, 90000, 0, 1, 'ss', NULL, NULL),
(7, 1, NULL, NULL, NULL, '0000-00-00', 0, 2019, 1241, 0, 2, 's', NULL, NULL),
(8, 3, NULL, NULL, NULL, '0000-00-00', 0, 1998, 890000, 0, 1, 'PJT-1', NULL, NULL),
(9, 1, NULL, NULL, NULL, '0000-00-00', 0, 2019, 12890000, 0, 1, '', NULL, NULL),
(10, 1, NULL, NULL, NULL, '0000-00-00', 0, 2016, 890000, 0, 1, 'JPT', NULL, NULL),
(11, 1, NULL, NULL, NULL, '0000-00-00', 0, 123, 34, 0, 1, '23', NULL, NULL),
(12, 1, NULL, NULL, NULL, '0000-00-00', 0, 123, 342, 0, 1, '', NULL, NULL),
(13, 1, '', '', '', '2020-02-27', 0, 1, 890000, 20, 1, NULL, NULL, NULL),
(14, 1, '', '', '', '2020-02-27', 0, 1, 890000, 20, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_received_to_item`
--

CREATE TABLE `asset_received_to_item` (
  `id_asset_received_to_item` bigint(20) NOT NULL,
  `id_asset_received` bigint(20) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `created_user` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_ip_address` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_received_to_item`
--

INSERT INTO `asset_received_to_item` (`id_asset_received_to_item`, `id_asset_received`, `id_asset_item`, `created_user`, `created_date`, `created_ip_address`) VALUES
(1, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1542014079),
('admin', '36', 1565786619),
('admin', '37', 1565787233),
('admin', '7', 1552641965),
('engineer', '38', 1655873078),
('engineer-supervisor', '39', 1655873184),
('member', '13', 1563241503),
('member', '14', 1547712959),
('member', '15', 1547712959),
('member', '16', 1563241503),
('member', '18', 1547712959),
('member', '32', 1565784712),
('member', '33', 1565785037),
('member', '38', 1565820068);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/account-code/*', 2, NULL, NULL, NULL, 1582599472, 1582599472),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1552641503, 1552641503),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1552641510, 1552641510),
('/admin/default/*', 2, NULL, NULL, NULL, 1552641513, 1552641513),
('/admin/default/index', 2, NULL, NULL, NULL, 1552641513, 1552641513),
('/admin/permission/*', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/create', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/index', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/update', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/permission/view', 2, NULL, NULL, NULL, 1552641517, 1552641517),
('/admin/role/*', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/assign', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/create', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/delete', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/index', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/remove', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/update', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/role/view', 2, NULL, NULL, NULL, 1552641520, 1552641520),
('/admin/route/*', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/assign', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/create', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/index', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/route/remove', 2, NULL, NULL, NULL, 1552641523, 1552641523),
('/admin/rule/*', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/create', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/index', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/update', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/rule/view', 2, NULL, NULL, NULL, 1552641527, 1552641527),
('/admin/user/delete', 2, NULL, NULL, NULL, 1552641538, 1552641538),
('/admin/user/index', 2, NULL, NULL, NULL, 1552641538, 1552641538),
('/admin/user/view', 2, NULL, NULL, NULL, 1552641538, 1552641538),
('/app-field-config/*', 2, NULL, NULL, NULL, 1573554003, 1573554003),
('/app-field-config/create', 2, NULL, NULL, NULL, 1573554003, 1573554003),
('/app-field-config/delete', 2, NULL, NULL, NULL, 1573554003, 1573554003),
('/app-field-config/index', 2, NULL, NULL, NULL, 1573554003, 1573554003),
('/app-field-config/update', 2, NULL, NULL, NULL, 1573554003, 1573554003),
('/app-field-config/view', 2, NULL, NULL, NULL, 1573554003, 1573554003),
('/app-setting/*', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/app-setting/create', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/app-setting/delete', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/app-setting/index', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/app-setting/update', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/app-setting/view', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/app-vocabulary/*', 2, NULL, NULL, NULL, 1574669422, 1574669422),
('/app-vocabulary/create', 2, NULL, NULL, NULL, 1574669422, 1574669422),
('/app-vocabulary/delete', 2, NULL, NULL, NULL, 1574669422, 1574669422),
('/app-vocabulary/index', 2, NULL, NULL, NULL, 1574669422, 1574669422),
('/app-vocabulary/update', 2, NULL, NULL, NULL, 1574669422, 1574669422),
('/app-vocabulary/view', 2, NULL, NULL, NULL, 1574669422, 1574669422),
('/asset-code/*', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/asset-code/create', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/asset-code/delete', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/asset-code/index', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/asset-code/update', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/asset-code/view', 2, NULL, NULL, NULL, 1571279315, 1571279315),
('/asset-dismantle-order-done/*', 2, NULL, NULL, NULL, 1655873975, 1655873975),
('/asset-dismantle-order/*', 2, NULL, NULL, NULL, 1655870460, 1655870460),
('/asset-in-asset/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-item-app/*', 2, NULL, NULL, NULL, 1574924630, 1574924630),
('/asset-item-app/create', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/delete', 2, NULL, NULL, NULL, 1574924630, 1574924630),
('/asset-item-app/download-file', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/gen-pdf', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/index', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/kecamatan', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/kelurahan', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/list', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/list-search', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/update', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/update-asset', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/upload-file', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/upload-file-search', 2, NULL, NULL, NULL, 1574924630, 1574924630),
('/asset-item-app/upload-file1', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/upload-image', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/view', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-app/view-detail', 2, NULL, NULL, NULL, 1574924629, 1574924629),
('/asset-item-deletion/*', 2, NULL, NULL, NULL, 1582005269, 1582005269),
('/asset-item-distribution-current/*', 2, NULL, NULL, NULL, 1582005203, 1582005203),
('/asset-item-distribution-log/*', 2, NULL, NULL, NULL, 1582005167, 1582005167),
('/asset-item-incident/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-item-location/*', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item-location/create', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item-location/delete', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item-location/index', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item-location/kecamatan', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item-location/kelurahan', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item-location/lists', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item-location/update', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item-location/view', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item-location/view-map', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item-main/*', 2, NULL, NULL, NULL, 1650524503, 1650524503),
('/asset-item-maintenance/*', 2, NULL, NULL, NULL, 1582004855, 1582004855),
('/asset-item-repair/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-item-tracking-device-log/*', 2, NULL, NULL, NULL, 1582257912, 1582257912),
('/asset-item-tracking-device/*', 2, NULL, NULL, NULL, 1582005596, 1582005596),
('/asset-item/*', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item/create', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item/delete', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item/download-file', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/gen-pdf', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/index', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item/kecamatan', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/kelurahan', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/list', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/list-search', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/update', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item/update-asset', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/upload-file', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/upload-file-search', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/upload-file1', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/upload-image', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-item/view', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-item/view-detail', 2, NULL, NULL, NULL, 1573609747, 1573609747),
('/asset-master-criteria-maintenance/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-master-field-config/*', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-field-config/create', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-field-config/delete', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-field-config/index', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-field-config/update', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-field-config/view', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-location/*', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-master-location/create', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-master-location/delete', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-master-location/index', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-location/update', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-master-location/view', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master-main/*', 2, NULL, NULL, NULL, 1650532241, 1650532241),
('/asset-master-map-year/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-master-request/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-master-structure/*', 2, NULL, NULL, NULL, 1542013422, 1548749426),
('/asset-master/*', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master/create', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master/delete', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master/index', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master/update', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-master/view', 2, NULL, NULL, NULL, 1571279316, 1571279316),
('/asset-received/*', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-received/create', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-received/delete', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-received/index', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-received/update', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/asset-received/view', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/auth-role-name/*', 2, NULL, NULL, NULL, 1655872809, 1655872809),
('/conditional-asset-item/*', 2, NULL, NULL, NULL, NULL, NULL),
('/cpanel-leftmenu/*', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/create', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/delete', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/index', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/update', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/cpanel-leftmenu/view', 2, NULL, NULL, NULL, 1552641574, 1552641574),
('/customer/*', 2, NULL, NULL, NULL, 1654665292, 1654665292),
('/dashboard/*', 2, NULL, NULL, NULL, 1552641577, 1552641577),
('/dashboard/index', 2, NULL, NULL, NULL, 1569294058, 1569294058),
('/dashboard/main', 2, NULL, NULL, NULL, 1552641577, 1552641577),
('/departement/*', 2, NULL, NULL, NULL, 1582249762, 1582249762),
('/evaluation/*', 2, NULL, NULL, NULL, 1582188142, 1582188142),
('/gii/*', 2, NULL, NULL, NULL, 1552641560, 1552641560),
('/hrm-pegawai/*', 2, NULL, NULL, NULL, 1552641579, 1552641579),
('/hrm-pegawai/create', 2, NULL, NULL, NULL, 1552641579, 1552641579),
('/hrm-pegawai/delete', 2, NULL, NULL, NULL, 1552641579, 1552641579),
('/hrm-pegawai/index', 2, NULL, NULL, NULL, 1552641579, 1552641579),
('/hrm-pegawai/update', 2, NULL, NULL, NULL, 1552641579, 1552641579),
('/hrm-pegawai/view', 2, NULL, NULL, NULL, 1552641579, 1552641579),
('/kabupaten/*', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kabupaten/create', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kabupaten/delete', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kabupaten/index', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kabupaten/update', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kabupaten/view', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kamus-petunjuk/*', 2, NULL, NULL, NULL, 1565760399, 1565760399),
('/kamus-petunjuk/create', 2, NULL, NULL, NULL, 1565760399, 1565760399),
('/kamus-petunjuk/delete', 2, NULL, NULL, NULL, 1565760399, 1565760399),
('/kamus-petunjuk/index', 2, NULL, NULL, NULL, 1565760399, 1565760399),
('/kamus-petunjuk/update', 2, NULL, NULL, NULL, 1565760399, 1565760399),
('/kamus-petunjuk/view', 2, NULL, NULL, NULL, 1565760399, 1565760399),
('/kecamatan/*', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kecamatan/create', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kecamatan/delete', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kecamatan/index', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kecamatan/update', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kecamatan/view', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kelurahan/*', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kelurahan/create', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kelurahan/delete', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kelurahan/index', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kelurahan/update', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/kelurahan/view', 2, NULL, NULL, NULL, 1571279317, 1571279317),
('/laporan/*', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/bulanan', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/captcha', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/error', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/harian', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/laporan/scan', 2, NULL, NULL, NULL, 1552641588, 1552641588),
('/map-maker/*', 2, NULL, NULL, NULL, 1575340767, 1575340767),
('/market-place/*', 2, NULL, NULL, NULL, 1566904898, 1566904898),
('/market-place/create', 2, NULL, NULL, NULL, 1566904898, 1566904898),
('/market-place/delete', 2, NULL, NULL, NULL, 1566904898, 1566904898),
('/market-place/index', 2, NULL, NULL, NULL, 1566904898, 1566904898),
('/market-place/update', 2, NULL, NULL, NULL, 1566904898, 1566904898),
('/market-place/view', 2, NULL, NULL, NULL, 1566904898, 1566904898),
('/mst-status-received/*', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/mst-status-received/create', 2, NULL, NULL, NULL, 1571279305, 1571279305),
('/mst-status-received/delete', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/mst-status-received/index', 2, NULL, NULL, NULL, 1571279305, 1571279305),
('/mst-status-received/update', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/mst-status-received/view', 2, NULL, NULL, NULL, 1571279305, 1571279305),
('/perusahaan/*', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/create', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/delete', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/index', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/update', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/perusahaan/view', 2, NULL, NULL, NULL, 1552641592, 1552641592),
('/product-marketplace/*', 2, NULL, NULL, NULL, 1566904715, 1566904715),
('/product-marketplace/create', 2, NULL, NULL, NULL, 1566904715, 1566904715),
('/product-marketplace/delete', 2, NULL, NULL, NULL, 1566904715, 1566904715),
('/product-marketplace/index', 2, NULL, NULL, NULL, 1566904715, 1566904715),
('/product-marketplace/update', 2, NULL, NULL, NULL, 1566904715, 1566904715),
('/product-marketplace/view', 2, NULL, NULL, NULL, 1566904715, 1566904715),
('/propinsi/*', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/propinsi/create', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/propinsi/delete', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/propinsi/index', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/propinsi/update', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/propinsi/view', 2, NULL, NULL, NULL, 1571279306, 1571279306),
('/request-pick/*', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/create', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/delete', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/index', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/update', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/view', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/sensor/*', 2, NULL, NULL, NULL, 1567474278, 1567474278),
('/sensor/create', 2, NULL, NULL, NULL, 1567474277, 1567474277),
('/sensor/delete', 2, NULL, NULL, NULL, 1567474277, 1567474277),
('/sensor/index', 2, NULL, NULL, NULL, 1567474277, 1567474277),
('/sensor/update', 2, NULL, NULL, NULL, 1567474277, 1567474277),
('/sensor/view', 2, NULL, NULL, NULL, 1567474277, 1567474277),
('/site/*', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/about', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/captcha', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/contact', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/error', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/index', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/login', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/logout', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/site/scan', 2, NULL, NULL, NULL, 1552641595, 1552641595),
('/supplier/*', 2, NULL, NULL, NULL, 1563246527, 1563246527),
('/supplier/change-password', 2, NULL, NULL, NULL, 1565820642, 1565820642),
('/supplier/create', 2, NULL, NULL, NULL, 1563246527, 1563246527),
('/supplier/delete', 2, NULL, NULL, NULL, 1563246527, 1563246527),
('/supplier/generate-user', 2, NULL, NULL, NULL, 1565760430, 1565760430),
('/supplier/index', 2, NULL, NULL, NULL, 1563246527, 1563246527),
('/supplier/update', 2, NULL, NULL, NULL, 1563246527, 1563246527),
('/supplier/userlist', 2, NULL, NULL, NULL, 1565760430, 1565760430),
('/supplier/view', 2, NULL, NULL, NULL, 1563246527, 1563246527),
('/tester/*', 2, NULL, NULL, NULL, 1569291049, 1569291049),
('/tester/create', 2, NULL, NULL, NULL, 1569291048, 1569291048),
('/tester/delete', 2, NULL, NULL, NULL, 1569291048, 1569291048),
('/tester/editable', 2, NULL, NULL, NULL, 1569291048, 1569291048),
('/tester/index', 2, NULL, NULL, NULL, 1569291048, 1569291048),
('/tester/update', 2, NULL, NULL, NULL, 1569291048, 1569291048),
('/tester/view', 2, NULL, NULL, NULL, 1569291048, 1569291048),
('/type-asset-item1/*', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item1/create', 2, NULL, NULL, NULL, 1573609753, 1573609753),
('/type-asset-item1/delete', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item1/index', 2, NULL, NULL, NULL, 1573609753, 1573609753),
('/type-asset-item1/update', 2, NULL, NULL, NULL, 1573609753, 1573609753),
('/type-asset-item1/view', 2, NULL, NULL, NULL, 1573609753, 1573609753),
('/type-asset-item2/*', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item2/create', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item2/delete', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item2/index', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item2/update', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item2/view', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item3/*', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item3/create', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item3/delete', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item3/index', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item3/update', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item3/view', 2, NULL, NULL, NULL, 1573609754, 1573609754),
('/type-asset-item4/*', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item4/create', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item4/delete', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item4/index', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item4/update', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item4/view', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item5/*', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item5/create', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item5/delete', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item5/index', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item5/update', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset-item5/view', 2, NULL, NULL, NULL, 1573609755, 1573609755),
('/type-asset1-main/*', 2, NULL, NULL, NULL, 1650533335, 1650533335),
('/type-asset1/*', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset1/create', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset1/delete', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset1/index', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset1/update', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset1/view', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset2/*', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset2/create', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset2/delete', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset2/index', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset2/update', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset2/view', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset3/*', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset3/create', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset3/delete', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset3/index', 2, NULL, NULL, NULL, 1571279296, 1571279296),
('/type-asset3/update', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset3/view', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset4/*', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset4/create', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset4/delete', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset4/index', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset4/update', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset4/view', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset5/*', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset5/create', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset5/delete', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset5/index', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset5/update', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-asset5/view', 2, NULL, NULL, NULL, 1571279297, 1571279297),
('/type-of-vendor/*', 2, NULL, NULL, NULL, NULL, NULL),
('/user-perusahaan/*', 2, NULL, NULL, NULL, 1552641605, 1552641605),
('/user-perusahaan/create', 2, NULL, NULL, NULL, 1552641604, 1552641604),
('/user-perusahaan/delete', 2, NULL, NULL, NULL, 1552641605, 1552641605),
('/user-perusahaan/index', 2, NULL, NULL, NULL, 1552641604, 1552641604),
('/user-perusahaan/update', 2, NULL, NULL, NULL, 1552641605, 1552641605),
('/user-perusahaan/view', 2, NULL, NULL, NULL, 1552641604, 1552641604),
('/user/*', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/create', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/delete', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/index', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/update', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/user/view', 2, NULL, NULL, NULL, 1552641600, 1552641600),
('/vendor/*', 2, NULL, NULL, NULL, NULL, NULL),
('/warehouse/*', 2, NULL, NULL, NULL, 1654661534, 1654661534),
('abs-absence/create', 2, 'Create a log', NULL, NULL, 1547712959, 1547712959),
('abs-absence/index', 2, 'Create a index', NULL, NULL, 1547712959, 1547712959),
('abs-absence/view', 2, 'View a log', NULL, NULL, 1547712959, 1547712959),
('admin', 1, 'Application Admin', NULL, NULL, 1542013792, 1552641743),
('cpanel-leftmenu/create', 2, 'Create a menu', NULL, NULL, 1547712959, 1547712959),
('cpanel-leftmenu/delete', 2, 'delete a menu', NULL, NULL, 1547712959, 1547712959),
('cpanel-leftmenu/index', 2, 'Create a index', NULL, NULL, 1547712959, 1547712959),
('cpanel-leftmenu/update', 2, 'Update a menu', NULL, NULL, 1547713493, 1547713493),
('cpanel-leftmenu/view', 2, 'View a menu', NULL, NULL, 1547712959, 1547712959),
('engineer', 1, 'teknisi', NULL, NULL, 1655872898, 1655872898),
('engineer-supervisor', 1, 'engineer-supervisor', NULL, NULL, 1655872919, 1655872919),
('grievance-list-request/index', 2, 'View Grievance List', NULL, NULL, 1563228150, 1563228150),
('hrm-pegawai/create', 2, 'Create Pegawai', NULL, NULL, NULL, NULL),
('hrm-pegawai/delete', 2, 'Delete Pegawai', NULL, NULL, NULL, NULL),
('hrm-pegawai/index', 2, 'Display index', NULL, NULL, NULL, NULL),
('hrm-pegawai/update', 2, 'Update Pegawai', NULL, NULL, NULL, NULL),
('hrm-pegawai/view', 2, 'view Pegawai', NULL, NULL, 1547712959, 1547712959),
('kartu-rfid/create', 2, 'Create a Kartu RFID', NULL, NULL, 1547716430, 1547716430),
('kartu-rfid/delete', 2, 'delete a Kartu RFID', NULL, NULL, 1547716430, 1547716430),
('kartu-rfid/index', 2, 'Index of Kartu RFID', NULL, NULL, 1547716430, 1547716430),
('kartu-rfid/update', 2, 'Update a Kartu RFID', NULL, NULL, 1547716430, 1547716430),
('kartu-rfid/view', 2, 'View a Kartu RFID', NULL, NULL, 1547716430, 1547716430),
('member', 1, 'Member or supplier', NULL, NULL, 1563240747, 1563240747),
('user/create', 2, 'Create a user', NULL, NULL, 1542013422, 1542013422),
('user/delete', 2, 'Delete a user', NULL, NULL, 1542013422, 1548749079),
('user/index', 2, 'Create a index', NULL, NULL, 1542013422, 1548749389),
('user/update', 2, 'Update a user', NULL, NULL, 1542013422, 1542013422),
('user/view', 2, 'View a user', NULL, NULL, 1542013422, 1542013422);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/account-code/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/view'),
('admin', '/app-field-config/*'),
('admin', '/app-field-config/create'),
('admin', '/app-field-config/delete'),
('admin', '/app-field-config/index'),
('admin', '/app-field-config/update'),
('admin', '/app-field-config/view'),
('admin', '/app-setting/*'),
('admin', '/app-setting/create'),
('admin', '/app-setting/delete'),
('admin', '/app-setting/index'),
('admin', '/app-setting/update'),
('admin', '/app-setting/view'),
('admin', '/app-vocabulary/*'),
('admin', '/app-vocabulary/create'),
('admin', '/app-vocabulary/delete'),
('admin', '/app-vocabulary/index'),
('admin', '/app-vocabulary/update'),
('admin', '/app-vocabulary/view'),
('admin', '/asset-code/*'),
('admin', '/asset-code/create'),
('admin', '/asset-code/delete'),
('admin', '/asset-code/index'),
('admin', '/asset-code/update'),
('admin', '/asset-code/view'),
('admin', '/asset-dismantle-order/*'),
('admin', '/asset-in-asset/*'),
('admin', '/asset-item-app/*'),
('admin', '/asset-item-app/create'),
('admin', '/asset-item-app/delete'),
('admin', '/asset-item-app/download-file'),
('admin', '/asset-item-app/gen-pdf'),
('admin', '/asset-item-app/index'),
('admin', '/asset-item-app/kecamatan'),
('admin', '/asset-item-app/kelurahan'),
('admin', '/asset-item-app/list'),
('admin', '/asset-item-app/list-search'),
('admin', '/asset-item-app/update'),
('admin', '/asset-item-app/update-asset'),
('admin', '/asset-item-app/upload-file'),
('admin', '/asset-item-app/upload-file-search'),
('admin', '/asset-item-app/upload-file1'),
('admin', '/asset-item-app/upload-image'),
('admin', '/asset-item-app/view'),
('admin', '/asset-item-app/view-detail'),
('admin', '/asset-item-deletion/*'),
('admin', '/asset-item-distribution-current/*'),
('admin', '/asset-item-distribution-log/*'),
('admin', '/asset-item-incident/*'),
('admin', '/asset-item-location/*'),
('admin', '/asset-item-location/create'),
('admin', '/asset-item-location/delete'),
('admin', '/asset-item-location/index'),
('admin', '/asset-item-location/kecamatan'),
('admin', '/asset-item-location/kelurahan'),
('admin', '/asset-item-location/lists'),
('admin', '/asset-item-location/update'),
('admin', '/asset-item-location/view'),
('admin', '/asset-item-location/view-map'),
('admin', '/asset-item-main/*'),
('admin', '/asset-item-maintenance/*'),
('admin', '/asset-item-repair/*'),
('admin', '/asset-item-tracking-device-log/*'),
('admin', '/asset-item-tracking-device/*'),
('admin', '/asset-item/*'),
('admin', '/asset-item/create'),
('admin', '/asset-item/delete'),
('admin', '/asset-item/download-file'),
('admin', '/asset-item/gen-pdf'),
('admin', '/asset-item/index'),
('admin', '/asset-item/kecamatan'),
('admin', '/asset-item/kelurahan'),
('admin', '/asset-item/list'),
('admin', '/asset-item/list-search'),
('admin', '/asset-item/update'),
('admin', '/asset-item/update-asset'),
('admin', '/asset-item/upload-file'),
('admin', '/asset-item/upload-file-search'),
('admin', '/asset-item/upload-file1'),
('admin', '/asset-item/upload-image'),
('admin', '/asset-item/view'),
('admin', '/asset-item/view-detail'),
('admin', '/asset-master-criteria-maintenance/*'),
('admin', '/asset-master-field-config/*'),
('admin', '/asset-master-field-config/create'),
('admin', '/asset-master-field-config/delete'),
('admin', '/asset-master-field-config/index'),
('admin', '/asset-master-field-config/update'),
('admin', '/asset-master-field-config/view'),
('admin', '/asset-master-location/*'),
('admin', '/asset-master-location/create'),
('admin', '/asset-master-location/delete'),
('admin', '/asset-master-location/index'),
('admin', '/asset-master-location/update'),
('admin', '/asset-master-location/view'),
('admin', '/asset-master-main/*'),
('admin', '/asset-master-map-year/*'),
('admin', '/asset-master-request/*'),
('admin', '/asset-master-structure/*'),
('admin', '/asset-master/*'),
('admin', '/asset-master/create'),
('admin', '/asset-master/delete'),
('admin', '/asset-master/index'),
('admin', '/asset-master/update'),
('admin', '/asset-master/view'),
('admin', '/asset-received/*'),
('admin', '/asset-received/create'),
('admin', '/asset-received/delete'),
('admin', '/asset-received/index'),
('admin', '/asset-received/update'),
('admin', '/asset-received/view'),
('admin', '/auth-role-name/*'),
('admin', '/conditional-asset-item/*'),
('admin', '/cpanel-leftmenu/*'),
('admin', '/cpanel-leftmenu/create'),
('admin', '/cpanel-leftmenu/delete'),
('admin', '/cpanel-leftmenu/index'),
('admin', '/cpanel-leftmenu/update'),
('admin', '/cpanel-leftmenu/view'),
('admin', '/customer/*'),
('admin', '/dashboard/*'),
('admin', '/dashboard/index'),
('admin', '/dashboard/main'),
('admin', '/departement/*'),
('admin', '/evaluation/*'),
('admin', '/gii/*'),
('admin', '/hrm-pegawai/*'),
('admin', '/hrm-pegawai/create'),
('admin', '/hrm-pegawai/delete'),
('admin', '/hrm-pegawai/index'),
('admin', '/hrm-pegawai/update'),
('admin', '/hrm-pegawai/view'),
('admin', '/kabupaten/*'),
('admin', '/kabupaten/create'),
('admin', '/kabupaten/delete'),
('admin', '/kabupaten/index'),
('admin', '/kabupaten/update'),
('admin', '/kabupaten/view'),
('admin', '/kamus-petunjuk/*'),
('admin', '/kamus-petunjuk/create'),
('admin', '/kamus-petunjuk/delete'),
('admin', '/kamus-petunjuk/index'),
('admin', '/kamus-petunjuk/update'),
('admin', '/kamus-petunjuk/view'),
('admin', '/kecamatan/*'),
('admin', '/kecamatan/create'),
('admin', '/kecamatan/delete'),
('admin', '/kecamatan/index'),
('admin', '/kecamatan/update'),
('admin', '/kecamatan/view'),
('admin', '/kelurahan/*'),
('admin', '/kelurahan/create'),
('admin', '/kelurahan/delete'),
('admin', '/kelurahan/index'),
('admin', '/kelurahan/update'),
('admin', '/kelurahan/view'),
('admin', '/laporan/*'),
('admin', '/laporan/bulanan'),
('admin', '/laporan/captcha'),
('admin', '/laporan/error'),
('admin', '/laporan/harian'),
('admin', '/laporan/scan'),
('admin', '/map-maker/*'),
('admin', '/market-place/*'),
('admin', '/market-place/create'),
('admin', '/market-place/delete'),
('admin', '/market-place/index'),
('admin', '/market-place/update'),
('admin', '/market-place/view'),
('admin', '/mst-status-received/*'),
('admin', '/mst-status-received/create'),
('admin', '/mst-status-received/delete'),
('admin', '/mst-status-received/index'),
('admin', '/mst-status-received/update'),
('admin', '/mst-status-received/view'),
('admin', '/perusahaan/*'),
('admin', '/perusahaan/create'),
('admin', '/perusahaan/delete'),
('admin', '/perusahaan/index'),
('admin', '/perusahaan/update'),
('admin', '/perusahaan/view'),
('admin', '/product-marketplace/*'),
('admin', '/product-marketplace/create'),
('admin', '/product-marketplace/delete'),
('admin', '/product-marketplace/index'),
('admin', '/product-marketplace/update'),
('admin', '/product-marketplace/view'),
('admin', '/propinsi/*'),
('admin', '/propinsi/create'),
('admin', '/propinsi/delete'),
('admin', '/propinsi/index'),
('admin', '/propinsi/update'),
('admin', '/propinsi/view'),
('admin', '/request-pick/*'),
('admin', '/request-pick/create'),
('admin', '/request-pick/delete'),
('admin', '/request-pick/index'),
('admin', '/request-pick/update'),
('admin', '/request-pick/view'),
('admin', '/sensor/*'),
('admin', '/sensor/create'),
('admin', '/sensor/delete'),
('admin', '/sensor/index'),
('admin', '/sensor/update'),
('admin', '/sensor/view'),
('admin', '/site/*'),
('admin', '/site/about'),
('admin', '/site/captcha'),
('admin', '/site/contact'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout'),
('admin', '/site/scan'),
('admin', '/supplier/*'),
('admin', '/supplier/change-password'),
('admin', '/supplier/create'),
('admin', '/supplier/delete'),
('admin', '/supplier/generate-user'),
('admin', '/supplier/index'),
('admin', '/supplier/update'),
('admin', '/supplier/userlist'),
('admin', '/supplier/view'),
('admin', '/tester/*'),
('admin', '/tester/create'),
('admin', '/tester/delete'),
('admin', '/tester/editable'),
('admin', '/tester/index'),
('admin', '/tester/update'),
('admin', '/tester/view'),
('admin', '/type-asset-item1/*'),
('admin', '/type-asset-item1/create'),
('admin', '/type-asset-item1/delete'),
('admin', '/type-asset-item1/index'),
('admin', '/type-asset-item1/update'),
('admin', '/type-asset-item1/view'),
('admin', '/type-asset-item2/*'),
('admin', '/type-asset-item2/create'),
('admin', '/type-asset-item2/delete'),
('admin', '/type-asset-item2/index'),
('admin', '/type-asset-item2/update'),
('admin', '/type-asset-item2/view'),
('admin', '/type-asset-item3/*'),
('admin', '/type-asset-item3/create'),
('admin', '/type-asset-item3/delete'),
('admin', '/type-asset-item3/index'),
('admin', '/type-asset-item3/update'),
('admin', '/type-asset-item3/view'),
('admin', '/type-asset-item4/*'),
('admin', '/type-asset-item4/create'),
('admin', '/type-asset-item4/delete'),
('admin', '/type-asset-item4/index'),
('admin', '/type-asset-item4/update'),
('admin', '/type-asset-item4/view'),
('admin', '/type-asset-item5/*'),
('admin', '/type-asset-item5/create'),
('admin', '/type-asset-item5/delete'),
('admin', '/type-asset-item5/index'),
('admin', '/type-asset-item5/update'),
('admin', '/type-asset-item5/view'),
('admin', '/type-asset1-main/*'),
('admin', '/type-asset1/*'),
('admin', '/type-asset1/create'),
('admin', '/type-asset1/delete'),
('admin', '/type-asset1/index'),
('admin', '/type-asset1/update'),
('admin', '/type-asset1/view'),
('admin', '/type-asset2/*'),
('admin', '/type-asset2/create'),
('admin', '/type-asset2/delete'),
('admin', '/type-asset2/index'),
('admin', '/type-asset2/update'),
('admin', '/type-asset2/view'),
('admin', '/type-asset3/*'),
('admin', '/type-asset3/create'),
('admin', '/type-asset3/delete'),
('admin', '/type-asset3/index'),
('admin', '/type-asset3/update'),
('admin', '/type-asset3/view'),
('admin', '/type-asset4/*'),
('admin', '/type-asset4/create'),
('admin', '/type-asset4/delete'),
('admin', '/type-asset4/index'),
('admin', '/type-asset4/update'),
('admin', '/type-asset4/view'),
('admin', '/type-asset5/*'),
('admin', '/type-asset5/create'),
('admin', '/type-asset5/delete'),
('admin', '/type-asset5/index'),
('admin', '/type-asset5/update'),
('admin', '/type-asset5/view'),
('admin', '/type-of-vendor/*'),
('admin', '/user-perusahaan/*'),
('admin', '/user-perusahaan/create'),
('admin', '/user-perusahaan/delete'),
('admin', '/user-perusahaan/index'),
('admin', '/user-perusahaan/update'),
('admin', '/user-perusahaan/view'),
('admin', '/user/*'),
('admin', '/user/create'),
('admin', '/user/delete'),
('admin', '/user/index'),
('admin', '/user/update'),
('admin', '/user/view'),
('admin', '/vendor/*'),
('admin', '/warehouse/*'),
('admin', 'cpanel-leftmenu/create'),
('admin', 'cpanel-leftmenu/delete'),
('admin', 'cpanel-leftmenu/index'),
('admin', 'cpanel-leftmenu/update'),
('admin', 'cpanel-leftmenu/view'),
('admin', 'grievance-list-request/index'),
('admin', 'user/create'),
('admin', 'user/delete'),
('admin', 'user/index'),
('admin', 'user/update'),
('admin', 'user/view'),
('engineer', '/asset-dismantle-order-done/*'),
('member', '/site/index');

-- --------------------------------------------------------

--
-- Table structure for table `auth_role_name`
--

CREATE TABLE `auth_role_name` (
  `id_auth_role_name` bigint(20) NOT NULL,
  `auth_item_name` varchar(250) NOT NULL,
  `role_name` varchar(250) NOT NULL,
  `as_generic_choice` int(1) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_role_name`
--

INSERT INTO `auth_role_name` (`id_auth_role_name`, `auth_item_name`, `role_name`, `as_generic_choice`, `is_active`) VALUES
(1, 'engineer', 'Teknisi', 1, 1),
(2, 'engineer-supervisor', 'Supervisor Teknisi', 1, 1),
(3, 'admin', 'admin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cpanel_leftmenu`
--

CREATE TABLE `cpanel_leftmenu` (
  `id_leftmenu` int(11) NOT NULL,
  `id_parent_leftmenu` int(11) NOT NULL,
  `has_child` int(1) NOT NULL,
  `menu_name` varchar(200) NOT NULL,
  `menu_icon` varchar(100) NOT NULL,
  `value_indo` varchar(250) NOT NULL,
  `value_eng` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `is_public` int(1) NOT NULL DEFAULT 0,
  `auth` text NOT NULL,
  `mobile_display` set('NONE','MOBILE_TOP','MOBILE_BOTTOM') NOT NULL,
  `visible` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpanel_leftmenu`
--

INSERT INTO `cpanel_leftmenu` (`id_leftmenu`, `id_parent_leftmenu`, `has_child`, `menu_name`, `menu_icon`, `value_indo`, `value_eng`, `url`, `is_public`, `auth`, `mobile_display`, `visible`) VALUES
(11000, 0, 1, 'Data Barang', 'clone', 'Data Barang', 'Data Barang', 'asset-in-asset', 0, 'admin', '', 1),
(11001, 11000, 0, 'Barang', 'firefox', 'Barang', 'Barang', 'asset-item-main/index', 0, 'admin', 'MOBILE_TOP', 1),
(11002, 11000, 0, 'Kode Barang', 'firefox', 'Kode Barang', 'Kode Barang', 'asset-master/index', 0, 'admin', 'MOBILE_TOP', 1),
(11200, 0, 1, 'Data Pelanggan', 'download', 'Data Pelanggan', 'Data Pelanggan', '#', 0, 'admin', '', 1),
(11201, 11200, 0, 'Pelanggan', 'barcode', 'Pelanggan', 'Pelanggan', 'customer/index', 0, 'admin', 'MOBILE_TOP', 1),
(12000, 0, 1, 'Dismantling', 'download', 'Dismantling', 'Dismantling', '#', 0, 'admin, engineer', '', 1),
(12001, 12000, 0, 'Dismantling Order', 'barcode', 'Dismantling Order', 'Dismantling Order', 'asset-dismantle-order/index', 0, 'admin', 'MOBILE_TOP', 1),
(12002, 12000, 0, 'Approval', 'firefox', 'Approval', 'Approval', '', 0, 'admin, engineer-supervisor', 'MOBILE_TOP', 1),
(12003, 12000, 0, 'Penerimaan Barang di Gudang', 'firefox', 'Penerimaan Barang di Gudang', 'Penerimaan Barang di Gudang', 'asset-dismantle-order-done/index', 0, 'engineer', 'MOBILE_TOP', 1),
(12300, 0, 1, 'Pengelola Barang', 'download', 'Pengelola Barang', 'Pengelola Barang', '#', 0, 'admin', '', 1),
(12301, 12300, 0, 'Teknisi', 'user', 'Teknisi', 'Teknisi', 'hrm-pegawai/index', 0, 'admin', 'MOBILE_TOP', 1),
(12302, 12300, 0, 'Job Class', 'barcode', 'Job Class', 'Job Class', 'job-class/index', 0, 'admin', 'MOBILE_TOP', 1),
(22000, 0, 1, 'Data Master', 'cubes', 'Data Master', 'Data Master', '#', 0, 'admin', '', 1),
(22001, 22000, 0, 'Type Asset 1', 'suitcase', 'Type Asset 1', 'Type Asset 1', 'type-asset1/index', 0, 'admin', 'MOBILE_TOP', 1),
(22002, 22000, 0, 'Type Asset 2', 'suitcase', 'Type Asset 2', 'Type Asset 2', 'type-asset2/index', 0, 'admin', 'MOBILE_TOP', 1),
(22003, 22000, 0, 'Warehouse', 'road', 'Warehouse', 'Warehouse', 'warehouse/index', 0, 'admin', 'MOBILE_TOP', 1),
(25000, 0, 1, 'Setting', 'cubes', 'Setting', 'Setting', '#', 0, 'admin', '', 0),
(25001, 25000, 0, 'Setting Aplikasi', 'user', 'Setting Aplikasi', 'Setting Aplikasi', 'app-setting/index', 0, 'admin', 'MOBILE_TOP', 1),
(26000, 0, 1, 'Manajemen User', 'database', 'Manajemen User', 'User Management', '#', 0, 'admin', '', 1),
(26001, 26000, 0, 'User', 'user', 'User', 'User', 'user/index', 0, 'admin', 'MOBILE_TOP', 1),
(26002, 26000, 0, 'Autentifikasi Menu', 'dribbble', 'Autentifikasi Menu', 'Autentifikasi Menu', 'cpanel-leftmenu/index', 0, 'admin', 'MOBILE_TOP', 1),
(26003, 26000, 0, 'Roles', 'user', 'Roles', 'Roles', 'role/index', 0, 'admin', 'MOBILE_TOP', 0),
(26004, 26000, 0, 'Auth Role Name', 'dribbble', 'Auth Role Name', 'Auth Role Name', 'auth-role-name/index', 0, 'admin', 'MOBILE_TOP', 1),
(1100000, 0, 0, 'Logout ', 'sign-out', 'Logout ', 'Logout ', 'site/logout', 0, 'admin, member', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` bigint(20) NOT NULL,
  `nama_customer` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `alamat_lain` varchar(250) DEFAULT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nomor_telepon` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `attribute1` varchar(250) DEFAULT NULL,
  `attribute2` varchar(250) DEFAULT NULL,
  `attribute3` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat`, `alamat_lain`, `id_kabupaten`, `nomor_telepon`, `email`, `attribute1`, `attribute2`, `attribute3`) VALUES
(1, 'Kampung Daun', 'Jl. Gajah', NULL, 1112, '09182312', 'kampungdaun@gmail.com', NULL, NULL, NULL),
(3, 'Pak Banu', 'Bandung', 'Bandung Lain', 1, '0819210', 'sinung@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `id_departement` bigint(20) NOT NULL,
  `departement_name` varchar(250) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id_departement`, `departement_name`, `description`, `is_active`) VALUES
(1, 'Departemen Fasilitas', 'Departemen Penanggung Jawab Fasilitas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hrm_pegawai`
--

CREATE TABLE `hrm_pegawai` (
  `id_pegawai` bigint(20) NOT NULL,
  `id_perusahaan` bigint(20) DEFAULT NULL,
  `userid` varchar(45) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `no_dossier` int(11) DEFAULT NULL,
  `NIP` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(250) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `tempat_lahir` varchar(250) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `usia` int(4) DEFAULT 0,
  `usia_lebih_bulan` int(2) DEFAULT NULL,
  `jenis_kelamin` set('PRIA','WANITA') NOT NULL,
  `golongan_darah` set('A','B','AB','O','-') DEFAULT '-',
  `tinggi_badan` int(5) DEFAULT NULL,
  `berat_badan` int(5) DEFAULT NULL,
  `agama` set('ISLAM','KRISTEN','KATOLIK','HINDU','BUDHA','KONGHUCU','LAINNYA','-') DEFAULT '-',
  `status_pernikahan` set('BELUM MENIKAH','MENIKAH','DUDA/JANDA','-') DEFAULT '-',
  `no_identitas_pribadi` varchar(250) DEFAULT NULL,
  `NPWP` varchar(150) DEFAULT NULL,
  `no_kartu_kesehatan` varchar(150) DEFAULT NULL,
  `no_kartu_tenagakerja` varchar(150) DEFAULT NULL,
  `kartu_kesehatan` set('BPJS','ASURANSI') DEFAULT NULL,
  `no_kartu_keluarga` varchar(150) DEFAULT NULL,
  `scan_ktp` varchar(150) DEFAULT NULL,
  `scan_bpjs` varchar(150) DEFAULT NULL,
  `scan_npwp` varchar(150) DEFAULT NULL,
  `scan_paraf` varchar(150) DEFAULT NULL,
  `scan_kk` varchar(250) NOT NULL,
  `scan_tandatangan` varchar(150) DEFAULT NULL,
  `id_hrm_status_pegawai` int(11) NOT NULL DEFAULT 0,
  `id_hrm_status_organik` int(11) NOT NULL DEFAULT 0,
  `status_tenaga_kerja` set('WNI','WNA') NOT NULL DEFAULT 'WNI',
  `reg_tanggal_masuk` date DEFAULT NULL,
  `reg_tanggal_diangkat` date DEFAULT NULL,
  `reg_tanggal_training` date NOT NULL,
  `reg_status_pegawai` set('AKTIF','TIDAK AKTIF','PENSIUN','MPP') NOT NULL DEFAULT 'AKTIF',
  `tanggal_mpp` date DEFAULT NULL,
  `tanggal_pensiun` date DEFAULT NULL,
  `tanggal_terminasi` date NOT NULL,
  `id_hrm_mst_jenis_terminasi_bi` int(11) NOT NULL,
  `gelar_akademik` varchar(250) DEFAULT NULL,
  `gelar_profesi` varchar(250) DEFAULT NULL,
  `pdk_id_tingkatpendidikan` int(11) DEFAULT NULL,
  `pdk_sekolah_terakhir` varchar(250) DEFAULT NULL,
  `pdk_jurusan_terakhir` varchar(250) DEFAULT NULL,
  `pdk_ipk_terakhir` varchar(30) DEFAULT NULL,
  `pdk_tahun_lulus` int(4) DEFAULT NULL,
  `alamat_termutakhir` text DEFAULT NULL,
  `alamat_sesuai_identitas` text DEFAULT NULL,
  `mobilephone1` varchar(250) DEFAULT NULL,
  `mobilephone2` varchar(250) DEFAULT NULL,
  `telepon_rumah` varchar(250) DEFAULT NULL,
  `fax_rumah` varchar(250) DEFAULT NULL,
  `email1` varchar(200) NOT NULL,
  `email2` varchar(200) NOT NULL,
  `jbt_id_jabatan` bigint(20) NOT NULL DEFAULT 0,
  `jbt_jabatan` varchar(250) DEFAULT NULL,
  `jbt_id_tingkat_jabatan` bigint(20) DEFAULT NULL,
  `jbt_no_sk_jabatan` varchar(250) DEFAULT NULL,
  `jbt_tgl_keputusan` date DEFAULT NULL,
  `jbt_tanggal_berlaku` date DEFAULT NULL,
  `jbt_keterangan_mutasi` varchar(250) DEFAULT NULL,
  `pkt_id_pangkat` int(11) DEFAULT NULL,
  `pkt_no_sk` varchar(250) DEFAULT NULL,
  `pkt_tgl_keputusan` date DEFAULT NULL,
  `pkt_tgl_berlaku` date DEFAULT NULL,
  `pkt_gaji_pokok` double(20,2) DEFAULT NULL,
  `pkt_id_jenis_kenaikan_pangkat` int(11) DEFAULT NULL,
  `pkt_eselon` varchar(64) NOT NULL,
  `pkt_ruang` varchar(64) NOT NULL,
  `pos_id_hrm_kantor` bigint(20) NOT NULL DEFAULT 0,
  `pos_id_hrm_unit_kerja` bigint(20) NOT NULL DEFAULT 0,
  `pos_kantor` varchar(250) NOT NULL,
  `sta_total_hukuman_disiplin` int(11) NOT NULL,
  `sta_total_penghargaan` int(11) NOT NULL,
  `pst_masabakti_20` date DEFAULT NULL,
  `pst_masabakti_25` date DEFAULT NULL,
  `pst_masabakti_30` date DEFAULT NULL,
  `pst_masabakti_35` date DEFAULT NULL,
  `pst_masabakti_40` date DEFAULT NULL,
  `cuti_besar_terakhir_start` date NOT NULL,
  `cuti_besar_terakhir_end` date NOT NULL,
  `cuti_besar_terakhir_ke` int(10) NOT NULL,
  `cuti_besar_plan_1` date DEFAULT NULL,
  `cuti_besar_plan_2` date DEFAULT NULL,
  `cuti_besar_plan_3` date DEFAULT NULL,
  `cuti_besar_plan_4` date DEFAULT NULL,
  `cuti_besar_plan_5` date DEFAULT NULL,
  `cuti_besar_plan_6` date DEFAULT NULL,
  `cuti_besar_plan_7` date DEFAULT NULL,
  `cuti_besar_ambil_1` int(1) DEFAULT NULL,
  `cuti_besar_ambil_2` int(1) DEFAULT NULL,
  `cuti_besar_ambil_3` int(1) DEFAULT NULL,
  `cuti_besar_ambil_4` int(1) DEFAULT NULL,
  `cuti_besar_ambil_5` int(1) DEFAULT NULL,
  `cuti_besar_ambil_6` int(1) DEFAULT NULL,
  `cuti_besar_ambil_7` int(1) DEFAULT NULL,
  `cuti_besar_aktual_1` date DEFAULT NULL,
  `cuti_besar_aktual_2` date DEFAULT NULL,
  `cuti_besar_aktual_3` date DEFAULT NULL,
  `cuti_besar_aktual_4` date DEFAULT NULL,
  `cuti_besar_aktual_5` date DEFAULT NULL,
  `cuti_besar_aktual_6` date DEFAULT NULL,
  `cuti_besar_aktual_7` date DEFAULT NULL,
  `cuti_besar_aktual_end_1` date DEFAULT NULL,
  `cuti_besar_aktual_end_2` date DEFAULT NULL,
  `cuti_besar_aktual_end_3` date DEFAULT NULL,
  `cuti_besar_aktual_end_4` date DEFAULT NULL,
  `cuti_besar_aktual_end_5` date DEFAULT NULL,
  `cuti_besar_aktual_end_6` date DEFAULT NULL,
  `cuti_besar_aktual_end_7` date DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_user` varchar(64) NOT NULL,
  `created_ip_address` varchar(64) NOT NULL,
  `modified_date` date NOT NULL,
  `modified_user` varchar(64) NOT NULL,
  `modified_ip_address` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrm_pegawai`
--

INSERT INTO `hrm_pegawai` (`id_pegawai`, `id_perusahaan`, `userid`, `cid`, `no_dossier`, `NIP`, `nama_lengkap`, `foto`, `tempat_lahir`, `tanggal_lahir`, `usia`, `usia_lebih_bulan`, `jenis_kelamin`, `golongan_darah`, `tinggi_badan`, `berat_badan`, `agama`, `status_pernikahan`, `no_identitas_pribadi`, `NPWP`, `no_kartu_kesehatan`, `no_kartu_tenagakerja`, `kartu_kesehatan`, `no_kartu_keluarga`, `scan_ktp`, `scan_bpjs`, `scan_npwp`, `scan_paraf`, `scan_kk`, `scan_tandatangan`, `id_hrm_status_pegawai`, `id_hrm_status_organik`, `status_tenaga_kerja`, `reg_tanggal_masuk`, `reg_tanggal_diangkat`, `reg_tanggal_training`, `reg_status_pegawai`, `tanggal_mpp`, `tanggal_pensiun`, `tanggal_terminasi`, `id_hrm_mst_jenis_terminasi_bi`, `gelar_akademik`, `gelar_profesi`, `pdk_id_tingkatpendidikan`, `pdk_sekolah_terakhir`, `pdk_jurusan_terakhir`, `pdk_ipk_terakhir`, `pdk_tahun_lulus`, `alamat_termutakhir`, `alamat_sesuai_identitas`, `mobilephone1`, `mobilephone2`, `telepon_rumah`, `fax_rumah`, `email1`, `email2`, `jbt_id_jabatan`, `jbt_jabatan`, `jbt_id_tingkat_jabatan`, `jbt_no_sk_jabatan`, `jbt_tgl_keputusan`, `jbt_tanggal_berlaku`, `jbt_keterangan_mutasi`, `pkt_id_pangkat`, `pkt_no_sk`, `pkt_tgl_keputusan`, `pkt_tgl_berlaku`, `pkt_gaji_pokok`, `pkt_id_jenis_kenaikan_pangkat`, `pkt_eselon`, `pkt_ruang`, `pos_id_hrm_kantor`, `pos_id_hrm_unit_kerja`, `pos_kantor`, `sta_total_hukuman_disiplin`, `sta_total_penghargaan`, `pst_masabakti_20`, `pst_masabakti_25`, `pst_masabakti_30`, `pst_masabakti_35`, `pst_masabakti_40`, `cuti_besar_terakhir_start`, `cuti_besar_terakhir_end`, `cuti_besar_terakhir_ke`, `cuti_besar_plan_1`, `cuti_besar_plan_2`, `cuti_besar_plan_3`, `cuti_besar_plan_4`, `cuti_besar_plan_5`, `cuti_besar_plan_6`, `cuti_besar_plan_7`, `cuti_besar_ambil_1`, `cuti_besar_ambil_2`, `cuti_besar_ambil_3`, `cuti_besar_ambil_4`, `cuti_besar_ambil_5`, `cuti_besar_ambil_6`, `cuti_besar_ambil_7`, `cuti_besar_aktual_1`, `cuti_besar_aktual_2`, `cuti_besar_aktual_3`, `cuti_besar_aktual_4`, `cuti_besar_aktual_5`, `cuti_besar_aktual_6`, `cuti_besar_aktual_7`, `cuti_besar_aktual_end_1`, `cuti_besar_aktual_end_2`, `cuti_besar_aktual_end_3`, `cuti_besar_aktual_end_4`, `cuti_besar_aktual_end_5`, `cuti_besar_aktual_end_6`, `cuti_besar_aktual_end_7`, `created_date`, `created_user`, `created_ip_address`, `modified_date`, `modified_user`, `modified_ip_address`) VALUES
(2, NULL, '', 0, NULL, '81293182', 'Galih Ginandjar', NULL, 'Bandung', '2022-06-08', 0, NULL, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0182912', NULL, NULL, NULL, 'galih@gmail.com', '', 0, 'Teknisi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '', '', '0000-00-00', '', ''),
(3, NULL, '', 0, NULL, '8938293', 'Irfan Azman', NULL, 'Bandung', '2022-06-08', 0, NULL, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '012012', NULL, NULL, NULL, 'irfan@gmail.com', '', 0, 'Teknisi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '', '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `job_class`
--

CREATE TABLE `job_class` (
  `id_job_class` int(11) NOT NULL,
  `job_class` varchar(250) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_class`
--

INSERT INTO `job_class` (`id_job_class`, `job_class`, `keterangan`) VALUES
(1, 'Insidentil', 'Pekerjaan yang sekali saja dilakukan'),
(2, 'Continues', 'Type pekerjaan berulang atau berkelanjutan');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_propinsi` int(11) NOT NULL,
  `nama_kabupaten` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_propinsi`, `nama_kabupaten`) VALUES
(1101, 11, 'Kab. Simeulue'),
(1102, 11, 'Kab. Aceh Singkil'),
(1103, 11, 'Kab. Aceh Selatan'),
(1104, 11, 'Kab. Aceh Tenggara'),
(1105, 11, 'Kab. Aceh Timur'),
(1106, 11, 'Kab. Aceh Tengah'),
(1107, 11, 'Kab. Aceh Barat'),
(1108, 11, 'Kab. Aceh Besar'),
(1109, 11, 'Kab. Pidie'),
(1110, 11, 'Kab. Bireuen'),
(1111, 11, 'Kab. Aceh Utara'),
(1112, 11, 'Kab. Aceh Barat Daya'),
(1113, 11, 'Kab. Gayo Lues'),
(1114, 11, 'Kab. Aceh Tamiang'),
(1115, 11, 'Kab. Nagan Raya'),
(1116, 11, 'Kab. Aceh Jaya'),
(1117, 11, 'Kab. Bener Meriah'),
(1118, 11, 'Kab. Pidie Jaya'),
(1171, 11, 'Kota Banda Aceh'),
(1172, 11, 'Kota Sabang'),
(1173, 11, 'Kota Langsa'),
(1174, 11, 'Kota Lhokseumawe'),
(1175, 11, 'Kota Subulussalam'),
(1201, 12, 'Kab. Nias'),
(1202, 12, 'Kab. Mandailing Natal'),
(1203, 12, 'Kab. Tapanuli Selatan'),
(1204, 12, 'Kab. Tapanuli Tengah'),
(1205, 12, 'Kab. Tapanuli Utara'),
(1206, 12, 'Kab. Toba Samosir'),
(1207, 12, 'Kab. Labuhan Batu'),
(1208, 12, 'Kab. Asahan'),
(1209, 12, 'Kab. Simalungun'),
(1210, 12, 'Kab. Dairi'),
(1211, 12, 'Kab. Karo'),
(1212, 12, 'Kab. Deli Serdang'),
(1213, 12, 'Kab. Langkat'),
(1214, 12, 'Kab. Nias Selatan'),
(1215, 12, 'Kab. Humbang Hasundutan'),
(1216, 12, 'Kab. Pakpak Bharat'),
(1217, 12, 'Kab. Samosir'),
(1218, 12, 'Kab. Serdang Bedagai'),
(1219, 12, 'Kab. Batu Bara'),
(1220, 12, 'Kab. Padang Lawas Utara'),
(1221, 12, 'Kab. Padang Lawas'),
(1222, 12, 'Kab. Labuhan Batu Selatan'),
(1223, 12, 'Kab. Labuhan Batu Utara'),
(1224, 12, 'Kab. Nias Utara'),
(1225, 12, 'Kab. Nias Barat'),
(1271, 12, 'Kota Sibolga'),
(1272, 12, 'Kota Tanjung Balai'),
(1273, 12, 'Kota Pematang Siantar'),
(1274, 12, 'Kota Tebing Tinggi'),
(1275, 12, 'Kota Medan'),
(1276, 12, 'Kota Binjai'),
(1277, 12, 'Kota Padangsidimpuan'),
(1278, 12, 'Kota Gunungsitoli'),
(1301, 13, 'Kab. Kepulauan Mentawai'),
(1302, 13, 'Kab. Pesisir Selatan'),
(1303, 13, 'Kab. Solok'),
(1304, 13, 'Kab. Sijunjung'),
(1305, 13, 'Kab. Tanah Datar'),
(1306, 13, 'Kab. Padang Pariaman'),
(1307, 13, 'Kab. Agam'),
(1308, 13, 'Kab. Lima Puluh Kota'),
(1309, 13, 'Kab. Pasaman'),
(1310, 13, 'Kab. Solok Selatan'),
(1311, 13, 'Kab. Dharmasraya'),
(1312, 13, 'Kab. Pasaman Barat'),
(1371, 13, 'Kota Padang'),
(1372, 13, 'Kota Solok'),
(1373, 13, 'Kota Sawah Lunto'),
(1374, 13, 'Kota Padang Panjang'),
(1375, 13, 'Kota Bukittinggi'),
(1376, 13, 'Kota Payakumbuh'),
(1377, 13, 'Kota Pariaman'),
(1401, 14, 'Kab. Kuantan Singingi'),
(1402, 14, 'Kab. Indragiri Hulu'),
(1403, 14, 'Kab. Indragiri Hilir'),
(1404, 14, 'Kab. Pelalawan'),
(1405, 14, 'Kab. S I A K'),
(1406, 14, 'Kab. Kampar'),
(1407, 14, 'Kab. Rokan Hulu'),
(1408, 14, 'Kab. Bengkalis'),
(1409, 14, 'Kab. Rokan Hilir'),
(1410, 14, 'Kab. Kepulauan Meranti'),
(1471, 14, 'Kota Pekanbaru'),
(1473, 14, 'Kota D U M A I'),
(1501, 15, 'Kab. Kerinci'),
(1502, 15, 'Kab. Merangin'),
(1503, 15, 'Kab. Sarolangun'),
(1504, 15, 'Kab. Batang Hari'),
(1505, 15, 'Kab. Muaro Jambi'),
(1506, 15, 'Kab. Tanjung Jabung Timur'),
(1507, 15, 'Kab. Tanjung Jabung Barat'),
(1508, 15, 'Kab. Tebo'),
(1509, 15, 'Kab. Bungo'),
(1571, 15, 'Kota Jambi'),
(1572, 15, 'Kota Sungai Penuh'),
(1601, 16, 'Kab. Ogan Komering Ulu'),
(1602, 16, 'Kab. Ogan Komering Ilir'),
(1603, 16, 'Kab. Muara Enim'),
(1604, 16, 'Kab. Lahat'),
(1605, 16, 'Kab. Musi Rawas'),
(1606, 16, 'Kab. Musi Banyuasin'),
(1607, 16, 'Kab. Banyu Asin'),
(1608, 16, 'Kab. Ogan Komering Ulu Selatan'),
(1609, 16, 'Kab. Ogan Komering Ulu Timur'),
(1610, 16, 'Kab. Ogan Ilir'),
(1611, 16, 'Kab. Empat Lawang'),
(1671, 16, 'Kota Palembang'),
(1672, 16, 'Kota Prabumulih'),
(1673, 16, 'Kota Pagar Alam'),
(1674, 16, 'Kota Lubuklinggau'),
(1701, 17, 'Kab. Bengkulu Selatan'),
(1702, 17, 'Kab. Rejang Lebong'),
(1703, 17, 'Kab. Bengkulu Utara'),
(1704, 17, 'Kab. Kaur'),
(1705, 17, 'Kab. Seluma'),
(1706, 17, 'Kab. Mukomuko'),
(1707, 17, 'Kab. Lebong'),
(1708, 17, 'Kab. Kepahiang'),
(1709, 17, 'Kab. Bengkulu Tengah'),
(1771, 17, 'Kota Bengkulu'),
(1801, 18, 'Kab. Lampung Barat'),
(1802, 18, 'Kab. Tanggamus'),
(1803, 18, 'Kab. Lampung Selatan'),
(1804, 18, 'Kab. Lampung Timur'),
(1805, 18, 'Kab. Lampung Tengah'),
(1806, 18, 'Kab. Lampung Utara'),
(1807, 18, 'Kab. Way Kanan'),
(1808, 18, 'Kab. Tulangbawang'),
(1809, 18, 'Kab. Pesawaran'),
(1810, 18, 'Kab. Pringsewu'),
(1811, 18, 'Kab. Mesuji'),
(1812, 18, 'Kab. Tulang Bawang Barat'),
(1813, 18, 'Kab. Pesisir Barat'),
(1871, 18, 'Kota Bandar Lampung'),
(1872, 18, 'Kota Metro'),
(1901, 19, 'Kab. Bangka'),
(1902, 19, 'Kab. Belitung'),
(1903, 19, 'Kab. Bangka Barat'),
(1904, 19, 'Kab. Bangka Tengah'),
(1905, 19, 'Kab. Bangka Selatan'),
(1906, 19, 'Kab. Belitung Timur'),
(1971, 19, 'Kota Pangkal Pinang'),
(2101, 21, 'Kab. Karimun'),
(2102, 21, 'Kab. Bintan'),
(2103, 21, 'Kab. Natuna'),
(2104, 21, 'Kab. Lingga'),
(2105, 21, 'Kab. Kepulauan Anambas'),
(2171, 21, 'Kota B A T A M'),
(2172, 21, 'Kota Tanjung Pinang'),
(3101, 31, 'Kab. Kepulauan Seribu'),
(3171, 31, 'Kota Jakarta Selatan'),
(3172, 31, 'Kota Jakarta Timur'),
(3173, 31, 'Kota Jakarta Pusat'),
(3174, 31, 'Kota Jakarta Barat'),
(3175, 31, 'Kota Jakarta Utara'),
(3201, 32, 'Kab. Bogor'),
(3202, 32, 'Kab. Sukabumi'),
(3203, 32, 'Kab. Cianjur'),
(3204, 32, 'Kab. Bandung'),
(3205, 32, 'Kab. Garut'),
(3206, 32, 'Kab. Tasikmalaya'),
(3207, 32, 'Kab. Ciamis'),
(3208, 32, 'Kab. Kuningan'),
(3209, 32, 'Kab. Cirebon'),
(3210, 32, 'Kab. Majalengka'),
(3211, 32, 'Kab. Sumedang'),
(3212, 32, 'Kab. Indramayu'),
(3213, 32, 'Kab. Subang'),
(3214, 32, 'Kab. Purwakarta'),
(3215, 32, 'Kab. Karawang'),
(3216, 32, 'Kab. Bekasi'),
(3217, 32, 'Kab. Bandung Barat'),
(3218, 32, 'Kab. Pangandaran'),
(3271, 32, 'Kota Bogor'),
(3272, 32, 'Kota Sukabumi'),
(3273, 32, 'Kota Bandung'),
(3274, 32, 'Kota Cirebon'),
(3275, 32, 'Kota Bekasi'),
(3276, 32, 'Kota Depok'),
(3277, 32, 'Kota Cimahi'),
(3278, 32, 'Kota Tasikmalaya'),
(3279, 32, 'Kota Banjar'),
(3301, 33, 'Kab. Cilacap'),
(3302, 33, 'Kab. Banyumas'),
(3303, 33, 'Kab. Purbalingga'),
(3304, 33, 'Kab. Banjarnegara'),
(3305, 33, 'Kab. Kebumen'),
(3306, 33, 'Kab. Purworejo'),
(3307, 33, 'Kab. Wonosobo'),
(3308, 33, 'Kab. Magelang'),
(3309, 33, 'Kab. Boyolali'),
(3310, 33, 'Kab. Klaten'),
(3311, 33, 'Kab. Sukoharjo'),
(3312, 33, 'Kab. Wonogiri'),
(3313, 33, 'Kab. Karanganyar'),
(3314, 33, 'Kab. Sragen'),
(3315, 33, 'Kab. Grobogan'),
(3316, 33, 'Kab. Blora'),
(3317, 33, 'Kab. Rembang'),
(3318, 33, 'Kab. Pati'),
(3319, 33, 'Kab. Kudus'),
(3320, 33, 'Kab. Jepara'),
(3321, 33, 'Kab. Demak'),
(3322, 33, 'Kab. Semarang'),
(3323, 33, 'Kab. Temanggung'),
(3324, 33, 'Kab. Kendal'),
(3325, 33, 'Kab. Batang'),
(3326, 33, 'Kab. Pekalongan'),
(3327, 33, 'Kab. Pemalang'),
(3328, 33, 'Kab. Tegal'),
(3329, 33, 'Kab. Brebes'),
(3371, 33, 'Kota Magelang'),
(3372, 33, 'Kota Surakarta'),
(3373, 33, 'Kota Salatiga'),
(3374, 33, 'Kota Semarang'),
(3375, 33, 'Kota Pekalongan'),
(3376, 33, 'Kota Tegal'),
(3401, 34, 'Kab. Kulon Progo'),
(3402, 34, 'Kab. Bantul'),
(3403, 34, 'Kab. Gunung Kidul'),
(3404, 34, 'Kab. Sleman'),
(3471, 34, 'Kota Yogyakarta'),
(3501, 35, 'Kab. Pacitan'),
(3502, 35, 'Kab. Ponorogo'),
(3503, 35, 'Kab. Trenggalek'),
(3504, 35, 'Kab. Tulungagung'),
(3505, 35, 'Kab. Blitar'),
(3506, 35, 'Kab. Kediri'),
(3507, 35, 'Kab. Malang'),
(3508, 35, 'Kab. Lumajang'),
(3509, 35, 'Kab. Jember'),
(3510, 35, 'Kab. Banyuwangi'),
(3511, 35, 'Kab. Bondowoso'),
(3512, 35, 'Kab. Situbondo'),
(3513, 35, 'Kab. Probolinggo'),
(3514, 35, 'Kab. Pasuruan'),
(3515, 35, 'Kab. Sidoarjo'),
(3516, 35, 'Kab. Mojokerto'),
(3517, 35, 'Kab. Jombang'),
(3518, 35, 'Kab. Nganjuk'),
(3519, 35, 'Kab. Madiun'),
(3520, 35, 'Kab. Magetan'),
(3521, 35, 'Kab. Ngawi'),
(3522, 35, 'Kab. Bojonegoro'),
(3523, 35, 'Kab. Tuban'),
(3524, 35, 'Kab. Lamongan'),
(3525, 35, 'Kab. Gresik'),
(3526, 35, 'Kab. Bangkalan'),
(3527, 35, 'Kab. Sampang'),
(3528, 35, 'Kab. Pamekasan'),
(3529, 35, 'Kab. Sumenep'),
(3571, 35, 'Kota Kediri'),
(3572, 35, 'Kota Blitar'),
(3573, 35, 'Kota Malang'),
(3574, 35, 'Kota Probolinggo'),
(3575, 35, 'Kota Pasuruan'),
(3576, 35, 'Kota Mojokerto'),
(3577, 35, 'Kota Madiun'),
(3578, 35, 'Kota Surabaya'),
(3579, 35, 'Kota Batu'),
(3601, 36, 'Kab. Pandeglang'),
(3602, 36, 'Kab. Lebak'),
(3603, 36, 'Kab. Tangerang'),
(3604, 36, 'Kab. Serang'),
(3671, 36, 'Kota Tangerang'),
(3672, 36, 'Kota Cilegon'),
(3673, 36, 'Kota Serang'),
(3674, 36, 'Kota Tangerang Selatan'),
(5101, 51, 'Kab. Jembrana'),
(5102, 51, 'Kab. Tabanan'),
(5103, 51, 'Kab. Badung'),
(5104, 51, 'Kab. Gianyar'),
(5105, 51, 'Kab. Klungkung'),
(5106, 51, 'Kab. Bangli'),
(5107, 51, 'Kab. Karang Asem'),
(5108, 51, 'Kab. Buleleng'),
(5171, 51, 'Kota Denpasar'),
(5201, 52, 'Kab. Lombok Barat'),
(5202, 52, 'Kab. Lombok Tengah'),
(5203, 52, 'Kab. Lombok Timur'),
(5204, 52, 'Kab. Sumbawa'),
(5205, 52, 'Kab. Dompu'),
(5206, 52, 'Kab. Bima'),
(5207, 52, 'Kab. Sumbawa Barat'),
(5208, 52, 'Kab. Lombok Utara'),
(5271, 52, 'Kota Mataram'),
(5272, 52, 'Kota Bima'),
(5301, 53, 'Kab. Sumba Barat'),
(5302, 53, 'Kab. Sumba Timur'),
(5303, 53, 'Kab. Kupang'),
(5304, 53, 'Kab. Timor Tengah Selatan'),
(5305, 53, 'Kab. Timor Tengah Utara'),
(5306, 53, 'Kab. Belu'),
(5307, 53, 'Kab. Alor'),
(5308, 53, 'Kab. Lembata'),
(5309, 53, 'Kab. Flores Timur'),
(5310, 53, 'Kab. Sikka'),
(5311, 53, 'Kab. Ende'),
(5312, 53, 'Kab. Ngada'),
(5313, 53, 'Kab. Manggarai'),
(5314, 53, 'Kab. Rote Ndao'),
(5315, 53, 'Kab. Manggarai Barat'),
(5316, 53, 'Kab. Sumba Tengah'),
(5317, 53, 'Kab. Sumba Barat Daya'),
(5318, 53, 'Kab. Nagekeo'),
(5319, 53, 'Kab. Manggarai Timur'),
(5320, 53, 'Kab. Sabu Raijua'),
(5371, 53, 'Kota Kupang'),
(6101, 61, 'Kab. Sambas'),
(6102, 61, 'Kab. Bengkayang'),
(6103, 61, 'Kab. Landak'),
(6104, 61, 'Kab. Pontianak'),
(6105, 61, 'Kab. Sanggau'),
(6106, 61, 'Kab. Ketapang'),
(6107, 61, 'Kab. Sintang'),
(6108, 61, 'Kab. Kapuas Hulu'),
(6109, 61, 'Kab. Sekadau'),
(6110, 61, 'Kab. Melawi'),
(6111, 61, 'Kab. Kayong Utara'),
(6112, 61, 'Kab. Kubu Raya'),
(6171, 61, 'Kota Pontianak'),
(6172, 61, 'Kota Singkawang'),
(6201, 62, 'Kab. Kotawaringin Barat'),
(6202, 62, 'Kab. Kotawaringin Timur'),
(6203, 62, 'Kab. Kapuas'),
(6204, 62, 'Kab. Barito Selatan'),
(6205, 62, 'Kab. Barito Utara'),
(6206, 62, 'Kab. Sukamara'),
(6207, 62, 'Kab. Lamandau'),
(6208, 62, 'Kab. Seruyan'),
(6209, 62, 'Kab. Katingan'),
(6210, 62, 'Kab. Pulang Pisau'),
(6211, 62, 'Kab. Gunung Mas'),
(6212, 62, 'Kab. Barito Timur'),
(6213, 62, 'Kab. Murung Raya'),
(6271, 62, 'Kota Palangka Raya'),
(6301, 63, 'Kab. Tanah Laut'),
(6302, 63, 'Kab. Kota Baru'),
(6303, 63, 'Kab. Banjar'),
(6304, 63, 'Kab. Barito Kuala'),
(6305, 63, 'Kab. Tapin'),
(6306, 63, 'Kab. Hulu Sungai Selatan'),
(6307, 63, 'Kab. Hulu Sungai Tengah'),
(6308, 63, 'Kab. Hulu Sungai Utara'),
(6309, 63, 'Kab. Tabalong'),
(6310, 63, 'Kab. Tanah Bumbu'),
(6311, 63, 'Kab. Balangan'),
(6371, 63, 'Kota Banjarmasin'),
(6372, 63, 'Kota Banjar Baru'),
(6401, 64, 'Kab. Paser'),
(6402, 64, 'Kab. Kutai Barat'),
(6403, 64, 'Kab. Kutai Kartanegara'),
(6404, 64, 'Kab. Kutai Timur'),
(6405, 64, 'Kab. Berau'),
(6409, 64, 'Kab. Penajam Paser Utara'),
(6471, 64, 'Kota Balikpapan'),
(6472, 64, 'Kota Samarinda'),
(6474, 64, 'Kota Bontang'),
(6501, 65, 'Kab. Malinau'),
(6502, 65, 'Kab. Bulungan'),
(6503, 65, 'Kab. Tana Tidung'),
(6504, 65, 'Kab. Nunukan'),
(6571, 65, 'Kota Tarakan'),
(7101, 71, 'Kab. Bolaang Mongondow'),
(7102, 71, 'Kab. Minahasa'),
(7103, 71, 'Kab. Kepulauan Sangihe'),
(7104, 71, 'Kab. Kepulauan Talaud'),
(7105, 71, 'Kab. Minahasa Selatan'),
(7106, 71, 'Kab. Minahasa Utara'),
(7107, 71, 'Kab. Bolaang Mongondow Utara'),
(7108, 71, 'Kab. Siau Tagulandang Biaro'),
(7109, 71, 'Kab. Minahasa Tenggara'),
(7110, 71, 'Kab. Bolaang Mongondow Selatan'),
(7111, 71, 'Kab. Bolaang Mongondow Timur'),
(7171, 71, 'Kota Manado'),
(7172, 71, 'Kota Bitung'),
(7173, 71, 'Kota Tomohon'),
(7174, 71, 'Kota Kotamobagu'),
(7201, 72, 'Kab. Banggai Kepulauan'),
(7202, 72, 'Kab. Banggai'),
(7203, 72, 'Kab. Morowali'),
(7204, 72, 'Kab. Poso'),
(7205, 72, 'Kab. Donggala'),
(7206, 72, 'Kab. Toli-toli'),
(7207, 72, 'Kab. Buol'),
(7208, 72, 'Kab. Parigi Moutong'),
(7209, 72, 'Kab. Tojo Una-una'),
(7210, 72, 'Kab. Sigi'),
(7271, 72, 'Kota Palu'),
(7301, 73, 'Kab. Kepulauan Selayar'),
(7302, 73, 'Kab. Bulukumba'),
(7303, 73, 'Kab. Bantaeng'),
(7304, 73, 'Kab. Jeneponto'),
(7305, 73, 'Kab. Takalar'),
(7306, 73, 'Kab. Gowa'),
(7307, 73, 'Kab. Sinjai'),
(7308, 73, 'Kab. Maros'),
(7309, 73, 'Kab. Pangkajene Dan Kepulauan'),
(7310, 73, 'Kab. Barru'),
(7311, 73, 'Kab. Bone'),
(7312, 73, 'Kab. Soppeng'),
(7313, 73, 'Kab. Wajo'),
(7314, 73, 'Kab. Sidenreng Rappang'),
(7315, 73, 'Kab. Pinrang'),
(7316, 73, 'Kab. Enrekang'),
(7317, 73, 'Kab. Luwu'),
(7318, 73, 'Kab. Tana Toraja'),
(7322, 73, 'Kab. Luwu Utara'),
(7325, 73, 'Kab. Luwu Timur'),
(7326, 73, 'Kab. Toraja Utara'),
(7371, 73, 'Kota Makassar'),
(7372, 73, 'Kota Parepare'),
(7373, 73, 'Kota Palopo'),
(7401, 74, 'Kab. Buton'),
(7402, 74, 'Kab. Muna'),
(7403, 74, 'Kab. Konawe'),
(7404, 74, 'Kab. Kolaka'),
(7405, 74, 'Kab. Konawe Selatan'),
(7406, 74, 'Kab. Bombana'),
(7407, 74, 'Kab. Wakatobi'),
(7408, 74, 'Kab. Kolaka Utara'),
(7409, 74, 'Kab. Buton Utara'),
(7410, 74, 'Kab. Konawe Utara'),
(7471, 74, 'Kota Kendari'),
(7472, 74, 'Kota Baubau'),
(7501, 75, 'Kab. Boalemo'),
(7502, 75, 'Kab. Gorontalo'),
(7503, 75, 'Kab. Pohuwato'),
(7504, 75, 'Kab. Bone Bolango'),
(7505, 75, 'Kab. Gorontalo Utara'),
(7571, 75, 'Kota Gorontalo'),
(7601, 76, 'Kab. Majene'),
(7602, 76, 'Kab. Polewali Mandar'),
(7603, 76, 'Kab. Mamasa'),
(7604, 76, 'Kab. Mamuju'),
(7605, 76, 'Kab. Mamuju Utara'),
(8101, 81, 'Kab. Maluku Tenggara Barat'),
(8102, 81, 'Kab. Maluku Tenggara'),
(8103, 81, 'Kab. Maluku Tengah'),
(8104, 81, 'Kab. Buru'),
(8105, 81, 'Kab. Kepulauan Aru'),
(8106, 81, 'Kab. Seram Bagian Barat'),
(8107, 81, 'Kab. Seram Bagian Timur'),
(8108, 81, 'Kab. Maluku Barat Daya'),
(8109, 81, 'Kab. Buru Selatan'),
(8171, 81, 'Kota Ambon'),
(8172, 81, 'Kota Tual'),
(8201, 82, 'Kab. Halmahera Barat'),
(8202, 82, 'Kab. Halmahera Tengah'),
(8203, 82, 'Kab. Kepulauan Sula'),
(8204, 82, 'Kab. Halmahera Selatan'),
(8205, 82, 'Kab. Halmahera Utara'),
(8206, 82, 'Kab. Halmahera Timur'),
(8207, 82, 'Kab. Pulau Morotai'),
(8271, 82, 'Kota Ternate'),
(8272, 82, 'Kota Tidore Kepulauan'),
(9101, 91, 'Kab. Fakfak'),
(9102, 91, 'Kab. Kaimana'),
(9103, 91, 'Kab. Teluk Wondama'),
(9104, 91, 'Kab. Teluk Bintuni'),
(9105, 91, 'Kab. Manokwari'),
(9106, 91, 'Kab. Sorong Selatan'),
(9107, 91, 'Kab. Sorong'),
(9108, 91, 'Kab. Raja Ampat'),
(9109, 91, 'Kab. Tambrauw'),
(9110, 91, 'Kab. Maybrat'),
(9171, 91, 'Kota Sorong'),
(9401, 94, 'Kab. Merauke'),
(9402, 94, 'Kab. Jayawijaya'),
(9403, 94, 'Kab. Jayapura'),
(9404, 94, 'Kab. Nabire'),
(9408, 94, 'Kab. Kepulauan Yapen'),
(9409, 94, 'Kab. Biak Numfor'),
(9410, 94, 'Kab. Paniai'),
(9411, 94, 'Kab. Puncak Jaya'),
(9412, 94, 'Kab. Mimika'),
(9413, 94, 'Kab. Boven Digoel'),
(9414, 94, 'Kab. Mappi'),
(9415, 94, 'Kab. Asmat'),
(9416, 94, 'Kab. Yahukimo'),
(9417, 94, 'Kab. Pegunungan Bintang'),
(9418, 94, 'Kab. Tolikara'),
(9419, 94, 'Kab. Sarmi'),
(9420, 94, 'Kab. Keerom'),
(9426, 94, 'Kab. Waropen'),
(9427, 94, 'Kab. Supiori'),
(9428, 94, 'Kab. Mamberamo Raya'),
(9429, 94, 'Kab. Nduga'),
(9430, 94, 'Kab. Lanny Jaya'),
(9431, 94, 'Kab. Mamberamo Tengah'),
(9432, 94, 'Kab. Yalimo'),
(9433, 94, 'Kab. Puncak'),
(9434, 94, 'Kab. Dogiyai'),
(9435, 94, 'Kab. Intan Jaya'),
(9436, 94, 'Kab. Deiyai'),
(9471, 94, 'Kota Jayapura');

-- --------------------------------------------------------

--
-- Table structure for table `kamus_petunjuk`
--

CREATE TABLE `kamus_petunjuk` (
  `id_kamus_petunjuk` bigint(20) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `is_visible` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamus_petunjuk`
--

INSERT INTO `kamus_petunjuk` (`id_kamus_petunjuk`, `nama`, `deskripsi`, `is_visible`) VALUES
(100, 'Petunjuk Form Visitor', 'Form-form ini dapat digunakan oleh anda pengunjung website kami untuk berbagai keperluan.Silakan dipilih beberapa form yang sesuai dengan keperluan anda.', 1),
(101, 'Grievance Submission - Info', 'Form ini bisa anda gunakan untuk mengajukan \"grievance\" / keluhan secara spesifik kepada perusahaan kami.', 1),
(102, 'Grievance List Request - Info', 'Form ini digunakan untuk keperluan mengajukan list/daftar grievance yang pernah dimiliki. Anda silakan mengisi form pengajuannya, kemudian akan kami proses jika syarat dan ketentuan terpenuhi.', 1),
(103, 'Supplier List Request - Info', 'Form ini digunakan untuk melakukan pengajuan daftar/list supplier yang kami miliki. Anda silakan mengisi form pengajuannya. Jika menurut kami memenuhi syarat dan ketentukan maka daftar list supplier tersebut akan kami kirimkan.', 1),
(111, 'Grievance List Request - Petunjuk', 'Form ini merupakan form yang digunakan untuk mengajukan permintaan \"Grievance List Request\". \r\nAnda silakan mengisi terlebih dahulu data diri pribadi atau instansi yang anda wakili, serta tujuan dari permintaan ini.', 1),
(112, 'Grievance Submission - Petunjuk', 'Form ini merupakan form yang digunakan untuk mengajukan permintaan \"Grievance Submission\". Anda silakan mengisi terlebih dahulu data diri pribadi atau instansi yang anda wakili, serta tujuan dari permintaan ini.', 1),
(113, 'Supplier List Request  - Petunjuk', 'Form ini merupakan form yang digunakan untuk mengajukan permintaan \"Supplier List Request\". Anda silakan mengisi terlebih dahulu data diri pribadi atau instansi yang anda wakili, serta tujuan dari permintaan ini', 1),
(501, 'Disclaimer Assesment', 'Saya bersedia mengisi data-data terkait ini dengan sejujur-jujurnya dan penuh tanggung jawab. ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`) VALUES
(1, 1101, 'Simelue A'),
(2, 1102, 'Aceh Singkil A');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` bigint(20) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `nama_kelurahan` varchar(250) NOT NULL,
  `kodepos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kelurahan`, `id_kecamatan`, `nama_kelurahan`, `kodepos`) VALUES
(1, 1, 'Kelurahan Simelua A', 12),
(2, 2, 'Kelurahan Aceh Singkli', 1),
(3, 1, 'ssa asarrr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id_location` bigint(20) NOT NULL,
  `location_name` varchar(250) NOT NULL,
  `description1` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `latitude` varchar(60) DEFAULT NULL,
  `longitude` varchar(60) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `id_kabupaten` int(11) DEFAULT NULL,
  `id_propinsi` int(11) DEFAULT NULL,
  `id_kecamatan` int(11) DEFAULT NULL,
  `id_kelurahan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Ini khusus untuk aset diam seperti tanah, gedung';

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id_location`, `location_name`, `description1`, `description2`, `latitude`, `longitude`, `address`, `id_kabupaten`, `id_propinsi`, `id_kecamatan`, `id_kelurahan`) VALUES
(1, 'Ruangan A', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(2, 'Ruangan B', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location_unit`
--

CREATE TABLE `location_unit` (
  `id_location_unit` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `label1` varchar(150) DEFAULT NULL,
  `label2` varchar(150) DEFAULT NULL,
  `label3` varchar(150) DEFAULT NULL,
  `keterangan1` varchar(250) NOT NULL,
  `keterangan2` varchar(250) DEFAULT NULL,
  `keterangan3` varchar(250) DEFAULT NULL,
  `id_mst_status1` int(11) NOT NULL,
  `status1_changed_user` int(11) NOT NULL,
  `status1_changed_time` datetime NOT NULL,
  `status1_changed_ip` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_unit`
--

INSERT INTO `location_unit` (`id_location_unit`, `id_location`, `id_owner`, `label1`, `label2`, `label3`, `keterangan1`, `keterangan2`, `keterangan3`, `id_mst_status1`, `status1_changed_user`, `status1_changed_time`, `status1_changed_ip`) VALUES
(1, 1, 1, 'No.Registrasi', NULL, NULL, 'Tanah Bidang Di Daerah X', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `log_activity`
--

CREATE TABLE `log_activity` (
  `id_log_activity` bigint(20) NOT NULL,
  `log_date` date NOT NULL,
  `log_datetime` datetime NOT NULL,
  `tablename` varchar(200) NOT NULL,
  `classname` varchar(250) DEFAULT NULL,
  `related_id` bigint(20) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `id_mst_log_activity` bigint(20) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `ip_address_user` varchar(100) NOT NULL,
  `additional_info1` text DEFAULT NULL,
  `additional_info2` text DEFAULT NULL,
  `additional_info3` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_activity`
--

INSERT INTO `log_activity` (`id_log_activity`, `log_date`, `log_datetime`, `tablename`, `classname`, `related_id`, `id_activity`, `id_mst_log_activity`, `userid`, `ip_address_user`, `additional_info1`, `additional_info2`, `additional_info3`) VALUES
(1, '2022-06-14', '2022-06-14 14:59:30', 'asset_item', 'backend\\models\\AssetItem', 11, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:31:{s:13:\"id_asset_item\";i:11;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:31:{s:13:\"id_asset_item\";i:11;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(2, '2022-06-14', '2022-06-14 14:59:33', 'asset_item', 'backend\\models\\AssetItem', 10, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:31:{s:13:\"id_asset_item\";i:10;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:31:{s:13:\"id_asset_item\";i:10;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(3, '2022-06-14', '2022-06-14 14:59:37', 'asset_item', 'backend\\models\\AssetItem', 9, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:31:{s:13:\"id_asset_item\";i:9;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:31:{s:13:\"id_asset_item\";i:9;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(4, '2022-06-14', '2022-06-14 14:59:40', 'asset_item', 'backend\\models\\AssetItem', 8, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:31:{s:13:\"id_asset_item\";i:8;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:31:{s:13:\"id_asset_item\";i:8;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_application`
--

CREATE TABLE `mobile_application` (
  `id` bigint(20) NOT NULL,
  `application_id` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `version` varchar(10) NOT NULL,
  `realese_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mobile_application`
--

INSERT INTO `mobile_application` (`id`, `application_id`, `description`, `version`, `realese_date`) VALUES
(1, 'template_flutter_1_0', 'Aplikasi Template Flutter Versi 1.0', '1.0', '2019-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_session`
--

CREATE TABLE `mobile_session` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `device_mobile_id` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `application_id` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valid_date_time` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mobile_session`
--

INSERT INTO `mobile_session` (`id`, `id_user`, `auth_key`, `device_mobile_id`, `application_id`, `valid_date_time`, `status`) VALUES
(81, 6, 'OMg1EbgAKTCRA9ce3PjUOk9gEglPmub1', 'sdfWtYdhdh', 'template_flutter_1_0', '2019-09-23 16:08:15', 0),
(82, 6, 'vK_MIUwzLcVafoXtcm92w8JNPeSidGgs', '1606-MMB29M', 'template_flutter_1_0', '2019-09-28 05:07:30', 1),
(83, 107, 'qdRM-V96cvghr26I-cjMDS8qhSIny9Ml', '1606-MMB29M', 'template_flutter_1_0', '2019-10-12 06:57:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_accrual`
--

CREATE TABLE `mst_accrual` (
  `id_mst_accrual` int(11) NOT NULL,
  `method` varchar(250) NOT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_accrual`
--

INSERT INTO `mst_accrual` (`id_mst_accrual`, `method`, `notes`) VALUES
(1, 'Metode garis lurus (straight line method)', '(Harga Perolehan – Nilai Sisa) : Umur Ekonomis'),
(2, 'Metode Saldo Menurun (Declining Balanced Method)', '=DB(cost;salvage;life;periode;[month])'),
(3, 'Metode Penyusutan Jumlah Angka Tahun', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_log_activity`
--

CREATE TABLE `mst_log_activity` (
  `id_mst_log_activity` int(11) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_log_activity`
--

INSERT INTO `mst_log_activity` (`id_mst_log_activity`, `activity`, `notes`) VALUES
(1, 'CREATE', NULL),
(2, 'READ', NULL),
(3, 'UPDATE', NULL),
(4, 'DELETE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_status1`
--

CREATE TABLE `mst_status1` (
  `id_mst_status` int(11) NOT NULL,
  `mst_status` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_status2`
--

CREATE TABLE `mst_status2` (
  `id_mst_status` int(11) NOT NULL,
  `mst_status` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_status3`
--

CREATE TABLE `mst_status3` (
  `id_mst_status` int(11) NOT NULL,
  `mst_status` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_status4`
--

CREATE TABLE `mst_status4` (
  `id_mst_status` int(11) NOT NULL,
  `mst_status` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_status5`
--

CREATE TABLE `mst_status5` (
  `id_mst_status` int(11) NOT NULL,
  `mst_status` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_status_condition`
--

CREATE TABLE `mst_status_condition` (
  `id_mst_status_condition` int(11) NOT NULL,
  `condition` varchar(200) NOT NULL,
  `notes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_status_condition`
--

INSERT INTO `mst_status_condition` (`id_mst_status_condition`, `condition`, `notes`) VALUES
(10, 'BAIK', NULL),
(20, 'BERFUNGSI BAIK TETAPI ADA KEKURANGAN SEDIKIT', NULL),
(30, 'TIDAK BERFUNGSI DENGAN BAIK', NULL),
(40, 'RUSAK', NULL),
(50, 'RUSAK PARAH', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mst_status_dismantle_order`
--

CREATE TABLE `mst_status_dismantle_order` (
  `id_mst_status_dismantle_order` int(11) NOT NULL,
  `status_dismantle_order` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_status_dismantle_order`
--

INSERT INTO `mst_status_dismantle_order` (`id_mst_status_dismantle_order`, `status_dismantle_order`) VALUES
(1, 'ORDER CREATE'),
(2, 'INSTALLATION DONE'),
(3, 'FINISH');

-- --------------------------------------------------------

--
-- Table structure for table `mst_status_received`
--

CREATE TABLE `mst_status_received` (
  `id_status_received` int(11) NOT NULL,
  `status_received` varchar(200) NOT NULL,
  `is_active` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_status_received`
--

INSERT INTO `mst_status_received` (`id_status_received`, `status_received`, `is_active`) VALUES
(1, 'B', 1),
(2, 'RR', 1),
(3, 'RB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id_owner` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `card_number` varchar(250) NOT NULL,
  `place_of_birth` varchar(250) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `profession` varchar(250) DEFAULT NULL,
  `file1` varchar(250) DEFAULT NULL,
  `file2` varchar(250) DEFAULT NULL,
  `file3` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id_owner`, `name`, `card_number`, `place_of_birth`, `date_of_birth`, `address`, `profession`, `file1`, `file2`, `file3`) VALUES
(1, 'Rheza Kahar', '881023810231', 'Bandung', '2020-02-03', 'Jl. Madura 12 Bandung', 'Pemilik Bengkel', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `security_code` bigint(20) NOT NULL,
  `qrcode_perusahaan` varchar(200) NOT NULL,
  `nama_perusahaan` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `email1` varchar(200) NOT NULL,
  `email2` varchar(200) NOT NULL,
  `phone1` int(11) NOT NULL,
  `phone2` int(11) NOT NULL,
  `media_sosial1` varchar(200) NOT NULL,
  `media_sosial2` varchar(200) NOT NULL,
  `media_sosial3` varchar(200) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `id_type_packet` int(11) NOT NULL,
  `packet_expired_date` date NOT NULL,
  `last_payment_date` date NOT NULL,
  `last_amount_payment` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `security_code`, `qrcode_perusahaan`, `nama_perusahaan`, `alamat`, `email1`, `email2`, `phone1`, `phone2`, `media_sosial1`, `media_sosial2`, `media_sosial3`, `npwp`, `id_type_packet`, `packet_expired_date`, `last_payment_date`, `last_amount_payment`, `status`) VALUES
(1, 0, '', 'Company 1', '', '', '', 0, 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', 0, 0),
(15, 0, '', 'Company 2', '', '', '', 0, 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', 0, 0),
(16, 0, '', 'Andara Shop', '', '', '', 981289123, 0, '', '', '', '', 0, '0000-00-00', '0000-00-00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_marketplace`
--

CREATE TABLE `product_marketplace` (
  `id_product_marketplace` bigint(20) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `id_marketplace` bigint(20) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `weight` double NOT NULL,
  `price` bigint(20) NOT NULL,
  `discount_price` double(8,2) NOT NULL,
  `condition` enum('new','ex') NOT NULL,
  `description` text NOT NULL,
  `insurance` enum('yes','no') NOT NULL,
  `brand` varchar(250) NOT NULL,
  `opt_optional_price` text NOT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `cid` varchar(30) DEFAULT NULL,
  `barcode1` varchar(50) DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `last_user_update` int(11) NOT NULL,
  `last_update_ip_address` varchar(200) NOT NULL,
  `token` bigint(20) DEFAULT NULL,
  `flag_new_changes` int(1) DEFAULT 0,
  `flag_ack_devices` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_marketplace`
--

INSERT INTO `product_marketplace` (`id_product_marketplace`, `product_name`, `id_marketplace`, `product_id`, `stock`, `weight`, `price`, `discount_price`, `condition`, `description`, `insurance`, `brand`, `opt_optional_price`, `imei`, `cid`, `barcode1`, `last_update`, `last_user_update`, `last_update_ip_address`, `token`, `flag_new_changes`, `flag_ack_devices`) VALUES
(1, 'Suki Sabu-Sabu', 1, '319722896', 0, 0, 15000, 0.00, 'new', '', 'yes', '', '', '987654321', '123456789', '8996001302323', '0000-00-00 00:00:00', 0, '', NULL, 0, 1),
(2, 'Sabu-Sabu 2', 1, '321368436', 0, 0, 17500, 0.00, 'new', '', 'yes', '', '', NULL, NULL, NULL, '0000-00-00 00:00:00', 0, '', NULL, 0, 1),
(3, 'MURAHHH!!!! EasyTouch Blood Hemoglobin HB Isi 25 Strip Easy Touch', 2, '321370932', 0, 0, 114499, 0.00, 'new', '', 'yes', '', '', NULL, NULL, NULL, '0000-00-00 00:00:00', 0, '', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE `propinsi` (
  `id_propinsi` int(11) NOT NULL,
  `nama_propinsi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propinsi`
--

INSERT INTO `propinsi` (`id_propinsi`, `nama_propinsi`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(94, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `id_role_menu` int(11) NOT NULL,
  `menu` varchar(200) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_menu`
--

INSERT INTO `role_menu` (`id_role_menu`, `menu`, `is_active`) VALUES
(101, 'Aset', 1),
(102, 'Kode Barang', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user_access`
--

CREATE TABLE `role_user_access` (
  `id_role_user_access` bigint(20) NOT NULL,
  `id_role_menu` int(11) NOT NULL,
  `role_name` varchar(64) NOT NULL,
  `user_read` int(1) NOT NULL DEFAULT 0,
  `user_write` int(1) NOT NULL DEFAULT 0,
  `user_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type_asset1`
--

CREATE TABLE `type_asset1` (
  `id_type_asset` int(11) NOT NULL,
  `type_asset` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset1`
--

INSERT INTO `type_asset1` (`id_type_asset`, `type_asset`, `description`, `is_active`) VALUES
(1, 'Bergerak', NULL, 1),
(2, 'Tidak Bergerak', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset2`
--

CREATE TABLE `type_asset2` (
  `id_type_asset` int(11) NOT NULL,
  `type_asset` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type_asset3`
--

CREATE TABLE `type_asset3` (
  `id_type_asset` int(11) NOT NULL,
  `type_asset` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset3`
--

INSERT INTO `type_asset3` (`id_type_asset`, `type_asset`, `description`, `is_active`) VALUES
(100, 'ASet Bergerak', NULL, 1),
(200, 'Aset Tidak Bergerak', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset4`
--

CREATE TABLE `type_asset4` (
  `id_type_asset` int(11) NOT NULL,
  `type_asset` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset4`
--

INSERT INTO `type_asset4` (`id_type_asset`, `type_asset`, `description`, `is_active`) VALUES
(100, 'Not-Tracked', NULL, 1),
(200, 'GPS-Tracked', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset5`
--

CREATE TABLE `type_asset5` (
  `id_type_asset` int(11) NOT NULL,
  `type_asset` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type_asset_item1`
--

CREATE TABLE `type_asset_item1` (
  `id_type_asset_item` int(11) NOT NULL,
  `type_asset_item` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset_item1`
--

INSERT INTO `type_asset_item1` (`id_type_asset_item`, `type_asset_item`, `description`, `is_active`) VALUES
(10, 'Bergerak', NULL, 1),
(20, 'Tidak Bergerak', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset_item2`
--

CREATE TABLE `type_asset_item2` (
  `id_type_asset_item` int(11) NOT NULL,
  `type_asset_item` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset_item2`
--

INSERT INTO `type_asset_item2` (`id_type_asset_item`, `type_asset_item`, `description`, `is_active`) VALUES
(100, 'Terpelihara', NULL, 1),
(200, 'Tidak Terpelihara', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset_item3`
--

CREATE TABLE `type_asset_item3` (
  `id_type_asset_item` int(11) NOT NULL,
  `type_asset_item` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset_item3`
--

INSERT INTO `type_asset_item3` (`id_type_asset_item`, `type_asset_item`, `description`, `is_active`) VALUES
(1000, 'MANGGA', NULL, 1),
(1001, 'PETE', NULL, 1),
(1002, 'NANGKA', NULL, 1),
(1003, 'MAHONI', NULL, 1),
(1004, 'RENGAS', NULL, 1),
(1005, 'ARENG', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset_item4`
--

CREATE TABLE `type_asset_item4` (
  `id_type_asset_item` int(11) NOT NULL,
  `type_asset_item` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_asset_item4`
--

INSERT INTO `type_asset_item4` (`id_type_asset_item`, `type_asset_item`, `description`, `is_active`) VALUES
(201, 'BESAR', NULL, 1),
(202, 'SEDANG', NULL, 1),
(203, 'KECIL', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_asset_item5`
--

CREATE TABLE `type_asset_item5` (
  `id_type_asset_item` int(11) NOT NULL,
  `type_asset_item` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type_of_vendor`
--

CREATE TABLE `type_of_vendor` (
  `id_type_of_vendor` int(11) NOT NULL,
  `type_of_vendor` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `max_score` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_of_vendor`
--

INSERT INTO `type_of_vendor` (`id_type_of_vendor`, `type_of_vendor`, `description`, `max_score`) VALUES
(2, 'Manpower', NULL, 10.00),
(3, 'Chemical & Packaging', NULL, 30.00),
(4, 'CNO', NULL, 22.00),
(5, '231', '231', NULL),
(6, 'Listrik', 'Vendor Khusus Kelistrikan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `auth_key` varchar(250) NOT NULL,
  `status` smallint(6) NOT NULL,
  `password_reset_token` varchar(250) NOT NULL,
  `user_level` varchar(250) DEFAULT 'ADM',
  `role` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `email`, `password_hash`, `auth_key`, `status`, `password_reset_token`, `user_level`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '$2y$13$wUP89zDmoJhxVQ55PqilV.K/5e3.K2RSRuhHShtr5zVJzSXZtBFJS', 'GL63CdJxr0wI2BuKh7JNC8rJU7XNUY24', 10, 'asdas', 'admin', 20, 1530780329, 1557132823),
(36, 'admin4', 'admin45', 'admin@gmail.com', '$2y$13$wUP89zDmoJhxVQ55PqilV.K/5e3.K2RSRuhHShtr5zVJzSXZtBFJS', 'u1XDKCQQm7FlAdN5y4bUGZZaxXTk1laX', 10, 'yUM8pRVQCiqpDMhLHNi_LzxLtSZN4_jO_1565786618', 'admin', 10, 1565786618, 1565787037),
(37, 'admin5 kelima', 'admin5', 'admin@gmail.com', '$2y$13$D.b3Blb001f2uuDt767LZeIOaTHniVmLMseitoJlXQZli38vBTylq', 'PpmWggpvXU8pyf_rw0A4khueBDLBb2FO', 10, 'jFsygbE0MmjufTXvz6dOtRiM_4Kjppv5_1565787233', 'admin', 10, 1565787232, 1565790121),
(38, 'teknisi1', 'teknisi1', 'teknisi1@mail.com', '$2y$13$UTMRlIenh4pdh3v2hJwVX..ggQ.4GhoWFcdqNhg1g36RlEMHj0f2W', '2M9Rhmbc0hCbuLz7lZDWjq9CEd8s5ilD', 10, 'DiIogIXALQJf-ENT6sXtY-mejI6C1mba_1655873078', 'engineer', 10, 1655873078, 1655873328),
(39, 'supervisor1', 'supervisor1', 'supervisor1@mail.com', '$2y$13$SGQ8o.ftyEUe56CZjK55Kei9.fs9MJ0YjxHEl3q2v7GCtSpJf1VXi', '8sVS3_040qf-J9US_YTSzz2PUz1Q1OKv', 10, 'yuklvpGGmD2gsFkEQAtUuAZLk2Rs9Hpz_1655873184', 'engineer-supervisor', 10, 1655873184, 1655873320);

-- --------------------------------------------------------

--
-- Table structure for table `user_perusahaan`
--

CREATE TABLE `user_perusahaan` (
  `id_user_perusahaan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_ip_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_perusahaan`
--

INSERT INTO `user_perusahaan` (`id_user_perusahaan`, `id_user`, `id_perusahaan`, `created_date`, `created_user`, `created_ip_address`) VALUES
(1, 5, 1, '0000-00-00 00:00:00', 0, ''),
(2, 8, 15, '0000-00-00 00:00:00', 0, ''),
(3, 1, 2, '0000-00-00 00:00:00', 0, ''),
(4, 10, 1, '2019-02-25 06:14:48', 0, '::1'),
(5, 12, 99, '2019-03-08 04:20:19', 0, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id_vendor` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `company` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `zip` varchar(200) NOT NULL,
  `country` varchar(150) NOT NULL,
  `email_address` varchar(250) DEFAULT NULL,
  `phone_number` varchar(150) DEFAULT NULL,
  `id_type_of_vendor` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip_address` varchar(100) DEFAULT NULL,
  `created_id_user` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id_vendor`, `name`, `company`, `address`, `city`, `state`, `zip`, `country`, `email_address`, `phone_number`, `id_type_of_vendor`, `created_date`, `created_time`, `created_ip_address`, `created_id_user`, `id_user`) VALUES
(1, 'Amanda', 'PT. Amanda Gosari', 'Jl. Jakarta 28 Jakrta Urta', 'Bandung', 'Jakarta', '8290', 'Indonesia', 'sudirman@gmail.com', '8729123', 2, NULL, NULL, NULL, NULL, NULL),
(2, 'PT. Bara Patin Keren (CPKO)', 'Bara Group', 'Jl. Prabudimunturi 20 Bangka', 'Bandung City', '2019', '901', 'Indonesia', 'pt.b@gmail.com', '022 (02901)', 1, NULL, NULL, NULL, NULL, 14),
(3, 'Supplier Type CPKO', 'PT. Baruna', 'Jl. Cilacap 12 Jakarta', 'Indonesia', 'Jawa Barat', '09230', 'Indonesia', 'supplier@gmial.ocm', '0912038120', 1, NULL, NULL, NULL, NULL, 16),
(4, 'Marga Mulyo (CNO)', 'CNO marga mulya', 'Jl. Gandung Mangu 12 Surabayar', 'Surabaya', 'Jawa Timur', '8123102', 'Indonesia', 'cno@gmail.com', '081203210', 4, NULL, NULL, NULL, NULL, NULL),
(5, 'PT. MegaMendung Kuat Setia (Man Power)', 'PT. MegaMendung', 'Jl. Delanggu 84 Badung', 'Bandung', 'Jawa Tengah', '09123', 'Indonesi', 'manpower@gmail.com', '08232049', 2, NULL, NULL, NULL, NULL, 18),
(6, 'Chemical Daya Perdana (Chemical)', 'Chemical Daya Perdana', 'Jl. Gilang Dirga 40 Bandugn', 'Jakarta', 'DKI Jakarta', '0801231', 'Indonesia', 'chemical@gmail.com', '08123203', 3, NULL, NULL, NULL, NULL, 15),
(7, 'Agung Podomoro', 'B', 'a', 's', 'asd', 'as', 'as', 'sd', 'asda', 1, NULL, NULL, NULL, NULL, 38),
(8, 'Chemical Dwi Tunggal', 'Tunggal Nenggala', 'Jl. Jakarta Barat 28', 'Bandung', '8901', '89019', 'Indonesia', 'sudirman@gmail.com', '8729123', 3, NULL, NULL, NULL, NULL, 33),
(9, 'PT. Amanda Gosari XXyas', 'PT. Amanda Gosari', 'Jl. Jakarta 28 Jakrta Urta', 'Bandung', 'Jakarta', '8290', 'Indonesia', 'sudirman@gmail.com', '8729123', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id_warehouse` bigint(20) NOT NULL,
  `nama_warehouse` varchar(250) NOT NULL,
  `kode_warehouse` varchar(100) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id_warehouse`, `nama_warehouse`, `kode_warehouse`, `alamat`, `deskripsi`, `longitude`, `latitude`) VALUES
(1, 'warehouse Bawah', 'GB', 'Alamat warehouse Bawah', '', '', ''),
(6, 'Gudang-Selatan', 'GS', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_code`
--
ALTER TABLE `account_code`
  ADD PRIMARY KEY (`id_account_code`),
  ADD KEY `id_account_code_parent` (`id_account_code_parent`);

--
-- Indexes for table `app_entity_config`
--
ALTER TABLE `app_entity_config`
  ADD PRIMARY KEY (`id_app_entity_config`),
  ADD KEY `entity` (`entity`);

--
-- Indexes for table `app_field_config`
--
ALTER TABLE `app_field_config`
  ADD PRIMARY KEY (`id_app_field_config`),
  ADD KEY `classname` (`classname`,`fieldname`),
  ADD KEY `varian_group` (`varian_group`);

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id_app_setting`);

--
-- Indexes for table `app_vocabulary`
--
ALTER TABLE `app_vocabulary`
  ADD PRIMARY KEY (`id_app_vocabulary`),
  ADD KEY `master_vocab` (`master_vocab`);

--
-- Indexes for table `asset_code`
--
ALTER TABLE `asset_code`
  ADD PRIMARY KEY (`id_asset_code`);

--
-- Indexes for table `asset_dismantle_order`
--
ALTER TABLE `asset_dismantle_order`
  ADD PRIMARY KEY (`id_asset_dismantle_order`),
  ADD KEY `id_pegawai` (`id_pegawai`,`type_order`,`id_job_class`,`id_asset_item`,`id_customer`),
  ADD KEY `id_mst_status_dismantle_order` (`id_mst_status_dismantle_order`);

--
-- Indexes for table `asset_dismantle_received`
--
ALTER TABLE `asset_dismantle_received`
  ADD PRIMARY KEY (`id_asset_dismantle_received`),
  ADD KEY `id_asset_dismantle_order` (`id_asset_dismantle_order`,`id_warehouse`);

--
-- Indexes for table `asset_item`
--
ALTER TABLE `asset_item`
  ADD PRIMARY KEY (`id_asset_item`),
  ADD KEY `id_asset_master` (`id_asset_master`),
  ADD KEY `id_asset_received` (`id_asset_received`),
  ADD KEY `id_asset_item_location` (`id_asset_item_location`);

--
-- Indexes for table `asset_item_condition_log`
--
ALTER TABLE `asset_item_condition_log`
  ADD PRIMARY KEY (`id_asset_item_condition_log`),
  ADD KEY `id_asset_item` (`id_asset_item`,`condition_log_date`),
  ADD KEY `id_mst_status_condition` (`id_mst_status_condition`);

--
-- Indexes for table `asset_item_deletion`
--
ALTER TABLE `asset_item_deletion`
  ADD PRIMARY KEY (`id_asset_item_deletion`);

--
-- Indexes for table `asset_item_distribution_current`
--
ALTER TABLE `asset_item_distribution_current`
  ADD PRIMARY KEY (`id_asset_item_distribution_current`),
  ADD KEY `id_asset_item` (`id_asset_item`,`distribute_to`,`id_pegawai`,`id_departement`,`id_asset_item_location`,`status`,`start_date`,`start_month`,`start_year`);

--
-- Indexes for table `asset_item_distribution_log`
--
ALTER TABLE `asset_item_distribution_log`
  ADD PRIMARY KEY (`id_asset_item_distribution_log`),
  ADD KEY `id_asset_item` (`id_asset_item`,`distribute_to`,`id_pegawai`,`id_departement`,`id_asset_item_location`,`status`,`start_date`,`start_month`,`start_year`);

--
-- Indexes for table `asset_item_incident`
--
ALTER TABLE `asset_item_incident`
  ADD PRIMARY KEY (`id_asset_item_incident`),
  ADD KEY `id_asset_item` (`id_asset_item`,`incident_date`);

--
-- Indexes for table `asset_item_location`
--
ALTER TABLE `asset_item_location`
  ADD PRIMARY KEY (`id_asset_item_location`),
  ADD KEY `id_asset_master` (`id_asset_master`),
  ADD KEY `id_kabupaten` (`id_kabupaten`,`id_propinsi`,`id_kecamatan`,`id_kelurahan`);

--
-- Indexes for table `asset_item_maintenance`
--
ALTER TABLE `asset_item_maintenance`
  ADD PRIMARY KEY (`id_asset_item_maintenance`),
  ADD KEY `id_asset_item` (`id_asset_item`,`id_asset_master_criteria_maintenance`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `asset_item_repair`
--
ALTER TABLE `asset_item_repair`
  ADD PRIMARY KEY (`id_asset_item_repair`),
  ADD KEY `id_asset_item` (`id_asset_item`,`id_asset_item_incident`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `asset_item_tracking_device`
--
ALTER TABLE `asset_item_tracking_device`
  ADD PRIMARY KEY (`id_asset_item_tracking_device`),
  ADD KEY `id_asset_item` (`id_asset_item`,`id_device`);

--
-- Indexes for table `asset_item_tracking_device_log`
--
ALTER TABLE `asset_item_tracking_device_log`
  ADD PRIMARY KEY (`id_asset_item_tracking_device_log`),
  ADD KEY `id_asset_item` (`id_asset_item`,`id_device`),
  ADD KEY `id_asset_item_tracking_device` (`id_asset_item_tracking_device`);

--
-- Indexes for table `asset_item_tracking_log`
--
ALTER TABLE `asset_item_tracking_log`
  ADD PRIMARY KEY (`id_asset_item_tracking_log`);

--
-- Indexes for table `asset_master`
--
ALTER TABLE `asset_master`
  ADD PRIMARY KEY (`id_asset_master`);

--
-- Indexes for table `asset_master_criteria_maintenance`
--
ALTER TABLE `asset_master_criteria_maintenance`
  ADD PRIMARY KEY (`id_asset_master_criteria_maintenance`);

--
-- Indexes for table `asset_master_field_config`
--
ALTER TABLE `asset_master_field_config`
  ADD PRIMARY KEY (`id_asset_master_field_config`);

--
-- Indexes for table `asset_master_location`
--
ALTER TABLE `asset_master_location`
  ADD PRIMARY KEY (`id_asset_master_location`),
  ADD KEY `id_asset_master` (`id_asset_master`);

--
-- Indexes for table `asset_master_map_year`
--
ALTER TABLE `asset_master_map_year`
  ADD PRIMARY KEY (`id_asset_master_map_year`),
  ADD KEY `id_asset_master` (`id_asset_master`,`year`);

--
-- Indexes for table `asset_master_request`
--
ALTER TABLE `asset_master_request`
  ADD PRIMARY KEY (`id_asset_master_request`),
  ADD KEY `id_asset_master` (`id_asset_master`,`request_date`);

--
-- Indexes for table `asset_master_structure`
--
ALTER TABLE `asset_master_structure`
  ADD PRIMARY KEY (`id_asset_master_structure`),
  ADD KEY `id_asset_master_parent` (`id_asset_master_parent`,`id_asset_master_child`);

--
-- Indexes for table `asset_received`
--
ALTER TABLE `asset_received`
  ADD PRIMARY KEY (`id_asset_received`),
  ADD KEY `id_asset_master` (`id_asset_master`);

--
-- Indexes for table `asset_received_to_item`
--
ALTER TABLE `asset_received_to_item`
  ADD PRIMARY KEY (`id_asset_received_to_item`),
  ADD KEY `id_asset_received` (`id_asset_received`),
  ADD KEY `id_asset_item` (`id_asset_item`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_role_name`
--
ALTER TABLE `auth_role_name`
  ADD PRIMARY KEY (`id_auth_role_name`),
  ADD KEY `auth_item_name` (`auth_item_name`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cpanel_leftmenu`
--
ALTER TABLE `cpanel_leftmenu`
  ADD PRIMARY KEY (`id_leftmenu`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id_departement`);

--
-- Indexes for table `hrm_pegawai`
--
ALTER TABLE `hrm_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `jenis_kelamin` (`jenis_kelamin`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `agama` (`agama`),
  ADD KEY `status_pernikahan` (`status_pernikahan`),
  ADD KEY `golongan_darah` (`golongan_darah`),
  ADD KEY `cid` (`cid`),
  ADD KEY `id_hrm_status_pegawai` (`id_hrm_status_pegawai`),
  ADD KEY `id_hrm_status_organik` (`id_hrm_status_organik`),
  ADD KEY `pdk_id_tingkatpendidikan` (`pdk_id_tingkatpendidikan`),
  ADD KEY `reg_status_pegawai` (`reg_status_pegawai`),
  ADD KEY `id_perusahaan` (`id_perusahaan`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `job_class`
--
ALTER TABLE `job_class`
  ADD PRIMARY KEY (`id_job_class`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `id_propinsi` (`id_propinsi`);

--
-- Indexes for table `kamus_petunjuk`
--
ALTER TABLE `kamus_petunjuk`
  ADD PRIMARY KEY (`id_kamus_petunjuk`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`),
  ADD KEY `id_kecamatan` (`id_kecamatan`),
  ADD KEY `kodepos` (`kodepos`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `id_kabupaten` (`id_kabupaten`,`id_propinsi`,`id_kecamatan`,`id_kelurahan`);

--
-- Indexes for table `location_unit`
--
ALTER TABLE `location_unit`
  ADD PRIMARY KEY (`id_location_unit`),
  ADD KEY `id_location` (`id_location`,`id_owner`);

--
-- Indexes for table `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id_log_activity`),
  ADD KEY `log_date` (`log_date`,`tablename`,`related_id`,`id_activity`,`userid`);

--
-- Indexes for table `mobile_application`
--
ALTER TABLE `mobile_application`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mobile_session`
--
ALTER TABLE `mobile_session`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `mst_accrual`
--
ALTER TABLE `mst_accrual`
  ADD PRIMARY KEY (`id_mst_accrual`);

--
-- Indexes for table `mst_log_activity`
--
ALTER TABLE `mst_log_activity`
  ADD PRIMARY KEY (`id_mst_log_activity`);

--
-- Indexes for table `mst_status1`
--
ALTER TABLE `mst_status1`
  ADD PRIMARY KEY (`id_mst_status`);

--
-- Indexes for table `mst_status2`
--
ALTER TABLE `mst_status2`
  ADD PRIMARY KEY (`id_mst_status`);

--
-- Indexes for table `mst_status3`
--
ALTER TABLE `mst_status3`
  ADD PRIMARY KEY (`id_mst_status`);

--
-- Indexes for table `mst_status4`
--
ALTER TABLE `mst_status4`
  ADD PRIMARY KEY (`id_mst_status`);

--
-- Indexes for table `mst_status5`
--
ALTER TABLE `mst_status5`
  ADD PRIMARY KEY (`id_mst_status`);

--
-- Indexes for table `mst_status_condition`
--
ALTER TABLE `mst_status_condition`
  ADD PRIMARY KEY (`id_mst_status_condition`);

--
-- Indexes for table `mst_status_dismantle_order`
--
ALTER TABLE `mst_status_dismantle_order`
  ADD PRIMARY KEY (`id_mst_status_dismantle_order`);

--
-- Indexes for table `mst_status_received`
--
ALTER TABLE `mst_status_received`
  ADD PRIMARY KEY (`id_status_received`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_owner`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `product_marketplace`
--
ALTER TABLE `product_marketplace`
  ADD PRIMARY KEY (`id_product_marketplace`),
  ADD KEY `id_marketplace` (`id_marketplace`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id_propinsi`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`id_role_menu`);

--
-- Indexes for table `type_asset1`
--
ALTER TABLE `type_asset1`
  ADD PRIMARY KEY (`id_type_asset`);

--
-- Indexes for table `type_asset2`
--
ALTER TABLE `type_asset2`
  ADD PRIMARY KEY (`id_type_asset`);

--
-- Indexes for table `type_asset3`
--
ALTER TABLE `type_asset3`
  ADD PRIMARY KEY (`id_type_asset`);

--
-- Indexes for table `type_asset4`
--
ALTER TABLE `type_asset4`
  ADD PRIMARY KEY (`id_type_asset`);

--
-- Indexes for table `type_asset5`
--
ALTER TABLE `type_asset5`
  ADD PRIMARY KEY (`id_type_asset`);

--
-- Indexes for table `type_asset_item1`
--
ALTER TABLE `type_asset_item1`
  ADD PRIMARY KEY (`id_type_asset_item`);

--
-- Indexes for table `type_asset_item2`
--
ALTER TABLE `type_asset_item2`
  ADD PRIMARY KEY (`id_type_asset_item`);

--
-- Indexes for table `type_asset_item3`
--
ALTER TABLE `type_asset_item3`
  ADD PRIMARY KEY (`id_type_asset_item`);

--
-- Indexes for table `type_asset_item4`
--
ALTER TABLE `type_asset_item4`
  ADD PRIMARY KEY (`id_type_asset_item`);

--
-- Indexes for table `type_asset_item5`
--
ALTER TABLE `type_asset_item5`
  ADD PRIMARY KEY (`id_type_asset_item`);

--
-- Indexes for table `type_of_vendor`
--
ALTER TABLE `type_of_vendor`
  ADD PRIMARY KEY (`id_type_of_vendor`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_perusahaan`
--
ALTER TABLE `user_perusahaan`
  ADD PRIMARY KEY (`id_user_perusahaan`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_code`
--
ALTER TABLE `account_code`
  MODIFY `id_account_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `app_entity_config`
--
ALTER TABLE `app_entity_config`
  MODIFY `id_app_entity_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_field_config`
--
ALTER TABLE `app_field_config`
  MODIFY `id_app_field_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id_app_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `app_vocabulary`
--
ALTER TABLE `app_vocabulary`
  MODIFY `id_app_vocabulary` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `asset_code`
--
ALTER TABLE `asset_code`
  MODIFY `id_asset_code` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_dismantle_order`
--
ALTER TABLE `asset_dismantle_order`
  MODIFY `id_asset_dismantle_order` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `asset_dismantle_received`
--
ALTER TABLE `asset_dismantle_received`
  MODIFY `id_asset_dismantle_received` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_item`
--
ALTER TABLE `asset_item`
  MODIFY `id_asset_item` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `asset_item_condition_log`
--
ALTER TABLE `asset_item_condition_log`
  MODIFY `id_asset_item_condition_log` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_item_deletion`
--
ALTER TABLE `asset_item_deletion`
  MODIFY `id_asset_item_deletion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_item_distribution_current`
--
ALTER TABLE `asset_item_distribution_current`
  MODIFY `id_asset_item_distribution_current` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asset_item_distribution_log`
--
ALTER TABLE `asset_item_distribution_log`
  MODIFY `id_asset_item_distribution_log` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_item_incident`
--
ALTER TABLE `asset_item_incident`
  MODIFY `id_asset_item_incident` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `asset_item_location`
--
ALTER TABLE `asset_item_location`
  MODIFY `id_asset_item_location` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `asset_item_maintenance`
--
ALTER TABLE `asset_item_maintenance`
  MODIFY `id_asset_item_maintenance` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_item_repair`
--
ALTER TABLE `asset_item_repair`
  MODIFY `id_asset_item_repair` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_item_tracking_device`
--
ALTER TABLE `asset_item_tracking_device`
  MODIFY `id_asset_item_tracking_device` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_item_tracking_device_log`
--
ALTER TABLE `asset_item_tracking_device_log`
  MODIFY `id_asset_item_tracking_device_log` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_item_tracking_log`
--
ALTER TABLE `asset_item_tracking_log`
  MODIFY `id_asset_item_tracking_log` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_master`
--
ALTER TABLE `asset_master`
  MODIFY `id_asset_master` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `asset_master_criteria_maintenance`
--
ALTER TABLE `asset_master_criteria_maintenance`
  MODIFY `id_asset_master_criteria_maintenance` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_master_field_config`
--
ALTER TABLE `asset_master_field_config`
  MODIFY `id_asset_master_field_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_master_location`
--
ALTER TABLE `asset_master_location`
  MODIFY `id_asset_master_location` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_master_map_year`
--
ALTER TABLE `asset_master_map_year`
  MODIFY `id_asset_master_map_year` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_master_request`
--
ALTER TABLE `asset_master_request`
  MODIFY `id_asset_master_request` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `asset_master_structure`
--
ALTER TABLE `asset_master_structure`
  MODIFY `id_asset_master_structure` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `asset_received`
--
ALTER TABLE `asset_received`
  MODIFY `id_asset_received` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `asset_received_to_item`
--
ALTER TABLE `asset_received_to_item`
  MODIFY `id_asset_received_to_item` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_role_name`
--
ALTER TABLE `auth_role_name`
  MODIFY `id_auth_role_name` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
  MODIFY `id_departement` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hrm_pegawai`
--
ALTER TABLE `hrm_pegawai`
  MODIFY `id_pegawai` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_class`
--
ALTER TABLE `job_class`
  MODIFY `id_job_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9472;

--
-- AUTO_INCREMENT for table `kamus_petunjuk`
--
ALTER TABLE `kamus_petunjuk`
  MODIFY `id_kamus_petunjuk` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id_kelurahan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id_location` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_unit`
--
ALTER TABLE `location_unit`
  MODIFY `id_location_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `id_log_activity` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mobile_application`
--
ALTER TABLE `mobile_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mobile_session`
--
ALTER TABLE `mobile_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `mst_accrual`
--
ALTER TABLE `mst_accrual`
  MODIFY `id_mst_accrual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_log_activity`
--
ALTER TABLE `mst_log_activity`
  MODIFY `id_mst_log_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_status1`
--
ALTER TABLE `mst_status1`
  MODIFY `id_mst_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_status2`
--
ALTER TABLE `mst_status2`
  MODIFY `id_mst_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_status3`
--
ALTER TABLE `mst_status3`
  MODIFY `id_mst_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_status4`
--
ALTER TABLE `mst_status4`
  MODIFY `id_mst_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_status5`
--
ALTER TABLE `mst_status5`
  MODIFY `id_mst_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_status_condition`
--
ALTER TABLE `mst_status_condition`
  MODIFY `id_mst_status_condition` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mst_status_dismantle_order`
--
ALTER TABLE `mst_status_dismantle_order`
  MODIFY `id_mst_status_dismantle_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_status_received`
--
ALTER TABLE `mst_status_received`
  MODIFY `id_status_received` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id_owner` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_marketplace`
--
ALTER TABLE `product_marketplace`
  MODIFY `id_product_marketplace` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `id_propinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `id_role_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `type_asset1`
--
ALTER TABLE `type_asset1`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_asset2`
--
ALTER TABLE `type_asset2`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_asset3`
--
ALTER TABLE `type_asset3`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `type_asset4`
--
ALTER TABLE `type_asset4`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `type_asset5`
--
ALTER TABLE `type_asset5`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_asset_item1`
--
ALTER TABLE `type_asset_item1`
  MODIFY `id_type_asset_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `type_asset_item2`
--
ALTER TABLE `type_asset_item2`
  MODIFY `id_type_asset_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `type_asset_item3`
--
ALTER TABLE `type_asset_item3`
  MODIFY `id_type_asset_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `type_asset_item4`
--
ALTER TABLE `type_asset_item4`
  MODIFY `id_type_asset_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `type_asset_item5`
--
ALTER TABLE `type_asset_item5`
  MODIFY `id_type_asset_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_of_vendor`
--
ALTER TABLE `type_of_vendor`
  MODIFY `id_type_of_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_perusahaan`
--
ALTER TABLE `user_perusahaan`
  MODIFY `id_user_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id_vendor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id_warehouse` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
