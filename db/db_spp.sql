/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : db_spp

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 19/02/2020 08:32:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_history
-- ----------------------------
DROP TABLE IF EXISTS `log_history`;
CREATE TABLE `log_history`  (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `login` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `logout` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_bulan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bulan`;
CREATE TABLE `tbl_bulan`  (
  `id_bulan` int(11) NOT NULL,
  `nama_bulan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_bulan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_bulan
-- ----------------------------
INSERT INTO `tbl_bulan` VALUES (1, 'Juli');
INSERT INTO `tbl_bulan` VALUES (2, 'Agustus');
INSERT INTO `tbl_bulan` VALUES (3, 'September');
INSERT INTO `tbl_bulan` VALUES (4, 'Oktober');
INSERT INTO `tbl_bulan` VALUES (5, 'November');
INSERT INTO `tbl_bulan` VALUES (6, 'Desember');
INSERT INTO `tbl_bulan` VALUES (7, 'Januari');
INSERT INTO `tbl_bulan` VALUES (8, 'Februari');
INSERT INTO `tbl_bulan` VALUES (9, 'Maret');
INSERT INTO `tbl_bulan` VALUES (10, 'April');
INSERT INTO `tbl_bulan` VALUES (11, 'Mei');
INSERT INTO `tbl_bulan` VALUES (12, 'Juni');

-- ----------------------------
-- Table structure for tbl_kelas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelas`;
CREATE TABLE `tbl_kelas`  (
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `nama_kelas` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `kompetensi_keahlian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kelas
-- ----------------------------
INSERT INTO `tbl_kelas` VALUES (1, '10', 'AKL 1');
INSERT INTO `tbl_kelas` VALUES (2, '10', 'AKL 2');
INSERT INTO `tbl_kelas` VALUES (3, '10', 'AKL 3');
INSERT INTO `tbl_kelas` VALUES (4, '10', 'AKL 4');
INSERT INTO `tbl_kelas` VALUES (5, '10', 'OTKP 1');
INSERT INTO `tbl_kelas` VALUES (6, '10', 'OTKP 2');
INSERT INTO `tbl_kelas` VALUES (7, '10', 'OTKP 3');
INSERT INTO `tbl_kelas` VALUES (8, '10', 'BDP 1');
INSERT INTO `tbl_kelas` VALUES (9, '10', 'BDP 2');
INSERT INTO `tbl_kelas` VALUES (10, '10', 'BDP 3');
INSERT INTO `tbl_kelas` VALUES (11, '10', 'HTL 1');
INSERT INTO `tbl_kelas` VALUES (12, '10', 'HTL 2');
INSERT INTO `tbl_kelas` VALUES (13, '10', 'TB 1');
INSERT INTO `tbl_kelas` VALUES (14, '10', 'TB 2');
INSERT INTO `tbl_kelas` VALUES (15, '10', 'MM');
INSERT INTO `tbl_kelas` VALUES (16, '10', 'RPL');
INSERT INTO `tbl_kelas` VALUES (17, '11', 'AKL 1');
INSERT INTO `tbl_kelas` VALUES (18, '11', 'AKL 2');
INSERT INTO `tbl_kelas` VALUES (19, '11', 'AKL 3');
INSERT INTO `tbl_kelas` VALUES (20, '11', 'AKL 4');
INSERT INTO `tbl_kelas` VALUES (21, '11', 'OTKP 1');
INSERT INTO `tbl_kelas` VALUES (22, '11', 'OTKP 2');
INSERT INTO `tbl_kelas` VALUES (23, '11', 'OTKP 3');
INSERT INTO `tbl_kelas` VALUES (24, '11', 'BDP 1');
INSERT INTO `tbl_kelas` VALUES (25, '11', 'BDP 2');
INSERT INTO `tbl_kelas` VALUES (26, '11', 'BDP 3');
INSERT INTO `tbl_kelas` VALUES (27, '11', 'HTL 1');
INSERT INTO `tbl_kelas` VALUES (28, '11', 'HTL 2');
INSERT INTO `tbl_kelas` VALUES (29, '11', 'TB 1');
INSERT INTO `tbl_kelas` VALUES (30, '11', 'TB 2');
INSERT INTO `tbl_kelas` VALUES (31, '11', 'MM');
INSERT INTO `tbl_kelas` VALUES (32, '11', 'RPL');
INSERT INTO `tbl_kelas` VALUES (33, '12', 'AKL 1');
INSERT INTO `tbl_kelas` VALUES (34, '12', 'AKL 2');
INSERT INTO `tbl_kelas` VALUES (35, '12', 'AKL 3');
INSERT INTO `tbl_kelas` VALUES (36, '12', 'AKL 4');
INSERT INTO `tbl_kelas` VALUES (37, '12', 'OTKP 1');
INSERT INTO `tbl_kelas` VALUES (38, '12', 'OTKP 2');
INSERT INTO `tbl_kelas` VALUES (39, '12', 'OTKP 3');
INSERT INTO `tbl_kelas` VALUES (40, '12', 'BDP 1');
INSERT INTO `tbl_kelas` VALUES (41, '12', 'BDP 2');
INSERT INTO `tbl_kelas` VALUES (42, '12', 'BDP 3');
INSERT INTO `tbl_kelas` VALUES (43, '12', 'HTL 1');
INSERT INTO `tbl_kelas` VALUES (44, '12', 'HTL 2');
INSERT INTO `tbl_kelas` VALUES (45, '12', 'TB 1');
INSERT INTO `tbl_kelas` VALUES (46, '12', 'TB 2');
INSERT INTO `tbl_kelas` VALUES (47, '12', 'MM');
INSERT INTO `tbl_kelas` VALUES (48, '12', 'RPL');

-- ----------------------------
-- Table structure for tbl_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pembayaran`;
CREATE TABLE `tbl_pembayaran`  (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(11) DEFAULT NULL,
  `nisn` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `bulan_dibayar` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tahun_dibayar` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_spp` int(11) DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`) USING BTREE,
  INDEX `id_petugas`(`id_petugas`) USING BTREE,
  INDEX `nisn`(`nisn`) USING BTREE,
  INDEX `id_spp`(`id_spp`) USING BTREE,
  CONSTRAINT `tbl_pembayaran_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `tbl_siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pembayaran_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `tbl_petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pembayaran_ibfk_3` FOREIGN KEY (`id_spp`) REFERENCES `tbl_spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_petugas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_petugas`;
