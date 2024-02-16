-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 10:11 AM
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
-- Database: `mgtasset_musim`
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
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `id_approval` varchar(20) NOT NULL,
  `date_approval` date NOT NULL,
  `nama_approval` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'APP-NAME', 0, 'Musim Asset Management'),
(2, 'APP-NAME-SINGKAT', 0, 'ASET MUSIM'),
(3, 'APP-NAME-SINGKATAN', 0, 'A-MUS'),
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
  `id_supervisor` bigint(20) NOT NULL,
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

INSERT INTO `asset_dismantle_order` (`id_asset_dismantle_order`, `id_supervisor`, `type_order`, `id_job_class`, `order_date`, `order_number`, `order_increment`, `year`, `id_asset_item`, `id_customer`, `notes`, `created_date`, `created_id_user`, `created_ip_address`, `id_mst_status_dismantle_order`) VALUES
(1, 2, 'INSTALLATION', 1, '2022-06-22', '', NULL, 231, 1, 1, 'sfsdfsdf', NULL, NULL, NULL, 2),
(2, 2, 'UNINSTALLATION', 1, '2022-06-22', '', NULL, NULL, 1, 1, '', NULL, NULL, NULL, 2),
(3, 2, 'UNINSTALLATION', 1, '2022-06-22', '', NULL, NULL, 1, 1, 'sdfgh', NULL, NULL, NULL, 2),
(4, 3, 'UNINSTALLATION', 1, '2022-06-22', '', NULL, NULL, 1, 1, '12312312', NULL, NULL, NULL, 2),
(5, 2, 'UNINSTALLATION', 1, '2022-07-15', '', NULL, NULL, 1, 1, '', NULL, NULL, NULL, 2),
(6, 2, 'UNINSTALLATION', 1, '2022-07-16', '', NULL, NULL, 7, 3, '', NULL, NULL, NULL, 2),
(7, 2, 'UNINSTALLATION', 1, '2022-07-18', '', NULL, NULL, 1, 1, 'ASAP', NULL, NULL, NULL, 2);

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

--
-- Dumping data for table `asset_dismantle_received`
--

INSERT INTO `asset_dismantle_received` (`id_asset_dismantle_received`, `id_asset_dismantle_order`, `id_warehouse`, `received_date`, `notes`, `is_approved`, `approval_user_id`, `approval_date`, `approval_ip_address`) VALUES
(1, 1, 1, '2022-06-05', 'halo', 0, NULL, NULL, NULL),
(2, 2, 6, '2022-07-13', 'halo', 0, NULL, NULL, NULL),
(3, 3, 1, '2022-07-13', 'halo', 0, NULL, NULL, NULL),
(4, 4, 1, '2022-07-06', 'halo', 0, NULL, NULL, NULL),
(5, 1, 1, '2022-07-14', 'halo', 0, NULL, NULL, NULL),
(6, 2, 6, '2022-07-01', 'hai', 0, NULL, NULL, NULL),
(7, 3, 1, '2022-06-01', 'halo', 0, NULL, NULL, NULL),
(8, 4, 6, '2022-07-15', 'halo', 0, NULL, NULL, NULL),
(9, 1, 1, '2022-07-15', 'halo', 1, 1, '2022-07-15 00:00:00', '2'),
(10, 1, 1, '2022-07-15', 'halo', 1, 1, '2022-07-15 00:00:00', '2'),
(11, 5, 1, '2022-07-15', '', 0, NULL, NULL, NULL),
(12, 1, 1, '2022-07-14', '', 1, 1, '2022-07-15 00:00:00', '2'),
(13, 2, 1, '2022-07-15', '', 2, 1, '2022-07-15 00:00:00', '2'),
(14, 6, 6, '2022-07-16', '', 0, NULL, NULL, NULL),
(15, 7, 0, '0000-00-00', NULL, 1, NULL, NULL, '');

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
  `kode_barcode` varchar(50) DEFAULT NULL,
  `qrcode` varchar(250) DEFAULT NULL,
  `link_code` varchar(500) DEFAULT NULL,
  `id_customer` bigint(20) NOT NULL,
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

