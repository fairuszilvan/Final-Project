
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
(1, 'APP-NAME', 0, 'Dismantle Asset Management'),
(2, 'APP-NAME-SINGKAT', 0, 'Dismantle'),
(3, 'APP-NAME-SINGKATAN', 0, 'Disman'),
(4, 'Logo', 1, 'Logo.png'),
(5, 'Icon', 1, 'Icon.jpg'),
(6, 'ADDRESS', 0, 'Alamat Perusahaan'),
(7, 'Copyright', 0, 'Copyright {TAHUN} PUPR. All Right Reserved'),
(8, 'MAIN-BACKGROUND', 1, 'MAIN-BACKGROUND.png'),
(100, 'ID-MAIN-ASSET', 0, 'LzloRzRtWjh0S3d3ZitTMko0UENYQT09');

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
('/reports/*', 2, NULL, NULL, NULL, 1668071466, 1668071466),
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
('/villages/*', 2, NULL, NULL, NULL, 1668132646, 1668132646),
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
('admin', '/reports/*'),
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
('admin', '/villages/*'),
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
(11000, 0, 1, 'Pelaporan', 'clone', 'Pelaporan', 'Pelaporan', 'asset-in-asset', 0, 'admin', '', 1),
(11001, 11000, 0, 'Pelaporan', 'firefox', 'Pelaporan', 'Pelaporan', 'reports/index', 0, 'admin', 'MOBILE_TOP', 1),
(11200, 0, 1, 'Data Master', '', 'Data Master', 'Data Master', '#', 0, 'admin', '', 1),
(11201, 11200, 0, 'Desa', '', 'Desa', 'Desa', 'villages/index', 0, 'admin', 'MOBILE_TOP', 1),
(11202, 11200, 0, 'Master Fenomena', '', 'Master Fenomena', 'Master Fenomena', 'phenomenons/report', 0, 'admin', 'MOBILE_TOP', 1),
(11203, 11200, 0, 'Users', 'firefox', 'Users', 'Users', 'users/index', 0, 'engineer-supervisor', 'MOBILE_TOP', 0),
(25000, 0, 1, 'Setting', 'cubes', 'Setting', 'Setting', '#', 0, 'admin', '', 1),
(25001, 25000, 0, 'Setting Aplikasi', 'user', 'Setting Aplikasi', 'Setting Aplikasi', 'app-setting/index', 0, 'admin', 'MOBILE_TOP', 1),
(26000, 0, 1, 'Manajemen User', 'database', 'Manajemen User', 'User Management', '#', 0, 'admin', '', 1),
(26001, 26000, 0, 'User', 'user', 'User', 'User', 'user/index', 0, 'admin', 'MOBILE_TOP', 1),
(26002, 26000, 0, 'Autentifikasi Menu', 'dribbble', 'Autentifikasi Menu', 'Autentifikasi Menu', 'cpanel-leftmenu/index', 0, 'admin', 'MOBILE_TOP', 1),
(26003, 26000, 0, 'Roles', 'user', 'Roles', 'Roles', 'role/index', 0, 'admin', 'MOBILE_TOP', 0),
(26004, 26000, 0, 'Auth Role Name', 'dribbble', 'Auth Role Name', 'Auth Role Name', 'auth-role-name/index', 0, 'admin', 'MOBILE_TOP', 1),
(1100000, 0, 0, 'Logout ', 'sign-out', 'Logout ', 'Logout ', 'site/logout', 0, 'admin, member', '', 0);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_setting`
--
ALTER TABLE `app_setting`
  ADD PRIMARY KEY (`id_app_setting`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_setting`
--
ALTER TABLE `app_setting`
  MODIFY `id_app_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `auth_role_name`
--
ALTER TABLE `auth_role_name`
  MODIFY `id_auth_role_name` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