CREATE TABLE `tbl_petugas`  (
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nama_petugas` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `level` enum('admin','petugas') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_petugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_petugas
-- ----------------------------
INSERT INTO `tbl_petugas` VALUES (7, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin');
INSERT INTO `tbl_petugas` VALUES (8, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas', 'petugas');

-- ----------------------------
-- Table structure for tbl_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_siswa`;
CREATE TABLE `tbl_siswa`  (
  `nisn` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nis` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nama` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `no_telp` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_spp` int(11) DEFAULT NULL,
  `total` bigint(11) NOT NULL,
  PRIMARY KEY (`nisn`) USING BTREE,
  INDEX `id_kelas`(`id_kelas`) USING BTREE,
  INDEX `id_spp`(`id_spp`) USING BTREE,
  CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `tbl_spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_siswa
-- ----------------------------
INSERT INTO `tbl_siswa` VALUES ('0001166312', '171810402', 'IMAM TAUFIQ', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 3, 2100000);
INSERT INTO `tbl_siswa` VALUES ('0001240972', '171810495', 'YUSUF FREDIANSYAH', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 3, 2100000);
INSERT INTO `tbl_siswa` VALUES ('0001744337', '171810143', 'AGNI AGNIYA ILMI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 3, 2100000);
INSERT INTO `tbl_siswa` VALUES ('0001944533', '171810311', 'SHANI SETIAHADI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0002110511', '171810380', 'RHADINAL MAULANA SAPUTRA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0003129531', '171810112', 'DEVI SRI ARIYANTI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0003129695', '171810289', 'DIAN PRIJAL PERMANA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004026571', '171810077', 'DEA SAFITRI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004027216', '181910380', 'MULYANA HARIADI PUTRA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004029804', '171810370', 'IRFATUL  HUDA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004083317', '171810098', 'RIFKI SLAMET RAMDANI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004083318', '171810429', 'DIAN FACHRIZAL RAMDHANI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004521153', '171810078', 'DENDI MULYANA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0004742534', '171810284', 'ADE ROHMAT NURJAMAN', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0008197999', '171810505', 'DIKI NURBAYU', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0008297599', '171810016', 'MOCHAMAD RIZAL SALAM', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0008861413', '171810164', 'PUTRI RAHAYU', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0009908057', '171810072', 'ACEP ANGGI FIKRIANSYAH', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010309836', '171810004', 'ALIN KHOLIFAH', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010309840', '171810119', 'JAMIATUL ISTIQOMAH', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010320067', '171810188', 'IIT AYU MUTMAINAH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010508351', '171810387', 'WILMA SUKIAWATI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010508368', '171810489', 'RISA YULISTIA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2475000);
INSERT INTO `tbl_siswa` VALUES ('0010508511', '171810442', 'NADIA SAADATUNNISA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010509220', '171810294', 'HILDA HALIDA FAUZIAH', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010509402', '171810469', 'DEKA WIRAGATI', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010509439', '171810054', 'NINA APRILIANTI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010509461', '171810394', 'BAMBANG TRI JULIAWAN', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010547234', '171810304', 'NOPIA SRI AMELIA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010823634', '171810060', 'REIHAN RIZKY AMALIA SYARIFI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010823635', '171810052', 'MUHAMMAD ALWI AWALI AINUL MUKAROM', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010823639', '171810182', 'DIAN NURJANAH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010823642', '171810235', 'RATNA SARI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010928847', '171810193', 'LUVI AZIZAH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010928870', '171810329', 'FIRMAN SURAHMAN', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010928874', '171810275', 'RITA LINDIASARI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010941335', '171810441', 'MUHAMMAD FADILATUL JABAR', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0010943478', '171810432', 'FITRIA ARDIANTI HERMAWAN', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011104596', '171810012', 'GINA DWI LESTARI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011148568', '171810096', 'REGHINA VIRASWARI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011148665', '171810195', 'NINA NURAENI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011148680', '171810124', 'NENI FITRI ANA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011148922', '171810221', 'FITRI NUROHMAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011148926', '181910205', 'RAHMAWATI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011148933', '171810428', 'DEWI YUSTIKASARI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149250', '171810483', 'RADEN NENENG NINDA MUTIARA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149254', '171810153', 'FIRDA FADILAH', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149359', '171810448', 'RIA AGUSTINA PUTRI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 1125000);
INSERT INTO `tbl_siswa` VALUES ('0011149399', '171810455', 'SINTA ANDRIANI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149535', '171810332', 'INTAN NURUL FATIMAH', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149536', '171810224', 'IRMA GUSTINI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149543', '171810229', 'MOHAMAD ARIF RIFKI SOBARNAS', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149547', '171810412', 'PITRIYANI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149577', '171810146', 'ANTO HERDIANTO', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149593', '171810420', 'TOTO TOHARI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011149622', '171810388', 'WULAN CAHYA PERMANA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162023', '171810168', 'ROSA ROSALINDA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162081', '171810285', 'ANISA TRI WAHYUNI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162131', '171810028', 'RISTI AYUNI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162133', '181910201', 'NINING SETIANINGSIH', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162259', '171810457', 'SITI YASMIN', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162268', '171810303', 'NINA NAVISATUL MUFIDAH', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162272', '171810241', 'SHERLY AMELIA', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162330', '171810508', 'ELFARA NADIVA PUTRI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 0);
INSERT INTO `tbl_siswa` VALUES ('0011162382', '171810277', 'SIFA NURAZIZAH', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162383', '171810034', 'TENI OKTAPIANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162386', '171810215', 'ASIH SUNARTI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162403', '171810150', 'DINI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162428', '171810070', 'WINA WINARTI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162497', '171810302', 'NENG HINDA LESTARI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162504', '171810390', 'YUNIAR ATI REZEKI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162510', '171810310', 'SANI SONIA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162528', '171810425', 'ANA MARIANA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162536', '171810226', 'LINDA ANDINI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011162542', '171810228', 'MILA SULISTIANI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163252', '171810199', 'RANI APRIANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163253', '171810250', 'ANNISA SINTA PATONAH', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163261', '171810183', 'DIDA PERMADI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163271', '171810113', 'DJUSYIFA AGUSTIN', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163384', '171810410', 'NISA SALSABILA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163432', '171810238', 'RIZA HASANAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163433', '171810468', 'DEDE BERLIANI TRI AMANDA HIDAYAT', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163439', '171810058', 'PASHA ANISA RENOVIANTI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011163830', '171810140', 'VANKA OKTAVIA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011164000', '171810509', 'FELIXI DANIEL IRAWAN', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 1575000);
INSERT INTO `tbl_siswa` VALUES ('0011164022', '171810253', 'CITRA NUR PUTRYSNA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011164047', '171810257', 'FITRAHNI MUJIARROH PUTRI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011164050', '171810463', 'ARIEF  RACHMAT NUGRAHA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011168738', '171810464', 'ARRUMAISHA SAFFANAH', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011168818', '171810043', 'FAOZAN NURSOLEH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011168833', '171810382', 'RIMA SINTIA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011168929', '171810075', 'ASTRI AYU LESTARI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011168937', '171810374', 'MIRA OKTAVIA SANDI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011182990', '171810163', 'PEPI SOPIAH', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011221628', '181910437', 'ARDIS SAPUTRA', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011222855', '171810280', 'TANZILLA PUTRI ADDITIANY', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011222863', '171810435', 'ICHA SALSA ZAHRA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011222900', '171810273', 'RAEHAN APRILIANI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011222954', '171810338', 'MILA SALSA FAUZIAH', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011223018', '171810292', 'FARIKA AZ ZAHRA AMIN', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011223028', '171810324', 'CHRISNA DIAN', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225113', '171810458', 'SRI SURYANI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225129', '171810255', 'DITA PADILA SEPTIANI SUKMANA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225271', '171810408', 'MUHAMMAD HANIP', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225282', '171810307', 'RAIHAN DWIYANTO', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225285', '171810286', 'ARISTA SEPTIANI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225322', '171810515', 'MUHAMAD DICKY AL FIKRI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225337', '171810106', 'TRI SITI NURSYAHBANI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225345', '171810497', 'AKMAL FAUZAN MUSLIHUDIN', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225464', '171810433', 'GISTI MARISKA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225510', '171810371', 'ISMI SETIAWATI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225596', '171810110', 'AYU FITRI SETIYAWATI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225652', '171810419', 'TIARA GUSTINA DWI PUTRI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011225696', '171810438', 'MILA ARDILA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011226006', '171810249', 'ANISA NURHAYATI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011247443', '171810485', 'RENI NURAENI', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011247493', '171810434', 'HAIDAR HILAL HABIBIE', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011247509', '171810451', 'RISMA ROSMALINDA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011284738', '171810349', 'SRI AYU YULIANI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301327', '171810131', 'RESA MAULIDA RAHMAH', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301347', '171810230', 'NITA SUCIAWATI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301348', '171810126', 'NITA SRI NURJANAH', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301351', '171810389', 'YAYAN ARDIYAN', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301400', '171810418', 'ROBI JIDAN FIRDAUS', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301409', '171810187', 'HISHAM ARASI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301414', '171810083', 'IHAT SOLIHAT', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011301446', '171810127', 'NOVIA OKTAVIANI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011325649', '171810259', 'HENNI APRILIANI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011424320', '171810361', 'DEWI AYU LESTARI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011441789', '171810335', 'LOLA AMARINI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011441802', '171810327', 'ELLA ROSTELA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011504732', '181910544', 'ANGGA NURDIANSYAH', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011520677', '171810518', 'MUHAMMAD RISYANUL HAKIM ATHALLAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011680137', '171810525', 'ROYYAN DIAULARSYI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011680144', '171810248', 'AA AHMAD FAUZAN', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011682816', '171810510', 'FIRMAN NURDIANSAH SAPUTRA', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011684144', '171810351', 'TANTI PARAHYANTI PUTRI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011788675', '171810091', 'NITA PURNAMASARI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011828940', '171810074', 'ANGGIE DESTRIANI SITI NUR AQOBAH', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011963673', '171810047', 'HALID JA`FAR ISTACHORY', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0011995930', '171810399', 'FELINDA RABANISA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012067047', '171810416', 'RIKA AGUSTIN', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012149461', '171810496', 'ZAHRANI KHAIRUNNISA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012149466', '181910042', 'DELLA RISMAWATI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012187226', '171810065', 'SEASSY FITTRIANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012224939', '171810265', 'MEISA NABILAH ZAHRA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012280952', '171810132', 'RIKA AMELIA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012560273', '171810160', 'NENI APRIANI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012604408', '181910305', 'MILNA MELENIA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012624972', '181910316', 'SABILA SOLIHAT', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012627412', '171810158', 'LISNA DAMAYANTI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012874122', '171810266', 'MERI FONIRA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0012909230', '171810487', 'RIAN ARY HIDAYAT', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013161467', '171810093', 'NUR AN\'NISA FRISMA GEONOVELIA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013201397', '171810384', 'SUCIPTO MUHAMAD GUNTUR', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013225356', '171810272', 'PIA SOPIA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013400016', '171810400', 'FITRI FADILA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013410886', '171810246', 'TIYA ROSTIANI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013568721', '171810481', 'NISRINA NURHASNA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0013613916', '171810044', 'FIKRI DIAN AL FIANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0014062271', '171810270', 'NOER FHADHILLAH ALIM', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0014275875', '171810024', 'PENY OKTAPIANY', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0014493780', '171810367', 'FEMITANIA SAHARA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0014526233', '171810010', 'FITRI HANDAYANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0014814981', '171810293', 'FUJA  AMALIAH', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0014852607', '171810484', 'RAHADIAN ALIEFATHUR WINDHARTO', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015298339', '171810378', 'NURUL IKHSAN', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015324036', '171810152', 'FERRY FIRMANSYAH', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015394057', '171810057', 'OLIVIA KHOIRUNNISA KURNIAWAN', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015494613', '171810385', 'TANTRY KAROMATUL ADAWIYAH', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015556379', '181911576', 'SOFIA NURAJIZAH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015582709', '171810474', 'FAJAR MAULANA MALIK', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015635865', '171810062', 'REVI APRIYANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015681463', '171810009', 'ERMA MAULANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015702301', '171810352', 'TIARA NURMENTARI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015707556', '171810162', 'NUR A\'INI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015857587', '171810197', 'PAPAT PATONAH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015858082', '171810346', 'RINDA SEPTIANI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015858369', '171810051', 'MAYA NUR OKTAVIANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015876163', '171810502', 'CINDRI LAWALATA', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2475000);
INSERT INTO `tbl_siswa` VALUES ('0015876194', '171810366', 'FEBRI RIZKI NUGRAHA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015876282', '171810466', 'BRILIAN KESUMANEGARA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015982402', '171810472', 'ELSA RAHMAWATI', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0015994310', '171810461', 'ADITYA RACHMAN', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016031678', '171810504', 'DEWI NURILLAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 0);
INSERT INTO `tbl_siswa` VALUES ('0016033043', '171810298', 'LITA AMELIA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033048', '171810086', 'LINDA DELIANI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033053', '171810045', 'FITRIA MONICA MARDIANA', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033064', '171810407', 'MUHAMAD MUHLIS', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033075', '171810436', 'KARINA AYU', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033118', '171810320', 'ADISTY AINI AWALIA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033123', '171810200', 'RATIH PURWASIH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033125', '171810503', 'DANI HIDAYAT', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2475000);
INSERT INTO `tbl_siswa` VALUES ('0016033126', '171810139', 'TANTI AMALIAH', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033386', '171810203', 'RISKA AMANDA PUTRI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033565', '171810103', 'SOPHIE WULANDARI SETIAWAN', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033662', '171810172', 'SISKA CHINTYA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033671', '171810109', 'ASTRI TAMIH PRATIWI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033696', '171810392', 'AOLIA FATIMATU ZAHRAH', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033737', '171810297', 'LIA SRI MULYATI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033780', '171810507', 'EGA GALIH FADILAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033890', '171810029', 'SARI RIZQI SUBEKTI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016033998', '171810308', 'RATIH PUSPITA DEWI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016034038', '171810439', 'MOCHAMMAD RYAN ARDYANSYAH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016034188', '171810359', 'ASEP SAEPPULLOH', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016034198', '171810209', 'TETI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016034361', '171810322', 'ANITA DAMARA PUTRI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016034502', '171810212', 'YULI RAHMAYANTI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016075836', '171810376', 'NISA SALMA AZZAHRA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016111245', '171810386', 'TYARA SALSABILA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016135484', '171810449', 'RIPKI USNALA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016202054', '171810522', 'PINA FUZIAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016210036', '171810443', 'NANDA ZAHRA LAJAIN', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016212298', '171810321', 'ANDI SANDI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016253301', '171810204', 'SA\'DIYAH NURUL FITRI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016263770', '171810456', 'SITI MAEMUNAH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016264034', '171810251', 'ASEP IRFANDI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016311800', '171810276', 'ROMI AJI MUHARROM', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016311818', '171810037', 'ANA HUSNUL HASANAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016311841', '171810267', 'MOCHAMMAD RIFKY O.', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016311890', '171810514', 'MOHAMMAD FAISAL AL ROZAQ', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312431', '171810038', 'ANDRI SLAMET', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312439', '171810493', 'SATRIA ARIA RIZKINA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312586', '171810147', 'AYU NURHASANAH', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312588', '171810521', 'OSEP IQBAL', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312618', '171810305', 'NURLAELATUL FITRI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312686', '171810033', 'TIKA SANTIKA', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312697', '171810479', 'MUHAMAD BAYU SETIAWAN', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016312953', '171810222', 'IKMAL CAHYA GUMELAR', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016313312', '171810405', 'LARA INDAH KHOERUNNISA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016329580', '171810247', 'YUSNIA', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016347200', '171810309', 'RIKA ROSTIKA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016455960', '171810445', 'NOVA SUKMAWATI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016473015', '171810180', 'CHINTIA APRILIANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016473021', '171810156', 'INE MAULANI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016473663', '171810476', 'HAIFA NURFIDA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016474387', '171810205', 'SENI SEPTIANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016474698', '171810494', 'YULIYA NUR AGUSTIN', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016474784', '171810128', 'NUR FADILLAH KHOEROYANI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016475172', '171810167', 'RISFA OKTAFIA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016475450', '171810201', 'RESA FEBRIANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016475469', '171810071', 'WINDA WINDIANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016501768', '171810008', 'DIDAH NURDIAH', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016671069', '171810030', 'SISKA LAELASARI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016671071', '171810135', 'SEPTIANI NUR RAHMANIA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016698156', '171810446', 'RAHMA YUNI ANDIRA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016698160', '171810254', 'DIKRI NOVRIYAN SYAH', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016719434', '171810189', 'INDA LAKA DEWI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016737616', '171810159', 'LUTVIA RAMANDA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016795596', '171810088', 'MEA PRIHATINI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016795715', '171810470', 'DIMAS HASAN TSAQILA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016796008', '171810262', 'KHOERUN NISA ROSYIANTI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016796009', '171810368', 'FITRIA KAMILAH FAUZIAH', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016796152', '171810026', 'RESA OMAY DAMAYANTI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016862347', '171810260', 'INDRI OCTAVIANI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016924410', '171810491', 'RIZKI PRATAMA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016926519', '181910321', 'TITIN FATIMAH', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0016982989', '171810066', 'SITI NUR HOPIPAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0017144214', '171810411', 'NURUL SOFIA RAMDANI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0017302403', '171810423', 'YANI NUR ISLAMI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0017632818', '171810355', 'YUNI PURNAMASARI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0017707018', '171810216', 'DEA HINDIYANTI DEWI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0017949483', '171810356', 'AGUSTINA CHANDRA DEWI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018205441', '171810383', 'RIO HADIYANTORO', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018303871', '171810055', 'NITIA RATNA RAMDHANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018532591', '171810348', 'SISKA MELIAWATTY GUNAWAN', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018600777', '171810145', 'ANNISA DWI LESTARI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018678141', '171810318', 'YANTI NURAFIPAH', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018678221', '171810480', 'MUHAMMAD ABDUL HAKIM DAUD ISLAM', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018696678', '171810090', 'NIA KURNIA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018734965', '171810063', 'RISA NURFAUZIAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735058', '171810068', 'SUSKI AMELIA', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735161', '171810138', 'SRI WAHYUNI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735169', '171810120', 'LISMAYA AGUSTRIANI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735259', '171810003', 'AI WINA FITRIA', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735304', '171810279', 'SYAHMINA YUSRIN', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735305', '171810206', 'SILMINA YUSRIN', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0018735322', '171810018', 'NIDA NURFADILLAH', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019193625', '171810290', 'DITHA NUR FAUZIAH', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019280234', '171810478', 'LISNAWATI', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019482287', '171810092', 'NOVI FEBRIANTI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019494139', '171810516', 'MUHAMAD RIVAN FIRMANSYAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019583136', '171810080', 'FITRIAH', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019617237', '171810477', 'JHON RISKI SITUMORANG', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019725947', '171810282', 'WINDA PUJAYANTY', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019833623', '171810345', 'RIKO FAWAZ HAFIZ', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019848784', '181910237', 'NISA RAHMAWATI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0019928249', '171810011', 'GILANG PERDANA', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020028063', '171810154', 'HANIPAH', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020028065', '171810381', 'RIFKA ANNISA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020028081', '171810017', 'MUTIARA IMAN', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020028133', '171810108', 'AI DEPI KOMALA SARI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020028138', '181910399', 'ALMA HIRA AZZAHRA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020028143', '171810046', 'GITA MULYA FAUZIAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020066209', '171810339', 'NIKITA PINA RAHMADANI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020066294', '171810362', 'DILA MARSHELIA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020066298', '171810169', 'ROSANTI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020066299', '171810202', 'RIRIS RISWATI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020066302', '181910384', 'RANI INDRIANI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020162752', '181910188', 'DESIPA NURSIAMI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020162979', '181910050', 'JULIA SITI SOLIHAH', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020163262', '181910028', 'SELLY RAHMAWATI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020165026', '171810161', 'NIA KIRANTI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020168857', '181910410', 'INDRI LESTARI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020386970', '171810325', 'DIKA PERMANA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020386981', '171810116', 'FRISCA NURMA APRILIANI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020386985', '171810211', 'YOLA TRIE MAULANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020386987', '171810409', 'NADIYA KHARISMA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020387200', '181910241', 'RIKHDA ADHRIANSYAH', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020387203', '181910337', 'HARTANTRI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020403302', '171810084', 'KARINA JUMIATIN SANTOSO', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020404540', '181910135', 'SELINDA OKTAPIANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020405365', '181910471', 'ANISA SALAMAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020407894', '181910099', 'SITI NURASIAH  JAMILAH', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020449584', '171810006', 'AYU SRI WAHYUNI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020526032', '181910052', 'MITHA RACHMALIA HARDADI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020564690', '171810032', 'STEFANI AMADEA', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020567222', '181910102', 'SYIFA NURLAELA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020567224', '181910374', 'ILMA NURUL ULYA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020567287', '171810342', 'PANI PITRIA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0020608740', '181910526', 'MUHAMMAD FAWAZ MUBAROK', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021105198', '181910228', 'HENDRA JAYA NUR ISKANDAR', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021105279', '181910571', 'RIO BAHARI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021149941', '181910109', 'AGNES PUTRI PERMATASARI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('002115788', '171810025', 'PUJA GUSTIANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021231744', '171810353', 'WINDA NURFAIDAH', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021255183', '171810511', 'IKSAN MAULANA', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021441081', '171810079', 'EKA RAHMAWATI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021452966', '171810459', 'WIJDAN FATHUN NAJA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021490561', '171810343', 'PUTRI MAULINA CAHYA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021722439', '171810239', 'RIZKY NURHIDAYAT', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021725468', '181910085', 'LENI RAMDANI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021734814', '171810377', 'NUR AFNI APRILIANI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021734821', '171810498', 'AMIR HAMZAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021866813', '171810331', 'INDAH PURNAMASARI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0021889689', '181910477', 'DIANA SAPITRI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022004837', '181910521', 'LIDA MUSTIKA', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022011093', '171810134', 'SANTRI YULITA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022018113', '171810240', 'SALSHA SABILAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022148712', '181910433', 'AKMAL MUHAZIR', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234335', '171810005', 'ATI KOMALASARI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234342', '171810447', 'RENNY SITI MAYSYAROH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234347', '171810107', 'YULI ROSILIANI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234375', '171810061', 'RESHA PRATAMI WULANDARI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234438', '171810101', 'SANI NURIYANTI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234759', '181910458', 'RISHA NABBILA APRILY', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234763', '171810129', 'PEBIA ANISYAH', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234848', '171810520', 'NENI FITRIANI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2250000);
INSERT INTO `tbl_siswa` VALUES ('0022234861', '171810501', 'BIDAYA HIDAYATUN NISA', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234908', '171810517', 'MUHAMMAD IQBAL SEPTIAN', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234977', '171810036', 'ADE WINDY FIANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022234998', '171810243', 'SITI ZENAB', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022235001', '171810130', 'PRATIWI WIDYAWATI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022235105', '171810176', 'VINA WULAN CAHYANI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022235125', '171810396', 'DHESTYRA MARCENDA FUTRI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022235596', '171810023', 'NURHAYATI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022240663', '181910420', 'RISMA TRIANI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022267546', '171810336', 'MEILANY PUTRI BELIANA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022270236', '171810233', 'PRAMESTHI MARGARETA', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022281125', '181910313', 'RENI SUSANTI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022284656', '181910336', 'HALIF AL FIKRI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022342192', '181910404', 'DEA DESTIANI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022378056', '171810085', 'KENTZA ANDIKA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022438752', '171810274', 'RIFA SALSABILA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022438753', '171810450', 'RIKA KLARISA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 1350000);
INSERT INTO `tbl_siswa` VALUES ('0022438754', '171810214', 'AMI MUNAWAROH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022461111', '171810453', 'SALMA ADINDA SUKMAWATI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022551330', '171810100', 'SALMA HUDANI NABILA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022551332', '171810357', 'ANNISA NURUL FAOZAN', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022551870', '171810048', 'ITSNA ANGGRAENI LUTHFIYAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022552165', '171810184', 'DIO NUGROHO', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022552213', '171810076', 'CAMELIA PUTRI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022552523', '171810379', 'RANI WAHYUNI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022564104', '181910408', 'GALANG PERMANA PUTRA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022595622', '171810042', 'DILA MARCHELA', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022647790', '181910004', 'ANNISA ELIS RESIANA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022680262', '181910320', 'TIA SEPTIANI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022735672', '171810118', 'HESTI ROSTIANTI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022735835', '171810141', 'VELIA WANDA SALSABILA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022735855', '171810094', 'PEBI PEBRIANI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022738556', '171810059', 'PERA PEBRIANA', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022744555', '181910396', 'YOSEP SETIADY', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022805139', '171810488', 'RINDI INDRIYANI', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022810728', '181910296', 'DEVY SURYA ANGGRAENI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022819828', '171810095', 'PIPIT APIPATUL PATMALA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0022988479', '181910441', 'DEVI KARINA SEVIANY', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023014787', '171810069', 'TIRTA PERMATASARI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023067823', '181910074', 'ANISA DIAN PURWANTI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023084783', '171810002', 'ADE RIFAL KRISWANTO', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 0);
INSERT INTO `tbl_siswa` VALUES ('0023088091', '181910031', 'SOPIA NURSHANTY', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023092780', '171810519', 'NANDA IKHSAN WIJAYA', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023113548', '181910038', 'AMELIA PEDINA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023143655', '181910056', 'PUPUT ANDINI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023157240', '171810413', 'RANGGA ARIA LESMANA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023157249', '171810462', 'ANGGY FAUZIAN', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023157333', '171810050', 'LISTYA KINJANI MERAWATI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023157387', '171810031', 'SITI SHOFARIAH', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023211149', '171810492', 'RIZKI YUDIA PERMANA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023259074', '181910322', 'WIDA FARIDA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023271782', '181910436', 'ANITA DWI DAMAYANTI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023334133', '181910455', 'RANI SRI UTARI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023410937', '171810123', 'MOCHAMAD ASEP SIDIQ', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023485920', '181910450', 'MELI AYU CAHYANI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023489264', '181910169', 'PUTRIYANI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023560790', '181910118', 'HANI NURHIDAYANTI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023683151', '181910284', 'TASYA AULIA FIDESTI HASANAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023768168', '181910047', 'HELMA AFRILIA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023781980', '181910317', 'SANTIKA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023800335', '171810283', 'YULIANI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023801958', '171810111', 'AYU SILVIA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023841496', '171810013', 'INDAH AYU PRASIWI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023885698', '181910348', 'RENITA HERMAWATI ANWAR', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023904505', '171810242', 'SILVIA HERAWATI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0023981275', '171810261', 'INTAN YULIANTI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024006491', '181910508', 'ANDIANA RAMLI MULYANUDDIN', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024087823', '181910243', 'RISTY FITRIA NAVISA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024109872', '171810417', 'RINI ANGGRAENI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024128314', '171810137', 'SOPYAN SOPANDI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024128917', '181910456', 'REVA HANIF FARHAN', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024147669', '181910427', 'SYAKILAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024166342', '171810170', 'SANTI NURLIA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024169758', '171810317', 'WIDA PARIDA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024326536', '181910489', 'PIPIT FITRIANI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024344240', '181910039', 'ANNISA MAHARANI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024464696', '181910372', 'FAUZAN FIRDAUS TAWAKAL PERBAWA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024478343', '171810142', 'YUNIAR NURUL FAZRIYAH', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024485558', '171810512', 'ILHAM NUR IHYA ALIMUDIN', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024498899', '171810393', 'AULIA JULIANTINI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024528653', '181910026', 'SALMAN RAFI`I HIKMAWAN', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024540053', '181910487', 'NINDA TRIANI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024542824', '171810194', 'MUHAMMAD ARRIFQI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024561454', '181910156', 'ENDA MULYANI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024588840', '181910005', 'AYU AENIAH', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024625650', '181910034', 'TITA NUR OKTAPIANTI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024649550', '171810019', 'NISSA RISTIANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024655206', '181910326', 'ANDI SUNARDI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024657372', '181910098', 'SIFA NUR FITRIA SARI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024658660', '181910023', 'RIFA FEBRIANTI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024658673', '181910381', 'NITA AMALIA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024658958', '181910297', 'ELSA KHOERUNNISA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024659190', '181910448', 'LISMA RAHMA YUSTIKA', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024659315', '181910561', 'MIA ROSMIATI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024659533', '181910354', 'SITI WULANDARI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024659670', '181910059', 'RINRIN SUGIARTIN', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024659676', '181910057', 'REGINA SEPTIANI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024659721', '181910409', 'HANI WAHYUNI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024729841', '181910357', 'VINA PAZRIAH', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024825806', '171810136', 'SINDI SINTIA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024881595', '181910574', 'SUSI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024946484', '181910145', 'AAN SANUSI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0024969739', '171810314', 'SRI SETIYANI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025119648', '181910371', 'DWINA MARSELINA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025367462', '171810089', 'MUHAMMAD RIFA FEBRIANSAH', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025383629', '181910481', 'IKA ZAKIATUR ROHMAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025402368', '181910110', 'ANNISA CAHYA SYA\'BANA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025488657', '171810414', 'RENITA ERGI HERMAWAN', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025520149', '171810056', 'NUR\' ALIF NAFILAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025562502', '181910453', 'NOVIYA FITRI RAMDANI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025608752', '171810097', 'RESITA AGUSTINA DARMAWAN', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025702974', '181910111', 'ASTI ARFIANTI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025715665', '181910470', 'ANGGI NUR WULAN', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025715668', '181910323', 'YASIRA OKTAVIANI ZAHRA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025720773', '171810344', 'REGINA NURUL AGUSTIN', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025832573', '181910492', 'RHEVAN AKBAR ALDYANA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025998221', '181910231', 'KHOERUNNISA AL FITRI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0025998253', '171810053', 'NELI RAHAYU', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026032753', '181910097', 'SELA JULAEHA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026052323', '181910520', 'IWAN KUSTIAWAN', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026111543', '171810210', 'TITIN SUPRIATIN', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026111548', '171810166', 'RINI BUNGA ANDRIANI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026111570', '171810115', 'FIRA AINUNNISA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026111674', '171810397', 'DINA FEBRIANI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026111676', '171810082', 'HANUM SALSA SABILA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026111824', '171810151', 'FASYA AULIA RAHMA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026190813', '171810490', 'RISMAWATI SAKINAH', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026229127', '171810523', 'REIFALDHY SOESANTO', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2025000);
INSERT INTO `tbl_siswa` VALUES ('0026322028', '171810421', 'VINA LARASARI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026349506', '181910457', 'RIMA RAHMAWATI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026362831', '171810027', 'RISA MEILA', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026380495', '171810315', 'TANTI OKTAVIANI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026441865', '181910430', 'WULANDARI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026508439', '181910361', 'ACEP OZAN DWITAMA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026528473', '181910429', 'WIDYA LISTI MULYANI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026540875', '171810415', 'RIFQI AKHDAN SEMBIRING', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026560791', '171810375', 'MUHAMAD RIO RIZKI FAUZI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026582091', '181910397', 'ADILA OCTAVIANDA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026605330', '171810454', 'SALSABILLA NOOR FARIDHA', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026642590', '171810007', 'AZHAR YUDANSYAH', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026716485', '181910204', 'RAFLY ANANDA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026750926', '181910314', 'RESTI DWI CAHYANI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026822803', '181910117', 'FIRMAN SAEPUL ALAM', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026852875', '171810064', 'ROSITA NURFAUZIAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0026880996', '171810223', 'INDAH APRILIANI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027024628', '171810207', 'SINTA PUSPITASARI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027102320', '171810020', 'NIZAR AINUN HILMI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027135150', '171810269', 'NILNA NURUL ASNANI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027135153', '181910138', 'SOPI ILHAMI APRILIA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027135170', '181910012', 'HISYAM ROBIANSYAH RONI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027135171', '181910331', 'DEDE IDRIS', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027163755', '181910260', 'DEDE IRSAN NUL NASIR', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027270983', '171810422', 'WITA ANNISA DIAH PITALOKA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027299181', '181910174', 'ROSADIN', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027336094', '181910091', 'PUTRI ANGGRAENI SALSABILA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027393092', '181910147', 'AMI RAMDHINI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027475593', '181910411', 'KARISMAYANTI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027475596', '181910403', 'ASEP FAHMI GUMILAR', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027476560', '181910157', 'HANI ISNANIAH', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027476707', '181910531', 'RAHMY SAKIRA MARIS AZHARI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027476715', '181910003', 'AMALIA ZAHRA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027477519', '181910389', 'SILPI TIARA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478375', '171810291', 'EVI SUNARWAN', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478393', '181910096', 'SALSABILLANA ABHINAYA CAHYADI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478570', '181910286', 'TINA RIZKY PUJAYANTI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478603', '171810326', 'DINDA SASKIA ALFADILA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478635', '171810067', 'SUSAN JULIANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478649', '181910559', 'LUTHFI RAMDHAN FADHILAH', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027478727', '181910172', 'RISA DWI YANTHI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027486592', '181910236', 'NIA TRIANI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027538809', '171810401', 'GERY NOVASHAS', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027601207', '181910219', 'ANGELINA SEPIANI KUSMAWATI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027692491', '181910373', 'FILAN TIA AGUSTIN', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027696236', '171810015', 'LUTFIAH NUR FAIZZATUS SHOLIHAH', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027804982', '171810486', 'REZA ALYANA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027805320', '171810192', 'LUNITA ANBAR RESVIANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027889219', '181910196', 'INDRI SHAFIRA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027946385', '181910168', 'OKTIVANIA NUR ANISYA', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0027996652', '181910216', 'WAFA ISRA NURHILMA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028084736', '181910576', 'TAUPIK HIDAYAT', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028150116', '181910129', 'PUTRI TIARA MAHARANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179441', '181910406', 'DINI ANDINI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179460', '181910476', 'DEVA DELIA SEFTIANI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179462', '181910370', 'DINDA KEYSHA ADRIVA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179510', '181910244', 'RIZKI SAPUTRA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179525', '181910469', 'ALDI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179583', '181910027', 'SARAH KHOERUNNISA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179612', '181910465', 'TEDI IMRON SUPARMAN', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179724', '181910486', 'NANDI ADI LAGA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179729', '181910251', 'WINDU WULANDARI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179739', '181910100', 'SITI SOPIAH', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179781', '181910015', 'ISTI ZAHRA NUR AMALIA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179786', '181910136', 'SILVI SITI SOPIANTI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179788', '181910274', 'NURHASANAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179800', '181910072', 'YUNITA ANGGRAINI LESTARI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179801', '181910291', 'ANISA MULIYATI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179815', '181910075', 'ANNISA REFALINA KUSUMAH', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179836', '181910256', 'ANISA SAFITRI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179842', '181910439', 'CICI SAMROTUL FUADAH', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179858', '181910498', 'SYAHRIZAL MU\'IEZU', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179859', '181910197', 'LIDIYA HANDAYANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179895', '181910454', 'PAUNDRA PARDANI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179929', '171810217', 'DINA DIANA', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179937', '171810471', 'EFI SURYANI', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179945', '181910464', 'SUSI SUSANTI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179946', '181910137', 'SITI NURJANAH', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028179948', '181910215', 'TENI MULYANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190055', '181910165', 'NADIA PUTRI PRATAMI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190105', '181910434', 'ANA ISMI AYU NURSIAMI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190111', '181910474', 'CHANDRA DESTIANA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190138', '181910407', 'ELA NURLELA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190164', '181910044', 'EMPAT PATIMAH', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190177', '181910183', 'ANE SINTIYA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190180', '181910327', 'ANISA RAHMAWATI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190181', '181910054', 'NISA AMALIA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190186', '181910103', 'TIARA EKA PUTRI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190200', '181910347', 'RATNASARI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190230', '181910365', 'AMELIA KINTAN TRY RAHMAWATI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028190237', '181910133', 'RISTI NURFITRIA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028343394', '171810406', 'MELINDA SAPITRI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028373862', '171810526', 'SHANDI AFRIZAL', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028381703', '181910069', 'TINA MEILAWATI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028476778', '181910148', 'ANDRI SEPTIAN', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028476780', '181910233', 'LUTPI ADITIA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028538105', '171810312', 'SILVANA NURFAZRIH', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028538505', '171810296', 'INTAN NUR INSANI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028551831', '181910060', 'RISKI YULIASTARI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028551836', '181910132', 'RISKA VIONITA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028551855', '181910113', 'DILLA PUTRI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028551862', '181910089', 'NISRINA ATHIYYAH NUR AZIZAH', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028557375', '181910503', 'YUYUN YUNINGSIH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028557385', '181910440', 'DENISA RAMDAYANTI DEWILISTIAWAN', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028557390', '181910184', 'ANNISA ROIATUL MA\'WA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028557428', '181910301', 'HANIA BIRRA ISTHOFANA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028557430', '181910283', 'SRI MAHARANI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028557595', '181910062', 'SARIF HIDAYATULLAH', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558093', '171810035', 'WANTI RISWANTI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558116', '181910067', 'SRI NURAENI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558139', '171810301', 'MIA MEILISTIANTY PUTRI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558497', '171810191', 'LINA NURMAULINA SOBAHI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558510', '171810171', 'SHIFA ANUGRAH TRINANDA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558512', '171810237', 'RISKA NURRAHMASARI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558517', '181910530', 'PUTRI DWI RAHMANTI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558519', '171810245', 'TIA WARTIA', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558672', '171810179', 'ANITA MAUDINA', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558680', '181910180', 'TIYAN SITI FAJRIYANI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558684', '181910053', 'MOCHAMMAD VALIQH RACHMA AIDAN', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558685', '181910212', 'SITI NURLAILA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558703', '171810232', 'PENI RETNASARI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558929', '181910226', 'ELSA DEWI FITRIASARI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558933', '171810288', 'DARANI RENA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558936', '181910258', 'AZIZ MAULANA', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558950', '171810364', 'FAHRUL AZI NUGRAHA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558960', '181910022', 'RIA AGUSTINA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558966', '181910065', 'SISKA AMELIA PUTRI DWITASARI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028558976', '181910517', 'HANUM DYAH SHAFITRI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559036', '181910294', 'BAGAS GIYANWAR', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559039', '171810081', 'FITYAN NURUL RIZKY', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559040', '171810256', 'EVA HANAPIAH', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559044', '171810114', 'FAUZY ACHMAD NURHIKMAT', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559045', '181910548', 'DAFFA FADHIL ALFATTAH', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559052', '171810500', 'BAGUS NUGROHO', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 450000);
INSERT INTO `tbl_siswa` VALUES ('0028559060', '171810350', 'SUSI SUSANTI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559076', '181910273', 'NISA SITI NURHIDAYAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559079', '181910218', 'ANDRI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559081', '181910318', 'SILVI NOVITASARI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559083', '181910415', 'NOFAL RIZKI RAMADHAN', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559086', '181910532', 'RAMDHAN MAULANA', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559105', '171810306', 'PUTRI DWI LIESTIANI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559122', '171810524', 'ROSITA KARINA DEWI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559125', '181910126', 'NUR HASANAH', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559141', '171810181', 'DEVI APRIANI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559146', '181910518', 'HELMI ADIPUTRA', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028559152', '171810313', 'SITI NURAENI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028562841', '171810287', 'AZZAHRA FEYZAADHITA MULYANI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573039', '171810473', 'FADLY JOVI PERMANA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573438', '171810316', 'TETI SITI NURMA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573440', '171810173', 'SUGIH MUKTI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573441', '171810528', 'WULAN LESTARI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573444', '181910276', 'RAHMAT NASIHIN', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573446', '171810190', 'INTAN FANDINI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573555', '171810300', 'MELA SALSABILA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573566', '171810208', 'SITI NURBAYA', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573577', '181910177', 'SITI NURJANAH', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573664', '181910240', 'RANI MAHARANI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573791', '171810278', 'SRI RAHAYU WULANDARI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573793', '171810404', 'IZHA FAUZI MUSLIM', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573798', '181910468', 'YULI SULISTIAWATI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573800', '181910116', 'FIRDA AMELIA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573801', '181910248', 'SITI SRI MULYANI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573806', '181910037', 'ADESTIN INDAHSARI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573858', '171810369', 'GILANG DELTA NURAHMAN', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573867', '171810225', 'IRMA HALIMATU SA\'DIAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573883', '181910182', 'AHMAD ROJAK', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573888', '181910328', 'ANNISA NURDINI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573896', '181910303', 'KARMILA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028573911', '181910158', 'ILHAM ALFI HASANY', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574036', '181910501', 'WILSA ILHAM FADHILAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574058', '181910342', 'MUHAMMAD GHYTSA AWILDAN', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574165', '171810227', 'LUSI SRI RAHAYU', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574205', '181910155', 'ELIN YULIA SAPUTRI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574212', '181910279', 'RINI SUMARNI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574218', '181910203', 'PITRI MAESAROH', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574230', '171810430', 'DINI NURHIKMAH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574232', '171810178', 'AMELIA PERMATASARI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574239', '181910160', 'INDRI SETIAWATI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574251', '181910533', 'REYNA SITI NURSYA\'BANI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574252', '171810022', 'NOVIA ZAHRA PRAMADHANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574330', '171810104', 'SYENI SYAH ALMAILA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574341', '171810234', 'RANI RAHMAWATI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574361', '171810358', 'ARDELIA PUTRI SHIAMY', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574363', '181910130', 'RETA AULIA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574375', '181910555', 'HARI ISKANDAR', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574376', '171810334', 'LILIH NURSAMSIAH', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574378', '171810186', 'FIFIT MUTMAINAH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574387', '181910230', 'INDRI ROSTIAWATI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574388', '181910566', 'NENDAR SUHENDAR', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574395', '181910181', 'ADIT FERDI ADRIAN', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574396', '181910332', 'DIANA HAFSYARI US', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574397', '181910013', 'IKA SAPITRI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574400', '171810175', 'TIKA RAHMAWATI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028574404', '181910194', 'ILHAM HIDAYAT', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575554', '171810198', 'PEBI NOPITASARI', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575559', '181910159', 'INDAH DINA HAMDANI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575561', '171810365', 'FEBI AYUNITA', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575563', '171810213', 'AGUNG ARDIANSAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575570', '171810363', 'DINA WULANDARI', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575579', '181910227', 'ERNA ROSTIYANA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575586', '181910325', 'AMI NURAENI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575590', '171810144', 'ANISA SEPTIANI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575591', '181910170', 'RENA NURHANIPAH', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575594', '181910569', 'NURUL ARIPIN', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575599', '171810372', 'LISA INTAN', 43, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575620', '171810149', 'DIKA PRADIPTA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575625', '171810258', 'HENDRI SETIADI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 675000);
INSERT INTO `tbl_siswa` VALUES ('0028575838', '181910249', 'SYIFA ANBAR NUR FAUZIAH', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575842', '171810427', 'DEWI NUR AZIZAH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028575871', '181910345', 'NOFIHAYATI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576462', '181910146', 'AGUNG RIDWAN JAYA', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576574', '171810244', 'SUSANTI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576586', '181910349', 'RIKA KARMELIA', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576629', '171810295', 'INDRA BUDI FEBRIYANTO', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576633', '171810148', 'DELFIERA SALSA ZAHRANI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576657', '181910475', 'DASTIN NUR CITRA PITRIA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576662', '181910363', 'AISY DZAKIYYAH ABIDIN', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576709', '171810482', 'NURHADI SARWORAHARJO', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576720', '171810049', 'LINDA ANGGISTIA', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576778', '171810499', 'AMMAR ALIF SAEFULOH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2250000);
INSERT INTO `tbl_siswa` VALUES ('0028576810', '181910285', 'TAUFIK NUR RAHMAN', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576815', '171810264', 'MARSELLA FEBRIANTI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576823', '171810281', 'TRESNA AYU PERMATA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576835', '181910199', 'MOCHAMAD RIZKI NURFAUZI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576836', '171810236', 'RINA YUNITA RAHMAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576854', '181910046', 'FITRIA KHOERUNNISA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576857', '171810341', 'NOVIA SITI NURKAIDAH', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028576865', '181910193', 'HASNA FADILA APRILIANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028577834', '181910472', 'AYIE YUNIZAR', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028579924', '181910445', 'IFANI HASBI AULIALILLAH', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028579969', '181910529', 'NURUL NURBAETI BASUKI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028579976', '181910300', 'GAHADA TAHARA SALSABILA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594726', '171810323', 'ASRIYANI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594730', '171810099', 'RISDA AMELIA', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594877', '171810527', 'TESSA YANUAR FIRMANSYAH', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594880', '171810157', 'KEKE PRADITIA NURSEZA', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594890', '181910187', 'DARIS MUHAMAD RIFKI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594897', '181910334', 'FIKA DUROUL AENY', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594922', '181910142', 'YANI NURAHMAH', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028594976', '181910020', 'NURUL SITI NURHALIMAH', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028595031', '181910115', 'EVI ELVIRA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028595235', '171810039', 'ANISA DINAHIRJANI', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028671970', '181910479', 'FARHAN HILMAN SYAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674033', '181910208', 'RIVANI OKTAVIA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674046', '171810330', 'GINA DIANITA PUTRI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674050', '181910293', 'AZKA AFINA NATAMANGGALA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674051', '181910556', 'HERRY BAMBANG AWALUDIN', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674053', '181910375', 'INTAN TRI SUSANTI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674061', '171810437', 'MELLY YUSMIRAWATI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674063', '171810263', 'LILIS SRI MULYANI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674103', '181910364', 'ALYA AINUNNISA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674142', '181910350', 'RISNA ROSIDA', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674165', '181910462', 'SITI ANISA', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674210', '171810102', 'SHINTA PARWATI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674211', '171810460', 'YULIANI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674213', '171810122', 'MIRA MULYANI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674279', '181910451', 'MUHAMMAD RIZAL FIRDAUS', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674286', '181910058', 'RIA FARIHAH LAILA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674289', '181910189', 'EKA RIZALIANI PUTRI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674297', '181910150', 'ASTRI SAFITRI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674499', '181910494', 'SANTI NURLIANA DEWI ASTUTI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674744', '171810177', 'WIDDA INDAH ASMARA SOFIAATIN', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028674755', '181910112', 'CHINDI NIARA AGUSTIN', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028676724', '171810133', 'RISMA KUSENDANG', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028677542', '171810117', 'GENEVA FARDA RESTAVA', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028677872', '171810220', 'FEBY PEBRIANTI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028677924', '181910222', 'CUCU NOVITA WAHYUNINGSIH', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028677972', '181910386', 'RIDWAN MAULANA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028677990', '181910131', 'RIDHA ANDRIANI SAFITRI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678020', '171810001', 'ADE IRMA NIRMALA SARI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 2, 1650000);
INSERT INTO `tbl_siswa` VALUES ('0028678034', '181910120', 'INTAN  NURMAULANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678049', '171810452', 'RIZAL FIRMANSYAH', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678074', '171810040', 'AURA SEKAR NURAZIZAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678093', '181910032', 'TIA SAUSAN', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678244', '181910080', 'FANI RAHMASARI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678666', '171810506', 'DINA ISNAENI', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678680', '181910191', 'ERIS ROSMAYANTI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028678683', '181910253', 'ADE NURUL PALAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028700354', '171810252', 'AYI ANDINI PATRIA', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028711989', '181910539', 'SRI WIDIA MEILANI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028718016', '181910558', 'LUKMAN MAULANA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028750706', '181910519', 'HERU HAERUMAN', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028750711', '181910095', 'RISTA NURVIANI SARI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028751693', '181910499', 'TIKA SITI NUR LELA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028751697', '181910254', 'ADE PRISKI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028751711', '181910516', 'GILANG SEPTIADI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028751745', '181910463', 'SITI NURHALIZA', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798395', '171810218', 'DINI NURAINI', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798397', '181910419', 'RESA NURHALISA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798414', '181910417', 'PRITY HERYANTI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798416', '181910473', 'AYU TANTRI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798422', '181910144', 'YUYUN YUDIAR', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798428', '181910195', 'INDRI RAMDAYANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798450', '181910537', 'SENA FERDI FEBRILIANTO', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798470', '171810014', 'LISNA YULIANI', 33, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798476', '181910324', 'YUDA SEPTIANSYAH', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798500', '171810319', 'YULYA AGISTA', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798509', '181910339', 'KIKI WULANSARI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798580', '171810337', 'MELIA RAHMAWIDI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028798604', '181910510', 'DELA PUSPITASARI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028804149', '171810354', 'YASHINTA PUTERI YULIASWARA', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028876578', '181910366', 'ANA ARTANTI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028887755', '181910269', 'LAILA SRI RAMDINI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028907315', '181910002', 'ADITYA NUGRAHA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028931561', '181910490', 'RENDI MUTAKIN', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0028976754', '181910563', 'MUHAMMAD AZRIL FITRAYANA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029020886', '181910271', 'NADIA PUTRI PANANJUNG', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029032315', '171810513', 'IRA AYU RIYANTO', 48, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029108667', '181910482', 'LINA AGUSTIANI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029118417', '181910107', 'YULI YULIANTI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029120506', '181910546', 'BRAGI SAPUTRA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029135206', '171810340', 'NISA SHAFA AZIZAH', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029143820', '181910171', 'RIKI ARDYANSAH', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029174380', '181910259', 'CINDY AULIA MARYAM', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029249944', '171810465', 'AULIA KHAIRUN NISA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029267705', '171810041', 'CINDY NUR HIDAYAH', 34, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029300382', '181910242', 'RIRIN FITRIANI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029414923', '181910493', 'RURIN PUTRI RINJANI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029507457', '181910186', 'CITA LESTARI PANGESTU', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029516499', '181910163', 'MAULA HAFIDZIN', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029578094', '171810475', 'FATHARANI FADHILAH FAZA', 47, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029689970', '181910055', 'NURAENI RAHMAWATI PUTRI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029756245', '171810403', 'IRMA PURNAMASARI', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029815399', '181910491', 'REZA AZHARI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029880941', '171810424', 'YOAN ARI PRAYUDA', 44, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029907352', '171810271', 'NURITA JULIANTI', 37, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0029942628', '181910154', 'EGI SUGIANDI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030537387', '181910223', 'DEVI SOFIATUL MAULA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030718892', '181910545', 'ASKAL DRAJAT FACHREZI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030799460', '181910298', 'FIDA LUTFIA KHATARINA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030799836', '181910025', 'ROFFY ANGGRALISA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030799841', '181910162', 'LISTIA PUTRI RAHAYU', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030810171', '181910108', 'YUNITA SITI KANIA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030810639', '181910382', 'NURUL NURMALA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0030812368', '181910105', 'TRISANDI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031033354', '181910541', 'ADI JULIANA ARDHANI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031162838', '181910043', 'DINDA PUTRIYASA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031201589', '181910449', 'LUTFIAH PUTRI NURHAYATI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031202821', '181910272', 'NENG INDRI SITI NURAENI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031248068', '181910238', 'NOVIANA SIVA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031286403', '171810121', 'LISNA ANNISA SUNDARI', 36, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031369241', '181910353', 'SELI PEBRIANI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031463641', '181910179', 'SYIFA NURSANTI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0031967251', '181910087', 'NABILA PUSPA DEWI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032189543', '181910213', 'SRI MULYANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032306474', '181910478', 'EKA NURLELA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032338569', '181910550', 'DEANDY SYAHRIAL', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032367211', '181910368', 'AZIRA NADHIKA NUGRAHA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032488512', '181910466', 'TRESNAWATI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032506043', '181910346', 'PUPUT SITI NURAZIZAH', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032530684', '181910388', 'SHALMA HERDIANTI PUTRI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032703303', '181910202', 'NIVA NOVITASARI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032710524', '181910413', 'MIFTAH FAUZI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032768114', '181910190', 'ELISA PEBRIANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032782696', '181910166', 'NINDIA DWIPANI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0032857442', '181910562', 'MOH. LUTFI FADILAH', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033049547', '181910426', 'SITI NURJANAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033125908', '181910341', 'MITA APRILLIANI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033165377', '181910247', 'SITI NURAENI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033261356', '181910207', 'RISKA FEBRIANTI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033288840', '181910418', 'RANI AGUSTIEN', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033298765', '181910525', 'MOHAMMAD DAFFA ARIGUNA', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033346585', '181910536', 'SALSABILA ALIYA SOPYAN AZHARI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033426972', '181910270', 'MARI NURAZIZAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033566716', '181910446', 'INTAN SARI WIDIANTI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033660466', '181910390', 'SINTA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033719960', '181910217', 'AGUNG KUSWANDI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033730306', '181910073', 'ADINDA TEGAR FACHRIANA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033730367', '181910030', 'SITI NURUL HOERUNISA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033823057', '181910395', 'YAYAT HIDAYAT', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0033988173', '181910299', 'FINA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034079297', '181910435', 'ANISA PUTRI AGUSTINA', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034110495', '181910255', 'ANGRI MARYAM ANGGRAENI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034110525', '181910024', 'RISKI SRI MULIANTI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034173079', '181910307', 'NANDA ALIFAH FEBRIANTI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034235797', '181910572', 'RIZKI CAHYA NUGRAHA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034236510', '181910543', 'AHMAD RIZAL APRILYANA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034482164', '181910504', 'ZAHRA QURRATUL\'AIN', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034482284', '181910573', 'SUPRYANTO WIDADI PUTRA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034528093', '181910431', 'YESIKA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034571445', '181910094', 'RIRI RISMAWATI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034631102', '181910312', 'RENDY ADITAMA NUGRAHA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034704638', '181910553', 'ERIKA P RUSDIANA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034812505', '181910007', 'DINA SRI YUNANI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034812509', '181910079', 'DINI AMELIA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034812511', '181910066', 'SITI RINA SARWATI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034812514', '181910447', 'KURNIA SRI SALSABILA', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034812612', '181910428', 'VINI METIARANI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034812987', '181910288', 'WIDYA DWI PRATIWI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813062', '181910262', 'ELA LAELA', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813070', '181910356', 'TIKA KRISTIANTI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813086', '181910134', 'SALWA KHOERUNNISA KARTIKA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813119', '181910051', 'MALA NIRMALASARI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813121', '181910459', 'RIZAL FAUZI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813128', '181910143', 'YULIA ALFIANI LUTHFIYAH', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813147', '181910355', 'SUKMA TRI CAHYANI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813155', '181910480', 'HOPIPAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813180', '181910009', 'EVI NUR FADILLAH', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813185', '181910041', 'AZIS MAULANA ANSOR', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813237', '181910497', 'SITI RODIAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813241', '181910483', 'LUSIH ANGGRAENI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813516', '181910084', 'IRMA NIRMAWATI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813573', '181910077', 'DENDI KUSNADI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813577', '181910495', 'SITI AMINAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813580', '181910128', 'NURUL HABIBAH', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813582', '181910362', 'ADE MAHARANI ZULFA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0034813598', '181910086', 'MAUDY SAHARANI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035062746', '181910319', 'SRI SURYANI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035087687', '181910008', 'DITTA AMALLIAH', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035142912', '181910514', 'GENTA FAJAR NURRACHMAN', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035161864', '181910277', 'RENA YULIANTI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035220615', '181910010', 'FITHRYA CHAIRUNNISSA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035224979', '181910149', 'ANI CAHYANI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035467426', '181910220', 'APIPAH SITI NURAZIZAH', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035560304', '181910198', 'LUTHFIAH AZZAKHRA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035586160', '181910535', 'RORA MUTIARA PRATIWI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035687108', '181910225', 'ELIN KARLINA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035917079', '181910292', 'ANISSA MAULINA RACHMAWATI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035917085', '181910071', 'YULI AGUSTIN', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035917106', '181910340', 'LYNDA MUTYA ARIN', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035917534', '181910552', 'DIKI RAMDANI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035917538', '181910139', 'TIA NURSARININGSIH', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035917828', '181910104', 'TIRA PUSPITASARI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035955017', '181910401', 'AMELIA PUTRI KUSUMAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035955024', '181910287', 'VINA ZARIATUS SURURIAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035955025', '181910444', 'HANA NURHASANAH', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035955232', '181910421', 'RIZKI FAHREZI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035955238', '181910564', 'MUHAMMAD ZIBRAN NAUFAL', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035955239', '181910035', 'YEYEN NURYENI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956119', '181910232', 'LILIS SOLIHAH', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956122', '181910045', 'FADILLAH PUTRI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956123', '181910261', 'DESI RATNA SARI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956126', '181910049', 'IRA SILVA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956127', '181910387', 'SAEPUL HOLAS', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956130', '181910376', 'IPAN PRIYONO', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956135', '181910093', 'RIA KUSRIANI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035956137', '181910092', 'RESTI MUTIA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035957765', '181910330', 'DEA HERVIANA PUTRI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035957766', '181910268', 'KANIA HIDAYAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035957888', '181910280', 'RYKA ELYZA', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035959480', '181910263', 'FEBI ADHARANI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035959591', '181910310', 'PASCA WINDU FITRIA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035959597', '181910528', 'NINA SRI JUNJUNAN', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970387', '181910121', 'IRSA FAZRIAN RAMLANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970599', '181910527', 'NEVIA DWI PUTRI ANGGRENI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970601', '181910338', 'INTAN JULKAIDAH', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970603', '181910422', 'SEVA NUR ADHA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970612', '181910192', 'FAZAR RIZKY MAULANA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970618', '181910234', 'MOHAMAD RIKI SAPUTRA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970621', '181910484', 'MEL ASNI GUSTIANI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035970843', '181910175', 'SELA FITRIA', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035991315', '181910315', 'RISA PRASETYA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035991524', '181910048', 'INDAH SITI ROSMAIDA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035991527', '181910343', 'NENENG TSAMROTUSSA\'ADAH', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035991529', '181910078', 'DIANA SURYANI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035991676', '181910016', 'LINA CUMARLINA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992116', '181910554', 'GARLY NUGRAHA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992118', '181910505', 'ADI AFRILLIADI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992209', '181910281', 'SANTI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992214', '181910290', 'AFRILIANI FIRDA RAHMAT', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992216', '181910185', 'ASTRI WULANDARI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992218', '181910308', 'NILA CITRA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992220', '181910360', 'ZIXI YULIANI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992223', '181910036', 'YULIANA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992482', '181910540', 'ZACHRA NADYA PUTRI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992489', '181910534', 'RIZKA APRILIANI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035992490', '181910515', 'GERRY RENDRA AL GIFARRY', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993199', '181910021', 'RANI HAERANI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993201', '181910070', 'WEVIN', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993203', '181910250', 'TIKA SARTIKA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993280', '181910224', 'DIAN PATMAWATI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993282', '181910282', 'SILVI MAULANI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993498', '181910229', 'INAYAH NURAZIZAH', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993582', '181910512', 'FARHAN SYAH', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993584', '181910461', 'SHINTA FEBRIANTY', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035993585', '181910344', 'NINA NURAENI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995801', '181910335', 'GINA APRILIA', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995812', '181910124', 'MUHAMAD FAJAR NUGRAHA', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995818', '181910547', 'CEPI CEPIYANA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995913', '181910523', 'MAYA SITI PUJIASTUTI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995914', '181910359', 'YUYUN SITI NUR HOPIPAH', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995916', '181910358', 'WIDA NURLITA', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035995917', '181910266', 'HARI AGUSTIN DARMAWAN', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035996430', '181910063', 'SEIRA EFRIANSABILLA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998031', '181910017', 'MILA PATIMAH', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998115', '181910542', 'AHMAD RIVALDI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998133', '181910152', 'DEA LISTA OKTORA', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998135', '181910289', 'ADE RAMDANI SAPUTRA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998284', '181910522', 'MAHENDRA', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998301', '171810231', 'NURUL ADIDAH', 42, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998486', '181910245', 'SARMAULI OCTAVIA NABABAN', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998505', '181910061', 'ROSLIANA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998509', '181910309', 'NISHA HARDIA PUTRI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998522', '181910424', 'SINDI PUJIASTUTI ISKANDAR', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0035998523', '181910416', 'NURMEIDA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036015901', '181910538', 'SHIVA NURANI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036015935', '181910351', 'ROBY MAULADI NUGRAHA', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036038848', '181910391', 'SRI LESTARI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036038875', '181910161', 'LENI SITI NURAZIZAH', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036039001', '181910425', 'SITI KHODIJAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036039061', '181910140', 'TIKA AYU LESTARI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036039102', '181910278', 'RESSA MARDALENA PUTRI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036039135', '181910068', 'TIA SITI MASTUROH', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036117722', '181910306', 'MUHAMMAD FARHAN ABDILLAH', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036149221', '181910019', 'NUR MELASARI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036249380', '181910551', 'DENDY JULIANO JUANDA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036250966', '181910570', 'RIFQI MASYKUR', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036250967', '181910400', 'ALYA HERLIANI SAHIMASLUH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036251050', '181910402', 'ANDINI FITRIA FAUZIAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036251099', '181910557', 'ILMA NURLISNAWATI HIDAYAT', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036251104', '181910257', 'ANNISA NURSAFITRI MAHARANI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036251112', '181910014', 'INTAN RACHMANIMAS DWI NUGROHO', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036251279', '181910211', 'SISKA RAHMAWATI PERMANA', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036252166', '181910394', 'WULAN TAZKIAH USWAH', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036252181', '181910311', 'PUTRI NADA APRILIA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036252496', '181910167', 'NISRINA DWI NABILA', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036270889', '181910239', 'PUTRI NOVITASARI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036271096', '181910414', 'NIDA PEBIANA', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036271217', '181910442', 'DICKY MAULANA RAMADAN', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036271233', '181910090', 'NURSYAMSIAH MAULIDYA ROSADI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036271629', '181910267', 'HIRMA MAHESA PUTRI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036411109', '181910507', 'ANA NURJANAH', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036419163', '181910029', 'SILVIA INDRIYANI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036432265', '181910006', 'DELA PUSPITA SARI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553051', '181910352', 'SAFITRI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553061', '181910176', 'SINTA PERMATASARI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553074', '181910246', 'SINDI WIDIANI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553082', '181910379', 'MUHAMAD ANDRI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553089', '181910367', 'ANDRIAWAN FERDIANSYAH', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553163', '181910011', 'HASNA MUTHIA KHAIRUNISA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553170', '181910398', 'AKMAL JAMUS AWALUDIN', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553180', '181910392', 'TRIYANI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553183', '181910265', 'HANI YULISETIANI', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553187', '181910106', 'WIWIN WIDYA', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553195', '181910125', 'NENI ROSILANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553202', '181910033', 'TIKA INDRIANI RACHMAWATI', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553223', '181910275', 'PUTRI LAURA SAPIRA', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553269', '181910438', 'AYU SRI PEBRIYANTI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553271', '181910460', 'SANTI HERYANTI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553280', '181910385', 'RESTI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553291', '171810185', 'FATIMA AULIA ZAHRA', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553298', '181910083', 'INNA ANJILNI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036553306', '181910081', 'FITRIANINGSIH', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036712230', '171810105', 'TITA ROHAYANI', 35, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0036888974', '181910151', 'CHINDI AMELIA', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037037301', '181910333', 'FATWA WIDIANTI', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037037311', '181910467', 'VANNY PEBRIYANTI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037065404', '181910221', 'AYUNITA RAMADANI NAZWA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037118783', '181910304', 'LILIS NURLELA', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037118793', '181910488', 'NISA MEYELSA ARDIJAYA', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037118795', '181910575', 'SYAUQIZAIDAN KHAIRAN KHALAF', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037118966', '181910252', 'YUNITA ARYANI', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037184249', '181910153', 'DHEA RATNALUPITASARI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037185220', '181910511', 'FADLAN ABDI AL GHANI', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037204484', '181910560', 'M. ALDY FAHRIZAL', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037353712', '181910018', 'NIKI SILVIA NURLAELA', 17, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037354411', '181910082', 'HERAWATI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037665199', '181910393', 'WIDA APRILIA', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037730905', '181910567', 'NIRA ASYIFA SEPTIARIANA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037732126', '181910123', 'METALIA MARLIANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037825317', '181910064', 'SHINTIA BELLA', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037842209', '181910206', 'RIKE SEPTIANI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037972644', '181910101', 'SOFI RAHMAWATI DEWI', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0037979540', '181910423', 'SHIFA FAUZIAH MUTMAINAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038064949', '181910141', 'TITA HAYATI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038162996', '181910432', 'YOPI SOPI YULLOH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038288173', '181910264', 'FIRDA FAUZIAH', 21, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038335901', '171810431', 'FITRI WANDA ARIANTI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038416325', '181910443', 'DINA NURPITRIYANI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038432126', '181910509', 'ARIEF ROIS ALAMSYAH', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038538308', '181910210', 'SHOFI YUNIGUSTINI', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038721556', '181910369', 'DEWI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038738196', '181910302', 'INDRI APRIANI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038782534', '181910405', 'DEWI AULIA SOFI FAUZIAH', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038931798', '181910485', 'NADIYA RAHMAWATI', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038940133', '181910383', 'PUTRI AYU LESTARI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038993277', '181910329', 'BELLA BELINDA FERNANDEZ', 23, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038994551', '181910513', 'FIKRI FERDIANSYAH PRATAMA', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0038994552', '181910119', 'HESTI CAHYANI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039066930', '181910524', 'MOCH. RIZKY FEBRIANSYAH SIREGAR', 31, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039130990', '181910076', 'CARINA DINIARI CHOEROTUL UMMAH', 19, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039150860', '181910122', 'LILIS SUPRIANTI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039154900', '181910209', 'RIZKI FAUZAN', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039323762', '181910412', 'LILIS LISNAWATI', 28, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039371351', '181910568', 'NURUL ANISA', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039373167', '171810165', 'RANI RAHMAWATI', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039395673', '181910452', 'NIRA AULYA PUTRI', 29, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039505739', '181910040', 'AYU NUR LESTARI', 18, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039565850', '181910114', 'DINI NURHAYATI', 20, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039606022', '181910173', 'RISYA PERMATA SARI', 24, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039672514', '171810174', 'SYIFA MAZRIFAH', 40, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039740781', '181910214', 'TATA TRISWANTO', 25, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039789515', '181910502', 'YASMIN ZAHRA NUR\'AZIZAH', 30, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0039900602', '181910377', 'LELA JALILAH SULAEMAN', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0040257883', '181910549', 'DEA WARTIN', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0042010847', '181910378', 'LUTHFI NABILAH PUTRI', 27, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0042054569', '181910235', 'NABILA SABRINA', 26, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0042751650', '181910565', 'NANDRA HESTIANTI', 32, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0074107586', '181910295', 'DAIS NAINA FITRI', 22, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0080901027', '171810426', 'ANDINI NURCAHYA SUPRIADI', 45, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('0112260022', '171810299', 'MAYA WULAN SARI', 38, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('011680155', '171810347', 'SHANIA NOOR SYAHBANI', 39, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);
INSERT INTO `tbl_siswa` VALUES ('9992206433', '171810196', 'NURSINAH', 41, 'Jl. Jenderal Sudirman No.269, Sindangrasa, Kec. Ciamis, Kabupaten Ciamis, Jawa Barat 46215', '085214659874', 1, 2700000);

-- ----------------------------
-- Table structure for tbl_spp
-- ----------------------------
DROP TABLE IF EXISTS `tbl_spp`;
CREATE TABLE `tbl_spp`  (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_spp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_spp
-- ----------------------------
INSERT INTO `tbl_spp` VALUES (1, 2018, 225000);
INSERT INTO `tbl_spp` VALUES (2, 2019, 150000);
INSERT INTO `tbl_spp` VALUES (3, 2020, 175000);

-- ----------------------------
-- Procedure structure for get_history_pembayaran
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_history_pembayaran`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_history_pembayaran`()
BEGIN

SELECT
	*,
	SUM( bulan_dibayar ) AS total_bulan 
FROM
	tbl_pembayaran AS a
	RIGHT JOIN tbl_siswa AS b ON a.nisn = b.nisn
	INNER JOIN tbl_kelas AS c ON b.id_kelas = c.id_kelas 
GROUP BY
	b.nisn
ORDER BY
	b.nis ASC;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_pembayaran
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_pembayaran`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pembayaran`()
BEGIN

SELECT
	*,
	SUM( bulan_dibayar ) AS total_bulan 
FROM
	tbl_pembayaran AS a
	RIGHT JOIN tbl_siswa AS b ON a.nisn = b.nisn
	INNER JOIN tbl_kelas AS c ON b.id_kelas = c.id_kelas 
GROUP BY
	b.nisn;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_pembayaran_by_nisn
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_pembayaran_by_nisn`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pembayaran_by_nisn`(pembayaran_nisn int)
BEGIN
  SELECT * FROM tbl_pembayaran WHERE nisn = pembayaran_nisn;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_siswa
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_siswa`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_siswa`()
BEGIN
	SELECT * FROM tbl_siswa as a 
	INNER JOIN tbl_kelas as b on a.id_kelas = b.id_kelas
	INNER JOIN tbl_spp as c on a.id_spp = c.id_spp ORDER BY a.nis ASC;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_siswa_by_nis
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_siswa_by_nis`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_siswa_by_nis`(siswa_nis int)
BEGIN
SELECT * FROM tbl_siswa as a 
INNER JOIN tbl_kelas as b on a.id_kelas = b.id_kelas
INNER JOIN tbl_spp as c on a.id_spp = c.id_spp
where nis = siswa_nis;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tbl_pembayaran
-- ----------------------------
DROP TRIGGER IF EXISTS `TG_TOTAL_UPDATE`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` TRIGGER `TG_TOTAL_UPDATE` AFTER INSERT ON `tbl_pembayaran` FOR EACH ROW BEGIN
UPDATE tbl_siswa SET total=total-NEW.jumlah_bayar
WHERE nisn=NEW.nisn;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