INSERT INTO `asset_item` (`id_asset_item`, `id_asset_master`, `number1`, `number2`, `number3`, `kode_barcode`, `qrcode`, `link_code`, `id_customer`, `picture1`, `picture2`, `picture3`, `picture4`, `picture5`, `caption_picture1`, `caption_picture2`, `caption_picture3`, `caption_picture4`, `caption_picture5`, `id_asset_received`, `id_asset_item_location`, `id_type_asset_item1`, `id_type_asset_item2`, `id_type_asset_item3`, `id_type_asset_item4`, `id_type_asset_item5`, `label1`, `label2`, `label3`, `label4`, `label5`, `file1`, `file2`, `file3`, `status_active`) VALUES
(1, 1, '1', '12233', NULL, '2001000000005', NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 10, 100, 0, 0, 0, '', '', '', '', '', '', '', '', 1),
(14, 1, '2', '5', NULL, '2001400000001', NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', 0),
(15, 1, '3', '3', NULL, '2001500000000', NULL, NULL, 1, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', 0);

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
  `status` varchar(250) DEFAULT NULL,
  `number_series` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `id_supplier` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_master`
--

INSERT INTO `asset_master` (`id_asset_master`, `asset_name`, `id_asset_code`, `asset_code`, `id_account_code`, `id_mst_accrual`, `id_type_asset1`, `id_type_asset2`, `id_type_asset3`, `id_type_asset4`, `id_type_asset5`, `attribute1`, `attribute2`, `attribute3`, `attribute4`, `attribute5`, `deskripsi`, `status`, `number_series`, `date`, `id_supplier`) VALUES
(1, 'SAPU', 1, 'SPU', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sapu', '2', NULL, '2022-07-17', 1),
(105, 'PISAU', NULL, '0123', NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2023-01-19', 1),
(106, 'PRINTER', NULL, 'P11', NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2023-01-25', 1);

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
('admin', '1', 1530780329),
('admin', '37', 1565787233),
('admin', '7', 1552641965),
('engineer', '38', 1655873078),
('engineer', '41', 1657287638),
('engineer-supervisor', '39', 1655873184),
('engineer-supervisor', '43', 1658101331),
('Manager Service', '36', 1565786618),
('Manager Service', '42', 1658046232),
('member', '13', 1563241503),
('member', '14', 1547712959),
('member', '15', 1547712959),
('member', '16', 1563241503),
('member', '18', 1547712959),
('member', '32', 1565784712),
('member', '33', 1565785037),
('member', '38', 1565820068),
('member', '39', 1657946697);

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
('/asset-dismantle-order-approval/*', 2, NULL, NULL, NULL, 1657855233, 1657855233),
('/asset-dismantle-order-done/*', 2, NULL, NULL, NULL, 1655873975, 1655873975),
('/asset-dismantle-order/*', 2, NULL, NULL, NULL, 1655870460, 1655870460),
('/asset-in-asset/*', 2, NULL, NULL, NULL, NULL, NULL),
('/asset-in-location/*', 2, NULL, NULL, NULL, 1669349265, 1669349265),
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
('/asset-item-moving/*', 2, NULL, NULL, NULL, 1674025583, 1674025583),
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
('/asset-master-agregate/*', 2, NULL, NULL, NULL, 1674723594, 1674723594),
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
('/dashboard-dismantle/*', 2, NULL, NULL, NULL, 1657857790, 1657857790),
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
('/job-class/*', 2, NULL, NULL, NULL, 1657687006, 1657687006),
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
('/regional/*', 2, NULL, NULL, NULL, 1657972141, 1657972141),
('/request-pick/*', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/create', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/delete', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/index', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/update', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/request-pick/view', 2, NULL, NULL, NULL, 1567478656, 1567478656),
('/search-asset/*', 2, NULL, NULL, NULL, 1669339380, 1669339380),
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
('/supervisor/*', 2, NULL, NULL, NULL, 1658063975, 1658063975),
('/supervisor/create', 2, NULL, NULL, NULL, 1658072652, 1658072652),
('/supervisor/delete', 2, NULL, NULL, NULL, 1658072652, 1658072652),
('/supervisor/index', 2, NULL, NULL, NULL, 1658072652, 1658072652),
('/supervisor/update', 2, NULL, NULL, NULL, 1658072652, 1658072652),
('/supervisor/view', 2, NULL, NULL, NULL, 1658072652, 1658072652),
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
('/witel/*', 2, NULL, NULL, NULL, 1658063533, 1658063533),
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
('Manager Service', 1, 'Admin mengatur Asset', NULL, NULL, 1657965195, 1657965311),
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
('admin', '/asset-in-location/*'),
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
('admin', '/asset-item-moving/*'),
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
('admin', '/asset-master-agregate/*'),
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
('admin', '/dashboard-dismantle/*'),
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
('admin', '/job-class/*'),
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
('admin', '/regional/*'),
('admin', '/request-pick/*'),
('admin', '/request-pick/create'),
('admin', '/request-pick/delete'),
('admin', '/request-pick/index'),
('admin', '/request-pick/update'),
('admin', '/request-pick/view'),
('admin', '/search-asset/*'),
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
('admin', '/supervisor/*'),
('admin', '/supervisor/create'),
('admin', '/supervisor/delete'),
('admin', '/supervisor/index'),
('admin', '/supervisor/update'),
('admin', '/supervisor/view'),
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
('admin', '/witel/*'),
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
('engineer', '/asset-dismantle-order-approval/*'),
('engineer', '/asset-dismantle-order-done/*'),
('engineer-supervisor', '/asset-dismantle-order-approval/*'),
('engineer-supervisor', '/asset-dismantle-order-done/*'),
('engineer-supervisor', '/asset-dismantle-order/*'),
('engineer-supervisor', '/dashboard-dismantle/*'),
('engineer-supervisor', '/dashboard/*'),
('engineer-supervisor', 'member'),
('Manager Service', '/asset-dismantle-order-approval/*'),
('Manager Service', 'admin'),
('Manager Service', 'member'),
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
(2, 'engineer-supervisor', 'Supervisor', 1, 1),
(3, 'admin', 'Admin Data', 1, 1),
(4, 'Manager Service', 'Manager Service', 1, 1);

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
(2000, 0, 1, 'Dashboard', '', 'Dashboard', 'Dashboard', 'dashboard/index', 0, 'Manager Service, engineer-supervisor', '', 1),
(2001, 2000, 0, 'Utama', '', 'Utama', 'Utama', 'dashboard-dismantle/index', 0, 'Manager Service, engineer-supervisor', 'MOBILE_TOP', 1),
(11000, 0, 1, 'Data Barang', 'clone', 'Data Barang', 'Data Barang', 'asset-in-asset', 0, 'admin', '', 1),
(11001, 11000, 0, 'Master Asset', 'firefox', 'Master Asset', 'Master Asset', 'asset-master-agregate/index', 0, 'admin', 'MOBILE_TOP', 1),
(11002, 11000, 0, 'Data QRcode', 'firefox', 'Data QRcode', 'Data QRcode', 'asset-item-main/index', 0, 'admin', 'MOBILE_TOP', 1),
(11200, 0, 1, 'Penerimaan Aset', '', 'Penerimaan Aset', 'Penerimaan Aset', '#', 0, 'admin', '', 1),
(11201, 11200, 0, 'Penerimaan Aset', '', 'Penerimaan Aset', 'Penerimaan Aset', 'asset-received/index', 0, 'admin', 'MOBILE_TOP', 1),
(11202, 11200, 0, 'Laporan Penerimaan Aset', '', 'Laporan Penerimaan Aset', 'Laporan Penerimaan Aset', 'asset-received/report', 0, 'admin', 'MOBILE_TOP', 1),
(11203, 11200, 0, 'Penerimaan Barang di Gudang', 'firefox', 'Penerimaan Barang di Gudang', 'Penerimaan Barang di Gudang', 'asset-dismantle-order-done/index', 0, 'engineer-supervisor', 'MOBILE_TOP', 0),
(11900, 0, 1, 'Evaluasi Aset', '', 'Evaluasi Aset', 'Evaluasi Aset', '#', 0, 'admin', '', 1),
(11901, 11900, 0, 'Utilisasi Aset', '', 'Utilisasi Aset', 'Utilisasi Aset', 'evaluation/utilization', 0, 'admin', 'MOBILE_TOP', 0),
(11902, 11900, 0, 'Availabitily Aset', '', 'Availabitily Aset', 'Availabitily Aset', 'evaluation/availability', 0, 'admin', 'MOBILE_TOP', 0),
(11903, 11900, 0, 'Kualitas Aset', '', 'Kualitas Aset', 'Kualitas Aset', 'evaluation/current-quality', 0, 'admin', 'MOBILE_TOP', 0),
(11904, 11900, 0, 'Nilai & Umur Ekonomis', '', 'Nilai & Umur Ekonomis', 'Nilai & Umur Ekonomis', 'evaluation/economic-age', 0, 'admin', 'MOBILE_TOP', 1),
(11905, 11900, 0, 'Regional', 'barcode', 'Regional', 'Regional', 'regional/index', 0, 'admin', 'MOBILE_TOP', 0),
(11906, 11900, 0, 'Witel', 'barcode', 'Witel', 'Witel', 'witel/index', 0, 'admin', 'MOBILE_TOP', 0),
(22000, 0, 1, 'Data Master', '', 'Data Master', 'Data Master', '#', 0, 'admin', '', 1),
(22001, 22000, 0, 'Kamus Petujuk', '', 'Kamus Petujuk', 'Kamus Petujuk', 'kamus-petunjuk/index', 0, 'admin', 'MOBILE_TOP', 0),
(22002, 22000, 0, 'Type Asset 1', '', 'Type Asset 1', 'Type Asset 1', 'type-asset1-main/index', 0, 'admin', 'MOBILE_TOP', 1),
(22003, 22000, 0, 'Type Asset 2', '', 'Type Asset 2', 'Type Asset 2', 'type-asset2/index', 0, 'admin', 'MOBILE_TOP', 1),
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
  `latitude` varchar(60) NOT NULL,
  `longitude` varchar(60) NOT NULL,
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

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat`, `alamat_lain`, `latitude`, `longitude`, `id_kabupaten`, `nomor_telepon`, `email`, `attribute1`, `attribute2`, `attribute3`) VALUES
(1, 'Kampung Daun', 'Jl. Gajah', 'Jl. 12355', '-6.89585551921227', '107.65261137433164', 1112, '09182312', 'kampungdaun@gmail.com', NULL, NULL, NULL),
(3, 'Pak S', 'Bandung', 'Bandung Lain', '-6.89585551921227', '107.65261137433164', 1, '0819210', 'sinung@gmail.com', NULL, NULL, NULL),
(4, 'pak  banu', 'jl.123', 'jl. 321', '-6.89585551921227', '107.65261137433164', 1, '08652211772', 'hai.halo@gmail.com', NULL, NULL, NULL);

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
  `id_supervisor` bigint(20) NOT NULL,
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

INSERT INTO `hrm_pegawai` (`id_pegawai`, `id_perusahaan`, `userid`, `cid`, `no_dossier`, `NIP`, `id_supervisor`, `nama_lengkap`, `foto`, `tempat_lahir`, `tanggal_lahir`, `usia`, `usia_lebih_bulan`, `jenis_kelamin`, `golongan_darah`, `tinggi_badan`, `berat_badan`, `agama`, `status_pernikahan`, `no_identitas_pribadi`, `NPWP`, `no_kartu_kesehatan`, `no_kartu_tenagakerja`, `kartu_kesehatan`, `no_kartu_keluarga`, `scan_ktp`, `scan_bpjs`, `scan_npwp`, `scan_paraf`, `scan_kk`, `scan_tandatangan`, `id_hrm_status_pegawai`, `id_hrm_status_organik`, `status_tenaga_kerja`, `reg_tanggal_masuk`, `reg_tanggal_diangkat`, `reg_tanggal_training`, `reg_status_pegawai`, `tanggal_mpp`, `tanggal_pensiun`, `tanggal_terminasi`, `id_hrm_mst_jenis_terminasi_bi`, `gelar_akademik`, `gelar_profesi`, `pdk_id_tingkatpendidikan`, `pdk_sekolah_terakhir`, `pdk_jurusan_terakhir`, `pdk_ipk_terakhir`, `pdk_tahun_lulus`, `alamat_termutakhir`, `alamat_sesuai_identitas`, `mobilephone1`, `mobilephone2`, `telepon_rumah`, `fax_rumah`, `email1`, `email2`, `jbt_id_jabatan`, `jbt_jabatan`, `jbt_id_tingkat_jabatan`, `jbt_no_sk_jabatan`, `jbt_tgl_keputusan`, `jbt_tanggal_berlaku`, `jbt_keterangan_mutasi`, `pkt_id_pangkat`, `pkt_no_sk`, `pkt_tgl_keputusan`, `pkt_tgl_berlaku`, `pkt_gaji_pokok`, `pkt_id_jenis_kenaikan_pangkat`, `pkt_eselon`, `pkt_ruang`, `pos_id_hrm_kantor`, `pos_id_hrm_unit_kerja`, `pos_kantor`, `sta_total_hukuman_disiplin`, `sta_total_penghargaan`, `pst_masabakti_20`, `pst_masabakti_25`, `pst_masabakti_30`, `pst_masabakti_35`, `pst_masabakti_40`, `cuti_besar_terakhir_start`, `cuti_besar_terakhir_end`, `cuti_besar_terakhir_ke`, `cuti_besar_plan_1`, `cuti_besar_plan_2`, `cuti_besar_plan_3`, `cuti_besar_plan_4`, `cuti_besar_plan_5`, `cuti_besar_plan_6`, `cuti_besar_plan_7`, `cuti_besar_ambil_1`, `cuti_besar_ambil_2`, `cuti_besar_ambil_3`, `cuti_besar_ambil_4`, `cuti_besar_ambil_5`, `cuti_besar_ambil_6`, `cuti_besar_ambil_7`, `cuti_besar_aktual_1`, `cuti_besar_aktual_2`, `cuti_besar_aktual_3`, `cuti_besar_aktual_4`, `cuti_besar_aktual_5`, `cuti_besar_aktual_6`, `cuti_besar_aktual_7`, `cuti_besar_aktual_end_1`, `cuti_besar_aktual_end_2`, `cuti_besar_aktual_end_3`, `cuti_besar_aktual_end_4`, `cuti_besar_aktual_end_5`, `cuti_besar_aktual_end_6`, `cuti_besar_aktual_end_7`, `created_date`, `created_user`, `created_ip_address`, `modified_date`, `modified_user`, `modified_ip_address`) VALUES
(2, NULL, '', 0, NULL, '81293182', 0, 'Galih Ginandjar', NULL, 'Bandung', '2022-06-08', 0, NULL, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Bungursari VIII No. 15', '085222884395', NULL, NULL, NULL, 'galih@gmail.com', '', 0, 'Teknisi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '', '', '0000-00-00', '', ''),
(3, NULL, '', 0, NULL, '8938293', 0, 'Irfan Azman', NULL, 'Bandung', '2022-06-08', 0, NULL, 'PRIA', '-', NULL, NULL, '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 'WNI', NULL, NULL, '0000-00-00', 'AKTIF', NULL, NULL, '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '012012', NULL, NULL, NULL, 'irfan@gmail.com', '', 0, 'Teknisi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '', '', '0000-00-00', '', '');

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
(4, '2022-06-14', '2022-06-14 14:59:40', 'asset_item', 'backend\\models\\AssetItem', 8, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:31:{s:13:\"id_asset_item\";i:8;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:31:{s:13:\"id_asset_item\";i:8;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(5, '2022-07-17', '2022-07-17 14:40:44', 'asset_item', 'backend\\models\\AssetItem', 2, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:34:{s:13:\"id_asset_item\";i:2;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:1:\"8\";s:7:\"number2\";s:7:\"2312122\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2002000000002\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:2;s:22:\"id_asset_item_location\";i:2;s:19:\"id_type_asset_item1\";i:10;s:19:\"id_type_asset_item2\";i:200;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:1;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:34:{s:13:\"id_asset_item\";i:2;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:1:\"8\";s:7:\"number2\";s:7:\"2312122\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2002000000002\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:2;s:22:\"id_asset_item_location\";i:2;s:19:\"id_type_asset_item1\";i:10;s:19:\"id_type_asset_item2\";i:200;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:1;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(6, '2022-07-17', '2022-07-17 14:40:50', 'asset_item', 'backend\\models\\AssetItem', 7, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:34:{s:13:\"id_asset_item\";i:7;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2007000000007\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:34:{s:13:\"id_asset_item\";i:7;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:7:\"M11-231\";s:7:\"number2\";s:5:\"12312\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2007000000007\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(7, '2022-07-17', '2022-07-17 14:40:57', 'asset_item', 'backend\\models\\AssetItem', 12, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:34:{s:13:\"id_asset_item\";i:12;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:1:\"2\";s:7:\"number2\";s:1:\"3\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2001200000003\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:34:{s:13:\"id_asset_item\";i:12;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:1:\"2\";s:7:\"number2\";s:1:\"3\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2001200000003\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL),
(8, '2022-07-17', '2022-07-17 14:41:00', 'asset_item', 'backend\\models\\AssetItem', 13, 0, 4, 1, '::1', 'O:24:\"backend\\models\\AssetItem\":17:{s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:34:{s:13:\"id_asset_item\";i:13;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:1:\"4\";s:7:\"number2\";s:1:\"5\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2001300000002\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:34:{s:13:\"id_asset_item\";i:13;s:15:\"id_asset_master\";i:1;s:7:\"number1\";s:1:\"4\";s:7:\"number2\";s:1:\"5\";s:7:\"number3\";N;s:12:\"kode_barcode\";s:13:\"2001300000002\";s:6:\"qrcode\";N;s:9:\"link_code\";N;s:8:\"picture1\";N;s:8:\"picture2\";N;s:8:\"picture3\";N;s:8:\"picture4\";s:0:\"\";s:8:\"picture5\";s:0:\"\";s:16:\"caption_picture1\";N;s:16:\"caption_picture2\";N;s:16:\"caption_picture3\";N;s:16:\"caption_picture4\";N;s:16:\"caption_picture5\";N;s:17:\"id_asset_received\";i:1;s:22:\"id_asset_item_location\";i:1;s:19:\"id_type_asset_item1\";i:0;s:19:\"id_type_asset_item2\";i:0;s:19:\"id_type_asset_item3\";i:0;s:19:\"id_type_asset_item4\";i:0;s:19:\"id_type_asset_item5\";i:0;s:6:\"label1\";s:0:\"\";s:6:\"label2\";s:0:\"\";s:6:\"label3\";s:0:\"\";s:6:\"label4\";s:0:\"\";s:6:\"label5\";s:0:\"\";s:5:\"file1\";s:0:\"\";s:5:\"file2\";s:0:\"\";s:5:\"file3\";s:0:\"\";s:13:\"status_active\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:13:\"temp_picture1\";N;s:13:\"temp_picture2\";N;s:13:\"temp_picture3\";N;s:13:\"temp_picture4\";N;s:13:\"temp_picture5\";N;s:46:\"\0backend\\models\\AssetItem\0statusRecordingIsNew\";b:0;s:41:\"\0backend\\models\\AssetItem\0modelBeforeSave\";N;}', '', NULL);

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
-- Table structure for table `regional`
--

CREATE TABLE `regional` (
  `id_regional` varchar(20) NOT NULL,
  `treg` varchar(200) NOT NULL,
  `id_witel` varchar(20) NOT NULL,
  `nama_witel` varchar(200) NOT NULL,
  `datel` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regional`
--

INSERT INTO `regional` (`id_regional`, `treg`, `id_witel`, `nama_witel`, `datel`) VALUES
('1', 'TREG-1', '1', 'ACEH', 'ACEH'),
('10', 'TREG-1', '10', 'ACEH', 'ACEH'),
('100', 'TREG-1', '100', 'LAMPUNG', 'PRINGSEWU'),
('1000', 'TREG-6', '1000', 'KALTENG', 'Sampit'),
('1001', 'TREG-6', '1001', 'KALTENG', 'Sampit'),
('1002', 'TREG-6', '1002', 'KALTENG', 'Sampit'),
('1003', 'TREG-6', '1003', 'KALTENG', 'Sampit'),
('1004', 'TREG-6', '1004', 'KALTENG', 'Sampit'),
('1005', 'TREG-6', '1005', 'SAMARINDA', 'Bontang'),
('1006', 'TREG-6', '1006', 'SAMARINDA', 'Bontang'),
('1007', 'TREG-6', '1007', 'SAMARINDA', 'Bontang'),
('1008', 'TREG-6', '1008', 'SAMARINDA', 'Bontang'),
('1009', 'TREG-6', '1009', 'SAMARINDA', 'Bontang'),
('101', 'TREG-1', '101', 'LAMPUNG', 'PRINGSEWU'),
('1010', 'TREG-6', '1010', 'SAMARINDA', 'Melak'),
('1011', 'TREG-6', '1011', 'SAMARINDA', 'Melak'),
('1012', 'TREG-6', '1012', 'SAMARINDA', 'Melak'),
('1013', 'TREG-6', '1013', 'SAMARINDA', 'Melak'),
('1014', 'TREG-6', '1014', 'SAMARINDA', 'Samarinda'),
('1015', 'TREG-6', '1015', 'SAMARINDA', 'Samarinda'),
('1016', 'TREG-6', '1016', 'SAMARINDA', 'Samarinda'),
('1017', 'TREG-6', '1017', 'SAMARINDA', 'Samarinda'),
('1018', 'TREG-6', '1018', 'SAMARINDA', 'Samarinda'),
('1019', 'TREG-6', '1019', 'SAMARINDA', 'Samarinda'),
('102', 'TREG-1', '102', 'LAMPUNG', 'PRINGSEWU'),
('1020', 'TREG-6', '1020', 'SAMARINDA', 'Samarinda'),
('1021', 'TREG-6', '1021', 'SAMARINDA', 'Samarinda'),
('1022', 'TREG-6', '1022', 'SAMARINDA', 'Samarinda'),
('1023', 'TREG-6', '1023', 'SAMARINDA', 'Samarinda'),
('1024', 'TREG-6', '1024', 'SAMARINDA', 'Samarinda'),
('1025', 'TREG-6', '1025', 'SAMARINDA', 'Samarinda'),
('1026', 'TREG-6', '1026', 'SAMARINDA', 'Samarinda'),
('1027', 'TREG-7', '1027', 'GORONTALO', 'GORONTALO'),
('1028', 'TREG-7', '1028', 'GORONTALO', 'GORONTALO'),
('1029', 'TREG-7', '1029', 'GORONTALO', 'GORONTALO'),
('103', 'TREG-1', '103', 'MEDAN', 'BINJAI'),
('1030', 'TREG-7', '1030', 'GORONTALO', 'MARISA'),
('1031', 'TREG-7', '1031', 'GORONTALO', 'MARISA'),
('1032', 'TREG-7', '1032', 'GORONTALO', 'MARISA'),
('1033', 'TREG-7', '1033', 'MAKASSAR', 'MAKASSAR'),
('1034', 'TREG-7', '1034', 'MAKASSAR', 'MAKASSAR'),
('1035', 'TREG-7', '1035', 'MAKASSAR', 'MAKASSAR'),
('1036', 'TREG-7', '1036', 'MAKASSAR', 'MAKASSAR'),
('1037', 'TREG-7', '1037', 'MAKASSAR', 'MAKASSAR'),
('1038', 'TREG-7', '1038', 'MAKASSAR', 'MAROS'),
('1039', 'TREG-7', '1039', 'MAKASSAR', 'MAROS'),
('104', 'TREG-1', '104', 'MEDAN', 'BINJAI'),
('1040', 'TREG-7', '1040', 'MAKASSAR', 'MAROS'),
('1041', 'TREG-7', '1041', 'MAKASSAR', 'MAROS'),
('1042', 'TREG-7', '1042', 'MAKASSAR', 'BANTAENG'),
('1043', 'TREG-7', '1043', 'MAKASSAR', 'BANTAENG'),
('1044', 'TREG-7', '1044', 'MAKASSAR', 'BANTAENG'),
('1045', 'TREG-7', '1045', 'MAKASSAR', 'BANTAENG'),
('1046', 'TREG-7', '1046', 'MAKASSAR', 'GOWA'),
('1047', 'TREG-7', '1047', 'MAKASSAR', 'GOWA'),
('1048', 'TREG-7', '1048', 'MAKASSAR', 'GOWA'),
('1049', 'TREG-7', '1049', 'MAKASSAR', 'BONE'),
('105', 'TREG-1', '105', 'MEDAN', 'BINJAI'),
('1050', 'TREG-7', '1050', 'MAKASSAR', 'BONE'),
('1051', 'TREG-7', '1051', 'MALUKU', 'AMBON'),
('1052', 'TREG-7', '1052', 'MALUKU', 'MASOHI'),
('1053', 'TREG-7', '1053', 'MALUKU', 'MASOHI'),
('1054', 'TREG-7', '1054', 'MALUKU', 'MASOHI'),
('1055', 'TREG-7', '1055', 'MALUKU', 'MASOHI'),
('1056', 'TREG-7', '1056', 'MALUKU', 'MASOHI'),
('1057', 'TREG-7', '1057', 'MALUKU', 'MASOHI'),
('1058', 'TREG-7', '1058', 'MALUKU', 'MASOHI'),
('1059', 'TREG-7', '1059', 'MALUKU', 'TUAL'),
('106', 'TREG-1', '106', 'MEDAN', 'BINJAI'),
('1060', 'TREG-7', '1060', 'MALUKU', 'TUAL'),
('1061', 'TREG-7', '1061', 'MALUKU', 'TUAL'),
('1062', 'TREG-7', '1062', 'PAPUA', 'JAYAPURA'),
('1063', 'TREG-7', '1063', 'PAPUA', 'JAYAPURA'),
('1064', 'TREG-7', '1064', 'PAPUA', 'ABEPURA'),
('1065', 'TREG-7', '1065', 'PAPUA', 'ABEPURA'),
('1066', 'TREG-7', '1066', 'PAPUA', 'SENTANI'),
('1067', 'TREG-7', '1067', 'PAPUA', 'SENTANI'),
('1068', 'TREG-7', '1068', 'PAPUA', 'SENTANI'),
('1069', 'TREG-7', '1069', 'PAPUA', 'MERAUKE'),
('107', 'TREG-1', '107', 'MEDAN', 'BINJAI'),
('1070', 'TREG-7', '1070', 'PAPUA', 'MERAUKE'),
('1071', 'TREG-7', '1071', 'PAPUA', 'MERAUKE'),
('1072', 'TREG-7', '1072', 'PAPUA', 'MERAUKE'),
('1073', 'TREG-7', '1073', 'PAPUA', 'TIMIKA'),
('1074', 'TREG-7', '1074', 'PAPUA', 'TIMIKA'),
('1075', 'TREG-7', '1075', 'PAPUA', 'TIMIKA'),
('1076', 'TREG-7', '1076', 'PAPUA BARAT', 'SORONG'),
('1077', 'TREG-7', '1077', 'PAPUA BARAT', 'SORONG'),
('1078', 'TREG-7', '1078', 'PAPUA BARAT', 'BIAK'),
('1079', 'TREG-7', '1079', 'PAPUA BARAT', 'BIAK'),
('108', 'TREG-1', '108', 'MEDAN', 'BINJAI'),
('1080', 'TREG-7', '1080', 'PAPUA BARAT', 'BIAK'),
('1081', 'TREG-7', '1081', 'PAPUA BARAT', 'BIAK'),
('1082', 'TREG-7', '1082', 'PAPUA BARAT', 'FAKFAK'),
('1083', 'TREG-7', '1083', 'PAPUA BARAT', 'FAKFAK'),
('1084', 'TREG-7', '1084', 'PAPUA BARAT', 'MANOKWARI'),
('1085', 'TREG-7', '1085', 'PAPUA BARAT', 'MANOKWARI'),
('1086', 'TREG-7', '1086', 'PAPUA BARAT', 'MANOKWARI'),
('1087', 'TREG-7', '1087', 'PAPUA BARAT', 'MANOKWARI'),
('1088', 'TREG-7', '1088', 'SULSELBAR', 'MAMUJU'),
('1089', 'TREG-7', '1089', 'SULSELBAR', 'MAMUJU'),
('109', 'TREG-1', '109', 'MEDAN', 'LUBUK PAKAM'),
('1090', 'TREG-7', '1090', 'SULSELBAR', 'MAMUJU'),
('1091', 'TREG-7', '1091', 'SULSELBAR', 'MAMUJU'),
('1092', 'TREG-7', '1092', 'SULSELBAR', 'MAMUJU'),
('1093', 'TREG-7', '1093', 'SULSELBAR', 'MAMUJU'),
('1094', 'TREG-7', '1094', 'SULSELBAR', 'PALOPO'),
('1095', 'TREG-7', '1095', 'SULSELBAR', 'PALOPO'),
('1096', 'TREG-7', '1096', 'SULSELBAR', 'PALOPO'),
('1097', 'TREG-7', '1097', 'SULSELBAR', 'PALOPO'),
('1098', 'TREG-7', '1098', 'SULSELBAR', 'PAREPARE'),
('1099', 'TREG-7', '1099', 'SULSELBAR', 'PAREPARE'),
('11', 'TREG-1', '11', 'ACEH', 'ACEH'),
('110', 'TREG-1', '110', 'MEDAN', 'LUBUK PAKAM'),
('1100', 'TREG-7', '1100', 'SULSELBAR', 'PAREPARE'),
('1101', 'TREG-7', '1101', 'SULSELBAR', 'SITOR'),
('1102', 'TREG-7', '1102', 'SULSELBAR', 'SITOR'),
('1103', 'TREG-7', '1103', 'SULSELBAR', 'SITOR'),
('1104', 'TREG-7', '1104', 'SULSELBAR', 'SITOR'),
('1105', 'TREG-7', '1105', 'SULSELBAR', 'SITOR'),
('1106', 'TREG-7', '1106', 'SULSELBAR', 'SITOR'),
('1107', 'TREG-7', '1107', 'SULSELBAR', 'SITOR'),
('1108', 'TREG-7', '1108', 'SULSELBAR', 'SITOR'),
('1109', 'TREG-7', '1109', 'SULSELBAR', 'SITOR'),
('111', 'TREG-1', '111', 'MEDAN', 'LUBUK PAKAM'),
('1110', 'TREG-7', '1110', 'SULSELBAR', 'SITOR'),
('1111', 'TREG-7', '1111', 'SULSELBAR', 'SITOR'),
('1112', 'TREG-7', '1112', 'SULTENG', 'PALU'),
('1113', 'TREG-7', '1113', 'SULTENG', 'PALU'),
('1114', 'TREG-7', '1114', 'SULTENG', 'PALU'),
('1115', 'TREG-7', '1115', 'SULTENG', 'PALU'),
('1116', 'TREG-7', '1116', 'SULTENG', 'PALU'),
('1117', 'TREG-7', '1117', 'SULTENG', 'PALU'),
('1118', 'TREG-7', '1118', 'SULTENG', 'PALU'),
('1119', 'TREG-7', '1119', 'SULTENG', 'PALU'),
('112', 'TREG-1', '112', 'MEDAN', 'LUBUK PAKAM'),
('1120', 'TREG-7', '1120', 'SULTENG', 'PALU'),
('1121', 'TREG-7', '1121', 'SULTENG', 'PALU'),
('1122', 'TREG-7', '1122', 'SULTENG', 'PALU'),
('1123', 'TREG-7', '1123', 'SULTENG', 'LUWUK'),
('1124', 'TREG-7', '1124', 'SULTENG', 'LUWUK'),
('1125', 'TREG-7', '1125', 'SULTENG', 'LUWUK'),
('1126', 'TREG-7', '1126', 'SULTENG', 'LUWUK'),
('1127', 'TREG-7', '1127', 'SULTENG', 'LUWUK'),
('1128', 'TREG-7', '1128', 'SULTENG', 'POSO'),
('1129', 'TREG-7', '1129', 'SULTENG', 'POSO'),
('113', 'TREG-1', '113', 'MEDAN', 'MEDAN'),
('1130', 'TREG-7', '1130', 'SULTENG', 'POSO'),
('1131', 'TREG-7', '1131', 'SULTENG', 'POSO'),
('1132', 'TREG-7', '1132', 'SULTENG', 'POSO'),
('1133', 'TREG-7', '1133', 'SULTRA', 'KENDARI'),
('1134', 'TREG-7', '1134', 'SULTRA', 'KENDARI'),
('1135', 'TREG-7', '1135', 'SULTRA', 'BAUBAU'),
('1136', 'TREG-7', '1136', 'SULTRA', 'BAUBAU'),
('1137', 'TREG-7', '1137', 'SULTRA', 'BAUBAU'),
('1138', 'TREG-7', '1138', 'SULTRA', 'KOLAKA'),
('1139', 'TREG-7', '1139', 'SULTRA', 'KOLAKA'),
('114', 'TREG-1', '114', 'MEDAN', 'MEDAN'),
('1140', 'TREG-7', '1140', 'SULTRA', 'KOLAKA'),
('1141', 'TREG-7', '1141', 'SULTRA', 'KOLAKA'),
('1142', 'TREG-7', '1142', 'SULUTMALUT', 'MANADO'),
('1143', 'TREG-7', '1143', 'SULUTMALUT', 'BITUNG'),
('1144', 'TREG-7', '1144', 'SULUTMALUT', 'BITUNG'),
('1145', 'TREG-7', '1145', 'SULUTMALUT', 'BITUNG'),
('1146', 'TREG-7', '1146', 'SULUTMALUT', 'BITUNG'),
('1147', 'TREG-7', '1147', 'SULUTMALUT', 'BITUNG'),
('1148', 'TREG-7', '1148', 'SULUTMALUT', 'BITUNG'),
('1149', 'TREG-7', '1149', 'SULUTMALUT', 'BITUNG'),
('115', 'TREG-1', '115', 'MEDAN', 'MEDAN'),
('1150', 'TREG-7', '1150', 'SULUTMALUT', 'MINAHASA'),
('1151', 'TREG-7', '1151', 'SULUTMALUT', 'MINAHASA'),
('1152', 'TREG-7', '1152', 'SULUTMALUT', 'MINAHASA'),
('1153', 'TREG-7', '1153', 'SULUTMALUT', 'TERNATE'),
('1154', 'TREG-7', '1154', 'SULUTMALUT', 'TERNATE'),
('1155', 'TREG-7', '1155', 'SULUTMALUT', 'TERNATE'),
('1156', 'TREG-7', '1156', 'SULUTMALUT', 'TERNATE'),
('1157', 'TREG-7', '1157', 'SULUTMALUT', 'TERNATE'),
('1158', 'TREG-7', '1158', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1159', 'TREG-7', '1159', 'SULUTMALUT', 'HALMAHERA UTARA'),
('116', 'TREG-1', '116', 'MEDAN', 'MEDAN'),
('1160', 'TREG-7', '1160', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1161', 'TREG-7', '1161', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1162', 'TREG-7', '1162', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1163', 'TREG-7', '1163', 'SULUTMALUT', 'KOTAMOBAGU'),
('1164', 'TREG-7', '1164', 'SULUTMALUT', 'KOTAMOBAGU'),
('1165', 'TREG-7', '1165', 'SULUTMALUT', 'KOTAMOBAGU'),
('1166', 'TREG-7', '1166', 'SULUTMALUT', 'KOTAMOBAGU'),
('1167', 'TREG-7', '1167', 'SULUTMALUT', 'KOTAMOBAGU'),
('117', 'TREG-1', '117', 'MEDAN', 'MEDAN'),
('118', 'TREG-1', '118', 'MEDAN', 'MEDAN'),
('119', 'TREG-1', '119', 'MEDAN', 'MEDAN'),
('12', 'TREG-1', '12', 'ACEH', 'ACEH'),
('120', 'TREG-1', '120', 'MEDAN', 'MEDAN'),
('121', 'TREG-1', '121', 'MEDAN', 'MEDAN'),
('122', 'TREG-1', '122', 'MEDAN', 'MEDAN'),
('123', 'TREG-1', '123', 'MEDAN', 'MEDAN'),
('124', 'TREG-1', '124', 'MEDAN', 'MEDAN'),
('125', 'TREG-1', '125', 'RIDAR', 'BANGKINANG'),
('126', 'TREG-1', '126', 'RIDAR', 'BANGKINANG'),
('127', 'TREG-1', '127', 'RIDAR', 'BANGKINANG'),
('128', 'TREG-1', '128', 'RIDAR', 'BANGKINANG'),
('129', 'TREG-1', '129', 'RIDAR', 'BANGKINANG'),
('13', 'TREG-1', '13', 'ACEH', 'ACEH'),
('130', 'TREG-1', '130', 'RIDAR', 'BANGKINANG'),
('131', 'TREG-1', '131', 'RIDAR', 'BANGKINANG'),
('132', 'TREG-1', '132', 'RIDAR', 'BANGKINANG'),
('133', 'TREG-1', '133', 'RIDAR', 'BANGKINANG'),
('134', 'TREG-1', '134', 'RIDAR', 'BANGKINANG'),
('135', 'TREG-1', '135', 'RIDAR', 'DUMAI'),
('136', 'TREG-1', '136', 'RIDAR', 'DUMAI'),
('137', 'TREG-1', '137', 'RIDAR', 'DUMAI'),
('138', 'TREG-1', '138', 'RIDAR', 'DUMAI'),
('139', 'TREG-1', '139', 'RIDAR', 'DUMAI'),
('14', 'TREG-1', '14', 'ACEH', 'LANGSA'),
('140', 'TREG-1', '140', 'RIDAR', 'DUMAI'),
('141', 'TREG-1', '141', 'RIDAR', 'DUMAI'),
('142', 'TREG-1', '142', 'RIDAR', 'INDRAGIRI'),
('143', 'TREG-1', '143', 'RIDAR', 'INDRAGIRI'),
('144', 'TREG-1', '144', 'RIDAR', 'INDRAGIRI'),
('145', 'TREG-1', '145', 'RIDAR', 'INDRAGIRI'),
('146', 'TREG-1', '146', 'RIDAR', 'INDRAGIRI'),
('147', 'TREG-1', '147', 'RIDAR', 'INDRAGIRI'),
('148', 'TREG-1', '148', 'RIKEP', 'RIKEP'),
('149', 'TREG-1', '149', 'RIKEP', 'RIKEP'),
('15', 'TREG-1', '15', 'ACEH', 'LANGSA'),
('150', 'TREG-1', '150', 'RIDAR', 'RIDAR'),
('151', 'TREG-1', '151', 'RIDAR', 'RIDAR'),
('152', 'TREG-1', '152', 'RIDAR', 'RIDAR'),
('153', 'TREG-1', '153', 'RIKEP', 'RIKEP'),
('154', 'TREG-1', '154', 'RIKEP', 'RIKEP'),
('155', 'TREG-1', '155', 'RIKEP', 'RIKEP'),
('156', 'TREG-1', '156', 'RIKEP', 'RIKEP'),
('157', 'TREG-1', '157', 'RIKEP', 'RIKEP'),
('158', 'TREG-1', '158', 'RIKEP', 'RIKEP'),
('159', 'TREG-1', '159', 'RIKEP', 'RIKEP'),
('16', 'TREG-1', '16', 'ACEH', 'LANGSA'),
('160', 'TREG-1', '160', 'RIKEP', 'RIKEP'),
('161', 'TREG-1', '161', 'RIKEP', 'RIKEP'),
('162', 'TREG-1', '162', 'RIKEP', 'TANJUNG PINANG'),
('163', 'TREG-1', '163', 'RIKEP', 'TANJUNG PINANG'),
('164', 'TREG-1', '164', 'RIKEP', 'TANJUNG PINANG'),
('165', 'TREG-1', '165', 'RIKEP', 'TANJUNG PINANG'),
('166', 'TREG-1', '166', 'RIKEP', 'TANJUNG PINANG'),
('167', 'TREG-1', '167', 'RIKEP', 'TANJUNG PINANG'),
('168', 'TREG-1', '168', 'RIKEP', 'TANJUNG PINANG'),
('169', 'TREG-1', '169', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('17', 'TREG-1', '17', 'ACEH', 'LANGSA'),
('170', 'TREG-1', '170', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('171', 'TREG-1', '171', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('172', 'TREG-1', '172', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('173', 'TREG-1', '173', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('174', 'TREG-1', '174', 'SUMBAR', 'BUKIT TINGGI'),
('175', 'TREG-1', '175', 'SUMBAR', 'BUKIT TINGGI'),
('176', 'TREG-1', '176', 'SUMBAR', 'BUKIT TINGGI'),
('177', 'TREG-1', '177', 'SUMBAR', 'BUKIT TINGGI'),
('178', 'TREG-1', '178', 'SUMBAR', 'BUKIT TINGGI'),
('179', 'TREG-1', '179', 'SUMBAR', 'BUKIT TINGGI'),
('18', 'TREG-1', '18', 'ACEH', 'LANGSA'),
('180', 'TREG-1', '180', 'SUMBAR', 'BUKIT TINGGI'),
('181', 'TREG-1', '181', 'SUMBAR', 'BUKIT TINGGI'),
('182', 'TREG-1', '182', 'SUMBAR', 'BUKIT TINGGI'),
('183', 'TREG-1', '183', 'SUMBAR', 'BUKIT TINGGI'),
('184', 'TREG-1', '184', 'SUMBAR', 'BUKIT TINGGI'),
('185', 'TREG-1', '185', 'SUMBAR', 'BUKIT TINGGI'),
('186', 'TREG-1', '186', 'SUMBAR', 'BUKIT TINGGI'),
('187', 'TREG-1', '187', 'SUMBAR', 'BUKIT TINGGI'),
('188', 'TREG-1', '188', 'SUMBAR', 'BUKIT TINGGI'),
('189', 'TREG-1', '189', 'SUMBAR', 'BUKIT TINGGI'),
('19', 'TREG-1', '19', 'ACEH', 'LANGSA'),
('190', 'TREG-1', '190', 'SUMBAR', 'BUKIT TINGGI'),
('191', 'TREG-1', '191', 'SUMBAR', 'BUKIT TINGGI'),
('192', 'TREG-1', '192', 'SUMBAR', 'BUKIT TINGGI'),
('193', 'TREG-1', '193', 'SUMBAR', 'BUKIT TINGGI'),
('194', 'TREG-1', '194', 'SUMBAR', 'SOLOK'),
('195', 'TREG-1', '195', 'SUMBAR', 'BUKIT TINGGI'),
('196', 'TREG-1', '196', 'SUMBAR', 'BUKIT TINGGI'),
('197', 'TREG-1', '197', 'SUMBAR', 'BUKIT TINGGI'),
('198', 'TREG-1', '198', 'SUMBAR', 'BUKIT TINGGI'),
('199', 'TREG-1', '199', 'SUMBAR', 'BUKIT TINGGI'),
('2', 'TREG-1', '2', 'ACEH', 'ACEH'),
('20', 'TREG-1', '20', 'ACEH', 'LANGSA'),
('200', 'TREG-1', '200', 'SUMBAR', 'SOLOK'),
('201', 'TREG-1', '201', 'SUMBAR', 'SOLOK'),
('202', 'TREG-1', '202', 'SUMBAR', 'SOLOK'),
('203', 'TREG-1', '203', 'SUMBAR', 'SOLOK'),
('204', 'TREG-1', '204', 'SUMBAR', 'SOLOK'),
('205', 'TREG-1', '205', 'SUMBAR', 'SOLOK'),
('206', 'TREG-1', '206', 'SUMBAR', 'SOLOK'),
('207', 'TREG-1', '207', 'SUMBAR', 'SOLOK'),
('208', 'TREG-1', '208', 'SUMBAR', 'SOLOK'),
('209', 'TREG-1', '209', 'SUMBAR', 'SOLOK'),
('21', 'TREG-1', '21', 'ACEH', 'LHOKSEUMAWE'),
('210', 'TREG-1', '210', 'SUMBAR', 'SOLOK'),
('211', 'TREG-1', '211', 'SUMBAR', 'SOLOK'),
('212', 'TREG-1', '212', 'SUMBAR', 'SOLOK'),
('213', 'TREG-1', '213', 'SUMBAR', 'SOLOK'),
('214', 'TREG-1', '214', 'SUMBAR', 'SOLOK'),
('215', 'TREG-1', '215', 'SUMBAR', 'SOLOK'),
('216', 'TREG-1', '216', 'SUMBAR', 'SUMBAR'),
('217', 'TREG-1', '217', 'SUMBAR', 'SUMBAR'),
('218', 'TREG-1', '218', 'SUMBAR', 'SUMBAR'),
('219', 'TREG-1', '219', 'SUMBAR', 'SUMBAR'),
('22', 'TREG-1', '22', 'ACEH', 'LHOKSEUMAWE'),
('220', 'TREG-1', '220', 'SUMBAR', 'SUMBAR'),
('221', 'TREG-1', '221', 'SUMBAR', 'SUMBAR'),
('222', 'TREG-1', '222', 'SUMBAR', 'SUMBAR'),
('223', 'TREG-1', '223', 'SUMBAR', 'SUMBAR'),
('224', 'TREG-1', '224', 'SUMBAR', 'SUMBAR'),
('225', 'TREG-1', '225', 'SUMBAR', 'SUMBAR'),
('226', 'TREG-1', '226', 'SUMBAR', 'SUMBAR'),
('227', 'TREG-1', '227', 'SUMBAR', 'SUMBAR'),
('228', 'TREG-1', '228', 'SUMBAR', 'SUMBAR'),
('229', 'TREG-1', '229', 'SUMBAR', 'SUMBAR'),
('23', 'TREG-1', '23', 'ACEH', 'LHOKSEUMAWE'),
('230', 'TREG-1', '230', 'SUMBAR', 'SUMBAR'),
('231', 'TREG-1', '231', 'SUMBAR', 'SUMBAR'),
('232', 'TREG-1', '232', 'SUMBAR', 'SUMBAR'),
('233', 'TREG-1', '233', 'SUMBAR', 'SUMBAR'),
('234', 'TREG-1', '234', 'SUMBAR', 'SUMBAR'),
('235', 'TREG-1', '235', 'SUMBAR', 'SUMBAR'),
('236', 'TREG-1', '236', 'SUMBAR', 'SUMBAR'),
('237', 'TREG-1', '237', 'SUMBAR', 'SUMBAR'),
('238', 'TREG-1', '238', 'SUMBAR', 'SUMBAR'),
('239', 'TREG-1', '239', 'SUMBAR', 'SUMBAR'),
('24', 'TREG-1', '24', 'ACEH', 'LHOKSEUMAWE'),
('240', 'TREG-1', '240', 'SUMBAR', 'SUMBAR'),
('241', 'TREG-1', '241', 'SUMBAR', 'SUMBAR'),
('242', 'TREG-1', '242', 'SUMSEL', 'BATU RAJA'),
('243', 'TREG-1', '243', 'SUMSEL', 'BATU RAJA'),
('244', 'TREG-1', '244', 'SUMSEL', 'BATU RAJA'),
('245', 'TREG-1', '245', 'SUMSEL', 'BATU RAJA'),
('246', 'TREG-1', '246', 'SUMSEL', 'BATU RAJA'),
('247', 'TREG-1', '247', 'SUMSEL', 'BATU RAJA'),
('248', 'TREG-1', '248', 'SUMSEL', 'LUBUK LINGGAU'),
('249', 'TREG-1', '249', 'SUMSEL', 'LUBUK LINGGAU'),
('25', 'TREG-1', '25', 'ACEH', 'LHOKSEUMAWE'),
('250', 'TREG-1', '250', 'SUMSEL', 'LUBUK LINGGAU'),
('251', 'TREG-1', '251', 'SUMSEL', 'LUBUK LINGGAU'),
('252', 'TREG-1', '252', 'SUMSEL', 'LUBUK LINGGAU'),
('253', 'TREG-1', '253', 'SUMSEL', 'LUBUK LINGGAU'),
('254', 'TREG-1', '254', 'SUMSEL', 'LUBUK LINGGAU'),
('255', 'TREG-1', '255', 'SUMSEL', 'LUBUK LINGGAU'),
('256', 'TREG-1', '256', 'SUMSEL', 'PRABUMULIH'),
('257', 'TREG-1', '257', 'SUMSEL', 'PRABUMULIH'),
('258', 'TREG-1', '258', 'SUMSEL', 'PRABUMULIH'),
('259', 'TREG-1', '259', 'SUMSEL', 'PRABUMULIH'),
('26', 'TREG-1', '26', 'ACEH', 'LHOKSEUMAWE'),
('260', 'TREG-1', '260', 'SUMSEL', 'PRABUMULIH'),
('261', 'TREG-1', '261', 'SUMSEL', 'PRABUMULIH'),
('262', 'TREG-1', '262', 'SUMSEL', 'PRABUMULIH'),
('263', 'TREG-1', '263', 'SUMSEL', 'PRABUMULIH'),
('264', 'TREG-1', '264', 'SUMSEL', 'PRABUMULIH'),
('265', 'TREG-1', '265', 'SUMSEL', 'PRABUMULIH'),
('266', 'TREG-1', '266', 'SUMSEL', 'SUMSEL'),
('267', 'TREG-1', '267', 'SUMSEL', 'SUMSEL'),
('268', 'TREG-1', '268', 'SUMSEL', 'SUMSEL'),
('269', 'TREG-1', '269', 'SUMSEL', 'SUMSEL'),
('27', 'TREG-1', '27', 'ACEH', 'LHOKSEUMAWE'),
('270', 'TREG-1', '270', 'SUMSEL', 'SUMSEL'),
('271', 'TREG-1', '271', 'SUMSEL', 'SUMSEL'),
('272', 'TREG-1', '272', 'SUMSEL', 'SUMSEL'),
('273', 'TREG-1', '273', 'SUMSEL', 'SUMSEL'),
('274', 'TREG-1', '274', 'SUMUT', 'KABANJAHE'),
('275', 'TREG-1', '275', 'SUMUT', 'KABANJAHE'),
('276', 'TREG-1', '276', 'SUMUT', 'KABANJAHE'),
('277', 'TREG-1', '277', 'SUMUT', 'KABANJAHE'),
('278', 'TREG-1', '278', 'SUMUT', 'KABANJAHE'),
('279', 'TREG-1', '279', 'SUMUT', 'KABANJAHE'),
('28', 'TREG-1', '28', 'ACEH', 'LHOKSEUMAWE'),
('280', 'TREG-1', '280', 'SUMUT', 'KISARAN'),
('281', 'TREG-1', '281', 'SUMUT', 'KISARAN'),
('282', 'TREG-1', '282', 'SUMUT', 'KISARAN'),
('283', 'TREG-1', '283', 'SUMUT', 'KISARAN'),
('284', 'TREG-1', '284', 'SUMUT', 'KISARAN'),
('285', 'TREG-1', '285', 'SUMUT', 'KISARAN'),
('286', 'TREG-1', '286', 'SUMUT', 'KISARAN'),
('287', 'TREG-1', '287', 'SUMUT', 'KISARAN'),
('288', 'TREG-1', '288', 'SUMUT', 'KISARAN'),
('289', 'TREG-1', '289', 'SUMUT', 'PADANG SIDEMPUAN'),
('29', 'TREG-1', '29', 'ACEH', 'LHOKSEUMAWE'),
('290', 'TREG-1', '290', 'SUMUT', 'PADANG SIDEMPUAN'),
('291', 'TREG-1', '291', 'SUMUT', 'PADANG SIDEMPUAN'),
('292', 'TREG-1', '292', 'SUMUT', 'PADANG SIDEMPUAN'),
('293', 'TREG-1', '293', 'SUMUT', 'PADANG SIDEMPUAN'),
('294', 'TREG-1', '294', 'SUMUT', 'PADANG SIDEMPUAN'),
('295', 'TREG-1', '295', 'SUMUT', 'PADANG SIDEMPUAN'),
('296', 'TREG-1', '296', 'SUMUT', 'RANTAU PRAPAT'),
('297', 'TREG-1', '297', 'SUMUT', 'RANTAU PRAPAT'),
('298', 'TREG-1', '298', 'SUMUT', 'RANTAU PRAPAT'),
('299', 'TREG-1', '299', 'SUMUT', 'RANTAU PRAPAT'),
('3', 'TREG-1', '3', 'ACEH', 'ACEH'),
('30', 'TREG-1', '30', 'ACEH', 'LHOKSEUMAWE'),
('300', 'TREG-1', '300', 'SUMUT', 'RANTAU PRAPAT'),
('301', 'TREG-1', '301', 'SUMUT', 'RANTAU PRAPAT'),
('302', 'TREG-1', '302', 'SUMUT', 'SIBOLGA'),
('303', 'TREG-1', '303', 'SUMUT', 'SIBOLGA'),
('304', 'TREG-1', '304', 'SUMUT', 'SIBOLGA'),
('305', 'TREG-1', '305', 'SUMUT', 'SIBOLGA'),
('306', 'TREG-1', '306', 'SUMUT', 'SIBOLGA'),
('307', 'TREG-1', '307', 'SUMUT', 'SIBOLGA'),
('308', 'TREG-1', '308', 'SUMUT', 'SIBOLGA'),
('309', 'TREG-1', '309', 'SUMUT', 'SIBOLGA'),
('31', 'TREG-1', '31', 'ACEH', 'MEULABOH'),
('310', 'TREG-1', '310', 'SUMUT', 'SIBOLGA'),
('311', 'TREG-1', '311', 'SUMUT', 'SIBOLGA'),
('312', 'TREG-1', '312', 'SUMUT', 'SUMUT'),
('313', 'TREG-1', '313', 'SUMUT', 'SUMUT'),
('314', 'TREG-1', '314', 'SUMUT', 'SUMUT'),
('315', 'TREG-1', '315', 'SUMUT', 'SUMUT'),
('316', 'TREG-1', '316', 'SUMUT', 'SUMUT'),
('317', 'TREG-1', '317', 'SUMUT', 'SUMUT'),
('318', 'TREG-1', '318', 'SUMUT', 'SUMUT'),
('319', 'TREG-1', '319', 'SUMUT', 'SUMUT'),
('32', 'TREG-1', '32', 'ACEH', 'MEULABOH'),
('320', 'TREG-2', '320', 'BANTEN', 'CIKUPA'),
('321', 'TREG-2', '321', 'BANTEN', 'CIKUPA'),
('322', 'TREG-2', '322', 'BANTEN', 'CIKUPA'),
('323', 'TREG-2', '323', 'BANTEN', 'CIKUPA'),
('324', 'TREG-2', '324', 'BANTEN', 'CIKUPA'),
('325', 'TREG-2', '325', 'BANTEN', 'CIKUPA'),
('326', 'TREG-2', '326', 'BANTEN', 'CIKUPA'),
('327', 'TREG-2', '327', 'BANTEN', 'CILEGON'),
('328', 'TREG-2', '328', 'BANTEN', 'CILEGON'),
('329', 'TREG-2', '329', 'BANTEN', 'CILEGON'),
('33', 'TREG-1', '33', 'ACEH', 'MEULABOH'),
('330', 'TREG-2', '330', 'BANTEN', 'CILEGON'),
('331', 'TREG-2', '331', 'BANTEN', 'CILEGON'),
('332', 'TREG-2', '332', 'BANTEN', 'CILEGON'),
('333', 'TREG-2', '333', 'BANTEN', 'CILEGON'),
('334', 'TREG-2', '334', 'BANTEN', 'CILEGON'),
('335', 'TREG-2', '335', 'BANTEN', 'RKS-PDG'),
('336', 'TREG-2', '336', 'BANTEN', 'RKS-PDG'),
('337', 'TREG-2', '337', 'BANTEN', 'RKS-PDG'),
('338', 'TREG-2', '338', 'BANTEN', 'RKS-PDG'),
('339', 'TREG-2', '339', 'BANTEN', 'RKS-PDG'),
('34', 'TREG-1', '34', 'ACEH', 'MEULABOH'),
('340', 'TREG-2', '340', 'BANTEN', 'RKS-PDG'),
('341', 'TREG-2', '341', 'BANTEN', 'RKS-PDG'),
('342', 'TREG-2', '342', 'BANTEN', 'RKS-PDG'),
('343', 'TREG-2', '343', 'BANTEN', 'WITELBANTEN'),
('344', 'TREG-2', '344', 'BANTEN', 'WITELBANTEN'),
('345', 'TREG-2', '345', 'BANTEN', 'WITELBANTEN'),
('346', 'TREG-2', '346', 'BANTEN', 'WITELBANTEN'),
('347', 'TREG-2', '347', 'BANTEN', 'WITELBANTEN'),
('348', 'TREG-2', '348', 'BANTEN', 'WITELBANTEN'),
('349', 'TREG-2', '349', 'BEKASI', 'CIKARANG'),
('35', 'TREG-1', '35', 'ACEH', 'MEULABOH'),
('350', 'TREG-2', '350', 'BEKASI', 'CIKARANG'),
('351', 'TREG-2', '351', 'BEKASI', 'CIKARANG'),
('352', 'TREG-2', '352', 'BEKASI', 'CIKARANG'),
('353', 'TREG-2', '353', 'BEKASI', 'CIKARANG'),
('354', 'TREG-2', '354', 'BEKASI', 'CIKARANG'),
('355', 'TREG-2', '355', 'BEKASI', 'CIKARANG'),
('356', 'TREG-2', '356', 'BEKASI', 'CIKARANG'),
('357', 'TREG-2', '357', 'BEKASI', 'CIKARANG'),
('358', 'TREG-2', '358', 'BEKASI', 'CIKARANG'),
('359', 'TREG-2', '359', 'BEKASI', 'CIKARANG'),
('36', 'TREG-1', '36', 'ACEH', 'MEULABOH'),
('360', 'TREG-2', '360', 'BEKASI', 'CIKARANG'),
('361', 'TREG-2', '361', 'BEKASI', 'CIKARANG'),
('362', 'TREG-2', '362', 'BEKASI', 'CIKARANG'),
('363', 'TREG-2', '363', 'BEKASI', 'CIKARANG'),
('364', 'TREG-2', '364', 'BEKASI', 'WITELBEKASI'),
('365', 'TREG-2', '365', 'BEKASI', 'WITELBEKASI'),
('366', 'TREG-2', '366', 'BEKASI', 'WITELBEKASI'),
('367', 'TREG-2', '367', 'BEKASI', 'WITELBEKASI'),
('368', 'TREG-2', '368', 'BEKASI', 'WITELBEKASI'),
('369', 'TREG-2', '369', 'BEKASI', 'WITELBEKASI'),
('37', 'TREG-1', '37', 'ACEH', 'MEULABOH'),
('370', 'TREG-2', '370', 'BEKASI', 'WITELBEKASI'),
('371', 'TREG-2', '371', 'BOGOR', 'CIBINONG'),
('372', 'TREG-2', '372', 'BOGOR', 'CIBINONG'),
('373', 'TREG-2', '373', 'BOGOR', 'CIBINONG'),
('374', 'TREG-2', '374', 'BOGOR', 'CIBINONG'),
('375', 'TREG-2', '375', 'BOGOR', 'CIBINONG'),
('376', 'TREG-2', '376', 'BOGOR', 'CIBINONG'),
('377', 'TREG-2', '377', 'BOGOR', 'CIBINONG'),
('378', 'TREG-2', '378', 'BOGOR', 'CIBINONG'),
('379', 'TREG-2', '379', 'BOGOR', 'DEPOK'),
('38', 'TREG-1', '38', 'ACEH', 'MEULABOH'),
('380', 'TREG-2', '380', 'BOGOR', 'DEPOK'),
('381', 'TREG-2', '381', 'BOGOR', 'DEPOK'),
('382', 'TREG-2', '382', 'BOGOR', 'DEPOK'),
('383', 'TREG-2', '383', 'BOGOR', 'DEPOK'),
('384', 'TREG-2', '384', 'BOGOR', 'KUJANG'),
('385', 'TREG-2', '385', 'BOGOR', 'KUJANG'),
('386', 'TREG-2', '386', 'BOGOR', 'KUJANG'),
('387', 'TREG-2', '387', 'BOGOR', 'KUJANG'),
('388', 'TREG-2', '388', 'BOGOR', 'KUJANG'),
('389', 'TREG-2', '389', 'BOGOR', 'KUJANG'),
('39', 'TREG-1', '39', 'ACEH', 'MEULABOH'),
('390', 'TREG-2', '390', 'BOGOR', 'KUJANG'),
('391', 'TREG-2', '391', 'BOGOR', 'KUJANG'),
('392', 'TREG-2', '392', 'BOGOR', 'KUJANG'),
('393', 'TREG-2', '393', 'BOGOR', 'KUJANG'),
('394', 'TREG-2', '394', 'BOGOR', 'KUJANG'),
('395', 'TREG-2', '395', 'BOGOR', 'SENTUL'),
('396', 'TREG-2', '396', 'BOGOR', 'SENTUL'),
('397', 'TREG-2', '397', 'BOGOR', 'SENTUL'),
('398', 'TREG-2', '398', 'BOGOR', 'SENTUL'),
('399', 'TREG-2', '399', 'BOGOR', 'SENTUL'),
('4', 'TREG-1', '4', 'ACEH', 'ACEH'),
('40', 'TREG-1', '40', 'ACEH', 'MEULABOH'),
('400', 'TREG-2', '400', 'BOGOR', 'SENTUL'),
('401', 'TREG-2', '401', 'BOGOR', 'SENTUL'),
('402', 'TREG-2', '402', 'BOGOR', 'SENTUL'),
('403', 'TREG-2', '403', 'BOGOR', 'SENTUL'),
('404', 'TREG-2', '404', 'JAKBAR', 'WITELJAKBAR'),
('405', 'TREG-2', '405', 'JAKBAR', 'WITELJAKBAR'),
('406', 'TREG-2', '406', 'JAKBAR', 'WITELJAKBAR'),
('407', 'TREG-2', '407', 'JAKBAR', 'WITELJAKBAR'),
('408', 'TREG-2', '408', 'JAKBAR', 'WITELJAKBAR'),
('409', 'TREG-2', '409', 'JAKBAR', 'WITELJAKBAR'),
('41', 'TREG-1', '41', 'BABEL', 'BABEL'),
('410', 'TREG-2', '410', 'JAKBAR', 'WITELJAKBAR'),
('411', 'TREG-2', '411', 'JAKBAR', 'WITELJAKBAR'),
('412', 'TREG-2', '412', 'JAKBAR', 'WITELJAKBAR'),
('413', 'TREG-2', '413', 'JAKBAR', 'WITELJAKBAR'),
('414', 'TREG-2', '414', 'JAKPUS', 'WITELJAKPUS'),
('415', 'TREG-2', '415', 'JAKPUS', 'WITELJAKPUS'),
('416', 'TREG-2', '416', 'JAKPUS', 'WITELJAKPUS'),
('417', 'TREG-2', '417', 'JAKPUS', 'WITELJAKPUS'),
('418', 'TREG-2', '418', 'JAKPUS', 'WITELJAKPUS'),
('419', 'TREG-2', '419', 'JAKSEL', 'WITELJAKSEL'),
('42', 'TREG-1', '42', 'BABEL', 'BABEL'),
('420', 'TREG-2', '420', 'JAKSEL', 'WITELJAKSEL'),
('421', 'TREG-2', '421', 'JAKSEL', 'WITELJAKSEL'),
('422', 'TREG-2', '422', 'JAKSEL', 'WITELJAKSEL'),
('423', 'TREG-2', '423', 'JAKSEL', 'WITELJAKSEL'),
('424', 'TREG-2', '424', 'JAKSEL', 'WITELJAKSEL'),
('425', 'TREG-2', '425', 'JAKSEL', 'WITELJAKSEL'),
('426', 'TREG-2', '426', 'JAKSEL', 'WITELJAKSEL'),
('427', 'TREG-2', '427', 'JAKTIM', 'WITELJAKTIM'),
('428', 'TREG-2', '428', 'JAKTIM', 'WITELJAKTIM'),
('429', 'TREG-2', '429', 'JAKTIM', 'WITELJAKTIM'),
('43', 'TREG-1', '43', 'BABEL', 'BABEL'),
('430', 'TREG-2', '430', 'JAKTIM', 'WITELJAKTIM'),
('431', 'TREG-2', '431', 'JAKTIM', 'WITELJAKTIM'),
('432', 'TREG-2', '432', 'JAKTIM', 'WITELJAKTIM'),
('433', 'TREG-2', '433', 'JAKTIM', 'WITELJAKTIM'),
('434', 'TREG-2', '434', 'JAKTIM', 'WITELJAKTIM'),
('435', 'TREG-2', '435', 'JAKTIM', 'WITELJAKTIM'),
('436', 'TREG-2', '436', 'JAKTIM', 'WITELJAKTIM'),
('437', 'TREG-2', '437', 'JAKTIM', 'WITELJAKTIM'),
('438', 'TREG-2', '438', 'JAKUT', 'WITELJAKUT'),
('439', 'TREG-2', '439', 'JAKUT', 'WITELJAKUT'),
('44', 'TREG-1', '44', 'BABEL', 'BABEL'),
('440', 'TREG-2', '440', 'JAKUT', 'WITELJAKUT'),
('441', 'TREG-2', '441', 'JAKUT', 'WITELJAKUT'),
('442', 'TREG-2', '442', 'JAKUT', 'WITELJAKUT'),
('443', 'TREG-2', '443', 'JAKUT', 'WITELJAKUT'),
('444', 'TREG-2', '444', 'JAKUT', 'WITELJAKUT'),
('445', 'TREG-2', '445', 'JAKUT', 'WITELJAKUT'),
('446', 'TREG-2', '446', 'JAKUT', 'WITELJAKUT'),
('447', 'TREG-2', '447', 'TANGERANG', 'CIPUTAT'),
('448', 'TREG-2', '448', 'TANGERANG', 'CIPUTAT'),
('449', 'TREG-2', '449', 'TANGERANG', 'CIPUTAT'),
('45', 'TREG-1', '45', 'BABEL', 'BABEL'),
('450', 'TREG-2', '450', 'TANGERANG', 'CIPUTAT'),
('451', 'TREG-2', '451', 'TANGERANG', 'CIPUTAT'),
('452', 'TREG-2', '452', 'TANGERANG', 'LENGKONG'),
('453', 'TREG-2', '453', 'TANGERANG', 'LENGKONG'),
('454', 'TREG-2', '454', 'TANGERANG', 'LENGKONG'),
('455', 'TREG-2', '455', 'TANGERANG', 'LENGKONG'),
('456', 'TREG-2', '456', 'TANGERANG', 'LENGKONG'),
('457', 'TREG-2', '457', 'TANGERANG', 'LENGKONG'),
('458', 'TREG-2', '458', 'TANGERANG', 'PASARBARU'),
('459', 'TREG-2', '459', 'TANGERANG', 'PASARBARU'),
('46', 'TREG-1', '46', 'BABEL', 'BABEL'),
('460', 'TREG-2', '460', 'TANGERANG', 'PASARBARU'),
('461', 'TREG-2', '461', 'TANGERANG', 'PASARBARU'),
('462', 'TREG-2', '462', 'TANGERANG', 'PASARBARU'),
('463', 'TREG-2', '463', 'TANGERANG', 'PASARBARU'),
('464', 'TREG-2', '464', 'TANGERANG', 'PASARBARU'),
('465', 'TREG-2', '465', 'TANGERANG', 'PASARBARU'),
('466', 'TREG-2', '466', 'TANGERANG', 'PASARBARU'),
('467', 'TREG-3', '467', 'BANDUNG', 'INNERBDG'),
('468', 'TREG-3', '468', 'BANDUNG', 'INNERBDG'),
('469', 'TREG-3', '469', 'BANDUNG', 'INNERBDG'),
('47', 'TREG-1', '47', 'BABEL', 'BABEL'),
('470', 'TREG-3', '470', 'BANDUNG', 'INNERBDG'),
('471', 'TREG-3', '471', 'BANDUNG', 'INNERBDG'),
('472', 'TREG-3', '472', 'BANDUNG', 'INNERBDG'),
('473', 'TREG-3', '473', 'BANDUNG', 'INNERBDG'),
('474', 'TREG-3', '474', 'BANDUNG', 'INNERBDG'),
('475', 'TREG-3', '475', 'BANDUNG', 'SUMEDANG'),
('476', 'TREG-3', '476', 'BANDUNG', 'SUMEDANG'),
('477', 'TREG-3', '477', 'BANDUNGBARAT', 'SOREANG'),
('478', 'TREG-3', '478', 'BANDUNGBARAT', 'SOREANG'),
('479', 'TREG-3', '479', 'BANDUNGBARAT', 'SOREANG'),
('48', 'TREG-1', '48', 'BABEL', 'BABEL'),
('480', 'TREG-3', '480', 'BANDUNGBARAT', 'SOREANG'),
('481', 'TREG-3', '481', 'BANDUNGBARAT', 'SOREANG'),
('482', 'TREG-3', '482', 'BANDUNGBARAT', 'SOREANG'),
('483', 'TREG-3', '483', 'BANDUNGBARAT', 'PADALARANG'),
('484', 'TREG-3', '484', 'BANDUNGBARAT', 'PADALARANG'),
('485', 'TREG-3', '485', 'BANDUNGBARAT', 'PADALARANG'),
('486', 'TREG-3', '486', 'BANDUNGBARAT', 'PADALARANG'),
('487', 'TREG-3', '487', 'BANDUNGBARAT', 'PADALARANG'),
('488', 'TREG-3', '488', 'BANDUNGBARAT', 'PADALARANG'),
('489', 'TREG-3', '489', 'BANDUNGBARAT', 'PADALARANG'),
('49', 'TREG-1', '49', 'BABEL', 'BELITUNG'),
('490', 'TREG-3', '490', 'CIREBON', 'INDRAMAYU'),
('491', 'TREG-3', '491', 'CIREBON', 'INDRAMAYU'),
('492', 'TREG-3', '492', 'CIREBON', 'INDRAMAYU'),
('493', 'TREG-3', '493', 'CIREBON', 'INDRAMAYU'),
('494', 'TREG-3', '494', 'CIREBON', 'INNERCBN'),
('495', 'TREG-3', '495', 'CIREBON', 'INNERCBN'),
('496', 'TREG-3', '496', 'CIREBON', 'INNERCBN'),
('497', 'TREG-3', '497', 'CIREBON', 'INNERCBN'),
('498', 'TREG-3', '498', 'CIREBON', 'INNERCBN'),
('499', 'TREG-3', '499', 'CIREBON', 'INNERCBN'),
('5', 'TREG-1', '5', 'ACEH', 'ACEH'),
('50', 'TREG-1', '50', 'BABEL', 'BELITUNG'),
('500', 'TREG-3', '500', 'CIREBON', 'KUNINGAN'),
('501', 'TREG-3', '501', 'CIREBON', 'KUNINGAN'),
('502', 'TREG-3', '502', 'CIREBON', 'KUNINGAN'),
('503', 'TREG-3', '503', 'CIREBON', 'KUNINGAN'),
('504', 'TREG-3', '504', 'CIREBON', 'KUNINGAN'),
('505', 'TREG-3', '505', 'CIREBON', 'MAJALENGKA'),
('506', 'TREG-3', '506', 'CIREBON', 'MAJALENGKA'),
('507', 'TREG-3', '507', 'CIREBON', 'MAJALENGKA'),
('508', 'TREG-3', '508', 'KARAWANG', 'INNERKWA'),
('509', 'TREG-3', '509', 'KARAWANG', 'INNERKWA'),
('51', 'TREG-1', '51', 'BENGKULU', 'BENGKULU'),
('510', 'TREG-3', '510', 'KARAWANG', 'INNERKWA'),
('511', 'TREG-3', '511', 'KARAWANG', 'INNERKWA'),
('512', 'TREG-3', '512', 'KARAWANG', 'INNERKWA'),
('513', 'TREG-3', '513', 'KARAWANG', 'INNERKWA'),
('514', 'TREG-3', '514', 'KARAWANG', 'PURWAKARTA'),
('515', 'TREG-3', '515', 'KARAWANG', 'PURWAKARTA'),
('516', 'TREG-3', '516', 'KARAWANG', 'PURWAKARTA'),
('517', 'TREG-3', '517', 'KARAWANG', 'SUBANG'),
('518', 'TREG-3', '518', 'KARAWANG', 'SUBANG'),
('519', 'TREG-3', '519', 'KARAWANG', 'SUBANG'),
('52', 'TREG-1', '52', 'BENGKULU', 'BENGKULU'),
('520', 'TREG-3', '520', 'KARAWANG', 'SUBANG'),
('521', 'TREG-3', '521', 'SUKABUMI', 'CIANJUR'),
('522', 'TREG-3', '522', 'SUKABUMI', 'CIANJUR'),
('523', 'TREG-3', '523', 'SUKABUMI', 'CIANJUR'),
('524', 'TREG-3', '524', 'SUKABUMI', 'CIANJUR'),
('525', 'TREG-3', '525', 'SUKABUMI', 'CIBADAK'),
('526', 'TREG-3', '526', 'SUKABUMI', 'CIBADAK'),
('527', 'TREG-3', '527', 'SUKABUMI', 'CIBADAK'),
('528', 'TREG-3', '528', 'SUKABUMI', 'CIBADAK'),
('529', 'TREG-3', '529', 'SUKABUMI', 'CIBADAK'),
('53', 'TREG-1', '53', 'BENGKULU', 'BENGKULU'),
('530', 'TREG-3', '530', 'SUKABUMI', 'CIBADAK'),
('531', 'TREG-3', '531', 'SUKABUMI', 'CIBADAK'),
('532', 'TREG-3', '532', 'SUKABUMI', 'SINDANGLAYA'),
('533', 'TREG-3', '533', 'SUKABUMI', 'SINDANGLAYA'),
('534', 'TREG-3', '534', 'SUKABUMI', 'SINDANGLAYA'),
('535', 'TREG-3', '535', 'TASIKMALAYA', 'BANJAR'),
('536', 'TREG-3', '536', 'TASIKMALAYA', 'BANJAR'),
('537', 'TREG-3', '537', 'TASIKMALAYA', 'BANJAR'),
('538', 'TREG-3', '538', 'TASIKMALAYA', 'CIAMIS'),
('539', 'TREG-3', '539', 'TASIKMALAYA', 'CIAMIS'),
('54', 'TREG-1', '54', 'BENGKULU', 'BENGKULU'),
('540', 'TREG-3', '540', 'TASIKMALAYA', 'CIAMIS'),
('541', 'TREG-3', '541', 'TASIKMALAYA', 'GARUT'),
('542', 'TREG-3', '542', 'TASIKMALAYA', 'GARUT'),
('543', 'TREG-3', '543', 'TASIKMALAYA', 'GARUT'),
('544', 'TREG-3', '544', 'TASIKMALAYA', 'GARUT'),
('545', 'TREG-3', '545', 'TASIKMALAYA', 'GARUT'),
('546', 'TREG-3', '546', 'TASIKMALAYA', 'GARUT'),
('547', 'TREG-3', '547', 'TASIKMALAYA', 'GARUT'),
('548', 'TREG-3', '548', 'TASIKMALAYA', 'GARUT'),
('549', 'TREG-3', '549', 'TASIKMALAYA', 'GARUT'),
('55', 'TREG-1', '55', 'BENGKULU', 'BENGKULU'),
('550', 'TREG-3', '550', 'TASIKMALAYA', 'SINGAPARNA'),
('551', 'TREG-3', '551', 'TASIKMALAYA', 'SINGAPARNA'),
('552', 'TREG-3', '552', 'TASIKMALAYA', 'SINGAPARNA'),
('553', 'TREG-3', '553', 'TASIKMALAYA', 'SINGAPARNA'),
('554', 'TREG-3', '554', 'TASIKMALAYA', 'INNERTSM'),
('555', 'TREG-3', '555', 'TASIKMALAYA', 'INNERTSM'),
('556', 'TREG-3', '556', 'BANDUNG', 'SUMEDANG'),
('557', 'TREG-3', '557', 'BANDUNG', 'SUMEDANG'),
('558', 'TREG-3', '558', 'BANDUNGBARAT', 'INNERWBB'),
('559', 'TREG-3', '559', 'BANDUNGBARAT', 'SOREANG'),
('56', 'TREG-1', '56', 'BENGKULU', 'BENGKULU'),
('560', 'TREG-3', '560', 'BANDUNGBARAT', 'PADALARANG'),
('561', 'TREG-3', '561', 'BANDUNGBARAT', 'PADALARANG'),
('562', 'TREG-3', '562', 'BANDUNGBARAT', 'PADALARANG'),
('563', 'TREG-3', '563', 'CIREBON', 'INDRAMAYU'),
('564', 'TREG-3', '564', 'CIREBON', 'INDRAMAYU'),
('565', 'TREG-3', '565', 'CIREBON', 'INDRAMAYU'),
('566', 'TREG-3', '566', 'CIREBON', 'MAJALENGKA'),
('567', 'TREG-3', '567', 'CIREBON', 'MAJALENGKA'),
('568', 'TREG-3', '568', 'SUKABUMI', 'CIANJUR'),
('569', 'TREG-3', '569', 'SUKABUMI', 'INNERSKB'),
('57', 'TREG-1', '57', 'BENGKULU', 'BENGKULU'),
('570', 'TREG-3', '570', 'SUKABUMI', 'INNERSKB'),
('571', 'TREG-3', '571', 'SUKABUMI', 'INNERSKB'),
('572', 'TREG-3', '572', 'SUKABUMI', 'INNERSKB'),
('573', 'TREG-3', '573', 'KARAWANG', 'PURWAKARTA'),
('574', 'TREG-3', '574', 'KARAWANG', 'PURWAKARTA'),
('575', 'TREG-3', '575', 'KARAWANG', 'PURWAKARTA'),
('576', 'TREG-3', '576', 'KARAWANG', 'SUBANG'),
('577', 'TREG-3', '577', 'KARAWANG', 'SUBANG'),
('578', 'TREG-3', '578', 'KARAWANG', 'SUBANG'),
('579', 'TREG-4', '579', 'KUDUS', 'BLORA'),
('58', 'TREG-1', '58', 'BENGKULU', 'BENGKULU'),
('580', 'TREG-4', '580', 'KUDUS', 'BLORA'),
('581', 'TREG-4', '581', 'KUDUS', 'BLORA'),
('582', 'TREG-4', '582', 'KUDUS', 'BLORA'),
('583', 'TREG-4', '583', 'KUDUS', 'JEPARA'),
('584', 'TREG-4', '584', 'KUDUS', 'JEPARA'),
('585', 'TREG-4', '585', 'KUDUS', 'JEPARA'),
('586', 'TREG-4', '586', 'KUDUS', 'JEPARA'),
('587', 'TREG-4', '587', 'KUDUS', 'JEPARA'),
('588', 'TREG-4', '588', 'KUDUS', 'JEPARA'),
('589', 'TREG-4', '589', 'KUDUS', 'KUDUS'),
('59', 'TREG-1', '59', 'BENGKULU', 'MUKO-MUKO'),
('590', 'TREG-4', '590', 'KUDUS', 'PATI'),
('591', 'TREG-4', '591', 'KUDUS', 'PATI'),
('592', 'TREG-4', '592', 'KUDUS', 'PATI'),
('593', 'TREG-4', '593', 'KUDUS', 'PATI'),
('594', 'TREG-4', '594', 'KUDUS', 'PATI'),
('595', 'TREG-4', '595', 'KUDUS', 'PURWODADI'),
('596', 'TREG-4', '596', 'KUDUS', 'PURWODADI'),
('597', 'TREG-4', '597', 'KUDUS', 'PURWODADI'),
('598', 'TREG-4', '598', 'KUDUS', 'PURWODADI'),
('599', 'TREG-4', '599', 'KUDUS', 'PURWODADI'),
('6', 'TREG-1', '6', 'ACEH', 'ACEH'),
('60', 'TREG-1', '60', 'BENGKULU', 'MUKO-MUKO'),
('600', 'TREG-4', '600', 'MAGELANG', 'KEBUMEN'),
('601', 'TREG-4', '601', 'MAGELANG', 'KEBUMEN'),
('602', 'TREG-4', '602', 'MAGELANG', 'KEBUMEN'),
('603', 'TREG-4', '603', 'MAGELANG', 'KEBUMEN'),
('604', 'TREG-4', '604', 'MAGELANG', 'MAGELANG'),
('605', 'TREG-4', '605', 'MAGELANG', 'MAGELANG'),
('606', 'TREG-4', '606', 'MAGELANG', 'MUNTILAN'),
('607', 'TREG-4', '607', 'MAGELANG', 'MUNTILAN'),
('608', 'TREG-4', '608', 'MAGELANG', 'PURWOREJO'),
('609', 'TREG-4', '609', 'MAGELANG', 'PURWOREJO'),
('61', 'TREG-1', '61', 'BENGKULU', 'MUKO-MUKO'),
('610', 'TREG-4', '610', 'MAGELANG', 'TEMANGGUNG'),
('611', 'TREG-4', '611', 'MAGELANG', 'TEMANGGUNG'),
('612', 'TREG-4', '612', 'MAGELANG', 'WONOSOBO'),
('613', 'TREG-4', '613', 'PEKALONGAN', 'BATANG'),
('614', 'TREG-4', '614', 'PEKALONGAN', 'BATANG'),
('615', 'TREG-4', '615', 'PEKALONGAN', 'BATANG'),
('616', 'TREG-4', '616', 'PEKALONGAN', 'BREBES'),
('617', 'TREG-4', '617', 'PEKALONGAN', 'BREBES'),
('618', 'TREG-4', '618', 'PEKALONGAN', 'BREBES'),
('619', 'TREG-4', '619', 'PEKALONGAN', 'BREBES'),
('62', 'TREG-1', '62', 'JAMBI', 'JAMBI'),
('620', 'TREG-4', '620', 'PEKALONGAN', 'BREBES'),
('621', 'TREG-4', '621', 'PEKALONGAN', 'PEKALONGAN'),
('622', 'TREG-4', '622', 'PEKALONGAN', 'PEKALONGAN'),
('623', 'TREG-4', '623', 'PEKALONGAN', 'PEKALONGAN'),
('624', 'TREG-4', '624', 'PEKALONGAN', 'PEMALANG'),
('625', 'TREG-4', '625', 'PEKALONGAN', 'PEMALANG'),
('626', 'TREG-4', '626', 'PEKALONGAN', 'PEMALANG'),
('627', 'TREG-4', '627', 'PEKALONGAN', 'SLAWI'),
('628', 'TREG-4', '628', 'PEKALONGAN', 'SLAWI'),
('629', 'TREG-4', '629', 'PEKALONGAN', 'SLAWI'),
('63', 'TREG-1', '63', 'JAMBI', 'JAMBI'),
('630', 'TREG-4', '630', 'PEKALONGAN', 'TEGAL'),
('631', 'TREG-4', '631', 'PEKALONGAN', 'TEGAL'),
('632', 'TREG-4', '632', 'PURWOKERTO', 'BANJARNEGARA'),
('633', 'TREG-4', '633', 'PURWOKERTO', 'BANJARNEGARA'),
('634', 'TREG-4', '634', 'PURWOKERTO', 'CILACAP'),
('635', 'TREG-4', '635', 'PURWOKERTO', 'CILACAP'),
('636', 'TREG-4', '636', 'PURWOKERTO', 'CILACAP'),
('637', 'TREG-4', '637', 'PURWOKERTO', 'CILACAP'),
('638', 'TREG-4', '638', 'PURWOKERTO', 'CILACAP'),
('639', 'TREG-4', '639', 'PURWOKERTO', 'CILACAP'),
('64', 'TREG-1', '64', 'JAMBI', 'JAMBI'),
('640', 'TREG-4', '640', 'PURWOKERTO', 'PURBALINGGA'),
('641', 'TREG-4', '641', 'PURWOKERTO', 'PURBALINGGA'),
('642', 'TREG-4', '642', 'PURWOKERTO', 'PURWOKERTO'),
('643', 'TREG-4', '643', 'PURWOKERTO', 'PURWOKERTO'),
('644', 'TREG-4', '644', 'PURWOKERTO', 'PURWOKERTO'),
('645', 'TREG-4', '645', 'PURWOKERTO', 'PURWOKERTO'),
('646', 'TREG-4', '646', 'PURWOKERTO', 'PURWOKERTO'),
('647', 'TREG-4', '647', 'PURWOKERTO', 'PURWOKERTO'),
('648', 'TREG-4', '648', 'SEMARANG', 'KENDAL'),
('649', 'TREG-4', '649', 'SEMARANG', 'KENDAL'),
('65', 'TREG-1', '65', 'JAMBI', 'JAMBI'),
('650', 'TREG-4', '650', 'SEMARANG', 'KENDAL'),
('651', 'TREG-4', '651', 'SEMARANG', 'SEMARANG'),
('652', 'TREG-4', '652', 'SEMARANG', 'SEMARANG'),
('653', 'TREG-4', '653', 'SEMARANG', 'SEMARANG'),
('654', 'TREG-4', '654', 'SEMARANG', 'SEMARANG'),
('655', 'TREG-4', '655', 'SEMARANG', 'SEMARANG'),
('656', 'TREG-4', '656', 'SEMARANG', 'SEMARANG'),
('657', 'TREG-4', '657', 'SEMARANG', 'SEMARANG'),
('658', 'TREG-4', '658', 'SEMARANG', 'SEMARANG'),
('659', 'TREG-4', '659', 'SEMARANG', 'SEMARANG'),
('66', 'TREG-1', '66', 'JAMBI', 'JAMBI'),
('660', 'TREG-4', '660', 'SEMARANG', 'SEMARANG'),
('661', 'TREG-4', '661', 'SEMARANG', 'UNGARAN'),
('662', 'TREG-4', '662', 'SEMARANG', 'UNGARAN'),
('663', 'TREG-4', '663', 'SEMARANG', 'UNGARAN'),
('664', 'TREG-4', '664', 'SEMARANG', 'UNGARAN'),
('665', 'TREG-4', '665', 'SEMARANG', 'UNGARAN'),
('666', 'TREG-4', '666', 'SEMARANG', 'SALATIGA'),
('667', 'TREG-4', '667', 'SOLO', 'KLATEN'),
('668', 'TREG-4', '668', 'SOLO', 'KLATEN'),
('669', 'TREG-4', '669', 'SOLO', 'KLATEN'),
('67', 'TREG-1', '67', 'JAMBI', 'JAMBI'),
('670', 'TREG-4', '670', 'SOLO', 'KLATEN'),
('671', 'TREG-4', '671', 'SOLO', 'SOLO'),
('672', 'TREG-4', '672', 'SOLO', 'SOLO'),
('673', 'TREG-4', '673', 'SOLO', 'SOLO'),
('674', 'TREG-4', '674', 'SOLO', 'SOLO'),
('675', 'TREG-4', '675', 'SOLO', 'SOLO'),
('676', 'TREG-4', '676', 'SOLO', 'SOLO'),
('677', 'TREG-4', '677', 'SOLO', 'SOLO'),
('678', 'TREG-4', '678', 'SOLO', 'SRAGEN'),
('679', 'TREG-4', '679', 'SOLO', 'SRAGEN'),
('68', 'TREG-1', '68', 'JAMBI', 'JAMBI'),
('680', 'TREG-4', '680', 'SOLO', 'SRAGEN'),
('681', 'TREG-4', '681', 'SOLO', 'WONOGIRI'),
('682', 'TREG-4', '682', 'SOLO', 'WONOGIRI'),
('683', 'TREG-4', '683', 'SOLO', 'WONOGIRI'),
('684', 'TREG-4', '684', 'SOLO', 'WONOGIRI'),
('685', 'TREG-4', '685', 'YOGYAKARTA', 'BANTUL'),
('686', 'TREG-4', '686', 'YOGYAKARTA', 'BANTUL'),
('687', 'TREG-4', '687', 'YOGYAKARTA', 'BANTUL'),
('688', 'TREG-4', '688', 'YOGYAKARTA', 'SLEMAN'),
('689', 'TREG-4', '689', 'YOGYAKARTA', 'SLEMAN'),
('69', 'TREG-1', '69', 'JAMBI', 'JAMBI'),
('690', 'TREG-4', '690', 'YOGYAKARTA', 'SLEMAN'),
('691', 'TREG-4', '691', 'YOGYAKARTA', 'SLEMAN'),
('692', 'TREG-4', '692', 'YOGYAKARTA', 'YOGYAKARTA'),
('693', 'TREG-4', '693', 'YOGYAKARTA', 'YOGYAKARTA'),
('694', 'TREG-4', '694', 'YOGYAKARTA', 'YOGYAKARTA'),
('695', 'TREG-4', '695', 'YOGYAKARTA', 'YOGYAKARTA'),
('696', 'TREG-4', '696', 'YOGYAKARTA', 'YOGYAKARTA'),
('697', 'TREG-5', '697', 'Denpasar', 'DENPASAR SELATAN'),
('698', 'TREG-5', '698', 'Denpasar', 'DENPASAR SELATAN'),
('699', 'TREG-5', '699', 'Denpasar', 'DENPASAR SELATAN'),
('7', 'TREG-1', '7', 'ACEH', 'ACEH'),
('70', 'TREG-1', '70', 'JAMBI', 'JAMBI'),
('700', 'TREG-5', '700', 'Denpasar', 'DENPASAR CENTRUM'),
('701', 'TREG-5', '701', 'Denpasar', 'DENPASAR SELATAN'),
('702', 'TREG-5', '702', 'Denpasar', 'DENPASAR UTARA'),
('703', 'TREG-5', '703', 'Denpasar', 'DENPASAR CENTRUM'),
('704', 'TREG-5', '704', 'Denpasar', 'DENPASAR UTARA'),
('705', 'TREG-5', '705', 'Denpasar', 'DENPASAR CENTRUM'),
('706', 'TREG-5', '706', 'Denpasar', 'DENPASAR CENTRUM'),
('707', 'TREG-5', '707', 'Denpasar', 'DENPASAR UTARA'),
('708', 'TREG-5', '708', 'Jember', 'TANGGUL'),
('709', 'TREG-5', '709', 'Jember', 'TANGGUL'),
('71', 'TREG-1', '71', 'JAMBI', 'MUARA BUNGO'),
('710', 'TREG-5', '710', 'Jember', 'TANGGUL'),
('711', 'TREG-5', '711', 'Jember', 'BANYUWANGI'),
('712', 'TREG-5', '712', 'Jember', 'BANYUWANGI'),
('713', 'TREG-5', '713', 'Jember', 'BANYUWANGI'),
('714', 'TREG-5', '714', 'Jember', 'BANYUWANGI'),
('715', 'TREG-5', '715', 'Jember', 'BANYUWANGI'),
('716', 'TREG-5', '716', 'Jember', 'SIBO'),
('717', 'TREG-5', '717', 'Jember', 'SIBO'),
('718', 'TREG-5', '718', 'Jember', 'SIBO'),
('719', 'TREG-5', '719', 'Jember', 'BANYUWANGI'),
('72', 'TREG-1', '72', 'JAMBI', 'MUARA BUNGO'),
('720', 'TREG-5', '720', 'Jember', 'BANYUWANGI'),
('721', 'TREG-5', '721', 'Jember', 'BANYUWANGI'),
('722', 'TREG-5', '722', 'Jember', 'BANYUWANGI'),
('723', 'TREG-5', '723', 'Jember', 'BANYUWANGI'),
('724', 'TREG-5', '724', 'Jember', 'JEMBER'),
('725', 'TREG-5', '725', 'Jember', 'JEMBER'),
('726', 'TREG-5', '726', 'Jember', 'JEMBER'),
('727', 'TREG-5', '727', 'Jember', 'JEMBER'),
('728', 'TREG-5', '728', 'Jember', 'JEMBER'),
('729', 'TREG-5', '729', 'Jember', 'JEMBER'),
('73', 'TREG-1', '73', 'JAMBI', 'MUARA BUNGO'),
('730', 'TREG-5', '730', 'Jember', 'SIBO'),
('731', 'TREG-5', '731', 'Jember', 'SIBO'),
('732', 'TREG-5', '732', 'Jember', 'SIBO'),
('733', 'TREG-5', '733', 'Jember', 'SIBO'),
('734', 'TREG-5', '734', 'Jember', 'TANGGUL'),
('735', 'TREG-5', '735', 'Jember', 'TANGGUL'),
('736', 'TREG-5', '736', 'Jember', 'TANGGUL'),
('737', 'TREG-5', '737', 'Jember', 'TANGGUL'),
('738', 'TREG-5', '738', 'Kediri', 'NGANJUK'),
('739', 'TREG-5', '739', 'Kediri', 'NGANJUK'),
('74', 'TREG-1', '74', 'JAMBI', 'MUARA BUNGO'),
('740', 'TREG-5', '740', 'Kediri', 'NGANJUK'),
('741', 'TREG-5', '741', 'Kediri', 'NGANJUK'),
('742', 'TREG-5', '742', 'Kediri', 'KEDIRI'),
('743', 'TREG-5', '743', 'Kediri', 'KEDIRI'),
('744', 'TREG-5', '744', 'Kediri', 'KEDIRI'),
('745', 'TREG-5', '745', 'Kediri', 'KEDIRI'),
('746', 'TREG-5', '746', 'Kediri', 'KEDIRI'),
('747', 'TREG-5', '747', 'Kediri', 'KEDIRI'),
('748', 'TREG-5', '748', 'Kediri', 'KEDIRI'),
('749', 'TREG-5', '749', 'Kediri', 'KEDIRI'),
('75', 'TREG-1', '75', 'JAMBI', 'MUARA BUNGO'),
('750', 'TREG-5', '750', 'Kediri', 'TULUNG AGUNG'),
('751', 'TREG-5', '751', 'Kediri', 'TULUNG AGUNG'),
('752', 'TREG-5', '752', 'Kediri', 'TULUNG AGUNG'),
('753', 'TREG-5', '753', 'Kediri', 'TULUNG AGUNG'),
('754', 'TREG-5', '754', 'Kediri', 'TULUNG AGUNG'),
('755', 'TREG-5', '755', 'Kediri', 'TULUNG AGUNG'),
('756', 'TREG-5', '756', 'Kediri', 'TULUNG AGUNG'),
('757', 'TREG-5', '757', 'Kediri', 'BLITAR'),
('758', 'TREG-5', '758', 'Kediri', 'BLITAR'),
('759', 'TREG-5', '759', 'Kediri', 'BLITAR'),
('76', 'TREG-1', '76', 'JAMBI', 'MUARA BUNGO'),
('760', 'TREG-5', '760', 'Kediri', 'BLITAR'),
('761', 'TREG-5', '761', 'Kediri', 'BLITAR'),
('762', 'TREG-5', '762', 'Madiun', 'MADIUN'),
('763', 'TREG-5', '763', 'Madiun', 'MADIUN'),
('764', 'TREG-5', '764', 'Madiun', 'MADIUN'),
('765', 'TREG-5', '765', 'Madiun', 'TUBAN'),
('766', 'TREG-5', '766', 'Madiun', 'TUBAN'),
('767', 'TREG-5', '767', 'Madiun', 'TUBAN'),
('768', 'TREG-5', '768', 'Madiun', 'TUBAN'),
('769', 'TREG-5', '769', 'Madiun', 'TUBAN'),
('77', 'TREG-1', '77', 'LAMPUNG', 'LAMPUNG'),
('770', 'TREG-5', '770', 'Madiun', 'NGAWI'),
('771', 'TREG-5', '771', 'Madiun', 'NGAWI'),
('772', 'TREG-5', '772', 'Madiun', 'NGAWI'),
('773', 'TREG-5', '773', 'Madiun', 'PONOROGO'),
('774', 'TREG-5', '774', 'Madiun', 'PONOROGO'),
('775', 'TREG-5', '775', 'Madiun', 'PONOROGO'),
('776', 'TREG-5', '776', 'Madiun', 'BOJONEGORO'),
('777', 'TREG-5', '777', 'Madiun', 'BOJONEGORO'),
('778', 'TREG-5', '778', 'Madiun', 'BOJONEGORO'),
('779', 'TREG-5', '779', 'Madiun', 'PONOROGO'),
('78', 'TREG-1', '78', 'LAMPUNG', 'LAMPUNG'),
('780', 'TREG-5', '780', 'Madiun', 'PONOROGO'),
('781', 'TREG-5', '781', 'Madiun', 'PONOROGO'),
('782', 'TREG-5', '782', 'Madiun', 'PONOROGO'),
('783', 'TREG-5', '783', 'Madiun', 'PONOROGO'),
('784', 'TREG-5', '784', 'Madura', 'MADURA'),
('785', 'TREG-5', '785', 'Madura', 'MADURA'),
('786', 'TREG-5', '786', 'MADURA', 'SUMENEP'),
('787', 'TREG-5', '787', 'MADURA', 'BANGKALAN'),
('788', 'TREG-5', '788', 'Malang', 'BATU'),
('789', 'TREG-5', '789', 'Malang', 'BATU'),
('79', 'TREG-1', '79', 'LAMPUNG', 'LAMPUNG'),
('790', 'TREG-5', '790', 'Malang', 'MALANG'),
('791', 'TREG-5', '791', 'Malang', 'BATU'),
('792', 'TREG-5', '792', 'Malang', 'KEPANJEN'),
('793', 'TREG-5', '793', 'Malang', 'KEPANJEN'),
('794', 'TREG-5', '794', 'Malang', 'KEPANJEN'),
('795', 'TREG-5', '795', 'Malang', 'KEPANJEN'),
('796', 'TREG-5', '796', 'Malang', 'KEPANJEN'),
('797', 'TREG-5', '797', 'Malang', 'MALANG'),
('798', 'TREG-5', '798', 'Malang', 'MALANG'),
('799', 'TREG-5', '799', 'Malang', 'MALANG'),
('8', 'TREG-1', '8', 'ACEH', 'ACEH'),
('80', 'TREG-1', '80', 'LAMPUNG', 'LAMPUNG'),
('800', 'TREG-5', '800', 'Malang', 'MALANG'),
('801', 'TREG-5', '801', 'Malang', 'MALANG'),
('802', 'TREG-5', '802', 'Malang', 'MALANG'),
('803', 'TREG-5', '803', 'Malang', 'MALANG'),
('804', 'TREG-5', '804', 'Malang', 'MALANG'),
('805', 'TREG-5', '805', 'Malang', 'MALANG'),
('806', 'TREG-5', '806', 'Malang', 'KEPANJEN'),
('807', 'TREG-5', '807', 'Malang', 'KEPANJEN'),
('808', 'TREG-5', '808', 'Malang', 'KEPANJEN'),
('809', 'TREG-5', '809', 'Malang', 'KEPANJEN'),
('81', 'TREG-1', '81', 'LAMPUNG', 'LAMPUNG'),
('810', 'TREG-5', '810', 'Malang', 'KEPANJEN'),
('811', 'TREG-5', '811', 'Malang', 'KEPANJEN'),
('812', 'TREG-5', '812', 'NTB', 'BIMA'),
('813', 'TREG-5', '813', 'NTB', 'BIMA'),
('814', 'TREG-5', '814', 'NTB', 'BIMA'),
('815', 'TREG-5', '815', 'NTB', 'BIMA'),
('816', 'TREG-5', '816', 'NTB', 'BIMA'),
('817', 'TREG-5', '817', 'NTB', 'MATARAM'),
('818', 'TREG-5', '818', 'NTB', 'MATARAM'),
('819', 'TREG-5', '819', 'NTB', 'MATARAM'),
('82', 'TREG-1', '82', 'LAMPUNG', 'LAMPUNG'),
('820', 'TREG-5', '820', 'NTB', 'MATARAM'),
('821', 'TREG-5', '821', 'NTB', 'MATARAM'),
('822', 'TREG-5', '822', 'NTB', 'SUMBAWA'),
('823', 'TREG-5', '823', 'NTB', 'SUMBAWA'),
('824', 'TREG-5', '824', 'NTB', 'SUMBAWA'),
('825', 'TREG-5', '825', 'NTB', 'SUMBAWA'),
('826', 'TREG-5', '826', 'NTT', 'LABUAN BAJO'),
('827', 'TREG-5', '827', 'NTT', 'MAUMERE'),
('828', 'TREG-5', '828', 'NTT', 'ATAMBUA'),
('829', 'TREG-5', '829', 'NTT', 'KUPANG'),
('83', 'TREG-1', '83', 'LAMPUNG', 'LAMPUNG'),
('830', 'TREG-5', '830', 'NTT', 'KUPANG'),
('831', 'TREG-5', '831', 'NTT', 'KUPANG'),
('832', 'TREG-5', '832', 'NTT', 'LABUAN BAJO'),
('833', 'TREG-5', '833', 'NTT', 'ATAMBUA'),
('834', 'TREG-5', '834', 'NTT', 'WAINGAPU'),
('835', 'TREG-5', '835', 'Pasuruan', 'PASURUAN'),
('836', 'TREG-5', '836', 'Pasuruan', 'PASURUAN'),
('837', 'TREG-5', '837', 'Pasuruan', 'PASURUAN'),
('838', 'TREG-5', '838', 'Pasuruan', 'PASURUAN'),
('839', 'TREG-5', '839', 'Pasuruan', 'PASURUAN'),
('84', 'TREG-1', '84', 'LAMPUNG', 'LAMPUNG'),
('840', 'TREG-5', '840', 'Pasuruan', 'PROBOLINGGO'),
('841', 'TREG-5', '841', 'Pasuruan', 'PROBOLINGGO'),
('842', 'TREG-5', '842', 'Pasuruan', 'PROBOLINGGO'),
('843', 'TREG-5', '843', 'Pasuruan', 'LUMAJANG'),
('844', 'TREG-5', '844', 'Pasuruan', 'LUMAJANG'),
('845', 'TREG-5', '845', 'Pasuruan', 'LUMAJANG'),
('846', 'TREG-5', '846', 'Pasuruan', 'LUMAJANG'),
('847', 'TREG-5', '847', 'Pasuruan', 'LUMAJANG'),
('848', 'TREG-5', '848', 'Pasuruan', 'LUMAJANG'),
('849', 'TREG-5', '849', 'Pasuruan', 'LUMAJANG'),
('85', 'TREG-1', '85', 'LAMPUNG', 'LAMPUNG'),
('850', 'TREG-5', '850', 'Pasuruan', 'PASURUAN'),
('851', 'TREG-5', '851', 'Pasuruan', 'PROBOLINGGO'),
('852', 'TREG-5', '852', 'Pasuruan', 'PROBOLINGGO'),
('853', 'TREG-5', '853', 'Pasuruan', 'PROBOLINGGO'),
('854', 'TREG-5', '854', 'Pasuruan', 'PROBOLINGGO'),
('855', 'TREG-5', '855', 'Sidoarjo', 'SIDOARJO'),
('856', 'TREG-5', '856', 'Sidoarjo', 'JOMBANG'),
('857', 'TREG-5', '857', 'Sidoarjo', 'JOMBANG'),
('858', 'TREG-5', '858', 'Sidoarjo', 'JOMBANG'),
('859', 'TREG-5', '859', 'Sidoarjo', 'MOJOKERTO'),
('86', 'TREG-1', '86', 'LAMPUNG', 'METRO'),
('860', 'TREG-5', '860', 'Sidoarjo', 'JOMBANG'),
('861', 'TREG-5', '861', 'Sidoarjo', 'SIDOARJO'),
('862', 'TREG-5', '862', 'Sidoarjo', 'MOJOKERTO'),
('863', 'TREG-5', '863', 'Sidoarjo', 'MOJOKERTO'),
('864', 'TREG-5', '864', 'Sidoarjo', 'MOJOKERTO'),
('865', 'TREG-5', '865', 'Sidoarjo', 'MOJOKERTO'),
('866', 'TREG-5', '866', 'Sidoarjo', 'MOJOKERTO'),
('867', 'TREG-5', '867', 'Sidoarjo', 'PANDAAN'),
('868', 'TREG-5', '868', 'Sidoarjo', 'PANDAAN'),
('869', 'TREG-5', '869', 'Sidoarjo', 'PANDAAN'),
('87', 'TREG-1', '87', 'LAMPUNG', 'METRO'),
('870', 'TREG-5', '870', 'Sidoarjo', 'PANDAAN'),
('871', 'TREG-5', '871', 'Sidoarjo', 'PANDAAN'),
('872', 'TREG-5', '872', 'Sidoarjo', 'SIDOARJO'),
('873', 'TREG-5', '873', 'Sidoarjo', 'SIDOARJO'),
('874', 'TREG-5', '874', 'Sidoarjo', 'SIDOARJO'),
('875', 'TREG-5', '875', 'Sidoarjo', 'SIDOARJO'),
('876', 'TREG-5', '876', 'Singaraja', 'GIANYAR'),
('877', 'TREG-5', '877', 'Singaraja', 'GIANYAR'),
('878', 'TREG-5', '878', 'Singaraja', 'GIANYAR'),
('879', 'TREG-5', '879', 'Singaraja', 'TABANAN'),
('88', 'TREG-1', '88', 'LAMPUNG', 'METRO'),
('880', 'TREG-5', '880', 'Singaraja', 'TABANAN'),
('881', 'TREG-5', '881', 'Singaraja', 'GIANYAR'),
('882', 'TREG-5', '882', 'Singaraja', 'TABANAN'),
('883', 'TREG-5', '883', 'Singaraja', 'GIANYAR'),
('884', 'TREG-5', '884', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('885', 'TREG-5', '885', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('886', 'TREG-5', '886', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('887', 'TREG-5', '887', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('888', 'TREG-5', '888', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('889', 'TREG-5', '889', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('89', 'TREG-1', '89', 'LAMPUNG', 'METRO'),
('890', 'TREG-5', '890', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('891', 'TREG-5', '891', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('892', 'TREG-5', '892', 'Surabaya Utara', 'SURABAYA UTARA'),
('893', 'TREG-5', '893', 'Surabaya Utara', 'SURABAYA UTARA'),
('894', 'TREG-5', '894', 'Surabaya Utara', 'GRESIK'),
('895', 'TREG-5', '895', 'Surabaya Utara', 'SURABAYA UTARA'),
('896', 'TREG-5', '896', 'Surabaya Utara', 'SURABAYA UTARA'),
('897', 'TREG-5', '897', 'Surabaya Utara', 'SURABAYA UTARA'),
('898', 'TREG-5', '898', 'Surabaya Utara', 'SURABAYA UTARA'),
('899', 'TREG-5', '899', 'Surabaya Utara', 'SURABAYA UTARA'),
('9', 'TREG-1', '9', 'ACEH', 'ACEH'),
('90', 'TREG-1', '90', 'LAMPUNG', 'METRO'),
('900', 'TREG-5', '900', 'Surabaya Utara', 'LAMONGAN'),
('901', 'TREG-5', '901', 'Surabaya Utara', 'SURABAYA UTARA'),
('902', 'TREG-5', '902', 'Surabaya Utara', 'SURABAYA UTARA'),
('903', 'TREG-5', '903', 'Surabaya Utara', 'SURABAYA UTARA'),
('904', 'TREG-6', '904', 'BALIKPAPAN', 'Balikpapan');
INSERT INTO `regional` (`id_regional`, `treg`, `id_witel`, `nama_witel`, `datel`) VALUES
('905', 'TREG-6', '905', 'BALIKPAPAN', 'Balikpapan'),
('906', 'TREG-6', '906', 'BALIKPAPAN', 'Balikpapan'),
('907', 'TREG-6', '907', 'BALIKPAPAN', 'Balikpapan'),
('908', 'TREG-6', '908', 'BALIKPAPAN', 'Balikpapan'),
('909', 'TREG-6', '909', 'BALIKPAPAN', 'Balikpapan'),
('91', 'TREG-1', '91', 'LAMPUNG', 'METRO'),
('910', 'TREG-6', '910', 'BALIKPAPAN', 'Tanahgrogot'),
('911', 'TREG-6', '911', 'BALIKPAPAN', 'Tanahgrogot'),
('912', 'TREG-6', '912', 'BALIKPAPAN', 'Tanahgrogot'),
('913', 'TREG-6', '913', 'BALIKPAPAN', 'Tanahgrogot'),
('914', 'TREG-6', '914', 'BALIKPAPAN', 'Tanahgrogot'),
('915', 'TREG-6', '915', 'BALIKPAPAN', 'Tanahgrogot'),
('916', 'TREG-6', '916', 'BALIKPAPAN', 'Tanahgrogot'),
('917', 'TREG-6', '917', 'BALIKPAPAN', 'Tanahgrogot'),
('918', 'TREG-6', '918', 'BALIKPAPAN', 'Tanahgrogot'),
('919', 'TREG-6', '919', 'BALIKPAPAN', 'Tanahgrogot'),
('92', 'TREG-1', '92', 'LAMPUNG', 'METRO'),
('920', 'TREG-6', '920', 'KALBAR', 'Ketapang'),
('921', 'TREG-6', '921', 'KALBAR', 'Ketapang'),
('922', 'TREG-6', '922', 'KALBAR', 'Ketapang'),
('923', 'TREG-6', '923', 'KALBAR', 'Mempawah'),
('924', 'TREG-6', '924', 'KALBAR', 'Mempawah'),
('925', 'TREG-6', '925', 'KALBAR', 'Mempawah'),
('926', 'TREG-6', '926', 'KALBAR', 'Mempawah'),
('927', 'TREG-6', '927', 'KALBAR', 'Pontianak'),
('928', 'TREG-6', '928', 'KALBAR', 'Pontianak'),
('929', 'TREG-6', '929', 'KALBAR', 'Pontianak'),
('93', 'TREG-1', '93', 'LAMPUNG', 'PRINGSEWU'),
('930', 'TREG-6', '930', 'KALBAR', 'Pontianak'),
('931', 'TREG-6', '931', 'KALBAR', 'Pontianak'),
('932', 'TREG-6', '932', 'KALBAR', 'Pontianak'),
('933', 'TREG-6', '933', 'KALBAR', 'Sanggau'),
('934', 'TREG-6', '934', 'KALBAR', 'Sanggau'),
('935', 'TREG-6', '935', 'KALBAR', 'Sanggau'),
('936', 'TREG-6', '936', 'KALBAR', 'Sanggau'),
('937', 'TREG-6', '937', 'KALBAR', 'Sanggau'),
('938', 'TREG-6', '938', 'KALBAR', 'Singkawang'),
('939', 'TREG-6', '939', 'KALBAR', 'Singkawang'),
('94', 'TREG-1', '94', 'LAMPUNG', 'PRINGSEWU'),
('940', 'TREG-6', '940', 'KALBAR', 'Singkawang'),
('941', 'TREG-6', '941', 'KALBAR', 'Singkawang'),
('942', 'TREG-6', '942', 'KALBAR', 'Singkawang'),
('943', 'TREG-6', '943', 'KALBAR', 'Singkawang'),
('944', 'TREG-6', '944', 'KALBAR', 'Sintang'),
('945', 'TREG-6', '945', 'KALBAR', 'Sintang'),
('946', 'TREG-6', '946', 'KALBAR', 'Sintang'),
('947', 'TREG-6', '947', 'KALSEL', 'Banjarbaru'),
('948', 'TREG-6', '948', 'KALSEL', 'Banjarbaru'),
('949', 'TREG-6', '949', 'KALSEL', 'Banjarbaru'),
('95', 'TREG-1', '95', 'LAMPUNG', 'PRINGSEWU'),
('950', 'TREG-6', '950', 'KALSEL', 'Banjarmasin'),
('951', 'TREG-6', '951', 'KALSEL', 'Banjarmasin'),
('952', 'TREG-6', '952', 'KALSEL', 'Banjarmasin'),
('953', 'TREG-6', '953', 'KALSEL', 'Banjarmasin'),
('954', 'TREG-6', '954', 'KALSEL', 'Banjarmasin'),
('955', 'TREG-6', '955', 'KALSEL', 'Batu Licin'),
('956', 'TREG-6', '956', 'KALSEL', 'Batu Licin'),
('957', 'TREG-6', '957', 'KALSEL', 'Batu Licin'),
('958', 'TREG-6', '958', 'KALSEL', 'Batu Licin'),
('959', 'TREG-6', '959', 'KALSEL', 'Batu Licin'),
('96', 'TREG-1', '96', 'LAMPUNG', 'PRINGSEWU'),
('960', 'TREG-6', '960', 'KALSEL', 'Batu Licin'),
('961', 'TREG-6', '961', 'KALSEL', 'Batu Licin'),
('962', 'TREG-6', '962', 'KALSEL', 'Batu Licin'),
('963', 'TREG-6', '963', 'KALSEL', 'Batu Licin'),
('964', 'TREG-6', '964', 'KALSEL', 'Tanjung Tabalong'),
('965', 'TREG-6', '965', 'KALSEL', 'Tanjung Tabalong'),
('966', 'TREG-6', '966', 'KALSEL', 'Tanjung Tabalong'),
('967', 'TREG-6', '967', 'KALSEL', 'Tanjung Tabalong'),
('968', 'TREG-6', '968', 'KALSEL', 'Tanjung Tabalong'),
('969', 'TREG-6', '969', 'KALSEL', 'Tanjung Tabalong'),
('97', 'TREG-1', '97', 'LAMPUNG', 'PRINGSEWU'),
('970', 'TREG-6', '970', 'KALSEL', 'Tanjung Tabalong'),
('971', 'TREG-6', '971', 'KALTARA', 'Bulungan Berau'),
('972', 'TREG-6', '972', 'KALTARA', 'Bulungan Berau'),
('973', 'TREG-6', '973', 'KALTARA', 'Bulungan Berau'),
('974', 'TREG-6', '974', 'KALTARA', 'Bulungan Berau'),
('975', 'TREG-6', '975', 'KALTARA', 'Bulungan Berau'),
('976', 'TREG-6', '976', 'KALTARA', 'Nunukan'),
('977', 'TREG-6', '977', 'KALTARA', 'Nunukan'),
('978', 'TREG-6', '978', 'KALTARA', 'Nunukan'),
('979', 'TREG-6', '979', 'KALTARA', 'Nunukan'),
('98', 'TREG-1', '98', 'LAMPUNG', 'PRINGSEWU'),
('980', 'TREG-6', '980', 'KALTARA', 'Tarakan'),
('981', 'TREG-6', '981', 'KALTARA', 'Tarakan'),
('982', 'TREG-6', '982', 'KALTARA', 'Tarakan'),
('983', 'TREG-6', '983', 'KALTENG', 'Muarateweh'),
('984', 'TREG-6', '984', 'KALTENG', 'Muarateweh'),
('985', 'TREG-6', '985', 'KALTENG', 'Muarateweh'),
('986', 'TREG-6', '986', 'KALTENG', 'Muarateweh'),
('987', 'TREG-6', '987', 'KALTENG', 'Muarateweh'),
('988', 'TREG-6', '988', 'KALTENG', 'Palangkaraya'),
('989', 'TREG-6', '989', 'KALTENG', 'Palangkaraya'),
('99', 'TREG-1', '99', 'LAMPUNG', 'PRINGSEWU'),
('990', 'TREG-6', '990', 'KALTENG', 'Palangkaraya'),
('991', 'TREG-6', '991', 'KALTENG', 'Palangkaraya'),
('992', 'TREG-6', '992', 'KALTENG', 'Palangkaraya'),
('993', 'TREG-6', '993', 'KALTENG', 'Palangkaraya'),
('994', 'TREG-6', '994', 'KALTENG', 'Palangkaraya'),
('995', 'TREG-6', '995', 'KALTENG', 'Pangkalan Bun'),
('996', 'TREG-6', '996', 'KALTENG', 'Pangkalan Bun'),
('997', 'TREG-6', '997', 'KALTENG', 'Pangkalan Bun'),
('998', 'TREG-6', '998', 'KALTENG', 'Pangkalan Bun'),
('999', 'TREG-6', '999', 'KALTENG', 'Pangkalan Bun'),
('id_regional', 'treg', 'id_witel', 'nama_witel', 'datel');

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
-- Table structure for table `sensor`
--

CREATE TABLE `sensor` (
  `id_sensor` bigint(20) NOT NULL,
  `sensor_name` varchar(250) NOT NULL,
  `id_asset_item` bigint(20) NOT NULL,
  `id_marketplace` int(11) DEFAULT 0,
  `description` varchar(250) NOT NULL,
  `imei` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `msisdn` varchar(50) NOT NULL,
  `barcode1` varchar(200) NOT NULL,
  `sensor_analog1` double(8,4) NOT NULL,
  `sensor_analog2` double(8,4) NOT NULL,
  `sensor_analog3` double(8,4) NOT NULL,
  `sensor_analog4` double(8,4) NOT NULL,
  `sensor_analog5` double(8,4) NOT NULL,
  `sensor_analog6` double(8,4) NOT NULL,
  `sensor_digital1` int(11) NOT NULL,
  `sensor_digital2` int(11) NOT NULL,
  `sensor_digital3` int(11) NOT NULL,
  `sensor_digital4` int(11) NOT NULL,
  `sensor_digital5` int(11) NOT NULL,
  `sensor_digital6` int(11) NOT NULL,
  `data_value1` varchar(250) DEFAULT NULL,
  `data_value2` varchar(250) DEFAULT NULL,
  `data_value3` varchar(250) DEFAULT NULL,
  `data_value4` varchar(250) DEFAULT NULL,
  `data_value5` varchar(250) DEFAULT NULL,
  `data_value6` varchar(250) DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `last_user_update` int(11) NOT NULL,
  `last_update_ip_address` varchar(64) NOT NULL,
  `token` varchar(100) NOT NULL,
  `flag_new_changes` int(1) NOT NULL,
  `flag_ack_devices` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sensor`
--

INSERT INTO `sensor` (`id_sensor`, `sensor_name`, `id_asset_item`, `id_marketplace`, `description`, `imei`, `cid`, `msisdn`, `barcode1`, `sensor_analog1`, `sensor_analog2`, `sensor_analog3`, `sensor_analog4`, `sensor_analog5`, `sensor_analog6`, `sensor_digital1`, `sensor_digital2`, `sensor_digital3`, `sensor_digital4`, `sensor_digital5`, `sensor_digital6`, `data_value1`, `data_value2`, `data_value3`, `data_value4`, `data_value5`, `data_value6`, `last_update`, `last_user_update`, `last_update_ip_address`, `token`, `flag_new_changes`, `flag_ack_devices`) VALUES
(1, 'Sensor Tracking', 1, 0, 's', '123', 12345, '12345', '', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0, 0, '103.2201', '67.09912', '45', '12345', 'OK', '2022-12-01 10:01:17', '2023-01-18 15:02:27', 2023, '::1', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_alert`
--

CREATE TABLE `sensor_alert` (
  `id_sensor_alert` bigint(20) NOT NULL,
  `id_sensor` bigint(20) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `channel_number` int(11) NOT NULL,
  `first_appereance_time` datetime NOT NULL,
  `first_appereance_value` double(20,2) NOT NULL,
  `last_appreance_time` datetime NOT NULL,
  `last_appreance_value` double(20,2) NOT NULL,
  `is_case_open` int(1) NOT NULL DEFAULT 1,
  `alert_message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sensor_alert_history`
--

CREATE TABLE `sensor_alert_history` (
  `id_sensor_alert_history` bigint(20) NOT NULL,
  `id_sensor` bigint(20) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `channel_number` int(11) NOT NULL,
  `first_appereance_time` datetime NOT NULL,
  `first_appereance_value` double(20,2) NOT NULL,
  `last_appreance_time` datetime NOT NULL,
  `last_appreance_value` double(20,2) NOT NULL,
  `is_case_open` int(1) NOT NULL DEFAULT 1,
  `alert_message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sensor_log`
--

CREATE TABLE `sensor_log` (
  `id_sensor_log` bigint(20) NOT NULL,
  `id_sensor` bigint(20) NOT NULL,
  `log_time` datetime NOT NULL,
  `log_date` date NOT NULL,
  `value1` double(20,4) NOT NULL,
  `value2` double(20,4) NOT NULL,
  `value3` double(20,4) NOT NULL,
  `value4` double(20,4) NOT NULL,
  `value5` double(20,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor_log`
--

INSERT INTO `sensor_log` (`id_sensor_log`, `id_sensor`, `log_time`, `log_date`, `value1`, `value2`, `value3`, `value4`, `value5`) VALUES
(1, 1, '2019-07-24 04:19:24', '2019-07-24', 12.0000, 34.0000, 16.0000, 0.0000, 0.0000),
(2, 1, '2019-09-11 13:09:37', '2019-09-11', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(3, 1, '2019-09-11 13:09:39', '2019-09-11', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(4, 1, '2019-09-11 13:09:41', '2019-09-11', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(5, 1, '2019-09-11 13:10:27', '2019-09-11', 21.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(6, 1, '2019-09-11 13:10:28', '2019-09-11', 21.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(7, 1, '2019-09-11 13:10:28', '2019-09-11', 21.0000, 0.0000, 0.0000, 0.0000, 0.0000),
(8, 1, '2019-12-03 10:34:50', '2019-12-03', 21.0000, 0.0000, 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_warning_parameter`
--

CREATE TABLE `sensor_warning_parameter` (
  `id_sensor_warning_parameter` int(11) NOT NULL,
  `parameter_number` int(11) NOT NULL,
  `label` varchar(150) NOT NULL,
  `batas_bawah` double(12,2) NOT NULL,
  `batas_atas` double(12,2) NOT NULL,
  `need_warning` int(1) NOT NULL,
  `color_label` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor_warning_parameter`
--

INSERT INTO `sensor_warning_parameter` (`id_sensor_warning_parameter`, `parameter_number`, `label`, `batas_bawah`, `batas_atas`, `need_warning`, `color_label`, `description`) VALUES
(1, 1, 'NORMAL', 10.00, 21.00, 0, '#0000ff', NULL),
(2, 1, 'WARM', 21.00, 28.00, 1, '#ff0000', NULL),
(3, 1, 'VERY HOT', 28.00, 200.00, 1, '#ff00000', 'Sangat Panas'),
(4, 1, 'VERY COLD', 0.00, 10.00, 1, '#00ff00', 'DINGIN SEKALI');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id_supervisor` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `NIK` bigint(30) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `id_regional` varchar(20) NOT NULL,
  `id_witel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id_supervisor`, `nama`, `nama_lengkap`, `NIK`, `jabatan`, `id_regional`, `id_witel`) VALUES
(1, 'halo', 'halo hai', 1232131, 'manajer', '101', '102'),
(2, 'hai', 'hai halo', 64353, 'manager', '10', '10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` bigint(20) NOT NULL,
  `nama_supplier` varchar(200) NOT NULL,
  `alamat_supplier` varchar(200) NOT NULL,
  `pic_nama` varchar(200) NOT NULL,
  `no_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `pic_nama`, `no_phone`) VALUES
(1, 'ZTE', 'Cikarang ', 'Mr Khong ', '21220221'),
(2, 'Huawei', 'Tangerang Selatan ', 'Mr Ant Thi', '0821321123');

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

--
-- Dumping data for table `type_asset2`
--

INSERT INTO `type_asset2` (`id_type_asset`, `type_asset`, `description`, `is_active`) VALUES
(1, 'PERALATAN KEBERSIHAN', '', 1),
(2, 'DAPUR', '', 1),
(3, 'KASIR', '', 1);

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
(1, 'Admin IT', 'admin', 'admin@admin.com', '$2y$13$wUP89zDmoJhxVQ55PqilV.K/5e3.K2RSRuhHShtr5zVJzSXZtBFJS', 'GL63CdJxr0wI2BuKh7JNC8rJU7XNUY24', 10, 'asdas', 'admin', 20, 1530780329, 1657966284),
(37, 'admin5 kelima', 'admin5', 'admin@gmail.com', '$2y$13$D.b3Blb001f2uuDt767LZeIOaTHniVmLMseitoJlXQZli38vBTylq', 'PpmWggpvXU8pyf_rw0A4khueBDLBb2FO', 10, 'jFsygbE0MmjufTXvz6dOtRiM_4Kjppv5_1565787233', 'admin', 10, 1565787232, 1565790121),
(38, 'teknisi1', 'teknisi1', 'teknisi1@mail.com', '$2y$13$UTMRlIenh4pdh3v2hJwVX..ggQ.4GhoWFcdqNhg1g36RlEMHj0f2W', '2M9Rhmbc0hCbuLz7lZDWjq9CEd8s5ilD', 10, 'DiIogIXALQJf-ENT6sXtY-mejI6C1mba_1655873078', 'engineer', 10, 1655873078, 1655873328),
(39, 'supervisor1', 'supervisor1', 'supervisor1@mail.com', '$2y$13$iUDbdlJ9naJbGIlKskc.G.wuVwkAUh629i7ICJVVlKVPRVdB7i3pS', '8sVS3_040qf-J9US_YTSzz2PUz1Q1OKv', 10, 'yuklvpGGmD2gsFkEQAtUuAZLk2Rs9Hpz_1655873184', 'engineer-supervisor', 10, 1655873184, 1657632428),
(41, 'teknisi2', 'jule', 'teknisi2@gmail.com', '$2y$13$544BZ0AY3SlACMeN8Vyfe.2TjuIbFc7C15oLMCawQsFCCdhKN78tq', 'GvwmQZuuJNTKYdpNO3U6eh4TGRKm2v85', 10, 'vYJVATmmEypjnh9mBDO5KAo_bTskBaNJ_1657287638', 'engineer', 10, 1657287638, 1657287638),
(42, 'Manager Service', 'managerservice', 'admin2@gmail.com', '$2y$13$P2RjkmiKmW8HLlC.Cd5f1emK9/AGpMARaN/SANKC9LIsNdFjlu2J2', 'AV5W0ab7GVu31Kbv6mw4SiWpktuwjBm5', 10, 'dksRlshe8ZkqtScReYpY7A_uYGIN7FHU_1658046232', 'Manager Service', 10, 1658046232, 1658046232),
(43, 'haihalo', 'halo', 'halo@gmail.com', '$2y$13$zYkbe2VtUB2ic0aY5Z29ZOP7Lwrys3QD0vytnAmDBFEq0bfWzTKWe', 'A25HWvm-DWBN0-EzZ6cIAlERcDTQ4mch', 10, 'qnKdhw4E15PmPdn1l30vWsdsRTQhWe3R_1658101331', 'engineer-supervisor', 10, 1658101331, 1658101331);

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
  `alamat` varchar(250) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `id_witel` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id_warehouse`, `nama_warehouse`, `alamat`, `deskripsi`, `longitude`, `latitude`, `id_witel`) VALUES
(1, 'warehouse Bawah', 'Alamat warehouse Bawah', '', '', '', ''),
(6, 'Gudang-Selatan', '', '', '', '', ''),
(7, 'bandung', 'jl .indah', 'halo', '1', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `witel`
--

CREATE TABLE `witel` (
  `id_witel` varchar(20) NOT NULL,
  `nama_witel` varchar(200) NOT NULL,
  `datel` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `witel`
--

INSERT INTO `witel` (`id_witel`, `nama_witel`, `datel`) VALUES
('1', 'ACEH', 'ACEH'),
('10', 'ACEH', 'ACEH'),
('100', 'LAMPUNG', 'PRINGSEWU'),
('1000', 'KALTENG', 'Sampit'),
('1001', 'KALTENG', 'Sampit'),
('1002', 'KALTENG', 'Sampit'),
('1003', 'KALTENG', 'Sampit'),
('1004', 'KALTENG', 'Sampit'),
('1005', 'SAMARINDA', 'Bontang'),
('1006', 'SAMARINDA', 'Bontang'),
('1007', 'SAMARINDA', 'Bontang'),
('1008', 'SAMARINDA', 'Bontang'),
('1009', 'SAMARINDA', 'Bontang'),
('101', 'LAMPUNG', 'PRINGSEWU'),
('1010', 'SAMARINDA', 'Melak'),
('1011', 'SAMARINDA', 'Melak'),
('1012', 'SAMARINDA', 'Melak'),
('1013', 'SAMARINDA', 'Melak'),
('1014', 'SAMARINDA', 'Samarinda'),
('1015', 'SAMARINDA', 'Samarinda'),
('1016', 'SAMARINDA', 'Samarinda'),
('1017', 'SAMARINDA', 'Samarinda'),
('1018', 'SAMARINDA', 'Samarinda'),
('1019', 'SAMARINDA', 'Samarinda'),
('102', 'LAMPUNG', 'PRINGSEWU'),
('1020', 'SAMARINDA', 'Samarinda'),
('1021', 'SAMARINDA', 'Samarinda'),
('1022', 'SAMARINDA', 'Samarinda'),
('1023', 'SAMARINDA', 'Samarinda'),
('1024', 'SAMARINDA', 'Samarinda'),
('1025', 'SAMARINDA', 'Samarinda'),
('1026', 'SAMARINDA', 'Samarinda'),
('1027', 'GORONTALO', 'GORONTALO'),
('1028', 'GORONTALO', 'GORONTALO'),
('1029', 'GORONTALO', 'GORONTALO'),
('103', 'MEDAN', 'BINJAI'),
('1030', 'GORONTALO', 'MARISA'),
('1031', 'GORONTALO', 'MARISA'),
('1032', 'GORONTALO', 'MARISA'),
('1033', 'MAKASSAR', 'MAKASSAR'),
('1034', 'MAKASSAR', 'MAKASSAR'),
('1035', 'MAKASSAR', 'MAKASSAR'),
('1036', 'MAKASSAR', 'MAKASSAR'),
('1037', 'MAKASSAR', 'MAKASSAR'),
('1038', 'MAKASSAR', 'MAROS'),
('1039', 'MAKASSAR', 'MAROS'),
('104', 'MEDAN', 'BINJAI'),
('1040', 'MAKASSAR', 'MAROS'),
('1041', 'MAKASSAR', 'MAROS'),
('1042', 'MAKASSAR', 'BANTAENG'),
('1043', 'MAKASSAR', 'BANTAENG'),
('1044', 'MAKASSAR', 'BANTAENG'),
('1045', 'MAKASSAR', 'BANTAENG'),
('1046', 'MAKASSAR', 'GOWA'),
('1047', 'MAKASSAR', 'GOWA'),
('1048', 'MAKASSAR', 'GOWA'),
('1049', 'MAKASSAR', 'BONE'),
('105', 'MEDAN', 'BINJAI'),
('1050', 'MAKASSAR', 'BONE'),
('1051', 'MALUKU', 'AMBON'),
('1052', 'MALUKU', 'MASOHI'),
('1053', 'MALUKU', 'MASOHI'),
('1054', 'MALUKU', 'MASOHI'),
('1055', 'MALUKU', 'MASOHI'),
('1056', 'MALUKU', 'MASOHI'),
('1057', 'MALUKU', 'MASOHI'),
('1058', 'MALUKU', 'MASOHI'),
('1059', 'MALUKU', 'TUAL'),
('106', 'MEDAN', 'BINJAI'),
('1060', 'MALUKU', 'TUAL'),
('1061', 'MALUKU', 'TUAL'),
('1062', 'PAPUA', 'JAYAPURA'),
('1063', 'PAPUA', 'JAYAPURA'),
('1064', 'PAPUA', 'ABEPURA'),
('1065', 'PAPUA', 'ABEPURA'),
('1066', 'PAPUA', 'SENTANI'),
('1067', 'PAPUA', 'SENTANI'),
('1068', 'PAPUA', 'SENTANI'),
('1069', 'PAPUA', 'MERAUKE'),
('107', 'MEDAN', 'BINJAI'),
('1070', 'PAPUA', 'MERAUKE'),
('1071', 'PAPUA', 'MERAUKE'),
('1072', 'PAPUA', 'MERAUKE'),
('1073', 'PAPUA', 'TIMIKA'),
('1074', 'PAPUA', 'TIMIKA'),
('1075', 'PAPUA', 'TIMIKA'),
('1076', 'PAPUA BARAT', 'SORONG'),
('1077', 'PAPUA BARAT', 'SORONG'),
('1078', 'PAPUA BARAT', 'BIAK'),
('1079', 'PAPUA BARAT', 'BIAK'),
('108', 'MEDAN', 'BINJAI'),
('1080', 'PAPUA BARAT', 'BIAK'),
('1081', 'PAPUA BARAT', 'BIAK'),
('1082', 'PAPUA BARAT', 'FAKFAK'),
('1083', 'PAPUA BARAT', 'FAKFAK'),
('1084', 'PAPUA BARAT', 'MANOKWARI'),
('1085', 'PAPUA BARAT', 'MANOKWARI'),
('1086', 'PAPUA BARAT', 'MANOKWARI'),
('1087', 'PAPUA BARAT', 'MANOKWARI'),
('1088', 'SULSELBAR', 'MAMUJU'),
('1089', 'SULSELBAR', 'MAMUJU'),
('109', 'MEDAN', 'LUBUK PAKAM'),
('1090', 'SULSELBAR', 'MAMUJU'),
('1091', 'SULSELBAR', 'MAMUJU'),
('1092', 'SULSELBAR', 'MAMUJU'),
('1093', 'SULSELBAR', 'MAMUJU'),
('1094', 'SULSELBAR', 'PALOPO'),
('1095', 'SULSELBAR', 'PALOPO'),
('1096', 'SULSELBAR', 'PALOPO'),
('1097', 'SULSELBAR', 'PALOPO'),
('1098', 'SULSELBAR', 'PAREPARE'),
('1099', 'SULSELBAR', 'PAREPARE'),
('11', 'ACEH', 'ACEH'),
('110', 'MEDAN', 'LUBUK PAKAM'),
('1100', 'SULSELBAR', 'PAREPARE'),
('1101', 'SULSELBAR', 'SITOR'),
('1102', 'SULSELBAR', 'SITOR'),
('1103', 'SULSELBAR', 'SITOR'),
('1104', 'SULSELBAR', 'SITOR'),
('1105', 'SULSELBAR', 'SITOR'),
('1106', 'SULSELBAR', 'SITOR'),
('1107', 'SULSELBAR', 'SITOR'),
('1108', 'SULSELBAR', 'SITOR'),
('1109', 'SULSELBAR', 'SITOR'),
('111', 'MEDAN', 'LUBUK PAKAM'),
('1110', 'SULSELBAR', 'SITOR'),
('1111', 'SULSELBAR', 'SITOR'),
('1112', 'SULTENG', 'PALU'),
('1113', 'SULTENG', 'PALU'),
('1114', 'SULTENG', 'PALU'),
('1115', 'SULTENG', 'PALU'),
('1116', 'SULTENG', 'PALU'),
('1117', 'SULTENG', 'PALU'),
('1118', 'SULTENG', 'PALU'),
('1119', 'SULTENG', 'PALU'),
('112', 'MEDAN', 'LUBUK PAKAM'),
('1120', 'SULTENG', 'PALU'),
('1121', 'SULTENG', 'PALU'),
('1122', 'SULTENG', 'PALU'),
('1123', 'SULTENG', 'LUWUK'),
('1124', 'SULTENG', 'LUWUK'),
('1125', 'SULTENG', 'LUWUK'),
('1126', 'SULTENG', 'LUWUK'),
('1127', 'SULTENG', 'LUWUK'),
('1128', 'SULTENG', 'POSO'),
('1129', 'SULTENG', 'POSO'),
('113', 'MEDAN', 'MEDAN'),
('1130', 'SULTENG', 'POSO'),
('1131', 'SULTENG', 'POSO'),
('1132', 'SULTENG', 'POSO'),
('1133', 'SULTRA', 'KENDARI'),
('1134', 'SULTRA', 'KENDARI'),
('1135', 'SULTRA', 'BAUBAU'),
('1136', 'SULTRA', 'BAUBAU'),
('1137', 'SULTRA', 'BAUBAU'),
('1138', 'SULTRA', 'KOLAKA'),
('1139', 'SULTRA', 'KOLAKA'),
('114', 'MEDAN', 'MEDAN'),
('1140', 'SULTRA', 'KOLAKA'),
('1141', 'SULTRA', 'KOLAKA'),
('1142', 'SULUTMALUT', 'MANADO'),
('1143', 'SULUTMALUT', 'BITUNG'),
('1144', 'SULUTMALUT', 'BITUNG'),
('1145', 'SULUTMALUT', 'BITUNG'),
('1146', 'SULUTMALUT', 'BITUNG'),
('1147', 'SULUTMALUT', 'BITUNG'),
('1148', 'SULUTMALUT', 'BITUNG'),
('1149', 'SULUTMALUT', 'BITUNG'),
('115', 'MEDAN', 'MEDAN'),
('1150', 'SULUTMALUT', 'MINAHASA'),
('1151', 'SULUTMALUT', 'MINAHASA'),
('1152', 'SULUTMALUT', 'MINAHASA'),
('1153', 'SULUTMALUT', 'TERNATE'),
('1154', 'SULUTMALUT', 'TERNATE'),
('1155', 'SULUTMALUT', 'TERNATE'),
('1156', 'SULUTMALUT', 'TERNATE'),
('1157', 'SULUTMALUT', 'TERNATE'),
('1158', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1159', 'SULUTMALUT', 'HALMAHERA UTARA'),
('116', 'MEDAN', 'MEDAN'),
('1160', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1161', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1162', 'SULUTMALUT', 'HALMAHERA UTARA'),
('1163', 'SULUTMALUT', 'KOTAMOBAGU'),
('1164', 'SULUTMALUT', 'KOTAMOBAGU'),
('1165', 'SULUTMALUT', 'KOTAMOBAGU'),
('1166', 'SULUTMALUT', 'KOTAMOBAGU'),
('1167', 'SULUTMALUT', 'KOTAMOBAGU'),
('117', 'MEDAN', 'MEDAN'),
('118', 'MEDAN', 'MEDAN'),
('119', 'MEDAN', 'MEDAN'),
('12', 'ACEH', 'ACEH'),
('120', 'MEDAN', 'MEDAN'),
('121', 'MEDAN', 'MEDAN'),
('122', 'MEDAN', 'MEDAN'),
('123', 'MEDAN', 'MEDAN'),
('124', 'MEDAN', 'MEDAN'),
('125', 'RIDAR', 'BANGKINANG'),
('126', 'RIDAR', 'BANGKINANG'),
('127', 'RIDAR', 'BANGKINANG'),
('128', 'RIDAR', 'BANGKINANG'),
('129', 'RIDAR', 'BANGKINANG'),
('13', 'ACEH', 'ACEH'),
('130', 'RIDAR', 'BANGKINANG'),
('131', 'RIDAR', 'BANGKINANG'),
('132', 'RIDAR', 'BANGKINANG'),
('133', 'RIDAR', 'BANGKINANG'),
('134', 'RIDAR', 'BANGKINANG'),
('135', 'RIDAR', 'DUMAI'),
('136', 'RIDAR', 'DUMAI'),
('137', 'RIDAR', 'DUMAI'),
('138', 'RIDAR', 'DUMAI'),
('139', 'RIDAR', 'DUMAI'),
('14', 'ACEH', 'LANGSA'),
('140', 'RIDAR', 'DUMAI'),
('141', 'RIDAR', 'DUMAI'),
('142', 'RIDAR', 'INDRAGIRI'),
('143', 'RIDAR', 'INDRAGIRI'),
('144', 'RIDAR', 'INDRAGIRI'),
('145', 'RIDAR', 'INDRAGIRI'),
('146', 'RIDAR', 'INDRAGIRI'),
('147', 'RIDAR', 'INDRAGIRI'),
('148', 'RIKEP', 'RIKEP'),
('149', 'RIKEP', 'RIKEP'),
('15', 'ACEH', 'LANGSA'),
('150', 'RIDAR', 'RIDAR'),
('151', 'RIDAR', 'RIDAR'),
('152', 'RIDAR', 'RIDAR'),
('153', 'RIKEP', 'RIKEP'),
('154', 'RIKEP', 'RIKEP'),
('155', 'RIKEP', 'RIKEP'),
('156', 'RIKEP', 'RIKEP'),
('157', 'RIKEP', 'RIKEP'),
('158', 'RIKEP', 'RIKEP'),
('159', 'RIKEP', 'RIKEP'),
('16', 'ACEH', 'LANGSA'),
('160', 'RIKEP', 'RIKEP'),
('161', 'RIKEP', 'RIKEP'),
('162', 'RIKEP', 'TANJUNG PINANG'),
('163', 'RIKEP', 'TANJUNG PINANG'),
('164', 'RIKEP', 'TANJUNG PINANG'),
('165', 'RIKEP', 'TANJUNG PINANG'),
('166', 'RIKEP', 'TANJUNG PINANG'),
('167', 'RIKEP', 'TANJUNG PINANG'),
('168', 'RIKEP', 'TANJUNG PINANG'),
('169', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('17', 'ACEH', 'LANGSA'),
('170', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('171', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('172', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('173', 'RIKEP', 'TANJUNGBALAI KARIMUN'),
('174', 'SUMBAR', 'BUKIT TINGGI'),
('175', 'SUMBAR', 'BUKIT TINGGI'),
('176', 'SUMBAR', 'BUKIT TINGGI'),
('177', 'SUMBAR', 'BUKIT TINGGI'),
('178', 'SUMBAR', 'BUKIT TINGGI'),
('179', 'SUMBAR', 'BUKIT TINGGI'),
('18', 'ACEH', 'LANGSA'),
('180', 'SUMBAR', 'BUKIT TINGGI'),
('181', 'SUMBAR', 'BUKIT TINGGI'),
('182', 'SUMBAR', 'BUKIT TINGGI'),
('183', 'SUMBAR', 'BUKIT TINGGI'),
('184', 'SUMBAR', 'BUKIT TINGGI'),
('185', 'SUMBAR', 'BUKIT TINGGI'),
('186', 'SUMBAR', 'BUKIT TINGGI'),
('187', 'SUMBAR', 'BUKIT TINGGI'),
('188', 'SUMBAR', 'BUKIT TINGGI'),
('189', 'SUMBAR', 'BUKIT TINGGI'),
('19', 'ACEH', 'LANGSA'),
('190', 'SUMBAR', 'BUKIT TINGGI'),
('191', 'SUMBAR', 'BUKIT TINGGI'),
('192', 'SUMBAR', 'BUKIT TINGGI'),
('193', 'SUMBAR', 'BUKIT TINGGI'),
('194', 'SUMBAR', 'SOLOK'),
('195', 'SUMBAR', 'BUKIT TINGGI'),
('196', 'SUMBAR', 'BUKIT TINGGI'),
('197', 'SUMBAR', 'BUKIT TINGGI'),
('198', 'SUMBAR', 'BUKIT TINGGI'),
('199', 'SUMBAR', 'BUKIT TINGGI'),
('2', 'ACEH', 'ACEH'),
('20', 'ACEH', 'LANGSA'),
('200', 'SUMBAR', 'SOLOK'),
('201', 'SUMBAR', 'SOLOK'),
('202', 'SUMBAR', 'SOLOK'),
('203', 'SUMBAR', 'SOLOK'),
('204', 'SUMBAR', 'SOLOK'),
('205', 'SUMBAR', 'SOLOK'),
('206', 'SUMBAR', 'SOLOK'),
('207', 'SUMBAR', 'SOLOK'),
('208', 'SUMBAR', 'SOLOK'),
('209', 'SUMBAR', 'SOLOK'),
('21', 'ACEH', 'LHOKSEUMAWE'),
('210', 'SUMBAR', 'SOLOK'),
('211', 'SUMBAR', 'SOLOK'),
('212', 'SUMBAR', 'SOLOK'),
('213', 'SUMBAR', 'SOLOK'),
('214', 'SUMBAR', 'SOLOK'),
('215', 'SUMBAR', 'SOLOK'),
('216', 'SUMBAR', 'SUMBAR'),
('217', 'SUMBAR', 'SUMBAR'),
('218', 'SUMBAR', 'SUMBAR'),
('219', 'SUMBAR', 'SUMBAR'),
('22', 'ACEH', 'LHOKSEUMAWE'),
('220', 'SUMBAR', 'SUMBAR'),
('221', 'SUMBAR', 'SUMBAR'),
('222', 'SUMBAR', 'SUMBAR'),
('223', 'SUMBAR', 'SUMBAR'),
('224', 'SUMBAR', 'SUMBAR'),
('225', 'SUMBAR', 'SUMBAR'),
('226', 'SUMBAR', 'SUMBAR'),
('227', 'SUMBAR', 'SUMBAR'),
('228', 'SUMBAR', 'SUMBAR'),
('229', 'SUMBAR', 'SUMBAR'),
('23', 'ACEH', 'LHOKSEUMAWE'),
('230', 'SUMBAR', 'SUMBAR'),
('231', 'SUMBAR', 'SUMBAR'),
('232', 'SUMBAR', 'SUMBAR'),
('233', 'SUMBAR', 'SUMBAR'),
('234', 'SUMBAR', 'SUMBAR'),
('235', 'SUMBAR', 'SUMBAR'),
('236', 'SUMBAR', 'SUMBAR'),
('237', 'SUMBAR', 'SUMBAR'),
('238', 'SUMBAR', 'SUMBAR'),
('239', 'SUMBAR', 'SUMBAR'),
('24', 'ACEH', 'LHOKSEUMAWE'),
('240', 'SUMBAR', 'SUMBAR'),
('241', 'SUMBAR', 'SUMBAR'),
('242', 'SUMSEL', 'BATU RAJA'),
('243', 'SUMSEL', 'BATU RAJA'),
('244', 'SUMSEL', 'BATU RAJA'),
('245', 'SUMSEL', 'BATU RAJA'),
('246', 'SUMSEL', 'BATU RAJA'),
('247', 'SUMSEL', 'BATU RAJA'),
('248', 'SUMSEL', 'LUBUK LINGGAU'),
('249', 'SUMSEL', 'LUBUK LINGGAU'),
('25', 'ACEH', 'LHOKSEUMAWE'),
('250', 'SUMSEL', 'LUBUK LINGGAU'),
('251', 'SUMSEL', 'LUBUK LINGGAU'),
('252', 'SUMSEL', 'LUBUK LINGGAU'),
('253', 'SUMSEL', 'LUBUK LINGGAU'),
('254', 'SUMSEL', 'LUBUK LINGGAU'),
('255', 'SUMSEL', 'LUBUK LINGGAU'),
('256', 'SUMSEL', 'PRABUMULIH'),
('257', 'SUMSEL', 'PRABUMULIH'),
('258', 'SUMSEL', 'PRABUMULIH'),
('259', 'SUMSEL', 'PRABUMULIH'),
('26', 'ACEH', 'LHOKSEUMAWE'),
('260', 'SUMSEL', 'PRABUMULIH'),
('261', 'SUMSEL', 'PRABUMULIH'),
('262', 'SUMSEL', 'PRABUMULIH'),
('263', 'SUMSEL', 'PRABUMULIH'),
('264', 'SUMSEL', 'PRABUMULIH'),
('265', 'SUMSEL', 'PRABUMULIH'),
('266', 'SUMSEL', 'SUMSEL'),
('267', 'SUMSEL', 'SUMSEL'),
('268', 'SUMSEL', 'SUMSEL'),
('269', 'SUMSEL', 'SUMSEL'),
('27', 'ACEH', 'LHOKSEUMAWE'),
('270', 'SUMSEL', 'SUMSEL'),
('271', 'SUMSEL', 'SUMSEL'),
('272', 'SUMSEL', 'SUMSEL'),
('273', 'SUMSEL', 'SUMSEL'),
('274', 'SUMUT', 'KABANJAHE'),
('275', 'SUMUT', 'KABANJAHE'),
('276', 'SUMUT', 'KABANJAHE'),
('277', 'SUMUT', 'KABANJAHE'),
('278', 'SUMUT', 'KABANJAHE'),
('279', 'SUMUT', 'KABANJAHE'),
('28', 'ACEH', 'LHOKSEUMAWE'),
('280', 'SUMUT', 'KISARAN'),
('281', 'SUMUT', 'KISARAN'),
('282', 'SUMUT', 'KISARAN'),
('283', 'SUMUT', 'KISARAN'),
('284', 'SUMUT', 'KISARAN'),
('285', 'SUMUT', 'KISARAN'),
('286', 'SUMUT', 'KISARAN'),
('287', 'SUMUT', 'KISARAN'),
('288', 'SUMUT', 'KISARAN'),
('289', 'SUMUT', 'PADANG SIDEMPUAN'),
('29', 'ACEH', 'LHOKSEUMAWE'),
('290', 'SUMUT', 'PADANG SIDEMPUAN'),
('291', 'SUMUT', 'PADANG SIDEMPUAN'),
('292', 'SUMUT', 'PADANG SIDEMPUAN'),
('293', 'SUMUT', 'PADANG SIDEMPUAN'),
('294', 'SUMUT', 'PADANG SIDEMPUAN'),
('295', 'SUMUT', 'PADANG SIDEMPUAN'),
('296', 'SUMUT', 'RANTAU PRAPAT'),
('297', 'SUMUT', 'RANTAU PRAPAT'),
('298', 'SUMUT', 'RANTAU PRAPAT'),
('299', 'SUMUT', 'RANTAU PRAPAT'),
('3', 'ACEH', 'ACEH'),
('30', 'ACEH', 'LHOKSEUMAWE'),
('300', 'SUMUT', 'RANTAU PRAPAT'),
('301', 'SUMUT', 'RANTAU PRAPAT'),
('302', 'SUMUT', 'SIBOLGA'),
('303', 'SUMUT', 'SIBOLGA'),
('304', 'SUMUT', 'SIBOLGA'),
('305', 'SUMUT', 'SIBOLGA'),
('306', 'SUMUT', 'SIBOLGA'),
('307', 'SUMUT', 'SIBOLGA'),
('308', 'SUMUT', 'SIBOLGA'),
('309', 'SUMUT', 'SIBOLGA'),
('31', 'ACEH', 'MEULABOH'),
('310', 'SUMUT', 'SIBOLGA'),
('311', 'SUMUT', 'SIBOLGA'),
('312', 'SUMUT', 'SUMUT'),
('313', 'SUMUT', 'SUMUT'),
('314', 'SUMUT', 'SUMUT'),
('315', 'SUMUT', 'SUMUT'),
('316', 'SUMUT', 'SUMUT'),
('317', 'SUMUT', 'SUMUT'),
('318', 'SUMUT', 'SUMUT'),
('319', 'SUMUT', 'SUMUT'),
('32', 'ACEH', 'MEULABOH'),
('320', 'BANTEN', 'CIKUPA'),
('321', 'BANTEN', 'CIKUPA'),
('322', 'BANTEN', 'CIKUPA'),
('323', 'BANTEN', 'CIKUPA'),
('324', 'BANTEN', 'CIKUPA'),
('325', 'BANTEN', 'CIKUPA'),
('326', 'BANTEN', 'CIKUPA'),
('327', 'BANTEN', 'CILEGON'),
('328', 'BANTEN', 'CILEGON'),
('329', 'BANTEN', 'CILEGON'),
('33', 'ACEH', 'MEULABOH'),
('330', 'BANTEN', 'CILEGON'),
('331', 'BANTEN', 'CILEGON'),
('332', 'BANTEN', 'CILEGON'),
('333', 'BANTEN', 'CILEGON'),
('334', 'BANTEN', 'CILEGON'),
('335', 'BANTEN', 'RKS-PDG'),
('336', 'BANTEN', 'RKS-PDG'),
('337', 'BANTEN', 'RKS-PDG'),
('338', 'BANTEN', 'RKS-PDG'),
('339', 'BANTEN', 'RKS-PDG'),
('34', 'ACEH', 'MEULABOH'),
('340', 'BANTEN', 'RKS-PDG'),
('341', 'BANTEN', 'RKS-PDG'),
('342', 'BANTEN', 'RKS-PDG'),
('343', 'BANTEN', 'WITELBANTEN'),
('344', 'BANTEN', 'WITELBANTEN'),
('345', 'BANTEN', 'WITELBANTEN'),
('346', 'BANTEN', 'WITELBANTEN'),
('347', 'BANTEN', 'WITELBANTEN'),
('348', 'BANTEN', 'WITELBANTEN'),
('349', 'BEKASI', 'CIKARANG'),
('35', 'ACEH', 'MEULABOH'),
('350', 'BEKASI', 'CIKARANG'),
('351', 'BEKASI', 'CIKARANG'),
('352', 'BEKASI', 'CIKARANG'),
('353', 'BEKASI', 'CIKARANG'),
('354', 'BEKASI', 'CIKARANG'),
('355', 'BEKASI', 'CIKARANG'),
('356', 'BEKASI', 'CIKARANG'),
('357', 'BEKASI', 'CIKARANG'),
('358', 'BEKASI', 'CIKARANG'),
('359', 'BEKASI', 'CIKARANG'),
('36', 'ACEH', 'MEULABOH'),
('360', 'BEKASI', 'CIKARANG'),
('361', 'BEKASI', 'CIKARANG'),
('362', 'BEKASI', 'CIKARANG'),
('363', 'BEKASI', 'CIKARANG'),
('364', 'BEKASI', 'WITELBEKASI'),
('365', 'BEKASI', 'WITELBEKASI'),
('366', 'BEKASI', 'WITELBEKASI'),
('367', 'BEKASI', 'WITELBEKASI'),
('368', 'BEKASI', 'WITELBEKASI'),
('369', 'BEKASI', 'WITELBEKASI'),
('37', 'ACEH', 'MEULABOH'),
('370', 'BEKASI', 'WITELBEKASI'),
('371', 'BOGOR', 'CIBINONG'),
('372', 'BOGOR', 'CIBINONG'),
('373', 'BOGOR', 'CIBINONG'),
('374', 'BOGOR', 'CIBINONG'),
('375', 'BOGOR', 'CIBINONG'),
('376', 'BOGOR', 'CIBINONG'),
('377', 'BOGOR', 'CIBINONG'),
('378', 'BOGOR', 'CIBINONG'),
('379', 'BOGOR', 'DEPOK'),
('38', 'ACEH', 'MEULABOH'),
('380', 'BOGOR', 'DEPOK'),
('381', 'BOGOR', 'DEPOK'),
('382', 'BOGOR', 'DEPOK'),
('383', 'BOGOR', 'DEPOK'),
('384', 'BOGOR', 'KUJANG'),
('385', 'BOGOR', 'KUJANG'),
('386', 'BOGOR', 'KUJANG'),
('387', 'BOGOR', 'KUJANG'),
('388', 'BOGOR', 'KUJANG'),
('389', 'BOGOR', 'KUJANG'),
('39', 'ACEH', 'MEULABOH'),
('390', 'BOGOR', 'KUJANG'),
('391', 'BOGOR', 'KUJANG'),
('392', 'BOGOR', 'KUJANG'),
('393', 'BOGOR', 'KUJANG'),
('394', 'BOGOR', 'KUJANG'),
('395', 'BOGOR', 'SENTUL'),
('396', 'BOGOR', 'SENTUL'),
('397', 'BOGOR', 'SENTUL'),
('398', 'BOGOR', 'SENTUL'),
('399', 'BOGOR', 'SENTUL'),
('4', 'ACEH', 'ACEH'),
('40', 'ACEH', 'MEULABOH'),
('400', 'BOGOR', 'SENTUL'),
('401', 'BOGOR', 'SENTUL'),
('402', 'BOGOR', 'SENTUL'),
('403', 'BOGOR', 'SENTUL'),
('404', 'JAKBAR', 'WITELJAKBAR'),
('405', 'JAKBAR', 'WITELJAKBAR'),
('406', 'JAKBAR', 'WITELJAKBAR'),
('407', 'JAKBAR', 'WITELJAKBAR'),
('408', 'JAKBAR', 'WITELJAKBAR'),
('409', 'JAKBAR', 'WITELJAKBAR'),
('41', 'BABEL', 'BABEL'),
('410', 'JAKBAR', 'WITELJAKBAR'),
('411', 'JAKBAR', 'WITELJAKBAR'),
('412', 'JAKBAR', 'WITELJAKBAR'),
('413', 'JAKBAR', 'WITELJAKBAR'),
('414', 'JAKPUS', 'WITELJAKPUS'),
('415', 'JAKPUS', 'WITELJAKPUS'),
('416', 'JAKPUS', 'WITELJAKPUS'),
('417', 'JAKPUS', 'WITELJAKPUS'),
('418', 'JAKPUS', 'WITELJAKPUS'),
('419', 'JAKSEL', 'WITELJAKSEL'),
('42', 'BABEL', 'BABEL'),
('420', 'JAKSEL', 'WITELJAKSEL'),
('421', 'JAKSEL', 'WITELJAKSEL'),
('422', 'JAKSEL', 'WITELJAKSEL'),
('423', 'JAKSEL', 'WITELJAKSEL'),
('424', 'JAKSEL', 'WITELJAKSEL'),
('425', 'JAKSEL', 'WITELJAKSEL'),
('426', 'JAKSEL', 'WITELJAKSEL'),
('427', 'JAKTIM', 'WITELJAKTIM'),
('428', 'JAKTIM', 'WITELJAKTIM'),
('429', 'JAKTIM', 'WITELJAKTIM'),
('43', 'BABEL', 'BABEL'),
('430', 'JAKTIM', 'WITELJAKTIM'),
('431', 'JAKTIM', 'WITELJAKTIM'),
('432', 'JAKTIM', 'WITELJAKTIM'),
('433', 'JAKTIM', 'WITELJAKTIM'),
('434', 'JAKTIM', 'WITELJAKTIM'),
('435', 'JAKTIM', 'WITELJAKTIM'),
('436', 'JAKTIM', 'WITELJAKTIM'),
('437', 'JAKTIM', 'WITELJAKTIM'),
('438', 'JAKUT', 'WITELJAKUT'),
('439', 'JAKUT', 'WITELJAKUT'),
('44', 'BABEL', 'BABEL'),
('440', 'JAKUT', 'WITELJAKUT'),
('441', 'JAKUT', 'WITELJAKUT'),
('442', 'JAKUT', 'WITELJAKUT'),
('443', 'JAKUT', 'WITELJAKUT'),
('444', 'JAKUT', 'WITELJAKUT'),
('445', 'JAKUT', 'WITELJAKUT'),
('446', 'JAKUT', 'WITELJAKUT'),
('447', 'TANGERANG', 'CIPUTAT'),
('448', 'TANGERANG', 'CIPUTAT'),
('449', 'TANGERANG', 'CIPUTAT'),
('45', 'BABEL', 'BABEL'),
('450', 'TANGERANG', 'CIPUTAT'),
('451', 'TANGERANG', 'CIPUTAT'),
('452', 'TANGERANG', 'LENGKONG'),
('453', 'TANGERANG', 'LENGKONG'),
('454', 'TANGERANG', 'LENGKONG'),
('455', 'TANGERANG', 'LENGKONG'),
('456', 'TANGERANG', 'LENGKONG'),
('457', 'TANGERANG', 'LENGKONG'),
('458', 'TANGERANG', 'PASARBARU'),
('459', 'TANGERANG', 'PASARBARU'),
('46', 'BABEL', 'BABEL'),
('460', 'TANGERANG', 'PASARBARU'),
('461', 'TANGERANG', 'PASARBARU'),
('462', 'TANGERANG', 'PASARBARU'),
('463', 'TANGERANG', 'PASARBARU'),
('464', 'TANGERANG', 'PASARBARU'),
('465', 'TANGERANG', 'PASARBARU'),
('466', 'TANGERANG', 'PASARBARU'),
('467', 'BANDUNG', 'INNERBDG'),
('468', 'BANDUNG', 'INNERBDG'),
('469', 'BANDUNG', 'INNERBDG'),
('47', 'BABEL', 'BABEL'),
('470', 'BANDUNG', 'INNERBDG'),
('471', 'BANDUNG', 'INNERBDG'),
('472', 'BANDUNG', 'INNERBDG'),
('473', 'BANDUNG', 'INNERBDG'),
('474', 'BANDUNG', 'INNERBDG'),
('475', 'BANDUNG', 'SUMEDANG'),
('476', 'BANDUNG', 'SUMEDANG'),
('477', 'BANDUNGBARAT', 'SOREANG'),
('478', 'BANDUNGBARAT', 'SOREANG'),
('479', 'BANDUNGBARAT', 'SOREANG'),
('48', 'BABEL', 'BABEL'),
('480', 'BANDUNGBARAT', 'SOREANG'),
('481', 'BANDUNGBARAT', 'SOREANG'),
('482', 'BANDUNGBARAT', 'SOREANG'),
('483', 'BANDUNGBARAT', 'PADALARANG'),
('484', 'BANDUNGBARAT', 'PADALARANG'),
('485', 'BANDUNGBARAT', 'PADALARANG'),
('486', 'BANDUNGBARAT', 'PADALARANG'),
('487', 'BANDUNGBARAT', 'PADALARANG'),
('488', 'BANDUNGBARAT', 'PADALARANG'),
('489', 'BANDUNGBARAT', 'PADALARANG'),
('49', 'BABEL', 'BELITUNG'),
('490', 'CIREBON', 'INDRAMAYU'),
('491', 'CIREBON', 'INDRAMAYU'),
('492', 'CIREBON', 'INDRAMAYU'),
('493', 'CIREBON', 'INDRAMAYU'),
('494', 'CIREBON', 'INNERCBN'),
('495', 'CIREBON', 'INNERCBN'),
('496', 'CIREBON', 'INNERCBN'),
('497', 'CIREBON', 'INNERCBN'),
('498', 'CIREBON', 'INNERCBN'),
('499', 'CIREBON', 'INNERCBN'),
('5', 'ACEH', 'ACEH'),
('50', 'BABEL', 'BELITUNG'),
('500', 'CIREBON', 'KUNINGAN'),
('501', 'CIREBON', 'KUNINGAN'),
('502', 'CIREBON', 'KUNINGAN'),
('503', 'CIREBON', 'KUNINGAN'),
('504', 'CIREBON', 'KUNINGAN'),
('505', 'CIREBON', 'MAJALENGKA'),
('506', 'CIREBON', 'MAJALENGKA'),
('507', 'CIREBON', 'MAJALENGKA'),
('508', 'KARAWANG', 'INNERKWA'),
('509', 'KARAWANG', 'INNERKWA'),
('51', 'BENGKULU', 'BENGKULU'),
('510', 'KARAWANG', 'INNERKWA'),
('511', 'KARAWANG', 'INNERKWA'),
('512', 'KARAWANG', 'INNERKWA'),
('513', 'KARAWANG', 'INNERKWA'),
('514', 'KARAWANG', 'PURWAKARTA'),
('515', 'KARAWANG', 'PURWAKARTA'),
('516', 'KARAWANG', 'PURWAKARTA'),
('517', 'KARAWANG', 'SUBANG'),
('518', 'KARAWANG', 'SUBANG'),
('519', 'KARAWANG', 'SUBANG'),
('52', 'BENGKULU', 'BENGKULU'),
('520', 'KARAWANG', 'SUBANG'),
('521', 'SUKABUMI', 'CIANJUR'),
('522', 'SUKABUMI', 'CIANJUR'),
('523', 'SUKABUMI', 'CIANJUR'),
('524', 'SUKABUMI', 'CIANJUR'),
('525', 'SUKABUMI', 'CIBADAK'),
('526', 'SUKABUMI', 'CIBADAK'),
('527', 'SUKABUMI', 'CIBADAK'),
('528', 'SUKABUMI', 'CIBADAK'),
('529', 'SUKABUMI', 'CIBADAK'),
('53', 'BENGKULU', 'BENGKULU'),
('530', 'SUKABUMI', 'CIBADAK'),
('531', 'SUKABUMI', 'CIBADAK'),
('532', 'SUKABUMI', 'SINDANGLAYA'),
('533', 'SUKABUMI', 'SINDANGLAYA'),
('534', 'SUKABUMI', 'SINDANGLAYA'),
('535', 'TASIKMALAYA', 'BANJAR'),
('536', 'TASIKMALAYA', 'BANJAR'),
('537', 'TASIKMALAYA', 'BANJAR'),
('538', 'TASIKMALAYA', 'CIAMIS'),
('539', 'TASIKMALAYA', 'CIAMIS'),
('54', 'BENGKULU', 'BENGKULU'),
('540', 'TASIKMALAYA', 'CIAMIS'),
('541', 'TASIKMALAYA', 'GARUT'),
('542', 'TASIKMALAYA', 'GARUT'),
('543', 'TASIKMALAYA', 'GARUT'),
('544', 'TASIKMALAYA', 'GARUT'),
('545', 'TASIKMALAYA', 'GARUT'),
('546', 'TASIKMALAYA', 'GARUT'),
('547', 'TASIKMALAYA', 'GARUT'),
('548', 'TASIKMALAYA', 'GARUT'),
('549', 'TASIKMALAYA', 'GARUT'),
('55', 'BENGKULU', 'BENGKULU'),
('550', 'TASIKMALAYA', 'SINGAPARNA'),
('551', 'TASIKMALAYA', 'SINGAPARNA'),
('552', 'TASIKMALAYA', 'SINGAPARNA'),
('553', 'TASIKMALAYA', 'SINGAPARNA'),
('554', 'TASIKMALAYA', 'INNERTSM'),
('555', 'TASIKMALAYA', 'INNERTSM'),
('556', 'BANDUNG', 'SUMEDANG'),
('557', 'BANDUNG', 'SUMEDANG'),
('558', 'BANDUNGBARAT', 'INNERWBB'),
('559', 'BANDUNGBARAT', 'SOREANG'),
('56', 'BENGKULU', 'BENGKULU'),
('560', 'BANDUNGBARAT', 'PADALARANG'),
('561', 'BANDUNGBARAT', 'PADALARANG'),
('562', 'BANDUNGBARAT', 'PADALARANG'),
('563', 'CIREBON', 'INDRAMAYU'),
('564', 'CIREBON', 'INDRAMAYU'),
('565', 'CIREBON', 'INDRAMAYU'),
('566', 'CIREBON', 'MAJALENGKA'),
('567', 'CIREBON', 'MAJALENGKA'),
('568', 'SUKABUMI', 'CIANJUR'),
('569', 'SUKABUMI', 'INNERSKB'),
('57', 'BENGKULU', 'BENGKULU'),
('570', 'SUKABUMI', 'INNERSKB'),
('571', 'SUKABUMI', 'INNERSKB'),
('572', 'SUKABUMI', 'INNERSKB'),
('573', 'KARAWANG', 'PURWAKARTA'),
('574', 'KARAWANG', 'PURWAKARTA'),
('575', 'KARAWANG', 'PURWAKARTA'),
('576', 'KARAWANG', 'SUBANG'),
('577', 'KARAWANG', 'SUBANG'),
('578', 'KARAWANG', 'SUBANG'),
('579', 'KUDUS', 'BLORA'),
('58', 'BENGKULU', 'BENGKULU'),
('580', 'KUDUS', 'BLORA'),
('581', 'KUDUS', 'BLORA'),
('582', 'KUDUS', 'BLORA'),
('583', 'KUDUS', 'JEPARA'),
('584', 'KUDUS', 'JEPARA'),
('585', 'KUDUS', 'JEPARA'),
('586', 'KUDUS', 'JEPARA'),
('587', 'KUDUS', 'JEPARA'),
('588', 'KUDUS', 'JEPARA'),
('589', 'KUDUS', 'KUDUS'),
('59', 'BENGKULU', 'MUKO-MUKO'),
('590', 'KUDUS', 'PATI'),
('591', 'KUDUS', 'PATI'),
('592', 'KUDUS', 'PATI'),
('593', 'KUDUS', 'PATI'),
('594', 'KUDUS', 'PATI'),
('595', 'KUDUS', 'PURWODADI'),
('596', 'KUDUS', 'PURWODADI'),
('597', 'KUDUS', 'PURWODADI'),
('598', 'KUDUS', 'PURWODADI'),
('599', 'KUDUS', 'PURWODADI'),
('6', 'ACEH', 'ACEH'),
('60', 'BENGKULU', 'MUKO-MUKO'),
('600', 'MAGELANG', 'KEBUMEN'),
('601', 'MAGELANG', 'KEBUMEN'),
('602', 'MAGELANG', 'KEBUMEN'),
('603', 'MAGELANG', 'KEBUMEN'),
('604', 'MAGELANG', 'MAGELANG'),
('605', 'MAGELANG', 'MAGELANG'),
('606', 'MAGELANG', 'MUNTILAN'),
('607', 'MAGELANG', 'MUNTILAN'),
('608', 'MAGELANG', 'PURWOREJO'),
('609', 'MAGELANG', 'PURWOREJO'),
('61', 'BENGKULU', 'MUKO-MUKO'),
('610', 'MAGELANG', 'TEMANGGUNG'),
('611', 'MAGELANG', 'TEMANGGUNG'),
('612', 'MAGELANG', 'WONOSOBO'),
('613', 'PEKALONGAN', 'BATANG'),
('614', 'PEKALONGAN', 'BATANG'),
('615', 'PEKALONGAN', 'BATANG'),
('616', 'PEKALONGAN', 'BREBES'),
('617', 'PEKALONGAN', 'BREBES'),
('618', 'PEKALONGAN', 'BREBES'),
('619', 'PEKALONGAN', 'BREBES'),
('62', 'JAMBI', 'JAMBI'),
('620', 'PEKALONGAN', 'BREBES'),
('621', 'PEKALONGAN', 'PEKALONGAN'),
('622', 'PEKALONGAN', 'PEKALONGAN'),
('623', 'PEKALONGAN', 'PEKALONGAN'),
('624', 'PEKALONGAN', 'PEMALANG'),
('625', 'PEKALONGAN', 'PEMALANG'),
('626', 'PEKALONGAN', 'PEMALANG'),
('627', 'PEKALONGAN', 'SLAWI'),
('628', 'PEKALONGAN', 'SLAWI'),
('629', 'PEKALONGAN', 'SLAWI'),
('63', 'JAMBI', 'JAMBI'),
('630', 'PEKALONGAN', 'TEGAL'),
('631', 'PEKALONGAN', 'TEGAL'),
('632', 'PURWOKERTO', 'BANJARNEGARA'),
('633', 'PURWOKERTO', 'BANJARNEGARA'),
('634', 'PURWOKERTO', 'CILACAP'),
('635', 'PURWOKERTO', 'CILACAP'),
('636', 'PURWOKERTO', 'CILACAP'),
('637', 'PURWOKERTO', 'CILACAP'),
('638', 'PURWOKERTO', 'CILACAP'),
('639', 'PURWOKERTO', 'CILACAP'),
('64', 'JAMBI', 'JAMBI'),
('640', 'PURWOKERTO', 'PURBALINGGA'),
('641', 'PURWOKERTO', 'PURBALINGGA'),
('642', 'PURWOKERTO', 'PURWOKERTO'),
('643', 'PURWOKERTO', 'PURWOKERTO'),
('644', 'PURWOKERTO', 'PURWOKERTO'),
('645', 'PURWOKERTO', 'PURWOKERTO'),
('646', 'PURWOKERTO', 'PURWOKERTO'),
('647', 'PURWOKERTO', 'PURWOKERTO'),
('648', 'SEMARANG', 'KENDAL'),
('649', 'SEMARANG', 'KENDAL'),
('65', 'JAMBI', 'JAMBI'),
('650', 'SEMARANG', 'KENDAL'),
('651', 'SEMARANG', 'SEMARANG'),
('652', 'SEMARANG', 'SEMARANG'),
('653', 'SEMARANG', 'SEMARANG'),
('654', 'SEMARANG', 'SEMARANG'),
('655', 'SEMARANG', 'SEMARANG'),
('656', 'SEMARANG', 'SEMARANG'),
('657', 'SEMARANG', 'SEMARANG'),
('658', 'SEMARANG', 'SEMARANG'),
('659', 'SEMARANG', 'SEMARANG'),
('66', 'JAMBI', 'JAMBI'),
('660', 'SEMARANG', 'SEMARANG'),
('661', 'SEMARANG', 'UNGARAN'),
('662', 'SEMARANG', 'UNGARAN'),
('663', 'SEMARANG', 'UNGARAN'),
('664', 'SEMARANG', 'UNGARAN'),
('665', 'SEMARANG', 'UNGARAN'),
('666', 'SEMARANG', 'SALATIGA'),
('667', 'SOLO', 'KLATEN'),
('668', 'SOLO', 'KLATEN'),
('669', 'SOLO', 'KLATEN'),
('67', 'JAMBI', 'JAMBI'),
('670', 'SOLO', 'KLATEN'),
('671', 'SOLO', 'SOLO'),
('672', 'SOLO', 'SOLO'),
('673', 'SOLO', 'SOLO'),
('674', 'SOLO', 'SOLO'),
('675', 'SOLO', 'SOLO'),
('676', 'SOLO', 'SOLO'),
('677', 'SOLO', 'SOLO'),
('678', 'SOLO', 'SRAGEN'),
('679', 'SOLO', 'SRAGEN'),
('68', 'JAMBI', 'JAMBI'),
('680', 'SOLO', 'SRAGEN'),
('681', 'SOLO', 'WONOGIRI'),
('682', 'SOLO', 'WONOGIRI'),
('683', 'SOLO', 'WONOGIRI'),
('684', 'SOLO', 'WONOGIRI'),
('685', 'YOGYAKARTA', 'BANTUL'),
('686', 'YOGYAKARTA', 'BANTUL'),
('687', 'YOGYAKARTA', 'BANTUL'),
('688', 'YOGYAKARTA', 'SLEMAN'),
('689', 'YOGYAKARTA', 'SLEMAN'),
('69', 'JAMBI', 'JAMBI'),
('690', 'YOGYAKARTA', 'SLEMAN'),
('691', 'YOGYAKARTA', 'SLEMAN'),
('692', 'YOGYAKARTA', 'YOGYAKARTA'),
('693', 'YOGYAKARTA', 'YOGYAKARTA'),
('694', 'YOGYAKARTA', 'YOGYAKARTA'),
('695', 'YOGYAKARTA', 'YOGYAKARTA'),
('696', 'YOGYAKARTA', 'YOGYAKARTA'),
('697', 'Denpasar', 'DENPASAR SELATAN'),
('698', 'Denpasar', 'DENPASAR SELATAN'),
('699', 'Denpasar', 'DENPASAR SELATAN'),
('7', 'ACEH', 'ACEH'),
('70', 'JAMBI', 'JAMBI'),
('700', 'Denpasar', 'DENPASAR CENTRUM'),
('701', 'Denpasar', 'DENPASAR SELATAN'),
('702', 'Denpasar', 'DENPASAR UTARA'),
('703', 'Denpasar', 'DENPASAR CENTRUM'),
('704', 'Denpasar', 'DENPASAR UTARA'),
('705', 'Denpasar', 'DENPASAR CENTRUM'),
('706', 'Denpasar', 'DENPASAR CENTRUM'),
('707', 'Denpasar', 'DENPASAR UTARA'),
('708', 'Jember', 'TANGGUL'),
('709', 'Jember', 'TANGGUL'),
('71', 'JAMBI', 'MUARA BUNGO'),
('710', 'Jember', 'TANGGUL'),
('711', 'Jember', 'BANYUWANGI'),
('712', 'Jember', 'BANYUWANGI'),
('713', 'Jember', 'BANYUWANGI'),
('714', 'Jember', 'BANYUWANGI'),
('715', 'Jember', 'BANYUWANGI'),
('716', 'Jember', 'SIBO'),
('717', 'Jember', 'SIBO'),
('718', 'Jember', 'SIBO'),
('719', 'Jember', 'BANYUWANGI'),
('72', 'JAMBI', 'MUARA BUNGO'),
('720', 'Jember', 'BANYUWANGI'),
('721', 'Jember', 'BANYUWANGI'),
('722', 'Jember', 'BANYUWANGI'),
('723', 'Jember', 'BANYUWANGI'),
('724', 'Jember', 'JEMBER'),
('725', 'Jember', 'JEMBER'),
('726', 'Jember', 'JEMBER'),
('727', 'Jember', 'JEMBER'),
('728', 'Jember', 'JEMBER'),
('729', 'Jember', 'JEMBER'),
('73', 'JAMBI', 'MUARA BUNGO'),
('730', 'Jember', 'SIBO'),
('731', 'Jember', 'SIBO'),
('732', 'Jember', 'SIBO'),
('733', 'Jember', 'SIBO'),
('734', 'Jember', 'TANGGUL'),
('735', 'Jember', 'TANGGUL'),
('736', 'Jember', 'TANGGUL'),
('737', 'Jember', 'TANGGUL'),
('738', 'Kediri', 'NGANJUK'),
('739', 'Kediri', 'NGANJUK'),
('74', 'JAMBI', 'MUARA BUNGO'),
('740', 'Kediri', 'NGANJUK'),
('741', 'Kediri', 'NGANJUK'),
('742', 'Kediri', 'KEDIRI'),
('743', 'Kediri', 'KEDIRI'),
('744', 'Kediri', 'KEDIRI'),
('745', 'Kediri', 'KEDIRI'),
('746', 'Kediri', 'KEDIRI'),
('747', 'Kediri', 'KEDIRI'),
('748', 'Kediri', 'KEDIRI'),
('749', 'Kediri', 'KEDIRI'),
('75', 'JAMBI', 'MUARA BUNGO'),
('750', 'Kediri', 'TULUNG AGUNG'),
('751', 'Kediri', 'TULUNG AGUNG'),
('752', 'Kediri', 'TULUNG AGUNG'),
('753', 'Kediri', 'TULUNG AGUNG'),
('754', 'Kediri', 'TULUNG AGUNG'),
('755', 'Kediri', 'TULUNG AGUNG'),
('756', 'Kediri', 'TULUNG AGUNG'),
('757', 'Kediri', 'BLITAR'),
('758', 'Kediri', 'BLITAR'),
('759', 'Kediri', 'BLITAR'),
('76', 'JAMBI', 'MUARA BUNGO'),
('760', 'Kediri', 'BLITAR'),
('761', 'Kediri', 'BLITAR'),
('762', 'Madiun', 'MADIUN'),
('763', 'Madiun', 'MADIUN'),
('764', 'Madiun', 'MADIUN'),
('765', 'Madiun', 'TUBAN'),
('766', 'Madiun', 'TUBAN'),
('767', 'Madiun', 'TUBAN'),
('768', 'Madiun', 'TUBAN'),
('769', 'Madiun', 'TUBAN'),
('77', 'LAMPUNG', 'LAMPUNG'),
('770', 'Madiun', 'NGAWI'),
('771', 'Madiun', 'NGAWI'),
('772', 'Madiun', 'NGAWI'),
('773', 'Madiun', 'PONOROGO'),
('774', 'Madiun', 'PONOROGO'),
('775', 'Madiun', 'PONOROGO'),
('776', 'Madiun', 'BOJONEGORO'),
('777', 'Madiun', 'BOJONEGORO'),
('778', 'Madiun', 'BOJONEGORO'),
('779', 'Madiun', 'PONOROGO'),
('78', 'LAMPUNG', 'LAMPUNG'),
('780', 'Madiun', 'PONOROGO'),
('781', 'Madiun', 'PONOROGO'),
('782', 'Madiun', 'PONOROGO'),
('783', 'Madiun', 'PONOROGO'),
('784', 'Madura', 'MADURA'),
('785', 'Madura', 'MADURA'),
('786', 'MADURA', 'SUMENEP'),
('787', 'MADURA', 'BANGKALAN'),
('788', 'Malang', 'BATU'),
('789', 'Malang', 'BATU'),
('79', 'LAMPUNG', 'LAMPUNG'),
('790', 'Malang', 'MALANG'),
('791', 'Malang', 'BATU'),
('792', 'Malang', 'KEPANJEN'),
('793', 'Malang', 'KEPANJEN'),
('794', 'Malang', 'KEPANJEN'),
('795', 'Malang', 'KEPANJEN'),
('796', 'Malang', 'KEPANJEN'),
('797', 'Malang', 'MALANG'),
('798', 'Malang', 'MALANG'),
('799', 'Malang', 'MALANG'),
('8', 'ACEH', 'ACEH'),
('80', 'LAMPUNG', 'LAMPUNG'),
('800', 'Malang', 'MALANG'),
('801', 'Malang', 'MALANG'),
('802', 'Malang', 'MALANG'),
('803', 'Malang', 'MALANG'),
('804', 'Malang', 'MALANG'),
('805', 'Malang', 'MALANG'),
('806', 'Malang', 'KEPANJEN'),
('807', 'Malang', 'KEPANJEN'),
('808', 'Malang', 'KEPANJEN'),
('809', 'Malang', 'KEPANJEN'),
('81', 'LAMPUNG', 'LAMPUNG'),
('810', 'Malang', 'KEPANJEN'),
('811', 'Malang', 'KEPANJEN'),
('812', 'NTB', 'BIMA'),
('813', 'NTB', 'BIMA'),
('814', 'NTB', 'BIMA'),
('815', 'NTB', 'BIMA'),
('816', 'NTB', 'BIMA'),
('817', 'NTB', 'MATARAM'),
('818', 'NTB', 'MATARAM'),
('819', 'NTB', 'MATARAM'),
('82', 'LAMPUNG', 'LAMPUNG'),
('820', 'NTB', 'MATARAM'),
('821', 'NTB', 'MATARAM'),
('822', 'NTB', 'SUMBAWA'),
('823', 'NTB', 'SUMBAWA'),
('824', 'NTB', 'SUMBAWA'),
('825', 'NTB', 'SUMBAWA'),
('826', 'NTT', 'LABUAN BAJO'),
('827', 'NTT', 'MAUMERE'),
('828', 'NTT', 'ATAMBUA'),
('829', 'NTT', 'KUPANG'),
('83', 'LAMPUNG', 'LAMPUNG'),
('830', 'NTT', 'KUPANG'),
('831', 'NTT', 'KUPANG'),
('832', 'NTT', 'LABUAN BAJO'),
('833', 'NTT', 'ATAMBUA'),
('834', 'NTT', 'WAINGAPU'),
('835', 'Pasuruan', 'PASURUAN'),
('836', 'Pasuruan', 'PASURUAN'),
('837', 'Pasuruan', 'PASURUAN'),
('838', 'Pasuruan', 'PASURUAN'),
('839', 'Pasuruan', 'PASURUAN'),
('84', 'LAMPUNG', 'LAMPUNG'),
('840', 'Pasuruan', 'PROBOLINGGO'),
('841', 'Pasuruan', 'PROBOLINGGO'),
('842', 'Pasuruan', 'PROBOLINGGO'),
('843', 'Pasuruan', 'LUMAJANG'),
('844', 'Pasuruan', 'LUMAJANG'),
('845', 'Pasuruan', 'LUMAJANG'),
('846', 'Pasuruan', 'LUMAJANG'),
('847', 'Pasuruan', 'LUMAJANG'),
('848', 'Pasuruan', 'LUMAJANG'),
('849', 'Pasuruan', 'LUMAJANG'),
('85', 'LAMPUNG', 'LAMPUNG'),
('850', 'Pasuruan', 'PASURUAN'),
('851', 'Pasuruan', 'PROBOLINGGO'),
('852', 'Pasuruan', 'PROBOLINGGO'),
('853', 'Pasuruan', 'PROBOLINGGO'),
('854', 'Pasuruan', 'PROBOLINGGO'),
('855', 'Sidoarjo', 'SIDOARJO'),
('856', 'Sidoarjo', 'JOMBANG'),
('857', 'Sidoarjo', 'JOMBANG'),
('858', 'Sidoarjo', 'JOMBANG'),
('859', 'Sidoarjo', 'MOJOKERTO'),
('86', 'LAMPUNG', 'METRO'),
('860', 'Sidoarjo', 'JOMBANG'),
('861', 'Sidoarjo', 'SIDOARJO'),
('862', 'Sidoarjo', 'MOJOKERTO'),
('863', 'Sidoarjo', 'MOJOKERTO'),
('864', 'Sidoarjo', 'MOJOKERTO'),
('865', 'Sidoarjo', 'MOJOKERTO'),
('866', 'Sidoarjo', 'MOJOKERTO'),
('867', 'Sidoarjo', 'PANDAAN'),
('868', 'Sidoarjo', 'PANDAAN'),
('869', 'Sidoarjo', 'PANDAAN'),
('87', 'LAMPUNG', 'METRO'),
('870', 'Sidoarjo', 'PANDAAN'),
('871', 'Sidoarjo', 'PANDAAN'),
('872', 'Sidoarjo', 'SIDOARJO'),
('873', 'Sidoarjo', 'SIDOARJO'),
('874', 'Sidoarjo', 'SIDOARJO'),
('875', 'Sidoarjo', 'SIDOARJO'),
('876', 'Singaraja', 'GIANYAR'),
('877', 'Singaraja', 'GIANYAR'),
('878', 'Singaraja', 'GIANYAR'),
('879', 'Singaraja', 'TABANAN'),
('88', 'LAMPUNG', 'METRO'),
('880', 'Singaraja', 'TABANAN'),
('881', 'Singaraja', 'GIANYAR'),
('882', 'Singaraja', 'TABANAN'),
('883', 'Singaraja', 'GIANYAR'),
('884', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('885', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('886', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('887', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('888', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('889', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('89', 'LAMPUNG', 'METRO'),
('890', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('891', 'Surabaya Selatan', 'SURABAYA SELATAN'),
('892', 'Surabaya Utara', 'SURABAYA UTARA'),
('893', 'Surabaya Utara', 'SURABAYA UTARA'),
('894', 'Surabaya Utara', 'GRESIK'),
('895', 'Surabaya Utara', 'SURABAYA UTARA'),
('896', 'Surabaya Utara', 'SURABAYA UTARA'),
('897', 'Surabaya Utara', 'SURABAYA UTARA'),
('898', 'Surabaya Utara', 'SURABAYA UTARA'),
('899', 'Surabaya Utara', 'SURABAYA UTARA'),
('9', 'ACEH', 'ACEH'),
('90', 'LAMPUNG', 'METRO'),
('900', 'Surabaya Utara', 'LAMONGAN'),
('901', 'Surabaya Utara', 'SURABAYA UTARA'),
('902', 'Surabaya Utara', 'SURABAYA UTARA'),
('903', 'Surabaya Utara', 'SURABAYA UTARA'),
('904', 'BALIKPAPAN', 'Balikpapan'),
('905', 'BALIKPAPAN', 'Balikpapan'),
('906', 'BALIKPAPAN', 'Balikpapan'),
('907', 'BALIKPAPAN', 'Balikpapan'),
('908', 'BALIKPAPAN', 'Balikpapan'),
('909', 'BALIKPAPAN', 'Balikpapan'),
('91', 'LAMPUNG', 'METRO'),
('910', 'BALIKPAPAN', 'Tanahgrogot'),
('911', 'BALIKPAPAN', 'Tanahgrogot'),
('912', 'BALIKPAPAN', 'Tanahgrogot'),
('913', 'BALIKPAPAN', 'Tanahgrogot'),
('914', 'BALIKPAPAN', 'Tanahgrogot'),
('915', 'BALIKPAPAN', 'Tanahgrogot'),
('916', 'BALIKPAPAN', 'Tanahgrogot'),
('917', 'BALIKPAPAN', 'Tanahgrogot'),
('918', 'BALIKPAPAN', 'Tanahgrogot'),
('919', 'BALIKPAPAN', 'Tanahgrogot'),
('92', 'LAMPUNG', 'METRO'),
('920', 'KALBAR', 'Ketapang'),
('921', 'KALBAR', 'Ketapang'),
('922', 'KALBAR', 'Ketapang'),
('923', 'KALBAR', 'Mempawah'),
('924', 'KALBAR', 'Mempawah'),
('925', 'KALBAR', 'Mempawah'),
('926', 'KALBAR', 'Mempawah'),
('927', 'KALBAR', 'Pontianak'),
('928', 'KALBAR', 'Pontianak'),
('929', 'KALBAR', 'Pontianak'),
('93', 'LAMPUNG', 'PRINGSEWU'),
('930', 'KALBAR', 'Pontianak'),
('931', 'KALBAR', 'Pontianak'),
('932', 'KALBAR', 'Pontianak'),
('933', 'KALBAR', 'Sanggau'),
('934', 'KALBAR', 'Sanggau'),
('935', 'KALBAR', 'Sanggau'),
('936', 'KALBAR', 'Sanggau'),
('937', 'KALBAR', 'Sanggau'),
('938', 'KALBAR', 'Singkawang'),
('939', 'KALBAR', 'Singkawang'),
('94', 'LAMPUNG', 'PRINGSEWU'),
('940', 'KALBAR', 'Singkawang'),
('941', 'KALBAR', 'Singkawang'),
('942', 'KALBAR', 'Singkawang'),
('943', 'KALBAR', 'Singkawang'),
('944', 'KALBAR', 'Sintang'),
('945', 'KALBAR', 'Sintang'),
('946', 'KALBAR', 'Sintang'),
('947', 'KALSEL', 'Banjarbaru'),
('948', 'KALSEL', 'Banjarbaru'),
('949', 'KALSEL', 'Banjarbaru'),
('95', 'LAMPUNG', 'PRINGSEWU'),
('950', 'KALSEL', 'Banjarmasin'),
('951', 'KALSEL', 'Banjarmasin'),
('952', 'KALSEL', 'Banjarmasin'),
('953', 'KALSEL', 'Banjarmasin'),
('954', 'KALSEL', 'Banjarmasin'),
('955', 'KALSEL', 'Batu Licin'),
('956', 'KALSEL', 'Batu Licin'),
('957', 'KALSEL', 'Batu Licin'),
('958', 'KALSEL', 'Batu Licin'),
('959', 'KALSEL', 'Batu Licin'),
('96', 'LAMPUNG', 'PRINGSEWU'),
('960', 'KALSEL', 'Batu Licin'),
('961', 'KALSEL', 'Batu Licin'),
('962', 'KALSEL', 'Batu Licin'),
('963', 'KALSEL', 'Batu Licin'),
('964', 'KALSEL', 'Tanjung Tabalong'),
('965', 'KALSEL', 'Tanjung Tabalong'),
('966', 'KALSEL', 'Tanjung Tabalong'),
('967', 'KALSEL', 'Tanjung Tabalong'),
('968', 'KALSEL', 'Tanjung Tabalong'),
('969', 'KALSEL', 'Tanjung Tabalong'),
('97', 'LAMPUNG', 'PRINGSEWU'),
('970', 'KALSEL', 'Tanjung Tabalong'),
('971', 'KALTARA', 'Bulungan Berau'),
('972', 'KALTARA', 'Bulungan Berau'),
('973', 'KALTARA', 'Bulungan Berau'),
('974', 'KALTARA', 'Bulungan Berau'),
('975', 'KALTARA', 'Bulungan Berau'),
('976', 'KALTARA', 'Nunukan'),
('977', 'KALTARA', 'Nunukan'),
('978', 'KALTARA', 'Nunukan'),
('979', 'KALTARA', 'Nunukan'),
('98', 'LAMPUNG', 'PRINGSEWU'),
('980', 'KALTARA', 'Tarakan'),
('981', 'KALTARA', 'Tarakan'),
('982', 'KALTARA', 'Tarakan'),
('983', 'KALTENG', 'Muarateweh'),
('984', 'KALTENG', 'Muarateweh'),
('985', 'KALTENG', 'Muarateweh'),
('986', 'KALTENG', 'Muarateweh'),
('987', 'KALTENG', 'Muarateweh'),
('988', 'KALTENG', 'Palangkaraya'),
('989', 'KALTENG', 'Palangkaraya'),
('99', 'LAMPUNG', 'PRINGSEWU'),
('990', 'KALTENG', 'Palangkaraya'),
('991', 'KALTENG', 'Palangkaraya'),
('992', 'KALTENG', 'Palangkaraya'),
('993', 'KALTENG', 'Palangkaraya'),
('994', 'KALTENG', 'Palangkaraya'),
('995', 'KALTENG', 'Pangkalan Bun'),
('996', 'KALTENG', 'Pangkalan Bun'),
('997', 'KALTENG', 'Pangkalan Bun'),
('998', 'KALTENG', 'Pangkalan Bun'),
('999', 'KALTENG', 'Pangkalan Bun'),
('id_witel', 'nama_witel', 'datel');

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
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id_approval`);

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
  ADD KEY `id_pegawai` (`id_supervisor`,`type_order`,`id_job_class`,`id_asset_item`,`id_customer`),
  ADD KEY `id_mst_status_dismantle_order` (`id_mst_status_dismantle_order`),
  ADD KEY `id_supervisor` (`id_supervisor`);

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
  ADD KEY `id_asset_item_location` (`id_asset_item_location`),
  ADD KEY `kode_barcode` (`kode_barcode`),
  ADD KEY `qrcode` (`qrcode`),
  ADD KEY `link_code` (`link_code`),
  ADD KEY `id_customer` (`id_customer`);

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
  ADD PRIMARY KEY (`id_asset_master`),
  ADD KEY `supplier_id` (`id_supplier`);

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
  ADD KEY `userid` (`userid`),
  ADD KEY `id_supervisor` (`id_supervisor`);

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
-- Indexes for table `regional`
--
ALTER TABLE `regional`
  ADD PRIMARY KEY (`id_regional`),
  ADD UNIQUE KEY `id_witel` (`id_witel`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`id_role_menu`);

--
-- Indexes for table `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`id_sensor`);

--
-- Indexes for table `sensor_alert`
--
ALTER TABLE `sensor_alert`
  ADD PRIMARY KEY (`id_sensor_alert`),
  ADD KEY `is_case_open` (`is_case_open`),
  ADD KEY `channel_number` (`channel_number`);

--
-- Indexes for table `sensor_alert_history`
--
ALTER TABLE `sensor_alert_history`
  ADD PRIMARY KEY (`id_sensor_alert_history`),
  ADD KEY `is_case_open` (`is_case_open`),
  ADD KEY `channel_number` (`channel_number`);

--
-- Indexes for table `sensor_log`
--
ALTER TABLE `sensor_log`
  ADD PRIMARY KEY (`id_sensor_log`),
  ADD KEY `id_sensor` (`id_sensor`),
  ADD KEY `log_time` (`log_time`);

--
-- Indexes for table `sensor_warning_parameter`
--
ALTER TABLE `sensor_warning_parameter`
  ADD PRIMARY KEY (`id_sensor_warning_parameter`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id_supervisor`),
  ADD KEY `id_regional` (`id_regional`),
  ADD KEY `id_witel` (`id_witel`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
  ADD PRIMARY KEY (`id_warehouse`),
  ADD KEY `id_witel` (`id_witel`);

--
-- Indexes for table `witel`
--
ALTER TABLE `witel`
  ADD PRIMARY KEY (`id_witel`);

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
  MODIFY `id_asset_dismantle_order` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `asset_dismantle_received`
--
ALTER TABLE `asset_dismantle_received`
  MODIFY `id_asset_dismantle_received` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `asset_item`
--
ALTER TABLE `asset_item`
  MODIFY `id_asset_item` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id_asset_master` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

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
  MODIFY `id_auth_role_name` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_log_activity` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `sensor`
--
ALTER TABLE `sensor`
  MODIFY `id_sensor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sensor_alert`
--
ALTER TABLE `sensor_alert`
  MODIFY `id_sensor_alert` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sensor_alert_history`
--
ALTER TABLE `sensor_alert_history`
  MODIFY `id_sensor_alert_history` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sensor_log`
--
ALTER TABLE `sensor_log`
  MODIFY `id_sensor_log` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sensor_warning_parameter`
--
ALTER TABLE `sensor_warning_parameter`
  MODIFY `id_sensor_warning_parameter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_asset1`
--
ALTER TABLE `type_asset1`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_asset2`
--
ALTER TABLE `type_asset2`
  MODIFY `id_type_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id_warehouse` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
