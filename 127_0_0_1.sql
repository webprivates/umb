-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 12:15 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `absis_unbk`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisis_temp`
--

CREATE TABLE IF NOT EXISTS `analisis_temp` (
  `id` int(11) NOT NULL,
  `kunci` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banksoal`
--

CREATE TABLE IF NOT EXISTS `banksoal` (
  `id` int(11) NOT NULL,
  `id_kd` int(11) NOT NULL,
  `isi_soal` text COLLATE utf8_unicode_ci NOT NULL,
  `isi_jawab_a` text COLLATE utf8_unicode_ci NOT NULL,
  `isi_jawab_b` text COLLATE utf8_unicode_ci NOT NULL,
  `isi_jawab_c` text COLLATE utf8_unicode_ci NOT NULL,
  `isi_jawab_d` text COLLATE utf8_unicode_ci NOT NULL,
  `isi_jawab_e` text COLLATE utf8_unicode_ci NOT NULL,
  `jawaban` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_sekolah`
--

CREATE TABLE IF NOT EXISTS `data_sekolah` (
  `kunci` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_sekolah`
--

INSERT INTO `data_sekolah` (`kunci`, `value`) VALUES
('alamat_sekolah', 'Jalan Pemuda 149, Semarang\r\n'),
('kode_gambar', 'gambar'),
('kode_jawaban', 'jawaban'),
('kode_kd', 'kd'),
('kode_soal', 'soal'),
('kode_to', 'to'),
('kode_to_mapel', 'to_mapel'),
('nama_sekolah', 'SMAN 3 Semarang'),
('tingkat', 'sma');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE IF NOT EXISTS `gambar` (
  `id` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bidang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdelete` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `username`, `nip`, `nama`, `bidang`, `created_at`, `updated_at`, `softdelete`, `deleted_at`) VALUES
(1, 'ariaseta', '121212', 'ariaseta', 'IPA', '2016-01-08 07:56:58', '2016-01-08 07:56:58', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_siswa`
--

CREATE TABLE IF NOT EXISTS `jawaban_siswa` (
  `kode_jawaban_siswa` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_to_auth` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kode_soal` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_jawaban` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `no_soal` int(11) NOT NULL,
  `json_urutan_kode_jawaban` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_first_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` text COLLATE utf8_unicode_ci NOT NULL,
  `history_jawaban` text COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jawaban_siswa`
--

INSERT INTO `jawaban_siswa` (`kode_jawaban_siswa`, `kode_to_auth`, `kode_soal`, `kode_jawaban`, `no_soal`, `json_urutan_kode_jawaban`, `created_at`, `view_first_at`, `updated_at`, `history_jawaban`, `count`) VALUES
('040783b44b86a6ce166db419dbf4c23470cd285b89b48a049f5aae0b6c306535', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', '', 13, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('059548fb7bbbe911088a03f36c9d39b536d0947d5249b1b28bd2bd21b09477d7', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', '', 28, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('0713f0af26ba084cf1655dc9f1ac4cba9d5467ffc087de474426392fcdd04ddc', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '8085282060ea8bf0df9f79b9064e852e1689cbec', '', 32, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('07b8a901acb876459fad2d4172e6db7f30a3fc84d00004c6afda0c4f3574371a', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', '', 50, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('0818823d9e3895e39b6ee7500593fc8f821221ba9bd151d8e051a1128a927268', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', '', 45, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('099204a4f2b28dd40bd4507d9159efe2f3787e5ad419867c4b5e5946aef9d45f', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '44580e4a00e802254295f06afbd9c48e391b51a2', '', 3, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('0beb0831fe0c6ecc181ed1f3802075dfd333ae74a68d610cf6d23a951307a3a3', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', '', 15, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('12b1915ceae3a3e3cf5ddd775a2c9b6752404b339b7a80f151b19ab808c6a379', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '01a26a6edb4a00eb762808fbaf580f3241530832', '', 50, '', '2016-01-17 22:39:46', '0000-00-00 00:00:00', '', '', 0),
('13205cfb711950a0a4a126bce48601498c580c099c3dd8b13884bf0c95dd3049', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', '', 20, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('1408b41374bf1f0aba200bdd4d4aa58539f17853c4b7d2b5e77ba8b92d3a9f2e', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', '', 9, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('171446ecca131a95e0da5a4209c64316d310f971c83dd51e43e8650e6f8ad935', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'dea428eac84e3c7da770d77f6b70089de45fc306', '', 42, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('180005c1699ccc3b978dc520e76f4884eb526d862ba8e45d068294a2b0fa5b23', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'ae67ee451b4d95ae02061badcd2f736591a1215d', '', 44, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('20a87d6b41b3e47f394c29b7039d48e76d09c3e8b2eaa496436e21424e11e5ef', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5deaf56ae2e2be8de911912de2488b76bc497a3d', '', 23, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('20d4210d868e4900e751367a9124d87a8351c8bc4be12d2c05354b9ff9caac25', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '8de090434269c0fa41bdba7b2defe951fa71f843', '', 48, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('2405ad9c4bc067170a653638fa6bd88ee270eee230c91aa0ac26cd68ec7bcd70', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5d0085795988b55ea633c629930e77533018c4a9', '', 37, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('2495c1652ca438269d3d351e45efa00fe532dd269507776180f031cc8007b77c', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '4e0370105eac3b8b66605c97b64baabf6f55bf87', '', 18, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('25b633a699c7165cd884d68b93d3fd90e11e466b707154b8ee9da77c29fc12f4', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'e80501176d08d22ee0de237479c1942b578b31b0', '', 36, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('2857b582d21e5832e6788aca9083c3345c268f3192e91ca087681d41a996075f', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', '', 17, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('2a47a4f7815bd74b1d6eafca806e188200d4dd4ae5adfa4a4834d3b6ab48b8e7', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', '', 25, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('2c1e513d649c9c51b30986f554cf024753c99f9f0ca49c870340e194933292f1', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '4093f25998255ac853e42438bf3eb5e873a05ebd', '', 51, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('2de681f421f0442ffa58a3330f19d89606d8dd2323a535be805b84166b37067b', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '7686a2ba54ed99f532a1ee722386eeac80d698d6', '', 11, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('2e6b8b20b736f610a3392be901b9afccbea10cb16f415acc5d2458920d009fa7', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '65c51092ca6adeede72af8b7756d20745b18630d', '', 29, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('2e838b21760c2c8e1f63a3e772fc2625e8e364cf4e1ab9ce02cf3250b82b458c', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', '', 41, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('2fcc6a416baf26b922366954cb95b21ac139debdb0f150075893bea492454694', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5543a28b895730f883a2e702378d6c1a47fb6879', '', 14, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('303ac7cab1d58789f000667d36364c31d70a9638c73ed6e004b8ef3e80f67e7e', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '41ca001c7b59cf91e44728a374f5d7c958076737', '', 40, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('31433f31eed5e938aca0b931dece67d8917880dc0250b308165ebc5e1a2cdf6f', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '', 1, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('31bd2fcff1514e7eca3e14bc3c4434540981c4d312dc044aa82fcad69be7d9a4', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'dd5796fd978c530908885b25d1229a914d6eb4e8', '', 14, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('34db872cea58d8b25a84facf6501eb45bddd21e49eb4131b7902ff375c19c7e9', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '3c581c3cabcd06f6b597f825c09265cb34cd278c', '', 7, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('37af76121ffd4787c4e08a5d1f968d23798e5acb16b0c078bf20b7a230e1c105', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '7291eb9f481efb96b3c300d68e474249c5dfd7df', '', 16, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('3e20811fc18f5eeabdca64cb65264110d07e1ea0425bfbdde8bd59f204e123a8', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5a7deb492de46796c20d236f19c3efd644a58695', '', 21, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('3fef94267e4a44f4ebc6da89844907df3244e21c6cc0dfd19dc0337f9fa2be76', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', '', 23, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('440f526c0c2f60387d5437b554e4d2e95f2a2b0615ac892ed3ffcefcde5ed938', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', '', 11, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('45707f96cefaf392180bafa35227f544daf75caab2f83b1c5a37caf146545431', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '0730b474c9456446d0ad299b53edda4a97de31ea', '', 3, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('47242014597032271a5aacd4593ccf3def3559f77071392266b2cbd943be8176', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', '', 35, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('479de5a1c794052642ee2260721681aca80d697bcaa639a8a93aa51634e184f5', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', '', 42, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('499f81fc28770dbc606c2317f4d97968460d21939d4b602dc2bddc4ac4beec13', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '9da8d62973652d61ea938a8d2220ebc04a156cc6', '', 34, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('49b6c7c3d1ab0f8e8cfdcb2ce96bb00d97b5e008a441ba459ac4e2cc011f3553', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', '', 49, '', '2016-01-17 22:39:46', '0000-00-00 00:00:00', '', '', 0),
('4b8e2dc6c1371005de9e5ba43000c2733eac26bead39a65df10d4d560553c724', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', '', 5, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('4e6a6d72586778fce3050e8665d4e769060a9f00368a7160471ccdc3bc574fdd', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'c9a581559c9860fccbc02739fe0342cfb52536f7', '', 2, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('511cd5c58e3688b4f9fe6c2f6737f099845863b13b4a1e467b53bc85dcb7a61c', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', '', 19, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('535cb36aa0385c82d76c715c4b197642fd0b168f6d881dd777f784ad13b3ca24', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', '', 5, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('537490a4725ade9093d1962399c6b4ef1bc4b9537ffb01eb05a9a75b02962045', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '0f718616f6f3d211d0687969a79bab4fc5e02e86', '', 25, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('56546094e598bbdf5c4cfade706d9c88987bd6bfad9e6794f5f6bd653256a019', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', '', 41, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('5701ff4518ff924dd08fad78062f3de33e64244b7a97e8f001814fcef394ebe8', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', '', 13, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('5bb9d6fd7609959e757f90b860a3301e50f0b90e9237af8611313d10bea04935', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '7de2ff2420a77b4800e28f688c6073e3667a82c7', '', 30, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('5be0ad635d7d2dfa23a364f2a1121fdcfb9389ed8726680fc606810f08b7dece', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', '', 52, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('5f46e026c472db5fae64a2679c0992acd1d079070c2c168159dac81eb92519fe', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '8a29d69774ef268913675c2a720a7888b021028a', '', 2, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('6098b47c01add668c1b6bf6c3d22be8ab2c1b8e55a8d416368120bc4e10bcd51', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '12d2201bcbe257df7b78087e26ba97fab27a01f8', '', 32, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('620fb5a528fb7158740c44f77b665330a317d541fca1eaca96522dfe29f6cdb2', '08a01b41c1ef998126281e7e13f0a69050ee2c85bd8d576e4d30e3f0be4d7477', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', '569e7219f8f81cdeb71cc44d90239b51c0f3e5b4', 1, '', '2016-03-07 00:38:03', '0000-00-00 00:00:00', '', '', 0),
('6e049f8dd49a1603a09873a5f33a7d75fc53b0c80d111ce7b606c7d09f3b21b2', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '75e111060698785ae86ec02eebe3ea5cee9533e6', '', 8, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('6f5a0fd20ae497b250ab224aa21c44e903bc78e87cc2488825881c91ed2eecfc', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '1e2e5a8b191c84957ca923c1854ac8a64d982231', '', 29, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('75b5fdea5e23ff4ce793b9077597cc5e9389284c26b8577bfe841f216d82d79d', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'a389bc41ce99c9e11aed44f7547e3847071977c8', '', 27, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('77cb5a9a273c2905614ecde39c3b95988a9fd6e10de09617097e9a59a8d39ecc', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '8311cc80170420afa21b6dde55b44063051b2d7b', '', 4, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('8378b154be02c5b0c6415f4b05e9eca4f67bd4ec3b39932e5b4add027e46e3bd', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '80c76cd575adc6d71d8953b9afad01f2909775cb', '', 9, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('893b35d7a84c23dfb9eef8b359da552f9cb648304742c544df15480410eededf', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', '', 24, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('8954ee13c532403ed4f8a3bd2c45f42f391bdd44ac4577d8bf0596299c050782', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '24f2a97b155274192d3a90d9566d96e7e31b9d89', '', 31, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('8db47e340b108ba70fba43d2e893a26953693226cf160433b69ed5083de46bf5', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '74ca44a2150d19731b7f31880d1b250239957a71', '', 27, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('8e16ad8fcdc4be92d1520efdeb3ca5bd3e7af6efd0bf25a2c99ba8221aba9380', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', '', 35, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('91ba0b260efd15db0b9bb637e76e443e4c3e56f7386f5309636d6f2cc8777f08', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', '', 21, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('92f10be5b35d34365869c106479d94775107f29ca890ef06eb64b0caec78e1af', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '99983d45fd497196ff2a4750706074772a1d9521', '', 1, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('9464fd8d25a287c94297206bbd2592370a6225a15462e124817b5fd7fceef4a7', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', '', 44, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('95e8910481c086a6356617b3e0d1869d5cfc2297c496ca94bc7e74403e256f57', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'f1efd317a37c0deea1574465b137a71879b16c5d', '', 40, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('9a96f98e4528a438cf11c475e37227c7dedf3492390bea4ba105ad9924dcce37', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', '', 12, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('9acb36facdbfdeb835f746d1726d1200f81ffa94e529c1eb08eb07efc6ac413b', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', '', 12, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('9fab29a14c4c0ea71c41302e8d7b23fa5bf883106b8e1f2e5788fa50ce3655ff', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '3ee69778089a193c296c48a1cc6beb02693fa21a', '', 48, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('a4d66baf36448b002d316c8497624d2fe4dbda386eb6d0af8d77d7657155ee3b', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', '', 46, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('a50a103c9e95a0c3471fb052ce2231fcff21749e021076def67cac9726cc17c4', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', '', 37, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('a82d1e8b718017a3fdd1256e5f6bfebf1f20802931149f7932f4b57da33fc88e', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', '', 34, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('a88a214a519f1569bef37fbfd06c103cf0db0d8b1f5c32ea188a3e8b88a4796b', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'b71f195906134287e116fac72fb35c5cd32517e7', '', 24, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('a8f5b87f78139de013235a6b1876d37bf09246a8580a4d314702fc1b0e6e9fe0', '5853e32e641ff1808f40a6d411c793e817f56813a1943f85be4324e363d05bc0', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', '9db2467cf8ff01a581ee3e8bd6dba10f942de882', 2, '', '2016-03-07 00:16:15', '0000-00-00 00:00:00', '', '', 0),
('ae75855f948b613ea2fe6c9612c78d1f204dc717fc85fee7047df14578d0e609', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '17c32c46c03002e9daf1453b5a1dd0060f37366f', '', 43, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('b0160664bb5f4d7a8860af108a6418aacbf713edfbaeced4874b29d234aa2394', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5854b66902739de808cdb4316fad8a669b4fe213', '', 33, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('b30c8f1ca5b999f0f9020c461a7dd1de8e3e6539226be6a135cdf0e782a0b469', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', '', 38, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('b51f1433bbf31b659ede16ff2f0b0648c4152e29f9d5a0a58e56eb01630096af', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', '', 43, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('b87c40fbf4be9e97d3160b90111c75060572af3fdfe3237f8c0411fed61f6e02', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', '', 36, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('beceb136bb629a31b49c4611b528b58490a17174e32016ca5b56c1d968e778c2', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', '', 33, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('bf6b3c3a276454c5b67091aeb99f4c9c865c0b586ce49d73e12d3c2040baba57', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', '', 8, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('c31d3a5faa80e509a9e47ccde6ab86d63a9cfdcc60fb2122ce564fd33113de04', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', '', 26, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('c4b2901a5c89c22d28df07d2a47ba91405115b2d38ec0acbdab3f30f9a952178', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', '', 4, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('c68a11cd294727e8a656c599dd04175957995ee4187a4261001c46fe6bd63feb', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', '', 45, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('c99b6fc9d2d95419bd94e79662ccaff0d1b1b23969f89a1782cecfbaacf83669', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '9c480275c118fcb06cd60384fe3298761e691db2', '', 18, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('cac96f915a4d39d105653b14f978335f30148309e75a0f41bb97dfc348deff90', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', '', 19, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('cb759ac7871d7bd5263cda434b9d9598899f02c64084d6c7aabda39e5326712e', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', '', 7, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('cd005d3ff8f30a9ea2f6196cb1096b6b0c97945028a9254a2ac955cb15e9c689', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'c93891db1817783abcb85e0a1253c381f6418e83', '', 6, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('d012f8537730867ca83f1838e45bce825fd15b961086ce0b1ec3df05eac1c621', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', '', 38, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('d12ee580baf903ec75dceccabd7896b3ec414a6b8020e22161c4e05e43ebf64f', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', '', 10, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('d1441ca4133f8c5b01b5a3605c788978af7bc290b164e7eaff728110ab434a14', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '9896793f9fd2d845ae31d1063627973a9cbdf227', '', 47, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('d171d0d8c19900982a37816896e236b8e0384935ca1da16008f9b74e5ae650e8', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', '', 16, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('d3a2df3c79a876c9a4c42b03185d00ab6976677194f2a10a7a2fa07a194f496e', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', '', 15, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('d682e88c96faa155b7e866788cf8d72530bb9edb2d48b67afed8b5fca0c17de3', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', '', 31, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('d7fd76a574ec1bbaa0e1968ac9b03390a20183c66433df792d96d0d7157292ee', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', '', 22, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('d9b8da46dc7584a8993b936fd05183cd84ba7530d12ee928065e2847c5ac8f80', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '40a453692854c89e2fee3c12db585cb8cec3d678', '', 20, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('dd277d75ec1bdd07381c42f3e76d78f6077c796b4719c7000eacf5edeb5d1046', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', '', 46, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('e05b5fe0318248b6eb77720ddec84e6604e4ae2f36365fc152a40d7ed39f482a', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', 'f99d619783dc82885747681e1a0dd2a3bac37330', '', 49, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('e9d0728a19bd5713933924693bb51ab85c89b920f2fb5f34cc96a5754d6eed77', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '', 22, '', '2016-03-07 01:12:02', '0000-00-00 00:00:00', '', '', 0),
('ea4104490ceff98dd416add9b44df81cef4a9e1193124d10ec6f28fe0630f956', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', '', 28, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('eac1142f50ff5f49b3123a52ac319fcbca35e1359e335c796dedd0ace3c600d1', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', '', 17, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('eb30fd1429f4c2ccd803963f04a619f9cc516e60c8dcfd20459f0cb30353c058', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', '', 39, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('eee1b4c274eb6f170aa835941c337a574ab01035cb2a64fac2614ca4d645b3a3', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', '', 10, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('f041e295e1d1ed62fc4631098c2cc059b812b600f85af28d25c5020341c41c45', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', '', 6, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('f0e3281e4a860bc5f0576f6bae6bc10944c9ab18be2855735d7f4849edc4f06e', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '2757dd1926c8205bf8263c79da9b0e437b05486f', '', 30, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('f186dab93a6493d1871aaf4b9bf962efccdcf9c2be9057a9d17097f721cf0d10', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', '', 39, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('f46e8a29aee0f4c062e0e123aee7e49dde7e688b13b4511dbfbb2aecd2fd94da', '6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', '', 47, '', '2016-03-07 01:12:03', '0000-00-00 00:00:00', '', '', 0),
('f6f117d2a66e22bdd1f70209d60e63e864454b38eb403fea162bbf9e3076d186', '880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', '', 26, '', '2016-01-17 22:39:45', '0000-00-00 00:00:00', '', '', 0),
('fffe661c1946e9cb05732c12254275e6e83f7d0c51f52d4ea786f24e361b9c68', '5853e32e641ff1808f40a6d411c793e817f56813a1943f85be4324e363d05bc0', '44f9be931c9c4aa41c642e426d9e313be5efab0a', '', 1, '', '2016-03-07 00:16:15', '0000-00-00 00:00:00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kd`
--

CREATE TABLE IF NOT EXISTS `kd` (
  `id` int(11) NOT NULL,
  `kode_kd` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subkelas` int(11) NOT NULL,
  `tingkat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bidang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `subkelas`, `tingkat`, `bidang`, `nickname`) VALUES
(1, '12', 1, 'SMA', 'IPA', '12 IPA 1'),
(2, '12', 2, 'SMA', 'IPA', '12 IPA 2'),
(3, '12', 3, 'SMA', 'IPA', '12 IPA 3'),
(4, '12', 4, 'SMA', 'IPA', '12 IPA 4'),
(5, '12', 5, 'SMA', 'IPA', '12 IPA 5'),
(6, '12', 6, 'SMA', 'IPA', '12 IPA 6'),
(7, '12', 7, 'SMA', 'IPA', '12 IPA 7'),
(8, '12', 8, 'SMA', 'IPA', '12 IPA 8'),
(9, '12', 9, 'SMA', 'IPA', '12 IPA 9'),
(10, '12', 10, 'SMA', 'IPA', '12 IPA 10'),
(11, '12', 11, 'SMA', 'IPA', '12 IPA 11'),
(12, '12', 12, 'SMA', 'IPA', '12 IPA 12'),
(13, '12', 1, 'SMA', 'IPS', '12 IPS 1'),
(14, '12', 2, 'SMA', 'IPS', '12 IPS 2'),
(15, '12', 13, 'SMA', 'IPA', '12 AKSEL'),
(999999, '1', 1, 'SMA', 'IPA', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `kloter`
--

CREATE TABLE IF NOT EXISTS `kloter` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `waktu_dibuka` time DEFAULT NULL,
  `waktu_ditutup` time DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kloter`
--

INSERT INTO `kloter` (`id`, `nama`, `waktu_dibuka`, `waktu_ditutup`) VALUES
(1, 'Kloter 1', '07:30:00', '09:30:00'),
(2, 'Kloter 2', '10:30:00', '12:30:00'),
(3, 'Kloter 3', '14:00:00', '16:00:00'),
(9999, 'Kloter Admin', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE IF NOT EXISTS `mapel` (
  `id` int(11) NOT NULL,
  `mapel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bidang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tingkat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `waktu_menit` int(11) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `mapel`, `bidang`, `tingkat`, `waktu_menit`, `code`) VALUES
(1, 'Bahasa Indonesia', '', 'SMP', 120, 1),
(2, 'Matematika', '', 'SMP', 120, 2),
(3, 'Bahasa Inggris', '', 'SMP', 120, 3),
(4, 'IPA', '', 'SMP', 120, 4),
(5, 'Matematika', 'IPA', 'SMA', 120, 5),
(6, 'Bahasa Indonesia', 'IPA', 'SMA', 120, 6),
(7, 'Bahasa Inggris', 'IPA', 'SMA', 120, 7),
(8, 'Fisika', 'IPA', 'SMA', 120, 8),
(9, 'Biologi', 'IPA', 'SMA', 120, 9),
(10, 'Kimia', 'IPA', 'SMA', 120, 10),
(11, 'Bahasa Indonesia', 'IPS', 'SMA', 120, 6),
(12, 'Bahasa Inggris', 'IPS', 'SMA', 0, 7),
(13, 'Matematika', 'IPS', 'SMA', 120, 13),
(14, 'Ekonomi', 'IPS', 'SMA', 120, 14),
(15, 'Geografi', 'IPS', 'SMA', 120, 15),
(16, 'Sosiologi', 'IPS', 'SMA', 120, 16),
(17, 'Bahasa Indonesia', 'Bahasa', 'SMA', 0, 17),
(18, 'Bahasa Inggris', 'Bahasa', 'SMA', 0, 18),
(19, 'Matematika', 'Bahasa', 'SMA', 0, 19),
(20, 'Sastra Indonesia', 'Bahasa', 'SMA', 0, 20),
(21, 'Antropologi', 'Bahasa', 'SMA', 0, 21),
(22, 'Bahasa Mandarin', 'Bahasa', 'SMA', 0, 22),
(23, 'Bahasa Jepang', 'Bahasa', 'SMA', 0, 23),
(24, 'Bahasa Jerman', 'Bahasa', 'SMA', 0, 24),
(25, 'Bahasa Arab', 'Bahasa', 'SMA', 0, 25),
(26, 'Bahasa Perancis', 'Bahasa', 'SMA', 0, 26),
(27, 'Matematika', '', 'SD', 0, 27),
(28, 'IPA', '', 'SD', 0, 28),
(29, 'Bahasa Indonesia', '', 'SD', 0, 29);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_07_180519_create_sessions_table', 2),
('2016_01_07_231227_create_siswas_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE IF NOT EXISTS `server` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `api_key` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nickname_kelas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nisn` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nis` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bidang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdelete` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=100000000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `id_kelas`, `nickname_kelas`, `username`, `nisn`, `nis`, `bidang`, `created_at`, `updated_at`, `softdelete`, `deleted_at`) VALUES
(1, 'AGATHA ADVENSIA EKSA DEWANTI', 15, '12 AKSEL', '9991443890', '9991443890', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'APRIANA BEKTI PUSPITASARI', 15, '12 AKSEL', '9996315883', '9996315883', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'ARYA PRADANA', 15, '12 AKSEL', '0011970985', '0011970985', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'ASELIA MAYRIZKY ASA WIDODO', 15, '12 AKSEL', '9992547145', '9992547145', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'CANDRA FEBRI NUGRAHA', 15, '12 AKSEL', '0006693119', '0006693119', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'DEVINA AFRADITYA PAVETA', 15, '12 AKSEL', '0006614980', '0006614980', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'DIAN ALDIRA INDRAJATI', 15, '12 AKSEL', '9993957641', '9993957641', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'FARID ANGKASA MUKTI', 15, '12 AKSEL', '0001966211', '0001966211', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'GABRIEL NATHANIELA CHANDRA PUTRI HARTONO', 15, '12 AKSEL', '0005944526', '0005944526', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'JAKFAR SIDDIQ', 15, '12 AKSEL', '9999543289', '9999543289', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'M. LUTHFI FAHRUL FAHMI', 15, '12 AKSEL', '9994835723', '9994835723', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'MECCA MUNCAR WIDYARIFA', 15, '12 AKSEL', '9990728946', '9990728946', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'MUHAMMAD LUTHFI UTOMO', 15, '12 AKSEL', '0013882428', '0013882428', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 'NADA NISRINA SALSABILA', 15, '12 AKSEL', '9996519656', '9996519656', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 'NATASYA WUSLY SOEWIDONO', 15, '12 AKSEL', '9997854153', '9997854153', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 'RANIA TASYA IFADHA', 15, '12 AKSEL', '0019001546', '0019001546', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 'RATU ELZA MEIRIZKA', 15, '12 AKSEL', '9980933688', '9980933688', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 'SALSABILA ZUHRA CITRA NURITA', 15, '12 AKSEL', '0004992524', '0004992524', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 'SALWA AZ-ZAHRA', 15, '12 AKSEL', '0007147794', '0007147794', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(20, 'VANIA FRIMASGITA GIRALDI', 15, '12 AKSEL', '0008526226', '0008526226', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(21, 'ABDUL ROZZAQ ARIWAHYONO', 13, '12 IPS 1', '9980241781', '9980241781', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(22, 'ALFONSUS BAYU SETYAWAN', 13, '12 IPS 1', '9987496433', '9987496433', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(23, 'ANDHIKA RIZKY RAHMADIANSYAH', 13, '12 IPS 1', '9999345572', '9999345572', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(24, 'AURELLIA ARI HERDWIANTI', 13, '12 IPS 1', '0136590217', '0136590217', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(25, 'CYROSE NARAWANGSA RIDWAN SAPUTRI', 13, '12 IPS 1', '9980241848', '9980241848', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(26, 'DANKE DENHAS KISBANDONO', 13, '12 IPS 1', '9986830545', '9986830545', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(27, 'DINDA KUSUMA MELATI', 13, '12 IPS 1', '9991092937', '9991092937', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(28, 'GERALD WAISAKA GINUBAHYANG SP', 13, '12 IPS 1', '9997118676', '9997118676', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(29, 'ILHAM NASRI FU''ADY', 13, '12 IPS 1', '0131503571', '0131503571', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(30, 'KARINDRA DUHITA ANINDYAGUNA', 13, '12 IPS 1', '9986830594', '9986830594', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(31, 'MICHAEL ARDITO VIRGIAWAN', 13, '12 IPS 1', '0136098327', '0136098327', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(32, 'MURTI SADITYAFITRI', 13, '12 IPS 1', '9994218698', '9994218698', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(33, 'NAUFAL FALAHWAN', 13, '12 IPS 1', '0132757489', '0132757489', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(34, 'NIMAS SINTHA NAURISMA', 13, '12 IPS 1', '9981309158', '9981309158', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(35, 'NOVA ADINTYA *', 13, '12 IPS 1', '9974431034', '9974431034', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(36, 'RIFKA SAFIRA', 13, '12 IPS 1', '9986830617', '9986830617', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(37, 'RIZKY ANDRIAN RAMADHAN PULUNGAN', 13, '12 IPS 1', '9970402598', '9970402598', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(38, 'SHADIA WIDYADARI KANSHA', 13, '12 IPS 1', '9981064583', '9981064583', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(39, 'WIRDA NUROTUL FITRIYAH NOOR', 13, '12 IPS 1', '9995452971', '9995452971', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(40, 'YOHANA KRISTINA DAMAR SARASWATI', 13, '12 IPS 1', '9981144525', '9981144525', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(41, 'ABDUL RAHMAN ROSYID', 14, '12 IPS 2', '9981136489', '9981136489', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(42, 'ADAM SALSA NOVARIN', 14, '12 IPS 2', '9980933140', '9980933140', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(43, 'ANDRE RIFKY PRATAMA', 14, '12 IPS 2', '0139648608', '0139648608', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(44, 'ANNISA MAULIA PRIYO', 14, '12 IPS 2', '9987497213', '9987497213', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(45, 'BERLI SATWIKA MUKTI', 14, '12 IPS 2', '9980934989', '9980934989', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(46, 'DARY AMMAR IAN FIRMANSYAH', 14, '12 IPS 2', '9977339106', '9977339106', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(47, 'DEWI SETYANINGRUM', 14, '12 IPS 2', '0134299402', '0134299402', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(48, 'FARADINA ISABELLE SOEDIONO', 14, '12 IPS 2', '9988330919', '9988330919', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(49, 'GO, FANNY SOEGIARTO', 14, '12 IPS 2', '9988330955', '9988330955', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(50, 'HANINDYA NURINASARI', 14, '12 IPS 2', '9980241857', '9980241857', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(51, 'IRENE KAREN NICOLE CLAUDIA MANDANG', 14, '12 IPS 2', '9981144561', '9981144561', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(52, 'MARIA TAHRIN', 14, '12 IPS 2', '0131069298', '0131069298', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(53, 'MECIDA HOMER', 14, '12 IPS 2', '0135292766', '0135292766', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(54, 'MUHAMAD ICHSAN TEUKU BANGSAWAN', 14, '12 IPS 2', '9980241762', '9980241762', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(55, 'NABILA PRAMESTI SHONIGIYA', 14, '12 IPS 2', '9980348178', '9980348178', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(56, 'NESSYA DEA ZINDRA', 14, '12 IPS 2', '9995149335', '9995149335', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(57, 'RAISYA NURUL JANNAH', 14, '12 IPS 2', '9983130752', '9983130752', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(58, 'RIANA ANGGUN RIANTI', 14, '12 IPS 2', '9980933646', '9980933646', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(59, 'ROSE M TABUNI', 14, '12 IPS 2', '0139203609', '0139203609', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(60, 'SHAFIRA AYODYA PITHALOKA', 14, '12 IPS 2', '9982868683', '9982868683', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(61, 'TALITHA NUR AINI', 14, '12 IPS 2', '9970952368', '9970952368', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(62, 'VIA FIDE ADITYA ANDI RISMAN', 14, '12 IPS 2', '9987496266', '9987496266', '', 'IPS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(63, 'ALOISIUS GENZA PRATAMA RIYANTO', 1, '12 IPA 1', '0139032266', '0139032266', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(64, 'AZIZA PUTERI RAMADHANI', 1, '12 IPA 1', '9980935210', '9980935210', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(65, 'BELLINDA APRILLIA MIRNACANTIKA', 1, '12 IPA 1', '9987211679', '9987211679', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(66, 'BENEDIKTA GRACE BEATA PUTRI CHRISDITHA', 1, '12 IPA 1', '9984271508', '9984271508', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(67, 'BRAMANDIKA HOLY BAGAS PANGESTU', 1, '12 IPA 1', '9980729319', '9980729319', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(68, 'CONTARDO ALFABIAN KEVASOKA', 1, '12 IPA 1', '9984715107', '9984715107', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(69, 'DWINTA NURDIASFI TALENTA PUTRI', 1, '12 IPA 1', '9980934579', '9980934579', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(70, 'ELISABET DHEA AYU NURANGGRAENI', 1, '12 IPA 1', '9986854109', '9986854109', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(71, 'FAHMI HIDAYATULLAH', 1, '12 IPA 1', '9981076390', '9981076390', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(72, 'FIRDAUSA HAIRUNNISA', 1, '12 IPA 1', '9981153688', '9981153688', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(73, 'GAN, INDAH KURNIAWIJAYA *', 1, '12 IPA 1', '9983131035', '9983131035', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(74, 'JESSICA VIDELYA NOVECIA RAMBA', 1, '12 IPA 1', '9986854131', '9986854131', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(75, 'JOHAN CAHYADIRGA', 1, '12 IPA 1', '9983169218', '9983169218', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(76, 'KARINA ANINDITA TRI RAHMA', 1, '12 IPA 1', '9980241760', '9980241760', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(77, 'KLOTILDA RENA RAGE', 1, '12 IPA 1', '9000117826', '9000117826', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(78, 'MAULANA IMAM SEPTYO PUTRO', 1, '12 IPA 1', '9996338380', '9996338380', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(79, 'MONICA RIZKA FORMA NASTITI', 1, '12 IPA 1', '9980882262', '9980882262', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(80, 'MUHAMMAD IQBAL FAUZI', 1, '12 IPA 1', '9977257693', '9977257693', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(81, 'NURQAMA ARGIANITA SALWA', 1, '12 IPA 1', '9986830570', '9986830570', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(82, 'PULKERIA CHANDRIKA FLORENTIARUM', 1, '12 IPA 1', '9984271610', '9984271610', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(83, 'RACHELLITA ELIZANIA KRISTANTO', 1, '12 IPA 1', '9981144430', '9981144430', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(84, 'SAFIRA RIZQI AZZAHRA', 1, '12 IPA 1', '9981808378', '9981808378', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(85, 'SANDY ALFYANTO PUTRA', 1, '12 IPA 1', '9980934656', '9980934656', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(86, 'SATRIA YUDHA ADHITAMA', 1, '12 IPA 1', '9983131675', '9983131675', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(87, 'SAVIRA SASQIA KARAMINA', 1, '12 IPA 1', '9980935228', '9980935228', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(88, 'TARCISIUS JASSIEN WIDIHARDIMAS', 1, '12 IPA 1', '9987496342', '9987496342', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(89, 'WAKHIDATUL ROHMAWATI', 1, '12 IPA 1', '9971649956', '9971649956', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(90, 'WILLA PUTRI MALINDA BUCHORI', 1, '12 IPA 1', '9987211690', '9987211690', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(91, 'WINDITYA SAFIRA FITRI', 1, '12 IPA 1', '9980241825', '9980241825', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(92, 'YOGA SEMBODO', 1, '12 IPA 1', '9981144400', '9981144400', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(93, 'AINUN CAHYA SAFARUNI', 10, '12 IPA 10', '9987496807', '9987496807', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(94, 'ALFIAN MULYANTO DWIPUTRA', 10, '12 IPA 10', '9981201185', '9981201185', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(95, 'ALLAFTA NUZULA ZAHRA', 10, '12 IPA 10', '9997516916', '9997516916', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(96, 'ALYA RAFIKA CHAIRANI', 10, '12 IPA 10', '9992564614', '9992564614', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(97, 'AMILUHUR MAULANA ARIGHI', 10, '12 IPA 10', '9981201183', '9981201183', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(98, 'ANGGARJITO REKA FANNIO', 10, '12 IPA 10', '9997094044', '9997094044', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(99, 'ANGGITA MUNTAZ FATHAYA', 10, '12 IPA 10', '9980933503', '9980933503', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(100, 'ANINDYA DHIRACITTA', 10, '12 IPA 10', '9977637750', '9977637750', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(101, 'AWLYA RAHMANEA', 10, '12 IPA 10', '9981153140', '9981153140', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(102, 'DEVINA DYAH PERMATASARI', 10, '12 IPA 10', '9988514582', '9988514582', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(103, 'DHEA ASYIFA SALMA', 10, '12 IPA 10', '9987497050', '9987497050', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(104, 'DHEGA WASI WIHIKAN', 10, '12 IPA 10', '9986056447', '9986056447', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(105, 'DIANA SETYORINI', 10, '12 IPA 10', '9987496124', '9987496124', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(106, 'DWINDA HAYENDA', 10, '12 IPA 10', '9983130650', '9983130650', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(107, 'FACHRUL DEANCA', 10, '12 IPA 10', '9987211715', '9987211715', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(108, 'FARAH HANA KUSUMAPUTRI', 10, '12 IPA 10', '9987211693', '9987211693', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(109, 'HANAN FATIKA ADZKIA', 10, '12 IPA 10', '9987476815', '9987476815', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(110, 'HANIIFA YUSIANI MUMTAZ', 10, '12 IPA 10', '0133709716', '0133709716', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(111, 'HAPSORO BAGUS WICAKSONO', 10, '12 IPA 10', '9981144424', '9981144424', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(112, 'ILYAS RADHIAN', 10, '12 IPA 10', '9987477120', '9987477120', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(113, 'KINANTHI SEKAR NARESWARI', 10, '12 IPA 10', '9987211747', '9987211747', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(114, 'NANDA TRISNA PRASTIFANI', 10, '12 IPA 10', '9980933777', '9980933777', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(115, 'NAOKO RIZKA YAMARI', 10, '12 IPA 10', '9980241826', '9980241826', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(116, 'NU''MAN ALDIANSYAH', 10, '12 IPA 10', '9973190810', '9973190810', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(117, 'NURIMA AMALINA OKTAWATI', 10, '12 IPA 10', '9986830632', '9986830632', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(118, 'PRASETYO ADI NUGROHO', 10, '12 IPA 10', '9978430016', '9978430016', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(119, 'PUTRI SEKAR ARUM', 10, '12 IPA 10', '9982683213', '9982683213', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(120, 'RANU BARTA FAHRIZAL', 10, '12 IPA 10', '9980933730', '9980933730', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(121, 'RIZA DWITA AULDINA', 10, '12 IPA 10', '9971154915', '9971154915', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(122, 'SHEILLA SHELINA', 10, '12 IPA 10', '9991741432', '9991741432', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(123, 'SITI DIYANI LUDFIYANINGRUM', 10, '12 IPA 10', '9981153714', '9981153714', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(124, 'THIO BERLIAN SOFIAN', 10, '12 IPA 10', '9983692878', '9983692878', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(125, 'VERINA MEGA PUSPITA', 10, '12 IPA 10', '9980640734', '9980640734', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(126, 'ABRARY DAFFA DZULFIKAR', 11, '12 IPA 11', '9982386269', '9982386269', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(127, 'ANGGITA FATHIDHIA IVANA', 11, '12 IPA 11', '9980933618', '9980933618', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(128, 'ANIS AFIFAH', 11, '12 IPA 11', '9997854967', '9997854967', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(129, 'AULIA RAHMA HANUN', 11, '12 IPA 11', '9987213625', '9987213625', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(130, 'BAGAS RAMADHAN', 11, '12 IPA 11', '9986830513', '9986830513', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(131, 'BAGAS RISKY ABDILAH', 11, '12 IPA 11', '9972022190', '9972022190', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(132, 'CHACHA NAILIL MUNA', 11, '12 IPA 11', '9981134502', '9981134502', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(133, 'DAUD DIMAS PRASETYO', 11, '12 IPA 11', '9983130704', '9983130704', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(134, 'DIAH AYU SITI SARAH', 11, '12 IPA 11', '9983130644', '9983130644', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(135, 'DUVADILANT LUTHFANSYAH', 11, '12 IPA 11', '9983692819', '9983692819', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(136, 'ERIKA HUSNA NABILA PUTRI', 11, '12 IPA 11', '9980883465', '9980883465', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(137, 'FARHANA SAMAD', 11, '12 IPA 11', '9977636703', '9977636703', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(138, 'HASNA AGHNIA NABILA', 11, '12 IPA 11', '9980062915', '9980062915', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(139, 'HOYI AURA', 11, '12 IPA 11', '9980934430', '9980934430', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(140, 'JULIO DARMAWAN', 11, '12 IPA 11', '9993171519', '9993171519', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(141, 'KEVIN RADITYA ISWARA ELSAM', 11, '12 IPA 11', '9981247420', '9981247420', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(142, 'KHODIJAH WAFIA', 11, '12 IPA 11', '0136528464', '0136528464', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(143, 'LUCKY NOVALIA', 11, '12 IPA 11', '9987497045', '9987497045', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(144, 'MOCHAMMAD ARDANI', 11, '12 IPA 11', '9981740211', '9981740211', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(145, 'NARESWARI HANINDYASWARA', 11, '12 IPA 11', '9980933642', '9980933642', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(146, 'NISA AFIFA ADIYAR', 11, '12 IPA 11', '9987477147', '9987477147', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(147, 'NUR FAUZIANA HAYUNINGTYAS', 11, '12 IPA 11', '9987494003', '9987494003', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(148, 'NUR ZAKIYYA RUFAIDAH', 11, '12 IPA 11', '9970951312', '9970951312', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(149, 'RANUM WANUDYA YUNAS', 11, '12 IPA 11', '9987211728', '9987211728', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(150, 'RENALDY SAHARDIN', 11, '12 IPA 11', '9987497104', '9987497104', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(151, 'RIZKY NOOR FAJRINA', 11, '12 IPA 11', '9993171095', '9993171095', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(152, 'TALITHA HELGA SAFIRA', 11, '12 IPA 11', '9973063255', '9973063255', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(153, 'TEDY PUTRA SETIAWAN', 11, '12 IPA 11', '9970952862', '9970952862', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(154, 'WIDHIA ARUM WIBAWANA', 11, '12 IPA 11', '9980933696', '9980933696', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(155, 'WILDAN AUFA HANIF BAGASSURYA', 11, '12 IPA 11', '9987211734', '9987211734', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(156, 'ZAHRA AMANY ALYA WALUYO', 11, '12 IPA 11', '9980933698', '9980933698', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(157, 'ZAIN NADAA NISRIINA', 11, '12 IPA 11', '9986872360', '9986872360', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(158, 'ZELINDA CITRA SASMITA', 11, '12 IPA 11', '9987211681', '9987211681', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(159, 'AFRIDA HAFSHALYA RIANDINI', 12, '12 IPA 12', '9980934722', '9980934722', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(160, 'AHMAD FARIDZ AZHARI SIREGAR', 12, '12 IPA 12', '9986260908', '9986260908', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(161, 'AISYA HUSNUL KHATIMAH', 12, '12 IPA 12', '9970951113', '9970951113', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(162, 'ALDHILA WANDA ALLISYA', 12, '12 IPA 12', '0134614978', '0134614978', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(163, 'DIAN AYU UTAMI', 12, '12 IPA 12', '9980883405', '9980883405', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(164, 'ENDRAWAN ANDIKA WICAKSANA', 12, '12 IPA 12', '9980935118', '9980935118', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(165, 'FEBRI NUR CAHYANTI', 12, '12 IPA 12', '9980603103', '9980603103', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(166, 'FITRIA PRAHESTI', 12, '12 IPA 12', '9980934737', '9980934737', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(167, 'HAIDAR NAUFAL MAJID', 12, '12 IPA 12', '9980932969', '9980932969', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(168, 'HEMAS SURYANINGRUM', 12, '12 IPA 12', '9980925920', '9980925920', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(169, 'HENGGAR AGUNG WIRAWAN', 12, '12 IPA 12', '9982193317', '9982193317', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(170, 'ISTININGDYAH AYU FAJRIATI', 12, '12 IPA 12', '9987494872', '9987494872', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(171, 'KUKUH WIRA SATYA', 12, '12 IPA 12', '9987497200', '9987497200', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(172, 'LUTHFIA PUSPITA DEWI', 12, '12 IPA 12', '9987496102', '9987496102', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(173, 'MAHENI MIRA AFIKA PUTRI', 12, '12 IPA 12', '9988213795', '9988213795', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(174, 'MEGA HAYU MAWARNI', 12, '12 IPA 12', '9987213137', '9987213137', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(175, 'MOCHAMAD DONY PURNAMA', 12, '12 IPA 12', '9970952205', '9970952205', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(176, 'MUHAMMAD AFIQ UTOMO', 12, '12 IPA 12', '9990746020', '9990746020', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(177, 'MUHAMMAD RICHIE ASSARIY', 12, '12 IPA 12', '9980703418', '9980703418', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(178, 'NABILA PUTRI SARASWATI', 12, '12 IPA 12', '9980503351', '9980503351', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(179, 'NADHIFATUL AVINA MINA RAHMAH', 12, '12 IPA 12', '9977339173', '9977339173', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(180, 'NALIENDA REITSANIE BELLA PERTIWI', 12, '12 IPA 12', '0139665855', '0139665855', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(181, 'NOVITA SASMITA CIPNANING TYAS', 12, '12 IPA 12', '9987213583', '9987213583', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(182, 'NUR AISYAH CIPTANING MUSTIKA SARI', 12, '12 IPA 12', '9980933685', '9980933685', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(183, 'NURINA KHANSA VASTHI', 12, '12 IPA 12', '9980241761', '9980241761', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(184, 'RAHMA RIZKY ALIFIA', 12, '12 IPA 12', '9989398432', '9989398432', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(185, 'RIFKI YOGIANTARA', 12, '12 IPA 12', '9971159504', '9971159504', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(186, 'RIFKY GARY PUTRA MAHENDRA', 12, '12 IPA 12', '9991094140', '9991094140', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(187, 'RIZKI NUR ROSYID', 12, '12 IPA 12', '9977339352', '9977339352', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(188, 'SEKARINI WENING AYU', 12, '12 IPA 12', '9983692141', '9983692141', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(189, 'TITA KUSUMA WARDANI', 12, '12 IPA 12', '9980708919', '9980708919', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(190, 'YUSUF ILHAM FERRY ADRIANTO', 12, '12 IPA 12', '9980241858', '9980241858', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(191, 'A. RAMA PRATAMA BAGASKARA', 2, '12 IPA 2', '0139773072', '0139773072', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(192, 'ACHMAD ILHAM NURGINA', 2, '12 IPA 2', '9982409720', '9982409720', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(193, 'AGHA MARETHA', 2, '12 IPA 2', '9982546903', '9982546903', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(194, 'ANGELA HESTIA KRISTI HANINGRUM', 2, '12 IPA 2', '9984271587', '9984271587', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(195, 'ARISTO KEVIN ARDYANEIRA P', 2, '12 IPA 2', '9980241784', '9980241784', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(196, 'ARUM NAFI''UL HIDAYAT', 2, '12 IPA 2', '9986295634', '9986295634', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(197, 'AULIA RIZKIANA', 2, '12 IPA 2', '0133297314', '0133297314', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(198, 'BERNARDINUS ANSELL MEIDITYAWAN WICAKSONO', 2, '12 IPA 2', '9981137843', '9981137843', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(199, 'DHEA AQILA RAMADHANI', 2, '12 IPA 2', '9982008881', '9982008881', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(200, 'DIKY FERDIYANSAH FAHMI', 2, '12 IPA 2', '9976314452', '9976314452', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(201, 'ELISABETH LALITA ARUNDHATU', 2, '12 IPA 2', '9970951264', '9970951264', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(202, 'FATHUL JANNAH', 2, '12 IPA 2', '9981137375', '9981137375', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(203, 'FERIANDO KURNIAWAN', 2, '12 IPA 2', '9984271529', '9984271529', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(204, 'FRANCISKA AMALIA KURNIANINGSIH', 2, '12 IPA 2', '9955487804', '9955487804', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(205, 'HUSNIA FALIH ULYA', 2, '12 IPA 2', '9977617204', '9977617204', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(206, 'JEONG YUMI CECILIA PALETE', 2, '12 IPA 2', '9986530881', '9986530881', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(207, 'MAHARANI ZAINI', 2, '12 IPA 2', '9980882294', '9980882294', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(208, 'MARIA YOLANDA GUNAWAN SUGIARTO', 2, '12 IPA 2', '9984271604', '9984271604', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(209, 'MUHAMMAD THARIEQ PAHLEVI', 2, '12 IPA 2', '9981153241', '9981153241', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(210, 'MUTIARA ZALSA', 2, '12 IPA 2', '9997094048', '9997094048', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(211, 'NABILA IRDHA CHOIRUNNISA', 2, '12 IPA 2', '9980420466', '9980420466', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(212, 'NUR AZZAHRA PERMATA PUTRI ISMAIL', 2, '12 IPA 2', '9990670955', '9990670955', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(213, 'OCEANA WINDYARTANTI', 2, '12 IPA 2', '9977355978', '9977355978', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(214, 'ORENDO RUSFIAN RAHARJO', 2, '12 IPA 2', '9987477894', '9987477894', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(215, 'RAHMADANI WIDYA ATMANI', 2, '12 IPA 2', '0132162312', '0132162312', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(216, 'REMBA RARAS HAKIM', 2, '12 IPA 2', '9972022188', '9972022188', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(217, 'SEVERINO SETO WIBOWO', 2, '12 IPA 2', '9986854082', '9986854082', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(218, 'TUAH KUDRATZAT', 2, '12 IPA 2', '9982619767', '9982619767', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(219, 'WAHYU KRISTIANTO NUGROHO', 2, '12 IPA 2', '9981137068', '9981137068', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(220, 'YOGA TRIARDHANA', 2, '12 IPA 2', '9987496245', '9987496245', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(221, 'ABI RIJKON MIFTAHUDI', 3, '12 IPA 3', '9981145094', '9981145094', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(222, 'ALFA YEDIJA ANDREWINANTA', 3, '12 IPA 3', '9982407974', '9982407974', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(223, 'ANDREW MAHENDRA HARSOYO', 3, '12 IPA 3', '9980934572', '9980934572', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(224, 'ANNISA AULIYA YOSANTI', 3, '12 IPA 3', '9980761854', '9980761854', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(225, 'ARIF SHAFWAN RASYID', 3, '12 IPA 3', '9981808352', '9981808352', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(226, 'AXEL KURNIA PRADANA', 3, '12 IPA 3', '9987212362', '9987212362', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(227, 'BRIANANDA RAMADYA RAHARJA', 3, '12 IPA 3', '9971322024', '9971322024', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(228, 'DANIEL EDGAR HIRASMA SARAGI', 3, '12 IPA 3', '9984271515', '9984271515', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(229, 'DELLA AMANDA', 3, '12 IPA 3', '9984271517', '9984271517', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(230, 'ERNA RIZKYANA', 3, '12 IPA 3', '9986133327', '9986133327', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(231, 'EVANY GRACE REFILEONI SINAGA', 3, '12 IPA 3', '9986854098', '9986854098', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(232, 'FARAH FADZILAH AZIIS', 3, '12 IPA 3', '9984950474', '9984950474', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(233, 'FIRDA HIDAYATULLAH', 3, '12 IPA 3', '9981808312', '9981808312', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(234, 'FORSARIA PRASTIKA', 3, '12 IPA 3', '9984715086', '9984715086', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(235, 'GHAISANI INSAN KAMILA', 3, '12 IPA 3', '9981152870', '9981152870', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(236, 'HADITYA KUKUH PURWANTO', 3, '12 IPA 3', '9983063759', '9983063759', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(237, 'JESSY ROSINTA', 3, '12 IPA 3', '9988330912', '9988330912', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(238, 'MAULANA RESHA VIVADI', 3, '12 IPA 3', '9977637755', '9977637755', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(239, 'MUVIDA SAVITRI LISTYASTUTI', 3, '12 IPA 3', '9981740181', '9981740181', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(240, 'NENSYA YUHANITHA', 3, '12 IPA 3', '9971322164', '9971322164', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(241, 'NICHOLAS IVAN ARMANDA SOERJO', 3, '12 IPA 3', '9984271565', '9984271565', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(242, 'OEI, EVAN REINALDO WIRATMA', 3, '12 IPA 3', '9980602498', '9980602498', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(243, 'ONG, KUSUMAWATI PURNOMO', 3, '12 IPA 3', '9983131809', '9983131809', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(244, 'RADEN RARA RETNA AYU SAVITRI INDRASWARI', 3, '12 IPA 3', '0136509892', '0136509892', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(245, 'REKHA SYAFIRA YUNI ASTIZA', 3, '12 IPA 3', '0131460006', '0131460006', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(246, 'SOLA GRATIA PINANDITA ADI', 3, '12 IPA 3', '9981137741', '9981137741', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(247, 'TAMARA ANGGAYASTI', 3, '12 IPA 3', '9981144420', '9981144420', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(248, 'TAQIYAHHNI SALSABILA NURFARIDA', 3, '12 IPA 3', '9986296008', '9986296008', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(249, 'ULFA AMALIA NUR FATIMAH', 3, '12 IPA 3', '9977679667', '9977679667', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(250, 'YOLANDA MARTHIA SWANDAYANI', 3, '12 IPA 3', '9983131846', '9983131846', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(251, 'AGRA BISATYA SAKTI', 4, '12 IPA 4', '9971171646', '9971171646', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(252, 'AISHA KUMALA DEWI IRAWAN', 4, '12 IPA 4', '9997094140', '9997094140', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(253, 'ANDINY AGUSTININGTYAS', 4, '12 IPA 4', '9987539525', '9987539525', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(254, 'ANNISA FIRDAUS', 4, '12 IPA 4', '9987199717', '9987199717', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(255, 'ANNISA HANANINGTYAS', 4, '12 IPA 4', '9986295650', '9986295650', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(256, 'BENAYA LEONARD MUDENG', 4, '12 IPA 4', '9983130949', '9983130949', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(257, 'BRENANTO TSAQOFA WIDODO', 4, '12 IPA 4', '9997094030', '9997094030', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(258, 'CHAIRUL NAUFAL RIZDIAWARDANA', 4, '12 IPA 4', '9981740203', '9981740203', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(259, 'CHIKA ALDILA CAHYANI', 4, '12 IPA 4', '9980934851', '9980934851', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(260, 'DAVIN DJUSTIN', 4, '12 IPA 4', '9989649258', '9989649258', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(261, 'DIMAS YUZRIL MULYA', 4, '12 IPA 4', '9983130647', '9983130647', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(262, 'DIVA KHANSA GUSANTI', 4, '12 IPA 4', '9980883435', '9980883435', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(263, 'FAIQ MADANI', 4, '12 IPA 4', '9971153003', '9971153003', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(264, 'GABRIELLE SATYA MAHARDIKA', 4, '12 IPA 4', '9987496162', '9987496162', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(265, 'HANA KRISTIN KUSUMANINGTYAS', 4, '12 IPA 4', '9983131830', '9983131830', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(266, 'ILHAM NUR FIRDAUS', 4, '12 IPA 4', '9980935068', '9980935068', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(267, 'JENNA ROSE M TAIME', 4, '12 IPA 4', '0134894442', '0134894442', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(268, 'JULIO ABRAHAM MADJAN', 4, '12 IPA 4', '9982368671', '9982368671', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(269, 'KIRANA SMARTYA ALFIDYANI', 4, '12 IPA 4', '9983130659', '9983130659', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(270, 'MARANATHA FLORENSIA WIJAYA', 4, '12 IPA 4', '9981137733', '9981137733', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(271, 'MARTHA SANTI BURDAM', 4, '12 IPA 4', '0136882660', '0136882660', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(272, 'MIEFTA KHOIRINA', 4, '12 IPA 4', '9987535123', '9987535123', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(273, 'NADHIA LESMANA', 4, '12 IPA 4', '9990093793', '9990093793', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(274, 'NADIA NUR AMALINA', 4, '12 IPA 4', '9980241773', '9980241773', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(275, 'NAWANG INDAH CAHYANINGRUM', 4, '12 IPA 4', '9980441783', '9980441783', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(276, 'NINDYA ADHISTY PUTRI HARINA', 4, '12 IPA 4', '9981134650', '9981134650', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(277, 'PRIMADITYA', 4, '12 IPA 4', '9987496449', '9987496449', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(278, 'RACHEL NOVELIA PUTRI', 4, '12 IPA 4', '9973839823', '9973839823', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(279, 'RIZQINA SHOFIA NABILLA', 4, '12 IPA 4', '9981136355', '9981136355', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(280, 'VINCENT MARCELLO DWI TANUJAYA', 4, '12 IPA 4', '9983063869', '9983063869', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(281, 'ADITYO PRADIPTO', 5, '12 IPA 5', '9982386268', '9982386268', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(282, 'ALYA AMIR', 5, '12 IPA 5', '9987236580', '9987236580', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(283, 'ANIS RAHMA AYUNINGTYAS', 5, '12 IPA 5', '9970951291', '9970951291', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(284, 'ANNISA NURINDRA RAHMADANI', 5, '12 IPA 5', '9987535516', '9987535516', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(285, 'ARIELLA NUR NA''IMA', 5, '12 IPA 5', '9986056426', '9986056426', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(286, 'ASTARI FIRDIINA RAHMAYANTI', 5, '12 IPA 5', '9986830624', '9986830624', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(287, 'CENANDA RA''IFAN ARIDO', 5, '12 IPA 5', '9981153142', '9981153142', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(288, 'DRESTANTA ANINDITA PINASTHIKA', 5, '12 IPA 5', '9987496112', '9987496112', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(289, 'DWI PUJIASTUTI *', 5, '12 IPA 5', '0134639002', '0134639002', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(290, 'FATIMAH ARIFATUN NISA *', 5, '12 IPA 5', '9961193279', '9961193279', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(291, 'GABRIELA BINDI DESI EVA', 5, '12 IPA 5', '9980431717', '9980431717', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(292, 'GINVA AMALIA', 5, '12 IPA 5', '9984634069', '9984634069', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(293, 'GITA KARTIKA PERTIWI', 5, '12 IPA 5', '9977637535', '9977637535', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(294, 'IAN KANTONA TAREQILA', 5, '12 IPA 5', '9980640719', '9980640719', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(295, 'LISTIYANA WAHYUNINGTYAS', 5, '12 IPA 5', '9987213151', '9987213151', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(296, 'MOHAMMAD IRSYAD YUSUFA JALUNANDA', 5, '12 IPA 5', '9983692775', '9983692775', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(297, 'MUCHAMMAD GURUH ARFYANTO', 5, '12 IPA 5', '9986830544', '9986830544', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(298, 'NABILA FIRNINDYA SEKAR AYU', 5, '12 IPA 5', '9983130663', '9983130663', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(299, 'RAKINTAN WAHYURINI', 5, '12 IPA 5', '9980933687', '9980933687', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(300, 'RAMADHIKA ALFANDRA ZUHRIZA', 5, '12 IPA 5', '9996519380', '9996519380', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(301, 'REIHANA FARA', 5, '12 IPA 5', '9983131150', '9983131150', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(302, 'ROZINUL HAQ', 5, '12 IPA 5', '0138285686', '0138285686', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(303, 'SAFIRA HASNAERDY ASSADIYA', 5, '12 IPA 5', '9986830658', '9986830658', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(304, 'SATRIA ADHI DEWANTARA', 5, '12 IPA 5', '9980934753', '9980934753', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(305, 'SHELVY SHELLAWATY EFFENDI', 5, '12 IPA 5', '9987211666', '9987211666', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(306, 'TRISTANO RINISON PRAMATAOKA', 5, '12 IPA 5', '9986830627', '9986830627', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(307, 'YANNUAR ARIYADI PUTRA', 5, '12 IPA 5', '9986070399', '9986070399', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(308, 'YASMIN ZAHRANI AKBAR', 5, '12 IPA 5', '9991445272', '9991445272', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(309, 'YOGA DWI ARDIANTO', 5, '12 IPA 5', '9971171676', '9971171676', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(310, 'ZAHRA ALIIFA PUTRI SISWANDARI', 5, '12 IPA 5', '9987496119', '9987496119', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(311, 'ADITYA MAHENDRA', 6, '12 IPA 6', '9981201200', '9981201200', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(312, 'AMY FEBRIANI HARTONO', 6, '12 IPA 6', '9984050493', '9984050493', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(313, 'ANNISA FEBIARTY', 6, '12 IPA 6', '9981153723', '9981153723', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(314, 'APRILIA NURQIBTIAH', 6, '12 IPA 6', '9980441777', '9980441777', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(315, 'AWANG RISKY ARDIAN', 6, '12 IPA 6', '9978671712', '9978671712', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(316, 'AYU NOVITASARI', 6, '12 IPA 6', '9983130641', '9983130641', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(317, 'AZKA AINUN NISAA', 6, '12 IPA 6', '9997855114', '9997855114', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(318, 'BAHRIZALSYAH ALBA SURYALAKSANA', 6, '12 IPA 6', '9980881353', '9980881353', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `siswa` (`id`, `nama`, `id_kelas`, `nickname_kelas`, `username`, `nisn`, `nis`, `bidang`, `created_at`, `updated_at`, `softdelete`, `deleted_at`) VALUES
(319, 'BESTYA NORA SAVIRA', 6, '12 IPA 6', '9971158323', '9971158323', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(320, 'CLARADHITA AYU SHAUMA', 6, '12 IPA 6', '9987213550', '9987213550', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(321, 'DESTIATI NABILA', 6, '12 IPA 6', '9980241797', '9980241797', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(322, 'DESTYA KUSUMA WARDHANI', 6, '12 IPA 6', '9974812301', '9974812301', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(323, 'DEVI MUTIARA SARI', 6, '12 IPA 6', '9980934991', '9980934991', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(324, 'DINDA ATIKA SARI', 6, '12 IPA 6', '9981135877', '9981135877', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(325, 'GEDE RAJENDRA PRASADA', 6, '12 IPA 6', '9973972295', '9973972295', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(326, 'GHINA FITRIYA', 6, '12 IPA 6', '9983130599', '9983130599', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(327, 'HERDANI ATIKA HERAWATI *', 6, '12 IPA 6', '9980934458', '9980934458', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(328, 'HUMAIRO SHIDIQ ABDAT', 6, '12 IPA 6', '0131602847', '0131602847', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(329, 'IKA DIAH MAULIDA', 6, '12 IPA 6', '9981138198', '9981138198', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(330, 'IKHWANUSH SHOFA', 6, '12 IPA 6', '9970666198', '9970666198', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(331, 'MICHIKA WIDHEANY RIZKIA', 6, '12 IPA 6', '9991483246', '9991483246', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(332, 'MOCHAMAD DHAFA SIGIT NURMANTO', 6, '12 IPA 6', '9997855148', '9997855148', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(333, 'MOHAMMAD AMMAR RAMADHAN', 6, '12 IPA 6', '9987211665', '9987211665', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(334, 'MUHAMMAD FAKHRI ATHALLAH', 6, '12 IPA 6', '9981139764', '9981139764', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(335, 'MUHAMMAD ZACKY DZULFIKAR', 6, '12 IPA 6', '9976217114', '9976217114', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(336, 'NIDA RIZKY NABILA', 6, '12 IPA 6', '9980503412', '9980503412', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(337, 'NURLITA ASRI ANDRIANI', 6, '12 IPA 6', '9987539509', '9987539509', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(338, 'RADITYA WULANDARI', 6, '12 IPA 6', '9973190866', '9973190866', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(339, 'RONA AYU HANIFAH', 6, '12 IPA 6', '0005858400', '0005858400', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(340, 'SALSABILA ALMATIA PRABANINGRATRI', 6, '12 IPA 6', '9987497120', '9987497120', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(341, 'SYAFIQ FAHRUZAKY', 6, '12 IPA 6', '9985177660', '9985177660', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(342, 'ABIYYAYUMNA RIF''AT CHASNAUROSYIQOH', 7, '12 IPA 7', '9971154236', '9971154236', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(343, 'AKHMAD BAFI IKHZA ULINNUHA', 7, '12 IPA 7', '9986830572', '9986830572', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(344, 'ANGGITTASARI', 7, '12 IPA 7', '9980503331', '9980503331', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(345, 'ANINDITA ANUNG MARSELA', 7, '12 IPA 7', '9981144317', '9981144317', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(346, 'ARYA WAHYU NUGROHO', 7, '12 IPA 7', '9980640752', '9980640752', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(347, 'DWI PUSPITA RINI', 7, '12 IPA 7', '9986110722', '9986110722', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(348, 'FACHRUR ROZY PUTRO MAHENDRA', 7, '12 IPA 7', '9986872353', '9986872353', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(349, 'FANIA LAELY PUSPITASARI *', 7, '12 IPA 7', '9980933666', '9980933666', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(350, 'FIRDA ''AINI NUR RAHMA RATRI', 7, '12 IPA 7', '9985290615', '9985290615', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(351, 'FITRIA RAHMASARI', 7, '12 IPA 7', '9980708896', '9980708896', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(352, 'FORTUNA DEVI PUTRI SINA', 7, '12 IPA 7', '9987212414', '9987212414', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(353, 'GIARETTA ALYA PERTIWI', 7, '12 IPA 7', '9986295651', '9986295651', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(354, 'IMAM AGUNG PRABOWO', 7, '12 IPA 7', '9971649937', '9971649937', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(355, 'INDRA ADHIM KARUNIA AJI', 7, '12 IPA 7', '9981808407', '9981808407', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(356, 'LEONY KRISTYA FADILA', 7, '12 IPA 7', '9980640744', '9980640744', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(357, 'MUHAMMAD DYANU PRADIPTA', 7, '12 IPA 7', '9980933703', '9980933703', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(358, 'MUHAMMAD FAIQ LUTHFAN', 7, '12 IPA 7', '9977339163', '9977339163', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(359, 'MUHAMMAD LUTHFI ADIANTO', 7, '12 IPA 7', '9980241818', '9980241818', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(360, 'NAJLA FIRDA SAFIRA', 7, '12 IPA 7', '9971155102', '9971155102', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(361, 'NICO RENDY KURNIAWAN PUTRA', 7, '12 IPA 7', '9981134134', '9981134134', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(362, 'NINDYA SYLVIANA WIBOWO', 7, '12 IPA 7', '9980933682', '9980933682', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(363, 'NISA ARUM HIDAYATI', 7, '12 IPA 7', '9983130612', '9983130612', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(364, 'NISRINA AYU LABIBAH', 7, '12 IPA 7', '9980568222', '9980568222', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(365, 'NISRINA ZATA DINI', 7, '12 IPA 7', '9993612521', '9993612521', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(366, 'RADITYA PRADANA DARYOSTA', 7, '12 IPA 7', '9986830600', '9986830600', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(367, 'RIZAL RACHMAN', 7, '12 IPA 7', '9983130728', '9983130728', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(368, 'SABILA REGITA ASKHA', 7, '12 IPA 7', '9980933692', '9980933692', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(369, 'SEKAR AYU PRIBADI', 7, '12 IPA 7', '9970951244', '9970951244', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(370, 'SEPSA KUSUMAWARDANI', 7, '12 IPA 7', '9987494981', '9987494981', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(371, 'SONIA RIBUT WAIDI', 7, '12 IPA 7', '9981145125', '9981145125', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(372, 'SYAFIRA KARENINA AYUNINGTYAS', 7, '12 IPA 7', '9986830567', '9986830567', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(373, 'TIARA AYUNINDYA LARASHATI', 7, '12 IPA 7', '9981144347', '9981144347', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(374, 'VIRGANTARA RIZKY DAMARJATI', 7, '12 IPA 7', '9970951247', '9970951247', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(375, 'YUDITH AMELIA DAMAYANTI', 7, '12 IPA 7', '9997855119', '9997855119', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(376, 'ADHIKA ASHARI', 8, '12 IPA 8', '0136384790', '0136384790', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(377, 'ADVENTIANA GANDHI RAHAYU', 8, '12 IPA 8', '9780010169', '9780010169', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(378, 'AINUR RAHMAH', 8, '12 IPA 8', '9988974840', '9988974840', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(379, 'AMANDA CINTYA RANI', 8, '12 IPA 8', '9981569050', '9981569050', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(380, 'ANGGITA DYAH PRABAWANINGRUM', 8, '12 IPA 8', '9991074220', '9991074220', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(381, 'ANISYKUR LILLAH', 8, '12 IPA 8', '9971322093', '9971322093', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(382, 'BERLIAN SHINTA FARADIANSYAH', 8, '12 IPA 8', '9980503422', '9980503422', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(383, 'DIMAS FAJAR TAUFIQ ISMAIL', 8, '12 IPA 8', '9986830550', '9986830550', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(384, 'DIVA WAHYU HARDIYANTO', 8, '12 IPA 8', '9980431709', '9980431709', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(385, 'ELFIRA RAHMADANTI', 8, '12 IPA 8', '9981134570', '9981134570', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(386, 'FARAH FIRYALMIRA', 8, '12 IPA 8', '9997094023', '9997094023', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(387, 'FEBRINA KINTAN SAFITRI', 8, '12 IPA 8', '9980934298', '9980934298', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(388, 'FEBRIZA RADITYA PRADIPTA', 8, '12 IPA 8', '9983130651', '9983130651', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(389, 'FIRDHAUSSIA RAHMAH', 8, '12 IPA 8', '9983130652', '9983130652', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(390, 'GANDES ALDIANA CITRA PANGESTUTI', 8, '12 IPA 8', '9971321913', '9971321913', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(391, 'IFTITAH NURUL LAILY', 8, '12 IPA 8', '9980568230', '9980568230', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(392, 'INDAH REFORSIANA NURJANAH', 8, '12 IPA 8', '9987497261', '9987497261', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(393, 'IRFAN WAHYU FEBRIANTO', 8, '12 IPA 8', '9987236578', '9987236578', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(394, 'JALU SRI NUGRAHA', 8, '12 IPA 8', '9982751090', '9982751090', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(395, 'LINTANG CAHYA SASMITA', 8, '12 IPA 8', '9977636589', '9977636589', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(396, 'MAHARANI RIZKA PRITADESYA', 8, '12 IPA 8', '9980935163', '9980935163', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(397, 'MAULANA FIRDAUS SYAHRIZAL', 8, '12 IPA 8', '9978237371', '9978237371', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(398, 'MEUTIA ARI YUSRILIA', 8, '12 IPA 8', '9982407254', '9982407254', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(399, 'MUHAMMAD RIDHO', 8, '12 IPA 8', '9993171236', '9993171236', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(400, 'MUHAMMAD RIZAL NUGRAHA', 8, '12 IPA 8', '9972022205', '9972022205', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(401, 'NARENDRA HILMY PERMANA', 8, '12 IPA 8', '9987212795', '9987212795', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(402, 'PARAMESWARI ICCHA NIRMALABUDDHI WISHNUPUTRI', 8, '12 IPA 8', '9980935198', '9980935198', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(403, 'PAWITRA MADANIA', 8, '12 IPA 8', '9963294420', '9963294420', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(404, 'RIZA RAHMASARI', 8, '12 IPA 8', '9981740160', '9981740160', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(405, 'SALSABILLA FIKHA SAVITRI', 8, '12 IPA 8', '9980241838', '9980241838', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(406, 'SYAHNA SALSABILA', 8, '12 IPA 8', '9983130624', '9983130624', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(407, 'TECTA AN NAFI'' PATRAGAMA', 8, '12 IPA 8', '0138567043', '0138567043', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(408, 'VANIA ANDIKA PUTRI', 8, '12 IPA 8', '9980933743', '9980933743', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(409, 'ZULFIKAR NUR AULIYA', 8, '12 IPA 8', '9981151172', '9981151172', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(410, 'ACIDALIA BELLA MINERVA', 9, '12 IPA 9', '9980969313', '9980969313', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(411, 'ADI FATHUR RACHMAN', 9, '12 IPA 9', '9983131926', '9983131926', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(412, 'AHMAD HIZAM FAJRI', 9, '12 IPA 9', '9983130633', '9983130633', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(413, 'ANDINI RIMA DESWARI', 9, '12 IPA 9', '9970952867', '9970952867', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(414, 'ANITA ANNASTASYA PUTRI ARYADI', 9, '12 IPA 9', '9977339155', '9977339155', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(415, 'ARDANINGGAR RAFIDAN', 9, '12 IPA 9', '9987477109', '9987477109', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(416, 'ARTERIA DEWI NURHUTAMI', 9, '12 IPA 9', '9983735932', '9983735932', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(417, 'ARYO ANFASA RAIS', 9, '12 IPA 9', '9980934729', '9980934729', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(418, 'ASTARI DWI HARDINI', 9, '12 IPA 9', '9980153609', '9980153609', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(419, 'AULIA HASNA SALMA ZHAFIRAH', 9, '12 IPA 9', '9987211660', '9987211660', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(420, 'CANDRA ADHI WIJAYA', 9, '12 IPA 9', '9987476845', '9987476845', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(421, 'CHANIA RIDA APRILIANI', 9, '12 IPA 9', '9986872327', '9986872327', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(422, 'EVAN BRUNANDITO', 9, '12 IPA 9', '9983130708', '9983130708', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(423, 'FAISAL FARCHAN', 9, '12 IPA 9', '9983131136', '9983131136', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(424, 'FARIS AKBAR SETIAWIBOWO', 9, '12 IPA 9', '9987199693', '9987199693', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(425, 'GHEVIRA NIDA SALSABILA', 9, '12 IPA 9', '9987211683', '9987211683', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(426, 'IRA ROZA MILINDA', 9, '12 IPA 9', '9983130603', '9983130603', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(427, 'LUTFIA ARISKA RAMADHANI', 9, '12 IPA 9', '9981808297', '9981808297', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(428, 'MUHAMMAD MULTAZAM', 9, '12 IPA 9', '137218375', '137218375', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(429, 'NABILA RAHMADIANTI', 9, '12 IPA 9', '9987211704', '9987211704', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(430, 'NARISWARI PRAJNA PARAMITHA', 9, '12 IPA 9', '9984818565', '9984818565', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(431, 'NISRINA UMNIA JATI', 9, '12 IPA 9', '9977339371', '9977339371', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(432, 'QORI EL-HAFIZH', 9, '12 IPA 9', '9980568233', '9980568233', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(433, 'RAMADHANZA MA''RUF HARTANSYAH', 9, '12 IPA 9', '9991169573', '9991169573', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(434, 'RIZKI ANDRI PUTRANTO', 9, '12 IPA 9', '9981144382', '9981144382', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(435, 'ROSITA VIRGIA NANDA', 9, '12 IPA 9', '9984837130', '9984837130', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(436, 'RR TITA DEA SORAYA', 9, '12 IPA 9', '9991093269', '9991093269', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(437, 'SAHASIKA PARAMESTI', 9, '12 IPA 9', '137204478', '137204478', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(438, 'SALMA YUMNA CHARIRI', 9, '12 IPA 9', '9986830631', '9986830631', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(439, 'SASKIA PUTRI DEWANJANIE', 9, '12 IPA 9', '9981123995', '9981123995', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(440, 'SUHA SALSABILA', 9, '12 IPA 9', '9983131228', '9983131228', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(441, 'YENNI NUR OKTAVIYANI', 9, '12 IPA 9', '9970951249', '9970951249', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(442, 'YO ARISTANTO', 9, '12 IPA 9', '9986295681', '9986295681', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(99999999, 'admin', 999999, 'ADMIN', 'admin', 'admin', '', 'IPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
  `id` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kode_kd` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_to` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_soal` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `tipe_soal` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'master',
  `kode_master` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `isi_soal` text COLLATE utf8_unicode_ci,
  `tingkat_kesulitan` int(11) NOT NULL,
  `status_acak` tinyint(1) NOT NULL DEFAULT '1',
  `no_soal` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `id_mapel`, `kode_kd`, `kode_to`, `kode_soal`, `tipe_soal`, `kode_master`, `isi_soal`, `tingkat_kesulitan`, `status_acak`, `no_soal`, `created_at`, `updated_at`) VALUES
(71, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '96a907edadec3a3cc8cf167891d1a7e12a57332a', 'master', '', '<p><strong>Bacalah teks berikut dengan saksama!</strong>​​​​</p><p>Delapan jam/hari atau 40 jam/minggu (lima hari kerja) telah ditetapkan menjadi standar perburuhan internasional oleh ILO melalui Konvensi ILO No. 01 tahun 1919 dan Konvensi No. 47 tahun 1935. Ditetapkannya konvensi tersebut merupakan suatu pengakuan internasional yang secara tidak langsung merupakan buah dari perjuangan kaum buruh untuk mendapatkan pekerjaan yang layak. Penetapan 8 jam kerja perhari sebagai salah satu ketentuan pokok dalam hubungan industrial perburuhan adalah penanda berakhirnya bentuk kerja paksa dan perbudakan yang bersembunyi&nbsp; di balik hubungan industrial.​</p><p>Arti kata konvensi adalah...</p>', 2, 0, '1', '2016-01-17 18:00:08', '2016-03-07 01:01:19'),
(72, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'dea428eac84e3c7da770d77f6b70089de45fc306', 'master', '', '<p><strong>Bacalah teks berikut dengan saksama!</strong></p><p>Delapan jam/hari atau 40 jam/minggu (lima hari kerja) telah ditetapkan menjadi standar perburuhan internasional oleh ILO melalui Konvensi ILO No. 01 tahun 1919 dan Konvensi No. 47 tahun 1935. Ditetapkannya konvensi tersebut merupakan suatu pengakuan internasional yang secara tidak langsung merupakan buah dari perjuangan kaum buruh untuk mendapatkan pekerjaan yang layak. Penetapan 8 jam kerja perhari sebagai salah satu ketentuan pokok dalam hubungan industrial perburuhan adalah penanda berakhirnya bentuk kerja paksa dan perbudakan yang bersembunyi&nbsp; di balik hubungan industrial.​</p><p>Informasi yang terdapat dalam paragraf tersebut adalah....<br></p>', 0, 1, '0', '2016-01-17 18:00:43', '2016-01-17 19:29:00'),
(73, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', 'master', '', '<p><strong>Bacalah puisi berikut dengan saksama untuk menjawab soal berikut!</strong><br></p><p><strong></strong>Rumah yang Bersih<strong></strong><br></p><p>Anakku,<br><em>Rumahmu adalah istanamu<br></em>Rawatlah ia dengan sebaik-baiknya<br>Bersihkan dari <em>debu dan kotoran </em>yang bertebaran di luar rumah<br>yang kadang menempel pada pakaian dan tas kerja,<br>meski kita telah menepisnya<br>Ikuti jejak Ibumu,<br>yang dengan khusyuk, sabar, dan rajin<br>senantiasa merawat rumah dengan aneka bunga<br>dan membesarkan kalian di rumah yang bersih ini<br>Kebersihanmu semoga membawa keselamatan dunia dan akhirat.</p><p>Makna lambang pada kelompok kata <em>debu</em> dan <em>kotoran</em> dalam puisi tersebut adalah....<br></p>', 0, 1, '0', '2016-01-17 18:00:58', '0000-00-00 00:00:00'),
(74, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', 'master', '', '<p><strong>Bacalah puisi berikut dengan saksama untuk menjawab soal berikut!</strong></p><p>Rumah yang Bersih</p><p>Anakku,<br><em>Rumahmu adalah istanamu</em><br>Rawatlah ia dengan sebaik-baiknya<br>Bersihkan dari <em>debu dan kotoran </em>yang bertebaran di luar rumah<br>yang kadang menempel pada pakaian dan tas kerja,<br>meski kita telah menepisnya<br>Ikuti jejak Ibumu,<br>yang dengan khusyuk, sabar, dan rajin<br>senantiasa merawat rumah dengan aneka bunga<br>dan membesarkan kalian di rumah yang bersih ini<br>Kebersihanmu semoga membawa keselamatan dunia dan akhirat.</p><p>Maksud isi larik kedua <em>(Rumahmu adalah istanamu</em>) adalah....</p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(75, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8085282060ea8bf0df9f79b9064e852e1689cbec', 'master', '', '<p>Bacalah teks berikut ini dengan cermat!<br></p><p>Industri ... dunia terus menggeliat dan diyakini oleh sementara kalangan bakal menjadi salah satu pilar industri masa depan yang bakal menjadi sumber penciptaan lapangan kerja, inovasi, dan produktivitas.<br></p><p>Kata yang tepat untuk melengkapi bagian rumpang pada kalimat tersebut adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(76, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'b71f195906134287e116fac72fb35c5cd32517e7', 'master', '', '<p>Bahasa merupakan unsur yang sangat penting dalam kehidupan manusia <em>untuk</em> sebagai alat komunikasi. “Penelitian membuktikan bahwa 75% waktu bangun kita berada dalam kegiatan komunikasi,” demikian disampaikan oleh Jalal. Begitu pentingnya peranan bahasa dalam berkomunikasi<em>, bahwa</em> dapat dikatakan komunikasi tidak akan berlangsung dengan baik tanpa adanya bahasa.</p><p>Perbaikan kata penghubung yang tercetak miring pada paragraf tersebut adalah ....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(77, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c93891db1817783abcb85e0a1253c381f6418e83', 'master', '', '<p><strong>Bacalah teks berikut ini dengan cermat!</strong></p><p><strong></strong>Amat wajar jika masyarakat mendambakan agar polisi memiliki kesaktian luar biasa, tetapi diakui kelemahan yang dinilai <em>manusiawi.</em> (2) Selain tegas dalam menegakkan hukum juga bisa <em>bersinergi</em> dengan masyarakat dlam mencegah kejahatan. (3) Terlebih garis <em>marka</em> antara dan masyarakat dalam mencegah kejahatan sangat tipis. (4) Polisi dan masyarakat adalah dua <em>komunitas</em> yang tidak mungkin dipisahkan karena polisi lahir dari masyarakat. (5) <em>Institusi</em> kepolisian sendiri sangatlah penting artinya bagi sebuah negara sebagai bagian dalam menata masyarakat.<strong></strong><br></p><p>Kalimat yang menggunakan kata tidak tepat pada pargraf tersebut adalah kalimat nomor....</p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(78, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '3ee69778089a193c296c48a1cc6beb02693fa21a', 'master', '', '<p><strong>Bacalah teks berikut dengan cermat!</strong><br></p><p><strong></strong>Selain membangun infrastruktur – seperti akses ke tempat itu&nbsp; - dan sarana semisal transportasi dan penginapan, pemerintah harus lebih serius memikirkan program-program untuk membungkus potensi ini agar lebih menarik. Singapura, misalnya, pulau kecil yang penuh beton itu mampu membuat banyak atraksi wisata – meski sebagian besar <em>artifisial</em> dan terlihat lebih indah di iklan – yang mampu menarik 15 juta wisatawan asing. Hampir dua kali lipat yang datang ke Indonesia.<strong></strong><br></p><p>Makna kata<strong> artifisial </strong>pada paragraf tersebut adalah....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(79, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', 'master', '', '<p>Penulisan singkatan nama&nbsp; gelar yang tepat adalah....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(80, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', 'master', '', '<p>Penulisan judul karangan yang sesuai EYD adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(81, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', 'master', '', '<p>Penulisan huruf kapital untuk nama khas geografi yang benar terdapat dalam kalimat...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(82, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '7291eb9f481efb96b3c300d68e474249c5dfd7df', 'master', '', '<p><strong>Bacalah teks berikut dengan cermat!</strong><br></p><p>Beragam budaya unik dan menarik di Indonesia, seperti wayang kulit, batik angklung, tari saman, tari reog ponorogo, tari pendet, tari kecak, hari demi hari terancam keberadaannya.&nbsp; Gempuran budaya barat yang tak kenal ampun merasuk ke semua sendi kehidupan kita. <em>Sudah sejak dulu bangsa kita dikenak sebagai bangsa yang memiliki peradaban tinggi</em>. Dari trend fashion, tatanan rambut, makanan, bahkan pergaulan juga ikut mereka adopsi dari luar tanpa disaring terlebih dahulu. Fenomena demam Korea yang akhir-akhir ini menjalar cukup menjadi bukti lemahnya kepribadian serta karakter remaja kita.<br></p><p>Perbaikan kalimat yang bercetak miring adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(83, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', 'master', '', '<p><strong>Cermati paragraf berikut!</strong><br></p><p><strong></strong>Kita perlu membangun kembali pola berpikir kita sebagai pengemban tugas berat penerus cita-cita bangsa yang beradab sesuai dengan perilaku kita sebagai orang timur. Langkah awal yang harus dilakukan adalah mencoba menggali potensi yang terdapat pada bangsa kita. Masih banyak potensi yang belum digali yang sangat berpengaruh bagi kita untuk tetap menjaga dan melestarikan eksistensi kultur sosial budaya bangsa Indonesia.&nbsp; Jangan jadikan budaya barat yang masuk melalui era globalisasi sebagai patron pola berpikir karena dari pola berpikir inilah perilaku kita dalam kehidupan sehari-hari terpengaruh oleh budaya barat yang bebas. Kalau tidak cepat dilakukan pembinaan, apa yang akan terjadi pada generasi pada masa yang akan datang?<strong></strong><br></p><p>Ide pokok paragraf tersebut adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(84, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', 'master', '', '<p><em>Kita perlu membangun kembali pola berpikir kita sebagai pengemban tugas berat penerus cita-cita bangsa yang beradab sesuai dengan perilaku kita sebagai orang timur.</em><br></p><p>&nbsp;Inti kalimat tersebut adalah...</p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(85, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '7de2ff2420a77b4800e28f688c6073e3667a82c7', 'master', '', '<p><strong>Cermati kalimat berikut!</strong> <br></p><p>Tidak sulit mendapatkan potasium karena <em>ia</em> terkandung dalam berbagai buah dan sayuran.&nbsp;<br></p><p>Kata ganti <em>ia</em> pada kalimat tersebut merujuk pada...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(86, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', 'master', '', '<p><strong>Cermati paragraf berikut!</strong></p><p><strong></strong>(1) Menata pola makan dan aktivitas fisik merupakan cara untuk menurunkan risiko stroke, termasuk rutin mengonsumsi makanan kaya potasium. (2) Buah dan sayur adalah sumber potasium yang baik. (3) Tidak sulit mendapatkan potasium karena ia terkandung dalam berbagai buah dan sayuran. (4) Hal itu diungkapkan para peneliti yang telah meriset 90.000 wanita dari usia 50 hingga 79 tahun selama 11 tahun. (5) Dengan demikian, mengonsumsi makanan kaya potasium akan membantu mengurangi risiko terkena stroke<strong>.</strong><br></p><p><strong></strong>Simpulan paragraf tersebut adalah...​<strong></strong><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(87, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', 'master', '', '<p><strong>Bacalah&nbsp; paragraf berikut dengan cermat!</strong><strong></strong><br></p><p>“Meniek, mereka adalah orang tuamu. Tanpa mereka kau tak akan pernah ada&nbsp;&nbsp;&nbsp; di dunia, ingat?” katanya.<br>“Mereka membenci, ingat? Bunda menghinamu, ingat? Aku mengingatkannya.<br>Mustofa tertawa. “Mereka sekarang mengasihiku, bukan?<br>“Apakah kau tak punya harga diri? Tak ingat penghinaan ibuku?<br>“Dengan caranya yang terhormat, ibumu telah meminta maaf!”</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<em>Rumah Tanpa Cinta,</em> Titiek W.S.)<strong></strong></p><p>Keterkaitan nilai moral dengan kehidupan sehari-hari....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(88, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'dd5796fd978c530908885b25d1229a914d6eb4e8', 'master', '', '<p><strong>Bacalah&nbsp; paragraf berikut dengan cermat!</strong><strong></strong>​<br></p><p><strong>...</strong></p><p>Kalid bertanya kepada abahnya, apakah mereka itu adalah orang kampungnya. “ Mereka bekerja kepada seorang pengusaha dari kota yang dibeking aparat untuk menebang hutan di sekitar kampung kita. Mereka sudah menghabiskan hutan di daerah hulu, dan sekarang giliran kampung kita dan kampung-kampung lain yang akan dihabiskan kayunya..”</p><p>“Apakah upah mereka mahal.”</p><p>“Harga kayu itu yang mahal, upah untuk mereka yang menebang, menggergaji, dan semua itu sangat kecil. Tidak sedikit dari mereka yang mati ketika menebang kayu.”</p><p>“Tapi mereka mau bekerja?”</p><p>“Kita semua butuh uang...”</p><p>“Ayah tidak bekerja bersama mereka?”</p><p>“Ayah masih bisa mencari pekerjaan lain.”</p><p>“Banyak orang kampung kita yang bekerja seperti itu, kan Bah?”</p><p>“Suatu saat kamu akan tahu, merekalah yang sebenarnya membuat bibit bencana kampung kita.”</p><p>“Kenapa, Abah?”</p><p>“Karena mereka menghancurkan hutan yang menyerap dan menyimpan air saat musim hujan dan mengeluarkan saat musim panas seperti sekarang. Lihatlah, air sungai sudah hampir mengering dan kita kehilangan mata pencarian karena ikan-ikannya sudah habis, tak ada air.”</p><p><strong>...</strong></p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (<em>Nyanyi Sunyi dari Indragiri</em> karya Hary B. Kori’un)</strong></p><p><strong></strong><br></p><p><strong></strong>Pernyataan berikut&nbsp; yang merupakan peristiwa yang menunjukkan adanya hubungan sebab akibat adalah...<strong></strong><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(89, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', 'master', '', '<p><strong>Cermatilah paragraf berikut!</strong></p><p><strong></strong>Makan pagi (sarapan) merupakan cadangan energi awal untuk beraktivitas. Saat tidur pada malam hari, kadar glukosa dalam darah menurun. Dengan sarapan pada pagi harinya, kadar gula dalam darah menjadi normal sehingga seseorang mempunyai kekuatan. …. Hal itu disebabkan perut kita yang lapar langsung diisi makanan dan minuman sehingga menghindarkan kita dari rakus.<strong></strong><br></p><p>Kalimat yang tepat untuk melengkapi paragraf&nbsp; tersebut adalah…<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(90, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', 'master', '', '<p><strong>Cermati paragraf deskripsi berikut</strong>!<br></p><p>Senja hampir habis, burung-burung terbang mencari tempat untuk pulang dan angin semilir berembus tipis. Seorang laki-laki dengan rambut gondrong, cambang, kumis, dan segala rambut yang menutup kepala dan wajahnya. Di punggungnya tergantung tas ransel lusuh, baju, dan celana, serta sepatu yang dipakainya juga lusuh. Angin mengibar-ngibarkan rambut gondrongnya,dan matahari senjayang hampir habisbersinar menerpanya <strong>...</strong><br></p><p><strong></strong>Bagian kalimat deskripsi yang tepat untuk melengkapi paragraf tersebut adalah...​<strong></strong><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(91, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', 'master', '', '<p><strong>Bacalah teks berikut dengan cermat!</strong><strong></strong>​<br></p><p>Tengah malam aku meninggalkan Rimbo Pemtang, meninggalkan segala cinta yang kumiliki di kampung ini. Meninggalkan semuanya. Aku berlari membawa sayatan yang sangat pedih. Aku berjalan kaki beberapa jam dan tiba di Lintas Timur ketika hawa dingin menusuk tulang, dan aku tak tahu harus ke mana. Sebuah bus ke arah utara berhenti dan aku naik. .... Aku pernah beberapa kali ke Pekanbaru, tetapi aku tidak kenal betul dengan Pekanbaru karena aku lebih kenal Kota Jambi, tempat aku kuliah, selain jaraknya yang lebih dekat Jambi ketimbang Pekanbaru.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>(Nyanyian Sunyi dari Indragiri)</em><strong></strong></p><p><em></em><strong>Kalimat yang tepat untuk melengkapi&nbsp; paragraf tersebut adalah..</strong><em></em><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(92, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', 'master', '', '<p><strong>Bacalah penggalan puisi berikut dengan cermat!</strong><strong></strong><br></p><p>Di kolam ini<br>Tak kutemukan apa-apa<br>.....<br>Airnya dingin seperti tubuhnya.<br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>( Kolam</em> karya S. Yoga)<strong></strong><br>​<br></p><p>Larik puisi bermajas yang tepat untuk melengkapi teks puisi tersebut adalah....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(93, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4093f25998255ac853e42438bf3eb5e873a05ebd', 'master', '', '<p><strong>Bacalah teks berikut dengan cermat!</strong></p><p><strong></strong>Tetralogi <em>Laskar Pelangi</em> karya Andrea Hirata merupakan salah satu karya anak bangsa Indonesia yang patut dibanggakan..... Dimulai dari novel pertama yang berjudul Laskar Pelangi, diikuti Sang Pemimpi, Edensor dan terakhir Maryamah Karpov. Bagi para pecinta buku tentunya bukan hal yang sukar untuk melahap sebuah novel apa lagi jika novel tersebut menarik hingga dapat membuat pembaca ingin terus memenuhi rasa ingin tahunya. Namun demikian, tidak semua orang suka membaca, akan sangat sukar menghabiskan walaupun sepotong cerita pendek. Bagi masyarakat yang kurang berminat dalam membaca jangan cemas kerana novel ini sudah digarap dalam bentuk film (untuk setakat ini novel pertama dan kedua).<strong></strong><br></p><p><strong>Kalimat yang tepat untuk melengkapi teks ulasan tersebut adalah....</strong><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(94, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', 'master', '', '<p><strong>Bacalah teks berikut dengan cermat!</strong><strong></strong><br></p><p><strong>Cara Membuat Botol Kaca</strong><br></p><ol><li>Kaca untuk botol dibuat dari pasir, batu gamping, dan abu soda dengan menempuh langkah-langkah sebagai berikut.</li><li>Pertama, ketiga bahan tersebut dicampur secara proporsional.</li><li>....</li><li>Kadang-kadang pecahan kaca ditambahkan.</li><li>Lalu adonan kaca diproduksi.</li><li>Setelah itu, campuran adonan itu di bentuk menjadi botol dengan cetakan.</li><li>...</li></ol><p>Akhirnya botol-botol itu siap untuk digunakan.<strong></strong></p><p>Kalimat yang tepat untuk melengkapi bagian teks yang rumpang adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(95, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c9a581559c9860fccbc02739fe0342cfb52536f7', 'master', '', '<p><strong>Bacalah teks berikut&nbsp; dengan cermat!</strong><strong></strong><strong></strong>​<br></p><p><strong>...</strong></p><p>Pemunculan ide keratif yang terkait erat dengan kemampuan menstransformasikan serangkaian gagasan abstrak, dapat diuban menjadi sebuah realitas melalui wahana ini. “Kopi sastra”, ”Rumah sastra”, “ Dunia Sastra”, dan banyak lagi membentuk kelompok sendiri. Dengan menggunakan fasilitas yang disediakan ..., mereka saling berbagi karya, mengomentari satu sama lain, dan mendiskusikan hal-hal yang berkaitan dengan sastra.<strong></strong></p><p>Istilah yang tepat untuk melengkapi bagian paragraf yang rumpang adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(96, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'a389bc41ce99c9e11aed44f7547e3847071977c8', 'master', '', '<p><strong>Bacalah kutipan novel berikut dengan cermat!</strong><strong></strong><br></p><p>Gadis Mesir itu bernama Maria. Ia juga senang dipanggil Maryam. Dua nama yang menurutnya sama saja. Dia putrid sulung Tuan Boutros Rafael Girgis. Berasal dari keluarga besar Girgis. Sebuah keluarga Kristen Katholik yang sangat taat. Bisa dikatakan, keluarga Maria adalah tetangga kami yang paling akrab. Ya, paling akrab. Flat atau rumah mereka berada tepat di atas flat kami. Indahnya, mereka sangat sopan dan menghormati kami, mahasiswa Indonesia yang sedang belajar di Al-Azhar.</p><p>Maria gadis yang unik. Ia seorang Kristen Katholik atau dalam bahasa asli Mesirnya <em>qibti, </em>namun ia suka baca Al-Quran. Ia bahkan hapal beberapa surat Al-Quran. Di antaranya surat Maryam. Sebuah surat yang membuat dirinya&nbsp; merasa bangga. Aku mengetahui hal itu pada suatu kesempatan berbincang dengannya di metro. Kami tak sengaja berjumpa. Ia pulang kuliah dari <em>Cairo University</em>, sedangkan aku juga pulang kuliah dari <em>Al-Azhar University</em>.</p><p>“Hei, namamu Fahri,iya kan?”<br>“Benar.”<br>“Kau pasti tahu namaku, iya kan?”<br>“Kau benar.”</p><p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Ayat-Ayat Cinta, </em>Habiburahman El Shirazy.<strong></strong></p><p>Kalimat resensi yang tepat untuk menyatakan keunggulan buku sesuai dengan kutipan di atas adalah ….<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(97, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', 'master', '', '<p><strong>Cermati paragraf berikut!</strong><br></p><p><strong>Teks 1:</strong></p><p><em>Kota Banda Aceh luluh lantak. Rumah-rumah di sepanjang garis pantainya lenyap, cuma meninggalkan pondasi dan sisa-sia lantai yang menandai bahwa di situ dulupernah berdiri bangunan. Kapal pembangkit listrik yang beratnya mencapai puluhan ribu ton, berpindah hingga mencapai jarak 4 km-an dari posisi semula di pelabuhan. Berpuluh ribu orang meninggal terseret ombak besar. Jasad mereka terserak di mana-mana. Ratusan ribu anak tib-tiba menjadi anak yatim, piatu, atau bahkan yatim-piatu. Begitulah kedahsayatan tsunami.</em><br></p><p><strong>Teks 2:</strong></p><p><em>Siapa bilang manusia menjadi korban banjir akibat dosa yang dilakukannya kepada alam? Tengok saja korban bencana banjir di daerah hilir. Mereka menjadi korban meski tak melakukan kesalahan pada alam. Mereka ibarat menanggung akibat dari “dosa” yang dilakukan manusia lain di daerah hulu.Manusia di daerah hululah yang membabat hutan hingga hutan&nbsp; tidak bisa lagi menjadi penyimpan air hujan.</em><strong></strong></p><p><em>​</em><br></p><p><em></em>Persamaan kedua teks di atas adalah kedua teks tersebut&nbsp; ....<em></em><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(98, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', 'master', '', '<p><strong>Bacalah kutipan cerpen berikut!</strong><br></p><p><strong></strong><br></p><p>“Kamu khawatir aku akan mati karena kehilangan cincin itu? Nimah mengangguk pelan. Nyonya majikan tersenyum. “Itu hanya tahayul, Mah. Yang menentukan kematian manusia bukan benda-benda, tapi Tuhan. Jika takdir telah menentukan kematian kita, siapa yang bisa mengelaknya. Dan lagi aku memang sudah tua. Jika tiba-tiba kematian menjemputku itu sudah sewajarnya. Jadi, kamu tidak perlu khawatir, Mah. Takdir manusia itu sudah ditentukan yang di atas, kamu mengerti kan?” jelas nyonya majikan penuh kearifan.</p><p>(<em>Cincin Emas</em>, Eko Hartono)<strong></strong></p><p><br></p><p>Keterkaitan nilai budaya pada kutipan tersebut dengan kehidupan sehari-hari adalah ....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(99, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', 'master', '', '<p><strong>Cermati urutan kalimat berikut!</strong><strong></strong><br></p><table cellspacing="0" cellpadding="0" align="left" class=" cke_show_border"><tbody><tr><td><ol><li>Oleh sebab itu, sebagai pondasi, Kemdiknas sendiri memfokuskan pendidikan di seluruh jenjang pendidikan yang dibinannya.</li><li>Dalam prosesnya sendiri fitrah yang alamiah ini sangat dipengaruhi oleh keadaan lingkungan sehingga lingkungan memilki peranan yang cukup besar dalam membentuk jati diri dan prilaku</li><li>Pendidikan karakter kini memang menjadi isu utama di lingkungan pendidikan.</li><li>Di disetiap jenjang pendidikan itu, pembentukan karakter itu dimulai dari fitrah yang diberikan Tuhan, yang kemudian membentuk jati diri dan prilaku</li><li>Selain itu, pendidikan berkarakter menjadi bagian dari proses pembentukan akhlak anak bangsa, juga diharapkan mampu menjadi pondasi dalam meningkatkan derajat dan martabat bangsa Indonesia.<br>​<br></li></ol></td></tr></tbody></table><ol><li><strong></strong></li></ol><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Urutan kalimat yang tepat untuk dijadikan paragraf yang padu adalah ....&nbsp;</p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(100, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', 'master', '', '<p><strong>Cermatilah paragraf berikut!</strong><br></p><p><strong></strong>Ibu guru selalu <strong>bilang,</strong> semua siswa tidak boleh <strong>mensontek</strong> pekerjaan teman. Jika ketahuan ibu guru akan memberikan <strong>sangsi</strong> kepada siswa tersebut.<strong></strong><br></p><p>Perbaikan kata tidak baku yang dicetak tebal dalam paragraf tersebut adalah ….<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(101, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '65c51092ca6adeede72af8b7756d20745b18630d', 'master', '', '<p><strong>Bacalah penggalan paragraf berikut ini dengan saksama!</strong><strong></strong>​<br></p><p>Hampir semua bangsa memakai merica sebagai bumbu bahkan pada abad pertengahan,bmerica merupakan komoditi penting. …, harganya mahal. … mahalnya, merica dapatvdijadikan sebagai alat … membayar pajak. …, para penjelajah dunia pergi ke daerah Timur untuk mencari merica. Orang‐orang Venesia dan Belanda selalu berperang untuk</p><p>mendapatkan hak monopoli merica hingga abad ke‐18 Masehi.<strong></strong></p><p>Kata penghubung yang tepat untuk mengisi titik‐titik di atas adalah …<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(102, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '41ca001c7b59cf91e44728a374f5d7c958076737', 'master', '', '<p><strong>Bacalah kalimat berikut dengan teliti!</strong></p><p><strong></strong><em>“Demi untuk mempromosikan hasil kerajinan rakyat, di Gedung Balaikota Semarang akan mengadakan pameran produksi kerajinan rakyat.”</em><strong></strong><br></p><p><em></em>Perbaikan yang paling tepat untuk kalimat tersebut agar menjadi kalimat efektif adalah….​<em></em><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(103, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', 'master', '', '<p>Kalimat yang penulisan kata serapannya benar adalah ...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(104, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '9c480275c118fcb06cd60384fe3298761e691db2', 'master', '', '<p><strong>Perhatikan bagian rumpang paragraf di bawah ini!</strong><br></p><p><strong></strong>Akibat pembabatan hutan yang terus berlangsung, usaha … orang utan Kalimantan&nbsp; (pongopygmaeus) … ancaman serius. Sejumlah lembaga penyelamat satwa liar dan pemerintah kini sulit mendapat hutan untuk orang utan seusai dirawat di pusat rehabilitasi. Beberapa waktu yang lalu sebanyak seribu orang utan telah … ke hutan .<strong></strong><br></p><p>Kata berimbuhan yang tepat untuk melengkapi kalimat yang rumpang dalam paragraf di atas adalah ….<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(105, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '0730b474c9456446d0ad299b53edda4a97de31ea', 'master', '', '<p>Perbaikan kalimat yang bercetak miring pada paragraf tersebut adalah …<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(106, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'ae67ee451b4d95ae02061badcd2f736591a1215d', 'master', '', '<p><strong>Cermatilah pargraf berikut!</strong><br></p><p><strong></strong>Mendengar kata-kata ayahku, otakku makin pusing saja. Dulu aku menggebu ingin kuliah tapi gagal karena tidak ada biaya. Lalu ayah mengusulkan kursus. Aku menggebu ingin kursus. Sekarang biaya kursus sudah sedia malah aku belum siap. Belum bisa memastikan sebuah pilihan. Komputer, mengetik, bengkel, atau akuntansi? Itu-itu saja yang berkecamuk dalam pikiranku hingga aku hampir-hampir lupa bahwa hingga saat ini aku masih menganggur.<strong></strong><br></p><p>Keterkaitan watak tokoh ayah dalam kutipan tersebut dengan kehidupan sehari-hari adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(107, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '80c76cd575adc6d71d8953b9afad01f2909775cb', 'master', '', '<p><strong>Bacalah kutipan penutup surat berikut</strong>!<br></p><p>Dengan surat ini saya lampirkan persyaratan yang harus dilengkapi untuk bahan pertimbangan Saudara terhadap lamaran saya, antara lain:&nbsp;<br></p><p>Perbaikan kelompok kata (frasa) yang tidak tepat penggunaannya dalam kutipan surat tersebut adalah …<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(108, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', 'master', '', '<p><strong>Cermati paragraf berikut!</strong><br></p><p><strong></strong><strong></strong>Kekeringan yang melanda pulau ini berakibat sangat parah. Sumur penduduk sudah tidak banyak mengeluarkan air. Ternak sudah lama tidak memperoleh makanan. Pepohonan pun tampak layu. Banyak sawah tidak tergarap lagi, tanahnya mengeras dan pecah-pecah.<strong></strong><br></p><p>Kalimat kesimpulan yang sesuai dengan isi paragraf tersebut adalah...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(109, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'f99d619783dc82885747681e1a0dd2a3bac37330', 'master', '', '<p><strong>Cermati kutipan berikut!&nbsp;</strong><br></p><p>Maka bertambah heran raja mendengar tutur kata Dimnah dan bertitahlah Raja menyuruh Dimnah duduk lebih dekat kepadanya, kemudian Raja pun bersabda. “Manusia tabiatnya dua macam. Ada yang lekas panas seperti ular berbisa. Jika kebetulan ia terpijak dan tiada ia menggigit, janganlah diulang memijaknya sekali lagi. Ketika itu tak dapat tidak ia pasti menggigit. Kedua, orang yang dingin tabiatnya. Tetapi sebagai ranting yang kering, apabila lama dipergosokkan tentu keluar juga api dari padanya. Oleh sebab itu apabila raja lupa menghormati seseorang yang sesungguhnya patut dihormati, janganlah ia terus-menerus lupa. Lebih lekas ditebusnya kelupaan itu lebih baik baginya.”<br></p><p>Isi yang diungkap dalam penggalan tersebut adalah… .<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(110, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', 'master', '', '<p><strong>Cermatilah judul karangan berikut!</strong><br></p><p><strong></strong><em>Dampak penghentian buah impor bagi pedagang di pasar tradisional</em><strong></strong><br></p><p><em></em>Penulisan judul yang tepat dan sesuai dengan EYD adalah… .<em></em><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(111, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', 'master', '', '<p><strong>Cermati kutipan novel berikut!&nbsp;</strong><br></p><p>Demikianlah dari waktu ke waktu kami selalu memperlakukan Mahar tanpa perasaan. Kami lebih melihatnya sebagai seorang bohemian yang aneh. Kami dibutakan tabiat orang pada umumnya, yaitu menganggap diri paling baik, tidak mau mengungguli keunggulan orang, dan mencari-cari kekurangan orang lain untuk menutupi ketidakbecusan diri sendiri...</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Andrea Hirata : Laskar Pelangi)</p><p>Tokoh kami yang sewenang-wenang digambarkan melalui...&nbsp;<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(112, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', 'master', '', '<p>Pemakaian tanda baca yang betul terdapat pada kalimat...<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(113, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', 'master', '', '<p><strong>Bacalah paragraf berikut dengan saksama!</strong><br></p><p><strong></strong><em>Pasar&nbsp; uang&nbsp; dan&nbsp; pasar&nbsp; modal&nbsp; Indonesia&nbsp; belum&nbsp;&nbsp;&nbsp; pulih.&nbsp;&nbsp;&nbsp; Rupiah&nbsp;&nbsp;&nbsp; masih&nbsp;&nbsp;&nbsp; terus mengalami tekanan mengikuti penurunan sebagian besar mata uang Asia. Masalah&nbsp; minimnya pasokan dolar AS di pasar valas&nbsp; semakin mempersulit mata uang lokal ini.&nbsp; Pada penutupan perdagangan valas tanggal 24&nbsp;&nbsp; November&nbsp; 2015,&nbsp;&nbsp; rupiah&nbsp;&nbsp; melemah hingga 320 poin ke posisi 12.320 per dolar<br>AS.&nbsp; Rupiah&nbsp; bahkan&nbsp; sempat&nbsp; menembus 12.325 per dolar AS. Pelaku pasar cemas karena&nbsp; belum&nbsp; ada&nbsp; sentimen&nbsp; positif&nbsp; dari dalam negeri. Oleh karena itu, pasar lebih memilih memegang dolar As dalam kondisi pasar global yang sedang rentan ini.</em><strong></strong><br></p><p><em></em>Paragraf&nbsp; di&nbsp; atas&nbsp; dikembangkan&nbsp; dengan menggunakan pola sebab-akibat karena …​<em></em><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(114, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', 'master', '', '<p><strong>Bacalah paragraf berikut dengan saksama!</strong><br></p><p><strong></strong>Dengan adanya bank syariah diharapkan dapat mendukung pengembangan ekonomi nasional, memfasilitasi segmen pasar yang belum terjangkau atau tidak berminat dengan bank konvensional, dan dapat memfasilitasi distribusi utilitas barang modal untuk kegiatan produksi melalui skema sewa-menyewa.&nbsp;<strong></strong><br></p><p>Ketidakbakuan kalimat tersebut terletak pada<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(115, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', 'master', '', '<p>Penerapan EYD yang benar terdapat dalam kalimat....&nbsp;<br></p><p><br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(116, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', 'master', '', '<p><strong>Bacalah penggalan novel berikut ini!</strong><strong></strong>​<br></p><p>Preman-preman itu hanya manggut-manggut saja. Baginya yang ada di pikirannya hanyalah uang. Ketika mereka mendapat perintah untuk menghabisi biang demonstran itu, tak panjang lagi mereka berpikir. Keesokan harinya hampir seluruh warga melakukan unjuk rasa. Dua sosok mayat menggelepar hampir putus lehernya. Sebagian merangsek merusak PT Sodana. Sebagian lagi berusaha membakar kantor polsek. Suasana sungguh sangat mencekam.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (<em>Suji Membara</em>, Iwan Sodana)<strong></strong></p><p>Tahapan alur penggalan cerpen di atas adalah …<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(117, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', 'master', '', '<p><strong>Bacalah teks eksposisi berikut dengan cermat!</strong><strong></strong>​<br></p><p>PEMIMPIN SOSIAL DAN POLITIK TIDAK HARUS MEMPUNYAI PENDIDIKAN FORMAL YANG TINGGI</p><ol><li><em>Betul bahwa pendidikan formal memberikan banyak manfaat kepada para calon pemimpin atau calon orang terkemuka, tetapi pelajaran yang mereka peroleh dari pendidikan formal tidak selalu dapat diterapkan di masyarakat tempat mereka menjadi pemimpin atau menjadi orang terkenal di kemudian hari. Kenyataan bahwa di sekolah dan di perguruan tinggi, orang hanya “mempelajari” teori, sedangkan di masyarakat, orang betul-betul belajar untuk hidup melalui beraneka ragam pengalaman. Pengalaman semacam inilah yang menghasilkan orang-orang terkemuka, termasuk pemimpin sosial dan politik. Orang-orang terkemuka dan pemimpin-pemimpin itu lahir dari hal-hal yang mereka pelajari di masyarakat. </em></li><li><em>Sudah diketahui oleh semua orang bahwa pendidikan formal itu penting. Akan tetapi, apakah seseorang akan menjadi pemimpin sosial atau pemimpin politik yang bagus pada kemudian hari tidak selalu ditentukan oleh pendidikan formalnya. Diyakini bahwa pengalaman juga menjadi faktor penentu untuk menuju kesuksesan. </em></li><li><em>Dengan demikian, jelaslah bahwa melalui pendidikan formal orang hanya mempelajari cara belajar, bukan cara menjalani hidup. Meskipun pendidikan formal diperlukan, pendidikan formal bukan satu-satunya jalan yang dapat ditempuh oleh setiap orang untuk menuju ke puncak kesuksesannya. </em></li><li><em>Sekadar menyebut contoh orang terkemuka atau pemimpin sosial dan politik, kita dapat menunjuk beberapa nama. Almarhum Adam Malik, konon ia hanya menyelesaikan jenjang pendidikan dasar tertentu, diangkatmenjadi Wakil Presiden Indonesia bukan karena pendidikan formalnya, melainkan karena kapasitas yang ia dapatkan dari belajar secara otodidak. Almarhum Hamka adalah contoh pemimpin lain yang lahir dari caranya belajar sendiri. Ia juga menjadi pemimpin agama dan sastrawan terkenal sekaligus karena pengalaman belajar pribadinya, bukan karena pendidikan formalnya yang tinggi. Bahkan, Einstein tidak mempunyai reputasi pendidikan formal yang bagus, tetapi melalui usahanya untuk belajar dan melakukan penelitian sendiri di masyarakat, ia terbukti menjadi ahli fisika yang sangat termasyhur di dunia.</em><strong></strong></li></ol><p>Urutan yang baik untuk teks eksposisi tersebut adalah....&nbsp;</p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(118, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', 'master', '', '<p><strong>Bacalah teks eksposisi berikut dengan cermat!</strong><strong></strong>​<br></p><p><strong>MANFAAT JAMU TRADISIONAL</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seiring dengan kemajuan zaman, banyak hal mengalami kemajuan. Yang paling mencolok adalah kemajuan teknologi yang makin canggih dalam berbagai aspek kehidupan. Selain itu, secara ekonomis, masyarakat juga dapat makin menjangkau teknologi informasi dan teknologi kesehatan.</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Walaupun demikian, obat tradisional atau yang sering disebut jamu masih mendapat tempat di hati masyarakat. Jamu dipercaya mempunyai banyak kelebihan jika dibandingkan dengan obat-obatan modern seperti yang banyak beredar di pasaran. Jamu juga dianggap lebih sesuai dengan kebanyakan penyakit modern, seperti diabetes. Berikut adalah kelebihan-kelebihan obat tradisional (Katno, Balitro Tawangmangu, dan S. Pramono, Fakultas Farmasi UGM Yogyakarta, <em>Tribun Yogya </em>edisi 16 Oktober 2011). Obat tradisional mempunyai efek samping yang lebih kecil apabila digunakan secara tepat, baik waktu penggunaan, takaran, cara pemakaian, pemilihan bahan maupun penyesuaian dengan indikasi tertentu. Ada efek komplementer dan/atau sinergisme dalam ramuan obat tradisional (komponen bioaktif tanaman obat).&nbsp; Satu tanaman yang sangat murah mempunyai banyak manfaat farmakologi. Obat tradisional lebih sesuai untuk penyakit metabolik, seperti diabetes, kolesterol, batu ginjal, dan hepatitis (metabolik) dan penyakit degeneratif, seperti rematik, asma, tukak lambung, ambeien, dan pikun. Keunggulan obat tradisional jika dibandingkan dengan obat modern lebih aman dan ekonomis. Apabila dikonsumsi dalam waktu lama dan terus-menerus, obat modern akan mengakibatkan efek samping yang dapat memicu penyakit baru.<strong></strong></p><p>Berikut ini yang termasuk pernyataan pendapat (tesis) dalam teks eksposisi tersebut adalah....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(119, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '24f2a97b155274192d3a90d9566d96e7e31b9d89', 'master', '', '<p><strong>Perhatikan data di bawah ini!</strong><br></p><p><strong></strong><strong>Teks A</strong></p><p>Undang-Undang Nomor 23 Tahun 2014 tentang Pemerintahan Daerah memberikan hampir semua wewenang kehutanan dari pemerintah kabupaten/kota kepada pemerintah provinsi. Hal tersebut membuat pengelolaan hutan sulit diperbaiki, terutama jika kapasitas Sumber Daya Alam tidak diperbaiki. Demikian pendapat Guru Besar Fakultas Kehutanan Institut Pertanian Bogor Hariadi Kartodihardjo, Rabu (11/3), di Jakarta. Kementerian Lingkungan Hidup dan Kehutanan diharapkan dapat memberi solusi masalah kehutanan. Menurut Rochimah Nugrahini dari Direktorat Perhutanan Sosial Kementerian Lingkungan Hidup dan Kehutanan, contoh solusi untuk memperbaiki masalah tersebut adalah tidak dihanguskannya wewenang menteri untuk menetapkan area kerja hutan desa dan hutan kemasyarakatan. Dengan demikian, tidak diperlukan izin kepala daerah untuk melakukan mekanisme tersebut. Maka, pengelolaan hutan dapat dilakukan secara lebih efektif.</p><p><strong>Teks B</strong></p><p>Penebangan hutan di Indonesia masih dilakukan secara masif. Hal tersebut dilakukan karena adanya anggapan hutan sebagai sumber kayu. Padahal, dengan menjaga kelestarian hutan, manfaat ekonomi sekaligus ekologi dapat diperoleh. Hal tersebut yang dibuktikan oleh Konsorsium Riset Pengelolaan Hutan Berkelanjutan di Kalimantan Selatan. Menurut Ketua KRPHB, Prof. Dr. Yudi Firmanul Arifin, Indonesia dikenal sebagai negeri berhutan tropis terluas. Hal itu membuat Indonesia memiliki keragaman hayati terkaya kedua setelah Brasil. Maka, keberadaan hutan Indonesia sangat penting bagi warga dunia karena berfungsi sebagai paru-paru Bumi. Hutan Indonesia berguna sebagai penyerap gas karbon dan pelepas oksigen ke udara. Namun, menurut analisis Forest Watch Indonesia, sejak 2009, hutan Indonesia terus mengalami penyusutan area hingga 4,6 juta hektar atau seluas 7 kali luas Provinsi DKI Jakarta.<strong></strong></p><p>Informasi yang tidak tepat berdasarkan kedua teks berita di atas adalah ....<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(120, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', 'master', '', '<p>Murid-murid <em>memperbaiki </em>kesalahan pekerjaan rumah matematika. <em>Perbaikan </em>itu sudah diperiksa guru.&nbsp;<br></p><p>Pilihlah nomor dengan pasangan bentukan kata yang betul seperti contoh kalimat di atas.&nbsp;<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(121, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '99983d45fd497196ff2a4750706074772a1d9521', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>In this section of the test, you will have the chance to show how well you understand the spoken English. There are two &nbsp;(2) parts to this section, with special directions for each part.</strong></p><p><strong>PART 1<br>Question 1 to 6</strong></p><p><strong>Direction :<br>In this part of the test, you will hear some dialogues or questions spoken in English. The questions and dialogues will be spoken twice. They will not be printed in your test book, so you must listen carefully to understand what the speakers are saying.</strong></p><p><strong>After you listen to the dialogue and the question about it, read the five (5) possible answers and decide which one would be the best answer to the question you have heard.</strong></p><p><strong>Now listen to a sample question.<br>You will hear</strong></p><p><strong>Boy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; Do you use the internet very often?<br>Girl</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; Yes, I do. I use it for communication<br>Boy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; How do you communicate with it?<br>Girl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : I send and receive e-mails, and I speak with my friends using voice mail.</strong></p><p><br></p><p><strong>What is the main topic of the conversation</strong><strong>?</strong></p><ol><li><strong>How to use e-mail.</strong></li><li><strong>Internet usage.</strong></li><li><strong>Receiving e-mails.</strong></li><li><strong>Voice mail.</strong></li><li><strong>Communication. </strong></li></ol><p><strong>The best answer to the question is “Internet usage”. Therefore you should choose answer (B).</strong></p><p>....</p>', 0, 0, '1', '2016-01-17 17:59:06', '2016-01-17 20:19:45'),
(123, 8, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', 'master', '', NULL, 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(124, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8a29d69774ef268913675c2a720a7888b021028a', 'master', '', '<p><strong>Listening Section</strong><br></p><p>....<br></p>', 0, 0, '2', '2016-01-17 17:59:06', '2016-01-17 20:19:50'),
(125, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '44580e4a00e802254295f06afbd9c48e391b51a2', 'master', '', '<p><strong>Listening Section</strong><br></p><p><strong>​....</strong><br></p>', 0, 0, '3', '2016-01-17 17:59:06', '2016-01-17 19:32:43'),
(126, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8311cc80170420afa21b6dde55b44063051b2d7b', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '4', '2016-01-17 17:59:06', '2016-01-17 19:33:01'),
(127, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '5', '2016-01-17 17:59:06', '2016-01-17 19:33:05'),
(128, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '6', '2016-01-17 17:59:06', '2016-01-17 19:33:12'),
(129, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '3c581c3cabcd06f6b597f825c09265cb34cd278c', 'master', '', '<p><strong>PART I</strong><strong>I</strong></p><p><strong>Question </strong><strong>7 to 15</strong></p><p><strong>Directions:</strong></p><p><strong>In this part of the test, you will hear several monologues. Each monologue will be spoken twice. They will not be printed in your test book, so you must listen carefully to understand what the speakers are saying. After you hear a monologue and the questions about it, read the five possible answers and decide which one would be the best answer to the question you have heard.</strong></p><p><strong></strong><strong>....</strong><br></p>', 0, 0, '7', '2016-01-17 17:59:06', '2016-01-17 20:20:08'),
(130, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '75e111060698785ae86ec02eebe3ea5cee9533e6', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '8', '2016-01-17 17:59:06', '2016-01-17 20:20:16');
INSERT INTO `soal` (`id`, `id_mapel`, `kode_kd`, `kode_to`, `kode_soal`, `tipe_soal`, `kode_master`, `isi_soal`, `tingkat_kesulitan`, `status_acak`, `no_soal`, `created_at`, `updated_at`) VALUES
(131, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '9', '2016-01-17 17:59:06', '2016-01-17 20:20:26'),
(132, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '10', '2016-01-17 17:59:06', '2016-01-17 20:20:32'),
(133, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '7686a2ba54ed99f532a1ee722386eeac80d698d6', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '11', '2016-01-17 17:59:06', '2016-01-17 20:20:45'),
(134, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '12', '2016-01-17 17:59:06', '2016-01-17 20:25:12'),
(135, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '13', '2016-01-17 17:59:06', '2016-01-17 20:26:35'),
(136, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5543a28b895730f883a2e702378d6c1a47fb6879', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '14', '2016-01-17 17:59:06', '2016-01-17 20:26:41'),
(137, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', 'master', '', '<p><strong>Listening Section</strong></p><p><strong>​....</strong></p>', 0, 0, '15', '2016-01-17 17:59:06', '2016-01-17 20:26:53'),
(138, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8de090434269c0fa41bdba7b2defe951fa71f843', 'master', '', '<p><strong>Read this text carefully!</strong><strong></strong><br></p><p>PT REBEKA</p><p>Jl. Jenderal Sudurman 112 Palembang</p><p><br></p><p>January 10, 2016</p><p>PT Internusa</p><p>Jl. Gatot Subroto 201</p><p>Jakarta</p><p><br></p><p>Dear Sir or Madam,</p><p>We are interested in becoming a distributor for your software products in Palembang. Would you&nbsp; please send us your latest catalogs, brochures, and terms of agreement?</p><p>We are a hardware company and eager to add software products to our sales offering. Our annual report is enclosed.</p><p>We look forward to hearing from you soon.</p><p><br></p><p>Sincerely yours,</p><p><br></p><p>Imam Santosa</p><p>Chairman</p><p><br></p><p>Why did PT send a letter to PT Internusa?<br></p>', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(139, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(140, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(141, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5a7deb492de46796c20d236f19c3efd644a58695', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(142, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '74ca44a2150d19731b7f31880d1b250239957a71', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(143, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4e0370105eac3b8b66605c97b64baabf6f55bf87', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(144, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5854b66902739de808cdb4316fad8a669b4fe213', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(145, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(146, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '17c32c46c03002e9daf1453b5a1dd0060f37366f', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(147, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(148, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '01a26a6edb4a00eb762808fbaf580f3241530832', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(149, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(150, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '0f718616f6f3d211d0687969a79bab4fc5e02e86', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(151, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '12d2201bcbe257df7b78087e26ba97fab27a01f8', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(152, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '1e2e5a8b191c84957ca923c1854ac8a64d982231', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(153, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(154, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5d0085795988b55ea633c629930e77533018c4a9', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(155, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'e80501176d08d22ee0de237479c1942b578b31b0', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(156, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(157, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(158, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'f1efd317a37c0deea1574465b137a71879b16c5d', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(159, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(160, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '5deaf56ae2e2be8de911912de2488b76bc497a3d', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(161, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(162, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(163, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(164, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '9da8d62973652d61ea938a8d2220ebc04a156cc6', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(165, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '40a453692854c89e2fee3c12db585cb8cec3d678', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(166, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(167, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '2757dd1926c8205bf8263c79da9b0e437b05486f', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(168, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(169, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(170, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(171, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '9896793f9fd2d845ae31d1063627973a9cbdf227', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(172, 7, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(174, 16, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '70687b4a80c2562d5b85271fa24fce18c1889855', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(188, 9, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '1ae797e7d036cf1dbc76c31ee0d1eb60f7ecea90', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(189, 9, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '4b453b5ee8ea93a6ec369d6f90db133f6983d67d', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(190, 9, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '102466517eb7306aefdd95d53658fe86a6046fb4', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(191, 9, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'c8020002916c455bfab53a20dd5709e3623ccf3e', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(192, 9, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', 'a4558c40adb276400be6c7075658f889e10216ca', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(193, 9, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '17a3af4c896d5b0f8184ee7538e162735c062b33', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 17:59:06', '0000-00-00 00:00:00'),
(200, 5, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '55ab62192db09005a895f96fdbe399f2704f23b8', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 13:46:16', '2016-01-17 13:46:16'),
(201, 6, 'hello', '198238646833d027e6d7b74a9dba21d6d43af2b6', 'fcd7e2d4889c2328bca722329561e31d201fd051', 'master', '', 'KOSONG', 0, 1, '0', '2016-01-17 13:46:25', '2016-01-17 13:46:25'),
(202, 8, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '44f9be931c9c4aa41c642e426d9e313be5efab0a', 'master', '', 'KOSONG', 0, 1, '0', '2016-03-07 00:15:57', '2016-03-07 00:15:57'),
(203, 6, 'hello', 'a21a46e5516512efc5875fd783f2b4c78e6242a6', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', 'master', '', '<p>sasasKOSONG</p>', 2, 1, '0', '2016-03-07 00:37:23', '2016-03-07 00:37:52'),
(204, 6, 'hello', '2c99a9d87606f25e4254c279a9db0b1b673eea18', '2acf6b07b6db27eaf111fb85685b04ae4171b731', 'master', '', '<p>akar-akar persamaan x<sup>2</sup>&nbsp;+ 3x - 18 = 0 &nbsp;adalah x<sub>1 </sub>dan x<sub>2,&nbsp;</sub>persamaan kuadrat baru yang akar-akarnya 4x<sub>1</sub>&nbsp;dan 4x<sub></sub><sub>2</sub>&nbsp;adalah . . .</p>', 0, 0, '1', '2016-03-07 00:40:31', '2016-03-07 00:47:17'),
(205, 6, 'hello', '2702d40451a515eb03ff661344efbbea84519c7f', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', 'master', '', 'KOSONG', 0, 1, '0', '2016-03-07 01:02:19', '2016-03-07 01:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `soal_jawaban`
--

CREATE TABLE IF NOT EXISTS `soal_jawaban` (
  `id` int(11) NOT NULL,
  `kode_jawaban` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_soal` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `isi_jawaban` text COLLATE utf8_unicode_ci NOT NULL,
  `status_benar` tinyint(1) NOT NULL DEFAULT '0',
  `urutan_untuk_guru` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=826 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `soal_jawaban`
--

INSERT INTO `soal_jawaban` (`id`, `kode_jawaban`, `kode_soal`, `isi_jawaban`, `status_benar`, `urutan_untuk_guru`) VALUES
(151, 'f34bdeaab40308b8955dd6cec41231f80f6c3e91', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '<p>Permufakatan atau kespakatan</p>', 0, 0),
(152, 'f70aab99b29e15b8dd3a3289d8f3df48aa03e2b0', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '<p>Perjanjian antarnegara</p>', 1, 1),
(153, '6733891b1c53ae7573778dc5071815c4e941ef7b', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '<p>Konferensi tokoh masyarakar atau partai</p>', 0, 2),
(154, '6da13025de7242fba1c9e8ffdc785a7f432b5a86', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '<p>Secara tradisi</p>', 0, 3),
(155, '4c5ae6460227e6f897114facf4acb08b18854529', '96a907edadec3a3cc8cf167891d1a7e12a57332a', '<p>Pembicaraan</p>', 0, 4),
(156, '0a4c21c1750cfee270f96416b1bcb9464a24921a', 'dea428eac84e3c7da770d77f6b70089de45fc306', '<p>Penetapan 8 jam kerja perhari sebagai salah satu ketentuan pokok dalam hubungan industrial perburuhan sebagai penanda berakhirnya kerja sama antara buruh dan pengusaha.</p>', 0, 0),
(157, '219b048e3f6701788b99e0d89079ec28f8e5fbdd', 'dea428eac84e3c7da770d77f6b70089de45fc306', '<p>Ditetapkannya kerja 8 jam/hari (lima hari kerja) menjadi standar perburuhan internasional melalui Konvensi ILO,&nbsp; merupakan hasil perjuangan para buruh.<br></p>', 1, 1),
(158, '6cf3ac028f0e7073b6e99b93d489ba2acca27a1a', 'dea428eac84e3c7da770d77f6b70089de45fc306', '<p>Ditetapkannya konvensi tersebut merupakan suatu pengakuan internasional yang secara langsung merupakan buah dari perjuangan kaum buruh untuk mendapatkan pekerjaan yang tidak layak.<br></p>', 0, 2),
(159, '5feb96d76728f2c0b0e58f10a2a45ed8d1c36e28', 'dea428eac84e3c7da770d77f6b70089de45fc306', '<p>Penetapan 8 jam kerja perhari sebagai salah satu ketentuan pokok dalam hubungan industrial perburuhan adalah penanda bentuk kerja paksa dan perbudakan yang bersembunyi&nbsp; di balik hubungan industrial.<br></p>', 0, 3),
(160, 'a35cf1191a149b780409c5b7935c97dd5e5c0bc4', 'dea428eac84e3c7da770d77f6b70089de45fc306', '<p>Delapan jam/hari atau 40 jam/minggu (lima hari kerja) telah ditetapkan menjadi standar perburuhan internasional oleh ILO melalui Konvensi ILO Konvensi No. 47 tahun 1935, sangat menguntungkan pihak industrial.<br></p>', 0, 4),
(161, '7980d117f4dc03fbeeb19b4f0a83b2f7a73c4b21', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', '<p>perbuatan dosa<br></p>', 1, 0),
(162, 'cf8198d1f034cf00e2301af6de6ce179359e0ea2', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', '<p>debu tanah<br></p>', 0, 1),
(163, '52b3a937f3a03752dd137f565af814754dc76b61', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', '<p>sampah masyarakat<br></p>', 0, 2),
(164, '3f4390535ba905089168d8e94d943bbf94afb89f', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', '<p>fitnah yang keji<br></p>', 0, 3),
(165, '511b977fbb4cf1f2cf248fc58d55bfd79b9d2e82', '67a908ffb4d44f96eac89b0ef4056cc83d86144b', '<p>hawa nafsu<br></p>', 0, 4),
(166, 'ea8f63f009a02918b5fcba0e4aae004e5ca95ca8', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', '<p>Rumah yang indah seperti istana yang megah<br></p>', 0, 0),
(167, '6cf61b241893dd617b2f483892e5a5edbb503117', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', '<p>Rumah yang besar seperti istana<br></p>', 1, 1),
(168, 'af9959db14dafd5e1adacd593b5e3a42e45eec03', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', '<p>Rumah tempat tinggal keluarga besar yang paling disukai<br></p>', 0, 2),
(169, 'ffbaa491eb7ecc3325a8a66cdef9d6baab26c54a', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', '<p>Rumah merupakan tempat tinggal yang terindah dan ternyaman.<br></p>', 0, 3),
(170, 'e4ce7385dbaf21b898ebfd35cec0965df0eff556', '1add13604cb1da4a02f3bc3ae0bca660da347cb0', '<p>Rumah meupakan tempat yang bersih dan indah<br></p>', 0, 4),
(171, '0e8d84d11d37cf5e52452f160e57cdcf086f1e25', '8085282060ea8bf0df9f79b9064e852e1689cbec', '<p>aktivitas<br></p>', 1, 0),
(172, '93929e395da92df678b3e6dba1ed025dd18984fa', '8085282060ea8bf0df9f79b9064e852e1689cbec', '<p>produktif<br></p>', 0, 1),
(173, '1e2455c8c2d6cd30b10e62dc549c16c5c62d8972', '8085282060ea8bf0df9f79b9064e852e1689cbec', '<p>inovatif<br></p>', 0, 2),
(174, '492bf37a35fdb93cf8aa66aacd2ab8a8d97af2ea', '8085282060ea8bf0df9f79b9064e852e1689cbec', '<p>kreativitas<br></p>', 0, 3),
(175, '1856a00b8b5d668e839912f6cbb897bb2340a607', '8085282060ea8bf0df9f79b9064e852e1689cbec', '<p>kreatif<br></p>', 0, 4),
(176, 'f739fd580cc13229125311d0b1b46876008fa111', 'b71f195906134287e116fac72fb35c5cd32517e7', '<p>karena, jika<br></p>', 1, 0),
(177, 'f00e2d0314f987829b21c1c1d5bbac46451ada55', 'b71f195906134287e116fac72fb35c5cd32517e7', '<p>adalah, jika<br></p>', 0, 1),
(178, '21357f63bd72520378d49e1828c26651263a8f71', 'b71f195906134287e116fac72fb35c5cd32517e7', '<p>karena, sehingga<br></p>', 0, 2),
(179, 'b4738ac88d978d11b57b9d101a062ee919484aaa', 'b71f195906134287e116fac72fb35c5cd32517e7', '<p>yaitu, sehingga<br></p>', 0, 3),
(180, '5051b982481866aad9e7cb1d3aded3d07a18505a', 'b71f195906134287e116fac72fb35c5cd32517e7', '<p>adalah, agar<br></p>', 0, 4),
(181, '04b5f3205f4827b3975d273536dcc7b1586a5f7e', 'c93891db1817783abcb85e0a1253c381f6418e83', '<p>(1)</p>', 1, 0),
(182, '8c8f9d6a80accfff75785860416ff66dfdd3776e', 'c93891db1817783abcb85e0a1253c381f6418e83', '<p>(2)</p>', 0, 1),
(183, 'e5a19168e93d76bb383feacd4ef6be547513ec7a', 'c93891db1817783abcb85e0a1253c381f6418e83', '<p>(3)</p>', 0, 2),
(184, '5adb7221d663acd6612a0a31abb164f5ee56c9b4', 'c93891db1817783abcb85e0a1253c381f6418e83', '<p>(4)</p>', 0, 3),
(185, '06e5b68f427cd1c37ab24af47f85667ba93f2cdb', 'c93891db1817783abcb85e0a1253c381f6418e83', '<p>(5)</p>', 0, 4),
(186, '10d944d7e731d44822fab913f3d73c3b05103899', '3ee69778089a193c296c48a1cc6beb02693fa21a', '<p>buatan atu tidak alami<br></p>', 1, 0),
(187, 'd632d431db80364ec4b9cecf700f093b807ab394', '3ee69778089a193c296c48a1cc6beb02693fa21a', '<p>palsu<br></p>', 0, 1),
(188, '620fe9a5502e1d7bfc938800afa9ccd18f6d6cb4', '3ee69778089a193c296c48a1cc6beb02693fa21a', '<p>tiruan<br></p>', 0, 2),
(189, 'd1081742bc0cf85750913db13765669c334d3a5e', '3ee69778089a193c296c48a1cc6beb02693fa21a', '<p>miniatur<br></p>', 0, 3),
(190, '5cc0ee4fddd8040f3ec7f1cb6f3ac9d590bc1f3d', '3ee69778089a193c296c48a1cc6beb02693fa21a', '<p>buatan alam<br></p>', 0, 4),
(191, '1add5455025f9f6bb7e906af415a4f84ea4d2ce8', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', '<p>Anik Budiastuti, S.E<br></p>', 1, 0),
(192, 'd7ceb5cee785778fff28fe13360c4ea4b71a83ae', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', '<p>Anik Budiastuti, S.E.<br></p>', 0, 1),
(193, 'eb7f5f3aa738a3751c593c9f1e250979e49fd573', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', '<p>Anik Budiastuti S.E.<br></p>', 0, 2),
(194, '95fe044b990bcb472456aa9a4d1716ede04f7152', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', '<p>Anik Budiastuti, SE<br></p>', 0, 3),
(195, '906ef073978de67cef732d83950b0056840f7bd3', '3fc6f3741f2e4d4d14ba6c63c91021e18559b2e4', '<p>Anik Budiastuti S.E.<br></p>', 0, 4),
(196, '8f95816a0669c4adc54f6197aa538e99f406c4aa', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', '<p>Peran pemuda dalam menerima kepemimpinan bangsa<br></p>', 1, 0),
(197, '8878eae42ff076b19e1fd1bc067a4699d40d493f', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', '<p>Sikap Generasi muda dalam Memperkokoh N.K.R.I.<br></p>', 0, 1),
(198, '99cb3153f51791b9bf17ae75445a10630b1f1836', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', '<p>Kesiapan Anak Bangsa dalam Menerima Estafet Kepemimpinan<br></p>', 0, 2),
(199, 'a4e95bcffe07d58ccda79e5a4143c280b0464af8', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', '<p>Penjagaan Anak Bangsa Dalam Memperkokoh NKRI<br></p>', 0, 3),
(200, 'b98c95141f24797b69e636582bbad322a75b6f8a', 'cfae3e4fd3d723a0b268b0b0c69cfd3254eaad99', '<p>Peran Pemuda di era Globalisasi<br></p>', 0, 4),
(201, '6fddbcf3cb3a7686d737bf4d2c3d5e280245ff4a', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', '<p>Siapa gubernur <em>Jawa tengah</em> sekarang?<br></p>', 1, 0),
(202, '0a9172d575d813bb9b39cd3c77648050d57e8f79', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', '<p>Pencemaran <em>teluk Jakarta</em> telah mencapai ambang yang membahayakan.<br></p>', 0, 1),
(203, '24dccc93a57972c1d79a5007be12b99628810365', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', '<p>Laut Utara lebih membahayakan daripada <em>laut Selatan</em>.<br></p>', 0, 2),
(204, '1e395b026ff9f1bbca95ade86b66158e7fa23a47', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', '<p>Sejak dilancarkannya proyek normalisasi <em>Kali Brantas</em> banjir dapat ditanggulangi.<br></p>', 0, 3),
(205, '57a8d6ac934707b29ff94ac64d740ed24c476794', 'ac914a2e654bb671a0bd9a60b8fee6830f391f4f', '<p>Di sepanjang <em>pulau Sumatra</em> terdapat bukit Barisan.<br></p>', 0, 4),
(206, '7e64cfdb6b4e0578e5fe54e8a58112eba3485514', '7291eb9f481efb96b3c300d68e474249c5dfd7df', '<p>Para pemuda Indonesia bersikap tak acuh&nbsp; dan terkesan lebih bangga bila memakai produk-produk luar negeri.<br></p>', 1, 0),
(207, 'd85b2a59d8e7c6c50ae74596bd924ae586faae36', '7291eb9f481efb96b3c300d68e474249c5dfd7df', '<p>Seperti suku-suku lainnya di Indonesia yang memiliki ciri khas, jawa merupakan salah satu bangsa yang menawarkan ajaran-ajaran luhur.<br></p>', 0, 1),
(208, '24a793b0933c8adba7b36c98188bbfc9af70cef3', '7291eb9f481efb96b3c300d68e474249c5dfd7df', '<p>Tidak sebatas pada rutinitas seremonial tertentu, akan tetapi lebih jauh lagi ke tingkah laku kehidupan sehari-hari.<br></p>', 0, 2),
(209, '284168d6838186ccbc3cea72e2e44541f8fecc6a', '7291eb9f481efb96b3c300d68e474249c5dfd7df', '<p>Pada kenyataannya, kerap terjadi gesekan-gesekan di tingkat bawah merupakan akibat dari proses interaksi dan akulturasi.<br></p>', 0, 3),
(210, '960f35362136a766bf747a300acc513bcb07e41b', '7291eb9f481efb96b3c300d68e474249c5dfd7df', '<p>Bentuk keprihatinan masyarakat terhadap meredupnya nilai-nilai kebudayaan telah diakui oleh masyarakat dunia.<br></p>', 0, 4),
(211, 'a2699b9044286665f9f46c6b4b494c69bec43bea', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', '<p>Jangan jadikan budaya barat sebagai patron pola pikir.<br></p>', 1, 0),
(212, '46e146852cda43421da1483e566c66c71228e41e', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', '<p>Banyak potensi yang dapat digali untuk melestarikan kultur sosial budaya Indonesia.<br></p>', 0, 1),
(213, 'cf63b69f6b57a4a8f1b251f88e18ac7458dd4742', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', '<p>Perlu segera diadakan pembinaan.<br></p>', 0, 2),
(214, 'ae691fd0a6ca80c262b345ca881ba243b9bcbb35', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', '<p>Perlunya membangun kembali pola pikir kita.<br></p>', 0, 3),
(215, '27f58d555853c07aedd8c4d1a75b9955c820d966', 'b74e7a9ab8f8d21741374c06d382c6b62718358e', '<p>Langkah-langkah yang harus diambil untuk menmbangun pola pikir.<br></p>', 0, 4),
(216, '5245c85a6a7c2d0ff8c4e3609b411703be7e33f6', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', '<p>Kita membangun pondasi pola pikir.<br></p>', 1, 0),
(217, '05fe26deb3bb2266c9c17a9bed56c1970b2ffdd4', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', '<p>Kita perlu membangun pola pikir sebagai orang timur yang beradab.<br></p>', 0, 1),
(218, '2fd8da683581ef7ba9bb8dbb7764ced08941a20d', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', '<p>Pola pikir sebagai penerus bangsa.<br></p>', 0, 2),
(219, '4b4eabe938db6367c8f9fc5cba9ad3ab9f993036', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', '<p>Pondasi pola pikir penerus cita-cita bangsa.<br></p>', 0, 3),
(220, 'a3f335e4da722593081b1fcc62fb2405e0131ccd', '8534e1aaf18d93d291a15730b2bab60ee1f712b1', '<p>Kita&nbsp; penerus cita-cita bangsa.<br></p>', 0, 4),
(221, 'c93243b61a4176df5db52aa9282dbda66877872f', '7de2ff2420a77b4800e28f688c6073e3667a82c7', '<p>buah<br></p>', 1, 0),
(222, 'f5fbf4afec9311b8301ea08d51e41ce1dc29d664', '7de2ff2420a77b4800e28f688c6073e3667a82c7', '<p>sayuran</p>', 0, 1),
(223, 'd35272cb7de58e810d9950d3e71eb3105f81bdf5', '7de2ff2420a77b4800e28f688c6073e3667a82c7', '<p>buah dan sayuran</p>', 0, 2),
(224, 'b8bacc71949f2b59a832be1fc266d8905bdfc314', '7de2ff2420a77b4800e28f688c6073e3667a82c7', '<p>orang yang mengonsumsi</p>', 0, 3),
(225, 'c6ab3bdab9c463182b98855045768d043394d36a', '7de2ff2420a77b4800e28f688c6073e3667a82c7', '<p>potasium</p>', 0, 4),
(226, '92da069a5e19b765c789c51bdefe2914bb424951', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', '<p>Tidak sulit untuk mendapatkan potasium karena ia terkandund di dalam berbagai buah dan sayuran.<br></p>', 1, 0),
(227, 'bf0dddd4d323d26838d30cdd9c85438c621301cb', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', '<p>Mengonsumsi makanan kaya potasium dapat mengurangi risiko terkena stroke.<br></p>', 0, 1),
(228, '4f37e0051211aeac5e8cc309d87cc2a7cfe8f994', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', '<p>Menata pola makan dan aktivitas fisik merupakan cara untuk menurunkan berat badan<br></p>', 0, 2),
(229, 'd77b6fb49cb167784ec5eb97609fd0be07e09681', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', '<p>Wanita yang mengonsumsi potasimmemiliki risiko gangguan ginjal sepuluh persen lebih rendah.<br></p>', 0, 3),
(230, '52aa2bc0860309bed4e23fe1b2461a22ca7e7065', '9ca3c2a6c6afe0ed7a0085c9c630415cb4ff451c', '<p>Mengonsumsi potasium berlebihan tidak baik, terutama bagi orang lanjut usia dan penderita gangguan ginjal.<br></p>', 0, 4),
(231, '0932eef38e1d3ee9744d9eacbf71a32f5d4c1d15', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', '<p>Tanpa orang tua kita tak akan pernah ada di dunia dan hidup bahagia.<br></p>', 1, 0),
(232, '539dac8c9c17d93c74609ba3e70d39a93759ff80', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', '<p>Memanfaatkan orang lain akan mengangkat harga diri dan martabat.<br></p>', 0, 1),
(233, 'dac4e665e2486e1f3304c6f982a8370db06278ed', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', '<p>Memaafkan kesalahan orang lain merupakan perbuatan yang mulia.<br></p>', 0, 2),
(234, 'f73f5515c2a62166027f4bf3b98cc67ce8bb2566', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', '<p>Orang tua tidak akan membenci anaknya walaupun ia bersalah.<br></p>', 0, 3),
(235, '75435467cb57dc33e21b55e146046ec8ecafd292', 'a164eb05aaee7094fdf093c9b0ec3daff46f12cc', '<p>Saling mengingatkan akan kesalahan orang lain dan diri sendiri<br></p>', 0, 4),
(236, '9767da870d9c60bcb02a40cd4fa13c635dfc68ae', 'dd5796fd978c530908885b25d1229a914d6eb4e8', '<p>Ayah tidak bekerja kepada orang kota itu karena upahnya sangat kecil.<br></p>', 1, 0),
(237, 'bccf19544289acc9a87b89cb898dd3965f18394d', 'dd5796fd978c530908885b25d1229a914d6eb4e8', '<p>Penebangan hutan menyebakan timbulnya bencana kekeringan di desa itu.<br></p>', 0, 1),
(238, 'a06cc4725b793ca3d2dd5b693e49e762bd781f6f', 'dd5796fd978c530908885b25d1229a914d6eb4e8', '<p>Banyak orang yang terpaksa bekerja sebagai penebangan kayu karena upahnya sangat sedikit.<br></p>', 0, 2),
(239, '26fc8633b9e961b7ea1772d5bd1aab6fbf7b5c09', 'dd5796fd978c530908885b25d1229a914d6eb4e8', '<p>Meskipun gajinya kecil, orang-orang di kampung itu tetap bekerja kepada pengusaha dari kota yang dibeking aparat karena hidup mereka terancam.<br></p>', 0, 3),
(240, 'e609318d9ecbdd920958985d289e2612cc378235', 'dd5796fd978c530908885b25d1229a914d6eb4e8', '', 0, 4),
(241, '18f70e1d2e62bd47baf02715f303aa757bca274a', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', '<p>Dengan sarapan, tubuh&nbsp; seseorang akan menjadi sehat, kuat, dan tumbuh besar.<br></p>', 1, 0),
(242, '4653ff213848d174b112d2a7ddb52f479d77e5bc', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', '<p>Sarapan akan membuat seseorang benar-benar merasa segar pada pagi hingga siang hari.<br></p>', 0, 1),
(243, '306b8032981b712b87416ee096bdb63bc87a1cd7', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', '<p>Sarapan yang baik adalah dengan makan nasi secukupnya sebagai seumber energi.<br></p>', 0, 2),
(244, '61ab63ad789c24cea278da91cb4bf6f9d1598ec5', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', '<p>Sarapan yang baik adalah dengan makan nasi secukupnya sebagai seumber energi.<br></p>', 0, 3),
(245, '281927968746f4388f049eb3ef5b4e0945293a4f', 'b4b97cd728604a4f80561ef6ce2e2ce8ba0828e0', '<p>Dengan sarapan yang benar, seseorang akan terhindar dari kelaparan sehingga semua aktivitas menjadi lancar.<br></p>', 0, 4),
(246, '6982a5821961ee51a914f568983fe217f02015af', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', '<p>membuat mereka semua heran dan mulutnya melongo...<br></p>', 1, 0),
(247, 'c17553079c1ace63f72f9a13fafbbd4724bad920', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', '<p>membuat lelaki itu seperti siluet hitam, yang terlihat hanya bayangan.<br></p>', 0, 1),
(248, 'f9c9e849dd75d83caf85ee9f471fb3f9fe237570', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', '<p>lelaki itu menjauhi lepau membuat semua orng yang ada di situ heran.<br></p>', 0, 2),
(249, 'db079345948ba6771364f25712248ce02080c5d8', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', '<p>lelaki itu menjauhi lepau membuat semua orng yang ada di situ heran.<br></p>', 0, 3),
(250, 'cc62993f6b9c0a74b93b0084ad9f2ed3f6cc4c6e', '4b724f6109f8810b93c5ddb19b843de7c7d4113a', '<p>lelaki itu menjauhi lepau membuat semua orng yang ada di situ heran.<br></p>', 0, 4),
(251, 'b36f839ce60de49d30752dd254a30f9fe5827ff2', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', '<p>Kubiarkan bus itu lewat.<br></p>', 1, 0),
(252, '329f4ef168e3981ca461918075670bc0d164cb52', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', '<p>Aku menemui pemiliknya dan kutanyakan apakah aku boleh naik.<br></p>', 0, 1),
(253, 'a35f19c77486f3a31b833b3480e578042eef4886', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', '<p>Perjalananku tak tentu arah, jalan berdebu menemani langkahku<strong>.</strong><br></p>', 0, 2),
(254, '51f78659b4a4a40a2d48393e93f1d11dd6af9146', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', '<p>Aku tinggal diberpindah-pindah di kota besar dengan gembel dan pengemis.<br></p>', 0, 3),
(255, '96299dba6648b06513a028c288c48c8d5997a498', 'bf4102b33db97807f2a87556b72d42ce5cbb3bda', '<p>Paginya, bus berhenti di Pekanbaru dan aku turun di kota itu.<br></p>', 0, 4),
(256, 'c7a791f15c81a5839505cc015dee4b8bc14d8613', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', '<p>Angin pun hampa tiba-tiba<br></p>', 1, 0),
(257, '1c53c916f49b567b2b7a72cfd972ba50e6b0a1cb', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', '<p>Kecuali suara angin berbisik<br></p>', 0, 1),
(258, 'edcfa180ed1b454665f489f84c00fae706e0b3b4', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', '<p>Tak ada kehangatan menggelora<br></p>', 0, 2),
(259, '55e21eb8878637f409a5a7a6a4f2b649b80c0dff', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', '<p>Wajahmupun tak ada lagi<br></p>', 0, 3),
(260, '5ef9df0220481d8a0eaf2933ee3edd383c7a9260', '20eec7a8c9578c9a6554b60f0b4febff07276dc2', '<p>Ke mana gemericik air mengalir<br></p>', 0, 4),
(261, '3bbdaa52b56e653893d4a8c8a72677326dba283e', '4093f25998255ac853e42438bf3eb5e873a05ebd', '<p>Sangat sarat dengan unsur motivasi dan banyak menceritakan episode serta lika-liku perjuangan dalam kehidupan.<br></p>', 1, 0),
(262, '19413cc68d04d92fa27d90a0e9497eea952415d2', '4093f25998255ac853e42438bf3eb5e873a05ebd', '<p>Dalam film pertama (<em>Laskar Pelangi</em>) lebih banyak mengisahkan tentang masa kecil Ikal dan rekan-rekannya.<br></p>', 0, 1),
(263, '9d485f77a10dc0e1cd093d996a8d2091b6b5405e', '4093f25998255ac853e42438bf3eb5e873a05ebd', '<p>Di film <em>Sang Pemimpi,</em> novel kedua, banyak mengisahkan tentang masa remaja yang penuh tantangan.<br></p>', 0, 2),
(264, '8618ebd9efeed05a0b0c88c8a5eb45a2fab37f85', '4093f25998255ac853e42438bf3eb5e873a05ebd', '<p>Saksikan secara langsung <em>Sang Pemimpi</em>, dijamin insya Allah tidak rugi setidaknya selepas menonton setiap babak perjuangan dalam film juga banyak terdapat kata-kata inspiratif yang dapat menaikkan motivasi anda.<br></p>', 0, 3),
(265, '88db3f7f8cf233d09929b084ead760bb9de1057e', '4093f25998255ac853e42438bf3eb5e873a05ebd', '<p>Seting cerita <em>Sang Pemimpi</em> memperlihatkan situasi pada zaman dulu, seperti dari keadaan seharian penduduk Belitong dan Manggar penggunaan bahasa melayu, gaya berpakaian, gaya bercinta, serta keakraban jalinan persahabatan yang tulus dan bermakna.<br></p>', 0, 4),
(266, 'd1b86aa0339bba34c8e4b0c12e59e7fe8c238bc4', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', '<p>(3) Maka jadilah&nbsp; adonan kaca itu.<br>​(7) Terakhir diberi gambar, lalu dikeringkan</p>', 1, 0),
(267, '597b1740eb0e5b6f5782673d7b8ea7bd410732ef', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', '<p>(3) Selanjutnya, untuk memperkuat kaca botol-botol tersebut, botol-&nbsp; botol itu dipanaskan kembali, lalu didinginkan.<br>​(7) Setelah itu, campuran itu dipanaskan dalam tungku pada suhu yang sangat tinggi</p>', 0, 1),
(268, 'ba676852588afd7c3e1494e65eec2b071697e4f1', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', '<p>(3) Botol-botol itu siap dibuat adonan di atas tungku dengan suhu yang sangat tinggi.<br>​(7) Adonan tersebut siap untuk dicetak lalu didinginkan untuk selanjunya botol siap diberi ukiran.</p>', 0, 2),
(269, '4c07b0f4ec7124dca6319143cad8afba9ae54c65', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', '<p>(3) Setelah itu, campuran diaduk dalam wadah yang besar untuk dipanaskan.<br>​(7) Akhirnya, adonan siap dicetak untuk digunakan kembali.</p>', 0, 3),
(270, 'eaca212b6e3b3b60b27f370d05238558913df742', '6b6a7ffa13baf44d06ea4dbcd7a70194850dab64', '<p>(3) Setelah itu, campuran diaduk dalam wadah yang besar untuk dipanaskan.<br>​(7) Akhirnya, adonan siap dicetak untuk digunakan kembali.</p>', 0, 4),
(271, '44fdb89dc5ed59877be23ad6752cc6cdaced43c1', 'c9a581559c9860fccbc02739fe0342cfb52536f7', '<p><em>Short message service</em><br></p>', 1, 0),
(272, 'c0c1374f8a5fb067fd3ac2a00c9ab397944c0308', 'c9a581559c9860fccbc02739fe0342cfb52536f7', '<em></em><p><em>E-mail</em></p><em></em>', 0, 1),
(273, '6d5d3232179ccc9ca6050784cac6906dc74a1c29', 'c9a581559c9860fccbc02739fe0342cfb52536f7', '<p><em>Facebook</em><br></p>', 0, 2),
(274, '3f98600c44e643654f432fa37e22bb1958a55fd5', 'c9a581559c9860fccbc02739fe0342cfb52536f7', '<p><em>Multimedia Messeging Service</em><br></p>', 0, 3),
(275, 'f20bcf46476f41547e62f0b7fb94e7eac6420cec', 'c9a581559c9860fccbc02739fe0342cfb52536f7', '<p><em>Code Division Multiple access</em><br></p>', 0, 4),
(276, '55391a6a3d0730eecf6df45f56a2872c4c4bb916', 'a389bc41ce99c9e11aed44f7547e3847071977c8', '<p>Hal yang menarik diketengahkan oleh pengarang adalah nilai kerukunan beragama antarbangsa yang selayaknya dimiliki setiap manusia.<br></p>', 1, 0),
(277, '6230111e0a5f0e57400282ace7a5e4074c332215', 'a389bc41ce99c9e11aed44f7547e3847071977c8', '<p>Keunggulan novel ini adalah menceritakan kehebatan anak Indonesia yang sanggup mengikuti pendidikan tinggi di luar negeri.<br></p>', 0, 1),
(278, '3a4a6366d3408806b7bbf575e7cb8e6de98d0ba1', 'a389bc41ce99c9e11aed44f7547e3847071977c8', '<p>Buku ini menceritakan pertemanan yang akrab antara dua remaja, sehingga cocok untuk dibaca para remaja, baik laki-laki maupun perempuan.<br></p>', 0, 2),
(279, '3b35cf6e029b1682cdf81dca7b13d2c167e65c12', 'a389bc41ce99c9e11aed44f7547e3847071977c8', '<p>Kelebihan buku ini adalah menampilkan karakter tokoh Maria, yang suka membaca Al-Quran, meskipun beragama Kristen Katholik.<br></p>', 0, 3),
(280, 'ff498d846dba21d730696441209aa193b3cacc97', 'a389bc41ce99c9e11aed44f7547e3847071977c8', '<p>Buku ini bernilai positif dan dapat diteladani karena menampilkan tokoh yang kuliah di dua perguruan tinggi ternama di kota Kairo.<br></p>', 0, 4),
(281, 'a3bdc170635860d51b6cd01adbf18bab3211595a', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', '<p>bertopik bencana alam<br></p>', 1, 0),
(282, '5d667106998ee21501cb38ddc30a3ef1683a2fda', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', '<p>bertopik bencana alam<br></p>', 0, 1),
(283, 'bf58cdeb3aa4116936acf3bc09c4bf978e08151a', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', '<p>merupakan kutipan teks berita<br></p>', 0, 2),
(284, '9818b3196998f48b36f9ca6413526a668e542004', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', '<p>menjelaskan tentang korban bencana alam<br></p>', 0, 3),
(285, '33aa5adbd8f8570276227a9c3c35ca0ec7a9b61b', '3632874caaf4e7a79fe4b0220aeddb5291b5e3d9', '<p>ditujukan kepada masyarakat dataran rendah<br></p>', 0, 4),
(286, 'f04f91a79dd92eeeeea664c41d79c33a99764f60', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', '<p>Banyak orang yang suka beribadah di masjid.<br></p>', 1, 0),
(287, '4c6faed0f907a0289399604a6da32f0423c4a333', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', '<p>Masih banyak masyarakat yang mempercayai tahayul.<br></p>', 0, 1),
(288, '24bde624817615b451730c27ac43ed5851aee88e', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', '<p>Majikan yang menasihati pelayannya dengan penuh kearifan.<br></p>', 0, 2),
(289, 'b0e0ff3bc6df00f5279acab37104fe4128bb5121', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', '<p>Banyak majikan yang sering berbuat tidak baik pada pembantunya.<br></p>', 0, 3),
(290, 'fc2788ce079a7dd9904019794e0f821267c56bac', 'c9b5a10cedb34d92a2e0437341aaa37f878ec94b', '<p>Mempercayai kekuatan sebuah cincin yang dapat mencelakakan pemakainya.<br></p>', 0, 4),
(291, '71b4fdbc025392f6e67453f059bd0c3e79b7d033', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', '<p>(1), (2), (4), (5), dan (3)<br></p>', 1, 0),
(292, '525fcf007c6f4da9c6d0012d65d3c116c6e739be', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', '<p>(1), (3), (4), (5), dan (2)<br></p>', 0, 1),
(293, '67d13a4b931ebc73f44a43a591e5829a3f79a0fb', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', '<p>(2), (3), (4), (5), dan (1)<br></p>', 0, 2),
(294, '49bedc31ce7ffcc7c74aa345b7aef36c4537e30f', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', '<p>(3), (5), (1), (4), dan (2)<br></p>', 0, 3),
(295, 'e3acf0816f33d60f3ae94ad0c13f7b2c6ca8447a', 'c1520e6652c7fc4b805ebb4cc73867d0a1882dad', '<p>(3), (4), (2), (1), dan (5)<br></p>', 0, 4),
(296, '7c284ada40bbbd8c8409058bfa8475c626c78e8f', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', '<p>memberitahukan, mencontek, hukuman<br></p>', 1, 0),
(297, 'ff24dbd1f0c3cdb0f66b992b5d0b697ac7dbaff6', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', '<p>mengatakan, mencontek, sanksi<br></p>', 0, 1),
(298, '31968565d470f4a43a9d55f2fa8e2ed46863b935', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', '<p>memberitahukan, menyontek, sanksi<br></p>', 0, 2),
(299, '8f11d5c06092e59711a47b935d0eb473a6bd70b1', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', '<p>mengomentari, mencontek, sanksi<br></p>', 0, 3),
(300, '438c2dad7c3937afba1ca9ac3fb28160242ab5d0', '21ce086367795b7ca8296f0ca16c5bd72fe7b4fa', '<p>mengatakan, menyontek, sanksi<br></p>', 0, 4),
(301, 'c69b568bc7b51adbfadfcf31ccc2980f18a2af2a', '65c51092ca6adeede72af8b7756d20745b18630d', '<p>Oleh karena itu, Karena, untuk, Akibatnya.<br></p>', 1, 0),
(302, '4d29b8de674f03f121b73655d9c579b94125c09c', '65c51092ca6adeede72af8b7756d20745b18630d', '<p>Oleh sebab itu, Bahkan, ketika, Sehingga<br></p>', 0, 1),
(303, 'c4a48dfbd24b87fb434b81dd60dbee34b4ff7c35', '65c51092ca6adeede72af8b7756d20745b18630d', '<p>Dengan demikian, Sebab, ketika, Akibatnya<br></p>', 0, 2),
(304, 'a71c7aee700a74cd2d399309d861d35a235208a4', '65c51092ca6adeede72af8b7756d20745b18630d', '<p>Akibatnya, Karena, ketika, Sehingga<br></p>', 0, 3),
(305, '26ba2f712caead3880e6023ad07da4ba3dbe820a', '65c51092ca6adeede72af8b7756d20745b18630d', '<p>Sehingga, Ketika, bagi, Akibatnya<br></p>', 0, 4),
(306, '2a40a4e4292fa6bd2f52370cd86b7536ceef3265', '41ca001c7b59cf91e44728a374f5d7c958076737', '<p>Untuk mempromosikan hasil kerajinan rakyat, di Gedung Balaikota Semarang akan diadakan pameran produksi kerajinan rakyat kota Semarang.<br></p>', 1, 0),
(307, 'e09a0cc52872b093ed7108f2025d6964852c26db', '41ca001c7b59cf91e44728a374f5d7c958076737', '<p>Untuk mempromosikan hasil kerajinan rakyat, di Gedung Balaikota Semarang akan diadakan pameran produk kerajinan rakyat kota Semarang.<br></p>', 0, 1),
(308, '8ec520cc6ac5465e73d40e4df629ef415a04fb27', '41ca001c7b59cf91e44728a374f5d7c958076737', '<p>Demi mempromosikan hasil kerajinan, di Gedung Balaikota Semarang akan mengadakan pameran produk kerajinan rakyat kota Semarang.<br></p>', 0, 2),
(309, '23c18f0140b9533cd2fe809ddd67d7e7816b75bb', '41ca001c7b59cf91e44728a374f5d7c958076737', '<p>Demi mempromosikan hasil kerajinan, di Gedung Balaikota Semarang akan diadakan pameran produksi kerajinan rakyat kota Semarang.<br></p>', 0, 3),
(310, 'ae6319169f3783a36ca694727d429d67b9bd8f77', '41ca001c7b59cf91e44728a374f5d7c958076737', '<p>Demi untuk mempromosikan hasil kerajinan, di Gedung Balaikota Semarang akan diadakan pameran produk kerajinan rakyat kota Semarang.<br></p>', 0, 4),
(311, '1e65243af32d1dc9eddf6d77dd6bacf8e349c109', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', '<p>Radio pada mobil merupakan <em>asesori </em>yang digemari oleh banyak konsumen.&nbsp;<br></p>', 1, 0),
(312, 'b1fafafd13e139238ac26bcc1e69c08ce833248c', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', '<p>Tarian itu dianggap <em>akseptebel </em>untuk ditampilkan di depan tamu.<br></p>', 0, 1),
(313, '2da5d11885bfbedf1911adf21a7f78ae6635209b', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', '<p>Pada zaman penjajahan di kota Malang terbit banyak koran. Koran-koran tersebut tidak dapat terbit secara <em>kontinyu.&nbsp;</em>​<br></p>', 0, 2),
(314, '240b9ebcd0bf6d0b5cd88d087a38726ec3fdf7ee', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', '<p>Pematuhan terhadap prinsip kerja sama dan prinsip kesopanan akan melahirkan komunikasi yang <em>bonafide </em>sekaligus melahirkan pula wacana yang wajar.&nbsp;<br></p>', 0, 3),
(315, '5cb3a806b9a15fc07fbdb45f3250d5d986990514', 'b99919c6b1f944e4b28179c12c23636c7f37c4d8', '<p>Komunikasi merupakan syarat esensial bagi terciptanya prasyarat tumbuhnya kegiatan yang terbuka, yang tidak <em>elit.&nbsp;</em>​<br></p>', 0, 4),
(316, '064963c616f90854c180dcd6ef43845f0d7661f0', '9c480275c118fcb06cd60384fe3298761e691db2', '<p>menyelamatkan, berhadapan, kembalinya<br></p>', 1, 0),
(317, 'a6bfc2ebe9f77efd74d26b849ae7efeb4be2ad07', '9c480275c118fcb06cd60384fe3298761e691db2', '<p>penyelamatan, menghadapi, dikembalikan<br></p>', 0, 1),
(318, '89dbeaa4a069606912f2d4ea9ba4b116b571a082', '9c480275c118fcb06cd60384fe3298761e691db2', '<p>diselamatkannya, dihadapkan, mengembalikan<br></p>', 0, 2),
(319, '6432bb989508aad97057f51252afeb4671a4c2e8', '9c480275c118fcb06cd60384fe3298761e691db2', '<p>kesalamatan, menghadapkan, pengembalian<br></p>', 0, 3),
(320, 'b25872c6f9a4b1aac389a3605956ee680ebc712d', '9c480275c118fcb06cd60384fe3298761e691db2', '<p>menyelamatkan, menghadapi, kembali<br></p>', 0, 4),
(321, '6f988d5076cdac391df9285ca3784803a8114575', '0730b474c9456446d0ad299b53edda4a97de31ea', '<p>Para karyawan dibayar mahal, sehingga kapan pun mereka dituntut untuk profesional.</p>', 1, 0),
(322, '61e4eed883f94737f150bbd4c669235bc499c9c5', '0730b474c9456446d0ad299b53edda4a97de31ea', '<p>Para karyawan dibayar mahal, sehingga kapanpun mereka dituntut untuk professional.<br></p>', 0, 1),
(323, '5c31791f1137935c422e897cea9e9c5cd96241ea', '0730b474c9456446d0ad299b53edda4a97de31ea', '<p>Para karyawan di bayar mahal, sehingga kapanpun mereka di tuntut untuk profesional.<br></p>', 0, 2),
(324, '625b19395ece01e90c5093f6c9bfc1572e7882dd', '0730b474c9456446d0ad299b53edda4a97de31ea', '<p>Para kariawan dibayar mahal, sehingga kapan pun mereka di tuntut untuk profesional.<br></p>', 0, 3),
(325, '2e404d59cd163050bd5af97be07514b49ba0413b', '0730b474c9456446d0ad299b53edda4a97de31ea', '<p>Para kariawan di bayar mahal, sehingga kapan pun mereka dituntut untuk professional.<br></p>', 0, 4),
(326, '3c8f84fed07f88c228321792e44db42b4170684d', 'ae67ee451b4d95ae02061badcd2f736591a1215d', '<p>Menasihati anak untuk menuntut ilmu.<br></p>', 1, 0),
(327, 'b50a3397e60ac1c531180e8e9090a7e383b8fc17', 'ae67ee451b4d95ae02061badcd2f736591a1215d', '<p>Merasa marah karena anak tidak segera menentukan pilihan.<br></p>', 0, 1),
(328, '77a33aac0b8184eae6748bc95b9a55dd0c80efa3', 'ae67ee451b4d95ae02061badcd2f736591a1215d', '<p>Tidak bisa membiayai anaknya bersekolah.<br></p>', 0, 2),
(329, 'a7956acc8df5d0db9ebfd1e21a72b4a1910dcec1', 'ae67ee451b4d95ae02061badcd2f736591a1215d', '<p>Anak yang tidak bisa menentukan pilihan.<br></p>', 0, 3),
(330, '667fcd9fab2b0171890fb0bfc915295acf2d581b', 'ae67ee451b4d95ae02061badcd2f736591a1215d', '<p>Sedih melihat anak yang tidak segera mendapat pilihan tetap.<br></p>', 0, 4),
(331, '55afb120f4acd411e2f64f627dd28c2bbb7661ec', '80c76cd575adc6d71d8953b9afad01f2909775cb', '<p>dengan surat ini seharusnya bersama surat ini<br></p>', 1, 0),
(332, 'ada342ac58e862b47add000f8e7d6fb36ba8c0f7', '80c76cd575adc6d71d8953b9afad01f2909775cb', '<p>bahan pertimban<em>gan </em>seharusnya <em>bahan pemikiran</em><br></p>', 0, 1),
(333, '9111e9d50753772200025de5cbc843762ffc6b3b', '80c76cd575adc6d71d8953b9afad01f2909775cb', '<p><em>yang harus dilengkapi </em>seharusnya <em>yang dipenuhi</em><br></p>', 0, 2),
(334, '77a640cbe41d77ed28bb4e9dd6e47914d4ea5ae0', '80c76cd575adc6d71d8953b9afad01f2909775cb', '<p><em>antara lain </em>seharusnya adalah <em>sebagai berikut</em><br></p>', 0, 3),
(335, '71587e771cdc023c5bc0112a77c1cf019675af96', '80c76cd575adc6d71d8953b9afad01f2909775cb', '<p><em>lampirkan </em>seharusnya <em>sertakan</em><br></p>', 0, 4),
(336, '8d97445074bb33b78ef65c6a658576c70901ca76', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', '<p>Kekeringan menghantui warga<br></p>', 1, 0),
(337, 'f1a11e6fb46afb7170f1a04c470fd90eb68d2dd5', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', '<p>Kekeringan harus dapat diantisipasi dengan baik<br></p>', 0, 1),
(338, 'aef74010b49c0468fd9b792b12b22e52e712b12b', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', '<p>Kekeringan hanyalah sebagian dari kemiskinan<br></p>', 0, 2),
(339, '746f20bd3e6a7578e12277b4ada7096eb7de3cb3', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', '<p>Kekeringan sangat menyengsarakan kehidupan masyarakat<br></p>', 0, 3),
(340, 'c34f1477ef5f83e341da0b3bc130a8801701e110', 'f04fee87e8615a5f5dc4fae1d49c87cb0f909ad8', '<p>Kekeringan harus jadi pelecut untuk tetap bekerja keras<br></p>', 0, 4),
(341, '1fdf6445d069630108b8632901b2fead52982158', 'f99d619783dc82885747681e1a0dd2a3bac37330', '<p>Tabiat manusia seperti ular.<br></p>', 1, 0),
(342, 'ed5b157eaa66e4e820060c7d0ea02a56f16521ca', 'f99d619783dc82885747681e1a0dd2a3bac37330', '<p>Nasihat raja kepada Dimnah<br></p>', 0, 1),
(343, 'bb5aafba5ce9528605275bd9aeb95c568f7d801d', 'f99d619783dc82885747681e1a0dd2a3bac37330', '<p>Kemarahan raja kepada Dimnah.<br></p>', 0, 2),
(344, '2f6db90acfff80b22f63ef0b048e4202445a4481', 'f99d619783dc82885747681e1a0dd2a3bac37330', '<p>Sifat manusia penyabar ibarat kayu.<br></p>', 0, 3),
(345, '816f03e60dc147fee781f159d7dbafa4261d0663', 'f99d619783dc82885747681e1a0dd2a3bac37330', '<p>Raja heran mendengar ucapan Dimnah.<br></p>', 0, 4),
(346, '72211677e05880be3483693f27c946643a97dc02', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', '<p>Dampak Penghematan Buah Impor Bagi Pedagang Di Pasar Tradisional<br></p>', 1, 0),
(347, 'da87d0a06ae1aa1d1b5fe4b9a6f5051ee5c2e5a4', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', '<p>Dampak Penghematan Buah Impor Bagi Pedagang di Pasar Tradisional<br></p>', 0, 1),
(348, '9725c10000db7fec939960fbee2287c1328e422e', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', '<p>Dampak Penghematan Buah Impor bagi Pedagang Di Pasar Tradisional<br></p>', 0, 2),
(349, '89966e75d46518bd04e524df0b26a6f353613d6e', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', '<p>Dampak Penghematan Buah Impor bagi Pedagang di Pasar Tradisional<br></p>', 0, 3),
(350, '429f711816f8fa20a535f2c1c79785c06c8163e5', 'a5b9cb4195a6b918c9b8a32258e4ffe54a35ca70', '<p>Dampak Penghematan Buah Impor bagi Pedagang di Pasar Tradisional<br></p>', 0, 4),
(351, '6b1a6ca5d0583e9199ba0218fc3308ad3aa11146', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', '<p>Uraian pengarang&nbsp;<br></p>', 1, 0),
(352, 'cad8c1309409b2ce1e2ed489f9798a3da6d3f060', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', '<p>Lingkungan tokoh&nbsp;<br></p>', 0, 1),
(353, '6f3dd526818a875a0f610b60aa6614b07c9e4454', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', '<p>Dialog tokoh lain<br></p>', 0, 2),
(354, 'cd43ed202e0c5cdef48e7339e83c5219ed85a282', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', '<p>Gambaran fisik tokoh<br></p>', 0, 3),
(355, '11d9f72821cf8299cf436731cf126f40f16b7621', '5bb077ea3147ec658f8ae5e5ef30e063ad31a5cf', '<p>Pikiran-pikiran tokoh&nbsp;<br></p>', 0, 4),
(356, 'f92787d22021eaa385ed756a8943d807786c6f23', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', '<p>Celana "jengki" sudah tidak populer lagi di Indonesia.<br></p>', 1, 0),
(357, 'ef024d099b2f35087bc8fbdf4e379090122735f8', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', '<p><em>Rate of inflation, </em>Maju inflasi'', di Indonesia memang agak tinggi pada bulan Oktober 2000.<br></p>', 0, 1),
(358, 'f18b8d9344ac6e10bbfcb96a705e5499ddb3fc4e', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', '<p>Surat yang dikirimkan itu No: 124/PP/Pes./I/2001.<br></p>', 0, 2),
(359, 'f1b978112941b97a5b34a5c5803eb99f55abfee8', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', '<p>Ali bertanya: "Di mana kaubeli buku ?"<br></p>', 0, 3),
(360, '4f411dd8b91167ee45cf3cea3d542097ffc4623a', 'ca75fa2e14ba8f8571adc3e4e99e8c068328c0b5', '<p>Ia bertempat tinggal di Jalan Diponegoro 1V-5.<br></p>', 0, 4),
(361, '2448c43638b37dd4165f981852796ab1ebf7b83e', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', '<p>Kalimat utamanya menyatakan hubungan sebab dan akibat.<br></p>', 1, 0),
(362, '16715bb220520b2ce8a76772b2b2811c16a99680', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', '<p>Kalimat pertama menyatakan sebab dan kalimat lainnya menyatakan akibat.<br></p>', 0, 1),
(363, 'aa28bc1b1425ee6956ed5002da6ecdca3c3ae846', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', '<p>Kalimat&nbsp;&nbsp; ketiga&nbsp;&nbsp; menyatakan&nbsp;&nbsp; sebab, sedangkan kalimat lainnya menyatakan akibat.<br></p>', 0, 2),
(364, 'dde7ea616f0aa16140a0dcb12dc23ca40558d0e9', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', '<p>Kalimat pertama dan ketujuh menyatakan akibat, sedangkan lainnya menyatakan sebab.<br></p>', 0, 3),
(365, '8453bd3993ba2774f73a0795c232f0923ebe8cee', 'f66a6f0acf0ef06b6bd5c89fc524638325af7cd6', '<p>Kalimat&nbsp; ketujuh&nbsp; menyatakan&nbsp; akibat, sedangkan kalimat lainnya menyatakan sebab.&nbsp;<br></p>', 0, 4),
(366, '256c1fe39cdbd4e21c60cf88603c0703e137f7a2', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', '<p>kurangnya tanda koma (,) sebelum kata <em>diharapkan.&nbsp;</em>​<br></p>', 1, 0),
(367, '79f55bde64061a456967464820b89b3d6f61c7e2', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', '<p>pemakaian kata <em>dengan.&nbsp;</em>​​​​</p>', 0, 1),
(368, '93e343db44ed5e8de29132c98b3c009439428a05', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', '<p>gabungan kata <em>bank syariah </em>yang ditulis dengan huruf kecil.&nbsp;<br></p>', 0, 2),
(369, 'f872d7c3f8f08744243e1836e43cc87936b57d28', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', '<p>pemakaian <em>pengembangan </em>yang seharusnya <em>perkembangan.&nbsp;</em>​<br></p>', 0, 3),
(370, 'd4407618dbeb7620ef92bba8f10d4595c93f59ca', 'bb17e27e39f9f14c3c0d9f04407d239632fe63aa', '<p>pemakaian tanda koma (,) sebelum kata <em>dan.&nbsp;</em>​​</p>', 0, 4),
(371, '6494e9058cf0f7365bb8f5fc3c9a9965936afe50', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', '<p>Kegiatan perkuliahan dimulai, semua kewajibanpun administrasi harus diselesaikan.&nbsp;<br></p>', 1, 0),
(372, '1641a9a4f2b95793a4770913f0c6016d22aae9fb', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', '<p>H. Krupper, seorang ahli pra sejarah, melaporkan bahwa telah ditemukan situs Bukit Karang di daerah Langsa.&nbsp;<br></p>', 0, 1),
(373, '27a767624460bd20ae1447e9a16e25127ae80f6e', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', '<p>Akhirnya, Diana mendapatkan izin belajar ke luar negeri setelah berjuang bertahun-tahun.&nbsp;<br></p>', 0, 2),
(374, 'b25b3be5f426216359813bfe2cdc918105d6e0ef', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', '<p>Hari Jum’at yang lalu, hujan deras mengguyur Jakarta seharian.&nbsp;<br></p>', 0, 3),
(375, 'e0d1e5ccc804d2efb2f189cb76a2c91221c3f8d0', '45ba86347ee7df4a0f3b6cffa512c0e4274c1507', '<p>Kami tidak bisa menerima surat tersebut, karena faksimile di kantor kami sedang rusak.&nbsp;<br></p>', 0, 4),
(376, '66e520e9393d95d2cb29ee2afd228607855fa61f', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', '<p>pengenalan situasi cerita (<em>expocition</em>)<br></p>', 1, 0),
(377, '742d1007484223f65e5bca804ed7c2d70864cebc', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', '<p>pengungkapan peristiwa (<em>complication</em>)<br></p>', 0, 1),
(378, '753b43109af2a8c9121f3d5c3de83bcaafcb6bb1', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', '<p>menuju pada adanya konflik (<em>rising action</em>)<br></p>', 0, 2),
(379, 'eb80ecd165cbcc7ac813e99f9985c21b98d2de9c', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', '<p>puncak konflik (<em>turning point</em>)<br></p>', 0, 3),
(380, 'eaea2c2f9216584eb814087e38dcf401d0a6021e', 'a0d6a33412ecd333aee0b9a14de3950f4a192b6d', '<p>penyelesaian (<em>ending)</em><br></p>', 0, 4),
(381, '535c3f543c3e10c939711d6d4c9b89842b3285f7', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', '<p>1-2-3-4<br></p>', 1, 0),
(382, '48785952764af44eace0e598bad07c82f01d9baa', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', '<p>2-1-3-4<br></p>', 0, 1),
(383, 'e3352a27091077489c555937198f0ed42b122ed2', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', '<p>3-1-2-4<br></p>', 0, 2),
(384, '259934fbc524a24fd398a5605b8725b93cb7315d', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', '<p>4-1-2-3<br></p>', 0, 3),
(385, '08692da0a92ee016c4034373b274b9dd090987a3', '8cf21ef77733357b4bc1d162ebe88bb30558f7b3', '<p>2-1-4-3<br></p>', 0, 4),
(386, '591ff75147fd44bf39be5aeca4a33801c2e0a025', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', '<p>Seiring dengan kemajuan zaman, banyak hal mengalami kemajuan.<br></p>', 1, 0),
(387, '4938f2d1bf22f2a23809570db64694e0b9ef255f', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', '<p>Yang paling mencolok adalah kemajuan teknologi yang makin canggih dalam berbagai aspek kehidupan. Selain itu, secara ekonomis, masyarakat juga dapat makin menjangkau teknologi informasi dan teknologi kesehatan.<br></p>', 0, 1),
(388, '460dcd99a3431f978f78b0d70e885dde16374b53', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', '<p>Walaupun demikian, obat tradisional atau yang sering disebut jamu masih mendapat tempat di hati masyarakat.&nbsp;<br></p>', 0, 2),
(389, 'd99fe46613d8f8ea7ba4a50a02465195877548ea', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', '<p>Jamu dipercaya mempunyai banyak kelebihan jika dibandingkan dengan obat-obatan modern seperti yang banyak beredar di pasaran.<br></p>', 0, 3),
(390, 'b92cba14aa998a195244487d1347a4f84e9e4687', 'e5f88adb4e37e5036f56285320ae28fdc01d901a', '<p>Obat tradisional mempunyai efek samping yang lebih kecil apabila digunakan secara tepat, baik waktu penggunaan, takaran, cara pemakaian, pemilihan bahan maupun penyesuaian dengan indikasi tertentu.<br></p>', 0, 4),
(391, '9d3c19681e3d71930e548b823fa5c83bc6fc2da1', '24f2a97b155274192d3a90d9566d96e7e31b9d89', '<p>Hutan Indonesia memiliki keragaman hayati terbesar di dunia.<br></p>', 1, 0),
(392, '79f9aba85a73a73e6dd2950a1889408dda8910c2', '24f2a97b155274192d3a90d9566d96e7e31b9d89', '<p>Pengelolaan hutan sulit diperbaiki jika hampir semua wewenang diberikan kepada pemerintah provinsi.<br></p>', 0, 1),
(393, '4c6a533aef58fb540ea44ee649bc57b23622805c', '24f2a97b155274192d3a90d9566d96e7e31b9d89', '<p>Penyusutan hutan Indonesia seluas tujuh kali lipat provinsi DKI Jakarta.<br></p>', 0, 2),
(394, '0999c111c0f5a749a3a6832a2016c22065dd5f9a', '24f2a97b155274192d3a90d9566d96e7e31b9d89', '<p>Penetapan area kerja hutan desa dan hutan kemasyarakatan ditentukan menteri.<br></p>', 0, 3),
(395, '7989c3c69e933391aa34d13d2da252b14382adbe', '24f2a97b155274192d3a90d9566d96e7e31b9d89', '<p>Pemanfaatan ekonomi berbasis hutan masih belum dilakukan secara optimal di Indonesia.<br></p>', 0, 4),
(396, '0a14e0b4db52b02e7c2d2de7cd10436c87d00e50', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', '<p>Warga kota <em>memilih </em>calon yang populer. <em>Pilihan </em>dilaksanakan beberapa minggu yang lalu.&nbsp;<br></p>', 0, 0),
(397, '9809710b3772604d06dcb0602371734a8fcb5fb8', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', '<p>Sulit sekali <em>menentukan </em>masa depan keadaan negara kita. Para peramal saja tidak mampu memprediksi <em>ketentuan </em>seperti itu.&nbsp;<br></p>', 0, 1),
(398, 'a9474a720fe371933ed4f4d0b407fbc12798a47f', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', '<p>Para korban bencana luapan lumur Sidoarjo tidak tahu lagi ke mana mereka <em>harus mengadukan </em>nasibnya. <em>Pengaduannya </em>ditanggapi dingin di mana-mana.&nbsp;<br></p>', 0, 2),
(399, '4d64c2b633263e1c8144bb190395613226a1fc60', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', '<p>Para ahli hukum <em>meniadakan </em>ketentuan yang penting dari rencana undang-undang itu. <em>Ketiadaan </em>ketentuan itu menimbulkan perdebatan seru di parlemen.<br></p>', 0, 3),
(400, '8572b773ee0eda80e1964618b169fe43e2e5491f', '6545b8ca318fb9ab9e56e9ee5d36d5ec5d38cb4f', '<p><em>Pelapor </em>terjadinya kejahatan dilindungi undang-undang. <em>Laporan itu </em>disampaikan secara rahasia.<br></p>', 1, 4),
(401, '83d4fd2ebfd988b8be2d7713099330555b447a3f', '99983d45fd497196ff2a4750706074772a1d9521', '<p>Cloudy day.</p>', 0, 0),
(402, '2d33a75da6032dc3042cb0fcdc62fde1752d0928', '99983d45fd497196ff2a4750706074772a1d9521', '<p>Rainy season.</p>', 0, 1),
(403, 'e6f5a9a3df992e7bce717c616c02cef447e23f3f', '99983d45fd497196ff2a4750706074772a1d9521', '<p>Nice weather.</p>', 1, 2),
(404, 'd867eddafddaa5d0fecba975d1766544ca97d483', '99983d45fd497196ff2a4750706074772a1d9521', '<p>Morning walk.</p>', 0, 3),
(405, 'dfb4a6d7ac0045ba1aca22e0a1468ba342adce20', '99983d45fd497196ff2a4750706074772a1d9521', '<p>Weather forecast.</p>', 0, 4),
(411, '9db2467cf8ff01a581ee3e8bd6dba10f942de882', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', '', 1, 0),
(412, '14d72e4cf05b0868156cecb5175a52b935aaf5b5', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', '', 0, 1),
(413, '111e267089000a24a92a0b713548ac1de497f749', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', '', 0, 2),
(414, 'd3d9cd0fb090b4eae9f08e9b9734a0738201632b', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', '', 0, 3),
(415, 'e1aa863e8b62bef069844f6b670fc90f96b5e476', '3cf925fc322cc2bb7c4b50e880ed772481018ddd', '', 0, 4),
(416, '82973b9a5e62a40e98bd8c92b094e113f865daa4', '8a29d69774ef268913675c2a720a7888b021028a', '<p>He didn’t get enough vacation time.<br></p>', 0, 0),
(417, '44c590e58ed5b8aee4fa492a40f6b9d490d51df3', '8a29d69774ef268913675c2a720a7888b021028a', '<p>It was far away from home.<br></p>', 0, 1),
(418, '24f70841999bbc66701aa48a761db1be0f0465b6', '8a29d69774ef268913675c2a720a7888b021028a', '<p>It wasn’t close to home.<br></p>', 0, 2),
(419, '8498e61a050eeb9d9d3a3ae4ccb1cc64a754fcd1', '8a29d69774ef268913675c2a720a7888b021028a', '<p>The work was too slow.<br></p>', 0, 3),
(420, '40536f82e0ff6b79302bb7b6221f940903e19b4b', '8a29d69774ef268913675c2a720a7888b021028a', '<p>The pay was to low.<br></p>', 1, 4),
(421, '7746c1929e9088f204a9c55ae70454459c1eff33', '44580e4a00e802254295f06afbd9c48e391b51a2', '<p>At home.<br></p>', 0, 0),
(422, '0b75d2989521e5421c89cc9637ea6bc9360e8752', '44580e4a00e802254295f06afbd9c48e391b51a2', '<p>On vacation.<br></p>', 1, 1),
(423, '33a1d02837a95689a44588d3aeac297fbde3a1ae', '44580e4a00e802254295f06afbd9c48e391b51a2', '<p>At the meeting.<br></p>', 0, 2),
(424, 'b9f94254cc2ec84a5a6d9f2af822035f946e14e4', '44580e4a00e802254295f06afbd9c48e391b51a2', '<p>On a business trip.<br></p>', 0, 3),
(425, 'e7d17f3e3d5251fa30597259161a95fa0cc6867d', '44580e4a00e802254295f06afbd9c48e391b51a2', '<p>At the train station.<br></p>', 0, 4),
(426, '6a80355eff0848801a21c042dd74bdd6474814c3', '8311cc80170420afa21b6dde55b44063051b2d7b', '<p>The hotel is far away.<br></p>', 0, 0),
(427, '537756f2483fb811baaadbd500c5eb844d8d9ab5', '8311cc80170420afa21b6dde55b44063051b2d7b', '<p>He couldn’t see any art.</p>', 0, 1),
(428, '0fc5082a54c0950dc003738eab17ff607d232ce4', '8311cc80170420afa21b6dde55b44063051b2d7b', '<p>The park is not far away.<br></p>', 0, 2),
(429, 'a03ba5db0af8c8c981147769f12bf8acd6ba2e81', '8311cc80170420afa21b6dde55b44063051b2d7b', '<p>The tickets were so expensive.<br></p>', 1, 3),
(430, '608df2e542536cdb7b961d90104a6f546fcd4e49', '8311cc80170420afa21b6dde55b44063051b2d7b', '<p>The museum is closed at night.<br></p>', 0, 4),
(431, 'b0623d6c86f585c7b3ab2d4a02ac55df17dddcd1', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', '<p>Try to get a loan from a bank.<br></p>', 1, 0),
(432, '5e8a2336d122e43b0025aa6e161ac45a232dc037', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', '<p>Work in a bank to get money.<br></p>', 0, 1),
(433, 'd15d8b311756407301995523cae42427f0cb08f8', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', '<p>Think about the course this semestr.<br></p>', 0, 2),
(434, '1d5dbb5ec4ae23b41c004729041f852a362c5a8e', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', '<p>Withdraw all his money from the bank.<br></p>', 0, 3),
(435, 'b15a319b98ec3e6237c4cb3c33d9ed2f02c07d1b', 'c2dd6f985f2f1fa48b7c5f49b459ed336d6ce639', '<p>Try to borrow money from other students.<br></p>', 0, 4),
(436, '2d7d5732f63cdbe5a3317ff1a1209d7aa703ebd2', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', '<p>Take the woman home.<br></p>', 0, 0),
(437, '893de641e4d43a404174a7ee669a3dac3e7e35b3', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', '<p>Leave with the woman.<br></p>', 0, 1),
(438, 'e6ade62bd4f7b8d23b8306f874a73a0472ffb1ff', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', '<p>Lock the computer lab later.<br></p>', 1, 2),
(439, 'c364b6002e00e8331868c963b2d055a92c46a83b', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', '<p>Show the woman where the lab is.<br></p>', 0, 3),
(440, '6af6da97e239eec9d36e04a2607f41a208f96618', '4cee5c3ab2cccccce5c8588bff440e9f21f4a324', '<p>Buy a new lock for the computer lab.<br></p>', 0, 4),
(441, '3de2b4317f20083f17dccb16e9b025c5c58f6f94', '3c581c3cabcd06f6b597f825c09265cb34cd278c', '<p>Take a picture.<br></p>', 0, 0),
(442, '5341742e564d4e77519d13885c21c06fa39cf477', '3c581c3cabcd06f6b597f825c09265cb34cd278c', '<p>Check the time.<br></p>', 0, 1),
(443, 'e5637d0ecef034845bbac03c87edf7b1447550d7', '3c581c3cabcd06f6b597f825c09265cb34cd278c', '<p>Enjoy the cruise.<br></p>', 0, 2),
(444, '544ac9f7701b06c3aca9bc902388f64c3c750741', '3c581c3cabcd06f6b597f825c09265cb34cd278c', '<p>Welcome the visitors.<br></p>', 0, 3),
(445, '9de8f57c258318e8e060fd53efafb6313f0489d3', '3c581c3cabcd06f6b597f825c09265cb34cd278c', '<p>Collect their personal items.<br></p>', 1, 4),
(446, '0fa692f3598ac2c84b8f3a4a40090560632faa19', '75e111060698785ae86ec02eebe3ea5cee9533e6', '<p>The water was rough.<br></p>', 0, 0),
(447, 'bf57d3fe3944d85a26c83d741ac150c6fffdd2bf', '75e111060698785ae86ec02eebe3ea5cee9533e6', '<p>The weather was poor yesterday.<br></p>', 1, 1),
(448, '161ce7713b37a3443e8e4dfc61fc9dc6b34072fe', '75e111060698785ae86ec02eebe3ea5cee9533e6', '<p>The tour went faster than usual.<br></p>', 0, 2),
(449, '3eaf82dc1f7c4a9b5153f26ea0244b8a5ceb164d', '75e111060698785ae86ec02eebe3ea5cee9533e6', '<p>There is only one way to exit.<br></p>', 0, 3);
INSERT INTO `soal_jawaban` (`id`, `kode_jawaban`, `kode_soal`, `isi_jawaban`, `status_benar`, `urutan_untuk_guru`) VALUES
(450, '447ce8740e27d368114c7a178ef9f5e43687cc2d', '75e111060698785ae86ec02eebe3ea5cee9533e6', '<p>The weather was nice yesterday.<br></p>', 0, 4),
(451, '4971c4886561d822421919abd44abebe676732a7', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', '<p>The market will open.<br></p>', 0, 0),
(452, 'ef4ac0ce6b18b374059c5080e20ca845eb8173f9', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', '<p>They will go to the market.<br></p>', 0, 1),
(453, 'e7490315b906f5cab091ec4b4f7237a6385e8be0', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', '<p>The ship will arrive at the dock.<br></p>', 1, 2),
(454, '8ed732d8621ca3cf02a08354c4fe6b57d40a581e', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', '<p>The passengers will go shopping.<br></p>', 0, 3),
(455, '6359179be163cdc50c82bb46349cf40e3d8950ef', '1aea9bfa2225eec71d766f6f2c4289f104a4144e', '<p>The passengers will take photos of the ship.<br></p>', 0, 4),
(456, '82f2b8bf2794d92bf48fa76dddfa52cbc91ac6ca', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', '<p>To predict weather conditions.<br></p>', 1, 0),
(457, '8fbf35a3ff64598433e14817990e07539af97bd7', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', '<p>To present classic rock music.<br></p>', 0, 1),
(458, '59735ca3d70ccf91e989e399d7dc9c85f150dc00', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', '<p>To estimate the chance of rain.<br></p>', 0, 2),
(459, '35be730b271d23d1576f65837c9490e63f10ee17', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', '<p>To prepare for the weekend.<br></p>', 0, 3),
(460, '520c054c386ab7d300c1f31014ac48da997e1cbc', '34015b4e0fdd760ac3a04284db58c9e80bcfb53d', '<p>To list high temperatures.<br></p>', 0, 4),
(461, '08bc073777d572fc55e4ed9305f0b2ea412f25f5', '7686a2ba54ed99f532a1ee722386eeac80d698d6', '', 1, 0),
(462, 'd5f7fb48e2e7e0765fa9de1f83559ffebe5e21ef', '7686a2ba54ed99f532a1ee722386eeac80d698d6', '', 0, 1),
(463, 'b5d866db744ce348b02498cae0d7dfcf147fe776', '7686a2ba54ed99f532a1ee722386eeac80d698d6', '', 0, 2),
(464, '15fcd008e30fe5a875bf8e9f4faac1a0d3351b69', '7686a2ba54ed99f532a1ee722386eeac80d698d6', '', 0, 3),
(465, '852246e5ffda58f4b2553af483f5f6dad77fdb4f', '7686a2ba54ed99f532a1ee722386eeac80d698d6', '', 0, 4),
(466, '4c00e459345c55c8170aca274610faddda1a0337', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', '', 1, 0),
(467, 'fa3ef0124e90a6971db40a4db5db09d79c9ebe6b', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', '', 0, 1),
(468, '5075eca221cd02ff935fc6a5ee51a508c0a07567', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', '', 0, 2),
(469, '2bdd44122e8e489c35e905c7a5743f62e9441bae', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', '', 0, 3),
(470, '43c33a87386c925f3305a3e3d278b5bbf644a195', 'd2ac8bf81aa812a67da67b91ab7b1d291a997ffc', '', 0, 4),
(471, '3566d2dd1b3ce062507d6a4a586f0fda6a3df348', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', '', 1, 0),
(472, '5c33011efa9da8a09aeaafefb4784296f170cc0f', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', '', 0, 1),
(473, '998a3eb0b888b284f8c831cf3d67c7c833a8de6c', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', '', 0, 2),
(474, '78f6e72b6f3dd128ac41d54ade8d8cca65e21f45', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', '', 0, 3),
(475, 'a54ad2ff13c39371da07a4f4d234654589438871', '4fe60436f8b4982e79ec2fe8b9bc7c3aa16f95b7', '', 0, 4),
(476, '0719e17c5495cc7cf8eba00215a79efa5dde83c4', '5543a28b895730f883a2e702378d6c1a47fb6879', '', 1, 0),
(477, 'f71e90ff09ead29b3d0d746dd8b3f3ced97c18b9', '5543a28b895730f883a2e702378d6c1a47fb6879', '', 0, 1),
(478, '5e7301dccad8ba6b6fbf757176a602d8500e21f9', '5543a28b895730f883a2e702378d6c1a47fb6879', '', 0, 2),
(479, '044bb407a89bae18f31f30468e04ab491ff5bddd', '5543a28b895730f883a2e702378d6c1a47fb6879', '', 0, 3),
(480, '39df398e60cabb47d1e300c3acfc144c55450dcb', '5543a28b895730f883a2e702378d6c1a47fb6879', '', 0, 4),
(481, 'ff800be8cfacdd4deeeb78de0c53f2a1fce5e6cb', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', '', 1, 0),
(482, 'ac8c24fbb314b92a69c6dc575f087dbf19d728ad', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', '', 0, 1),
(483, '51db0d6c1930b2ffcec44c420c97cbd8336cfd5d', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', '', 0, 2),
(484, 'f6d33c9eb3688661c216e74e340c800441dc569f', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', '', 0, 3),
(485, 'f30164ea88d1b63262aea153b91b0597d7c8f061', 'ad846a87ee6394f421bcf1a00dc1e3cf3f18fd0b', '', 0, 4),
(486, 'add7f78124634d64952e5d47475f97d7ea7ab64c', '8de090434269c0fa41bdba7b2defe951fa71f843', '<p>Why did PT send a letter to PT Internusa?<br></p>', 0, 0),
(487, '760d6f0c3e667932843f7f9122e38bf17d15a19d', '8de090434269c0fa41bdba7b2defe951fa71f843', '<p>The distributors like to add them in their offering<br></p>', 0, 1),
(488, 'e3dfa22760f40fc1da1d08686983b339acc37997', '8de090434269c0fa41bdba7b2defe951fa71f843', '<p>The distributors like to add them in their offering<br></p>', 0, 2),
(489, '026e9fe283883134e49ff7ddee9408d104f3c022', '8de090434269c0fa41bdba7b2defe951fa71f843', '<p>The distributors like to add them in their offering<br></p>', 1, 3),
(490, 'ef6e8342ce6e0a00d31d41aacfb7b4bb307bff93', '8de090434269c0fa41bdba7b2defe951fa71f843', '<p>The distributors like to send the product and combine it with other products<br></p>', 0, 4),
(491, 'a1965e5d49375008a33c69e10cfd4ab1e27e2f94', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', '', 1, 0),
(492, '1993cc54cea201aeadfe7e56a16d18149f9e4f06', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', '', 0, 1),
(493, 'b407589d0ec32c9474155411adbf664190c877fb', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', '', 1, 0),
(494, '442520a5b504b7ca52463a5cb20b5391ce62c481', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', '', 0, 2),
(495, '4596c3aa783532189a2eb5840be345c5a488b266', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', '', 0, 1),
(496, 'b5b69c37d20e87e3dea565e7a26245f65a481441', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', '', 0, 3),
(497, 'b61af0e0d9b4627435b1f59312a1b22c562c8fea', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', '', 0, 2),
(498, 'b0757c35debb5bd747180a107e0fbfc50e01fc80', '11458cd26b0d35c4f8b5d25258cda56dfad6a80b', '', 0, 4),
(499, '01d4988ac90089fbfcda9420641e7280e725d08f', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', '', 0, 3),
(500, '3e20d20258d8c74f3b29895f56fdd794c71ec1bd', '5a7deb492de46796c20d236f19c3efd644a58695', '', 1, 0),
(501, '4c86ecf3f429a45b338b03305bd5bc3a244d6c7d', '31bce6d952b8c64d28e9a89aafb587b4a8e7ceb3', '', 0, 4),
(502, 'ac660594bf809a3dc9fdacba9329eab51a87865b', '5a7deb492de46796c20d236f19c3efd644a58695', '', 0, 1),
(503, 'e01d052f4052a3f4dec00a9cb44f870f3a9f4d4d', '5a7deb492de46796c20d236f19c3efd644a58695', '', 0, 2),
(504, 'adac08117c7d7c711922a885ef52fe897d4847ec', '5a7deb492de46796c20d236f19c3efd644a58695', '', 0, 3),
(505, '105384ccd2161157dcef022d30f1565689221258', '5a7deb492de46796c20d236f19c3efd644a58695', '', 0, 4),
(506, '0ac47c3c291bb51d3f9ff998a7a8413236b68ed8', '74ca44a2150d19731b7f31880d1b250239957a71', '', 1, 0),
(507, 'a63ede08e3aa7bb4780cecea4c428929992d85e0', '74ca44a2150d19731b7f31880d1b250239957a71', '', 0, 1),
(508, '2426c5071daa276809cd239d86b3a7d7ab5904fc', '74ca44a2150d19731b7f31880d1b250239957a71', '', 0, 2),
(509, 'f65b8dce635dd64ce9b3989542e71a9cdd9a4e6f', '74ca44a2150d19731b7f31880d1b250239957a71', '', 0, 3),
(510, '97e9e143ed0ac61084c151d5168f1b36da880278', '74ca44a2150d19731b7f31880d1b250239957a71', '', 0, 4),
(511, 'c3c1a292299eb09cd2e50f4bd378a7736bc7516f', '4e0370105eac3b8b66605c97b64baabf6f55bf87', '', 1, 0),
(512, '0084b93903a93be60c664a4836797c4294d60481', '4e0370105eac3b8b66605c97b64baabf6f55bf87', '', 0, 1),
(513, '8f76c832f4edaf7f172cc98fe6b1bb6bb9003418', '4e0370105eac3b8b66605c97b64baabf6f55bf87', '', 0, 2),
(514, 'ebc11daa7eaf8d0e15429b820832e7119af27025', '4e0370105eac3b8b66605c97b64baabf6f55bf87', '', 0, 3),
(515, '4676dc0a1bb0b7d1e8b729f4149e9be9eba96f4f', '4e0370105eac3b8b66605c97b64baabf6f55bf87', '', 0, 4),
(516, '1d74d0e87047d2d7b0c0c50018cb9cbcdc646dd3', '5854b66902739de808cdb4316fad8a669b4fe213', '', 1, 0),
(517, 'cc7655f20a27c77292c49cd9bd06a2aaee9b3424', '5854b66902739de808cdb4316fad8a669b4fe213', '', 0, 1),
(518, 'db18c33a6f5d491b7584a64521efc731ca1ad138', '5854b66902739de808cdb4316fad8a669b4fe213', '', 0, 2),
(519, 'f2abc046dd5f129f71979fdcf1bd5f4fd941a4cd', '5854b66902739de808cdb4316fad8a669b4fe213', '', 0, 3),
(520, 'abdb878260745eda0d4390ea7a7b173cb718cd38', '5854b66902739de808cdb4316fad8a669b4fe213', '', 0, 4),
(521, '9acaad3cdba0869b9faa93395184876aa67f7468', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', '', 1, 0),
(522, 'f226c6ee22263aba2265a7353f7c370162df6c29', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', '', 0, 1),
(523, 'e53ce6431819d51786033dc2ba8a8efdc03b138c', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', '', 0, 2),
(524, '3e28e2fef62989efedc3362a4936bd3fb8d439d0', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', '', 0, 3),
(525, '13d684c5ef4a7379d80e8592f005eff9a624db5f', 'c4b17a576505fbfd1fa3233680ace2accae13e0e', '', 0, 4),
(526, 'd3187f4f9064094212522d5c4901c85127a9e8f4', '17c32c46c03002e9daf1453b5a1dd0060f37366f', '', 1, 0),
(527, '37cdfffacfec54199ef9cdfd01c2248bf79126a5', '17c32c46c03002e9daf1453b5a1dd0060f37366f', '', 0, 1),
(528, '8006c093a68313e9ef515326a2f232ea3779878b', '17c32c46c03002e9daf1453b5a1dd0060f37366f', '', 0, 2),
(529, '76143c80251675bbbeb0567a28675a48591794a7', '17c32c46c03002e9daf1453b5a1dd0060f37366f', '', 0, 3),
(530, '2a59df744846ca2f87154537e871f47fb310833d', '17c32c46c03002e9daf1453b5a1dd0060f37366f', '', 0, 4),
(531, 'dcb95655588e15574d28b1724494aa8eb590db5a', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', '', 1, 0),
(532, '05c82aa7b5e3258f4baf152d487544dc723afaad', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', '', 0, 1),
(533, 'a0e74b485b9553fbbe50c5e3d7b2f8b6d6788692', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', '', 0, 2),
(534, '1499577f49a4630377a4f7de5d2f3cbf204ee586', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', '', 0, 3),
(535, '7a2a84865ae946507bc07dff7a2fa1ab7d5733e5', '0413d24db9ef0315dec96ced178c76bfad9a8ea2', '', 0, 4),
(536, '6f7b58cdbee093fa5ab1f99d7cbaf3a902640252', '01a26a6edb4a00eb762808fbaf580f3241530832', '', 1, 0),
(537, '1f7f754dabe811ff1a006a3bd63515aae5f38676', '01a26a6edb4a00eb762808fbaf580f3241530832', '', 0, 1),
(538, 'd24e1276b92a5d5349660ff496a8952e9657bc0a', '01a26a6edb4a00eb762808fbaf580f3241530832', '', 0, 2),
(539, 'f47e5c73472d23cfeb4684ec17b449e89f397335', '01a26a6edb4a00eb762808fbaf580f3241530832', '', 0, 3),
(540, '78f7351c8be8a5b87b4c2535f92950a0852796e4', '01a26a6edb4a00eb762808fbaf580f3241530832', '', 0, 4),
(541, '38d2942bd61eb10945312a417476c11238477587', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', '', 1, 0),
(542, '38d1607102c052e0d54c79559d5dd19aae16d6e9', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', '', 0, 1),
(543, 'ba6a7187a8b7479a613116c1678f185bde78e5f7', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', '', 0, 2),
(544, 'd58c330012e4555ed72de93c274a555b27ced51b', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', '', 0, 3),
(545, '0de1f5edef773dfbf7069addec1c18af363a4b77', '5f13bc3a09dd6c51881e8a9af978284c4cf34078', '', 0, 4),
(546, '866109d47f4ead04a18f8821883f12b0b590b138', '0f718616f6f3d211d0687969a79bab4fc5e02e86', '', 1, 0),
(547, 'd6a1e77d19d2f6d35b80b0081ca298d3c277a2e2', '0f718616f6f3d211d0687969a79bab4fc5e02e86', '', 0, 1),
(548, '325d75b927e9778daa9e501f632d526429e14b24', '0f718616f6f3d211d0687969a79bab4fc5e02e86', '', 0, 2),
(549, '655cad367482fdeca2f255fcf0d906ab4b52c273', '0f718616f6f3d211d0687969a79bab4fc5e02e86', '', 0, 3),
(550, '8660d193e85c6b0d9f321ca4cc7291ef5fc537c5', '0f718616f6f3d211d0687969a79bab4fc5e02e86', '', 0, 4),
(551, '94084dd4239195fd524b364177c482cd7cc2a563', '12d2201bcbe257df7b78087e26ba97fab27a01f8', '', 1, 0),
(552, 'affe1ad63aaf5574385ef24bc26e2fe9a9581352', '12d2201bcbe257df7b78087e26ba97fab27a01f8', '', 0, 1),
(553, '74934e4f8ceafeac1c204dc0dc7c0e9f178c5440', '12d2201bcbe257df7b78087e26ba97fab27a01f8', '', 0, 2),
(554, 'f2d60c62ae40aa768d6c4f7466b5cb70044fd6e7', '12d2201bcbe257df7b78087e26ba97fab27a01f8', '', 0, 3),
(555, '4dec773aec087eed408808864b15889acb87ddaa', '12d2201bcbe257df7b78087e26ba97fab27a01f8', '', 0, 4),
(556, 'bf6585c220f73f27dfde1f147176c0af77800bc8', '1e2e5a8b191c84957ca923c1854ac8a64d982231', '', 1, 0),
(557, 'e63560afc04423d3771d4bc46a29ce260ead345a', '1e2e5a8b191c84957ca923c1854ac8a64d982231', '', 0, 1),
(558, 'feec59e026c46638a3dafce094ee9ed573ea9269', '1e2e5a8b191c84957ca923c1854ac8a64d982231', '', 0, 2),
(559, '2c413232316d6d8b2a1b714e504815558486aab6', '1e2e5a8b191c84957ca923c1854ac8a64d982231', '', 0, 3),
(560, '5f40f74bdcad16226521900ca8fe86b0ba7a8e83', '1e2e5a8b191c84957ca923c1854ac8a64d982231', '', 0, 4),
(561, 'a568172258b7651490238763a99e28e848f0848c', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', '', 1, 0),
(562, '42c5b2f1e3b587feba156c632d4a9810150624ad', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', '', 0, 1),
(563, 'fe5ff015f93d1d82fe8709dd3e996c28bf203724', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', '', 0, 2),
(564, '1ee1dc509c95308b8b650e08fd202b4ed43a79dd', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', '', 0, 3),
(565, '8a55d592c25293c74bf8143b0fa8f662b5b4d30a', 'dd595725ad528f94f0f7fce36158b5d77ced65a7', '', 0, 4),
(566, 'a2cb4d95125272f1293a5f1e8de1544a697aeea1', '5d0085795988b55ea633c629930e77533018c4a9', '', 1, 0),
(567, '3c0da2a580d6ac23337d5e7a64e0471e8e89e5cd', '5d0085795988b55ea633c629930e77533018c4a9', '', 0, 1),
(568, 'a307ba337ca69912376ff1b63e5da1bc47c15ae1', '5d0085795988b55ea633c629930e77533018c4a9', '', 0, 2),
(569, '2d8b9d852da73ce12fe7eee95eaa1a61e193f549', '5d0085795988b55ea633c629930e77533018c4a9', '', 0, 3),
(570, '980bde98dca687444fe3b59180356ca81b233134', '5d0085795988b55ea633c629930e77533018c4a9', '', 0, 4),
(571, '261d7cd04b5eb9c5269875fad8d2e2a642b861e8', 'e80501176d08d22ee0de237479c1942b578b31b0', '', 1, 0),
(572, 'ed6500cc1dfb3426154f818e1aa1071d3d76f051', 'e80501176d08d22ee0de237479c1942b578b31b0', '', 0, 1),
(573, '7ec2c9bb43cdf72cd93419b3aabbf16ab6a759a3', 'e80501176d08d22ee0de237479c1942b578b31b0', '', 0, 2),
(574, 'd854b78c621a10760b30caaf369f9c0e8cedec76', 'e80501176d08d22ee0de237479c1942b578b31b0', '', 0, 3),
(575, '8e888e135604447424e770555804c23abcab5e21', 'e80501176d08d22ee0de237479c1942b578b31b0', '', 0, 4),
(576, '713cd98b5d72e91af8055dd794d974433e102dca', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', '', 1, 0),
(577, '6e01351a3f902c6f1bc987f3dbf0f6368a4f524b', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', '', 0, 1),
(578, 'b15dde37a5c979dfa283bc0cd83c2e9162a4f8aa', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', '', 0, 2),
(579, 'a65024c72784923005a64c00a98fd097bd324b6e', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', '', 0, 3),
(580, '8f0b7fa1226e29d3f78b59bc5682e06b7bd95332', '44aae0c15ad0511cba35c7637c43d986c14f3b1c', '', 0, 4),
(581, 'bd171dd3e64e1c8caa1432c61104f1e3da1a63ae', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', '', 1, 0),
(582, '5aaba020e718398ef9fa05bbe9abe71228a47689', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', '', 0, 1),
(583, '4de9731dfc9f4c239bac777576a56e35dcc2422c', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', '', 0, 2),
(584, 'de0bd29d808479972a605ced53fefc997424bb67', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', '', 0, 3),
(585, '7eccf9e107e62dba12bafe809981e2cb9fa26e56', 'c407f0c8ed2c9b34985f285d5f28e15e7a71b80f', '', 0, 4),
(586, '02788006c6d91499f29ccb2e27253ab1a90b03bb', 'f1efd317a37c0deea1574465b137a71879b16c5d', '', 1, 0),
(587, '18cd6dbdea8cb693a52a72bff74aa068acffee47', 'f1efd317a37c0deea1574465b137a71879b16c5d', '', 0, 1),
(588, '9414f5ebc90799c8d438e804a4234fc620cdbe56', 'f1efd317a37c0deea1574465b137a71879b16c5d', '', 0, 2),
(589, '23b244ee885c8cf50c44d688b2e66df84b937d11', 'f1efd317a37c0deea1574465b137a71879b16c5d', '', 0, 3),
(590, '1c85dda409a8173b224a3eb4aafe035c1da17d41', 'f1efd317a37c0deea1574465b137a71879b16c5d', '', 0, 4),
(591, '7f96bbfc8b502d0bd4b0a6f99352b033c94e918c', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', '', 1, 0),
(592, '7defff96a31f61423ff4869f267e5bcc60892563', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', '', 0, 1),
(593, 'b4c4d63ba0e95c47a7563fda608c729c9ae9674c', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', '', 0, 2),
(594, '27ae3c61140776809b74e599547dc79d4d228d1f', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', '', 0, 3),
(595, '6d4777ec61112e7e976562ad0e4472b48259803d', '5ed7fbb73ef73580f35ec3dfd5fed4219a09a91b', '', 0, 4),
(596, 'c681a842f357909e5211c7608502cbce7484da00', '5deaf56ae2e2be8de911912de2488b76bc497a3d', '', 1, 0),
(597, 'a9ee714064908c94d5a57bc2965d4fa173826055', '5deaf56ae2e2be8de911912de2488b76bc497a3d', '', 0, 1),
(598, '487e4f2c94cc5ff1a8aaf086694d1a0bde5f2d9a', '5deaf56ae2e2be8de911912de2488b76bc497a3d', '', 0, 2),
(599, 'a261a1c1480a688651c3e3fc2c24f2c8d188d02a', '5deaf56ae2e2be8de911912de2488b76bc497a3d', '', 0, 3),
(600, '97db9158191ce5af1c78b6fb6d5911c3ff7e7e3f', '5deaf56ae2e2be8de911912de2488b76bc497a3d', '', 0, 4),
(601, '9bf00642211d0282b4ac8ea5c5c330ca849c5a6f', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', '', 1, 0),
(602, 'd222e7342e02614debc55370837cd564f57c9b49', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', '', 0, 1),
(603, 'b62c8b126d7a35542cbf27cdd82b0e6acfb822e0', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', '', 0, 2),
(604, 'e10cfd9133f3b299c9ffcc72e019718d5fbe3db2', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', '', 0, 3),
(605, 'b7bd9413c5b6e79e9d3fa2f86b1f88d402cb6b41', '2b8a752a69033a6a3b1cccfe972f30e26c6a8c98', '', 0, 4),
(606, '34b8effdf7c6bff97f162463f27f4c421c0804a5', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', '', 1, 0),
(607, 'a67e54eff92287b138f8667ba83fef73114a5180', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', '', 0, 1),
(608, 'd0539e6edd8aa889ebd172d28165a1ce7db9ed6d', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', '', 0, 2),
(609, '0c6c37ba797ae1f944fb132ae45af687a8b0f0bf', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', '', 0, 3),
(610, 'dd5b2bf048f7bf6bd7ab097b159ffbc0f4378fe4', '4f7d60c15ed1f3e46b572a6346fd7f2ff7ba9591', '', 0, 4),
(611, 'bbbc41f513cc6086093906670a651f2b0f193852', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', '', 1, 0),
(612, '945db6557f3026f86d67e617e06c68867d736606', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', '', 0, 1),
(613, '1c3cade794e26ba8d0abeae45262c013b28d43a1', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', '', 0, 2),
(614, 'd9b19983df07a6298de50023cc9e443417372da6', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', '', 0, 3),
(615, '48c87b7d253370cc49346a3bd3dbea9c239652c5', 'c5bbd9f029d5c7a43e77127cd8375967fb4a258b', '', 0, 4),
(616, 'd1de5fb8da10197e270f47f27a8dd683d0eb41c8', '9da8d62973652d61ea938a8d2220ebc04a156cc6', '', 1, 0),
(617, '599a4132eb5f31b4ec077d3b3df061a1b4c3fd04', '9da8d62973652d61ea938a8d2220ebc04a156cc6', '', 0, 1),
(618, 'b5be4a8c65d6f9918a757b5a45d49c65d13bd03e', '9da8d62973652d61ea938a8d2220ebc04a156cc6', '', 0, 2),
(619, '4130b8c665436cf4f9e1041ab5c01494626fe6a5', '9da8d62973652d61ea938a8d2220ebc04a156cc6', '', 0, 3),
(620, 'e2ae92d31321953d508efa03b25c6b84fdd0ee51', '9da8d62973652d61ea938a8d2220ebc04a156cc6', '', 0, 4),
(621, 'e7ffae834564203db6976acb52774217463827b4', '40a453692854c89e2fee3c12db585cb8cec3d678', '', 1, 0),
(622, '796130b5a7e3619e69ed9e72b117b1ea6b3fb3e0', '40a453692854c89e2fee3c12db585cb8cec3d678', '', 0, 1),
(623, 'd64e68ccf9bb6a7cfb828e51b2e4a94b95923a3b', '40a453692854c89e2fee3c12db585cb8cec3d678', '', 0, 2),
(624, '5a0eb6009c3d6ec36ae19a4b571b818db72ea65a', '40a453692854c89e2fee3c12db585cb8cec3d678', '', 0, 3),
(625, '6545e61f160e2719b21f4bb55aa8dc61690fdb06', '40a453692854c89e2fee3c12db585cb8cec3d678', '', 0, 4),
(626, '85219b914186871b2de6aaaabd5aaef28f3331ec', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', '', 1, 0),
(627, '3def3f73ae5bb5ec90a9a854ff9a8368e2bc3e3c', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', '', 0, 1),
(628, '0610c1cc4957795c30b1bcb654b896559f97d998', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', '', 0, 2),
(629, '07321275280fc40a307ad2cdf7873cbeffdac3a6', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', '', 0, 3),
(630, 'e229fd647d7dc35a56bf556522dfa239475ecb04', 'ad93f9db5c840e8292a833f51c0ad1ae32943c2d', '', 0, 4),
(631, 'c5d0690a6a4f6e6cb1270a31814ee07f05f1933a', '2757dd1926c8205bf8263c79da9b0e437b05486f', '', 1, 0),
(632, 'bab8c49535039bbe29ad5f08e329384f295c9031', '2757dd1926c8205bf8263c79da9b0e437b05486f', '', 0, 1),
(633, 'b799d48c16b4bb6be2e095b354989815e288cd0b', '2757dd1926c8205bf8263c79da9b0e437b05486f', '', 0, 2),
(634, '5e6263f3710dec80aa6648bd6b28ea304e3540e5', '2757dd1926c8205bf8263c79da9b0e437b05486f', '', 0, 3),
(635, '42eb235bf778262cf5de30c585755c7afc37d86a', '2757dd1926c8205bf8263c79da9b0e437b05486f', '', 0, 4),
(636, 'f1711cde85cd851b3581a3830607f2aad7f6bc4d', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', '', 1, 0),
(637, '4f42c3e8a06855c25eb661155401e23c93f5c706', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', '', 0, 1),
(638, '6c0d55a9fd4032b21afe96e56000a27a1bea2e47', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', '', 0, 2),
(639, '40a9e05d58f47c9515957d28cfe8def6f7ccd1b1', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', '', 0, 3),
(640, '905eeb0725bf9bdd95cedd410e5b1f5ed3eae486', 'e4a79622f3d48c88d460e6952bda4fde4a3a7f1f', '', 0, 4),
(641, '9a3dc43641f67803c1cd9ae7c2381e23e1cca727', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', '', 1, 0),
(642, 'ab7661c3803e79c74ee21a27137470751e0c04bc', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', '', 0, 1),
(643, '8f7598eef48678f9af1c3697379fb0fbb701b3ec', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', '', 0, 2),
(644, 'b86331c6a0e2f34c49fea1288f46dd410766ac72', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', '', 0, 3),
(645, 'f14591f4773756075e3297bff4af4a8670dfbd34', '6bd91f17ef338bc136b76924d05a9a8b339ba8ae', '', 0, 4),
(646, 'c381efb6efdd876e6b6167f61fbd466e54fc2056', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', '', 1, 0),
(647, '10453dbed40f5274ebf412475e5ebb88d4e9b794', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', '', 0, 1),
(648, 'ea75aca35d3b8b2e11330365d1ee7ce585431e9e', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', '', 0, 2),
(649, '756b3f80b32d8f0b26736bafd53b6a6e7f11adb0', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', '', 0, 3),
(650, 'cd594dfaa01bd2a111e06332f3d5953dfe98cb5b', '8e55703e90dd73b4beb9b1bf65dbca701bfa9fd7', '', 0, 4),
(651, '9b38dc95abe397e6b22f8d4975ac741b916fbb1f', '9896793f9fd2d845ae31d1063627973a9cbdf227', '', 1, 0),
(652, '7823c5c6ea0848199b314c608c7a9d204160720b', '9896793f9fd2d845ae31d1063627973a9cbdf227', '', 0, 1),
(653, '7e86c539c3f97123182656ef91c53b03b8f8a83f', '9896793f9fd2d845ae31d1063627973a9cbdf227', '', 0, 2),
(654, 'd9296ceefb05027d8d41c6fbf321aaa33deaa470', '9896793f9fd2d845ae31d1063627973a9cbdf227', '', 0, 3),
(655, '9876771e3f750be42308ab4b7f3ac988ddf78dd2', '9896793f9fd2d845ae31d1063627973a9cbdf227', '', 0, 4),
(656, '71e04f8df8d261f4d8d2d8336e56076b8a41f30a', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', '', 1, 0),
(657, 'ce0c21e82e22d0dcaad2e7251c61d6e778b5ec2c', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', '', 0, 1),
(658, '2dfb4857055a06e0373f5aba46a4b3a0c8717623', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', '', 0, 2),
(659, '9639c9c73497218865f2a7c330fb6e61aafc8d08', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', '', 0, 3),
(660, '5d0d1fd0bbe52cb1be846c1fa92692534c986f13', '307cc25dcf71dadf74c2b7a2ff0bdc46128ae4cf', '', 0, 4),
(666, '79a683bd5be104842db3b926c64c76dff297a2e7', '70687b4a80c2562d5b85271fa24fce18c1889855', '', 1, 0),
(667, 'bb7ffccfc7dfdf659d55d9a28df66c70d9666566', '70687b4a80c2562d5b85271fa24fce18c1889855', '', 0, 1),
(668, '5a808342cce80c3c495f448560e2bb715cadef90', '70687b4a80c2562d5b85271fa24fce18c1889855', '', 0, 2),
(669, '3442c791596d98a7e4bd9eca5a0b598bbeb6cdcf', '70687b4a80c2562d5b85271fa24fce18c1889855', '', 0, 3),
(670, '60b0016992531c1ad6b9e6a41ae1eb3660ea542d', '70687b4a80c2562d5b85271fa24fce18c1889855', '', 0, 4),
(736, 'e54f299dd0441f8d3230f0f5198418c73ebc4611', '1ae797e7d036cf1dbc76c31ee0d1eb60f7ecea90', '', 1, 0),
(737, 'a19c2a292c0c44d1765187ad3daf7d3af4e3dac3', '1ae797e7d036cf1dbc76c31ee0d1eb60f7ecea90', '', 0, 1),
(738, 'f56f82064f68ab9b2025d57d9badb77b118c261a', '1ae797e7d036cf1dbc76c31ee0d1eb60f7ecea90', '', 0, 2),
(739, '65cb3e9c09cc8f53f1dc6ec6358cdabea4526d43', '1ae797e7d036cf1dbc76c31ee0d1eb60f7ecea90', '', 0, 3),
(740, '56722cfb2835e041b202095e37a34e7d1aae7d66', '1ae797e7d036cf1dbc76c31ee0d1eb60f7ecea90', '', 0, 4),
(741, '624915822b82384f69c050b750f5f4c880276e2c', '4b453b5ee8ea93a6ec369d6f90db133f6983d67d', '', 1, 0),
(742, '1dfbd15fde6656c6337766f96f6c213686842a9a', '4b453b5ee8ea93a6ec369d6f90db133f6983d67d', '', 0, 1),
(743, 'fb8275b2a2b86d6ae1511f740e4696ea891cd8d4', '4b453b5ee8ea93a6ec369d6f90db133f6983d67d', '', 0, 2),
(744, 'd1a0bcc66a4c1681d4120232b2825b5fb923caa3', '4b453b5ee8ea93a6ec369d6f90db133f6983d67d', '', 0, 3),
(745, '73805f4825f432104db8dfe08d2716adfa7bb2ab', '4b453b5ee8ea93a6ec369d6f90db133f6983d67d', '', 0, 4),
(746, '7065f92f980cb76960bbc972752094a728cb7373', '102466517eb7306aefdd95d53658fe86a6046fb4', '', 1, 0),
(747, 'd986cf1417cbb2014132089e38e66c429d482524', '102466517eb7306aefdd95d53658fe86a6046fb4', '', 0, 1),
(748, '5bc8d5379df582e7aa892dcf1f25cca97252e26a', '102466517eb7306aefdd95d53658fe86a6046fb4', '', 0, 2),
(749, '3017f47f3cd66522f4a30adad4150fb1758fad5c', '102466517eb7306aefdd95d53658fe86a6046fb4', '', 0, 3),
(750, '444682fae1e7d69cedb61a9b1a540f43177d6905', '102466517eb7306aefdd95d53658fe86a6046fb4', '', 0, 4),
(751, '49344dcb9acd5d467c67970c3ed0efc8172e1db8', 'c8020002916c455bfab53a20dd5709e3623ccf3e', '', 1, 0),
(752, '00616275349b1232ff83d03f1b7d43fef3eea07a', 'c8020002916c455bfab53a20dd5709e3623ccf3e', '', 0, 1),
(753, 'cfd75eab7f3a7c91d3bd23a1ac4eebfacfd38c31', 'c8020002916c455bfab53a20dd5709e3623ccf3e', '', 0, 2),
(754, '72ffa7078196d31c0477bc8f9eea011ee11daac7', 'c8020002916c455bfab53a20dd5709e3623ccf3e', '', 0, 3),
(755, '12166fd95b9ca55664179ec76ee38e3129942c79', 'c8020002916c455bfab53a20dd5709e3623ccf3e', '', 0, 4),
(756, '65acff0eeba4e4cad0f54b8c397ba8e926803f24', 'a4558c40adb276400be6c7075658f889e10216ca', '', 1, 0),
(757, '182958277977b50297793ee2f76bc5d31dd9455d', 'a4558c40adb276400be6c7075658f889e10216ca', '', 0, 1),
(758, '55580cd53674f1f4e46bacf794e13eb19e6dd874', 'a4558c40adb276400be6c7075658f889e10216ca', '', 0, 2),
(759, '6cf7e79c53e6b97c39c0f3cde4b67d7565c02ff0', 'a4558c40adb276400be6c7075658f889e10216ca', '', 0, 3),
(760, 'a3ea441a08e018ac120fb5bfc7d7cef95a58e0b7', 'a4558c40adb276400be6c7075658f889e10216ca', '', 0, 4),
(761, '68505477e42e038bfa180ad8434f1b53e7cb0709', '17a3af4c896d5b0f8184ee7538e162735c062b33', '', 1, 0),
(762, 'e3de5cf6d4e9b9c1467dabe675e275418e30d45d', '17a3af4c896d5b0f8184ee7538e162735c062b33', '', 0, 1),
(763, '5f199fb7dc3ba119677ece7d6ef9a5d4c1d8cd9d', '17a3af4c896d5b0f8184ee7538e162735c062b33', '', 0, 2),
(764, '32e383ba6e54f59a5a59c699a53cc19ccdc5d19d', '17a3af4c896d5b0f8184ee7538e162735c062b33', '', 0, 3),
(765, 'a668cc015c44b61a9d9e17b5ee87d752933e9a70', '17a3af4c896d5b0f8184ee7538e162735c062b33', '', 0, 4),
(796, 'df26f2eadcde985f8dc709dcce690f88ccb8c5c5', '55ab62192db09005a895f96fdbe399f2704f23b8', '', 1, 0),
(797, '223135f10903d4aa943ec45605635b15799a0124', '55ab62192db09005a895f96fdbe399f2704f23b8', '', 0, 1),
(798, 'eccd7f0b9c4417a89872fc6bd84d4faf0c731b75', '55ab62192db09005a895f96fdbe399f2704f23b8', '', 0, 2),
(799, '6f4b5bc5e48b44981c7c79d9f2188fb27219a521', '55ab62192db09005a895f96fdbe399f2704f23b8', '', 0, 3),
(800, 'c1e7388dd05b286e88fe5e732711026b096d0c42', '55ab62192db09005a895f96fdbe399f2704f23b8', '', 0, 4),
(801, '0250a3a0dcdd095f0b9057bc4dc76b5dcbb37ec1', 'fcd7e2d4889c2328bca722329561e31d201fd051', '', 1, 0),
(802, '916e8c89bef7959b8a014347750199c5bd6cf752', 'fcd7e2d4889c2328bca722329561e31d201fd051', '', 0, 1),
(803, '4329e069f35e5c3604390582d8cdce6f3ef1f193', 'fcd7e2d4889c2328bca722329561e31d201fd051', '', 0, 2),
(804, '3aa89fa744fad029393aff170da44995a8c0992f', 'fcd7e2d4889c2328bca722329561e31d201fd051', '', 0, 3),
(805, '3a48dccd694b4ea550ffea3e9dd34fdca6c3d310', 'fcd7e2d4889c2328bca722329561e31d201fd051', '', 0, 4),
(806, 'a1f863632e4221b3a5f7c92277a7aee44a6ed47b', '44f9be931c9c4aa41c642e426d9e313be5efab0a', '', 1, 0),
(807, '7b773fd9582f12aec3e05217ee1cbd2d368aa769', '44f9be931c9c4aa41c642e426d9e313be5efab0a', '', 0, 1),
(808, '7de4d4e8d588082684e70e029d93250241d834ba', '44f9be931c9c4aa41c642e426d9e313be5efab0a', '', 0, 2),
(809, '929e90d218ddf079aee7a96d8fbf4633c11eeec6', '44f9be931c9c4aa41c642e426d9e313be5efab0a', '', 0, 3),
(810, 'b0c52137eb658c7892a61cfc3b986aa76f39ed83', '44f9be931c9c4aa41c642e426d9e313be5efab0a', '', 0, 4),
(811, '569e7219f8f81cdeb71cc44d90239b51c0f3e5b4', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', '<p>a</p>', 1, 0),
(812, 'b557c5d23ff5f4d154398234628de8446099a5bd', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', '<p>v</p>', 0, 1),
(813, '530a9bd585ba4f7e7a8a9c8c41f68a9cc298c4dd', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', '<p>cc</p>', 0, 2),
(814, 'fef960711f22e7c4230019a462a3db0026e800fd', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', '<p>cc</p>', 0, 3),
(815, '536c2d7eef45675a2bdfdce153a746e3f8d4f327', 'f0945ee1eee14f7e0f4978671753919c9d2c7e5f', '<p><br></p>', 0, 4),
(816, 'bedc231f04580f9e6b3f478855df5b8a6ba8ee02', '2acf6b07b6db27eaf111fb85685b04ae4171b731', '<p>x<sup>2</sup>&nbsp;+ 3x - 18 = 0 <br></p>', 1, 0),
(817, 'c49bafa51f7cdcb2ab81c5a5b904098b9f98bc0a', '2acf6b07b6db27eaf111fb85685b04ae4171b731', '<p>x<sup>2</sup>&nbsp;+ 3x - 18 = 0 <br></p>', 0, 1),
(818, 'a10f6834ca1f56d0f6ff1bd87c546a8db5b35a07', '2acf6b07b6db27eaf111fb85685b04ae4171b731', '<p>x<sup>2</sup>&nbsp;+ 3x - 18 = 0 <br></p>', 0, 2),
(819, 'ff4091be1057d7bf1109008d461f5a6c530de82f', '2acf6b07b6db27eaf111fb85685b04ae4171b731', '<p>x<sup>2</sup>&nbsp;+ 3x - 18 = 0 <br></p>', 0, 3),
(820, '0277faab8ee113bcb2f8e35158cd143cc22f9787', '2acf6b07b6db27eaf111fb85685b04ae4171b731', '<p>X<sup>2</sup> + 3x -1 = 0</p>', 0, 4),
(821, 'd841f4af72c6bd636af3a88ccc083e8ee3a8fb1d', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', '', 1, 0),
(822, 'dee665ccc5bbfede5cb6187d03f31b88ba86d6fe', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', '', 0, 1),
(823, 'a00128cd6cea94f7db9db8ee730d1ad417707e4a', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', '', 0, 2),
(824, '1d0fa4479637aa6aa81f1577590a3ce30ff78373', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', '', 0, 3),
(825, 'fdc0eed898a94c84bcc211513971f9abe98b572d', '7ab5e1e1d447afecd6539abecb769efa809dc4cb', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `soal_komposisi`
--

CREATE TABLE IF NOT EXISTS `soal_komposisi` (
  `id` int(11) NOT NULL,
  `kode_to_auth` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_kd` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_soal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanggal_ujian`
--

CREATE TABLE IF NOT EXISTS `tanggal_ujian` (
  `id` int(11) NOT NULL,
  `waktu_menit` int(11) NOT NULL,
  `kode_to` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `to`
--

CREATE TABLE IF NOT EXISTS `to` (
  `id` int(11) NOT NULL,
  `kode_to` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `tanggal_dikunci` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `to`
--

INSERT INTO `to` (`id`, `kode_to`, `nama`, `status`, `tanggal_dikunci`) VALUES
(17, '2702d40451a515eb03ff661344efbbea84519c7f', 'Tryout Sekolah 1', 1, '2016-01-15 17:00:00'),
(18, '198238646833d027e6d7b74a9dba21d6d43af2b6', 'Joss', 1, '2016-01-15 17:00:00'),
(19, 'a2aae7453e1273f11e7660d4badea513dfad8ac2', '', 1, '2016-03-06 17:00:00'),
(20, 'a21a46e5516512efc5875fd783f2b4c78e6242a6', 'a', 1, '2016-03-06 17:00:00'),
(21, '2c99a9d87606f25e4254c279a9db0b1b673eea18', 'Matematika 201', 1, '2016-03-10 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `to_auth_temp`
--

CREATE TABLE IF NOT EXISTS `to_auth_temp` (
  `kode_to_auth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kode_to` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kloter` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `waktu_mulai_kerja` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `waktu_selesai_kerja` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `to_auth_temp`
--

INSERT INTO `to_auth_temp` (`kode_to_auth`, `kode_to`, `id_mapel`, `id_siswa`, `id_kloter`, `id_kelas`, `username`, `password`, `waktu_mulai_kerja`, `waktu_selesai_kerja`, `status`) VALUES
('08a01b41c1ef998126281e7e13f0a69050ee2c85bd8d576e4d30e3f0be4d7477', 'a21a46e5516512efc5875fd783f2b4c78e6242a6', 6, 99999999, 9999, 999999, 'admin', 'nimda', '2016-03-07 00:38:03', '0000-00-00 00:00:00', 0),
('14c50c3c5be26911af3c711b5db8caa8ec847ed366c1f6717751c50a5c1f122a', '2702d40451a515eb03ff661344efbbea84519c7f', 16, 99999999, 9999, 0, 'adminslv', 'wow6475', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('5853e32e641ff1808f40a6d411c793e817f56813a1943f85be4324e363d05bc0', '2702d40451a515eb03ff661344efbbea84519c7f', 8, 99999999, 9999, 999999, 'admin', 'nimda', '2016-03-07 00:16:15', '0000-00-00 00:00:00', 0),
('612f76e427a99632f506b5b0603253d18f206fede3fd0365a05ae5163d1e030c', '2702d40451a515eb03ff661344efbbea84519c7f', 7, 99999999, 9999, 999999, 'admin', 'nimda', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('6f586b719fae2ad179e2a00838265f183410603ff4f288ce222288f9371c066f', '2702d40451a515eb03ff661344efbbea84519c7f', 6, 99999999, 9999, 0, 'adminrsn', 'hero3696', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('7ba771e8f9ce83a87a2399a5ca220ceb6b3a3f62865a96dd8411c7c7adfa67b2', '2702d40451a515eb03ff661344efbbea84519c7f', 0, 99999999, 9999, 0, 'adminaop', 'tiga4682', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('7f533ab0ea6b7a5cbe844e81f80866e8bf9b4f77ecd7a0a0a1a4ea83cf60d2ce', '2702d40451a515eb03ff661344efbbea84519c7f', 6, 99999999, 9999, 999999, 'admin', 'nimda', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('877ffe9506cfcf640aea804b51142d72dc3f90bf26328580a43c4dc1b89729fe', '2702d40451a515eb03ff661344efbbea84519c7f', 14, 99999999, 9999, 0, 'admingpt', 'bonjol5731', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
('880c072872523426dfc9682c9ea497b8a86537da5191bd07457aac0bee9d680a', '2702d40451a515eb03ff661344efbbea84519c7f', 7, 99999999, 9999, 0, 'adminfsw', 'gajah4780', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `to_mapel`
--

CREATE TABLE IF NOT EXISTS `to_mapel` (
  `id` int(11) NOT NULL,
  `kode_to_mapel` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `kode_to` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `waktu` time NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `to_mapel`
--

INSERT INTO `to_mapel` (`id`, `kode_to_mapel`, `kode_to`, `id_mapel`, `waktu`, `status`) VALUES
(49, '62ffc373bbbe84e6a6daa72367f4ec8409de44e9', '2702d40451a515eb03ff661344efbbea84519c7f', 6, '00:00:00', ''),
(53, 'ca6d72bf03d75ffc72eb1ab4d42b33a59d99e2f5', '2702d40451a515eb03ff661344efbbea84519c7f', 7, '00:00:00', ''),
(54, '76156b179d7d9d5b981a2d57bc3553c6be36c488', '2702d40451a515eb03ff661344efbbea84519c7f', 9, '00:00:00', ''),
(55, '7840d1f5cd1057bac4df1dc8271409370eeeb810', '2702d40451a515eb03ff661344efbbea84519c7f', 8, '00:00:00', ''),
(56, '50cc1488b86897b8766fb5afe60a14ba06191249', '2702d40451a515eb03ff661344efbbea84519c7f', 5, '00:00:00', ''),
(58, '8f083a19bb840a6c688734be4727b1e9142c861e', '2702d40451a515eb03ff661344efbbea84519c7f', 10, '00:00:00', ''),
(59, 'ae88b9c76bbf2a67f21dc37d4810f78f71cb098c', '2702d40451a515eb03ff661344efbbea84519c7f', 13, '00:00:00', ''),
(60, '23995d32999c652c0541fa403b950e3da18ac7ef', '2702d40451a515eb03ff661344efbbea84519c7f', 15, '00:00:00', ''),
(61, '89ffc2c0cf11675c4c938c46ac29a5bbb2fbbbb3', '2702d40451a515eb03ff661344efbbea84519c7f', 16, '00:00:00', ''),
(62, 'bdf5e6bc514331f6422d6b28da973c9c5b295584', '2702d40451a515eb03ff661344efbbea84519c7f', 14, '00:00:00', ''),
(66, '5de1561a91fdd6a574daaebdc8e0c6017843f179', '198238646833d027e6d7b74a9dba21d6d43af2b6', 6, '00:00:00', ''),
(67, '933affd5ac67807ccd101b334fcd1c64dedb1f4b', 'a21a46e5516512efc5875fd783f2b4c78e6242a6', 6, '00:00:00', ''),
(68, '52d29d116aead455f082885c9f1980f9561ceb53', '2c99a9d87606f25e4254c279a9db0b1b673eea18', 6, '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `to_nilai`
--

CREATE TABLE IF NOT EXISTS `to_nilai` (
  `id` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kode_to_mapel` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `benar` int(11) NOT NULL,
  `salah` int(11) NOT NULL,
  `kosong` int(11) NOT NULL,
  `nilai` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2a$08$lzUk.bF9jHiuAVHmAE2K4Oj7YQtq0z8CWQD8bErKTQVrcfMXDWrSi', 'admin', 'PsoPcD1TTixxOXKq9Cwtt1yYOoyBHhibHhf3kKw5laHvzW0wHcNo2eklOiuP', '2016-03-07 01:14:02', '2016-03-06 18:14:02'),
(2, 'guru', '$2y$10$OWpidNrhGttwoWo/X6HHXubfjnmWL.GwnN3avzyMu58miAGJKge1W', 'guru', '2i5y9lEDlqsglEXFZK7ITG1Y7nzmkPqhmLCX0TeoMdjyFYzSgVmrxd5UFx4k', '2016-01-14 14:29:06', '2016-01-11 23:00:54'),
(3, 'siswa', '$2y$10$0ENC1YeTRCpamKxKu6zBLO6j2.gLRSv0iXT9D6cQiSi.RFGOxYBZu', 'siswa', 'A8tvUJ0syarIsidxYuGfBaDW0ThbqYGpbgjdUngFoqXTzjv5zIIVUhKoOLBt', '2016-01-16 10:34:23', '2016-01-16 03:34:23'),
(4, '16515183', '$2y$10$vuBhM0ItlujDJG.pqvvclue3YU6aaDLNplUWxMqXBz8miVU8K6sEW', 'admin', 'nGRvQ6qDOCNUtTduB5DU5TAkhWZdDkrZgEFDIi3LhVXTbsN2UlAWOt5A7UMI', '2016-01-14 14:29:10', '2016-01-08 01:46:22'),
(7, 'ariaseta', '$2a$08$AC.6rO2reKYFjyRS4jdQAu4rJ1oWyzoJpMlPRZcNj.Y.Qg.S6EGqe', 'admin', '7uPvi3u3gZYyafQr2X2YbB4pxhoBIHpFS8E0bXDe3eBubS2CYU3NhWSouerU', '2016-03-06 23:49:53', '2016-03-06 16:49:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisis_temp`
--
ALTER TABLE `analisis_temp`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kunci` (`kunci`);

--
-- Indexes for table `banksoal`
--
ALTER TABLE `banksoal`
  ADD PRIMARY KEY (`id`), ADD KEY `id_kd` (`id_kd`), ADD KEY `id_kd_2` (`id_kd`);

--
-- Indexes for table `data_sekolah`
--
ALTER TABLE `data_sekolah`
  ADD PRIMARY KEY (`kunci`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`), ADD KEY `id_soal` (`id_soal`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `jawaban_siswa`
--
ALTER TABLE `jawaban_siswa`
  ADD PRIMARY KEY (`kode_jawaban_siswa`), ADD KEY `kode_to_auth` (`kode_to_auth`), ADD KEY `kode_soal` (`kode_soal`);

--
-- Indexes for table `kd`
--
ALTER TABLE `kd`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kode_kd` (`kode_kd`), ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`), ADD KEY `nickname` (`nickname`);

--
-- Indexes for table `kloter`
--
ALTER TABLE `kloter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `api_key` (`api_key`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_kelas` (`id_kelas`), ADD KEY `id_kelas_2` (`id_kelas`), ADD KEY `nickname_kelas` (`nickname_kelas`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kode_soal` (`kode_soal`), ADD KEY `id_kd` (`kode_kd`), ADD KEY `id_kd_2` (`kode_kd`), ADD KEY `id_to` (`kode_to`), ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kode_jawaban` (`kode_jawaban`), ADD KEY `kode_soal` (`kode_soal`);

--
-- Indexes for table `soal_komposisi`
--
ALTER TABLE `soal_komposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanggal_ujian`
--
ALTER TABLE `tanggal_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `to`
--
ALTER TABLE `to`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kode_to` (`kode_to`);

--
-- Indexes for table `to_auth_temp`
--
ALTER TABLE `to_auth_temp`
  ADD PRIMARY KEY (`kode_to_auth`), ADD KEY `id_siswa` (`id_siswa`), ADD KEY `id_mapel` (`id_mapel`), ADD KEY `id_to` (`kode_to`), ADD KEY `kloter` (`id_kloter`);

--
-- Indexes for table `to_mapel`
--
ALTER TABLE `to_mapel`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `kode_to_mapel` (`kode_to_mapel`), ADD KEY `kode_to` (`kode_to`), ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `to_nilai`
--
ALTER TABLE `to_nilai`
  ADD PRIMARY KEY (`id`), ADD KEY `id_to` (`id_to`), ADD KEY `id_to_2` (`id_to`), ADD KEY `id_siswa` (`id_siswa`), ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisis_temp`
--
ALTER TABLE `analisis_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banksoal`
--
ALTER TABLE `banksoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1000000;
--
-- AUTO_INCREMENT for table `kloter`
--
ALTER TABLE `kloter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10000;
--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100000000;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=826;
--
-- AUTO_INCREMENT for table `soal_komposisi`
--
ALTER TABLE `soal_komposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tanggal_ujian`
--
ALTER TABLE `tanggal_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `to`
--
ALTER TABLE `to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `to_mapel`
--
ALTER TABLE `to_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gambar`
--
ALTER TABLE `gambar`
ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `jawaban_siswa`
--
ALTER TABLE `jawaban_siswa`
ADD CONSTRAINT `jawaban_siswa_ibfk_1` FOREIGN KEY (`kode_to_auth`) REFERENCES `to_auth_temp` (`kode_to_auth`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `jawaban_siswa_ibfk_2` FOREIGN KEY (`kode_soal`) REFERENCES `soal` (`kode_soal`) ON UPDATE CASCADE;

--
-- Constraints for table `kd`
--
ALTER TABLE `kd`
ADD CONSTRAINT `kd_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
ADD CONSTRAINT `soal_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `soal_ibfk_2` FOREIGN KEY (`kode_to`) REFERENCES `to` (`kode_to`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
ADD CONSTRAINT `soal_jawaban_ibfk_1` FOREIGN KEY (`kode_soal`) REFERENCES `soal` (`kode_soal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `to_mapel`
--
ALTER TABLE `to_mapel`
ADD CONSTRAINT `to_mapel_ibfk_1` FOREIGN KEY (`kode_to`) REFERENCES `to` (`kode_to`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `to_mapel_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `to_nilai`
--
ALTER TABLE `to_nilai`
ADD CONSTRAINT `to_nilai_ibfk_1` FOREIGN KEY (`id_to`) REFERENCES `to` (`id`) ON UPDATE CASCADE,
ADD CONSTRAINT `to_nilai_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id`) ON UPDATE CASCADE;
--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `akademik_jadwal_kuliah`
--

CREATE TABLE IF NOT EXISTS `akademik_jadwal_kuliah` (
  `jadwal_id` int(11) NOT NULL,
  `tahun_akademik_id` int(11) NOT NULL,
  `konsentrasi_id` int(11) NOT NULL,
  `makul_id` int(11) NOT NULL,
  `hari_id` int(11) NOT NULL,
  `waktu_id` int(11) NOT NULL,
  `ruangan_id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `jam_mulai` varchar(9) NOT NULL,
  `jam_selesai` varchar(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_jadwal_kuliah`
--

INSERT INTO `akademik_jadwal_kuliah` (`jadwal_id`, `tahun_akademik_id`, `konsentrasi_id`, `makul_id`, `hari_id`, `waktu_id`, `ruangan_id`, `dosen_id`, `semester`, `jam_mulai`, `jam_selesai`) VALUES
(73, 1, 3, 1, 3, 0, 5, 11, 1, '08:00', '11:20'),
(74, 1, 3, 2, 1, 0, 5, 25, 1, '11:21', '14:41'),
(75, 1, 3, 3, 3, 0, 0, 19, 1, '08:00', '11:20'),
(76, 1, 3, 4, 1, 0, 1, 17, 1, '13:00', '16:20'),
(77, 1, 3, 5, 0, 0, 0, 7, 1, '', ''),
(78, 1, 3, 6, 0, 0, 0, 12, 1, '', ''),
(79, 1, 3, 7, 0, 0, 0, 0, 2, '', ''),
(80, 1, 3, 8, 0, 0, 0, 0, 2, '', ''),
(81, 1, 3, 9, 0, 0, 0, 0, 2, '', ''),
(82, 1, 3, 10, 0, 0, 0, 0, 2, '', ''),
(83, 1, 3, 11, 0, 0, 0, 0, 2, '', ''),
(84, 1, 3, 12, 0, 0, 0, 0, 2, '', ''),
(85, 1, 3, 13, 0, 0, 0, 1, 3, '', ''),
(86, 1, 3, 14, 0, 0, 0, 5, 3, '', ''),
(87, 1, 3, 15, 0, 0, 0, 18, 3, '', ''),
(88, 1, 3, 16, 0, 0, 0, 26, 3, '', ''),
(89, 1, 3, 17, 0, 0, 0, 21, 3, '', ''),
(90, 1, 3, 18, 0, 0, 0, 18, 3, '', ''),
(91, 1, 3, 19, 0, 0, 0, 0, 4, '', ''),
(92, 1, 3, 20, 0, 0, 0, 0, 4, '', ''),
(93, 1, 3, 21, 0, 0, 0, 0, 4, '', ''),
(94, 1, 3, 22, 0, 0, 0, 0, 4, '', ''),
(95, 1, 3, 23, 0, 0, 0, 0, 4, '', ''),
(96, 1, 3, 24, 0, 0, 0, 0, 4, '', ''),
(97, 1, 3, 25, 0, 0, 0, 0, 5, '', ''),
(98, 1, 3, 26, 0, 0, 0, 0, 5, '', ''),
(99, 1, 3, 27, 0, 0, 0, 0, 5, '', ''),
(100, 1, 3, 28, 0, 0, 0, 0, 5, '', ''),
(101, 1, 3, 29, 0, 0, 0, 0, 5, '', ''),
(102, 1, 3, 30, 0, 0, 0, 0, 5, '', ''),
(103, 1, 3, 31, 0, 0, 0, 0, 6, '', ''),
(104, 1, 3, 32, 0, 0, 0, 0, 6, '', ''),
(105, 1, 3, 33, 0, 0, 0, 0, 6, '', ''),
(106, 1, 3, 34, 0, 0, 0, 0, 6, '', ''),
(107, 1, 3, 35, 0, 0, 0, 0, 6, '', ''),
(108, 1, 3, 36, 0, 0, 0, 0, 6, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `akademik_khs`
--

CREATE TABLE IF NOT EXISTS `akademik_khs` (
  `khs_id` int(11) NOT NULL,
  `krs_id` int(11) NOT NULL,
  `mutu` int(11) NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `tugas` int(11) NOT NULL,
  `grade` varchar(1) NOT NULL,
  `confirm` int(11) NOT NULL COMMENT '1=ya 2=tidak'
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_khs`
--

INSERT INTO `akademik_khs` (`khs_id`, `krs_id`, `mutu`, `kehadiran`, `tugas`, `grade`, `confirm`) VALUES
(1, 1, 0, 0, 0, '', 2),
(2, 2, 0, 0, 0, '', 2),
(3, 3, 0, 0, 0, '', 2),
(4, 4, 0, 0, 0, '', 2),
(5, 5, 0, 0, 0, '', 2),
(6, 6, 0, 0, 0, '', 2),
(7, 7, 0, 0, 0, '', 1),
(8, 8, 0, 0, 0, '', 2),
(9, 9, 0, 0, 0, '', 2),
(10, 10, 0, 0, 0, '', 2),
(11, 11, 0, 0, 0, '', 2),
(12, 12, 0, 0, 0, '', 2),
(13, 13, 0, 0, 0, '', 2),
(14, 14, 0, 0, 0, '', 2),
(15, 15, 0, 0, 0, '', 2),
(16, 16, 0, 0, 0, '', 2),
(17, 17, 0, 0, 0, '', 2),
(18, 18, 0, 0, 0, '', 2),
(21, 21, 0, 0, 0, '', 2),
(22, 22, 0, 0, 0, '', 2),
(23, 23, 0, 0, 0, '', 2),
(24, 24, 0, 0, 0, '', 2),
(25, 25, 0, 0, 0, '', 2),
(26, 26, 0, 0, 0, '', 2),
(27, 27, 0, 0, 0, '', 2),
(28, 28, 0, 0, 0, '', 2),
(29, 29, 0, 0, 0, '', 2),
(30, 30, 0, 0, 0, '', 2),
(31, 31, 0, 0, 0, '', 2),
(32, 32, 0, 0, 0, '', 2),
(33, 33, 0, 0, 0, '', 2),
(34, 34, 0, 0, 0, '', 2),
(35, 35, 0, 0, 0, '', 2),
(36, 36, 0, 0, 0, '', 2),
(37, 37, 0, 0, 0, '', 2),
(38, 38, 0, 0, 0, '', 2),
(39, 39, 0, 0, 0, '', 2),
(40, 40, 0, 0, 0, '', 2),
(41, 41, 0, 0, 0, '', 2),
(42, 42, 0, 0, 0, '', 2),
(43, 43, 0, 0, 0, '', 2),
(44, 44, 0, 0, 0, '', 2),
(45, 45, 0, 0, 0, '', 2),
(46, 46, 0, 0, 0, '', 2),
(47, 47, 0, 0, 0, '', 2),
(48, 48, 0, 0, 0, '', 2),
(49, 49, 0, 0, 0, '', 2),
(50, 50, 0, 0, 0, '', 2),
(51, 51, 0, 0, 0, '', 2),
(52, 52, 0, 0, 0, '', 2),
(53, 53, 0, 0, 0, '', 2),
(54, 54, 0, 0, 0, '', 2),
(55, 55, 0, 0, 0, '', 2),
(56, 56, 0, 0, 0, '', 2),
(57, 57, 0, 0, 0, '', 2),
(58, 58, 0, 0, 0, '', 2),
(59, 59, 0, 0, 0, '', 2),
(60, 60, 0, 0, 0, '', 2),
(61, 61, 0, 0, 0, '', 2),
(62, 62, 0, 0, 0, '', 2),
(63, 63, 0, 0, 0, '', 2),
(64, 64, 0, 0, 0, '', 2),
(65, 65, 0, 0, 0, '', 2),
(66, 66, 0, 0, 0, '', 2),
(67, 67, 0, 0, 0, '', 2),
(68, 68, 0, 0, 0, '', 2),
(69, 69, 0, 0, 0, '', 2),
(70, 70, 0, 0, 0, '', 2),
(71, 71, 0, 0, 0, '', 2),
(72, 72, 0, 0, 0, '', 2),
(73, 73, 0, 0, 0, '', 2),
(74, 74, 0, 0, 0, '', 2),
(75, 75, 0, 0, 0, '', 2),
(76, 76, 0, 0, 0, '', 2),
(77, 77, 0, 0, 0, '', 2),
(78, 78, 0, 0, 0, '', 2),
(79, 79, 0, 0, 0, '', 2),
(80, 80, 0, 0, 0, '', 2),
(81, 81, 0, 0, 0, '', 2),
(82, 82, 0, 0, 0, '', 2),
(83, 83, 0, 0, 0, '', 2),
(84, 84, 0, 0, 0, '', 2),
(85, 85, 0, 0, 0, '', 2),
(86, 86, 0, 0, 0, '', 2),
(87, 87, 0, 0, 0, '', 2),
(88, 88, 0, 0, 0, '', 2),
(89, 89, 0, 0, 0, '', 2),
(90, 90, 0, 0, 0, '', 2),
(91, 91, 0, 0, 0, '', 2),
(92, 92, 0, 0, 0, '', 2),
(93, 93, 0, 0, 0, '', 2),
(94, 94, 0, 0, 0, '', 2),
(95, 95, 0, 0, 0, '', 2),
(96, 96, 0, 0, 0, '', 2),
(97, 97, 0, 0, 0, '', 2),
(98, 98, 0, 0, 0, '', 2),
(100, 100, 0, 0, 0, '', 1),
(102, 102, 0, 0, 0, '', 1),
(103, 103, 0, 0, 0, '', 1),
(104, 104, 0, 0, 0, '', 1),
(105, 105, 6, 6, 6, 'D', 2),
(106, 106, 0, 0, 0, '', 2),
(107, 107, 0, 0, 0, '', 2),
(108, 108, 0, 0, 0, '', 2),
(109, 109, 0, 0, 0, '', 2),
(110, 110, 0, 0, 0, '', 2),
(111, 111, 0, 0, 0, '', 2),
(112, 112, 0, 0, 0, '', 2),
(113, 113, 0, 0, 0, '', 2),
(114, 114, 0, 0, 0, '', 2),
(115, 115, 0, 0, 0, '', 2),
(116, 116, 0, 0, 0, '', 2),
(117, 117, 0, 0, 0, '', 2),
(118, 118, 0, 0, 0, '', 2),
(119, 119, 0, 0, 0, '', 2),
(120, 120, 0, 0, 0, '', 2),
(121, 121, 0, 0, 0, '', 2),
(122, 122, 0, 0, 0, '', 2),
(123, 123, 0, 0, 0, '', 1),
(124, 124, 0, 0, 0, '', 2),
(125, 125, 0, 0, 0, '', 2),
(126, 126, 0, 0, 0, '', 2),
(127, 127, 0, 0, 0, '', 2),
(128, 128, 0, 0, 0, '', 2),
(129, 129, 0, 0, 0, '', 2),
(130, 130, 0, 0, 0, '', 2),
(131, 131, 0, 0, 0, '', 2),
(132, 132, 0, 0, 0, '', 2),
(133, 133, 0, 0, 0, '', 2),
(134, 134, 0, 0, 0, '', 2),
(135, 135, 0, 0, 0, '', 2),
(136, 136, 0, 0, 0, '', 2),
(137, 137, 0, 0, 0, '', 2),
(138, 138, 0, 0, 0, '', 2),
(139, 139, 0, 0, 0, '', 2),
(140, 140, 0, 0, 0, '', 2),
(141, 141, 0, 0, 0, '', 2),
(142, 142, 0, 0, 0, '', 2),
(143, 143, 0, 0, 0, '', 2),
(144, 144, 0, 0, 0, '', 2),
(145, 145, 0, 0, 0, '', 2),
(146, 146, 0, 0, 0, '', 2),
(147, 147, 0, 0, 0, '', 2),
(148, 148, 0, 0, 0, '', 2),
(149, 149, 0, 0, 0, '', 2),
(150, 150, 0, 0, 0, '', 2),
(151, 151, 0, 0, 0, '', 2),
(152, 152, 0, 0, 0, '', 2),
(153, 153, 0, 0, 0, '', 2),
(154, 154, 0, 0, 0, '', 2),
(155, 155, 0, 0, 0, '', 2),
(156, 156, 0, 0, 0, '', 2),
(157, 157, 0, 0, 0, '', 2),
(158, 158, 0, 0, 0, '', 2),
(159, 159, 0, 0, 0, '', 2),
(160, 160, 0, 0, 0, '', 2),
(161, 161, 0, 0, 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `akademik_konsentrasi`
--

CREATE TABLE IF NOT EXISTS `akademik_konsentrasi` (
  `konsentrasi_id` int(11) NOT NULL,
  `nama_konsentrasi` varchar(100) NOT NULL,
  `ketua` varchar(50) NOT NULL,
  `jenjang` varchar(3) NOT NULL COMMENT '1=D1,2=D2,3=D3,4=D4',
  `jml_semester` int(11) NOT NULL,
  `kode_nomor` varchar(20) NOT NULL,
  `gelar` varchar(40) NOT NULL,
  `prodi_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_konsentrasi`
--

INSERT INTO `akademik_konsentrasi` (`konsentrasi_id`, `nama_konsentrasi`, `ketua`, `jenjang`, `jml_semester`, `kode_nomor`, `gelar`, `prodi_id`) VALUES
(1, 'teknik inormatika', 'sample text', 'd4', 8, '23323232', 'd4', 6),
(2, 'multimedia', 'hasan sadikin', 'd4', 5, 'dsdsd', 'sst', 1),
(3, 'teknik mesin produksi', 'sample text', 'd3', 6, '', 'D4', 2),
(4, 'rekamedik dan infokes', 'sample text', 'd4', 8, '', 'sst', 6),
(5, 'teknik sipil', '', 'd3', 6, '', '', 3),
(6, 'teknik kontruksi bangunan', '', 'd4', 8, '', '', 7),
(7, 'teknik komputer', '', 'd3', 6, '', '', 15),
(8, 'mekatronika', '', 'd4', 8, '', '', 8),
(9, 'mekanik industri & desain', '', 'd4', 8, '', '', 8),
(10, 'alamat berat', '', 'd3', 6, '', '', 4),
(11, 'teknik otomotif', '', 'd3', 6, '', '', 9),
(12, 'teknik otomasi', '', 'd4', 8, '', '', 14),
(13, 'teknik otomasi industri', '', 'd4', 8, '', '', 13),
(14, 'analisis kesehatan', '', 'd3', 6, '', '', 12),
(15, 'perpajakan', '', 'd3', 6, '', '', 5),
(16, 'komputerisasi akutansi', '', 'd4', 8, '', '', 10),
(17, 'rekamedik dan infokes', '', 'd3', 6, '', '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `akademik_krs`
--

CREATE TABLE IF NOT EXISTS `akademik_krs` (
  `krs_id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL COMMENT 'semester mahasiswa waktu pengambilan krs'
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_krs`
--

INSERT INTO `akademik_krs` (`krs_id`, `nim`, `jadwal_id`, `semester`) VALUES
(7, 'ti102134', 7, 2),
(8, 'ti102134', 8, 2),
(9, 'ti102134', 9, 2),
(10, 'ti102134', 10, 2),
(11, 'ti102134', 11, 2),
(12, 'ti102134', 12, 2),
(13, 'KA131002', 7, 2),
(14, 'KA131002', 8, 2),
(15, 'KA131002', 9, 2),
(16, 'KA131002', 10, 2),
(17, 'KA131002', 11, 2),
(18, 'KA131002', 12, 2),
(21, 'KA131003', 7, 2),
(22, 'KA131003', 8, 2),
(23, 'KA131003', 9, 2),
(24, 'KA131003', 10, 2),
(25, 'KA131003', 11, 2),
(26, 'KA131003', 12, 2),
(27, 'KA131004', 7, 2),
(28, 'KA131004', 8, 2),
(29, 'KA131004', 9, 2),
(30, 'KA131004', 10, 2),
(31, 'KA131004', 11, 2),
(32, 'KA131004', 12, 2),
(33, 'KA131005', 7, 2),
(34, 'KA131005', 8, 2),
(35, 'KA131005', 9, 2),
(36, 'KA131005', 10, 2),
(37, 'KA131005', 11, 2),
(38, 'KA131005', 12, 2),
(39, 'KA131006', 7, 2),
(40, 'KA131006', 8, 2),
(41, 'KA131006', 9, 2),
(42, 'KA131006', 10, 2),
(43, 'KA131006', 11, 2),
(44, 'KA131006', 12, 2),
(45, 'KA131007', 7, 2),
(46, 'KA131007', 8, 2),
(47, 'KA131007', 9, 2),
(48, 'KA131007', 10, 2),
(49, 'KA131007', 11, 2),
(50, 'KA131007', 12, 2),
(51, 'KA131008', 7, 2),
(52, 'KA131008', 8, 2),
(53, 'KA131008', 9, 2),
(54, 'KA131008', 10, 2),
(55, 'KA131008', 11, 2),
(56, 'KA131008', 12, 2),
(57, 'KA131010', 7, 2),
(58, 'KA131010', 8, 2),
(59, 'KA131010', 9, 2),
(60, 'KA131010', 10, 2),
(61, 'KA131010', 11, 2),
(62, 'KA131010', 12, 2),
(63, 'KA131009', 7, 2),
(64, 'KA131009', 8, 2),
(65, 'KA131009', 9, 2),
(66, 'KA131009', 10, 2),
(67, 'KA131009', 11, 2),
(68, 'KA131009', 12, 2),
(69, 'KA131011', 7, 2),
(70, 'KA131011', 8, 2),
(71, 'KA131011', 9, 2),
(72, 'KA131011', 10, 2),
(73, 'KA131011', 11, 2),
(74, 'KA131011', 12, 2),
(75, 'KA131012', 7, 2),
(76, 'KA131012', 8, 2),
(77, 'KA131012', 9, 2),
(78, 'KA131012', 10, 2),
(79, 'KA131012', 11, 2),
(80, 'KA131012', 12, 2),
(81, 'KA131003', 13, 3),
(82, 'KA131003', 14, 3),
(83, 'KA131003', 15, 3),
(84, 'KA131003', 16, 3),
(85, 'KA131003', 17, 3),
(86, 'KA131003', 18, 3),
(87, 'KA131003', 19, 4),
(88, 'KA131003', 20, 4),
(89, 'KA131003', 21, 4),
(90, 'KA131003', 22, 4),
(91, 'KA131003', 23, 4),
(92, 'KA131003', 24, 4),
(93, 'KA131003', 25, 5),
(94, 'KA131003', 26, 5),
(95, 'KA131003', 27, 5),
(96, 'KA131003', 28, 5),
(97, 'KA131003', 29, 5),
(98, 'KA131003', 30, 5),
(100, 'ti102134', 86, 3),
(102, 'ti102134', 88, 3),
(103, 'ti102134', 89, 3),
(104, 'ti102134', 90, 3),
(105, 'KA131002', 85, 3),
(106, 'KA131002', 86, 3),
(107, 'KA131002', 87, 3),
(108, 'KA131002', 88, 3),
(109, 'KA131002', 89, 3),
(110, 'KA131002', 90, 3),
(111, 'KA131003', 103, 6),
(112, 'KA131003', 104, 6),
(113, 'KA131003', 105, 6),
(114, 'KA131003', 106, 6),
(115, 'KA131003', 107, 6),
(116, 'KA131003', 108, 6),
(117, 'KA131004', 85, 3),
(118, 'KA131004', 86, 3),
(119, 'KA131004', 87, 3),
(120, 'KA131004', 88, 3),
(121, 'KA131004', 89, 3),
(122, 'KA131004', 90, 3),
(123, 'ti102134', 76, 3),
(124, 'KA131005', 85, 3),
(125, 'KA131005', 86, 3),
(126, 'KA131005', 87, 3),
(127, 'KA131005', 88, 3),
(128, 'KA131005', 89, 3),
(129, 'KA131005', 90, 3),
(130, 'ti102134', 75, 3),
(131, 'KA131006', 85, 3),
(132, 'KA131006', 86, 3),
(133, 'KA131006', 87, 3),
(134, 'KA131006', 88, 3),
(135, 'KA131006', 89, 3),
(136, 'KA131006', 90, 3),
(137, 'ti102134', 91, 4),
(138, 'ti102134', 92, 4),
(139, 'ti102134', 93, 4),
(140, 'ti102134', 94, 4),
(141, 'ti102134', 95, 4),
(142, 'ti102134', 96, 4),
(143, 'KA131006', 91, 4),
(144, 'KA131006', 92, 4),
(145, 'KA131006', 93, 4),
(146, 'KA131006', 94, 4),
(147, 'KA131006', 95, 4),
(148, 'KA131006', 96, 4),
(149, 'ti102134', 97, 5),
(150, 'ti102134', 98, 5),
(151, 'ti102134', 99, 5),
(152, 'ti102134', 100, 5),
(153, 'ti102134', 101, 5),
(154, 'ti102134', 102, 5),
(155, 'KA131002', 91, 4),
(156, 'KA131002', 92, 4),
(157, 'KA131002', 93, 4),
(158, 'KA131002', 94, 4),
(159, 'KA131002', 95, 4),
(160, 'KA131002', 96, 4),
(161, 'ti102134', 79, 5);

-- --------------------------------------------------------

--
-- Table structure for table `akademik_prodi`
--

CREATE TABLE IF NOT EXISTS `akademik_prodi` (
  `prodi_id` int(11) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL,
  `ketua` varchar(70) NOT NULL,
  `no_izin` varchar(40) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=aktif ,2=g aktif'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_prodi`
--

INSERT INTO `akademik_prodi` (`prodi_id`, `nama_prodi`, `ketua`, `no_izin`, `status`) VALUES
(2, 'teknik mesin', 'sample text', '1169/D/T/2008', 2),
(3, 'teknik sipil', '', '', 2),
(4, 'teknik otomotif', '', '', 2),
(5, 'akutansi', '', '', 2),
(6, 'teknik informatika', '', '', 2),
(7, 'teknik kontruksi bangunan', '', '', 2),
(8, 'mekanik industri dan desain', '', '', 2),
(9, 'mesin otomotif', '', '', 2),
(10, 'komputerisasi akutansi', '', '', 2),
(11, 'rekamedis dan infokes', '', '', 2),
(12, 'teknik kimia', '', '', 2),
(13, 'teknik otomasi', '', '', 2),
(14, 'teknik elektro', '', '', 2),
(15, 'teknik komputer', '', '', 2),
(16, 'Prodi Tambahan', 'Wiwik', '12948236557', 0);

-- --------------------------------------------------------

--
-- Table structure for table `akademik_registrasi`
--

CREATE TABLE IF NOT EXISTS `akademik_registrasi` (
  `registrasi_id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `tanggal_registrasi` datetime NOT NULL,
  `tahun_akademik_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_registrasi`
--

INSERT INTO `akademik_registrasi` (`registrasi_id`, `nim`, `tanggal_registrasi`, `tahun_akademik_id`, `semester`) VALUES
(18, 'KA131002', '2014-07-21 08:12:15', 1, 3),
(19, 'KA131003', '2014-07-21 08:12:16', 1, 6),
(20, 'KA131004', '2014-07-21 11:51:59', 1, 3),
(21, 'KA131005', '2014-09-05 17:01:43', 1, 3),
(22, 'ti102134', '2014-09-08 16:33:19', 1, 4),
(23, 'KA131006', '2014-09-08 16:33:35', 1, 4),
(24, 'ti102134', '2014-09-08 17:09:26', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `akademik_tahun_akademik`
--

CREATE TABLE IF NOT EXISTS `akademik_tahun_akademik` (
  `tahun_akademik_id` int(11) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `batas_registrasi` date NOT NULL,
  `status` enum('n','y') NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akademik_tahun_akademik`
--

INSERT INTO `akademik_tahun_akademik` (`tahun_akademik_id`, `keterangan`, `batas_registrasi`, `status`, `tahun`) VALUES
(1, '20141', '2014-09-06', 'n', 2014),
(6, '20142', '2014-09-25', 'y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `akademik_waktu_kuliah`
--

CREATE TABLE IF NOT EXISTS `akademik_waktu_kuliah` (
  `waktu_id` int(11) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_agama`
--

CREATE TABLE IF NOT EXISTS `app_agama` (
  `agama_id` int(11) NOT NULL,
  `keterangan` varchar(15) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `app_agama`
--

INSERT INTO `app_agama` (`agama_id`, `keterangan`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Budha'),
(5, 'Hindu'),
(6, 'Kepercayaan');

-- --------------------------------------------------------

--
-- Table structure for table `app_dosen`
--

CREATE TABLE IF NOT EXISTS `app_dosen` (
  `dosen_id` int(11) NOT NULL,
  `nama_lengkap` varchar(70) NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `nip` varchar(22) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` enum('1','2') NOT NULL,
  `agama_id` int(1) NOT NULL,
  `status_kawin` int(1) NOT NULL COMMENT '1=kawin ,2=belum kawin',
  `gelar_pendidikan` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `prodi_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_dosen`
--

INSERT INTO `app_dosen` (`dosen_id`, `nama_lengkap`, `nidn`, `nip`, `no_ktp`, `tempat_lahir`, `tanggal_lahir`, `gender`, `agama_id`, `status_kawin`, `gelar_pendidikan`, `alamat`, `hp`, `email`, `prodi_id`) VALUES
(0, 'not set', '', '', '', '', '0000-00-00', '', 0, 0, '', '', '', '', 6),
(1, 'nuris akbar sst', '748343', '196105041987032002', '43434', 'langsa', '2014-03-06', '1', 1, 1, 'sst', 'dsdsd', '081212123454', 'nu@gmail.com', 6),
(6, 'Dr. Ciek Juliati Hisyam, MM.,M.Si', '', '196204121987032001', '', '', '0000-00-00', '1', 1, 1, '', '', '089690987654', 'saidatunnafsiah@gmail.com', 6),
(7, 'Dr. Etin Solihatin, M.Pd.', '', '196601011989032003', '', '', '0000-00-00', '1', 1, 1, '', '', '089690987654', 'sampleemail@gmail.com', 6),
(8, 'Alex Iskandar, Drs.,M.Pd.', '0423085601', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(11, 'Indra Hermawan, SE.', '0403077902', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(17, 'Anton Gultom, SST.,M.Pd.', '0420075701', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(18, 'Berayan Munthe, MT.', '0426055402', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(19, 'Rahmat Kuswandy, Drs.', '0412034601', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(20, 'Chrestian Maxi Adri Mamesah', '0424035101', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(21, 'Ahadiat, SST.,M.Pd.', '0423065703', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(22, 'Rahmat Gunawan, SST.,M.Pd.', '0416056602', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(23, 'Hernawati, M.Si.', '0403027206', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(24, 'Darsono, M.T.', '0413016101', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(25, 'Sutandi, M.Pd.', '0402037305', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(26, 'Sueb, Drs.,M.Si.,M.Pd.', '0025035803', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(27, 'Theresia Florens Meliala, SST.,M.Pd.', '0419108101', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(28, 'Dini Arianti, ST.', '0401097702', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(29, 'Dadan Saeful Ramdhan, SST', '', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(30, 'Ganar Afin Nendriyawan, SST', '', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(31, 'Dian Rosdiana, SST', '', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(32, 'Riri Damayanti Apnena, SST', '', '', '', '', '0000-00-00', '1', 0, 0, '', '', '', '', 6),
(33, 'sample dosen', '2323', '444444', '', 'langsa', '2014-08-23', '1', 1, 1, '', 'sample alamat', '085654987654', 'nuris.akbar@gmail.com', 0),
(34, 'Wiwik', '2014020031', '20140200311', '', 'Ompoa', '0000-00-00', '2', 1, 2, '', 'Jl. Abd dg sirua 2 no.6', '082395114976', 'wiwikramna@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_gedung`
--

CREATE TABLE IF NOT EXISTS `app_gedung` (
  `gedung_id` int(11) NOT NULL,
  `nama_gedung` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_gedung`
--

INSERT INTO `app_gedung` (`gedung_id`, `nama_gedung`) VALUES
(2, 'gedung 1'),
(3, 'gedung 2'),
(4, 'gedung 31'),
(5, 'Gedung tambahan');

-- --------------------------------------------------------

--
-- Table structure for table `app_hari`
--

CREATE TABLE IF NOT EXISTS `app_hari` (
  `hari_id` int(11) NOT NULL,
  `hari` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_hari`
--

INSERT INTO `app_hari` (`hari_id`, `hari`) VALUES
(0, 'not set'),
(1, 'senin'),
(2, 'selasa'),
(3, 'rabu'),
(4, 'kamis'),
(5, 'jumat'),
(6, 'sabtu'),
(7, 'minggu');

-- --------------------------------------------------------

--
-- Table structure for table `app_nilai_grade`
--

CREATE TABLE IF NOT EXISTS `app_nilai_grade` (
  `nilai_id` int(11) NOT NULL,
  `dari` float NOT NULL,
  `sampai` float NOT NULL,
  `grade` varchar(1) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_nilai_grade`
--

INSERT INTO `app_nilai_grade` (`nilai_id`, `dari`, `sampai`, `grade`, `keterangan`) VALUES
(1, 9.5, 10, 'A', ''),
(2, 8.5, 9.4, 'B', ''),
(3, 7.5, 8.4, 'C', ''),
(4, 6, 7.4, 'D', 'perbaikan'),
(5, 0, 5.9, 'E', 'tidak lulus'),
(6, 8.5, 9.3, 'a', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `app_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `app_pekerjaan` (
  `pekerjaan_id` varchar(2) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_pekerjaan`
--

INSERT INTO `app_pekerjaan` (`pekerjaan_id`, `keterangan`) VALUES
('01', 'tidak bekerja'),
('02', 'nelayan'),
('03', 'petani'),
('04', 'peternak'),
('05', 'PNS/ TNI/ Polri'),
('06', 'Karyawan Swasta'),
('07', 'Pedagang Kecil'),
('08', 'Pedagang Besar'),
('09', 'Wiraswasta'),
('10', 'Wirausaha'),
('11', 'buruh'),
('12', 'pensiunan'),
('99', 'lainya');

-- --------------------------------------------------------

--
-- Table structure for table `app_ruangan`
--

CREATE TABLE IF NOT EXISTS `app_ruangan` (
  `ruangan_id` int(11) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `gedung_id` int(11) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_ruangan`
--

INSERT INTO `app_ruangan` (`ruangan_id`, `nama_ruangan`, `gedung_id`, `kapasitas`, `keterangan`) VALUES
(0, 'not set', 0, 0, ''),
(1, 'L1.R06', 2, 25, ''),
(2, 'L1.R05', 2, 25, ''),
(3, 'L1.R02', 2, 60, ''),
(4, 'L1.R07', 2, 25, ''),
(5, 'L1.R08', 2, 50, ''),
(6, 'L1.R09', 2, 25, ''),
(7, 'L2.R02', 2, 20, ''),
(8, 'L2.R03', 2, 20, ''),
(9, 'L2.R04', 2, 20, ''),
(10, 'L2.R05', 2, 20, ''),
(11, 'L2.R06', 2, 20, ''),
(12, 'L2.R07', 2, 25, ''),
(13, 'L2.R08', 2, 25, ''),
(14, 'L2.R09', 2, 20, ''),
(15, 'L2.R10', 2, 20, ''),
(16, 'L3.R03', 2, 60, ''),
(17, 'L1.R01', 2, 0, 'lab elektro'),
(18, 'L1.R03-4', 2, 0, 'lab elektro'),
(19, 'L1.R10', 2, 0, 'lab elektro'),
(20, 'L2.R02', 2, 0, 'lab bahasa'),
(21, 'L3.R02', 2, 0, 'lab jaringan'),
(22, 'L3.R05', 2, 0, 'lab dasar'),
(23, 'L3.R06', 2, 0, 'lab AK'),
(24, 'L3.R07', 2, 0, 'lab multimedia'),
(25, 'L2.R03', 2, 25, ''),
(26, 'L3.R01', 2, 30, ''),
(27, 'ruangan test', 2, 45, 'sampe'),
(28, 'Ruangan Tambahan', 5, 40, 'Digunakan untuk LAB');

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE IF NOT EXISTS `app_users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(1) NOT NULL COMMENT '1=admin ,2=pihak jurusan ,3=pegawai ,4=mahasiswa',
  `keterangan` varchar(5) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id_users`, `username`, `nama`, `password`, `level`, `keterangan`, `last_login`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '', '2018-02-27 10:04:34'),
(11, 'wiwik', '', '0fd1ec5593cd341c7c4af53276f10be6', 3, '', '2018-02-12 12:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `daemons`
--

CREATE TABLE IF NOT EXISTS `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE IF NOT EXISTS `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(11),
(11),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_biaya_kuliah`
--

CREATE TABLE IF NOT EXISTS `keuangan_biaya_kuliah` (
  `biaya_kuliah_id` int(11) NOT NULL,
  `jenis_bayar_id` int(3) NOT NULL,
  `konsentrasi_id` int(3) NOT NULL,
  `angkatan_id` int(3) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=977 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan_biaya_kuliah`
--

INSERT INTO `keuangan_biaya_kuliah` (`biaya_kuliah_id`, `jenis_bayar_id`, `konsentrasi_id`, `angkatan_id`, `jumlah`) VALUES
(227, 1, 1, 2, 500000),
(228, 2, 1, 2, 500000),
(229, 3, 1, 2, 500000),
(230, 9, 1, 2, 500000),
(231, 10, 1, 2, 500000),
(232, 11, 1, 2, 500000),
(233, 19, 1, 2, 500000),
(234, 1, 1, 1, 500000),
(235, 2, 1, 1, 500000),
(236, 3, 1, 1, 500000),
(237, 9, 1, 1, 500000),
(238, 10, 1, 1, 500000),
(239, 11, 1, 1, 500000),
(240, 19, 1, 1, 500000),
(241, 1, 1, 2, 0),
(242, 2, 1, 2, 0),
(243, 3, 1, 2, 0),
(244, 9, 1, 2, 0),
(245, 10, 1, 2, 0),
(246, 11, 1, 2, 0),
(247, 19, 1, 2, 0),
(248, 1, 2, 2, 600000),
(249, 2, 2, 2, 0),
(250, 3, 2, 2, 0),
(251, 9, 2, 2, 0),
(252, 10, 2, 2, 0),
(253, 11, 2, 2, 0),
(254, 19, 2, 2, 0),
(255, 1, 3, 2, 0),
(256, 2, 3, 2, 0),
(257, 3, 3, 2, 0),
(258, 9, 3, 2, 0),
(259, 10, 3, 2, 0),
(260, 11, 3, 2, 0),
(261, 19, 3, 2, 0),
(262, 1, 4, 2, 0),
(263, 2, 4, 2, 0),
(264, 3, 4, 2, 0),
(265, 9, 4, 2, 0),
(266, 10, 4, 2, 0),
(267, 11, 4, 2, 0),
(268, 19, 4, 2, 0),
(269, 1, 5, 2, 0),
(270, 2, 5, 2, 0),
(271, 3, 5, 2, 0),
(272, 9, 5, 2, 0),
(273, 10, 5, 2, 0),
(274, 11, 5, 2, 0),
(275, 19, 5, 2, 0),
(276, 1, 6, 2, 0),
(277, 2, 6, 2, 0),
(278, 3, 6, 2, 0),
(279, 9, 6, 2, 0),
(280, 10, 6, 2, 0),
(281, 11, 6, 2, 0),
(282, 19, 6, 2, 0),
(283, 1, 7, 2, 0),
(284, 2, 7, 2, 0),
(285, 3, 7, 2, 0),
(286, 9, 7, 2, 0),
(287, 10, 7, 2, 0),
(288, 11, 7, 2, 0),
(289, 19, 7, 2, 0),
(290, 1, 8, 2, 0),
(291, 2, 8, 2, 0),
(292, 3, 8, 2, 0),
(293, 9, 8, 2, 0),
(294, 10, 8, 2, 0),
(295, 11, 8, 2, 0),
(296, 19, 8, 2, 0),
(297, 1, 9, 2, 0),
(298, 2, 9, 2, 0),
(299, 3, 9, 2, 0),
(300, 9, 9, 2, 0),
(301, 10, 9, 2, 0),
(302, 11, 9, 2, 0),
(303, 19, 9, 2, 0),
(304, 1, 10, 2, 0),
(305, 2, 10, 2, 0),
(306, 3, 10, 2, 0),
(307, 9, 10, 2, 0),
(308, 10, 10, 2, 0),
(309, 11, 10, 2, 0),
(310, 19, 10, 2, 0),
(311, 1, 11, 2, 0),
(312, 2, 11, 2, 0),
(313, 3, 11, 2, 0),
(314, 9, 11, 2, 0),
(315, 10, 11, 2, 0),
(316, 11, 11, 2, 0),
(317, 19, 11, 2, 0),
(318, 1, 12, 2, 0),
(319, 2, 12, 2, 0),
(320, 3, 12, 2, 0),
(321, 9, 12, 2, 0),
(322, 10, 12, 2, 0),
(323, 11, 12, 2, 0),
(324, 19, 12, 2, 0),
(325, 1, 13, 2, 0),
(326, 2, 13, 2, 0),
(327, 3, 13, 2, 0),
(328, 9, 13, 2, 0),
(329, 10, 13, 2, 0),
(330, 11, 13, 2, 0),
(331, 19, 13, 2, 0),
(332, 1, 14, 2, 0),
(333, 2, 14, 2, 0),
(334, 3, 14, 2, 0),
(335, 9, 14, 2, 0),
(336, 10, 14, 2, 0),
(337, 11, 14, 2, 0),
(338, 19, 14, 2, 0),
(339, 1, 15, 2, 0),
(340, 2, 15, 2, 0),
(341, 3, 15, 2, 0),
(342, 9, 15, 2, 0),
(343, 10, 15, 2, 0),
(344, 11, 15, 2, 0),
(345, 19, 15, 2, 0),
(346, 1, 16, 2, 0),
(347, 2, 16, 2, 0),
(348, 3, 16, 2, 0),
(349, 9, 16, 2, 0),
(350, 10, 16, 2, 0),
(351, 11, 16, 2, 0),
(352, 19, 16, 2, 0),
(353, 1, 17, 2, 0),
(354, 2, 17, 2, 0),
(355, 3, 17, 2, 0),
(356, 9, 17, 2, 0),
(357, 10, 17, 2, 0),
(358, 11, 17, 2, 0),
(359, 19, 17, 2, 0),
(360, 1, 2, 1, 600000),
(361, 2, 2, 1, 0),
(362, 3, 2, 1, 0),
(363, 9, 2, 1, 0),
(364, 10, 2, 1, 600000),
(365, 11, 2, 1, 0),
(366, 19, 2, 1, 0),
(367, 1, 3, 1, 400000),
(368, 2, 3, 1, 300000),
(369, 3, 3, 1, 3400000),
(370, 9, 3, 1, 200000),
(371, 10, 3, 1, 100000),
(372, 11, 3, 1, 100000),
(373, 19, 3, 1, 950000),
(374, 1, 10, 1, 0),
(375, 2, 10, 1, 0),
(376, 3, 10, 1, 0),
(377, 9, 10, 1, 0),
(378, 10, 10, 1, 0),
(379, 11, 10, 1, 0),
(380, 19, 10, 1, 0),
(381, 1, 1, 2, 0),
(382, 2, 1, 2, 0),
(383, 3, 1, 2, 0),
(384, 9, 1, 2, 0),
(385, 10, 1, 2, 0),
(386, 11, 1, 2, 0),
(387, 19, 1, 2, 0),
(388, 1, 2, 2, 0),
(389, 2, 2, 2, 0),
(390, 3, 2, 2, 0),
(391, 9, 2, 2, 0),
(392, 10, 2, 2, 0),
(393, 11, 2, 2, 0),
(394, 19, 2, 2, 0),
(395, 1, 3, 2, 0),
(396, 2, 3, 2, 0),
(397, 3, 3, 2, 0),
(398, 9, 3, 2, 0),
(399, 10, 3, 2, 0),
(400, 11, 3, 2, 0),
(401, 19, 3, 2, 0),
(402, 1, 4, 2, 0),
(403, 2, 4, 2, 0),
(404, 3, 4, 2, 0),
(405, 9, 4, 2, 0),
(406, 10, 4, 2, 0),
(407, 11, 4, 2, 0),
(408, 19, 4, 2, 0),
(409, 1, 5, 2, 0),
(410, 2, 5, 2, 0),
(411, 3, 5, 2, 0),
(412, 9, 5, 2, 0),
(413, 10, 5, 2, 0),
(414, 11, 5, 2, 0),
(415, 19, 5, 2, 0),
(416, 1, 6, 2, 0),
(417, 2, 6, 2, 0),
(418, 3, 6, 2, 0),
(419, 9, 6, 2, 0),
(420, 10, 6, 2, 0),
(421, 11, 6, 2, 0),
(422, 19, 6, 2, 0),
(423, 1, 7, 2, 0),
(424, 2, 7, 2, 0),
(425, 3, 7, 2, 0),
(426, 9, 7, 2, 0),
(427, 10, 7, 2, 0),
(428, 11, 7, 2, 0),
(429, 19, 7, 2, 0),
(430, 1, 8, 2, 0),
(431, 2, 8, 2, 0),
(432, 3, 8, 2, 0),
(433, 9, 8, 2, 0),
(434, 10, 8, 2, 0),
(435, 11, 8, 2, 0),
(436, 19, 8, 2, 0),
(437, 1, 9, 2, 0),
(438, 2, 9, 2, 0),
(439, 3, 9, 2, 0),
(440, 9, 9, 2, 0),
(441, 10, 9, 2, 0),
(442, 11, 9, 2, 0),
(443, 19, 9, 2, 0),
(444, 1, 10, 2, 0),
(445, 2, 10, 2, 0),
(446, 3, 10, 2, 0),
(447, 9, 10, 2, 0),
(448, 10, 10, 2, 0),
(449, 11, 10, 2, 0),
(450, 19, 10, 2, 0),
(451, 1, 11, 2, 0),
(452, 2, 11, 2, 0),
(453, 3, 11, 2, 0),
(454, 9, 11, 2, 0),
(455, 10, 11, 2, 0),
(456, 11, 11, 2, 0),
(457, 19, 11, 2, 0),
(458, 1, 12, 2, 0),
(459, 2, 12, 2, 0),
(460, 3, 12, 2, 0),
(461, 9, 12, 2, 0),
(462, 10, 12, 2, 0),
(463, 11, 12, 2, 0),
(464, 19, 12, 2, 0),
(465, 1, 13, 2, 0),
(466, 2, 13, 2, 0),
(467, 3, 13, 2, 0),
(468, 9, 13, 2, 0),
(469, 10, 13, 2, 0),
(470, 11, 13, 2, 0),
(471, 19, 13, 2, 0),
(472, 1, 14, 2, 0),
(473, 2, 14, 2, 0),
(474, 3, 14, 2, 0),
(475, 9, 14, 2, 0),
(476, 10, 14, 2, 0),
(477, 11, 14, 2, 0),
(478, 19, 14, 2, 0),
(479, 1, 15, 2, 0),
(480, 2, 15, 2, 0),
(481, 3, 15, 2, 0),
(482, 9, 15, 2, 0),
(483, 10, 15, 2, 0),
(484, 11, 15, 2, 0),
(485, 19, 15, 2, 0),
(486, 1, 16, 2, 0),
(487, 2, 16, 2, 0),
(488, 3, 16, 2, 0),
(489, 9, 16, 2, 0),
(490, 10, 16, 2, 0),
(491, 11, 16, 2, 0),
(492, 19, 16, 2, 0),
(493, 1, 17, 2, 0),
(494, 2, 17, 2, 0),
(495, 3, 17, 2, 0),
(496, 9, 17, 2, 0),
(497, 10, 17, 2, 0),
(498, 11, 17, 2, 0),
(499, 19, 17, 2, 0),
(500, 20, 1, 1, 0),
(501, 20, 2, 1, 0),
(502, 20, 3, 1, 0),
(503, 20, 4, 1, 0),
(504, 20, 5, 1, 0),
(505, 20, 6, 1, 0),
(506, 20, 7, 1, 0),
(507, 20, 8, 1, 0),
(508, 20, 9, 1, 0),
(509, 20, 10, 1, 0),
(510, 20, 11, 1, 0),
(511, 20, 12, 1, 0),
(512, 20, 13, 1, 0),
(513, 20, 14, 1, 0),
(514, 20, 15, 1, 0),
(515, 20, 16, 1, 0),
(516, 20, 17, 1, 0),
(517, 22, 1, 1, 0),
(518, 22, 2, 1, 0),
(519, 22, 3, 1, 0),
(520, 22, 4, 1, 0),
(521, 22, 5, 1, 0),
(522, 22, 6, 1, 0),
(523, 22, 7, 1, 0),
(524, 22, 8, 1, 0),
(525, 22, 9, 1, 0),
(526, 22, 10, 1, 0),
(527, 22, 11, 1, 0),
(528, 22, 12, 1, 0),
(529, 22, 13, 1, 0),
(530, 22, 14, 1, 0),
(531, 22, 15, 1, 0),
(532, 22, 16, 1, 0),
(533, 22, 17, 1, 0),
(534, 22, 2, 2, 0),
(535, 1, 1, 2, 0),
(536, 2, 1, 2, 0),
(537, 3, 1, 2, 0),
(538, 9, 1, 2, 0),
(539, 10, 1, 2, 0),
(540, 11, 1, 2, 0),
(541, 19, 1, 2, 0),
(542, 22, 1, 2, 0),
(543, 1, 2, 2, 0),
(544, 2, 2, 2, 0),
(545, 3, 2, 2, 0),
(546, 9, 2, 2, 0),
(547, 10, 2, 2, 0),
(548, 11, 2, 2, 0),
(549, 19, 2, 2, 0),
(550, 22, 2, 2, 0),
(551, 1, 3, 2, 0),
(552, 2, 3, 2, 0),
(553, 3, 3, 2, 0),
(554, 9, 3, 2, 0),
(555, 10, 3, 2, 0),
(556, 11, 3, 2, 0),
(557, 19, 3, 2, 0),
(558, 22, 3, 2, 0),
(559, 1, 4, 2, 0),
(560, 2, 4, 2, 0),
(561, 3, 4, 2, 0),
(562, 9, 4, 2, 0),
(563, 10, 4, 2, 0),
(564, 11, 4, 2, 0),
(565, 19, 4, 2, 0),
(566, 22, 4, 2, 0),
(567, 1, 5, 2, 0),
(568, 2, 5, 2, 0),
(569, 3, 5, 2, 0),
(570, 9, 5, 2, 0),
(571, 10, 5, 2, 0),
(572, 11, 5, 2, 0),
(573, 19, 5, 2, 0),
(574, 22, 5, 2, 0),
(575, 1, 6, 2, 0),
(576, 2, 6, 2, 0),
(577, 3, 6, 2, 0),
(578, 9, 6, 2, 0),
(579, 10, 6, 2, 0),
(580, 11, 6, 2, 0),
(581, 19, 6, 2, 0),
(582, 22, 6, 2, 0),
(583, 1, 7, 2, 0),
(584, 2, 7, 2, 0),
(585, 3, 7, 2, 0),
(586, 9, 7, 2, 0),
(587, 10, 7, 2, 0),
(588, 11, 7, 2, 0),
(589, 19, 7, 2, 0),
(590, 22, 7, 2, 0),
(591, 1, 8, 2, 0),
(592, 2, 8, 2, 0),
(593, 3, 8, 2, 0),
(594, 9, 8, 2, 0),
(595, 10, 8, 2, 0),
(596, 11, 8, 2, 0),
(597, 19, 8, 2, 0),
(598, 22, 8, 2, 0),
(599, 1, 9, 2, 0),
(600, 2, 9, 2, 0),
(601, 3, 9, 2, 0),
(602, 9, 9, 2, 0),
(603, 10, 9, 2, 0),
(604, 11, 9, 2, 0),
(605, 19, 9, 2, 0),
(606, 22, 9, 2, 0),
(607, 1, 10, 2, 0),
(608, 2, 10, 2, 0),
(609, 3, 10, 2, 0),
(610, 9, 10, 2, 0),
(611, 10, 10, 2, 0),
(612, 11, 10, 2, 0),
(613, 19, 10, 2, 0),
(614, 22, 10, 2, 0),
(615, 1, 11, 2, 0),
(616, 2, 11, 2, 0),
(617, 3, 11, 2, 0),
(618, 9, 11, 2, 0),
(619, 10, 11, 2, 0),
(620, 11, 11, 2, 0),
(621, 19, 11, 2, 0),
(622, 22, 11, 2, 0),
(623, 1, 12, 2, 0),
(624, 2, 12, 2, 0),
(625, 3, 12, 2, 0),
(626, 9, 12, 2, 0),
(627, 10, 12, 2, 0),
(628, 11, 12, 2, 0),
(629, 19, 12, 2, 0),
(630, 22, 12, 2, 0),
(631, 1, 13, 2, 0),
(632, 2, 13, 2, 0),
(633, 3, 13, 2, 0),
(634, 9, 13, 2, 0),
(635, 10, 13, 2, 0),
(636, 11, 13, 2, 0),
(637, 19, 13, 2, 0),
(638, 22, 13, 2, 0),
(639, 1, 14, 2, 0),
(640, 2, 14, 2, 0),
(641, 3, 14, 2, 0),
(642, 9, 14, 2, 0),
(643, 10, 14, 2, 0),
(644, 11, 14, 2, 0),
(645, 19, 14, 2, 0),
(646, 22, 14, 2, 0),
(647, 1, 15, 2, 0),
(648, 2, 15, 2, 0),
(649, 3, 15, 2, 0),
(650, 9, 15, 2, 0),
(651, 10, 15, 2, 0),
(652, 11, 15, 2, 0),
(653, 19, 15, 2, 0),
(654, 22, 15, 2, 0),
(655, 1, 16, 2, 0),
(656, 2, 16, 2, 0),
(657, 3, 16, 2, 0),
(658, 9, 16, 2, 0),
(659, 10, 16, 2, 0),
(660, 11, 16, 2, 0),
(661, 19, 16, 2, 0),
(662, 22, 16, 2, 0),
(663, 1, 17, 2, 0),
(664, 2, 17, 2, 0),
(665, 3, 17, 2, 0),
(666, 9, 17, 2, 0),
(667, 10, 17, 2, 0),
(668, 11, 17, 2, 0),
(669, 19, 17, 2, 0),
(670, 22, 17, 2, 0),
(671, 1, 1, 2, 0),
(672, 2, 1, 2, 0),
(673, 3, 1, 2, 0),
(674, 9, 1, 2, 0),
(675, 10, 1, 2, 0),
(676, 11, 1, 2, 0),
(677, 19, 1, 2, 0),
(678, 22, 1, 2, 0),
(679, 1, 2, 2, 0),
(680, 2, 2, 2, 0),
(681, 3, 2, 2, 0),
(682, 9, 2, 2, 0),
(683, 10, 2, 2, 0),
(684, 11, 2, 2, 0),
(685, 19, 2, 2, 0),
(686, 22, 2, 2, 0),
(687, 1, 3, 2, 0),
(688, 2, 3, 2, 0),
(689, 3, 3, 2, 0),
(690, 9, 3, 2, 0),
(691, 10, 3, 2, 0),
(692, 11, 3, 2, 0),
(693, 19, 3, 2, 0),
(694, 22, 3, 2, 0),
(695, 1, 4, 2, 0),
(696, 2, 4, 2, 0),
(697, 3, 4, 2, 0),
(698, 9, 4, 2, 0),
(699, 10, 4, 2, 0),
(700, 11, 4, 2, 0),
(701, 19, 4, 2, 0),
(702, 22, 4, 2, 0),
(703, 1, 5, 2, 0),
(704, 2, 5, 2, 0),
(705, 3, 5, 2, 0),
(706, 9, 5, 2, 0),
(707, 10, 5, 2, 0),
(708, 11, 5, 2, 0),
(709, 19, 5, 2, 0),
(710, 22, 5, 2, 0),
(711, 1, 6, 2, 0),
(712, 2, 6, 2, 0),
(713, 3, 6, 2, 0),
(714, 9, 6, 2, 0),
(715, 10, 6, 2, 0),
(716, 11, 6, 2, 0),
(717, 19, 6, 2, 0),
(718, 22, 6, 2, 0),
(719, 1, 7, 2, 0),
(720, 2, 7, 2, 0),
(721, 3, 7, 2, 0),
(722, 9, 7, 2, 0),
(723, 10, 7, 2, 0),
(724, 11, 7, 2, 0),
(725, 19, 7, 2, 0),
(726, 22, 7, 2, 0),
(727, 1, 8, 2, 0),
(728, 2, 8, 2, 0),
(729, 3, 8, 2, 0),
(730, 9, 8, 2, 0),
(731, 10, 8, 2, 0),
(732, 11, 8, 2, 0),
(733, 19, 8, 2, 0),
(734, 22, 8, 2, 0),
(735, 1, 9, 2, 0),
(736, 2, 9, 2, 0),
(737, 3, 9, 2, 0),
(738, 9, 9, 2, 0),
(739, 10, 9, 2, 0),
(740, 11, 9, 2, 0),
(741, 19, 9, 2, 0),
(742, 22, 9, 2, 0),
(743, 1, 10, 2, 0),
(744, 2, 10, 2, 0),
(745, 3, 10, 2, 0),
(746, 9, 10, 2, 0),
(747, 10, 10, 2, 0),
(748, 11, 10, 2, 0),
(749, 19, 10, 2, 0),
(750, 22, 10, 2, 0),
(751, 1, 11, 2, 0),
(752, 2, 11, 2, 0),
(753, 3, 11, 2, 0),
(754, 9, 11, 2, 0),
(755, 10, 11, 2, 0),
(756, 11, 11, 2, 0),
(757, 19, 11, 2, 0),
(758, 22, 11, 2, 0),
(759, 1, 12, 2, 0),
(760, 2, 12, 2, 0),
(761, 3, 12, 2, 0),
(762, 9, 12, 2, 0),
(763, 10, 12, 2, 0),
(764, 11, 12, 2, 0),
(765, 19, 12, 2, 0),
(766, 22, 12, 2, 0),
(767, 1, 13, 2, 0),
(768, 2, 13, 2, 0),
(769, 3, 13, 2, 0),
(770, 9, 13, 2, 0),
(771, 10, 13, 2, 0),
(772, 11, 13, 2, 0),
(773, 19, 13, 2, 0),
(774, 22, 13, 2, 0),
(775, 1, 14, 2, 0),
(776, 2, 14, 2, 0),
(777, 3, 14, 2, 0),
(778, 9, 14, 2, 0),
(779, 10, 14, 2, 0),
(780, 11, 14, 2, 0),
(781, 19, 14, 2, 0),
(782, 22, 14, 2, 0),
(783, 1, 15, 2, 0),
(784, 2, 15, 2, 0),
(785, 3, 15, 2, 0),
(786, 9, 15, 2, 0),
(787, 10, 15, 2, 0),
(788, 11, 15, 2, 0),
(789, 19, 15, 2, 0),
(790, 22, 15, 2, 0),
(791, 1, 16, 2, 0),
(792, 2, 16, 2, 0),
(793, 3, 16, 2, 0),
(794, 9, 16, 2, 0),
(795, 10, 16, 2, 0),
(796, 11, 16, 2, 0),
(797, 19, 16, 2, 0),
(798, 22, 16, 2, 0),
(799, 1, 17, 2, 0),
(800, 2, 17, 2, 0),
(801, 3, 17, 2, 0),
(802, 9, 17, 2, 0),
(803, 10, 17, 2, 0),
(804, 11, 17, 2, 0),
(805, 19, 17, 2, 0),
(806, 22, 17, 2, 0),
(807, 1, 1, 2, 0),
(808, 2, 1, 2, 0),
(809, 3, 1, 2, 0),
(810, 9, 1, 2, 0),
(811, 10, 1, 2, 0),
(812, 11, 1, 2, 0),
(813, 19, 1, 2, 0),
(814, 22, 1, 2, 0),
(815, 1, 2, 2, 0),
(816, 2, 2, 2, 0),
(817, 3, 2, 2, 0),
(818, 9, 2, 2, 0),
(819, 10, 2, 2, 0),
(820, 11, 2, 2, 0),
(821, 19, 2, 2, 0),
(822, 22, 2, 2, 0),
(823, 1, 3, 2, 0),
(824, 2, 3, 2, 0),
(825, 3, 3, 2, 0),
(826, 9, 3, 2, 0),
(827, 10, 3, 2, 0),
(828, 11, 3, 2, 0),
(829, 19, 3, 2, 0),
(830, 22, 3, 2, 0),
(831, 1, 4, 2, 0),
(832, 2, 4, 2, 0),
(833, 3, 4, 2, 0),
(834, 9, 4, 2, 0),
(835, 10, 4, 2, 0),
(836, 11, 4, 2, 0),
(837, 19, 4, 2, 0),
(838, 22, 4, 2, 0),
(839, 1, 5, 2, 0),
(840, 2, 5, 2, 0),
(841, 3, 5, 2, 0),
(842, 9, 5, 2, 0),
(843, 10, 5, 2, 0),
(844, 11, 5, 2, 0),
(845, 19, 5, 2, 0),
(846, 22, 5, 2, 0),
(847, 1, 6, 2, 0),
(848, 2, 6, 2, 0),
(849, 3, 6, 2, 0),
(850, 9, 6, 2, 0),
(851, 10, 6, 2, 0),
(852, 11, 6, 2, 0),
(853, 19, 6, 2, 0),
(854, 22, 6, 2, 0),
(855, 1, 7, 2, 0),
(856, 2, 7, 2, 0),
(857, 3, 7, 2, 0),
(858, 9, 7, 2, 0),
(859, 10, 7, 2, 0),
(860, 11, 7, 2, 0),
(861, 19, 7, 2, 0),
(862, 22, 7, 2, 0),
(863, 1, 8, 2, 0),
(864, 2, 8, 2, 0),
(865, 3, 8, 2, 0),
(866, 9, 8, 2, 0),
(867, 10, 8, 2, 0),
(868, 11, 8, 2, 0),
(869, 19, 8, 2, 0),
(870, 22, 8, 2, 0),
(871, 1, 9, 2, 0),
(872, 2, 9, 2, 0),
(873, 3, 9, 2, 0),
(874, 9, 9, 2, 0),
(875, 10, 9, 2, 0),
(876, 11, 9, 2, 0),
(877, 19, 9, 2, 0),
(878, 22, 9, 2, 0),
(879, 1, 10, 2, 0),
(880, 2, 10, 2, 0),
(881, 3, 10, 2, 0),
(882, 9, 10, 2, 0),
(883, 10, 10, 2, 0),
(884, 11, 10, 2, 0),
(885, 19, 10, 2, 0),
(886, 22, 10, 2, 0),
(887, 1, 11, 2, 0),
(888, 2, 11, 2, 0),
(889, 3, 11, 2, 0),
(890, 9, 11, 2, 0),
(891, 10, 11, 2, 0),
(892, 11, 11, 2, 0),
(893, 19, 11, 2, 0),
(894, 22, 11, 2, 0),
(895, 1, 12, 2, 0),
(896, 2, 12, 2, 0),
(897, 3, 12, 2, 0),
(898, 9, 12, 2, 0),
(899, 10, 12, 2, 0),
(900, 11, 12, 2, 0),
(901, 19, 12, 2, 0),
(902, 22, 12, 2, 0),
(903, 1, 13, 2, 0),
(904, 2, 13, 2, 0),
(905, 3, 13, 2, 0),
(906, 9, 13, 2, 0),
(907, 10, 13, 2, 0),
(908, 11, 13, 2, 0),
(909, 19, 13, 2, 0),
(910, 22, 13, 2, 0),
(911, 1, 14, 2, 0),
(912, 2, 14, 2, 0),
(913, 3, 14, 2, 0),
(914, 9, 14, 2, 0),
(915, 10, 14, 2, 0),
(916, 11, 14, 2, 0),
(917, 19, 14, 2, 0),
(918, 22, 14, 2, 0),
(919, 1, 15, 2, 0),
(920, 2, 15, 2, 0),
(921, 3, 15, 2, 0),
(922, 9, 15, 2, 0),
(923, 10, 15, 2, 0),
(924, 11, 15, 2, 0),
(925, 19, 15, 2, 0),
(926, 22, 15, 2, 0),
(927, 1, 16, 2, 0),
(928, 2, 16, 2, 0),
(929, 3, 16, 2, 0),
(930, 9, 16, 2, 0),
(931, 10, 16, 2, 0),
(932, 11, 16, 2, 0),
(933, 19, 16, 2, 0),
(934, 22, 16, 2, 0),
(935, 1, 17, 2, 0),
(936, 2, 17, 2, 0),
(937, 3, 17, 2, 0),
(938, 9, 17, 2, 0),
(939, 10, 17, 2, 0),
(940, 11, 17, 2, 0),
(941, 19, 17, 2, 0),
(942, 22, 17, 2, 0),
(943, 23, 1, 2, 0),
(944, 23, 2, 2, 0),
(945, 23, 3, 2, 0),
(946, 23, 4, 2, 0),
(947, 23, 5, 2, 0),
(948, 23, 6, 2, 0),
(949, 23, 7, 2, 0),
(950, 23, 8, 2, 0),
(951, 23, 9, 2, 0),
(952, 23, 10, 2, 0),
(953, 23, 11, 2, 0),
(954, 23, 12, 2, 0),
(955, 23, 13, 2, 0),
(956, 23, 14, 2, 0),
(957, 23, 15, 2, 0),
(958, 23, 16, 2, 0),
(959, 23, 17, 2, 0),
(960, 24, 1, 2, 0),
(961, 24, 2, 2, 0),
(962, 24, 3, 2, 0),
(963, 24, 4, 2, 0),
(964, 24, 5, 2, 0),
(965, 24, 6, 2, 0),
(966, 24, 7, 2, 0),
(967, 24, 8, 2, 0),
(968, 24, 9, 2, 0),
(969, 24, 10, 2, 0),
(970, 24, 11, 2, 0),
(971, 24, 12, 2, 0),
(972, 24, 13, 2, 0),
(973, 24, 14, 2, 0),
(974, 24, 15, 2, 0),
(975, 24, 16, 2, 0),
(976, 24, 17, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_jenis_bayar`
--

CREATE TABLE IF NOT EXISTS `keuangan_jenis_bayar` (
  `jenis_bayar_id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan_jenis_bayar`
--

INSERT INTO `keuangan_jenis_bayar` (`jenis_bayar_id`, `keterangan`) VALUES
(1, 'pendaftaran'),
(2, 'peka'),
(3, 'spp'),
(9, 'dsp'),
(10, 'kemahasiswaan'),
(11, 'asuransi'),
(19, 'wisuda'),
(22, 'xzxzxdsd'),
(24, 'Kredit 2x');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_pembayaran`
--

CREATE TABLE IF NOT EXISTS `keuangan_pembayaran` (
  `pembayaran_id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `no_bayar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_pembayaran_detail`
--

CREATE TABLE IF NOT EXISTS `keuangan_pembayaran_detail` (
  `pembayara_detail_id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nim` varchar(11) NOT NULL,
  `jenis_bayar_id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan_pembayaran_detail`
--

INSERT INTO `keuangan_pembayaran_detail` (`pembayara_detail_id`, `tanggal`, `nim`, `jenis_bayar_id`, `id_users`, `jumlah`, `semester`) VALUES
(13, '2014-06-04 14:03:51', 'TI102134', 1, 1, 400000, 0),
(14, '2014-06-04 14:07:16', 'TI102134', 3, 1, 3400000, 1),
(15, '2014-06-04 14:07:37', 'TI102134', 3, 1, 3400000, 2),
(16, '2014-06-04 14:07:49', 'TI102134', 2, 1, 150000, 0),
(17, '2014-06-14 10:09:00', 'KA131002', 3, 1, 3400000, 1),
(18, '2014-06-14 10:09:37', 'KA131002', 3, 1, 3400000, 2),
(19, '2014-06-14 14:57:34', 'ti102134', 10, 1, 100000, 0),
(20, '2017-11-23 09:31:33', 'KA131002', 1, 1, 55500, 0),
(24, '2017-12-15 00:21:01', '2014020031', 1, 1, 200000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_transaksi`
--

CREATE TABLE IF NOT EXISTS `keuangan_transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nim` varchar(8) NOT NULL,
  `biaya_kuliah_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `added_by` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'L=lunas ,1= cicilan ke 1 ,2=cicilan ke 2, 3=cicilan ke 3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_mainmenu` int(11) NOT NULL,
  `nama_mainmenu` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `aktif` enum('y','t') NOT NULL,
  `link` varchar(50) NOT NULL,
  `level` int(11) NOT NULL COMMENT '1= admin,2=jurusan,3 dosen'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id_mainmenu`, `nama_mainmenu`, `icon`, `aktif`, `link`, `level`) VALUES
(26, 'master data', 'fa fa-bar-chart-o', 'y', '#', 1),
(27, 'mahassiwa', 'gi gi-group', 'y', 'mahasiswa', 1),
(28, 'akademik', 'fa fa-building-o', 'y', '#', 1),
(29, 'keuangan', 'gi gi-money', 'y', '#', 1),
(30, 'pengguna sistem', 'gi gi-qrcode', 'y', 'users', 1),
(31, 'Mahasiswa', 'gi gi-group', 'y', 'mahasiswa', 2),
(32, 'dosen', 'gi gi-user', 'y', 'dosen', 2),
(33, 'matakuliah', 'gi gi-address_book', 'y', 'matakuliah', 2),
(34, 'registrasi', 'hi hi-qrcode', 'y', 'registrasi', 2),
(35, 'krs & khs', 'gi gi-display', 'y', '#', 2),
(36, 'jadwal kuliah', 'gi gi-calendar', 'y', 'jadwalkuliah', 2),
(37, 'jadwal', 'gi gi-calendar', 'y', 'jadwalkuliah/jadwalngajar', 3),
(38, 'absen mahasiswa', 'gi gi-notes_2', 'y', 'absensi', 3),
(39, 'nilai', 'gi gi-stats', 'y', 'khs/berinilai', 3),
(40, 'bodata', 'gi gi-user', 'y', 'users/account', 3);

-- --------------------------------------------------------

--
-- Table structure for table `makul_kelompok`
--

CREATE TABLE IF NOT EXISTS `makul_kelompok` (
  `kelompok_id` int(11) NOT NULL,
  `kode_kelompok` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul_kelompok`
--

INSERT INTO `makul_kelompok` (`kelompok_id`, `kode_kelompok`, `nama`) VALUES
(1, 'mpk', 'mata kuliah pengembangan keperibadian'),
(2, 'mkk', 'mata kuliah pengembangan keilmuan dan keterampilan'),
(3, 'mkb', 'mata kuliah keahlian berkarya'),
(4, 'mpb', 'mata kuliah perilaku berkarya'),
(5, 'mbb', 'matakuliah berkehidupan bermasyarakat');

-- --------------------------------------------------------

--
-- Table structure for table `makul_matakuliah`
--

CREATE TABLE IF NOT EXISTS `makul_matakuliah` (
  `makul_id` int(11) NOT NULL,
  `kode_makul` varchar(11) NOT NULL,
  `nama_makul` varchar(60) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(1) NOT NULL,
  `konsentrasi_id` int(3) NOT NULL,
  `kelompok_id` int(1) NOT NULL,
  `aktif` enum('y','n') NOT NULL,
  `jam` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul_matakuliah`
--

INSERT INTO `makul_matakuliah` (`makul_id`, `kode_makul`, `nama_makul`, `sks`, `semester`, `konsentrasi_id`, `kelompok_id`, `aktif`, `jam`) VALUES
(1, 'DTIKB01', 'STRUKTUR DATA', 4, 1, 3, 2, 'n', 4),
(2, 'DTIKB011', 'KONSEP PEMROGRAMAN', 4, 1, 3, 2, 'y', 4),
(3, 'DTIKB012', 'PRAKTEK KONSEP PEMROGRAMAN', 4, 1, 3, 2, 'y', 4),
(4, 'DTIKB02', 'SISTEM OPERASI 1', 4, 1, 3, 2, 'y', 4),
(5, 'DTIKB03', 'SISTEM OPERASI 2', 4, 1, 3, 2, 'y', 4),
(6, 'DTIKB04', 'PEMROGRAMAN DELPHI', 4, 1, 3, 2, 'y', 4),
(7, 'DTIKB05', 'JARINGAN KOMPUTER 1', 4, 2, 3, 2, 'y', 4),
(8, 'DTIKB06', 'APLIKASI DAN TEKNOLOGI WEB', 4, 2, 3, 2, 'y', 4),
(9, 'DTIKB07', 'KOMUNIKASI DATA', 4, 2, 3, 2, 'y', 4),
(10, 'DTIKB08', 'DESAIN BERBASIS KOMPUTER', 4, 2, 3, 2, 'y', 4),
(11, 'DTIKB09', 'MIKROPROSESOR', 4, 2, 3, 2, 'y', 4),
(12, 'DTIKB10', 'INTERFACING PERIPHERAL KOMPUTER', 4, 2, 3, 2, 'y', 4),
(13, 'DTIKB11', 'ARSITEKTUR KOMPUTER 1', 4, 3, 3, 2, 'y', 4),
(14, 'DTIKB12', 'ARSITEKTUR KOMPUTER 2', 4, 3, 3, 2, 'y', 4),
(15, 'DTIKB13', 'PERALATAN ELEKTRONIKA', 4, 3, 3, 2, 'y', 4),
(16, 'DTIKB14', 'TROUBLESHOOTING', 4, 3, 3, 2, 'y', 4),
(17, 'DTIKB15', 'PEMROGRAMAN BASIS DATA', 4, 3, 3, 2, 'y', 4),
(18, 'DTIKB16', 'SISTEM INFORMASI MANAJEMEN', 4, 3, 3, 2, 'y', 4),
(19, 'DTIKB17', 'PERANCANGAN SISTEM INFORMASI', 4, 4, 3, 2, 'y', 4),
(20, 'DTIKB18', 'PENGOLAHAN CITRA DIGITAL', 4, 4, 3, 2, 'y', 4),
(21, 'DTIKB19', 'RANGKAIAN DIGITAL', 4, 4, 3, 2, 'y', 4),
(22, 'DTIKB20', 'PEMROGRAMAN BAHASA C++', 4, 4, 3, 2, 'y', 4),
(23, 'DTIKB21', 'PEMROGRAMAN VISUAL', 4, 4, 3, 2, 'y', 4),
(24, 'DTIKB22', 'KOMPUTER GRAFIS', 4, 4, 3, 2, 'y', 4),
(25, 'DTIKB23', 'WIRELESS & MOBILE COMM', 4, 5, 3, 2, 'y', 4),
(26, 'DTIKB24', 'REKAYASA PERANGKAT LUNAK', 4, 5, 3, 2, 'y', 4),
(27, 'DTIKB25', 'SISTEM KEAMANAN JARINGAN', 4, 5, 3, 2, 'y', 4),
(28, 'DTIKB26', 'PEMROGRAMAN BERBASIS OBJEK', 4, 5, 3, 2, 'y', 4),
(29, 'DTIKB27', 'ROBOTIK', 4, 5, 3, 2, 'y', 4),
(30, 'DTIKB28', 'SISTEM MULTIMEDIA', 4, 5, 3, 2, 'y', 4),
(31, 'DTIKB29', 'KOMPUTER ANIMASI', 4, 6, 3, 2, 'y', 4),
(32, 'DTIKB30', 'SIMULASI & PEMODELAN', 4, 6, 3, 2, 'y', 4),
(33, 'DTIKB31', 'PENGOLAHAN SINYAL DIGITAL', 4, 6, 3, 2, 'y', 4),
(34, 'DTIKB32', 'KECERDASAN BUATAN', 4, 6, 3, 2, 'y', 4),
(35, 'DTIKB33', 'DATA WAREHOUSE', 4, 6, 3, 2, 'y', 4),
(36, 'DTIKB34', 'JARINGAN KOMPUTER 2', 4, 6, 3, 2, 'y', 4),
(37, 'DTIKB35', 'PRAKTEK BASIS DATA', 4, 7, 3, 2, 'y', 4),
(38, 'DTIKB36', 'PRAKTEK JARINGAN', 4, 7, 3, 2, 'y', 4),
(39, 'DTIKB37', 'PRAKTEK PEMOGRAMAN', 4, 7, 3, 2, 'y', 4),
(40, 'DTIKB38', 'PRAKTEK PEMOGRAMAN WEB', 4, 7, 3, 2, 'y', 4),
(41, 'DTIKB39', 'DATA MINING', 4, 7, 3, 2, 'y', 4),
(42, 'DTIKB40', 'MACHINE LEARNING', 4, 7, 3, 2, 'y', 4),
(43, 'DTIKB41', 'KEAMANAN DATA', 4, 8, 3, 2, 'y', 4),
(44, 'DTIKB42', 'PRAKTEK KEAMANAN DATA', 4, 8, 3, 2, 'y', 4),
(45, 'DTIKB43', 'ISSU PROFESIONAL DAN SOSIAL IT', 4, 8, 3, 2, 'y', 4),
(46, 'DTIKK01', 'MATEMATIKA 1', 4, 8, 3, 2, 'y', 4),
(47, 'DTIKK02', 'MATEMATIKA 2', 4, 8, 3, 2, 'y', 4),
(48, 'DTIKK03', 'STATISTIK & PROBABILITAS', 4, 8, 3, 2, 'y', 4),
(49, 'DTIKK04', 'PERANGKAT LUNAK APLIKASI', 4, 9, 3, 2, 'y', 4);

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE IF NOT EXISTS `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES
('2014-05-12 09:23:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 46, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:23:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 45, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:23:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 44, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:23:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 42, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:23:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 43, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:23:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 41, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 47, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-12 09:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 48, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-22 03:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah -500000', 49, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris'),
('2014-05-22 03:14:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '082121473036', 'Default_No_Compression', NULL, -1, 'Biaya Tunggakan Keuangan anak anda adalah 4750000', 50, 'false', -1, 'keuangan', '0000-00-00 00:00:00', 'default', 'Nuris');

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE IF NOT EXISTS `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk`
--

CREATE TABLE IF NOT EXISTS `pbk` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk_groups`
--

CREATE TABLE IF NOT EXISTS `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '0',
  `Signal` int(11) NOT NULL DEFAULT '0',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('keuangan', '2014-05-12 01:27:43', '2014-05-11 23:20:24', '2014-05-12 01:27:53', 'yes', 'yes', '354058180822796', 'Gammu 1.28.90, Windows Server 2007, GCC 4.4, MinGW 3.13', 0, 0, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE IF NOT EXISTS `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2014-04-27 23:08:17', '0000-00-00 00:00:00', '2014-04-27 23:08:17', NULL, '00740065007300740069006E006700200073006D0073002000700065007200740061006D0061', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'testing sms pertama', 1, 'testingSMS', 1, 'SendingOKNoReport', -1, 19, 255, 'Gammu 1.28.90'),
('2014-04-27 23:26:31', '0000-00-00 00:00:00', '2014-04-27 23:26:31', NULL, '007400650073007400200073006D00730020006B0065006400750061', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'test sms kedua', 2, 'testingSMS', 1, 'SendingError', -1, -1, 255, 'nuris'),
('2014-04-27 23:28:50', '0000-00-00 00:00:00', '2014-04-27 23:28:50', NULL, '006800680068006800680068', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'hhhhhh', 8, 'testingSMS', 1, 'SendingOKNoReport', -1, 20, 255, 'Gammu 1.28.90'),
('2014-04-27 23:28:53', '0000-00-00 00:00:00', '2014-04-27 23:28:53', NULL, '00680061006C006C006F0020006E0075007200690073', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'hallo nuris', 3, 'testingSMS', 1, 'SendingOKNoReport', -1, 21, 255, 'Gammu'),
('2014-04-27 23:28:56', '0000-00-00 00:00:00', '2014-04-27 23:28:56', NULL, '00680061006C006C006F0020006E0075007200690073', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'hallo nuris', 4, 'testingSMS', 1, 'SendingOKNoReport', -1, 22, 255, 'Gammu'),
('2014-04-27 23:29:00', '0000-00-00 00:00:00', '2014-04-27 23:29:00', NULL, '0068006100690020006E007500720069007300200061006B006200610072', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'hai nuris akbar', 5, 'testingSMS', 1, 'SendingOKNoReport', -1, 23, 255, 'Gammu 1.28.90'),
('2014-04-27 23:29:03', '0000-00-00 00:00:00', '2014-04-27 23:29:03', NULL, '0068006100690020006E007500720069007300200061006B0062006100720032', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'hai nuris akbar2', 6, 'testingSMS', 1, 'SendingOKNoReport', -1, 24, 255, 'Gammu 1.28.90'),
('2014-04-27 23:29:06', '0000-00-00 00:00:00', '2014-04-27 23:29:06', NULL, '00630063006300630063', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'ccccc', 7, 'testingSMS', 1, 'SendingOKNoReport', -1, 25, 255, 'Gammu 1.28.90'),
('2014-04-27 23:29:09', '0000-00-00 00:00:00', '2014-04-27 23:29:09', NULL, '006B006B006B006B006B', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'kkkkk', 9, 'testingSMS', 1, 'SendingOKNoReport', -1, 26, 255, 'Gammu 1.28.90'),
('2014-04-27 23:45:17', '0000-00-00 00:00:00', '2014-04-27 23:45:17', NULL, '0063006F006200610020006B006900720069006D0020006400610072006900200063006F0064006500690067006E0069007400650072', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'coba kirim dari codeigniter', 10, 'testingSMS', 1, 'SendingOKNoReport', -1, 27, 255, 'Gammu 1.28.90'),
('2014-04-27 23:45:21', '0000-00-00 00:00:00', '2014-04-27 23:45:21', NULL, '0063006F006200610020006B006900720069006D0020006400610072006900200063006F0064006500690067006E00690074006500720020006B0065006400750061', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'coba kirim dari codeigniter kedua', 11, 'testingSMS', 1, 'SendingOKNoReport', -1, 28, 255, 'Gammu 1.28.90'),
('2014-04-27 23:45:56', '0000-00-00 00:00:00', '2014-04-27 23:45:56', NULL, '0063006F006200610020006B006900720069006D0020006400610072006900200063006F0064006500690067006E00690074006500720020006B00650074006900670061', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'coba kirim dari codeigniter ketiga', 12, 'testingSMS', 1, 'SendingOKNoReport', -1, 29, 255, 'Gammu 1.28.90'),
('2014-04-27 23:49:01', '0000-00-00 00:00:00', '2014-04-27 23:49:01', NULL, '006800610069002000620072006F', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'hai bro', 13, 'testingSMS', 1, 'SendingOKNoReport', -1, 30, 255, 'Gammu 1.28.90'),
('2014-04-28 00:30:10', '0000-00-00 00:00:00', '2014-04-28 00:30:10', NULL, '0057006500620020006F006600200049006E0066006F0072006D006100740069006F006E002000530079007300740065006D0020006F006600200041006B006100640065006D00690063002000500072006F006700720061006D00200053007400750064007900200049006E0073007400720075006D0065006E0074006100740069006F006E000D000A00200020002000200020002000200020002000200020002000200020002000200061006E006400200045006C0065006300740072006F006E006900630073002000680061007600650020006200650065006E002000640065007300690067006E0065006400200061006E0064002000630061006E0020006200650020006100630063006500730073006500640020007400680072006F00750067006800200069006E007400650072', '082121473036', 'Default_No_Compression', '0500038C0301', '+6289644000001', -1, 'Web of Information System of Akademic Program Study Instrumentation\r\n                and Electronics have been designed and can be accessed through inter', 15, 'testingSMS', 1, 'SendingOKNoReport', -1, 31, 255, 'Gammu'),
('2014-04-28 00:30:14', '0000-00-00 00:00:00', '2014-04-28 00:30:14', NULL, '006E00650074002E0020004200790020007700650062000D000A002000200020002000200020002000200020002000200020002000200020002000740068006500200061006C006C00200069006E0066006F0072006D006100740069006F006E002000610062006F007500740020006B006E006F007700610062006C006500200061006B006100640065006D00690063002E000D000A0020002000200020002000200020002000200020002000200020002000200020005700650062002000640065007300690067006E0065006400200072006500700072006500730065006E0074002000640079006E0061006D00690063002000770065006200200073006F00200074006800610074002000630061006E0020006D0061006B0065002000610020006300680061006E0067006500200064', '082121473036', 'Default_No_Compression', '0500038C0302', '+6289644000001', -1, 'net. By web\r\n                the all information about knowable akademic.\r\n                Web designed represent dynamic web so that can make a change d', 15, 'testingSMS', 2, 'SendingOKNoReport', -1, 32, 255, 'Gammu'),
('2014-04-28 00:30:16', '0000-00-00 00:00:00', '2014-04-28 00:30:16', NULL, '006100740061002000610074002E', '082121473036', 'Default_No_Compression', '0500038C0303', '+6289644000001', -1, 'ata at.', 15, 'testingSMS', 3, 'SendingOKNoReport', -1, 33, 255, 'Gammu'),
('2014-05-11 09:21:47', '0000-00-00 00:00:00', '2014-05-11 09:21:47', NULL, '0067006600670066006700660067', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'gfgfgfg', 23, 'keuangan', 1, 'SendingOKNoReport', -1, 134, 255, 'Gammu 1.28.90'),
('2014-05-11 23:20:58', '0000-00-00 00:00:00', '2014-05-11 23:20:58', NULL, '0074006500730020006B006900720069006D00200073006D0073', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'tes kirim sms', 36, 'keuangan', 1, 'SendingOKNoReport', -1, 160, 255, 'Gammu 1.28.90'),
('2014-05-11 23:25:35', '0000-00-00 00:00:00', '2014-05-11 23:25:35', NULL, '00420069006100790061002000540075006E006700670061006B0061006E0020004B006500750061006E00670061006E00200061006E0061006B00200061006E006400610020006100640061006C0061006800200033003500300030003000300030', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'Biaya Tunggakan Keuangan anak anda adalah 3500000', 40, 'keuangan', 1, 'SendingOKNoReport', -1, 161, 255, 'Nuris'),
('2014-05-11 23:25:38', '0000-00-00 00:00:00', '2014-05-11 23:25:38', NULL, '00420069006100790061002000540075006E006700670061006B0061006E0020004B006500750061006E00670061006E00200061006E0061006B00200061006E006400610020006100640061006C0061006800200031003400300030003000300030', '082121473036', 'Default_No_Compression', '', '+6289644000001', -1, 'Biaya Tunggakan Keuangan anak anda adalah 1400000', 39, 'keuangan', 1, 'SendingOKNoReport', -1, 162, 255, 'Nuris');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL,
  `nama_kampus` varchar(160) NOT NULL,
  `alamat_kampus` text NOT NULL,
  `telpon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_kampus`, `alamat_kampus`, `telpon`) VALUES
(1, 'politeknik tedc bandung1', 'cimahi', '0218765431');

-- --------------------------------------------------------

--
-- Table structure for table `student_absen`
--

CREATE TABLE IF NOT EXISTS `student_absen` (
  `absen_id` int(11) NOT NULL,
  `jadwal_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_absen`
--

INSERT INTO `student_absen` (`absen_id`, `jadwal_id`, `tanggal`, `keterangan`) VALUES
(4, 7, '2014-06-08', 'sample materi'),
(5, 1, '2014-06-08', 'sample aja'),
(6, 85, '2014-07-21', 'trobleshooting jaringan'),
(7, 73, '2014-07-25', 'sample materi'),
(8, 85, '2014-09-05', 'sample'),
(9, 85, '2014-09-06', 'vggvgv');

-- --------------------------------------------------------

--
-- Table structure for table `student_absen_detail`
--

CREATE TABLE IF NOT EXISTS `student_absen_detail` (
  `detail_id` int(11) NOT NULL,
  `absen_id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kehadiran` varchar(1) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_absen_detail`
--

INSERT INTO `student_absen_detail` (`detail_id`, `absen_id`, `nim`, `kehadiran`, `keterangan`) VALUES
(2, 4, 'ti102134', 'i', ''),
(3, 4, 'KA131002', 'i', ''),
(4, 4, 'KA131003', 'i', ''),
(5, 4, 'KA131004', 'i', ''),
(6, 4, 'KA131005', 'i', ''),
(7, 4, 'KA131006', 'i', ''),
(8, 4, 'KA131007', 'a', ''),
(9, 4, 'KA131008', 'i', ''),
(10, 4, 'KA131010', 'i', ''),
(11, 4, 'KA131009', 'i', ''),
(12, 4, 'KA131011', 'i', ''),
(13, 4, 'KA131012', 'i', ''),
(14, 5, 'ti102134', 'h', ''),
(15, 6, 'ti102134', 'h', ''),
(16, 6, 'KA131002', 'h', ''),
(17, 8, 'KA131002', 'h', ''),
(18, 8, 'KA131004', 'h', ''),
(19, 8, 'KA131005', 'h', ''),
(20, 8, 'KA131006', 'h', ''),
(21, 9, 'KA131002', 'a', ''),
(22, 9, 'KA131004', 'h', ''),
(23, 9, 'KA131005', 'h', ''),
(24, 9, 'KA131006', 'h', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_angkatan`
--

CREATE TABLE IF NOT EXISTS `student_angkatan` (
  `angkatan_id` int(11) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `aktif` varchar(1) NOT NULL COMMENT 'y = aktif dan n = tidak'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_angkatan`
--

INSERT INTO `student_angkatan` (`angkatan_id`, `keterangan`, `aktif`) VALUES
(1, '2013-2014', 'n'),
(2, '2014-2015', 'y'),
(3, '2015-2016', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `student_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `student_mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL,
  `nim` varchar(13) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `konsentrasi_id` int(2) NOT NULL,
  `angkatan_id` int(4) NOT NULL COMMENT 'tahun akademik ketika masuk',
  `alamat` text NOT NULL,
  `semester` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `agama_id` int(11) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `no_hp_ortu` varchar(12) NOT NULL,
  `pekerjaan_id_ibu` int(11) NOT NULL,
  `pekerjaan_id_ayah` int(11) NOT NULL,
  `alamat_ayah` text NOT NULL,
  `alamat_ibu` text NOT NULL,
  `penghasilan_ayah` int(11) NOT NULL,
  `penghasilan_ibu` int(11) NOT NULL,
  `sekolah_nama` varchar(50) NOT NULL,
  `sekolah_telpon` varchar(12) NOT NULL,
  `sekolah_alamat` text NOT NULL,
  `sekolah_jurusan` varchar(80) NOT NULL,
  `sekolah_tahun_lulus` int(4) NOT NULL,
  `kampus_nama` varchar(50) NOT NULL,
  `kampus_telpon` varchar(12) NOT NULL,
  `kampus_alamat` text NOT NULL,
  `kampus_jurusan` varchar(80) NOT NULL,
  `kampus_tahun_lulus` int(4) NOT NULL,
  `institusi_nama` varchar(80) NOT NULL,
  `institusi_telpon` varchar(12) NOT NULL,
  `institusi_alamat` text NOT NULL,
  `instansi_nama` varchar(80) NOT NULL,
  `instansi_telpon` varchar(12) NOT NULL,
  `instansi_alamat` text NOT NULL,
  `instansi_mulai` int(4) NOT NULL,
  `instansi_sampai` int(4) NOT NULL,
  `semester_aktif` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_mahasiswa`
--

INSERT INTO `student_mahasiswa` (`mahasiswa_id`, `nim`, `nama`, `konsentrasi_id`, `angkatan_id`, `alamat`, `semester`, `gender`, `agama_id`, `tempat_lahir`, `tanggal_lahir`, `nama_ibu`, `nama_ayah`, `no_hp_ortu`, `pekerjaan_id_ibu`, `pekerjaan_id_ayah`, `alamat_ayah`, `alamat_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `sekolah_nama`, `sekolah_telpon`, `sekolah_alamat`, `sekolah_jurusan`, `sekolah_tahun_lulus`, `kampus_nama`, `kampus_telpon`, `kampus_alamat`, `kampus_jurusan`, `kampus_tahun_lulus`, `institusi_nama`, `institusi_telpon`, `institusi_alamat`, `instansi_nama`, `instansi_telpon`, `instansi_alamat`, `instansi_mulai`, `instansi_sampai`, `semester_aktif`) VALUES
(5, 'KA131002', 'Etika Cahya Pribadi', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 4),
(6, 'KA131003', 'Indira Nuaisyah', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 6),
(7, 'KA131004', 'Irmawati Sipahutar', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 3),
(8, 'KA131005', 'Lutfhyyah Nadia Zulfikrie', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 3),
(9, 'KA131006', 'Nabila Ladysthya Taufiq', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 4),
(10, 'KA131007', 'Tiara Nur Cahya', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 2),
(13, 'KA131010', 'Andhyka Adiguna Sujana', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 2),
(14, 'KA131011', 'Nunu Suherna Nusuri', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 2),
(15, 'KA131012', 'Nurul Rahmatun Putri Rustama', 3, 1, '', 0, 'l', 0, '', '0000-00-00', '', '', '', 0, 0, '', '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', 0, 0, 2),
(16, '2014020031', 'Wiwik', 1, 2, 'Jl. abd dg sirua 2', 0, '2', 1, 'Ompoa', '2007-01-31', 'Mina', 'Rata', '', 1, 1, 'Malaysia', 'Malaysia', 0, 0, '', '', '', '', 0, '', '', '', '', 0, '0', '', '', '', '', '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_submenu` int(11) NOT NULL,
  `id_mainmenu` int(11) NOT NULL,
  `nama_submenu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `aktif` enum('y','t') NOT NULL,
  `icon` varchar(30) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_submenu`, `id_mainmenu`, `nama_submenu`, `link`, `aktif`, `icon`, `level`) VALUES
(70, 28, 'tahun akademik', 'tahunakademik', 'y', 'gi gi-calendar', 1),
(71, 26, 'gedung', 'gedung', 'y', 'gi gi-cargo', 1),
(72, 26, 'ruangan', 'ruangan', 'y', 'gi gi-bank', 1),
(73, 28, 'matakuliah', 'matakuliah', 'y', 'gi gi-book_open', 1),
(74, 26, 'prodi', 'prodi', 'y', 'gi gi-table', 1),
(75, 26, 'konsentrasi', 'konsentrasi', 'y', 'fa fa-credit-card', 1),
(76, 26, 'dosen', 'dosen', 'y', 'gi gi-parents', 1),
(77, 28, 'jadwal kuliah', 'jadwalkuliah', 'y', 'fa fa-calendar', 1),
(78, 26, 'kelompok matakuliah', 'kelompokmatakuliah', 'y', 'gi gi-address_book', 1),
(79, 29, 'form pembayaran', 'keuangan/pembayaran', 'y', 'gi gi-coins', 1),
(80, 29, 'jenis pembayaran', 'jenisbayar', 'y', 'fa fa-puzzle-piece', 1),
(81, 29, 'biaya kuliah', 'setupbiayakuliah', 'y', 'fa fa-money', 1),
(82, 29, 'laporan keuangan', 'keuangan/laporan', 'y', 'gi gi-notes_2', 1),
(83, 28, 'registrasi', 'registrasi', 'y', 'fa fa-keyboard-o', 1),
(84, 28, 'kartu rencana studi', 'krs/lihat', 'y', 'gi gi-cart_in', 1),
(85, 35, 'kartu rencana studi', 'krs/lihat', 'y', 'gi gi-notes_2', 0),
(86, 35, 'kartu rencana studi', 'khs', 'y', 'hi hi-list-alt', 0),
(87, 26, 'grade nilai', 'grade', 'y', 'gi gi-credit_card', 0),
(88, 28, 'kartu hasil studi', 'khs', 'y', 'gi gi-notes', 0),
(89, 26, 'tahun angkatan', 'tahunangkatan', 'y', 'gi gi-calendar', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akademik_jadwal_kuliah`
--
ALTER TABLE `akademik_jadwal_kuliah`
  ADD PRIMARY KEY (`jadwal_id`);

--
-- Indexes for table `akademik_khs`
--
ALTER TABLE `akademik_khs`
  ADD PRIMARY KEY (`khs_id`);

--
-- Indexes for table `akademik_konsentrasi`
--
ALTER TABLE `akademik_konsentrasi`
  ADD PRIMARY KEY (`konsentrasi_id`);

--
-- Indexes for table `akademik_krs`
--
ALTER TABLE `akademik_krs`
  ADD PRIMARY KEY (`krs_id`);

--
-- Indexes for table `akademik_prodi`
--
ALTER TABLE `akademik_prodi`
  ADD PRIMARY KEY (`prodi_id`);

--
-- Indexes for table `akademik_registrasi`
--
ALTER TABLE `akademik_registrasi`
  ADD PRIMARY KEY (`registrasi_id`);

--
-- Indexes for table `akademik_tahun_akademik`
--
ALTER TABLE `akademik_tahun_akademik`
  ADD PRIMARY KEY (`tahun_akademik_id`);

--
-- Indexes for table `akademik_waktu_kuliah`
--
ALTER TABLE `akademik_waktu_kuliah`
  ADD PRIMARY KEY (`waktu_id`);

--
-- Indexes for table `app_agama`
--
ALTER TABLE `app_agama`
  ADD PRIMARY KEY (`agama_id`);

--
-- Indexes for table `app_dosen`
--
ALTER TABLE `app_dosen`
  ADD PRIMARY KEY (`dosen_id`);

--
-- Indexes for table `app_gedung`
--
ALTER TABLE `app_gedung`
  ADD PRIMARY KEY (`gedung_id`);

--
-- Indexes for table `app_hari`
--
ALTER TABLE `app_hari`
  ADD PRIMARY KEY (`hari_id`);

--
-- Indexes for table `app_nilai_grade`
--
ALTER TABLE `app_nilai_grade`
  ADD PRIMARY KEY (`nilai_id`);

--
-- Indexes for table `app_pekerjaan`
--
ALTER TABLE `app_pekerjaan`
  ADD PRIMARY KEY (`pekerjaan_id`);

--
-- Indexes for table `app_ruangan`
--
ALTER TABLE `app_ruangan`
  ADD PRIMARY KEY (`ruangan_id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `keuangan_biaya_kuliah`
--
ALTER TABLE `keuangan_biaya_kuliah`
  ADD PRIMARY KEY (`biaya_kuliah_id`);

--
-- Indexes for table `keuangan_jenis_bayar`
--
ALTER TABLE `keuangan_jenis_bayar`
  ADD PRIMARY KEY (`jenis_bayar_id`);

--
-- Indexes for table `keuangan_pembayaran`
--
ALTER TABLE `keuangan_pembayaran`
  ADD PRIMARY KEY (`pembayaran_id`);

--
-- Indexes for table `keuangan_pembayaran_detail`
--
ALTER TABLE `keuangan_pembayaran_detail`
  ADD PRIMARY KEY (`pembayara_detail_id`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`id_mainmenu`);

--
-- Indexes for table `makul_kelompok`
--
ALTER TABLE `makul_kelompok`
  ADD PRIMARY KEY (`kelompok_id`);

--
-- Indexes for table `makul_matakuliah`
--
ALTER TABLE `makul_matakuliah`
  ADD PRIMARY KEY (`makul_id`);

--
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`ID`), ADD KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`), ADD KEY `outbox_sender` (`SenderID`);

--
-- Indexes for table `outbox_multipart`
--
ALTER TABLE `outbox_multipart`
  ADD PRIMARY KEY (`ID`,`SequencePosition`);

--
-- Indexes for table `pbk`
--
ALTER TABLE `pbk`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pbk_groups`
--
ALTER TABLE `pbk_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`IMEI`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`ID`,`SequencePosition`), ADD KEY `sentitems_date` (`DeliveryDateTime`), ADD KEY `sentitems_tpmr` (`TPMR`), ADD KEY `sentitems_dest` (`DestinationNumber`), ADD KEY `sentitems_sender` (`SenderID`);

--
-- Indexes for table `student_absen`
--
ALTER TABLE `student_absen`
  ADD PRIMARY KEY (`absen_id`);

--
-- Indexes for table `student_absen_detail`
--
ALTER TABLE `student_absen_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `student_angkatan`
--
ALTER TABLE `student_angkatan`
  ADD PRIMARY KEY (`angkatan_id`);

--
-- Indexes for table `student_mahasiswa`
--
ALTER TABLE `student_mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_submenu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akademik_jadwal_kuliah`
--
ALTER TABLE `akademik_jadwal_kuliah`
  MODIFY `jadwal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `akademik_khs`
--
ALTER TABLE `akademik_khs`
  MODIFY `khs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `akademik_konsentrasi`
--
ALTER TABLE `akademik_konsentrasi`
  MODIFY `konsentrasi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `akademik_krs`
--
ALTER TABLE `akademik_krs`
  MODIFY `krs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `akademik_prodi`
--
ALTER TABLE `akademik_prodi`
  MODIFY `prodi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `akademik_registrasi`
--
ALTER TABLE `akademik_registrasi`
  MODIFY `registrasi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `akademik_tahun_akademik`
--
ALTER TABLE `akademik_tahun_akademik`
  MODIFY `tahun_akademik_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `akademik_waktu_kuliah`
--
ALTER TABLE `akademik_waktu_kuliah`
  MODIFY `waktu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_dosen`
--
ALTER TABLE `app_dosen`
  MODIFY `dosen_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `app_gedung`
--
ALTER TABLE `app_gedung`
  MODIFY `gedung_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `app_hari`
--
ALTER TABLE `app_hari`
  MODIFY `hari_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `app_nilai_grade`
--
ALTER TABLE `app_nilai_grade`
  MODIFY `nilai_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `app_ruangan`
--
ALTER TABLE `app_ruangan`
  MODIFY `ruangan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keuangan_biaya_kuliah`
--
ALTER TABLE `keuangan_biaya_kuliah`
  MODIFY `biaya_kuliah_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=977;
--
-- AUTO_INCREMENT for table `keuangan_jenis_bayar`
--
ALTER TABLE `keuangan_jenis_bayar`
  MODIFY `jenis_bayar_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `keuangan_pembayaran`
--
ALTER TABLE `keuangan_pembayaran`
  MODIFY `pembayaran_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keuangan_pembayaran_detail`
--
ALTER TABLE `keuangan_pembayaran_detail`
  MODIFY `pembayara_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `id_mainmenu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `makul_kelompok`
--
ALTER TABLE `makul_kelompok`
  MODIFY `kelompok_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `makul_matakuliah`
--
ALTER TABLE `makul_matakuliah`
  MODIFY `makul_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `pbk`
--
ALTER TABLE `pbk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pbk_groups`
--
ALTER TABLE `pbk_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_absen`
--
ALTER TABLE `student_absen`
  MODIFY `absen_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student_absen_detail`
--
ALTER TABLE `student_absen_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `student_angkatan`
--
ALTER TABLE `student_angkatan`
  MODIFY `angkatan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_mahasiswa`
--
ALTER TABLE `student_mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;--
-- Database: `batch`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `b_id` int(11) NOT NULL,
  `batch_name` varchar(255) NOT NULL,
  `batch_time` varchar(255) NOT NULL,
  `batch_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`b_id`, `batch_name`, `batch_time`, `batch_status`) VALUES
(1, 'First Batch', '16:20', 1),
(2, 'Second Batch', '12:00', 1),
(3, 'Third Batch', '15:00', 1),
(4, 'Four Batch', '18:00', 1),
(5, 'six', '07:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `c_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `category_name`, `category_status`) VALUES
(1, 'B.Tech', 1),
(2, 'MBA', 1),
(3, 'BBA', 1),
(4, 'M.Tech', 1),
(5, 'BCA', 1),
(6, 'B.Com', 1),
(7, 'LLB', 0),
(8, 'M.com', 1),
(9, 'MA', 1),
(10, 'B.sc', 1),
(11, 'M.sc', 1),
(12, 'BA', 1),
(13, '5th Standard', 1);

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE IF NOT EXISTS `center` (
  `c_id` int(11) NOT NULL,
  `centername` varchar(255) NOT NULL,
  `centeraddress` text NOT NULL,
  `centercode` varchar(255) NOT NULL,
  `centerlogo` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_md5` varchar(255) NOT NULL,
  `theme_id` varchar(11) NOT NULL,
  `center_status` int(2) NOT NULL DEFAULT '1',
  `about_center` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`c_id`, `centername`, `centeraddress`, `centercode`, `centerlogo`, `location`, `phoneno`, `email`, `username`, `password`, `password_md5`, `theme_id`, `center_status`, `about_center`) VALUES
(3, 'Demo', 'Demo<br>Near XYZ<br>City XYZ<br>', '201502013473', '', '', '', 'center@demo.com', 'Demo', 'demo123!', 'LiRi61RYGFw=', '1', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `e_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_id` varchar(255) NOT NULL DEFAULT '0',
  `center_id` varchar(255) NOT NULL DEFAULT '0',
  `exam_name` varchar(255) NOT NULL,
  `exam_status` int(11) NOT NULL DEFAULT '1',
  `exam_date` date NOT NULL,
  `exam_time` varchar(255) NOT NULL DEFAULT '00:00',
  `exam_duration` varchar(255) NOT NULL,
  `neg_mark_status` int(2) NOT NULL DEFAULT '0',
  `negative_marks` int(11) NOT NULL,
  `time_reduction` int(2) NOT NULL,
  `passing_percentage` int(11) NOT NULL,
  `re_exam_day` int(11) NOT NULL,
  `terms_condition` text NOT NULL,
  `result_show_on_mail` int(2) NOT NULL DEFAULT '0',
  `show_question` varchar(255) NOT NULL DEFAULT '0',
  `sort_order` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`e_id`, `category_id`, `subcategory_id`, `subject_id`, `center_id`, `exam_name`, `exam_status`, `exam_date`, `exam_time`, `exam_duration`, `neg_mark_status`, `negative_marks`, `time_reduction`, `passing_percentage`, `re_exam_day`, `terms_condition`, `result_show_on_mail`, `show_question`, `sort_order`) VALUES
(13, 13, 20, '15,16', '3', 'Only Math', 1, '2015-04-05', '', '90', 1, 1, 1, 50, 1, 'Please read <br>', 0, '18,16,2,', '');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE IF NOT EXISTS `general_setting` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `g_title` varchar(255) NOT NULL,
  `g_description` varchar(255) NOT NULL,
  `g_keywords` varchar(255) NOT NULL,
  `g_organization` varchar(255) NOT NULL,
  `g_copyright` varchar(255) NOT NULL,
  `g_logo` varchar(255) NOT NULL,
  `g_address` varchar(255) NOT NULL,
  `g_phone` varchar(255) NOT NULL,
  `g_passingscore` int(11) NOT NULL,
  `g_email` varchar(255) NOT NULL,
  `g_google_analytics` varchar(255) NOT NULL,
  `g_certificate_logo` varchar(255) NOT NULL,
  `g_certificate_content` text NOT NULL,
  `g_signature` varchar(255) NOT NULL,
  `g_text_signature` text NOT NULL,
  `g_timezone` varchar(255) NOT NULL,
  `desby` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `g_id`, `g_title`, `g_description`, `g_keywords`, `g_organization`, `g_copyright`, `g_logo`, `g_address`, `g_phone`, `g_passingscore`, `g_email`, `g_google_analytics`, `g_certificate_logo`, `g_certificate_content`, `g_signature`, `g_text_signature`, `g_timezone`, `desby`) VALUES
(1, 1, 'SNOS Examination System', 'Online Examination system for Educational Organizations', 'SNOS Examination System', 'SNOS Examination System', 'SNOS Examination System', 'your school.png', 'Jawa Barat', '1111111111', 0, 'bookschool@textusintentio.com', 'UA-58877461-1', 'Certification_LOGO.png', 'certificate<br>', 'signature.png', '<b>Director,</b><br>SNOS Examination System<br><br>', 'Asia/Jakarta', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_answer`
--

CREATE TABLE IF NOT EXISTS `main_answer` (
  `m_a_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `ans` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `examdate` date NOT NULL,
  `correct_ans` varchar(255) NOT NULL,
  `typeofquestion` varchar(255) NOT NULL,
  `center_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `main_exam_status_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_answer`
--

INSERT INTO `main_answer` (`m_a_id`, `category_id`, `subcategory_id`, `subject_id`, `exam_id`, `question_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `ans`, `marks`, `examdate`, `correct_ans`, `typeofquestion`, `center_id`, `student_id`, `main_exam_status_id`) VALUES
(17, 13, 20, '15,16', 13, 63, '<p>A Rubix cube has six faces with 16 colored squares per face. If each colored square has 2 cm sides, what is the surface area of the Rubix cube?</p>\r\n', '<p>78cm2</p>\r\n', '<p>96cm2</p>\r\n', '<p>192cm2</p>\r\n', '<p>384cm2</p>\r\n', 'B', 2, '2015-04-05', 'D', 'Single', 3, 7, 13),
(18, 13, 20, '15,16', 13, 60, '<p>The students in a school are having a cup stacking contest. John has a pyramid 9 layers high. How many cups will he need to add to his pyramid to increase the number of layers to 12? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>11</p>\r\n', '<p>24</p>\r\n', '<p>34</p>\r\n', '<p>48</p>\r\n', 'B', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(19, 13, 20, '15,16', 13, 66, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-004.jpg" type="image" /></p>\r\n', '<p>1/2</p>\r\n', '<p><strong>&nbsp;</strong>2/5</p>\r\n', '<p><strong>3</strong>/5</p>\r\n', '<p><strong>&nbsp;</strong>4/5</p>\r\n', 'B', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(20, 13, 20, '15,16', 13, 58, '<p>John bowls 3 games and has an average score of 85. If he bowled the same score in his first two games and bowled a score of 95 in his third game. What score did he bowl in either of his first two games? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>80</p>\r\n', '<p>85</p>\r\n', '<p>90</p>\r\n', '<p>95</p>\r\n', 'C', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(21, 13, 20, '15,16', 13, 76, '<p>A bag contains identical sized balls of different colours : 10 red, 9 white, 7 yellow, 2 blue and 1 black. Without looking into the bag, Paul takes out the balls one by one from it. What is the least number of balls Paul must take out to ensure that at least 3 balls have the same colour? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>9</p>\r\n', '<p>10</p>\r\n', '<p>11</p>\r\n', '<p>12</p>\r\n', 'C', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(22, 13, 20, '15,16', 13, 75, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-006.jpg" type="image" /></p>\r\n\r\n<p>Lines AC and BD meet at point O. Given that OA = 40 cm, OB = 50 cm, OC = 60 cm and OD = 75 cm, find the ratio of the area of triangle AOD to the area of triangle BOC.</p>\r\n', '<p>1:1</p>\r\n', '<p>1:2</p>\r\n', '<p>1:3</p>\r\n', '<p>1:4</p>\r\n', 'C', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(23, 13, 20, '15,16', 13, 79, '<p>A box of chocolate has gone missing from the refrigerator. The suspects have been reduced to 4 children. Only one of them is telling the truth.</p>\r\n\r\n<p>A : &#39;I did not take the chocolate.&#39;<br />\r\nB : &#39;A is lying.&#39;<br />\r\nC : &#39;B is lying.&#39;<br />\r\nD : &#39;B took the chocolate.&#39;<br />\r\nWho took the chocolate ?</p>\r\n', '<p>A</p>\r\n', '<p>B</p>\r\n', '<p>C</p>\r\n', '<p>D</p>\r\n', 'C', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(24, 13, 20, '15,16', 13, 71, '<p>Find the value of 20042005 &times; 20052004 &minus; 20042004 &times; 20052005 .</p>\r\n', '<p>10000</p>\r\n', '<p>15000</p>\r\n', '<p>18000</p>\r\n', '<p>19000</p>\r\n', 'A', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(25, 13, 20, '15,16', 13, 77, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-007.jpg" type="image" /></p>\r\n', '<p>10/3</p>\r\n', '<p>11/3</p>\r\n', '<p>7/3</p>\r\n', '<p>5/3</p>\r\n', 'Not Answer', 2, '2015-04-05', 'D', 'Single', 3, 7, 13),
(26, 13, 20, '15,16', 13, 78, '<p>If the base of a triangle is increased by 10% while its height decreased by 10%, find the area of the new triangle as a percentage of the original one.</p>\r\n', '<p>80%</p>\r\n', '<p>120%</p>\r\n', '<p>87%</p>\r\n', '<p>99%</p>\r\n', 'Not Answer', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(27, 13, 20, '15,16', 13, 73, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-005.jpg" type="image" /></p>\r\n', '<p>3675</p>\r\n', '<p>3805</p>\r\n', '<p>4095</p>\r\n', '<p>4255</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(28, 13, 20, '15,16', 13, 64, '<p>At the National Day parade, the local scout troop found that they could arrange themselves in rows of exactly 3, exactly 4, or exactly 5, with no one left over. What is the least number of scouts in the troop?</p>\r\n', '<p>36</p>\r\n', '<p>60</p>\r\n', '<p>100</p>\r\n', '<p>120</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(29, 13, 20, '15,16', 13, 65, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-003.jpg" type="image" /></p>\r\n\r\n<p>The diagram shows a dartboard. What is the least number of throws needed in order to get a score of exactly 100? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(30, 13, 20, '15,16', 13, 68, '<p>Judy and Tim each has a sum of money. Judy&rsquo;s amount is 3/5 that of Tim&rsquo;s. If Tim were to give Judy $168, then his remaining amount will be 7/9 that of Judy&rsquo;s. How much does Judy have originally? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>242</p>\r\n', '<p>336</p>\r\n', '<p>175</p>\r\n', '<p>672</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(31, 13, 20, '15,16', 13, 70, '<p>The lengths of two rectangles are 11 m and 19 m respectively. Given that their total area is 321 m2, find the difference in their areas. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p><strong>&nbsp;</strong>111</p>\r\n', '<p>191</p>\r\n', '<p><strong>&nbsp;</strong>211</p>\r\n', '<p><strong>&nbsp;</strong>241</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(32, 13, 20, '15,16', 13, 80, '<p>How many digits are there before the hundredth 9 in the following number<br />\r\n9797797779777797777797777779&hellip;&hellip;.? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>4059</p>\r\n', '<p>5049</p>\r\n', '<p>5273</p>\r\n', '<p>5534</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(33, 13, 20, '15,16', 13, 69, '<p>How long, in hours, after 12 noon, will it take for the hour hand of a clock to lie directly over its minute hand for the first time? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>12/11 hours</p>\r\n', '<p>8 hours</p>\r\n', '<p>8/11 hours</p>\r\n', '<p>7/11 hours</p>\r\n', 'Not Answer', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(34, 13, 20, '15,16', 13, 61, '<p>January 31st was on a Tuesday; it was the 27th consecutive day in which it did not rain. What day of the week was it when it last rained? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>Monday</p>\r\n', '<p>Tuesday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(35, 13, 20, '15,16', 13, 91, '<p>A circus clown buys balloons at $1.44 per dozen and sells the balloons for 20 cents each. What will be his profit on a day when he buys and sells 20 dozen balloons? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>$17.40</p>\r\n', '<p>$18.60</p>\r\n', '<p><strong>&nbsp;</strong>$19.20</p>\r\n', '<p>$20.60</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(36, 13, 20, '15,16', 13, 88, '<p>(2 x 1/100) + (3 x 1/1000) + (7 x 1/10,000) = ? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>2.37</p>\r\n', '<p><strong>&nbsp;</strong>0.237</p>\r\n', '<p>0.0237</p>\r\n', '<p><strong>&nbsp;</strong>0.00237</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(37, 13, 20, '15,16', 13, 83, '<p>A piece of pasture grows at a constant rate everyday.<br />\r\n200 sheep will eat up the grass in 100 days.<br />\r\n150 sheep will eat up the grass in 150 days.<br />\r\nHow many days does it take for 100 sheep to eat up the grass? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>300 days</p>\r\n', '<p>320 days</p>\r\n', '<p>340 days</p>\r\n', '<p>360 days</p>\r\n', 'Not Answer', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(38, 13, 20, '15,16', 13, 99, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-012.jpg" style="width: 249px; height: 55px;" type="image" /></p>\r\n\r\n<p>A dart hits the dartboard shown at random. Find the probability of the dart landing in the shaded region. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>1/2</p>\r\n', '<p>1/3</p>\r\n', '<p>1/4</p>\r\n', '<p>1/5</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(39, 13, 20, '15,16', 13, 105, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-014.jpg" type="image" /></p>\r\n\r\n<p>In the multiplication example above, all number from 1 through 9 have been used once, and once only. Three of the numbers are given. What is the three digit number on top?</p>\r\n', '<p>279</p>\r\n', '<p>297</p>\r\n', '<p>246</p>\r\n', '<p>264</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(40, 13, 20, '15,16', 13, 104, '<p>Peter usually travels from town P to town Q in eight hours. One day, he increased his average speed by 5km per hour so that he arrived 20 minutes earlier. Find his usual average speed, in km per hour.</p>\r\n', '<p>110 km/h</p>\r\n', '<p>115 km/h</p>\r\n', '<p>125 km/h</p>\r\n', '<p><strong>&nbsp;</strong>135 km/h</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(41, 13, 20, '15,16', 13, 93, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-009.jpg" type="image" /></p>\r\n\r\n<p>In the diagram, there is an equilateral triangle and a square. If the perimeter of the triangle is 24 m, find the area of the square. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p><strong>&nbsp;</strong>25 m2</p>\r\n', '<p><strong>&nbsp;</strong>36 m2</p>\r\n', '<p><strong>&nbsp;</strong>49 m2</p>\r\n', '<p>64 m2</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(42, 13, 20, '15,16', 13, 82, '<p>How many rectangles are there in the diagram?</p>\r\n\r\n<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-008.jpg" type="image" /></p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', '<p>32</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(43, 13, 20, '15,16', 13, 96, '<p>In a camel herd with 80 legs, half the camels have one hump and half have two. How many humps are there in this herd? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'Not Answer', 2, '2015-04-05', 'D', 'Single', 3, 7, 13),
(44, 13, 20, '15,16', 13, 92, '<p>Today is Saturday, May 5, 2001. One year from today will be May 5, 2002. What day of the week will that be?</p>\r\n', '<p>Sunday</p>\r\n', '<p>Monday</p>\r\n', '<p>Tuesday</p>\r\n', '<p>Wednesday</p>\r\n', 'Not Answer', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(45, 13, 20, '15,16', 13, 95, '<p>I was paid $2.80 on the first day, and my salary doubled each day thereafter. I earned a total of $714. How many days did I work?</p>\r\n', '<p>8</p>\r\n', '<p>10</p>\r\n', '<p>12</p>\r\n', '<p>14</p>\r\n', 'Not Answer', 2, '2015-04-05', 'A', 'Single', 3, 7, 13),
(46, 13, 20, '15,16', 13, 102, '<p>In 2008, the price of car A is $20,000 and car B is $25,000. Each year, the price of car A decreases by 5% and that of car B decreases by 10%. In what year will car B be cheaper than car A? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>2011</p>\r\n', '<p>2012</p>\r\n', '<p>2013</p>\r\n', '<p>2014</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(47, 13, 20, '15,16', 13, 94, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-010.jpg" style="width: 95px; height: 97px;" type="image" /></p>\r\n\r\n<p>Square ABCD has a perimeter of 8 cm. If a circle is inscribed in the square as shown, what is the area of the circle? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>1.57 m2</p>\r\n', '<p>3.14 m2</p>\r\n', '<p><strong>&nbsp;</strong>4.71 m2</p>\r\n', '<p>6.28 m2</p>\r\n', 'Not Answer', 2, '2015-04-05', 'B', 'Single', 3, 7, 13),
(48, 13, 20, '15,16', 13, 101, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-013.jpg" type="image" /></p>\r\n\r\n<p>Find the measure of angle ABC as shown in the following figure, where AC = CB = CD, and the measure of angle ADC is 29 degrees.</p>\r\n', '<p>58 degree</p>\r\n', '<p><strong>&nbsp;</strong>45 degree</p>\r\n', '<p>56 degree</p>\r\n', '<p><strong>&nbsp;</strong>61 degree</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(49, 13, 20, '15,16', 13, 81, '<p>A particular month has 5 Tuesdays. The first and the last day of the month are not Tuesday. What day is the last day of the month? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>Sunday</p>\r\n', '<p>Monday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(50, 13, 20, '15,16', 13, 97, '<p>Katie and Jim play a game with 2 six sided number cubes numbered 1 through 6. When the number cubes are rolled, Katie gets a point if the sum of the two is even and Jim gets a point if the product is even. What is the likelihood that on one roll of both cubes both Katie and Jim get a point?</p>\r\n', '<p>1/2</p>\r\n', '<p>1/3</p>\r\n', '<p>1/4</p>\r\n', '<p>1/5</p>\r\n', 'Not Answer', 2, '2015-04-05', 'C', 'Single', 3, 7, 13),
(85, 13, 20, '15,16', 13, 63, '<p>A Rubix cube has six faces with 16 colored squares per face. If each colored square has 2 cm sides, what is the surface area of the Rubix cube?</p>\r\n', '<p>78cm2</p>\r\n', '<p>96cm2</p>\r\n', '<p>192cm2</p>\r\n', '<p>384cm2</p>\r\n', 'Not Answer', 2, '2015-04-14', 'D', 'Single', 3, 7, 15),
(86, 13, 20, '15,16', 13, 68, '<p>Judy and Tim each has a sum of money. Judy&rsquo;s amount is 3/5 that of Tim&rsquo;s. If Tim were to give Judy $168, then his remaining amount will be 7/9 that of Judy&rsquo;s. How much does Judy have originally? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>242</p>\r\n', '<p>336</p>\r\n', '<p>175</p>\r\n', '<p>672</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(87, 13, 20, '15,16', 13, 79, '<p>A box of chocolate has gone missing from the refrigerator. The suspects have been reduced to 4 children. Only one of them is telling the truth.</p>\r\n\r\n<p>A : &#39;I did not take the chocolate.&#39;<br />\r\nB : &#39;A is lying.&#39;<br />\r\nC : &#39;B is lying.&#39;<br />\r\nD : &#39;B took the chocolate.&#39;<br />\r\nWho took the chocolate ?</p>\r\n', '<p>A</p>\r\n', '<p>B</p>\r\n', '<p>C</p>\r\n', '<p>D</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(88, 13, 20, '15,16', 13, 65, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-003.jpg" type="image" /></p>\r\n\r\n<p>The diagram shows a dartboard. What is the least number of throws needed in order to get a score of exactly 100? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(89, 13, 20, '15,16', 13, 60, '<p>The students in a school are having a cup stacking contest. John has a pyramid 9 layers high. How many cups will he need to add to his pyramid to increase the number of layers to 12? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>11</p>\r\n', '<p>24</p>\r\n', '<p>34</p>\r\n', '<p>48</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(90, 13, 20, '15,16', 13, 61, '<p>January 31st was on a Tuesday; it was the 27th consecutive day in which it did not rain. What day of the week was it when it last rained?</p>\r\n', '<p>Monday</p>\r\n', '<p>Tuesday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(91, 13, 20, '15,16', 13, 73, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-005.jpg" type="image" /></p>\r\n', '<p>3675</p>\r\n', '<p>3805</p>\r\n', '<p>4095</p>\r\n', '<p>4255</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(92, 13, 20, '15,16', 13, 66, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-004.jpg" type="image" /></p>\r\n', '<p>1/2</p>\r\n', '<p><strong>&nbsp;</strong>2/5</p>\r\n', '<p><strong>3</strong>/5</p>\r\n', '<p><strong>&nbsp;</strong>4/5</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(93, 13, 20, '15,16', 13, 67, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-002.jpg" type="image" /></p>\r\n\r\n<p>Two squares, with lengths 4 cm and 6 cm respectively, are partially overlapped as shown in the diagram above. What is the difference between shaded area of the small square and shaded area of the big square? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>16cm2</p>\r\n', '<p>20cm2</p>\r\n', '<p>26cm2</p>\r\n', '<p>30cm2</p>\r\n', 'Not Answer', 2, '2015-04-14', 'A', 'Single', 3, 7, 15),
(94, 13, 20, '15,16', 13, 77, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-007.jpg" type="image" /></p>\r\n', '<p>10/3</p>\r\n', '<p>11/3</p>\r\n', '<p>7/3</p>\r\n', '<p>5/3</p>\r\n', 'Not Answer', 2, '2015-04-14', 'D', 'Single', 3, 7, 15),
(95, 13, 20, '15,16', 13, 75, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-006.jpg" type="image" /></p>\r\n\r\n<p>Lines AC and BD meet at point O. Given that OA = 40 cm, OB = 50 cm, OC = 60 cm and OD = 75 cm, find the ratio of the area of triangle AOD to the area of triangle BOC.</p>\r\n', '<p>1:1</p>\r\n', '<p>1:2</p>\r\n', '<p>1:3</p>\r\n', '<p>1:4</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(96, 13, 20, '15,16', 13, 62, '<p>Tan and Emelyn are waiting in line to get on the school bus. Tan is seventh in line. Emelyn is in the middle of the line. There are six students between Tan and Emelyn. How many students are waiting in line?</p>\r\n', '<p>12</p>\r\n', '<p>18</p>\r\n', '<p>25</p>\r\n', '<p>27</p>\r\n', 'Not Answer', 2, '2015-04-14', 'D', 'Single', 3, 7, 15),
(97, 13, 20, '15,16', 13, 80, '<p>How many digits are there before the hundredth 9 in the following number<br />\r\n9797797779777797777797777779&hellip;&hellip;.?</p>\r\n', '<p>4059</p>\r\n', '<p>5049</p>\r\n', '<p>5273</p>\r\n', '<p>5534</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(98, 13, 20, '15,16', 13, 57, '<p>The surface of a swimming pool is rectangular in shape and measures 12 metre by 20 metre. A concrete walk 2 metre wide is to be built around the surface of the pool. What will be the surface area of the walk?</p>\r\n', '<p>144m2</p>\r\n', '<p>240m2</p>\r\n', '<p>384m2</p>\r\n', '<p>112m2</p>\r\n', 'Not Answer', 2, '2015-04-14', 'A', 'Single', 3, 7, 15),
(99, 13, 20, '15,16', 13, 71, '<p>Find the value of 20042005 &times; 20052004 &minus; 20042004 &times; 20052005 .</p>\r\n', '<p>10000</p>\r\n', '<p>15000</p>\r\n', '<p>18000</p>\r\n', '<p>19000</p>\r\n', 'Not Answer', 2, '2015-04-14', 'A', 'Single', 3, 7, 15),
(100, 13, 20, '15,16', 13, 64, '<p>At the National Day parade, the local scout troop found that they could arrange themselves in rows of exactly 3, exactly 4, or exactly 5, with no one left over. What is the least number of scouts in the troop?</p>\r\n', '<p>36</p>\r\n', '<p>60</p>\r\n', '<p>100</p>\r\n', '<p>120</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(101, 13, 20, '15,16', 13, 70, '<p>The lengths of two rectangles are 11 m and 19 m respectively. Given that their total area is 321 m2, find the difference in their areas. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p><strong>&nbsp;</strong>111</p>\r\n', '<p>191</p>\r\n', '<p><strong>&nbsp;</strong>211</p>\r\n', '<p><strong>&nbsp;</strong>241</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(102, 13, 20, '15,16', 13, 59, '<p>The squares on a mat are arranged in the following order color pattern; blue, green, red, yellow, brown, purple. If the mat has 64 squares, what is the greatest number of blue squares the mat will have?</p>\r\n', '<p><strong>&nbsp;</strong>8</p>\r\n', '<p>11</p>\r\n', '<p>32</p>\r\n', '<p>64</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(103, 13, 20, '15,16', 13, 95, '<p>I was paid $2.80 on the first day, and my salary doubled each day thereafter. I earned a total of $714. How many days did I work?</p>\r\n', '<p>8</p>\r\n', '<p>10</p>\r\n', '<p>12</p>\r\n', '<p>14</p>\r\n', 'Not Answer', 2, '2015-04-14', 'A', 'Single', 3, 7, 15),
(104, 13, 20, '15,16', 13, 83, '<p>A piece of pasture grows at a constant rate everyday.<br />\r\n200 sheep will eat up the grass in 100 days.<br />\r\n150 sheep will eat up the grass in 150 days.<br />\r\nHow many days does it take for 100 sheep to eat up the grass?</p>\r\n', '<p>300 days</p>\r\n', '<p>320 days</p>\r\n', '<p>340 days</p>\r\n', '<p>360 days</p>\r\n', 'Not Answer', 2, '2015-04-14', 'A', 'Single', 3, 7, 15),
(105, 13, 20, '15,16', 13, 85, '<p>Let ABCD be a square with each side of length 1 unit. If M is the intersection of its diagonals and P is the midpoint of MB, what is the square of the length of AP?</p>\r\n', '<p>3/4</p>\r\n', '<p>5/8</p>\r\n', '<p>1/2</p>\r\n', '<p>3/8</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(106, 13, 20, '15,16', 13, 93, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-009.jpg" type="image" /></p>\r\n\r\n<p>In the diagram, there is an equilateral triangle and a square. If the perimeter of the triangle is 24 m, find the area of the square.</p>\r\n', '<p><strong>&nbsp;</strong>25 m2</p>\r\n', '<p><strong>&nbsp;</strong>36 m2</p>\r\n', '<p><strong>&nbsp;</strong>49 m2</p>\r\n', '<p>64 m2</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(107, 13, 20, '15,16', 13, 102, '<p>In 2008, the price of car A is $20,000 and car B is $25,000. Each year, the price of car A decreases by 5% and that of car B decreases by 10%. In what year will car B be cheaper than car A?</p>\r\n', '<p>2011</p>\r\n', '<p>2012</p>\r\n', '<p>2013</p>\r\n', '<p>2014</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(108, 13, 20, '15,16', 13, 88, '<p>(2 x 1/100) + (3 x 1/1000) + (7 x 1/10,000) = ?</p>\r\n', '<p>2.37</p>\r\n', '<p><strong>&nbsp;</strong>0.237</p>\r\n', '<p>0.0237</p>\r\n', '<p><strong>&nbsp;</strong>0.00237</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(109, 13, 20, '15,16', 13, 89, '<p>If the pattern of the first six letters in CIRCUSCIRCUS&hellip; continues, then the pattern&rsquo;s 500th letter is?</p>\r\n', '<p>C</p>\r\n', '<p>I</p>\r\n', '<p>R</p>\r\n', '<p>S</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(110, 13, 20, '15,16', 13, 97, '<p>Katie and Jim play a game with 2 six sided number cubes numbered 1 through 6. When the number cubes are rolled, Katie gets a point if the sum of the two is even and Jim gets a point if the product is even. What is the likelihood that on one roll of both cubes both Katie and Jim get a point?</p>\r\n', '<p>1/2</p>\r\n', '<p>1/3</p>\r\n', '<p>1/4</p>\r\n', '<p>1/5</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(111, 13, 20, '15,16', 13, 100, '<p>The colored stripes pattern Red, Blue, Blue, Green, Yellow repeats on wall paper. What will be the color of the 32nd stripe?</p>\r\n', '<p>Red</p>\r\n', '<p>Blue</p>\r\n', '<p>Green</p>\r\n', '<p>Yellow</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(112, 13, 20, '15,16', 13, 104, '<p>Peter usually travels from town P to town Q in eight hours. One day, he increased his average speed by 5km per hour so that he arrived 20 minutes earlier. Find his usual average speed, in km per hour.</p>\r\n', '<p>110 km/h</p>\r\n', '<p>115 km/h</p>\r\n', '<p>125 km/h</p>\r\n', '<p><strong>&nbsp;</strong>135 km/h</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(113, 13, 20, '15,16', 13, 101, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-013.jpg" type="image" /></p>\r\n\r\n<p>Find the measure of angle ABC as shown in the following figure, where AC = CB = CD, and the measure of angle ADC is 29 degrees.</p>\r\n', '<p>58 degree</p>\r\n', '<p><strong>&nbsp;</strong>45 degree</p>\r\n', '<p>56 degree</p>\r\n', '<p><strong>&nbsp;</strong>61 degree</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(114, 13, 20, '15,16', 13, 90, '<p>The digits 1986 are written in order from largest to smallest. Next they&rsquo;re written in order from smallest to largest. What number is halfway between these two numbers?</p>\r\n', '<p>4535</p>\r\n', '<p>5775</p>\r\n', '<p>5865</p>\r\n', '<p>6035</p>\r\n', 'Not Answer', 2, '2015-04-14', 'B', 'Single', 3, 7, 15),
(115, 13, 20, '15,16', 13, 86, '<p>There are buses travelling to and fro between Station A and Station B. The buses leave the stations at regular interval and a bus will meet another bus coming in the opposite direction every 6 minutes. Peter starts cycling from A towards B at the same time Jane starts cycling from B towards A. Peter and Jane will meet a bus coming in the opposite direction every 7 and 8 minutes respectively. After 56 minutes of cycling on the road, they meet each other. Find the time taken by a bus to travel from A to B.</p>\r\n', '<p><strong>&nbsp;</strong>32 minutes</p>\r\n', '<p>46 minutes</p>\r\n', '<p>68 minutes</p>\r\n', '<p><strong>&nbsp;</strong>84 minutes</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(116, 13, 20, '15,16', 13, 96, '<p>In a camel herd with 80 legs, half the camels have one hump and half have two. How many humps are there in this herd? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'Not Answer', 2, '2015-04-14', 'D', 'Single', 3, 7, 15),
(117, 13, 20, '15,16', 13, 81, '<p>A particular month has 5 Tuesdays. The first and the last day of the month are not Tuesday. What day is the last day of the month?</p>\r\n', '<p>Sunday</p>\r\n', '<p>Monday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'Not Answer', 2, '2015-04-14', 'C', 'Single', 3, 7, 15),
(118, 13, 20, '15,16', 13, 103, '<p>The average of 10 consecutive odd numbers is 120. What is the average of the 5 largest numbers?</p>\r\n', '<p>100</p>\r\n', '<p>105</p>\r\n', '<p>115</p>\r\n', '<p>125</p>\r\n', 'D', 2, '2015-04-14', 'D', 'Single', 3, 7, 15),
(119, 13, 20, '15,16', 13, 75, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-006.jpg" type="image" /></p>\r\n\r\n<p>Lines AC and BD meet at point O. Given that OA = 40 cm, OB = 50 cm, OC = 60 cm and OD = 75 cm, find the ratio of the area of triangle AOD to the area of triangle BOC.</p>\r\n', '<p>1:1</p>\r\n', '<p>1:2</p>\r\n', '<p>1:3</p>\r\n', '<p>1:4</p>\r\n', 'B', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(120, 13, 20, '15,16', 13, 70, '<p>The lengths of two rectangles are 11 m and 19 m respectively. Given that their total area is 321 m2, find the difference in their areas. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p><strong>&nbsp;</strong>111</p>\r\n', '<p>191</p>\r\n', '<p><strong>&nbsp;</strong>211</p>\r\n', '<p><strong>&nbsp;</strong>241</p>\r\n', 'C', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(121, 13, 20, '15,16', 13, 74, '<p>One pan can fry 2 pieces of meat at one time. Every piece of meat needs two minutes to be cooked (one minute for each side). Using only one pan, find the least possible time required to cook 2000 pieces of meet. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>500 minutes</p>\r\n', '<p>1000 minutes</p>\r\n', '<p>2000 minutes</p>\r\n', '<p>4000 minutes</p>\r\n', 'B', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(122, 13, 20, '15,16', 13, 73, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-005.jpg" type="image" /></p>\r\n', '<p>3675</p>\r\n', '<p>3805</p>\r\n', '<p>4095</p>\r\n', '<p>4255</p>\r\n', 'B', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(123, 13, 20, '15,16', 13, 59, '<p>The squares on a mat are arranged in the following order color pattern; blue, green, red, yellow, brown, purple. If the mat has 64 squares, what is the greatest number of blue squares the mat will have?</p>\r\n', '<p><strong>&nbsp;</strong>8</p>\r\n', '<p>11</p>\r\n', '<p>32</p>\r\n', '<p>64</p>\r\n', 'Not Answer', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(124, 13, 20, '15,16', 13, 62, '<p>Tan and Emelyn are waiting in line to get on the school bus. Tan is seventh in line. Emelyn is in the middle of the line. There are six students between Tan and Emelyn. How many students are waiting in line?</p>\r\n', '<p>12</p>\r\n', '<p>18</p>\r\n', '<p>25</p>\r\n', '<p>27</p>\r\n', 'B', 2, '2015-04-19', 'D', 'Single', 3, 7, 16),
(125, 13, 20, '15,16', 13, 56, '<p>Two dice are rolled. How many different combinations of numbers can come up? Hint: If the first die shows one dot, there are six possible number-pairs which could result.</p>\r\n', '<p>12</p>\r\n', '<p>24</p>\r\n', '<p>36</p>\r\n', '<p>48</p>\r\n', 'B', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(126, 13, 20, '15,16', 13, 64, '<p>At the National Day parade, the local scout troop found that they could arrange themselves in rows of exactly 3, exactly 4, or exactly 5, with no one left over. What is the least number of scouts in the troop?</p>\r\n', '<p>36</p>\r\n', '<p>60</p>\r\n', '<p>100</p>\r\n', '<p>120</p>\r\n', 'A', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(127, 13, 20, '15,16', 13, 65, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-003.jpg" type="image" /></p>\r\n\r\n<p>The diagram shows a dartboard. What is the least number of throws needed in order to get a score of exactly 100? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'C', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(128, 13, 20, '15,16', 13, 80, '<p>How many digits are there before the hundredth 9 in the following number<br />\r\n9797797779777797777797777779&hellip;&hellip;.?</p>\r\n', '<p>4059</p>\r\n', '<p>5049</p>\r\n', '<p>5273</p>\r\n', '<p>5534</p>\r\n', 'A', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(129, 13, 20, '15,16', 13, 57, '<p>The surface of a swimming pool is rectangular in shape and measures 12 metre by 20 metre. A concrete walk 2 metre wide is to be built around the surface of the pool. What will be the surface area of the walk?</p>\r\n', '<p>144m2</p>\r\n', '<p>240m2</p>\r\n', '<p>384m2</p>\r\n', '<p>112m2</p>\r\n', 'B', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(130, 13, 20, '15,16', 13, 60, '<p>The students in a school are having a cup stacking contest. John has a pyramid 9 layers high. How many cups will he need to add to his pyramid to increase the number of layers to 12? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>11</p>\r\n', '<p>24</p>\r\n', '<p>34</p>\r\n', '<p>48</p>\r\n', 'C', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(131, 13, 20, '15,16', 13, 68, '<p>Judy and Tim each has a sum of money. Judy&rsquo;s amount is 3/5 that of Tim&rsquo;s. If Tim were to give Judy $168, then his remaining amount will be 7/9 that of Judy&rsquo;s. How much does Judy have originally? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>242</p>\r\n', '<p>336</p>\r\n', '<p>175</p>\r\n', '<p>672</p>\r\n', 'A', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(132, 13, 20, '15,16', 13, 69, '<p>How long, in hours, after 12 noon, will it take for the hour hand of a clock to lie directly over its minute hand for the first time? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>12/11 hours</p>\r\n', '<p>8 hours</p>\r\n', '<p>8/11 hours</p>\r\n', '<p>7/11 hours</p>\r\n', 'D', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(133, 13, 20, '15,16', 13, 58, '<p>John bowls 3 games and has an average score of 85. If he bowled the same score in his first two games and bowled a score of 95 in his third game. What score did he bowl in either of his first two games?</p>\r\n', '<p>80</p>\r\n', '<p>85</p>\r\n', '<p>90</p>\r\n', '<p>95</p>\r\n', 'B', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(134, 13, 20, '15,16', 13, 78, '<p>If the base of a triangle is increased by 10% while its height decreased by 10%, find the area of the new triangle as a percentage of the original one.</p>\r\n', '<p>80%</p>\r\n', '<p>120%</p>\r\n', '<p>87%</p>\r\n', '<p>99%</p>\r\n', 'A', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(135, 13, 20, '15,16', 13, 71, '<p>Find the value of 20042005 &times; 20052004 &minus; 20042004 &times; 20052005 .</p>\r\n', '<p>10000</p>\r\n', '<p>15000</p>\r\n', '<p>18000</p>\r\n', '<p>19000</p>\r\n', 'C', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(136, 13, 20, '15,16', 13, 79, '<p>A box of chocolate has gone missing from the refrigerator. The suspects have been reduced to 4 children. Only one of them is telling the truth.</p>\r\n\r\n<p>A : &#39;I did not take the chocolate.&#39;<br />\r\nB : &#39;A is lying.&#39;<br />\r\nC : &#39;B is lying.&#39;<br />\r\nD : &#39;B took the chocolate.&#39;<br />\r\nWho took the chocolate ?</p>\r\n', '<p>A</p>\r\n', '<p>B</p>\r\n', '<p>C</p>\r\n', '<p>D</p>\r\n', 'A', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(137, 13, 20, '15,16', 13, 103, '<p>The average of 10 consecutive odd numbers is 120. What is the average of the 5 largest numbers?</p>\r\n', '<p>100</p>\r\n', '<p>105</p>\r\n', '<p>115</p>\r\n', '<p>125</p>\r\n', 'C', 2, '2015-04-19', 'D', 'Single', 3, 7, 16),
(138, 13, 20, '15,16', 13, 87, '<p>Which number leaves a remainder of 1 when divided by 5 and also when divided by 7?</p>\r\n', '<p>671</p>\r\n', '<p>761</p>\r\n', '<p>176</p>\r\n', '<p>716</p>\r\n', 'B', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(139, 13, 20, '15,16', 13, 102, '<p>In 2008, the price of car A is $20,000 and car B is $25,000. Each year, the price of car A decreases by 5% and that of car B decreases by 10%. In what year will car B be cheaper than car A?</p>\r\n', '<p>2011</p>\r\n', '<p>2012</p>\r\n', '<p>2013</p>\r\n', '<p>2014</p>\r\n', 'A', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(140, 13, 20, '15,16', 13, 95, '<p>I was paid $2.80 on the first day, and my salary doubled each day thereafter. I earned a total of $714. How many days did I work?</p>\r\n', '<p>8</p>\r\n', '<p>10</p>\r\n', '<p>12</p>\r\n', '<p>14</p>\r\n', 'C', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(141, 13, 20, '15,16', 13, 105, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-014.jpg" type="image" /></p>\r\n\r\n<p>In the multiplication example above, all number from 1 through 9 have been used once, and once only. Three of the numbers are given. What is the three digit number on top?</p>\r\n', '<p>279</p>\r\n', '<p>297</p>\r\n', '<p>246</p>\r\n', '<p>264</p>\r\n', 'B', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(142, 13, 20, '15,16', 13, 89, '<p>If the pattern of the first six letters in CIRCUSCIRCUS&hellip; continues, then the pattern&rsquo;s 500th letter is?</p>\r\n', '<p>C</p>\r\n', '<p>I</p>\r\n', '<p>R</p>\r\n', '<p>S</p>\r\n', 'C', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(143, 13, 20, '15,16', 13, 88, '<p>(2 x 1/100) + (3 x 1/1000) + (7 x 1/10,000) = ?</p>\r\n', '<p>2.37</p>\r\n', '<p><strong>&nbsp;</strong>0.237</p>\r\n', '<p>0.0237</p>\r\n', '<p><strong>&nbsp;</strong>0.00237</p>\r\n', 'C', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(144, 13, 20, '15,16', 13, 83, '<p>A piece of pasture grows at a constant rate everyday.<br />\r\n200 sheep will eat up the grass in 100 days.<br />\r\n150 sheep will eat up the grass in 150 days.<br />\r\nHow many days does it take for 100 sheep to eat up the grass?</p>\r\n', '<p>300 days</p>\r\n', '<p>320 days</p>\r\n', '<p>340 days</p>\r\n', '<p>360 days</p>\r\n', 'Not Answer', 2, '2015-04-19', 'A', 'Single', 3, 7, 16),
(145, 13, 20, '15,16', 13, 101, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-013.jpg" type="image" /></p>\r\n\r\n<p>Find the measure of angle ABC as shown in the following figure, where AC = CB = CD, and the measure of angle ADC is 29 degrees.</p>\r\n', '<p>58 degree</p>\r\n', '<p><strong>&nbsp;</strong>45 degree</p>\r\n', '<p>56 degree</p>\r\n', '<p><strong>&nbsp;</strong>61 degree</p>\r\n', 'B', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(146, 13, 20, '15,16', 13, 81, '<p>A particular month has 5 Tuesdays. The first and the last day of the month are not Tuesday. What day is the last day of the month?</p>\r\n', '<p>Sunday</p>\r\n', '<p>Monday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'A', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(147, 13, 20, '15,16', 13, 98, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-011.jpg" type="image" /></p>\r\n\r\n<p>Pictured is a sequence of growing chairs. The first chair is made of 6 squares. How many more squares are in the 8th chair in the sequence than in the first?</p>\r\n', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'C', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(148, 13, 20, '15,16', 13, 94, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-010.jpg" style="height:97px; width:95px" type="image" /></p>\r\n\r\n<p>Square ABCD has a perimeter of 8 cm. If a circle is inscribed in the square as shown, what is the area of the circle?</p>\r\n', '<p>1.57 m2</p>\r\n', '<p>3.14 m2</p>\r\n', '<p><strong>&nbsp;</strong>4.71 m2</p>\r\n', '<p>6.28 m2</p>\r\n', 'C', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(149, 13, 20, '15,16', 13, 90, '<p>The digits 1986 are written in order from largest to smallest. Next they&rsquo;re written in order from smallest to largest. What number is halfway between these two numbers?</p>\r\n', '<p>4535</p>\r\n', '<p>5775</p>\r\n', '<p>5865</p>\r\n', '<p>6035</p>\r\n', 'A', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(150, 13, 20, '15,16', 13, 84, '<p>The digits 3, 4, 5 and 7 can form twenty four different four digit numbers. Find the average of these twenty four numbers.</p>\r\n', '<p>5867.75</p>\r\n', '<p>4537.50</p>\r\n', '<p><strong>&nbsp;</strong>3548.35</p>\r\n', '<p>5277.25</p>\r\n', 'A', 2, '2015-04-19', 'D', 'Single', 3, 7, 16),
(151, 13, 20, '15,16', 13, 99, '<p><input alt="" src="http://localhost/himachal/images/extraimage/MO-012.jpg" style="height:55px; width:249px" type="image" /></p>\r\n\r\n<p>A dart hits the dartboard shown at random. Find the probability of the dart landing in the shaded region.</p>\r\n', '<p>1/2</p>\r\n', '<p>1/3</p>\r\n', '<p>1/4</p>\r\n', '<p>1/5</p>\r\n', 'B', 2, '2015-04-19', 'B', 'Single', 3, 7, 16),
(152, 13, 20, '15,16', 13, 91, '<p>A circus clown buys balloons at $1.44 per dozen and sells the balloons for 20 cents each. What will be his profit on a day when he buys and sells 20 dozen balloons?</p>\r\n', '<p>$17.40</p>\r\n', '<p>$18.60</p>\r\n', '<p><strong>&nbsp;</strong>$19.20</p>\r\n', '<p>$20.60</p>\r\n', 'A', 2, '2015-04-19', 'C', 'Single', 3, 7, 16),
(153, 13, 20, '15,16', 13, 68, '<p>Judy and Tim each has a sum of money. Judy&rsquo;s amount is 3/5 that of Tim&rsquo;s. If Tim were to give Judy $168, then his remaining amount will be 7/9 that of Judy&rsquo;s. How much does Judy have originally? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>242</p>\r\n', '<p>336</p>\r\n', '<p>175</p>\r\n', '<p>672</p>\r\n', 'A', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(154, 13, 20, '15,16', 13, 56, '<p>Two dice are rolled. How many different combinations of numbers can come up? Hint: If the first die shows one dot, there are six possible number-pairs which could result.</p>\r\n', '<p>12</p>\r\n', '<p>24</p>\r\n', '<p>36</p>\r\n', '<p>48</p>\r\n', 'B', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(155, 13, 20, '15,16', 13, 69, '<p>How long, in hours, after 12 noon, will it take for the hour hand of a clock to lie directly over its minute hand for the first time?</p>\r\n', '<p>12/11 hours</p>\r\n', '<p>8 hours</p>\r\n', '<p>8/11 hours</p>\r\n', '<p>7/11 hours</p>\r\n', 'Not Answer', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(156, 13, 20, '15,16', 13, 61, '<p>January 31st was on a Tuesday; it was the 27th consecutive day in which it did not rain. What day of the week was it when it last rained?</p>\r\n', '<p>Monday</p>\r\n', '<p>Tuesday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'C', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(157, 13, 20, '15,16', 13, 62, '<p>Tan and Emelyn are waiting in line to get on the school bus. Tan is seventh in line. Emelyn is in the middle of the line. There are six students between Tan and Emelyn. How many students are waiting in line?</p>\r\n', '<p>12</p>\r\n', '<p>18</p>\r\n', '<p>25</p>\r\n', '<p>27</p>\r\n', 'A', 2, '2015-04-21', 'D', 'Single', 3, 7, 17),
(158, 13, 20, '15,16', 13, 73, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-005.jpg" style="width: 412px; height: 56px;" type="image" /></p>\r\n', '<p>3675</p>\r\n', '<p>3805</p>\r\n', '<p>4095</p>\r\n', '<p>4255</p>\r\n', 'B', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(159, 13, 20, '15,16', 13, 78, '<p>If the base of a triangle is increased by 10% while its height decreased by 10%, find the area of the new triangle as a percentage of the original one.</p>\r\n', '<p>80%</p>\r\n', '<p>120%</p>\r\n', '<p>87%</p>\r\n', '<p>99%</p>\r\n', 'C', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(160, 13, 20, '15,16', 13, 67, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-002.jpg" style="width: 209px; height: 206px;" type="image" /></p>\r\n\r\n<p>Two squares, with lengths 4 cm and 6 cm respectively, are partially overlapped as shown in the diagram above. What is the difference between shaded area of the small square and shaded area of the big square?</p>\r\n', '<p>16cm2</p>\r\n', '<p>20cm2</p>\r\n', '<p>26cm2</p>\r\n', '<p>30cm2</p>\r\n', 'D', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(161, 13, 20, '15,16', 13, 74, '<p>One pan can fry 2 pieces of meat at one time. Every piece of meat needs two minutes to be cooked (one minute for each side). Using only one pan, find the least possible time required to cook 2000 pieces of meet. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>500 minutes</p>\r\n', '<p>1000 minutes</p>\r\n', '<p>2000 minutes</p>\r\n', '<p>4000 minutes</p>\r\n', 'A', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(162, 13, 20, '15,16', 13, 57, '<p>The surface of a swimming pool is rectangular in shape and measures 12 metre by 20 metre. A concrete walk 2 metre wide is to be built around the surface of the pool. What will be the surface area of the walk?</p>\r\n', '<p>144m2</p>\r\n', '<p>240m2</p>\r\n', '<p>384m2</p>\r\n', '<p>112m2</p>\r\n', 'C', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(163, 13, 20, '15,16', 13, 58, '<p>John bowls 3 games and has an average score of 85. If he bowled the same score in his first two games and bowled a score of 95 in his third game. What score did he bowl in either of his first two games?</p>\r\n', '<p>80</p>\r\n', '<p>85</p>\r\n', '<p>90</p>\r\n', '<p>95</p>\r\n', 'D', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(164, 13, 20, '15,16', 13, 65, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-003.jpg" style="width: 201px; height: 204px;" type="image" /></p>\r\n\r\n<p>The diagram shows a dartboard. What is the least number of throws needed in order to get a score of exactly 100?</p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'B', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(165, 13, 20, '15,16', 13, 63, '<p>A Rubix cube has six faces with 16 colored squares per face. If each colored square has 2 cm sides, what is the surface area of the Rubix cube?</p>\r\n', '<p>78cm2</p>\r\n', '<p>96cm2</p>\r\n', '<p>192cm2</p>\r\n', '<p>384cm2</p>\r\n', 'Not Answer', 2, '2015-04-21', 'D', 'Single', 3, 7, 17),
(166, 13, 20, '15,16', 13, 80, '<p>How many digits are there before the hundredth 9 in the following number<br />\r\n9797797779777797777797777779&hellip;&hellip;.?</p>\r\n', '<p>4059</p>\r\n', '<p>5049</p>\r\n', '<p>5273</p>\r\n', '<p>5534</p>\r\n', 'Not Answer', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(167, 13, 20, '15,16', 13, 71, '<p>Find the value of 20042005 &times; 20052004 &minus; 20042004 &times; 20052005 .</p>\r\n', '<p>10000</p>\r\n', '<p>15000</p>\r\n', '<p>18000</p>\r\n', '<p>19000</p>\r\n', 'Not Answer', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(168, 13, 20, '15,16', 13, 66, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-004.jpg" style="width: 407px; height: 70px;" type="image" /></p>\r\n', '<p>1/2</p>\r\n', '<p><strong>&nbsp;</strong>2/5</p>\r\n', '<p><strong>3</strong>/5</p>\r\n', '<p><strong>&nbsp;</strong>4/5</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(169, 13, 20, '15,16', 13, 64, '<p>At the National Day parade, the local scout troop found that they could arrange themselves in rows of exactly 3, exactly 4, or exactly 5, with no one left over. What is the least number of scouts in the troop?</p>\r\n', '<p>36</p>\r\n', '<p>60</p>\r\n', '<p>100</p>\r\n', '<p>120</p>\r\n', 'Not Answer', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(170, 13, 20, '15,16', 13, 60, '<p>The students in a school are having a cup stacking contest. John has a pyramid 9 layers high. How many cups will he need to add to his pyramid to increase the number of layers to 12?</p>\r\n', '<p>11</p>\r\n', '<p>24</p>\r\n', '<p>34</p>\r\n', '<p>48</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(171, 13, 20, '15,16', 13, 94, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-010.jpg" style="height: 97px; width: 95px;" type="image" /></p>\r\n\r\n<p>Square ABCD has a perimeter of 8 cm. If a circle is inscribed in the square as shown, what is the area of the circle?</p>\r\n', '<p>1.57 m2</p>\r\n', '<p>3.14 m2</p>\r\n', '<p><strong>&nbsp;</strong>4.71 m2</p>\r\n', '<p>6.28 m2</p>\r\n', 'Not Answer', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(172, 13, 20, '15,16', 13, 88, '<p>(2 x 1/100) + (3 x 1/1000) + (7 x 1/10,000) = ?</p>\r\n', '<p>2.37</p>\r\n', '<p><strong>&nbsp;</strong>0.237</p>\r\n', '<p>0.0237</p>\r\n', '<p><strong>&nbsp;</strong>0.00237</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(173, 13, 20, '15,16', 13, 102, '<p>In 2008, the price of car A is $20,000 and car B is $25,000. Each year, the price of car A decreases by 5% and that of car B decreases by 10%. In what year will car B be cheaper than car A?</p>\r\n', '<p>2011</p>\r\n', '<p>2012</p>\r\n', '<p>2013</p>\r\n', '<p>2014</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(174, 13, 20, '15,16', 13, 98, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-011.jpg" style="width: 187px; height: 91px;" type="image" /></p>\r\n\r\n<p>Pictured is a sequence of growing chairs. The first chair is made of 6 squares. How many more squares are in the 8th chair in the sequence than in the first?</p>\r\n', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(175, 13, 20, '15,16', 13, 93, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-009.jpg" style="width: 75px; height: 106px;" type="image" /></p>\r\n\r\n<p>In the diagram, there is an equilateral triangle and a square. If the perimeter of the triangle is 24 m, find the area of the square.</p>\r\n', '<p><strong>&nbsp;</strong>25 m2</p>\r\n', '<p><strong>&nbsp;</strong>36 m2</p>\r\n', '<p><strong>&nbsp;</strong>49 m2</p>\r\n', '<p>64 m2</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(176, 13, 20, '15,16', 13, 82, '<p>How many rectangles are there in the diagram?</p>\r\n\r\n<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-008.jpg" style="width: 157px; height: 235px;" type="image" /></p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', '<p>32</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(177, 13, 20, '15,16', 13, 85, '<p>Let ABCD be a square with each side of length 1 unit. If M is the intersection of its diagonals and P is the midpoint of MB, what is the square of the length of AP?</p>\r\n', '<p>3/4</p>\r\n', '<p>5/8</p>\r\n', '<p>1/2</p>\r\n', '<p>3/8</p>\r\n', 'Not Answer', 2, '2015-04-21', 'B', 'Single', 3, 7, 17);
INSERT INTO `main_answer` (`m_a_id`, `category_id`, `subcategory_id`, `subject_id`, `exam_id`, `question_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `ans`, `marks`, `examdate`, `correct_ans`, `typeofquestion`, `center_id`, `student_id`, `main_exam_status_id`) VALUES
(178, 13, 20, '15,16', 13, 101, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-013.jpg" style="width: 358px; height: 167px;" type="image" /></p>\r\n\r\n<p>Find the measure of angle ABC as shown in the following figure, where AC = CB = CD, and the measure of angle ADC is 29 degrees.</p>\r\n', '<p>58 degree</p>\r\n', '<p><strong>&nbsp;</strong>45 degree</p>\r\n', '<p>56 degree</p>\r\n', '<p><strong>&nbsp;</strong>61 degree</p>\r\n', 'Not Answer', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(179, 13, 20, '15,16', 13, 100, '<p>The colored stripes pattern Red, Blue, Blue, Green, Yellow repeats on wall paper. What will be the color of the 32nd stripe?</p>\r\n', '<p>Red</p>\r\n', '<p>Blue</p>\r\n', '<p>Green</p>\r\n', '<p>Yellow</p>\r\n', 'Not Answer', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(180, 13, 20, '15,16', 13, 96, '<p>In a camel herd with 80 legs, half the camels have one hump and half have two. How many humps are there in this herd? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'Not Answer', 2, '2015-04-21', 'D', 'Single', 3, 7, 17),
(181, 13, 20, '15,16', 13, 90, '<p>The digits 1986 are written in order from largest to smallest. Next they&rsquo;re written in order from smallest to largest. What number is halfway between these two numbers?</p>\r\n', '<p>4535</p>\r\n', '<p>5775</p>\r\n', '<p>5865</p>\r\n', '<p>6035</p>\r\n', 'A', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(182, 13, 20, '15,16', 13, 95, '<p>I was paid $2.80 on the first day, and my salary doubled each day thereafter. I earned a total of $714. How many days did I work?</p>\r\n', '<p>8</p>\r\n', '<p>10</p>\r\n', '<p>12</p>\r\n', '<p>14</p>\r\n', 'C', 2, '2015-04-21', 'A', 'Single', 3, 7, 17),
(183, 13, 20, '15,16', 13, 86, '<p>There are buses travelling to and fro between Station A and Station B. The buses leave the stations at regular interval and a bus will meet another bus coming in the opposite direction every 6 minutes. Peter starts cycling from A towards B at the same time Jane starts cycling from B towards A. Peter and Jane will meet a bus coming in the opposite direction every 7 and 8 minutes respectively. After 56 minutes of cycling on the road, they meet each other. Find the time taken by a bus to travel from A to B.</p>\r\n', '<p><strong>&nbsp;</strong>32 minutes</p>\r\n', '<p>46 minutes</p>\r\n', '<p>68 minutes</p>\r\n', '<p><strong>&nbsp;</strong>84 minutes</p>\r\n', 'B', 2, '2015-04-21', 'C', 'Single', 3, 7, 17),
(184, 13, 20, '15,16', 13, 89, '<p>If the pattern of the first six letters in CIRCUSCIRCUS&hellip; continues, then the pattern&rsquo;s 500th letter is?</p>\r\n', '<p>C</p>\r\n', '<p>I</p>\r\n', '<p>R</p>\r\n', '<p>S</p>\r\n', 'C', 2, '2015-04-21', 'B', 'Single', 3, 7, 17),
(185, 13, 20, '15,16', 13, 84, '<p>The digits 3, 4, 5 and 7 can form twenty four different four digit numbers. Find the average of these twenty four numbers.</p>\r\n', '<p>5867.75</p>\r\n', '<p>4537.50</p>\r\n', '<p><strong>&nbsp;</strong>3548.35</p>\r\n', '<p>5277.25</p>\r\n', 'C', 2, '2015-04-21', 'D', 'Single', 3, 7, 17),
(186, 13, 20, '15,16', 13, 103, '<p>The average of 10 consecutive odd numbers is 120. What is the average of the 5 largest numbers?</p>\r\n', '<p>100</p>\r\n', '<p>105</p>\r\n', '<p>115</p>\r\n', '<p>125</p>\r\n', 'Not Answer', 2, '2015-04-21', 'D', 'Single', 3, 7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `main_exam_status`
--

CREATE TABLE IF NOT EXISTS `main_exam_status` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `center_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `noofattemps` int(11) NOT NULL,
  `pass_or_fail` varchar(255) NOT NULL,
  `user_score` decimal(10,3) NOT NULL,
  `passing_score` decimal(10,3) NOT NULL,
  `total_score` decimal(10,3) NOT NULL,
  `total_question` int(11) NOT NULL,
  `negative_mark` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_exam_status`
--

INSERT INTO `main_exam_status` (`id`, `category_id`, `subcategory_id`, `subject_id`, `exam_id`, `exam_date`, `status`, `starttime`, `endtime`, `center_id`, `student_id`, `noofattemps`, `pass_or_fail`, `user_score`, `passing_score`, `total_score`, `total_question`, `negative_mark`) VALUES
(13, 13, 20, '15,16', 13, '2015-04-05', 1, '', '', 3, 7, 1, 'Fail', '-5.000', '34.000', '68.000', 34, 1),
(15, 13, 20, '15,16', 13, '2015-04-14', 1, '', '', 3, 7, 2, 'Fail', '2.000', '34.000', '68.000', 34, 1),
(16, 13, 20, '15,16', 13, '2015-04-19', 1, '', '', 3, 7, 3, 'Fail', '-8.000', '34.000', '68.000', 34, 1),
(17, 13, 20, '15,16', 13, '2015-04-21', 1, '', '', 3, 7, 4, 'Fail', '-10.000', '34.000', '68.000', 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `n_id` int(11) NOT NULL,
  `noitce` text NOT NULL,
  `notice_subject` varchar(255) NOT NULL,
  `notice_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`n_id`, `noitce`, `notice_subject`, `notice_date`, `status`, `center_id`, `admin_id`) VALUES
(56, 'i need a website that can show videos or pictures that embed from \r\nyoutube, and under each video or image will be button that give the \r\noption to buy it,\r\n\r\ni don''t need option for downloading the video or image, just buy it with\r\n paypal button.    <br>', 'check admin', '2014-11-20', 1, 0, 2),
(59, 'check admin by amit check admin by amit check admin by amit check admin by amit check admin by amit check admin by amit check admin by amit check admin by amit check admin by amit check admin by amit <br><br><br><br><br><br><br>', 'check admin by amit', '2015-01-12', 1, 0, 2),
(62, 'A day after Barack Obama flew out of India, the Modi government late \r\nWednesday evening announced the abrupt â€œcurtailment of tenure of foreign\r\n secretary Sujatha Singh with immediate effectâ€œ Â­ a not very polite way \r\nof saying it was sacking her eight months before she was due to retire.<br>', 'Test Notice from admin', '2015-01-29', 1, 0, 2),
(64, 'dfsgdsgdsfg<br>', 'asd', '2015-01-30', 1, 1, 0),
(65, 'This is a testing mail<br>&nbsp;thesing mail<br>', 'Testing mail', '2015-02-01', 1, 1, 0),
(66, 'hfrjhj', 'hgjghjghj', '2015-02-07', 1, 3, 0),
(67, 'asdfasdf<br>', 'dfasdf', '2015-03-21', 1, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `noticecenter`
--

CREATE TABLE IF NOT EXISTS `noticecenter` (
  `nc_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `notice_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticecenter`
--

INSERT INTO `noticecenter` (`nc_id`, `center_id`, `notice_id`, `notice_date`) VALUES
(30, 2, 56, '2014-11-20'),
(38, 2, 59, '2015-01-12'),
(39, 1, 62, '2015-01-29'),
(40, 2, 62, '2015-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `noticestudent`
--

CREATE TABLE IF NOT EXISTS `noticestudent` (
  `ns_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `notice_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticestudent`
--

INSERT INTO `noticestudent` (`ns_id`, `student_id`, `notice_id`, `admin_id`, `center_id`, `notice_date`) VALUES
(988, 1, 56, 2, 0, '2014-11-20'),
(989, 2, 56, 2, 0, '2014-11-20'),
(990, 3, 56, 2, 0, '2014-11-20'),
(991, 4, 56, 2, 0, '2014-11-20'),
(1004, 1, 59, 2, 0, '2015-01-12'),
(1005, 4, 62, 2, 0, '2015-01-29'),
(1011, 1, 65, 0, 1, '2015-02-01'),
(1012, 3, 65, 0, 1, '2015-02-01'),
(1013, 4, 65, 0, 1, '2015-02-01'),
(1014, 5, 65, 0, 1, '2015-02-01'),
(1015, 6, 65, 0, 1, '2015-02-01'),
(1017, 4, 67, 11, 0, '2015-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `practice_answer`
--

CREATE TABLE IF NOT EXISTS `practice_answer` (
  `p_a_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `ans` text NOT NULL,
  `marks` int(11) NOT NULL,
  `examdate` date NOT NULL,
  `correct_ans` varchar(255) NOT NULL,
  `typeofquestion` varchar(255) NOT NULL,
  `center_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `practice_exam_status_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_answer`
--

INSERT INTO `practice_answer` (`p_a_id`, `category_id`, `subcategory_id`, `subject_id`, `exam_id`, `question_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `ans`, `marks`, `examdate`, `correct_ans`, `typeofquestion`, `center_id`, `student_id`, `practice_exam_status_id`) VALUES
(27, 13, 14, 8, 1, 16, 'Which of the following numbers are prime?<br>', '19<br>', '16<br>', '11<br>', '12<br>', 'A--C-', 2, '2015-01-30', 'A--C-', 'Multiple', 1, 5, 3),
(28, 13, 14, 8, 1, 17, 'Which number is prime?<br>', '8<br>', '18<br>', '6<br>', '3<br>', 'D', 2, '2015-01-30', 'D', 'Single', 1, 5, 3),
(29, 13, 14, 8, 1, 18, 'Which number is a factor of 9?<br>', '5<br>', '8<br>', '3<br>', '2<br>', 'C', 2, '2015-01-30', 'C', 'Single', 1, 5, 3),
(30, 13, 14, 8, 1, 19, 'Which numbers are factors of 16? Select all that apply.<br>', '4<br>', '2<br>', '8<br>', '1<br>', 'A-B-C-D', 2, '2015-01-30', 'A-B-C-D', 'Multiple', 1, 5, 3),
(31, 13, 14, 8, 1, 20, 'What is the prime factorisation of 6?<br>', '2 X 2 X 3<br>', '3<br>', '2 X 3 X 3<br>', '2 X 3<br>', 'D', 2, '2015-01-30', 'D', 'Single', 1, 5, 3),
(32, 13, 14, 8, 1, 21, 'What is the prime factorisation of 10?<br>', '5<br>', '10<br>', '2<br>', '2 X 5<br>', 'D', 2, '2015-01-30', 'D', 'Single', 1, 5, 3),
(33, 13, 14, 8, 2, 22, 'In <b>1,429</b>, in which place is the <b>1</b>?<br>', 'units<br>', 'tens<br>', 'hundreds<br>', 'thousands<br>', 'D', 2, '2015-01-30', 'D', 'Single', 1, 3, 4),
(34, 13, 14, 8, 2, 23, 'In <b>9,064</b>, what digit is in the <b>hundreds</b> place?<br>', '9<br>', '0<br>', '6<br>', '4<br>', 'B', 2, '2015-01-30', 'B', 'Single', 1, 3, 4),
(35, 13, 14, 8, 1, 16, 'Which of the following numbers are prime?<br>', '19<br>', '16<br>', '11<br>', '12<br>', 'A--C-', 2, '2015-02-01', 'A--C-', 'Multiple', 1, 5, 5),
(36, 13, 14, 8, 1, 17, 'Which number is prime?<br>', '8<br>', '18<br>', '6<br>', '3<br>', 'D', 2, '2015-02-01', 'D', 'Single', 1, 5, 5),
(37, 13, 14, 8, 1, 18, 'Which number is a factor of 9?<br>', '5<br>', '8<br>', '3<br>', '2<br>', 'C', 2, '2015-02-01', 'C', 'Single', 1, 5, 5),
(38, 13, 14, 8, 1, 19, 'Which numbers are factors of 16? Select all that apply.<br>', '4<br>', '2<br>', '8<br>', '1<br>', 'A-B-C-D', 2, '2015-02-01', 'A-B-C-D', 'Multiple', 1, 5, 5),
(39, 13, 14, 8, 1, 20, 'What is the prime factorisation of 6?<br>', '2 X 2 X 3<br>', '3<br>', '2 X 3 X 3<br>', '2 X 3<br>', 'D', 2, '2015-02-01', 'D', 'Single', 1, 5, 5),
(40, 13, 14, 8, 1, 21, 'What is the prime factorisation of 10?<br>', '5<br>', '10<br>', '2<br>', '2 X 5<br>', 'D', 2, '2015-02-01', 'D', 'Single', 1, 5, 5),
(41, 13, 14, 8, 2, 22, 'In <b>1,429</b>, in which place is the <b>1</b>?<br>', 'units<br>', 'tens<br>', 'hundreds<br>', 'thousands<br>', 'Not Answer', 2, '2015-02-04', 'D', 'Single', 0, 7, 6),
(42, 13, 14, 8, 2, 23, 'In <b>9,064</b>, what digit is in the <b>hundreds</b> place?<br>', '9<br>', '0<br>', '6<br>', '4<br>', 'Not Answer', 2, '2015-02-04', 'B', 'Single', 0, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `practice_exam`
--

CREATE TABLE IF NOT EXISTS `practice_exam` (
  `p_e_id` int(11) NOT NULL,
  `passing_percentage` int(11) NOT NULL DEFAULT '1',
  `re_exam_day` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_status` int(11) NOT NULL DEFAULT '1',
  `exam_duration` varchar(255) NOT NULL,
  `neg_mark_status` int(2) NOT NULL DEFAULT '0',
  `negative_marks` int(11) NOT NULL,
  `terms_condition` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_exam`
--

INSERT INTO `practice_exam` (`p_e_id`, `passing_percentage`, `re_exam_day`, `category_id`, `subcategory_id`, `center_id`, `subject_id`, `exam_name`, `exam_status`, `exam_duration`, `neg_mark_status`, `negative_marks`, `terms_condition`) VALUES
(1, 40, 1, 13, 14, 1, 8, 'Math-2015 jan', 1, '20', 1, 1, '<div><div>General Instructions:</div></div><ol><li>Total of 20 minutes duration will be given to attempt all the questions. And there a penalty of minus 1 marks for each wrong answer.</li><li>The clock has been set at the server and the countdown timer at the top right corner of your screen will display the time remaining for you to complete the exam. When the clock runs out the exam ends by default - you are not required to end or submit your exam.</li><li>The question palette at the right of screen shows one of the following statuses of each of the questions numbered:</li></ol><br><br>'),
(2, 50, 1, 13, 14, 1, 8, 'Whole numbers', 1, '10', 1, 1, '<div><div>General Instructions:</div></div><ol><li>Total of 10 minutes \r\nduration will be given to attempt all the questions. And there a penalty\r\n of minus 1 marks for each wrong answer.</li><li>The clock has been set \r\nat the server and the countdown timer at the top right corner of your \r\nscreen will display the time remaining for you to complete the exam. \r\nWhen the clock runs out the exam ends by default - you are not required \r\nto end or submit your exam.</li><li>The question palette at the right of screen shows one of the following statuses of each of the questions numbered:</li></ol><br><br><br>'),
(3, 60, 0, 13, 14, 1, 8, 'English-2015', 1, '10', 1, 2, 'General Instructions:<br><br>&nbsp;&nbsp; 1 Total of 10 minutes duration will be given to attempt all the questions. And there a penalty of minus 2 marks for each wrong answer.<br>&nbsp;&nbsp; 2 The clock has been set at the server and the countdown timer at the top right corner of your screen will display the time remaining for you to&nbsp;&nbsp; complete the exam. When the clock runs out the exam ends by default - you are not required to end or submit your exam.<br>&nbsp;&nbsp; 3 The question palette at the right of screen shows one of the following statuses of each of the questions numbered:<br><br>'),
(4, 40, 1, 13, 14, 3, 8, 'Maths', 1, '15', 1, 1, '<span><div><div>General Instructions:</div></div><ol><li>Total of 15 minutes duration will be given to attempt all the questions. And there a penalty of minus 1 mark for each wrong answer.</li><li>The clock has been set at the server and the countdown timer at the top right corner of your screen will display the time remaining for you to complete the exam. When the clock runs out the exam ends by default - you are not required to end or submit your exam.</li><li>The question palette at the right of screen shows one of the following statuses of each of the questions numbered:</li></ol></span><br>');

-- --------------------------------------------------------

--
-- Table structure for table `practice_exam_status`
--

CREATE TABLE IF NOT EXISTS `practice_exam_status` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `center_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `noofattemps` int(11) NOT NULL,
  `pass_or_fail` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_exam_status`
--

INSERT INTO `practice_exam_status` (`id`, `category_id`, `subcategory_id`, `subject_id`, `exam_id`, `exam_date`, `status`, `starttime`, `endtime`, `center_id`, `student_id`, `noofattemps`, `pass_or_fail`) VALUES
(3, 13, 14, 8, 1, '2015-01-30', 1, '', '', 1, 5, 1, 'Pass'),
(4, 13, 14, 8, 2, '2015-01-30', 1, '', '', 1, 3, 1, 'Pass'),
(5, 13, 14, 8, 1, '2015-02-01', 1, '', '', 1, 5, 2, 'Pass'),
(6, 13, 14, 8, 2, '2015-02-04', 1, '', '', 0, 7, 1, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `practice_question`
--

CREATE TABLE IF NOT EXISTS `practice_question` (
  `p_q_id` int(11) NOT NULL,
  `p_e_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_c_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `typeofquestion` varchar(255) NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_ans` varchar(255) NOT NULL,
  `question_status` int(2) NOT NULL DEFAULT '1',
  `marks` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice_question`
--

INSERT INTO `practice_question` (`p_q_id`, `p_e_id`, `c_id`, `s_c_id`, `center_id`, `question`, `typeofquestion`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_ans`, `question_status`, `marks`) VALUES
(16, 1, 13, 14, 1, 'Which of the following numbers are prime?<br>', 'Multiple', '19<br>', '16<br>', '11<br>', '12<br>', 'A--C-', 1, 2),
(17, 1, 13, 14, 1, 'Which number is prime?<br>', 'Single', '8<br>', '18<br>', '6<br>', '3<br>', 'D', 1, 2),
(18, 1, 13, 14, 1, 'Which number is a factor of 9?<br>', 'Single', '5<br>', '8<br>', '3<br>', '2<br>', 'C', 1, 2),
(19, 1, 13, 14, 1, 'Which numbers are factors of 16? Select all that apply.<br>', 'Multiple', '4<br>', '2<br>', '8<br>', '1<br>', 'A-B-C-D', 1, 2),
(20, 1, 13, 14, 1, 'What is the prime factorisation of 6?<br>', 'Single', '2 X 2 X 3<br>', '3<br>', '2 X 3 X 3<br>', '2 X 3<br>', 'D', 1, 2),
(21, 1, 13, 14, 1, 'What is the prime factorisation of 10?<br>', 'Single', '5<br>', '10<br>', '2<br>', '2 X 5<br>', 'D', 1, 2),
(22, 2, 13, 14, 1, 'In <b>1,429</b>, in which place is the <b>1</b>?<br>', 'Single', 'units<br>', 'tens<br>', 'hundreds<br>', 'thousands<br>', 'D', 1, 2),
(23, 2, 13, 14, 1, 'In <b>9,064</b>, what digit is in the <b>hundreds</b> place?<br>', 'Single', '9<br>', '0<br>', '6<br>', '4<br>', 'B', 1, 2),
(24, 3, 13, 14, 1, 'When Sam was a small child, he â€¦â€¦â€¦ spend hours every day playing with stones in the garden.<br><br>', 'Single', 'would <br><br>', '&nbsp; was<br>&nbsp; <br><br>', '&nbsp; used<br>&nbsp;<br>', '&nbsp; should<br><br>', 'A', 1, 2),
(25, 3, 13, 14, 1, '&nbsp;We â€¦â€¦â€¦ a lovely three weeks in the south of Spain last year.<br><br>', 'Single', 'passed<br><br><br>', '&nbsp; took<br>&nbsp;<br><br>', '&nbsp; did<br>&nbsp;<br><br>', '&nbsp; spent <br><br>', 'D', 1, 2),
(26, 3, 13, 14, 1, 'You should read this novel â€” itâ€™s been â€¦â€¦â€¦ recommended by all the critics.<br><br>', 'Single', 'truly<br>&nbsp; <br>', '&nbsp; highly <br>&nbsp; <br>', '&nbsp; fully<br>&nbsp;<br>', '&nbsp; deeply<br><br>', 'B', 1, 2),
(27, 2, 13, 14, 1, 'dfhjftkvhj;', 'Single', 'ghjghjh', 'jjj', 'jjh', 'gh', 'A', 1, 4),
(28, 4, 13, 14, 3, 'Which of the following is a cone?<br>', 'Multiple', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cone1.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cone2.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cube1.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cone3.gif" alt=""><br>', 'A-B--D', 1, 3),
(29, 4, 13, 14, 3, 'Which of the following is not a cuboid?<br>', 'Multiple', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cuboid1.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cube2.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cuboid2.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cylinder1.gif" alt=""><br>', '-B--D', 1, 2),
(30, 4, 13, 14, 3, 'Which is a sphere?<br>', 'Multiple', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/cylinder2.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/sphere1.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/sphere2.gif" alt=""><br>', '<img src="http://textusintentio.com/product/onlineexamination/images/extraimage/sphere3.gif" alt=""><br>', '-B-C-D', 1, 3),
(31, 4, 13, 14, 3, '<p><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span> which is correct</p>\r\n', 'Single', '<p><br />\r\n<span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span></p>\r\n', '<p><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span><span class="math-tex">\\(x^2 = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span></p>\r\n', '<p><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span></p>\r\n', '<p><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a^4}\\)</span></p>\r\n', 'A', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `q_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_c_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `typeofquestion` varchar(255) NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_ans` text NOT NULL,
  `question_status` int(2) NOT NULL DEFAULT '1',
  `marks` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `s_id`, `c_id`, `s_c_id`, `question`, `typeofquestion`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_ans`, `question_status`, `marks`) VALUES
(44, 6, 1, 5, '<p>First Question<br />\n&nbsp;EDIT</p>', 'Single', '<p>aaaaaaaaaaaaa</p>', '<p>bbbbbbbbbbbb</p>', '<p><span style="font-size:26px"><span class="math-tex">(x = {-b pm sqrt{b^2-4ac} over 2a})</span></span></p>', '<p>ddddddddddddddddddddddd</p>', 'A', 1, 2),
(45, 6, 1, 5, 'second question<br>', 'Multiple', 'aaaaaaaa<br>', 'bbbbbbbbbbbbbb', 'ccccccccc<br>', 'ddddddddddddd<br>', 'A-B--', 1, 2),
(48, 6, 1, 5, '<p><span style="font-size:28px"><span class="math-tex">\\(x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}\\)</span></span></p>\r\n', 'Single', 'sdfasdfasdf<br>', 'asdf<br>', 'fdsf', 'fasdfasdf<br>', 'A', 1, 3),
(49, 6, 1, 5, '<p><span class="math-tex">\\(\\cos (2\\theta) = \\cos^2 \\theta - \\sin^2 \\theta\\)</span></p>\r\n', 'Single', '<p><span class="math-tex">\\(\\cos (2\\theta) = \\cos^2 \\theta - \\sin^2 \\theta\\)</span></p>\r\n', '<p><br />\r\n<span class="math-tex">\\(\\cos (2\\theta) = \\cos^2 \\theta - \\sin^2 \\theta\\)</span></p>\r\n', '<p><span class="math-tex">\\(\\cos (2\\theta) = \\cos^2 \\theta - \\sin^2 \\theta\\)</span></p>\r\n', '<p><span class="math-tex">\\(\\cos (2\\theta) = \\cos^2 \\theta - \\sin^2 \\theta\\)</span></p>\r\n', 'A', 1, 4),
(50, 8, 13, 14, '<p>1+2=</p>\r\n', 'Single', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>2</p>\r\n', '<p>1</p>\r\n', 'A', 1, 2),
(51, 8, 13, 14, '<p>2*8=</p>\r\n', 'Multiple', '<p>16</p>\r\n', '<p>8*2</p>\r\n', '<p>5</p>\r\n', '<p>4</p>\r\n', 'A-B--', 1, 2),
(52, 8, 13, 14, '<p>12-6+5</p>\r\n', 'Single', '<p>11</p>\r\n', '<p>12</p>\r\n', '<p>6</p>\r\n', '<p>5</p>\r\n', 'A', 1, 2),
(53, 9, 13, 14, '<p>11*11=</p>\r\n', 'Single', '<p>121</p>\r\n', '<p>120</p>\r\n', '<p>123</p>\r\n', '<p>123</p>\r\n', 'B', 1, 2),
(54, 9, 13, 14, '<p>100*100=</p>\r\n', 'Single', '<p>10000</p>\r\n', '<p>20000</p>\r\n', '<p>30000</p>\r\n', '<p>11000</p>\r\n', 'A', 1, 2),
(55, 9, 13, 14, '<p>9*9=</p>\r\n', 'Single', '<p>81</p>\r\n', '<p>89</p>\r\n', '<p>34</p>\r\n', '<p>33</p>\r\n', 'A', 1, 2),
(56, 15, 13, 20, '<p>Two dice are rolled. How many different combinations of numbers can come up? Hint: If the first die shows one dot, there are six possible number-pairs which could result.</p>\r\n', 'Single', '<p>12</p>\r\n', '<p>24</p>\r\n', '<p>36</p>\r\n', '<p>48</p>\r\n', 'C', 1, 2),
(57, 15, 13, 20, '<p>The surface of a swimming pool is rectangular in shape and measures 12 metre by 20 metre. A concrete walk 2 metre wide is to be built around the surface of the pool. What will be the surface area of the walk?</p>\r\n', 'Single', '<p>144m2</p>\r\n', '<p>240m2</p>\r\n', '<p>384m2</p>\r\n', '<p>112m2</p>\r\n', 'A', 1, 2),
(58, 15, 13, 20, '<p>John bowls 3 games and has an average score of 85. If he bowled the same score in his first two games and bowled a score of 95 in his third game. What score did he bowl in either of his first two games?</p>\r\n', 'Single', '<p>80</p>\r\n', '<p>85</p>\r\n', '<p>90</p>\r\n', '<p>95</p>\r\n', 'A', 1, 2),
(59, 15, 13, 20, '<p>The squares on a mat are arranged in the following order color pattern; blue, green, red, yellow, brown, purple. If the mat has 64 squares, what is the greatest number of blue squares the mat will have?</p>\r\n', 'Single', '<p><strong>&nbsp;</strong>8</p>\r\n', '<p>11</p>\r\n', '<p>32</p>\r\n', '<p>64</p>\r\n', 'B', 1, 2),
(60, 15, 13, 20, '<p>The students in a school are having a cup stacking contest. John has a pyramid 9 layers high. How many cups will he need to add to his pyramid to increase the number of layers to 12?</p>\r\n', 'Single', '<p>11</p>\r\n', '<p>24</p>\r\n', '<p>34</p>\r\n', '<p>48</p>\r\n', 'C', 1, 2),
(61, 15, 13, 20, '<p>January 31st was on a Tuesday; it was the 27th consecutive day in which it did not rain. What day of the week was it when it last rained?</p>\r\n', 'Single', '<p>Monday</p>\r\n', '<p>Tuesday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'C', 1, 2),
(62, 15, 13, 20, '<p>Tan and Emelyn are waiting in line to get on the school bus. Tan is seventh in line. Emelyn is in the middle of the line. There are six students between Tan and Emelyn. How many students are waiting in line?</p>\r\n', 'Single', '<p>12</p>\r\n', '<p>18</p>\r\n', '<p>25</p>\r\n', '<p>27</p>\r\n', 'D', 1, 2),
(63, 15, 13, 20, '<p>A Rubix cube has six faces with 16 colored squares per face. If each colored square has 2 cm sides, what is the surface area of the Rubix cube?</p>\r\n', 'Single', '<p>78cm2</p>\r\n', '<p>96cm2</p>\r\n', '<p>192cm2</p>\r\n', '<p>384cm2</p>\r\n', 'D', 1, 2),
(64, 15, 13, 20, '<p>At the National Day parade, the local scout troop found that they could arrange themselves in rows of exactly 3, exactly 4, or exactly 5, with no one left over. What is the least number of scouts in the troop?</p>\r\n', 'Single', '<p>36</p>\r\n', '<p>60</p>\r\n', '<p>100</p>\r\n', '<p>120</p>\r\n', 'B', 1, 2),
(65, 15, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-003.jpg" style="width: 201px; height: 204px;" type="image" /></p>\r\n\r\n<p>The diagram shows a dartboard. What is the least number of throws needed in order to get a score of exactly 100?</p>\r\n', 'Single', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'B', 1, 2),
(66, 15, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-004.jpg" style="width: 407px; height: 70px;" type="image" /></p>\r\n', 'Single', '<p>1/2</p>\r\n', '<p><strong>&nbsp;</strong>2/5</p>\r\n', '<p><strong>3</strong>/5</p>\r\n', '<p><strong>&nbsp;</strong>4/5</p>\r\n', 'C', 1, 2),
(67, 15, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-002.jpg" style="width: 209px; height: 206px;" type="image" /></p>\r\n\r\n<p>Two squares, with lengths 4 cm and 6 cm respectively, are partially overlapped as shown in the diagram above. What is the difference between shaded area of the small square and shaded area of the big square?</p>\r\n', 'Single', '<p>16cm2</p>\r\n', '<p>20cm2</p>\r\n', '<p>26cm2</p>\r\n', '<p>30cm2</p>\r\n', 'A', 1, 2),
(68, 15, 13, 20, '<p>Judy and Tim each has a sum of money. Judy&rsquo;s amount is 3/5 that of Tim&rsquo;s. If Tim were to give Judy $168, then his remaining amount will be 7/9 that of Judy&rsquo;s. How much does Judy have originally? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', 'Single', '<p>242</p>\r\n', '<p>336</p>\r\n', '<p>175</p>\r\n', '<p>672</p>\r\n', 'B', 1, 2),
(69, 15, 13, 20, '<p>How long, in hours, after 12 noon, will it take for the hour hand of a clock to lie directly over its minute hand for the first time?</p>\r\n', 'Single', '<p>12/11 hours</p>\r\n', '<p>8 hours</p>\r\n', '<p>8/11 hours</p>\r\n', '<p>7/11 hours</p>\r\n', 'A', 1, 2),
(70, 15, 13, 20, '<p>The lengths of two rectangles are 11 m and 19 m respectively. Given that their total area is 321 m2, find the difference in their areas. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', 'Single', '<p><strong>&nbsp;</strong>111</p>\r\n', '<p>191</p>\r\n', '<p><strong>&nbsp;</strong>211</p>\r\n', '<p><strong>&nbsp;</strong>241</p>\r\n', 'C', 1, 2),
(71, 15, 13, 20, '<p>Find the value of 20042005 &times; 20052004 &minus; 20042004 &times; 20052005 .</p>\r\n', 'Single', '<p>10000</p>\r\n', '<p>15000</p>\r\n', '<p>18000</p>\r\n', '<p>19000</p>\r\n', 'A', 1, 2),
(72, 15, 13, 20, '<p>There are three classes A, B and C. Class A has 2 more students than class B. Class B has 1 more student than class C. The product of the numbers of students in the three classes is 99360. How many students are there in class A?</p>\r\n', 'Single', '<p>24</p>\r\n', '<p>36</p>\r\n', '<p>48</p>\r\n', '<p>62</p>\r\n', 'C', 1, 2),
(73, 15, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-005.jpg" style="width: 412px; height: 56px;" type="image" /></p>\r\n', 'Single', '<p>3675</p>\r\n', '<p>3805</p>\r\n', '<p>4095</p>\r\n', '<p>4255</p>\r\n', 'C', 1, 2),
(74, 15, 13, 20, '<p>One pan can fry 2 pieces of meat at one time. Every piece of meat needs two minutes to be cooked (one minute for each side). Using only one pan, find the least possible time required to cook 2000 pieces of meet. <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', 'Single', '<p>500 minutes</p>\r\n', '<p>1000 minutes</p>\r\n', '<p>2000 minutes</p>\r\n', '<p>4000 minutes</p>\r\n', 'C', 1, 2),
(75, 15, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-006.jpg" style="width: 280px; height: 197px;" type="image" /></p>\r\n\r\n<p>Lines AC and BD meet at point O. Given that OA = 40 cm, OB = 50 cm, OC = 60 cm and OD = 75 cm, find the ratio of the area of triangle AOD to the area of triangle BOC.</p>\r\n', 'Single', '<p>1:1</p>\r\n', '<p>1:2</p>\r\n', '<p>1:3</p>\r\n', '<p>1:4</p>\r\n', 'B', 1, 2),
(76, 15, 13, 20, '<p>A bag contains identical sized balls of different colours : 10 red, 9 white, 7 yellow, 2 blue and 1 black. Without looking into the bag, Paul takes out the balls one by one from it. What is the least number of balls Paul must take out to ensure that at least 3 balls have the same colour?</p>\r\n', 'Single', '<p>9</p>\r\n', '<p>10</p>\r\n', '<p>11</p>\r\n', '<p>12</p>\r\n', 'A', 1, 2),
(77, 15, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-007.jpg" style="width: 240px; height: 46px;" type="image" /></p>\r\n', 'Single', '<p>10/3</p>\r\n', '<p>11/3</p>\r\n', '<p>7/3</p>\r\n', '<p>5/3</p>\r\n', 'D', 1, 2),
(78, 15, 13, 20, '<p>If the base of a triangle is increased by 10% while its height decreased by 10%, find the area of the new triangle as a percentage of the original one.</p>\r\n', 'Single', '<p>80%</p>\r\n', '<p>120%</p>\r\n', '<p>87%</p>\r\n', '<p>99%</p>\r\n', 'A', 1, 2),
(79, 15, 13, 20, '<p>A box of chocolate has gone missing from the refrigerator. The suspects have been reduced to 4 children. Only one of them is telling the truth.</p>\r\n\r\n<p>A : &#39;I did not take the chocolate.&#39;<br />\r\nB : &#39;A is lying.&#39;<br />\r\nC : &#39;B is lying.&#39;<br />\r\nD : &#39;B took the chocolate.&#39;<br />\r\nWho took the chocolate ?</p>\r\n', 'Single', '<p>A</p>\r\n', '<p>B</p>\r\n', '<p>C</p>\r\n', '<p>D</p>\r\n', 'B', 1, 2),
(80, 15, 13, 20, '<p>How many digits are there before the hundredth 9 in the following number<br />\r\n9797797779777797777797777779&hellip;&hellip;.?</p>\r\n', 'Single', '<p>4059</p>\r\n', '<p>5049</p>\r\n', '<p>5273</p>\r\n', '<p>5534</p>\r\n', 'B', 1, 2),
(81, 16, 13, 20, '<p>A particular month has 5 Tuesdays. The first and the last day of the month are not Tuesday. What day is the last day of the month?</p>\r\n', 'Single', '<p>Sunday</p>\r\n', '<p>Monday</p>\r\n', '<p>Wednesday</p>\r\n', '<p>Thursday</p>\r\n', 'C', 1, 2),
(82, 16, 13, 20, '<p>How many rectangles are there in the diagram?</p>\r\n\r\n<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-008.jpg" style="width: 157px; height: 235px;" type="image" /></p>\r\n', 'Single', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', '<p>32</p>\r\n', 'C', 1, 2),
(83, 16, 13, 20, '<p>A piece of pasture grows at a constant rate everyday.<br />\r\n200 sheep will eat up the grass in 100 days.<br />\r\n150 sheep will eat up the grass in 150 days.<br />\r\nHow many days does it take for 100 sheep to eat up the grass?</p>\r\n', 'Single', '<p>300 days</p>\r\n', '<p>320 days</p>\r\n', '<p>340 days</p>\r\n', '<p>360 days</p>\r\n', 'A', 1, 2),
(84, 16, 13, 20, '<p>The digits 3, 4, 5 and 7 can form twenty four different four digit numbers. Find the average of these twenty four numbers.</p>\r\n', 'Single', '<p>5867.75</p>\r\n', '<p>4537.50</p>\r\n', '<p><strong>&nbsp;</strong>3548.35</p>\r\n', '<p>5277.25</p>\r\n', 'D', 1, 2),
(85, 16, 13, 20, '<p>Let ABCD be a square with each side of length 1 unit. If M is the intersection of its diagonals and P is the midpoint of MB, what is the square of the length of AP?</p>\r\n', 'Single', '<p>3/4</p>\r\n', '<p>5/8</p>\r\n', '<p>1/2</p>\r\n', '<p>3/8</p>\r\n', 'B', 1, 2),
(86, 16, 13, 20, '<p>There are buses travelling to and fro between Station A and Station B. The buses leave the stations at regular interval and a bus will meet another bus coming in the opposite direction every 6 minutes. Peter starts cycling from A towards B at the same time Jane starts cycling from B towards A. Peter and Jane will meet a bus coming in the opposite direction every 7 and 8 minutes respectively. After 56 minutes of cycling on the road, they meet each other. Find the time taken by a bus to travel from A to B.</p>\r\n', 'Single', '<p><strong>&nbsp;</strong>32 minutes</p>\r\n', '<p>46 minutes</p>\r\n', '<p>68 minutes</p>\r\n', '<p><strong>&nbsp;</strong>84 minutes</p>\r\n', 'C', 1, 2),
(87, 16, 13, 20, '<p>Which number leaves a remainder of 1 when divided by 5 and also when divided by 7?</p>\r\n', 'Single', '<p>671</p>\r\n', '<p>761</p>\r\n', '<p>176</p>\r\n', '<p>716</p>\r\n', 'C', 1, 2),
(88, 16, 13, 20, '<p>(2 x 1/100) + (3 x 1/1000) + (7 x 1/10,000) = ?</p>\r\n', 'Single', '<p>2.37</p>\r\n', '<p><strong>&nbsp;</strong>0.237</p>\r\n', '<p>0.0237</p>\r\n', '<p><strong>&nbsp;</strong>0.00237</p>\r\n', 'C', 1, 2),
(89, 16, 13, 20, '<p>If the pattern of the first six letters in CIRCUSCIRCUS&hellip; continues, then the pattern&rsquo;s 500th letter is?</p>\r\n', 'Single', '<p>C</p>\r\n', '<p>I</p>\r\n', '<p>R</p>\r\n', '<p>S</p>\r\n', 'B', 1, 2),
(90, 16, 13, 20, '<p>The digits 1986 are written in order from largest to smallest. Next they&rsquo;re written in order from smallest to largest. What number is halfway between these two numbers?</p>\r\n', 'Single', '<p>4535</p>\r\n', '<p>5775</p>\r\n', '<p>5865</p>\r\n', '<p>6035</p>\r\n', 'B', 1, 2),
(91, 16, 13, 20, '<p>A circus clown buys balloons at $1.44 per dozen and sells the balloons for 20 cents each. What will be his profit on a day when he buys and sells 20 dozen balloons?</p>\r\n', 'Single', '<p>$17.40</p>\r\n', '<p>$18.60</p>\r\n', '<p><strong>&nbsp;</strong>$19.20</p>\r\n', '<p>$20.60</p>\r\n', 'C', 1, 2),
(92, 16, 13, 20, '<p>Today is Saturday, May 5, 2001. One year from today will be May 5, 2002. What day of the week will that be?</p>\r\n', 'Single', '<p>Sunday</p>\r\n', '<p>Monday</p>\r\n', '<p>Tuesday</p>\r\n', '<p>Wednesday</p>\r\n', 'A', 1, 2),
(93, 16, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-009.jpg" style="width: 75px; height: 106px;" type="image" /></p>\r\n\r\n<p>In the diagram, there is an equilateral triangle and a square. If the perimeter of the triangle is 24 m, find the area of the square.</p>\r\n', 'Single', '<p><strong>&nbsp;</strong>25 m2</p>\r\n', '<p><strong>&nbsp;</strong>36 m2</p>\r\n', '<p><strong>&nbsp;</strong>49 m2</p>\r\n', '<p>64 m2</p>\r\n', 'C', 1, 2),
(94, 16, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-010.jpg" style="height: 97px; width: 95px;" type="image" /></p>\r\n\r\n<p>Square ABCD has a perimeter of 8 cm. If a circle is inscribed in the square as shown, what is the area of the circle?</p>\r\n', 'Single', '<p>1.57 m2</p>\r\n', '<p>3.14 m2</p>\r\n', '<p><strong>&nbsp;</strong>4.71 m2</p>\r\n', '<p>6.28 m2</p>\r\n', 'B', 1, 2),
(95, 16, 13, 20, '<p>I was paid $2.80 on the first day, and my salary doubled each day thereafter. I earned a total of $714. How many days did I work?</p>\r\n', 'Single', '<p>8</p>\r\n', '<p>10</p>\r\n', '<p>12</p>\r\n', '<p>14</p>\r\n', 'A', 1, 2),
(96, 16, 13, 20, '<p>In a camel herd with 80 legs, half the camels have one hump and half have two. How many humps are there in this herd? <img alt="" src="https://raffles.guru/image/blank.gif" style="height:16px; width:16px" /></p>\r\n', 'Single', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'D', 1, 2),
(97, 16, 13, 20, '<p>Katie and Jim play a game with 2 six sided number cubes numbered 1 through 6. When the number cubes are rolled, Katie gets a point if the sum of the two is even and Jim gets a point if the product is even. What is the likelihood that on one roll of both cubes both Katie and Jim get a point?</p>\r\n', 'Single', '<p>1/2</p>\r\n', '<p>1/3</p>\r\n', '<p>1/4</p>\r\n', '<p>1/5</p>\r\n', 'C', 1, 2),
(98, 16, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-011.jpg" style="width: 187px; height: 91px;" type="image" /></p>\r\n\r\n<p>Pictured is a sequence of growing chairs. The first chair is made of 6 squares. How many more squares are in the 8th chair in the sequence than in the first?</p>\r\n', 'Single', '<p>24</p>\r\n', '<p>26</p>\r\n', '<p>28</p>\r\n', '<p>30</p>\r\n', 'C', 1, 2),
(99, 16, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-012.jpg" style="height: 55px; width: 249px;" type="image" /></p>\r\n\r\n<p>A dart hits the dartboard shown at random. Find the probability of the dart landing in the shaded region.</p>\r\n', 'Single', '<p>1/2</p>\r\n', '<p>1/3</p>\r\n', '<p>1/4</p>\r\n', '<p>1/5</p>\r\n', 'B', 1, 2),
(100, 16, 13, 20, '<p>The colored stripes pattern Red, Blue, Blue, Green, Yellow repeats on wall paper. What will be the color of the 32nd stripe?</p>\r\n', 'Single', '<p>Red</p>\r\n', '<p>Blue</p>\r\n', '<p>Green</p>\r\n', '<p>Yellow</p>\r\n', 'B', 1, 2),
(101, 16, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-013.jpg" style="width: 358px; height: 167px;" type="image" /></p>\r\n\r\n<p>Find the measure of angle ABC as shown in the following figure, where AC = CB = CD, and the measure of angle ADC is 29 degrees.</p>\r\n', 'Single', '<p>58 degree</p>\r\n', '<p><strong>&nbsp;</strong>45 degree</p>\r\n', '<p>56 degree</p>\r\n', '<p><strong>&nbsp;</strong>61 degree</p>\r\n', 'C', 1, 2),
(102, 16, 13, 20, '<p>In 2008, the price of car A is $20,000 and car B is $25,000. Each year, the price of car A decreases by 5% and that of car B decreases by 10%. In what year will car B be cheaper than car A?</p>\r\n', 'Single', '<p>2011</p>\r\n', '<p>2012</p>\r\n', '<p>2013</p>\r\n', '<p>2014</p>\r\n', 'C', 1, 2),
(103, 16, 13, 20, '<p>The average of 10 consecutive odd numbers is 120. What is the average of the 5 largest numbers?</p>\r\n', 'Single', '<p>100</p>\r\n', '<p>105</p>\r\n', '<p>115</p>\r\n', '<p>125</p>\r\n', 'D', 1, 2),
(104, 16, 13, 20, '<p>Peter usually travels from town P to town Q in eight hours. One day, he increased his average speed by 5km per hour so that he arrived 20 minutes earlier. Find his usual average speed, in km per hour.</p>\r\n', 'Single', '<p>110 km/h</p>\r\n', '<p>115 km/h</p>\r\n', '<p>125 km/h</p>\r\n', '<p><strong>&nbsp;</strong>135 km/h</p>\r\n', 'B', 1, 2),
(105, 16, 13, 20, '<p><input alt="" src="http://textusintentio.com/product/oes-v2/images/extraimage/MO-014.jpg" type="image" /></p>\r\n\r\n<p>In the multiplication example above, all number from 1 through 9 have been used once, and once only. Three of the numbers are given. What is the three digit number on top?</p>\r\n', 'Single', '<p>279</p>\r\n', '<p>297</p>\r\n', '<p>246</p>\r\n', '<p>264</p>\r\n', 'B', 1, 2),
(106, 17, 13, 20, '<p>1+2+3=?</p>\r\n', 'Multiple', '<p>6</p>\r\n', '<p>1</p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', 'A---', 1, 2),
(107, 17, 13, 20, '<p>4*4*4=?</p>\r\n', 'Multiple', '<p>64</p>\r\n', '<p>16*4</p>\r\n', '<p>16</p>\r\n', '<p>4</p>\r\n', 'A-B--', 1, 2),
(108, 17, 13, 20, '<p>4+4+10=?</p>\r\n', 'Multiple', '<p>14</p>\r\n', '<p>10+1+3</p>\r\n', '<p>15</p>\r\n', '<p>17</p>\r\n', 'A-B--', 1, 2),
(109, 17, 13, 20, '<p><span class="math-tex">\\(0.4\\hat{i}+0.8\\hat{j}+c\\hat{k}\\)</span> <span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px">represents a unit vector when c is</span></p>\r\n', 'Single', '<p><span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px">-0.2</span></p>\r\n', '<p><span class="math-tex">\\( \\sqrt{0.2}\\)</span></p>\r\n', '<p><span class="math-tex">\\(\\sqrt{0.8}\\)</span></p>\r\n', '<p>0</p>\r\n', 'C', 1, 2),
(110, 16, 13, 20, '<p><span class="math-tex">\\( \\cos^2 \\theta - \\sin^2 \\theta=\\)</span></p>\r\n', 'Single', '<p><span class="math-tex">\\(\\cos (2\\theta)\\)</span></p>\r\n', '<p>1</p>\r\n', '<p><span class="math-tex">\\(\\sin^2 \\theta\\)</span></p>\r\n', '<p><span class="math-tex">\\(\\cos^2 \\theta\\)</span></p>\r\n', 'A', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `center_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `student_father` varchar(255) NOT NULL,
  `student_mother` varchar(255) NOT NULL,
  `student_dob` varchar(255) NOT NULL,
  `student_address` text NOT NULL,
  `student_phone` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_md5` varchar(255) NOT NULL,
  `student_status` int(11) NOT NULL DEFAULT '1',
  `studentlogo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `category_id`, `subcategory_id`, `subject_id`, `center_id`, `b_id`, `student_name`, `student_father`, `student_mother`, `student_dob`, `student_address`, `student_phone`, `student_email`, `user_name`, `password`, `password_md5`, `student_status`, `studentlogo`) VALUES
(1, 1, 0, 0, 3, 1, 'Amit kumar garg', 'S C Garg', 'Snehlata garg', '12-08-2014', 'gdfsgdsfgdsfgdfsg', '8527585135', 'info@textusintentio.com', 'amitkumargarg', '123456789', 'Fj/fy8one4NYxC7vlsm0jQ==', 1, 'bhavshant.jpg'),
(4, 13, 0, 0, 3, 2, 'Manoj garg', 'fasdfasdfas', 'gsdfgdsfgsdfgdsg', '13-01-2015', 'sdfgsdfg fdgdsfg<br>', '456234532455', 'info@samaxtechnologie.com', '', '12345678', 'Fj/fy8one4M=', 1, ''),
(5, 13, 0, 0, 3, 3, 'Manmohan Singh', 'Siddhu Singh', 'Man preet Kaur', '17-07-1980', '7 race course, Majnu ka tila,<br>Bidhansabha road<br>Delhi<br>', '0120456786', 'manmohan@gmail.com', '', '12345678', 'Fj/fy8one4M=', 1, ''),
(6, 13, 0, 0, 3, 4, 'ram singh', 'manmohan singh', 'sneh singh', '25-07-1985', 'SG-99 ram nagar new delhi<br>', '01123456789', 'ram@rediffmail.com', '', '12345678', 'Fj/fy8one4M=', 1, ''),
(7, 13, 0, 0, 3, 1, 'Demo Student', 'Demo Father', 'Demo Mother', '14-02-1989', 'Demo studern<br>City:XYZ<br>', '1234567890', 'student@demo.com', '', 'demo123!', 'LiRi61RYGFw=', 1, ''),
(8, 1, 0, 0, 3, 2, 'Monika', 'DK GARG', 'Demo Mother', '12-06-1990', 'dasfas safa<br>fasdf<br>asd<br>f<br>as<br>df<br>as<br>', '0120456786', 'reliable@demo.com', '', '12345678', 'Fj/fy8one4M=', 1, ''),
(9, 13, 0, 0, 3, 5, 'asdfg', 'gsdfgsdfg', 'fgsdfgsdfg', '21-04-2015', 'gsdf gsfdgdsfg<br>', '646456456', 'gkhanjan@gmail.com', '', '71w3%Ze6hw', 'P3/uhUWrIviewZMz6w7M7Q==', 1, ''),
(10, 4, 0, 0, 3, 2, 'f', 'f', 'f', '07-03-2018', 'fffff', '082536545555', 'f@gmail.com', '', '123456', 'q0RtrTrIYsI=', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `s_c_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`s_c_id`, `category_id`, `subcategory_name`, `subcategory_status`) VALUES
(2, 1, 'Computer Science', 1),
(3, 1, 'Electrical', 1),
(4, 4, 'Computer Science', 1),
(5, 1, 'Civil', 1),
(6, 1, 'Information Tehnologie', 1),
(7, 2, 'Human Resources', 1),
(8, 2, 'Finance', 1),
(9, 2, 'Administrations', 1),
(10, 4, 'Civil', 1),
(14, 13, 'Computer', 1),
(15, 1, 'Textus Intentio', 1),
(20, 1, ' Math olympiad questions', 1),
(21, 2, 'ghj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `s_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`s_id`, `category_id`, `subcategory_id`, `subject_name`, `subject_status`) VALUES
(15, 13, 20, 'Rational Numbers1', 1),
(16, 13, 20, 'Rational Numbers2', 1),
(17, 13, 20, 'math215', 0),
(18, 13, 20, 'asdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `userpassword_md5` varchar(255) NOT NULL,
  `user_status` int(2) NOT NULL DEFAULT '1',
  `area_permistion` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `useremail`, `userpassword`, `userpassword_md5`, `user_status`, `area_permistion`) VALUES
(11, 'Demo Admin', 'admin@demo.com', 'demo123!', 'LiRi61RYGFw=', 1, '2,3,4,5,6,7,8,9,10,11,12,13,14,15,16'),
(12, 'admin', 'admin@gmail.com', 'admin', 'admin', 1, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `center`
--
ALTER TABLE `center`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_answer`
--
ALTER TABLE `main_answer`
  ADD PRIMARY KEY (`m_a_id`);

--
-- Indexes for table `main_exam_status`
--
ALTER TABLE `main_exam_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `noticecenter`
--
ALTER TABLE `noticecenter`
  ADD PRIMARY KEY (`nc_id`);

--
-- Indexes for table `noticestudent`
--
ALTER TABLE `noticestudent`
  ADD PRIMARY KEY (`ns_id`);

--
-- Indexes for table `practice_answer`
--
ALTER TABLE `practice_answer`
  ADD PRIMARY KEY (`p_a_id`);

--
-- Indexes for table `practice_exam`
--
ALTER TABLE `practice_exam`
  ADD PRIMARY KEY (`p_e_id`);

--
-- Indexes for table `practice_exam_status`
--
ALTER TABLE `practice_exam_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practice_question`
--
ALTER TABLE `practice_question`
  ADD PRIMARY KEY (`p_q_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`s_c_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `center`
--
ALTER TABLE `center`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `main_answer`
--
ALTER TABLE `main_answer`
  MODIFY `m_a_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `main_exam_status`
--
ALTER TABLE `main_exam_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `noticecenter`
--
ALTER TABLE `noticecenter`
  MODIFY `nc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `noticestudent`
--
ALTER TABLE `noticestudent`
  MODIFY `ns_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1018;
--
-- AUTO_INCREMENT for table `practice_answer`
--
ALTER TABLE `practice_answer`
  MODIFY `p_a_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `practice_exam`
--
ALTER TABLE `practice_exam`
  MODIFY `p_e_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `practice_exam_status`
--
ALTER TABLE `practice_exam_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `practice_question`
--
ALTER TABLE `practice_question`
  MODIFY `p_q_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `s_c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;--
-- Database: `buatan`
--
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'post pertama', 'post-pertama', 'ini adalah post pertama'),
(2, 'post kedua', 'post-kedua', 'ini adalah post kedua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`), ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `db_apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_obat`
--

CREATE TABLE IF NOT EXISTS `data_obat` (
  `id_obat` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `harga` float(10,0) DEFAULT NULL,
  `stock` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_obat`
--

INSERT INTO `data_obat` (`id_obat`, `nama`, `jenis`, `harga`, `stock`) VALUES
('KB01', 'hasriani', 'Sakit kepala', 5000, '40'),
('KB02', 'nani', 'bodrex', 3000, '43'),
('KB03', 'dian', 'amoxilin', 5000, '30');

-- --------------------------------------------------------

--
-- Table structure for table `data_obat_hapus`
--

CREATE TABLE IF NOT EXISTS `data_obat_hapus` (
  `id_obat` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `harga` float(10,0) DEFAULT NULL,
  `stock` varchar(20) NOT NULL,
  `tgl_perubahan` datetime DEFAULT NULL,
  `nama_admin` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_obat_hapus`
--

INSERT INTO `data_obat_hapus` (`id_obat`, `nama`, `jenis`, `harga`, `stock`, `tgl_perubahan`, `nama_admin`) VALUES
('K01', 'Hasriani', 'Kapsul', 5000, '3', '2017-12-09 00:00:00', 'Ayu'),
('K02', 'Hardianti', 'Tablet', 10000, '3', '2017-11-09 00:00:00', 'Dedi'),
('K03', 'Wiwik', 'Tablet', 5000, '2', '2017-10-07 00:00:00', 'Niar'),
('K04', 'Hasniar', 'Kapsul', 5000, '4', '2017-08-07 00:00:00', 'Yuni'),
('K05', 'Kasma', 'Tablet', 10000, '2', '2017-08-05 00:00:00', 'Neneng');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_karyawan` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `alamat`, `kota`, `status`, `no_telp`) VALUES
('df23', 'hardianti', 'abdesir', 'maros', 'mahasiswa', '081234444150'),
('gh01', 'hasriani', 'racing centre', 'sengkang', 'mahasiswa', '083451244150'),
('gh32', 'wiwik', 'gowa', 'makassar', 'mahasiswa', '081234444150');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `jenis_kelamin`, `pekerjaan`) VALUES
('AG11', 'hasriani', 'racing centre', 'P', 'mahasiswa'),
('AG12', 'nani', 'rajawali', 'P', 'mahasiswa'),
('AG13', 'hardianti', 'abdesir', 'P', 'mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `id_karyawan` varchar(10) NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `total` float(15,0) DEFAULT NULL,
  `pajak` varchar(10) NOT NULL,
  `total_bayar` float(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_pelanggan`, `id_karyawan`, `id_obat`, `jumlah`, `total`, `pajak`, `total_bayar`) VALUES
('pl01', 'df23', 'KB01', '4', 20000, '0', 0),
('PL02', 'gh01', 'KB02', '5', 30000, '0', 0),
('PL03', 'gh32', 'KB03', '3', 50000, '0', 0),
('PL04', 'gh01', 'KB02', '5', 30000, '0', 0),
('PL05', 'gh01', 'KB02', '2', 20000, '0', 0);

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `penjualan`
 FOR EACH ROW BEGIN
UPDATE data_buku SET stock = stock + OLD.jumlah
WHERE id_obat = old.id_obat;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `table_penjualan_after_insert` AFTER INSERT ON `penjualan`
 FOR EACH ROW BEGIN
UPDATE data_obat SET stock =stock - NEW.jumlah
WHERE id_obat = NEW.id_obat;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `kota`, `no_telp`) VALUES
('Ak01', 'hasriani', 'racing centre', 'sengkang', '085145444150'),
('GH02', 'syurah', 'antang', 'makassar', '085145444150'),
('KL03', 'rasma', 'pettarani', 'pinrang', '085145444150');

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE IF NOT EXISTS `supply` (
  `no` varchar(10) NOT NULL,
  `id_karyawan` varchar(10) NOT NULL,
  `id_supplier` varchar(10) NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `jumlah_obat` varchar(10) NOT NULL,
  `total` float(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`no`, `id_karyawan`, `id_supplier`, `id_obat`, `jumlah_obat`, `total`) VALUES
('AB01', 'df23', 'GH02', 'KB01', '5', 0),
('AB02', 'gh01', 'Ak01', 'KB02', '3', 0),
('AB03', 'gh32', 'KL03', 'KB03', '2', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_obat`
--
ALTER TABLE `data_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `data_obat_hapus`
--
ALTER TABLE `data_obat_hapus`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_pelanggan`), ADD KEY `FK_id_obat` (`id_obat`), ADD KEY `FK_id_karyawan1` (`id_karyawan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`id_karyawan`), ADD KEY `FK_id_supplier` (`id_supplier`), ADD KEY `FK_id_obat1` (`id_obat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
ADD CONSTRAINT `FK_id_karyawan1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_id_obat` FOREIGN KEY (`id_obat`) REFERENCES `data_obat` (`id_obat`);

--
-- Constraints for table `supply`
--
ALTER TABLE `supply`
ADD CONSTRAINT `FK_id_karyawan` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
ADD CONSTRAINT `FK_id_obat1` FOREIGN KEY (`id_obat`) REFERENCES `data_obat` (`id_obat`) ON UPDATE CASCADE,
ADD CONSTRAINT `FK_id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);
--
-- Database: `db_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` varchar(50) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `username`, `password`) VALUES
('adm1', 'admin1', 'admin2', 'admin1'),
('adm2', 'admin2', 'admin2', 'admin2'),
('user1', 'user1', 'user1', 'user1'),
('user2', 'user2', 'user2', 'user2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE IF NOT EXISTS `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL DEFAULT '',
  `id_spesialis` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) DEFAULT NULL,
  `jenkel` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `id_spesialis`, `nama`, `jenkel`) VALUES
('dt01', 'spanak', 'wiwik', 'P'),
('dt02', 'spbedah', 'Maulana', 'L'),
('dt03', 'spparu', 'awahyuni', 'P'),
('dt04', 'spjp', 'Indra', 'L'),
('dt05', 'spsaraf', 'hasniar', 'P'),
('dt06', 'spmata', 'titi', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE IF NOT EXISTS `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL DEFAULT '',
  `no_rekam_medis` varchar(50) NOT NULL DEFAULT '',
  `id_dokter` varchar(50) NOT NULL DEFAULT '',
  `nama_pasien` varchar(100) DEFAULT NULL,
  `jenkel` char(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_penyakit` varchar(50) NOT NULL DEFAULT '',
  `usia` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `no_rekam_medis`, `id_dokter`, `nama_pasien`, `jenkel`, `tgl_lahir`, `id_penyakit`, `usia`, `alamat`) VALUES
('ps01', 'norekm1', 'dt01', 'jaya', 'L', '1994-06-12', 'pk01', '23', 'Jl. mannuruki'),
('ps02', 'norekm2', 'dt03', 'hajrah', 'P', '2004-06-24', 'pk01', '13', 'Alauddin'),
('ps03', 'norekm3', 'dt03', 'indah', 'P', '1990-06-13', 'pk03', '27', 'samata gowa'),
('ps04', 'norekm4', 'dt04', 'dian', 'P', '1994-03-09', 'pk05', '23', 'antang'),
('ps05', 'norekm5', 'dt02', 'ita', 'P', '1990-07-12', 'pk02', '27', 'barombong');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE IF NOT EXISTS `tb_penyakit` (
  `id_penyakit` varchar(50) NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `nama_penyakit` enum('konversi gigi','Pasang behel','Pasang gigi palsu','Pembersihan karang gigi','Cabut gigi') DEFAULT NULL,
  `biaya` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `id_dokter`, `nama_penyakit`, `biaya`) VALUES
('pk01', 'dt01', '', '200.000'),
('pk02', 'dt02', '', '900.000'),
('pk03', 'dt03', '', '1.200.000'),
('pk04', 'dt04', '', '970.000'),
('pk05', 'dt05', '', '590.000'),
('pk06', 'dt06', '', '400.000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spesialis`
--

CREATE TABLE IF NOT EXISTS `tb_spesialis` (
  `id_spesialis` varchar(50) NOT NULL,
  `spesialis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spesialis`
--

INSERT INTO `tb_spesialis` (`id_spesialis`, `spesialis`) VALUES
('spanak', 'anak'),
('spbedah', 'bedah'),
('spjp', 'jantung dan pembuluh'),
('spmata', 'mata'),
('spparu', 'paru'),
('spsaraf', 'saraf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_pembayaran` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_penyakit` varchar(50) NOT NULL,
  `jumlah_pembayaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_pembayaran`, `id_pasien`, `id_penyakit`, `jumlah_pembayaran`) VALUES
('byr01', 'ps01', 'pk01', '200.000'),
('byr02', 'ps05', 'pk05', '590.000'),
('byr03', 'ps02', 'pk02', '900.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`,`id_spesialis`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`,`no_rekam_medis`,`id_dokter`,`id_penyakit`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`,`id_dokter`);

--
-- Indexes for table `tb_spesialis`
--
ALTER TABLE `tb_spesialis`
  ADD PRIMARY KEY (`id_spesialis`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_pembayaran`,`id_pasien`,`id_penyakit`), ADD KEY `transaksi` (`id_pasien`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
ADD CONSTRAINT `transaksi` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`);
--
-- Database: `db_poli_gigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_diagnosa`
--

CREATE TABLE IF NOT EXISTS `detail_diagnosa` (
  `no` int(11) NOT NULL,
  `id_pemeriksaan` varchar(50) NOT NULL DEFAULT '',
  `kode_diagnosa` int(11) NOT NULL DEFAULT '0',
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pelayanan`
--

CREATE TABLE IF NOT EXISTS `detail_pelayanan` (
  `No` int(11) NOT NULL,
  `id_pemeriksaan` int(11) NOT NULL DEFAULT '0',
  `gigi` enum('Seri atas kanan','Seri atas kiri','Seri bawah kanan','Seri bawah kiri','Geraham atas kanan','Geraham atas kiri','Geraham bawah kanan','Geraham bawah kiri','Taring atas kanan','Taring atas kiri','Taring bawah kanan','Taring bawah kiri') DEFAULT NULL,
  `kode_pelayanan` int(11) NOT NULL DEFAULT '0',
  `biaya` int(11) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_diagnosa`
--

CREATE TABLE IF NOT EXISTS `file_diagnosa` (
  `No` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_pasien`
--

CREATE TABLE IF NOT EXISTS `file_pasien` (
  `registrasi` varchar(50) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenkel` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kode_status` enum('Umum','Karyawan Poltekes','Mahasiswa Poltekes','') DEFAULT NULL,
  `pekerjaan` enum('PNS','Swasta','Pelajar/Mahasiswa') DEFAULT NULL,
  `keadaan_umum` varchar(50) DEFAULT NULL,
  `alergi` varchar(50) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_pegawai`
--

CREATE TABLE IF NOT EXISTS `file_pegawai` (
  `No` int(11) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` enum('Dokter gigi','Ahli gigi','Perawat') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_pelayanan`
--

CREATE TABLE IF NOT EXISTS `file_pelayanan` (
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_pemeriksaan`
--

CREATE TABLE IF NOT EXISTS `file_pemeriksaan` (
  `no` int(11) DEFAULT NULL,
  `id_pemeriksaan` varchar(50) DEFAULT NULL,
  `Registrasi` varchar(50) DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `anamnesa` varchar(11) DEFAULT NULL,
  `total_biaya` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `id_operator` varchar(50) DEFAULT NULL,
  `dokter` varchar(50) DEFAULT NULL,
  `ahli_gigi` varchar(50) DEFAULT NULL,
  `perawat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_pengeluaran`
--

CREATE TABLE IF NOT EXISTS `file_pengeluaran` (
  `no_faktur` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_rencana_perawatan`
--

CREATE TABLE IF NOT EXISTS `file_rencana_perawatan` (
  `No` int(11) NOT NULL,
  `id_pemeriksaan` varchar(50) DEFAULT NULL,
  `gigi` enum('Seri atas kanan','Seri atas kiri','Seri bawah kanan','Seri bawah kiri','Geraham atas kanan','Geraham atas kiri','Geraham bawah kanan','Geraham bawah kiri','Taring atas kanan','Taring atas kiri','Taring bawah kanan','Taring bawah kiri') DEFAULT NULL,
  `inspeksi` varchar(50) DEFAULT NULL,
  `sonde` varchar(50) DEFAULT NULL,
  `themis` varchar(50) DEFAULT NULL,
  `perk_drag_mob` enum('Perkusi/ketukan','Druk/tekanan','Mobility/derajat','kegoyangan gigi') DEFAULT NULL,
  `diagnosa` varchar(50) DEFAULT NULL,
  `rencana_perawatan` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_sirkulasi_inventaris`
--

CREATE TABLE IF NOT EXISTS `file_sirkulasi_inventaris` (
  `no` int(11) DEFAULT NULL,
  `id_sirkulasi` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kode_inventaris` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_status`
--

CREATE TABLE IF NOT EXISTS `file_status` (
  `no` int(11) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`) VALUES
(1, 'wiwik', '123456'),
(2, 'awahyuni', '382736'),
(3, 'ramna', '284728');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_diagnosa`
--
ALTER TABLE `detail_diagnosa`
  ADD PRIMARY KEY (`id_pemeriksaan`,`kode_diagnosa`);

--
-- Indexes for table `detail_pelayanan`
--
ALTER TABLE `detail_pelayanan`
  ADD PRIMARY KEY (`No`,`id_pemeriksaan`,`kode_pelayanan`,`biaya`);

--
-- Indexes for table `file_diagnosa`
--
ALTER TABLE `file_diagnosa`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);
--
-- Database: `db_poligigi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` varchar(50) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `username`, `password`) VALUES
('admin1', 'admin', 'admin', 'admin'),
('admin2', 'wiwik', 'wiwik', 'wiwik1234'),
('user1', 'user', 'user', 'user'),
('user2', 'ramna', 'ramna', 'ramna');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE IF NOT EXISTS `tb_dokter` (
  `id_dokter` varchar(50) NOT NULL DEFAULT '',
  `id_spesialis` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) DEFAULT NULL,
  `jenkel` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `id_spesialis`, `nama`, `jenkel`) VALUES
('dt02', 'spbedah', 'Maulana', 'L'),
('dt03', 'spparu', 'awahyuni', 'P'),
('dt04', 'spjp', 'Indra', 'L'),
('dt05', 'spsaraf', 'hasniar', 'P'),
('dt06', 'spmata', 'titi', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE IF NOT EXISTS `tb_pasien` (
  `id_pasien` varchar(50) NOT NULL DEFAULT '',
  `no_rekam_medis` varchar(50) NOT NULL DEFAULT '',
  `id_dokter` varchar(50) NOT NULL DEFAULT '',
  `nama_pasien` varchar(100) DEFAULT NULL,
  `jenkel` char(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_penyakit` varchar(50) NOT NULL DEFAULT '',
  `usia` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `no_rekam_medis`, `id_dokter`, `nama_pasien`, `jenkel`, `tgl_lahir`, `id_penyakit`, `usia`, `alamat`) VALUES
('ps01', 'norekm1', 'dt01', 'jaya', 'L', '1994-06-12', 'pk01', '23', 'Jl. mannuruki'),
('ps02', 'norekm2', 'dt03', 'hajrah', 'P', '2004-06-24', 'pk01', '13', 'Alauddin'),
('ps03', 'norekm3', 'dt03', 'indah', 'P', '1990-06-13', 'pk03', '27', 'samata gowa'),
('ps04', 'norekm4', 'dt04', 'dian', 'P', '1994-03-09', 'pk05', '23', 'antang'),
('ps05', 'norekm5', 'dt02', 'ita', 'P', '1990-07-12', 'pk02', '27', 'barombong');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE IF NOT EXISTS `tb_penyakit` (
  `id_penyakit` varchar(50) NOT NULL,
  `id_dokter` varchar(50) NOT NULL,
  `nama_penyakit` varchar(100) DEFAULT NULL,
  `biaya` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `id_dokter`, `nama_penyakit`, `biaya`) VALUES
('pk01', 'dt01', 'polio', '200.000'),
('pk02', 'dt02', 'bedah otak', '900.000'),
('pk03', 'dt03', 'jantung koroner', '1.200.000'),
('pk04', 'dt04', 'katarak', '970.000'),
('pk05', 'dt05', 'Bronkitis Kronis', '590.000'),
('pk06', 'dt06', 'Meningitis atau radang selaput', '400.000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spesialis`
--

CREATE TABLE IF NOT EXISTS `tb_spesialis` (
  `id_spesialis` varchar(50) NOT NULL,
  `spesialis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spesialis`
--

INSERT INTO `tb_spesialis` (`id_spesialis`, `spesialis`) VALUES
('spanak', 'anak'),
('spbedah', 'bedah'),
('spjp', 'jantung dan pembuluh'),
('spmata', 'mata'),
('spparu', 'paru'),
('spsaraf', 'saraf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_pembayaran` varchar(50) NOT NULL,
  `id_pasien` varchar(50) NOT NULL,
  `id_penyakit` varchar(50) NOT NULL,
  `jumlah_pembayaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_pembayaran`, `id_pasien`, `id_penyakit`, `jumlah_pembayaran`) VALUES
('byr01', 'ps01', 'pk01', '200.000'),
('byr02', 'ps05', 'pk05', '590.000'),
('byr03', 'ps02', 'pk02', '900.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`,`id_spesialis`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`,`no_rekam_medis`,`id_dokter`,`id_penyakit`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`,`id_dokter`);

--
-- Indexes for table `tb_spesialis`
--
ALTER TABLE `tb_spesialis`
  ADD PRIMARY KEY (`id_spesialis`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_pembayaran`,`id_pasien`,`id_penyakit`), ADD KEY `transaksi` (`id_pasien`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
ADD CONSTRAINT `transaksi` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`);
--
-- Database: `db_rumah_sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_askes`
--

CREATE TABLE IF NOT EXISTS `tb_askes` (
  `id_askes` varchar(20) NOT NULL,
  `nama_askes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE IF NOT EXISTS `tb_dokter` (
  `id_dokter` varchar(5) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `jenkel` enum('') DEFAULT NULL,
  `id_spesialis` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `nama`, `alamat`, `telp`, `jenkel`, `id_spesialis`) VALUES
('da01', 'wiwik', 'jl.abd dg sirua', '082395149760', '', 'sa01'),
('db02', 'Zanifa', 'Tentara pelajar', '082352447665', '', 'sb02'),
('dc03', 'Arisha', 'Tentara pelajar', '082398756245', '', 'sc03'),
('dd04', 'Awahyuni', 'unhas', '082325485760', '', 'sd04'),
('de05', 'Dianti', 'jl.abd dg sirua', '082395324580', '', 'se05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE IF NOT EXISTS `tb_pasien` (
  `id_dokter` varchar(100) NOT NULL,
  `no_pasien` varchar(10) NOT NULL,
  `no_rekam_medis` varchar(10) NOT NULL,
  `id_askes` varchar(20) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenkel` char(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `usia` int(30) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `penyakit` varchar(100) DEFAULT NULL,
  `kode_bangsal` varchar(100) DEFAULT NULL,
  `no_kamar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_dokter`, `no_pasien`, `no_rekam_medis`, `id_askes`, `nama_pasien`, `jenkel`, `tgl_lahir`, `usia`, `alamat`, `tgl_masuk`, `tgl_keluar`, `penyakit`, `kode_bangsal`, `no_kamar`) VALUES
('da01', 'p01', 'a1', 'ask', 'wiwik', 'P', '1995-01-01', 23, 'jl.sdjs', '2018-01-01', '2018-01-02', 'kurap', 'jksdh', '201'),
('da02', 'pa0', 'b2', 'akd', 'rita', 'P', '1996-01-03', 22, 'sdls', '2018-01-02', '2018-01-05', 'kudis', 'df', '202'),
('da03', 'pas1', 'c3', 'aod', 'alfi', 'L', '1993-06-24', 54, 's', '2018-01-01', '2018-01-03', 'diabetes', 'dfdg', '203'),
('da04', 'paw', 'd4', 'ui82', 'wida', 'P', '1996-01-01', 23, 'sdkjkjd', '2018-01-04', '2018-01-08', 'gula', 'dggse', '204'),
('da05', 'pwe', 'e5', '8udh', 'ahmad', 'L', '1996-01-01', 19, 'sdljs', '2018-01-01', '2018-01-04', 'hipertensi', 'g', '205'),
('da06', 'pww', 'f6', 'sdj3', 'jujur', 'L', '1993-01-04', 33, 'sdhsjk', '2018-01-01', '2018-01-04', 'gula', 'gsgrg', '206');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE IF NOT EXISTS `tb_pegawai` (
  `oid_pegawai` varchar(10) NOT NULL DEFAULT '0',
  `nama` varchar(50) DEFAULT NULL,
  `jenkel` enum('L','P') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `gaji` float(20,0) DEFAULT NULL,
  `golongan` enum('golongan 1','golongan 2','golongan 3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`oid_pegawai`, `nama`, `jenkel`, `tgl_lahir`, `kota`, `gaji`, `golongan`) VALUES
('pdfio', 'intan', 'P', '1890-01-29', 'makassar', 1800000, 'golongan 3'),
('pgw1', 'wiwik', 'P', '1995-07-05', 'Makassar', 1500000, 'golongan 1'),
('pgwa', 'ila', 'P', '1994-11-16', 'Luwu', 2000000, 'golongan 2'),
('pgwb', 'ifan', 'L', '1995-07-20', 'papua', 1600000, 'golongan 1'),
('pgwd', 'dian', 'P', '1996-01-22', 'maros', 650000, 'golongan 1'),
('pgwe', 'ahma', 'L', '1997-11-22', 'bontang', 740000, 'golongan 1'),
('pgwf', 'maulana', 'L', '1986-08-22', 'makassar', 500000, 'golongan 2'),
('psdjei', 'bayu', 'L', '1888-01-29', 'makassar', 2000000, 'golongan 3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE IF NOT EXISTS `tb_penyakit` (
  `id_penyakit` varchar(255) NOT NULL,
  `id_dokter` varchar(255) NOT NULL,
  `nama_penyakit` varchar(255) DEFAULT NULL,
  `biaya` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_spesialis`
--

CREATE TABLE IF NOT EXISTS `tb_spesialis` (
  `id_spesialis` char(5) NOT NULL,
  `spesialis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_askes`
--
ALTER TABLE `tb_askes`
  ADD PRIMARY KEY (`id_askes`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`,`id_spesialis`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_dokter`,`no_pasien`,`no_rekam_medis`,`id_askes`,`nama_pasien`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`oid_pegawai`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`,`id_dokter`);

--
-- Indexes for table `tb_spesialis`
--
ALTER TABLE `tb_spesialis`
  ADD PRIMARY KEY (`id_spesialis`);
--
-- Database: `db_sp`
--
--
-- Database: `db_tiens`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` varchar(10) NOT NULL,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
('AD01', 'wiwik', 'wiwik', 'wiwik'),
('AD02', 'hardianti', 'dian', 'dian'),
('AD03', 'awahyuni', 'yuni', 'yuni');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tbl_pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `tlp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `tlp`) VALUES
('PA01', 'Hasriani', 'Jl. Racing Center', '0823-0382-9373'),
('PA02', 'Emiyati', 'Jl. Yusuf Bauty', '0823-0425-0245'),
('PA03', 'Nani Astuti', 'Jl. Rajawali', '0813-4222-4352'),
('PA04', 'Triana', 'Gowa', '0832-2476-3875'),
('PA05', 'Mimi', 'Kayangan', '0897-9383-3628');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id_produk` varchar(10) NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `harga` double DEFAULT '0',
  `stok` int(11) DEFAULT '0',
  `id_supplier` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama_produk`, `kategori`, `harga`, `stok`, `id_supplier`) VALUES
('PRO1', 'Jiang Zhi Tea', 'Pembersih', 138000, 50, 'SUP01'),
('PRO2', 'Vitaline', 'Penyeimbang', 253000, 50, 'SUP03'),
('PRO3', 'Zinc', 'Penguat', 132000, 50, 'SUP04'),
('PRO4', 'Renuves', 'Pembersih', 317000, 50, 'SUP02'),
('PRO5', 'Chitin Chitosan', 'Penguat', 323000, 50, 'SUP01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk_hapus`
--

CREATE TABLE IF NOT EXISTS `tbl_produk_hapus` (
  `id_produk` varchar(10) NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `harga` double DEFAULT '0',
  `stok` int(11) DEFAULT '0',
  `id_supplier` varchar(10) DEFAULT NULL,
  `tgl_perubahan` datetime DEFAULT NULL,
  `nama_admin` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE IF NOT EXISTS `tbl_supplier` (
  `id_supplier` varchar(30) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `alamat`, `telepon`) VALUES
('SUP01', 'Maulana', 'Jl. AP pettarani', '0823-0273-0829'),
('SUP02', 'Ahmad', 'Jl. manggarupi', '0813-7733-8372'),
('SUP03', 'Ansar', 'Jl. batara gowa', '0823-2343-4552'),
('SUP04', 'Sari', 'Jl. abd dg sirua', '0813-4253-4245'),
('SUP05', 'Hajrah', 'Jl. mannuruki', '0853-0493-3456');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `id_produk` varchar(10) NOT NULL,
  `jumlah` int(11) DEFAULT '0',
  `harga` int(11) DEFAULT '0',
  `diskon` double DEFAULT '0',
  `total` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_transaksi`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `tbl_transaksi`
 FOR EACH ROW begin
     update tbl_produk set stok = stok + old.jumlah
     where id_produk = old.id_produk;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tbl_transaksi_after_insert` AFTER INSERT ON `tbl_transaksi`
 FOR EACH ROW BEGIN
     UPDATE tbl_produk SET stok = stok - NEW.jumlah
     WHERE id_produk = NEW.id_produk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tbl_transaksi_after_update` AFTER UPDATE ON `tbl_transaksi`
 FOR EACH ROW BEGIN
     UPDATE tbl_produk SET stok = stok - NEW.jumlah + OLD.jumlah
     WHERE id_produk = OLD.id_produk;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`), ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tbl_produk_hapus`
--
ALTER TABLE `tbl_produk_hapus`
  ADD PRIMARY KEY (`id_produk`), ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`), ADD KEY `fk_id_pelanggan` (`id_pelanggan`), ADD KEY `fk_id_produk` (`id_produk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
ADD CONSTRAINT `fk_id_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
ADD CONSTRAINT `fk_id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id_pelanggan`),
ADD CONSTRAINT `fk_id_produk` FOREIGN KEY (`id_produk`) REFERENCES `tbl_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_ukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nm_barang`, `hrg_satuan`, `stok`) VALUES
(2, 'Pelapis Jilbab', 5000, 50),
(3, 'Stoking', 15000, 50),
(4, 'Jilbab Maron ', 90000, 40),
(5, 'Jubah Hitam ', 157000, 40),
(7, 'Kaos kaki  ', 17000, 40);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `qty` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_barang`, `nm_barang`, `hrg_satuan`, `qty`, `status`) VALUES
(30, 7, 'Kaos kaki', 17000, 1, '1'),
(31, 7, 'Kaos kaki', 17000, 3, '1'),
(32, 7, 'Kaos kaki', 17000, 1, '1'),
(33, 7, 'Kaos kaki', 17000, 4, '1'),
(34, 7, 'Kaos kaki', 17000, 1, '1'),
(35, 5, 'Jubah Hitam', 157000, 1, '1'),
(36, 7, 'Kaos kaki', 17000, 1, '1'),
(37, 4, 'Jilbab Maron', 90000, 1, '1'),
(38, 7, 'Kaos kaki', 17000, 1, '1'),
(39, 9, 'Jilbab navi ', 12000, 1, '1'),
(40, 9, 'Jilbab navi  a ddd', 12000, 1, '1'),
(41, 9, 'Jilbab navi', 12000, 2, '1'),
(42, 7, 'Kaos kaki ', 17000, 1, '1'),
(43, 7, 'Kaos kaki ', 17000, 12, '1'),
(44, 5, 'Jubah Hitam ', 157000, 10, '1'),
(45, 4, 'Jilbab Maron ', 90000, 10, '1'),
(46, 7, 'Kaos kaki  ', 17000, 10, '0');

--
-- Triggers `tbl_transaksi`
--
DELIMITER $$
CREATE TRIGGER `triggerStok` AFTER INSERT ON `tbl_transaksi`
 FOR EACH ROW BEGIN
UPDATE tbl_barang SET stok = stok-NEW.qty
WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `qty` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi`, `id_barang`, `nm_barang`, `hrg_satuan`, `qty`, `status`) VALUES
(30, 7, 'Kaos kaki', 17000, 1, '1'),
(31, 7, 'Kaos kaki', 17000, 3, '1'),
(32, 7, 'Kaos kaki', 17000, 1, '1'),
(33, 7, 'Kaos kaki', 17000, 4, '1'),
(34, 7, 'Kaos kaki', 17000, 1, '1'),
(35, 5, 'Jubah Hitam', 157000, 1, '1'),
(36, 7, 'Kaos kaki', 17000, 1, '1'),
(37, 4, 'Jilbab Maron', 90000, 1, '1'),
(38, 7, 'Kaos kaki', 17000, 1, '1'),
(39, 9, 'Jilbab navi ', 12000, 1, '1'),
(40, 9, 'Jilbab navi  a ddd', 12000, 1, '1'),
(41, 9, 'Jilbab navi', 12000, 2, '1'),
(42, 7, 'Kaos kaki ', 17000, 1, '1'),
(43, 7, 'Kaos kaki ', 17000, 12, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;--
-- Database: `db_umb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_batch`
--

CREATE TABLE IF NOT EXISTS `tbl_batch` (
  `id_batch` int(11) NOT NULL,
  `nama_batch` varchar(30) NOT NULL,
  `waktu_batch` varchar(30) NOT NULL,
  `status` enum('1','0','','') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_batch`
--

INSERT INTO `tbl_batch` (`id_batch`, `nama_batch`, `waktu_batch`, `status`) VALUES
(1, 'Batch 1', '08.00 - 10.00', '1'),
(2, 'Batch 2', '10.00 - 12.00', '1'),
(3, 'Batch 3', '13.00 - 15.00', '1'),
(4, 'Batch 4', '15.00 - 17.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_akses`
--

CREATE TABLE IF NOT EXISTS `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(15, 1, 1),
(19, 1, 3),
(21, 2, 1),
(24, 1, 9),
(28, 2, 3),
(29, 2, 2),
(30, 1, 2),
(31, 3, 14),
(32, 3, 20),
(34, 3, 11),
(35, 1, 11),
(36, 1, 10),
(37, 1, 12),
(38, 1, 13),
(39, 1, 14),
(40, 1, 16),
(41, 1, 17),
(42, 1, 20),
(43, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

CREATE TABLE IF NOT EXISTS `tbl_home` (
  `id_home` int(11) NOT NULL,
  `total_peserta` int(11) NOT NULL,
  `konfir` int(11) NOT NULL,
  `blm_konfir` int(11) NOT NULL,
  `total_soal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home`
--

INSERT INTO `tbl_home` (`id_home`, `total_peserta`, `konfir`, `blm_konfir`, `total_soal`) VALUES
(1, 10, 1, 3, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE IF NOT EXISTS `tbl_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(40) NOT NULL,
  `status` enum('1','0','','') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`, `status`) VALUES
(1, '020', 'Teknik Informatika', '1'),
(3, '030', 'Sistem Komputer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tbl_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_mahasiswa` varchar(30) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `no_pendaftaran` varchar(15) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id_mahasiswa`, `username`, `password`, `nama_mahasiswa`, `asal_sekolah`, `no_pendaftaran`, `gambar`) VALUES
(6, 'srisri12', 'SDFEI', 'Sri Kurniyan Sari', 'MA Samata Gowa', '434', ''),
(7, 'nurjasila31', 'ila23', 'Nurjasila', 'SMA MAros', '123', ''),
(8, 'cit1241', '2729199', 'Cita Puspita', 'SMA 2 Bontobudu', '2352', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matauji`
--

CREATE TABLE IF NOT EXISTS `tbl_matauji` (
  `id_matauji` int(11) NOT NULL,
  `nama_matauji` varchar(35) NOT NULL,
  `aktif` enum('0','1') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matauji`
--

INSERT INTO `tbl_matauji` (`id_matauji`, `nama_matauji`, `aktif`) VALUES
(1, 'Verbal', '1'),
(2, 'Numerik', '1'),
(3, 'Logika', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'Kelola Menu', 'kelolamenu', 'fa fa-server', 12, 'y'),
(2, 'Pengguna Sistem', 'user', 'fa fa-user-o', 12, 'y'),
(3, 'Level Pengguna', 'userlevel', 'fa fa-users', 12, 'y'),
(9, 'Contoh Form', 'welcome/form', 'fa fa-id-card', 0, 'n'),
(10, 'Laporan Panitia', 'Panitia', 'fa fa-user', 24, 'y'),
(11, 'Peserta', 'Mahasiswa', 'fa fa-users', 0, 'n'),
(12, 'Pengaturan Sistem', 'Welcome', 'fa fa-cogs', 0, 'y'),
(13, 'Mata Ujian', 'Matauji', 'fa fa-folder', 23, 'y'),
(14, 'Soal', 'Soal', 'fa fa-folder', 23, 'y'),
(16, 'Setting Soal', 'Settingsoal', 'fa fa-folder', 23, 'y'),
(20, 'Laporan Hasil Ujian', 'Ujian', 'fa fa-archive', 24, 'y'),
(22, 'Home', 'Home', 'fa fa-home', 0, 'y'),
(23, 'Data Ujian', 'Ujian', 'fa fa-cog', 0, 'y'),
(24, 'Laporan', 'Laporan', 'fa fa-desktop', 0, 'y'),
(25, 'Laporan Peserta', 'Peserta', 'fa fa-user', 24, 'y'),
(26, 'Batch', 'Batch', 'fa fa-desktop', 23, 'y'),
(27, 'Jurusan', 'Jurusan', 'fa fa-desktop', 23, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panitia`
--

CREATE TABLE IF NOT EXISTS `tbl_panitia` (
  `id_panitia` int(11) NOT NULL,
  `nama_panitia` varchar(25) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_panitia`
--

INSERT INTO `tbl_panitia` (`id_panitia`, `nama_panitia`, `username`, `password`, `status`) VALUES
(2, 'Wiwik', 'Wiwikramna', '123456', '1'),
(3, 'Zanifa Arisha', 'Zanifa23', '123456', '1'),
(4, 'Awahyuni', 'Yuyhe31', '1234123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peserta`
--

CREATE TABLE IF NOT EXISTS `tbl_peserta` (
  `id_peserta` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_panitia` int(11) NOT NULL,
  `id_batch` int(11) NOT NULL,
  `nama_peserta` varchar(50) NOT NULL,
  `jenkel` enum('P','L') NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peserta`
--

INSERT INTO `tbl_peserta` (`id_peserta`, `id_jurusan`, `id_panitia`, `id_batch`, `nama_peserta`, `jenkel`, `nama_ayah`, `nama_ibu`, `tgl_lahir`, `alamat`, `no_tlp`, `email`, `username`, `password`, `status`) VALUES
(1, 1, 1, 1, 'WIwik', 'P', 'dkn', 'dkhfi', '1997-01-31', 'Jl. Abdesir', '082395149760', 'Wiwik@gmail.com', 'peserta1', 'peserta1', '1'),
(3, 2, 3, 2, 'jaya', 'L', 'ksd', 'lkj', '1998-01-01', 'abde', '0823917379191', 'iwwiwi@gmail.com', 'ieieiei', 'cdhcheohd', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settingsoal`
--

CREATE TABLE IF NOT EXISTS `tbl_settingsoal` (
  `id_set` int(11) NOT NULL,
  `jumlah_soal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settingsoal`
--

INSERT INTO `tbl_settingsoal` (`id_set`, `jumlah_soal`) VALUES
(1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE IF NOT EXISTS `tbl_soal` (
  `id_soal` int(11) NOT NULL,
  `id_matauji` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL,
  `pilihan_e` varchar(100) NOT NULL,
  `jawaban` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `id_matauji`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban`) VALUES
(5, 1, 'Mencitrakan', 'Memperbaiki', 'Mempersolek', 'Membangun nama baik', 'Menggambarkan', 'Menceritakan', 'D'),
(6, 1, 'Higienis', 'Bersih tanpa kuman', 'Berdasarkan standar kesehatan', 'Menurut Kedokteran', 'Standar kebersihan tinggi', 'Tidak kotor', 'B'),
(7, 1, 'Laik', 'Bagus sekali', 'Sepadan', 'Wajib', 'Patut', 'Harus', 'D'),
(8, 1, 'Repatrisi', 'Penangkapan ulang', 'Pemulihan nama baik', 'Pendalaman kembali', 'Pemulangan kembali', 'Perbaiki kembali', 'D'),
(9, 1, 'Kedap', 'Tidak retak', 'Celah', 'Lolos', 'Rapat', 'Tembus', 'D'),
(10, 1, 'Monogami', 'Perpisahan', 'Pemisahan', 'Kawin dengan satu jenis', 'Kawin silang', 'Kawin lebih dari satu', 'E'),
(11, 1, 'Tangguh', 'Kuat', 'Luwes', 'Fleksibel', 'Rapuh', 'Hebat', 'D'),
(12, 1, 'Konvergen', 'Bercabang', 'Memusat', 'Pusat', 'Arah', 'Cekung', 'B'),
(13, 1, 'Naratif', 'Bersifat Melukiskan', 'Bersifat Menggambarkan', 'Bersifat Mengarahkan', 'Bersifat Menceritakan', 'Bersifat Meng-imajinasikan', 'C'),
(14, 1, 'Sekuler', 'Agamis', 'Hedonis', 'Pemuja Dunia', 'Fana', 'Modern', 'A'),
(15, 3, 'Berapakah angka lanjutan dari deret angka berikut : 11 22 24 37....', '50', '51', '49', '48', '47', 'B'),
(16, 3, 'Berapakah angka lanjutan dari deret angka berikut : 80 70 61 53...', '45', '36', '66', '56', '46', 'E'),
(17, 3, 'Berapakah angka lanjutan dari deret bilangan ini 9 50 14 49 19 47 24 44...', '40 29', '29 41', '25 40', '29 39', '29 40', 'E'),
(18, 3, 'Berapakah angka lanjutan dari deret angka berikut : 7 8 7 12 7 16 7 20 Selanjutnya ...', '7 25', '7 20', '7 19', '6 24', '7 24', 'E'),
(19, 3, 'Berapakah angka lanjutan dari deret angka berikut : 39 2 38 9 36 17 33...', '26 29', '25 29', '24 30', '26 30', '27 29', 'A'),
(20, 3, 'Huruf lanjutan dari urutan ini adlah G I K M', 'R', 'Q', 'N', 'O', 'P', 'D'),
(21, 3, 'Huruf lanjutan dari urutan U S P L', 'D', 'E', 'F', 'G', 'H', 'D'),
(22, 3, 'Huruf lanjutan dari C Q E Q G Q I', 'Q K', 'Q J', 'Q I', 'Q M', 'Q N', 'A'),
(23, 3, 'Huruf lanjutan dari urutan ini K O S', 'V', 'T', 'W', 'X', 'Z', 'C'),
(24, 3, 'Huruf lanjutan dari urutan ini A I Q', 'U', 'T', 'X', 'Z', 'Y', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ujian`
--

CREATE TABLE IF NOT EXISTS `tbl_ujian` (
  `id_ujian` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `id_panitia` int(11) NOT NULL,
  `id_batch` int(11) NOT NULL,
  `jumlah_salah` int(11) NOT NULL,
  `jumlah_benar` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ujian`
--

INSERT INTO `tbl_ujian` (`id_ujian`, `id_peserta`, `id_panitia`, `id_batch`, `jumlah_salah`, `jumlah_benar`, `nilai`, `status`) VALUES
(1, 6, 0, 0, 0, 0, 50, '1'),
(2, 7, 0, 0, 0, 0, 80, '1'),
(3, 3, 0, 0, 0, 0, 74, ''),
(4, 8, 0, 0, 0, 0, 87, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_users` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(1, 'Nuris Akbar M.Kom', 'nuris.akbar@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', 'atomix_user31.png', 1, 'y'),
(3, 'Muhammad hafidz Muzaki', 'hafid@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', '7.png', 2, 'y'),
(7, 'wiwik', 'wiwikramna@gmail.com', '$2y$04$L4C0LJ9ZcFmhsPmjtJVkxOhL5XeGr7oMhxWTQftydbbQpmQZmxITO', 'download_(2).jpg', 1, 'y'),
(8, 'Mahasiswa', 'mahasiswa@gmail.com', '$2y$04$Tw6PnHRroHp1QHYOKgQnT.QFYF/gGKH17OrohlodWNx1nAPTCGCh6', '', 3, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE IF NOT EXISTS `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Panitia'),
(3, 'Peserta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_batch`
--
ALTER TABLE `tbl_batch`
  ADD PRIMARY KEY (`id_batch`);

--
-- Indexes for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`id_home`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tbl_matauji`
--
ALTER TABLE `tbl_matauji`
  ADD PRIMARY KEY (`id_matauji`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_panitia`
--
ALTER TABLE `tbl_panitia`
  ADD PRIMARY KEY (`id_panitia`);

--
-- Indexes for table `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_settingsoal`
--
ALTER TABLE `tbl_settingsoal`
  ADD PRIMARY KEY (`id_set`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tbl_ujian`
--
ALTER TABLE `tbl_ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_batch`
--
ALTER TABLE `tbl_batch`
  MODIFY `id_batch` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_home`
--
ALTER TABLE `tbl_home`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_matauji`
--
ALTER TABLE `tbl_matauji`
  MODIFY `id_matauji` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_panitia`
--
ALTER TABLE `tbl_panitia`
  MODIFY `id_panitia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_peserta`
--
ALTER TABLE `tbl_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_settingsoal`
--
ALTER TABLE `tbl_settingsoal`
  MODIFY `id_set` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_ujian`
--
ALTER TABLE `tbl_ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `dbpenjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `kd_barang` varchar(15) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `kd_barang`, `nm_barang`, `jenis_barang`, `hrg_satuan`, `stok`) VALUES
(2, '', 'Pelapis Jilbab', '', 5000, 50),
(3, '', 'Stoking', '', 15000, 50),
(4, '', 'Jilbab Maron', '', 90000, 50),
(5, '', 'Jubah Hitam', '', 157000, 48),
(7, '', 'Kaos kaki', '', 17000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `qty` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_barang`, `nm_barang`, `hrg_satuan`, `qty`, `status`) VALUES
(30, 7, 'Kaos kaki', 17000, 1, '1'),
(31, 7, 'Kaos kaki', 17000, 3, '1'),
(32, 7, 'Kaos kaki', 17000, 1, '1'),
(33, 7, 'Kaos kaki', 17000, 4, '1'),
(34, 7, 'Kaos kaki', 17000, 1, '1'),
(35, 5, 'Jubah Hitam', 157000, 1, '1'),
(36, 7, 'Kaos kaki', 17000, 1, '0');

--
-- Triggers `tbl_transaksi`
--
DELIMITER $$
CREATE TRIGGER `triggerStok` AFTER INSERT ON `tbl_transaksi`
 FOR EACH ROW BEGIN
UPDATE tbl_barang SET stok = stok-NEW.qty
WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `qty` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`id_transaksi`, `id_barang`, `nm_barang`, `hrg_satuan`, `qty`, `status`) VALUES
(30, 7, 'Kaos kaki', 17000, 1, '1'),
(31, 7, 'Kaos kaki', 17000, 3, '1'),
(32, 7, 'Kaos kaki', 17000, 1, '1'),
(33, 7, 'Kaos kaki', 17000, 4, '1'),
(34, 7, 'Kaos kaki', 17000, 1, '1'),
(35, 5, 'Jubah Hitam', 157000, 1, '1'),
(36, 7, 'Kaos kaki', 17000, 1, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_transaksi_detail`
--
ALTER TABLE `tbl_transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;--
-- Database: `dian`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_akses`
--

CREATE TABLE IF NOT EXISTS `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(15, 1, 1),
(19, 1, 3),
(21, 2, 1),
(24, 1, 9),
(28, 2, 3),
(29, 2, 2),
(30, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'KELOLA MENU', 'kelolamenu', 'fa fa-server', 0, 'y'),
(2, 'KELOLA PENGGUNA', 'user', 'fa fa-user-o', 0, 'y'),
(3, 'level PENGGUNA', 'userlevel', 'fa fa-users', 0, 'y'),
(9, 'Contoh Form', 'welcome/form', 'fa fa-id-card', 0, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_users` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(1, 'Nuris Akbar M.Kom', 'nuris.akbar@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', 'atomix_user31.png', 1, 'y'),
(3, 'Muhammad hafidz Muzaki', 'hafid@gmail.com', '$2y$04$Wbyfv4xwihb..POfhxY5Y.jHOJqEFIG3dLfBYwAmnOACpH0EWCCdq', '7.png', 2, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE IF NOT EXISTS `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `final_sibada`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(1, 'wiwik', '123456'),
(2, 'admin1', 'admin1'),
(3, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE IF NOT EXISTS `tb_dokter` (
  `id_dokter` varchar(15) NOT NULL,
  `id_spesialis` varchar(15) NOT NULL,
  `spesialis` enum('1-Bedah Mulut','2-Konversi Gigi','3-Gigi Anak','4-Penyakit Mulut','5-Ortodonsia','6-Periodonsia','7-Prostondosia') DEFAULT NULL,
  `nama_dokter` varchar(20) NOT NULL DEFAULT '',
  `jenkel` enum('Laki-laki','Perempuan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`id_dokter`, `id_spesialis`, `spesialis`, `nama_dokter`, `jenkel`) VALUES
('dokter1', '01', '1-Bedah Mulut', 'Maulana, Sp.BM', 'Laki-laki'),
('dokter10', '10c', '3-Gigi Anak', 'Cinta,Sp.BM', 'Perempuan'),
('dokter2', '02', '2-Konversi Gigi', 'Risnawati, Sp.KG', 'Perempuan'),
('dokter3', '03', '3-Gigi Anak', 'Indah Sari, Sp.KGA', 'Perempuan'),
('dokter4', '04', '4-Penyakit Mulut', 'Wiwik,Sp.PM', 'Perempuan'),
('dokter5', '05', '5-Ortodonsia', 'Ahmad, Sp.Ort', 'Laki-laki'),
('dokter6', '06', '6-Periodonsia', 'Intan,Sp.Pro', 'Perempuan'),
('dokter7', '07', '7-Prostondosia', 'Awahyuni,Sp.PM', 'Perempuan'),
('dokter8', '08a', '1-Bedah Mulut', 'Muh. Jaya, Sp.Ort', 'Laki-laki'),
('dokter9', '09b', '2-Konversi Gigi', 'Muhammad anwar, Sp.K', 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE IF NOT EXISTS `tb_pasien` (
  `id_pasien` varchar(15) NOT NULL DEFAULT '',
  `id_dokter` enum('dokter1','dokter2','dokter3','dokter4','dokter5','dokter6','dokter7','dokter8','dokter9','dokter10') NOT NULL,
  `nama_pasien` varchar(20) DEFAULT NULL,
  `jk` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `keluhan` enum('Sakit gigi','Gigi Sensitif','Gigi mudah berdarah','Luka pada mulut','Bau mulut','Sakit pada rahang','Mulut kering','Gigi Patah','Radang mulut','Karies gigi','Pulpitis','Periondontitis') DEFAULT NULL,
  `usia` varchar(15) DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `id_dokter`, `nama_pasien`, `jk`, `tgl_lahir`, `keluhan`, `usia`, `alamat`) VALUES
('0001', 'dokter2', 'Intan', 'Perempuan', '1993-07-14', 'Gigi Sensitif', '25', 'Bantaeng'),
('0002', 'dokter5', 'Rayanda', 'Laki-laki', '1995-01-20', 'Bau mulut', '23', 'Makassar'),
('0003', 'dokter5', 'Malik', 'Laki-laki', '1993-06-15', 'Gigi mudah berdarah', '25', 'Bandung'),
('0004', 'dokter1', 'Ahmadi', 'Laki-laki', '1994-06-12', 'Bau mulut', '24', 'Pettarani'),
('0005', 'dokter4', 'Sofyan', 'Laki-laki', '1974-03-01', 'Gigi Sensitif', '44', 'Andi Malombasa'),
('0006', 'dokter6', 'Ridwan', 'Laki-laki', '1998-07-07', 'Radang mulut', '20', 'Adhyaksa baru'),
('0007', 'dokter3', 'Masyita', 'Perempuan', '1999-02-14', 'Karies gigi', '19', 'Abd dg sirua'),
('0008', 'dokter2', 'Dina', 'Perempuan', '1996-02-14', 'Periondontitis', '22', 'Manngarupi'),
('0009', 'dokter7', 'Karlina', 'Perempuan', '1996-02-14', 'Bau mulut', '22', 'Toddopuli'),
('0010', 'dokter8', 'Jaya', 'Laki-laki', '1993-11-14', 'Gigi Sensitif', '25', 'Tamangngapa'),
('0011', 'dokter7', 'Hasniar', 'Perempuan', '1997-11-28', 'Sakit pada rahang', '21', 'Pallangga'),
('0012', 'dokter8', 'Ahmad', 'Laki-laki', '1996-02-14', 'Mulut kering', '22', 'Gowa'),
('0013', 'dokter6', 'Sera', 'Perempuan', '2007-07-14', 'Gigi Patah', '11', 'Bantaeng'),
('0014', 'dokter10', 'Anshar', 'Laki-laki', '1999-11-14', 'Karies gigi', '19', 'Selayar'),
('0015', 'dokter3', 'Awahyuni', 'Perempuan', '2000-02-14', 'Gigi mudah berdarah', '18', 'Pinrang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE IF NOT EXISTS `tb_penyakit` (
  `id_penyakit` varchar(50) NOT NULL,
  `nama_penyakit` enum('Konversi gigi','Pasang behel','Pasang gigi palsu','Pembersihan karang gigi','Cabut gigi') DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `nama_penyakit`, `biaya`) VALUES
('pe1', 'Konversi gigi', 750000),
('pe2', 'Pasang gigi palsu', 350000),
('pe3', 'Pasang behel', 100000),
('pe4', 'Pembersihan karang gigi', 200000),
('pe5', 'Cabut gigi', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_pembayaran` enum('by01','by02','by03','by04','by05','by06','by07','by08','by09') NOT NULL DEFAULT 'by01',
  `id_pasien` enum('0001','0002','0003','0004','0005','0006','0007','0008','0009','0010','0011','0012','0013','0014','0015','0016','0017','0018','0019','0020') NOT NULL DEFAULT '0001',
  `id_penyakit` enum('pe1','pe2','pe3','pe4','pe5') NOT NULL DEFAULT 'pe1',
  `jumlah_bayar` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_pembayaran`, `id_pasien`, `id_penyakit`, `jumlah_bayar`) VALUES
('by01', '0001', 'pe3', 12000000),
('by02', '0002', 'pe3', 420000),
('by03', '0003', 'pe4', 300000),
('by04', '0004', 'pe3', 1200000),
('by05', '0007', 'pe5', 230000),
('by06', '0006', 'pe2', 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` text,
  `jk` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `alamat`, `jk`, `telp`, `username`, `password`) VALUES
('1', 'andi', 'pettarani', 'Laki-Laki', '0823958645125', 'andi123', 'andiandi'),
('2', 'anti', 'makassar', 'Perempuan', '082154655368', 'anti12', 'anti12345'),
('3', 'jaya', 'gowa', 'Laki-Laki', '082145326557', 'jaya33', '12345'),
('4', 'ahmad', 'bantaeng', 'Laki-Laki', '081235695555', 'ahmad43', 'ahmad987'),
('5', 'ramna', 'abdesir', 'Perempuan', '083255664585', 'ramna', 'ramna1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`id_dokter`,`id_spesialis`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`,`id_dokter`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_pembayaran`,`id_pasien`,`id_penyakit`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);
--
-- Database: `klinik01`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'wiwik', 'wiwik', '0fd1ec5593cd341c7c4af53276f10be6');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `alamat_dokter` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `alamat_dokter`) VALUES
(1, 'Dr. jaya', 'Spesialis Anak', 'Bandung'),
(2, 'Dr. PUJI ANDAYANI', 'Spesialis kandungan', 'jakarta'),
(3, 'Prof Dr. H. RUSLAN', 'Penyakit Dalam', 'Banten'),
(4, 'Dr. SOEDARTO', 'Spesialis Mata', 'Makassar'),
(5, 'Dr. Wiwik Atikah', 'Umum', 'Makassar'),
(6, 'Dr. Dewianti', 'Spesialis Paru-paru', 'Gowa'),
(7, 'Dr. Sunarti Indah', 'Spesialis kejiwaan', 'Borong Raya'),
(8, 'Dr. Hasniar', 'Kejiwaan', 'Jl. Racing center no'),
(9, 'Dr. Indra Yayah', 'Umum', 'Jl. Terserah');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(10) NOT NULL,
  `alamat_pasien` varchar(20) NOT NULL,
  `usia` varchar(5) NOT NULL,
  `Keluhan` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `alamat_pasien`, `usia`, `Keluhan`) VALUES
(1, 'Sitti Riza', 'Makassar', '45', 'Reumatik'),
(2, 'Sutaringa', 'Jl. Abd Dg sirua', '19', 'jantung'),
(3, 'Hariadi', 'Tello', '25', 'usus buntu'),
(4, 'Nurul', 'racing center', '32', 'kanker otak'),
(6, 'Abd Wahid', 'Jl. Manggarupi', '24', 'Mata Minus'),
(7, 'Hasriani', 'Racing center', '40', 'Mata Minus'),
(9, 'Wahyuni', 'Pinrang', '32', 'Diabetes'),
(10, 'Alfian', 'Samata', '23', 'Kurang cairan'),
(11, 'Maman', 'Gowa', '19', 'Gula'),
(12, 'Risnawati', 'Gowa', '21', 'diabetes'),
(13, 'Hajrah', 'Manggarupi', '23', 'usus buntu'),
(14, 'Hajrah', 'Jl. mannuruki 2', '23', 'usus buntu');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `nama_penyakit` varchar(20) NOT NULL,
  `biaya` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `id_dokter`, `nama_penyakit`, `biaya`) VALUES
(1, 1, 'Melahirkan', 550000),
(2, 2, 'Pemeriksaan kandunga', 400000),
(3, 3, 'usus buntu', 700000),
(4, 4, 'Mata minus', 305000),
(5, 5, 'Kurang cairan', 130000),
(6, 6, 'kanker otak', 320000),
(7, 7, 'diabetes', 210000),
(8, 8, 'gula', 420000),
(9, 9, 'Pemeriksaan', 500000),
(10, 10, 'Kanker kulit', 320000),
(12, 12, 'Kanker darah', 200000),
(13, 13, 'amnesia', 198000),
(14, 4, 'Diabetes', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `Jumlah_pembayaran` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_pembayaran`, `id_pasien`, `id_penyakit`, `Jumlah_pembayaran`) VALUES
(1, 0, 0, 31000),
(2, 0, 0, 320000),
(3, 0, 0, 302000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`,`id_dokter`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_pembayaran`,`id_pasien`,`id_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `pemdestt`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tgl_berita` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi`, `gambar`, `tgl_berita`) VALUES
(8, 'Berita 1', 'Ini adalah Berita yang di tampilkan', 'gambar/sdfl,secrowto_1506549354.jpg', '2017-09-27'),
(9, 'Berita 2', 'Ini adalah tampilan berita 2', 'gambar/sdfl,secrowto_1506549402.jpg', '2017-09-27'),
(10, 'sdfsdsdf', 'sdfsdf', 'gambar/12488232-funny-cartoon-office-worker-Stock-Vector-teacher.jpg', '2017-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE IF NOT EXISTS `folder` (
  `id_folder` int(11) NOT NULL,
  `nama_folder` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id_folder`, `nama_folder`, `gambar`, `deskripsi`, `ket`) VALUES
(19, 'Nama Kegiatan', 'gambar/IMG_1771_1506548593.jpg', 'Deskripsi Kegiatan', 'kegiatan1'),
(20, 'Nama Kegiatan', 'gambar/IMG_1771_1506548619.jpg', 'Deskripsi Kegiatan', 'kegiatan2'),
(21, 'Nama Kegiatan', 'gambar/IMG_1771_1506548662.jpg', 'Deskripsi Kegiatan', 'kegiatan4'),
(22, 'Nama Kegiatan', 'gambar/IMG_1771_1506548908.jpg', 'Deskripsi Kegiatan', 'kegiatan9'),
(23, 'Nama Kegiatan', 'gambar/IMG_1771_1506548869.jpg', 'Deskripsi Kegiatan', 'kegiatan8'),
(24, 'Nama Kegiatan', 'gambar/IMG_1771_1506548703.jpg', 'Deskripsi Kegiatan', 'kegiatan3'),
(25, 'Nama Kegiatan', 'gambar/IMG_1771_1506548835.jpg', 'Deskripsi Kegiatan', 'kegiatan7'),
(26, 'Nama Kegiatan', 'gambar/IMG_1771_1506548719.jpg', 'Deskripsi Kegiatan', 'kegiatan5'),
(27, 'Nama Kegiatan', 'gambar/IMG_1771_1506548817.jpg', 'Deskripsi Kegiatan', 'kegiatan6');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE IF NOT EXISTS `galery` (
  `id_galery` int(11) NOT NULL,
  `nama_foto` varchar(41) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galery`, `nama_foto`, `foto`, `ket`) VALUES
(9, 'kegiatan 1', 'gambar/IMG_1771_1506549020.jpg', 'kegiatan1'),
(10, 'Kegiatan 2', 'gambar/IMG_1771_1506549043.jpg', 'kegiatan1');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_struktur`
--

CREATE TABLE IF NOT EXISTS `gambar_struktur` (
  `id_gbr` int(11) NOT NULL,
  `gambar_str` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar_struktur`
--

INSERT INTO `gambar_struktur` (`id_gbr`, `gambar_str`) VALUES
(1, 'gambar/Untitled.png');

-- --------------------------------------------------------

--
-- Table structure for table `kritik`
--

CREATE TABLE IF NOT EXISTS `kritik` (
  `id_kritik` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `kritik` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritik`
--

INSERT INTO `kritik` (`id_kritik`, `nama`, `no_hp`, `kritik`) VALUES
(1, 'kjkh', 'juig', 'uhuigui');

-- --------------------------------------------------------

--
-- Table structure for table `luas_wilayah`
--

CREATE TABLE IF NOT EXISTS `luas_wilayah` (
  `id_luas_wilayah` int(11) NOT NULL,
  `luas_desa` varchar(10) NOT NULL,
  `luas_pemukiman` varchar(10) NOT NULL,
  `luas_kuburan` varchar(10) NOT NULL,
  `luas_lahan` varchar(10) NOT NULL,
  `luas_taman` varchar(10) NOT NULL,
  `luas_perkantoran` varchar(10) NOT NULL,
  `luas_prasarana` varchar(10) NOT NULL,
  `luas_hutan` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luas_wilayah`
--

INSERT INTO `luas_wilayah` (`id_luas_wilayah`, `luas_desa`, `luas_pemukiman`, `luas_kuburan`, `luas_lahan`, `luas_taman`, `luas_perkantoran`, `luas_prasarana`, `luas_hutan`) VALUES
(1, '1,83', '1,00', '32,30', '-', '1,25', '35,35', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE IF NOT EXISTS `moto` (
  `id_moto` int(11) NOT NULL,
  `isi_moto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`id_moto`, `isi_moto`) VALUES
(1, 'Menjadikan Desa Tongke-tongke sebagai sektor pertanian, Perikanan, pengolahan dan pemasaran hasil. Serta meningkatkan kualitas dan kuantitas keagamaan, kebudayaan demi mewujudkan masyarakat yang religius, bermartabat dan berbudaya');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE IF NOT EXISTS `sambutan` (
  `id_sambutan` int(11) NOT NULL,
  `isi_sambutan` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id_sambutan`, `isi_sambutan`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur fugiat ea dolores magnam cupiditate, beatae, aliquam omnis praesentium quidem similique nemo est fuga fugit vero, soluta alias quam consectetur, enim. <b><i><u><a target="_blank" rel="nofollow" href="http://#">wawan manis</a></u></i></b></p>');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE IF NOT EXISTS `saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE IF NOT EXISTS `sejarah` (
  `id_sejarah` int(11) NOT NULL,
  `isi_sejarah` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `isi_sejarah`) VALUES
(1, '<p>Kelurahan Bongki terletak di ujung Utara Kabupaten Sinjai, berbatasan langsung dengan kabupaten Bone. Merupakan salah satu dari enam kelurahan di Kecamatan Sinjai Utara dengan jarak tempuh dari :</p><p></p><p></p><ul><li>Ibu Kota Kecamatanâ€ƒâ€ƒâ€ƒâ€ƒ: 1 km</li><li>Ibu Kota Kabupaten Sinjaiâ€ƒ &nbsp;: 45 km</li><li>Ibu Kota Provinsiâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ : &nbsp;230 Km</li></ul><p></p><p>Kelurahan Bongki yang sejak terbentuknya pada tahun 1995 dengan persetujuan DPRD No. 21 Tahun 1995 telah mengalami beberapa kali pergantian lurah, Yaitu :</p><p></p><ol><li>Tahun 1995-1999â€ƒâ€ƒ: Dipimpin oleh Muh. Saleh</li><li>Tahun 1999-2000â€ƒâ€ƒ: Dipimpin oleh Drs. M Yusri Tahir</li><li>Tahun 2000-2002â€ƒâ€ƒ: Dipimpin oleh Salahuddin, S.pd</li><li>Tahun 2002-2003â€ƒâ€ƒ: Dipimpin oleh H. Muh. Darwis Ahmad</li><li>Tahun 2003-2011â€ƒâ€ƒ: Dipimpin oleh Drs. Yuhadi Samad, M.Si</li><li>Tahun 2012-2013â€ƒâ€ƒ: Dipimpin oleh A. Adityawarman, AP,S.STP, M.Adm, KP</li><li>Tahun 2014-2017â€ƒâ€ƒ: Dipimpin oleh Akbar Andi Mappa</li></ol><p></p><p>Kelurahan Bongki merupakan kategori kelurahan swakarya yang pada awal berdirinya terdiri atas 2 lingkungan yaitu Lingkungan Paruntu dengan lingkungan Benteng. Pada tahun 2002 dengan dikeluarkannya surat keputusan camat Sinjai Utara No. 01/I/2002/SUT Tanggal 7 Januari 2002 telah di tetapkan pemekaran lingkungan kelurahan bongki menjadi 4 lingkungan yaitu :</p><p></p><ol><li>Lingkungan Paruntu dimekarkan menjadi 2 lingkungan yaitu &nbsp;(&nbsp;\r\n\r\nLingkungan Paruntu,&nbsp;\r\n\r\nLingkungan Popanda)</li><li>\r\n\r\nLingkungan Benteng dimekarkan menjadi 2 lingkungan yaitu ( Lingkungan Benteng , Lingkungan Samaenre)</li></ol><p></p><p>Kelurahan Bongki merupakan daerah dataran dan kawasan bebas banjir dengan ketinggian dari permukaan laut kurang lebih 71m. Suhu udara rata-rata 29-30 derajat celcius. Adapun batas-batasnya adalah :</p><p></p><ul><li>Sebelah Utara berbatasan dengan kabupaten Bone</li><li>Sebelah Timur berbatasan dengan Kelurahan Balangnipa</li><li>Sebelah Selatan berbatasan dengan Kelurahan Biringere</li><li>Sebelah Barat berbatasan dengan Kelurahan Lamatti Rilau</li></ul><p>Dengan luas wilayah sekitar 4.81 km . Terdiri dari :</p><p></p><ul><li>Luas persawahanâ€ƒ â€ƒ: 114 Ha</li><li>Tanah Keringâ€ƒâ€ƒâ€ƒâ€ƒ: 367 Ha</li><li>Luas Pemukimanâ€ƒâ€ƒ : 28,05 Ha</li><li>Luas Perkebunan â€ƒâ€ƒ: 62 Ha</li><li>Luas Pekaranganâ€ƒâ€ƒ : 52 Ha</li><li>Luas Kuburanâ€ƒ &nbsp; â€ƒâ€ƒ: 52 Ha</li><li>Lainnyaâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ: 188 Ha</li></ul><br><p></p><p></p><p></p>Kelurahan Bongki Berpenduduk Sebanyak 9,083 Jiwa Dengan Rincian:<p></p><p></p><ol><li>Laki-Lakiâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ: 4,074 Jiwa</li><li>Perempuan &nbsp; &nbsp; â€ƒâ€ƒâ€ƒ: 4,982 Jiwa</li><li>Jumlah KKâ€ƒâ€ƒ &nbsp; â€ƒ &nbsp; :KK</li></ol><p></p><p><br></p><p><b>SARANA dan PRASARANA</b></p><p></p><ul><li>Prasarana Kesehatan<br></li></ul><p></p><p></p><ol><li>Pustuâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ: 1 Buah<br></li><li>Prasarana Pendidikan<br></li></ol><p></p><p></p><ul><li>Gedung Sekolah Paud â€ƒ: 4 Buah<br></li><li>Gedung Sekolah TKâ€ƒâ€ƒ : 4 Buah<br></li><li>Gedung Sekolah SDâ€ƒâ€ƒ : 3 Buah<br></li><li>Gedung Sekolah SLTP â€ƒ: 2 Buah<br></li><li>Prasarana Ibadah<br></li></ul><p></p><p></p><ol><li>Mesjidâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ &nbsp; &nbsp;: 18 Buah</li></ol><p><br></p><p></p><p></p>'),
(5, '<p>Kelurahan Bongki terletak di ujung Utara Kabupaten Sinjai, berbatasan langsung dengan kabupaten Bone. Merupakan salah satu dari enam kelurahan di Kecamatan Sinjai Utara dengan jarak tempuh dari :</p><p></p><p></p><ul><li>Ibu Kota Kecamatanâ€ƒâ€ƒâ€ƒâ€ƒ: 1 km</li><li>Ibu Kota Kabupaten Sinjaiâ€ƒ &nbsp;: 45 km</li><li>Ibu Kota Provinsiâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ : &nbsp;230 Km</li></ul><p></p><p>Kelurahan Bongki yang sejak terbentuknya pada tahun 1995 dengan persetujuan DPRD No. 21 Tahun 1995 telah mengalami beberapa kali pergantian lurah, Yaitu :</p><p></p><ol><li>Tahun 1995-1999â€ƒâ€ƒ: Dipimpin oleh Muh. Saleh</li><li>Tahun 1999-2000â€ƒâ€ƒ: Dipimpin oleh Drs. M Yusri Tahir</li><li>Tahun 2000-2002â€ƒâ€ƒ: Dipimpin oleh Salahuddin, S.pd</li><li>Tahun 2002-2003â€ƒâ€ƒ: Dipimpin oleh H. Muh. Darwis Ahmad</li><li>Tahun 2003-2011â€ƒâ€ƒ: Dipimpin oleh Drs. Yuhadi Samad, M.Si</li><li>Tahun 2012-2013â€ƒâ€ƒ: Dipimpin oleh A. Adityawarman, AP,S.STP, M.Adm, KP</li><li>Tahun 2014-2017â€ƒâ€ƒ: Dipimpin oleh Akbar Andi Mappa</li></ol><p></p><p>Kelurahan Bongki merupakan kategori kelurahan swakarya yang pada awal berdirinya terdiri atas 2 lingkungan yaitu Lingkungan Paruntu dengan lingkungan Benteng. Pada tahun 2002 dengan dikeluarkannya surat keputusan camat Sinjai Utara No. 01/I/2002/SUT Tanggal 7 Januari 2002 telah di tetapkan pemekaran lingkungan kelurahan bongki menjadi 4 lingkungan yaitu :</p><p></p><ol><li>Lingkungan Paruntu dimekarkan menjadi 2 lingkungan yaitu &nbsp;(&nbsp;\r\n\r\nLingkungan Paruntu,&nbsp;\r\n\r\nLingkungan Popanda)</li><li>\r\n\r\nLingkungan Benteng dimekarkan menjadi 2 lingkungan yaitu ( Lingkungan Benteng , Lingkungan Samaenre)</li></ol><p></p><p>Kelurahan Bongki merupakan daerah dataran dan kawasan bebas banjir dengan ketinggian dari permukaan laut kurang lebih 71m. Suhu udara rata-rata 29-30 derajat celcius. Adapun batas-batasnya adalah :</p><p></p><ul><li>Sebelah Utara berbatasan dengan kabupaten Bone</li><li>Sebelah Timur berbatasan dengan Kelurahan Balangnipa</li><li>Sebelah Selatan berbatasan dengan Kelurahan Biringere</li><li>Sebelah Barat berbatasan dengan Kelurahan Lamatti Rilau</li></ul><p>Dengan luas wilayah sekitar 4.81 km . Terdiri dari :</p><p></p><ul><li>Luas persawahanâ€ƒ â€ƒ: 114 Ha</li><li>Tanah Keringâ€ƒâ€ƒâ€ƒâ€ƒ: 367 Ha</li><li>Luas Pemukimanâ€ƒâ€ƒ : 28,05 Ha</li><li>Luas Perkebunan â€ƒâ€ƒ: 62 Ha</li><li>Luas Pekaranganâ€ƒâ€ƒ : 52 Ha</li><li>Luas Kuburanâ€ƒ &nbsp; â€ƒâ€ƒ: 52 Ha</li><li>Lainnyaâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ: 188 Ha</li></ul><br><p></p><p></p><p></p>Kelurahan Bongki Berpenduduk Sebanyak 9,083 Jiwa Dengan Rincian:<p></p><p></p><ol><li>Laki-Lakiâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ: 4,074 Jiwa</li><li>Perempuan &nbsp; &nbsp; â€ƒâ€ƒâ€ƒ: 4,982 Jiwa</li><li>Jumlah KKâ€ƒâ€ƒ &nbsp; â€ƒ &nbsp; :KK</li></ol><p></p><p><br></p><p><b>SARANA dan PRASARANA</b></p><p></p><ul><li>Prasarana Kesehatan<br></li></ul><p></p><p></p><ol><li>Pustuâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ: 1 Buah<br></li><li>Prasarana Pendidikan<br></li></ol><p></p><p></p><ul><li>Gedung Sekolah Paud â€ƒ: 4 Buah<br></li><li>Gedung Sekolah TKâ€ƒâ€ƒ : 4 Buah<br></li><li>Gedung Sekolah SDâ€ƒâ€ƒ : 3 Buah<br></li><li>Gedung Sekolah SLTP â€ƒ: 2 Buah<br></li><li>Prasarana Ibadah<br></li></ul><p></p><p></p><ol><li>Mesjidâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒâ€ƒ &nbsp; &nbsp;: 18 Buah</li></ol><p><br></p><p></p><p></p>');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(11) NOT NULL,
  `slide1` varchar(200) NOT NULL,
  `slide2` varchar(200) NOT NULL,
  `slide3` varchar(200) NOT NULL,
  `slide4` varchar(200) NOT NULL,
  `slide5` varchar(200) NOT NULL,
  `slide6` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `slide1`, `slide2`, `slide3`, `slide4`, `slide5`, `slide6`) VALUES
(1, 'gambar/sdfl,secrowto_1506547538.jpg', 'gambar/kjmj _1506547612.jpg', 'gambar/IMG_3207_1506549229.JPG', 'gambar/kjmj _1506547719.jpg', 'gambar/Variabel pada Program C++.jpg', 'gambar/XAMPP Control Panel.png');

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE IF NOT EXISTS `struktur` (
  `id_struktur` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nama_org` varchar(50) NOT NULL,
  `jabatan_org` varchar(50) NOT NULL,
  `gambar_org` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`id_struktur`, `nip`, `nama_org`, `jabatan_org`, `gambar_org`) VALUES
(22, '19700505 199203 1 007', 'AKBAR ANDI MAPPA', 'kepala lurah', ''),
(23, '19770421 201001 1 014', 'INCE MUH.IHLAS ISMAIL,SE', 'kasi pembangunan', ''),
(24, '19660815 201001 2 001', 'ZULFARIDAH,S.IP', 'sekretaris', ''),
(25, '19671231 198303 1 014', 'ANDI ABDUL WARIS,SE', 'kasi pemerintahan', ''),
(26, '19810510 201001 1 010', 'ABDI WIRAWAN,S.Sos', 'kasi pelayanan', ''),
(27, '', 'DALIMA, S.Sos', 'anggota kasi pembangunan1', ''),
(29, '', 'NUR FAUZIAH', 'anggota sekretaris1', ''),
(30, '', 'A.WARNIDAH,S.IP', 'anggota kasi pemerintahan1', ''),
(31, '', 'ERNI RAHMAN', 'anggota kasi pelayanan1', ''),
(32, '', 'NURFAIKA,S.Sos', 'anggota kasi pembangunan2', ''),
(33, '', 'MAâ€™RIFA GS', 'anggota sekretaris2', ''),
(34, '', 'ANDI SETIAWAN', 'anggota kasi pemerintahan2', ''),
(35, '', 'MUSTIYANTI,S.IP', 'anggota kasi pelayanan2', ''),
(39, '', 'NILMAH, S.Sos', 'anggota kasi pembangunan3', ''),
(40, 'lklkl;k', 'asdasd', 'kepala lurah', 'gambar/farmer-clip-art-cartoon-farmer-vector-clipart-png-eGph1M-clipart.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`, `foto`) VALUES
(1, 'Admin', 'admin', 'admin', 1, '../gambar/albire-dentara_1505475758.png');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE IF NOT EXISTS `visimisi` (
  `id_visimisi` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id_visimisi`, `visi`, `misi`) VALUES
(1, '<p></p><p><br></p><p>â€œ <strong>Terwujudnya masyarakat </strong><b>Kelurahan Bongki Kecamatan Sinjai Utara Kabupaten\r\nSinjai<strong>&nbsp; Yang bersatu ( Bersih, Elok, Rapi, Sehat, Aman, Tekun Dan\r\nUnggul ), melalui Pelayanan yang berkualitas dibidang Penyelenggaraan\r\nPemerintahan, Pembangunan dan Pembinaan kehidupan masyarakat secara\r\nprofesional,  efektif, efisien dan ekonomis."</strong></b></p>\r\n\r\n\r\n\r\n\r\n\r\n<i></i><p></p><p></p>', '<p></p><p>Dalam mencapai visi tersebut diatas, maka misi Kelurahan\r\nBongki Kecamatan Sinjai Utara Kabupaten Sinjai adalah membangkitkan semangat\r\nwarga masyarakat sehingga yang bersangkutan terdorong secara sadar dalam\r\nberpartisipasi dalam berbagai bidang kegiatan, baik bidang Pemerintahan,\r\nPembangunan dan Kemasyarakatan yang selanjutnya masyarakat akan mampu mengelola\r\npotensi sumber daya yang mereka miliki, yang ditandai dengan </p>\r\n\r\n<p></p><ol><li>Meningkatkan disiplin, motivasi kerja dan kinerja Aparatur Kelurahan Bongki &nbsp;untuk menciptakan Aparatur yang bersih,\r\ncerdas, tanggap, ikhlas dan bertanggungjawab sehingga mampu memberikan\r\npelayanan prima yang berorientasi pada kepuasan publik.</li><li>Meningkatkan dan mengoptimalkan sarana prasarana yang ada sesuai dengan\r\nkebutuhan untuk dapat lebih berdaya guna dan berhasil guna serta ekonomis.</li><li>Meningkatkan kualitas pelayanan dalam Penyelenggaraan Pemerintahan, pelaksanaan\r\npembangunan dan kemasyarakatan guna terwujudnya ketentraman,ketertiban dan\r\nkesejahteraan masyarakat.</li><li>Meningkatkan koordinasi dan kerjasama dengan Instansi terkait untuk kelancaran\r\npenyelenggaraan Pemerintahan, pelaksanaan Pembangunan dan pembinaan kehidupan\r\nmasyarakat.</li><li>Menggerakan  semangat warga masyarakat agar lebih pro aktif dan produktif\r\ndalam mengelola potensi yang dimiliki serta meningkatkan pemberdayaan\r\nmasyarakat,semangat gotong royong dan menempatkan masyarakat bukan sebagai\r\nobjek tetapi sebagai subyek dalam setiap program pembangunan sehingga\r\nmasyarakat lebih aktif dalam memberikan dukungan, partisipasi dan peran\r\nsertannya.</li><li>Meningkatkan komunikasi, silahturohmi dan jalinan hubungan yang harmonis dengan\r\nsegenap elemen dan tokoh tokoh agama, tokoh masyarakat, tokoh partai politik,\r\ntokoh pemuda demi terciptanya kehidupan masyarakat yang rukun, damai, tentram,\r\ntertib, harmonis, sejahtera dan kondusif.</li></ol><p></p><p></p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `gambar_struktur`
--
ALTER TABLE `gambar_struktur`
  ADD PRIMARY KEY (`id_gbr`);

--
-- Indexes for table `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`id_kritik`);

--
-- Indexes for table `luas_wilayah`
--
ALTER TABLE `luas_wilayah`
  ADD PRIMARY KEY (`id_luas_wilayah`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`id_moto`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id_visimisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gambar_struktur`
--
ALTER TABLE `gambar_struktur`
  MODIFY `id_gbr` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kritik`
--
ALTER TABLE `kritik`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `luas_wilayah`
--
ALTER TABLE `luas_wilayah`
  MODIFY `id_luas_wilayah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `id_moto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id_visimisi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `pemdesttt`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `tgl_berita` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi`, `gambar`, `tgl_berita`) VALUES
(7, 'Judul Berita', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa quia provident ea totam corrupti dignissimos similique voluptatibus quod qui fuga? Necessitatibus, omnis accusamus sit! Veritatis accusamus, quam a fuga molestias.', 'gambar/15403565_665124777001145_3154043176944140288_n_1505515282.jpg', '2017-09-16'),
(8, 'Mahasiswa KKLP STMIK Handayani Bertempat di Bongki', 'Pada tanggal 1 Agustus Mahasiswa KKLP STMIK Handayani Makassar Berkesempatan untuk KKLP di sinjai dan beberapa dari mereka di tempatkan di kantor kelurahan Bongki. ', 'gambar/IMG-20170917-WA0011.jpg', '2017-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE IF NOT EXISTS `folder` (
  `id_folder` int(11) NOT NULL,
  `nama_folder` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id_folder`, `nama_folder`, `gambar`, `deskripsi`, `ket`) VALUES
(6, 'Nama Kegiatan', 'gambar/20160430_171016.jpg', 'deeeKantor desa tongke-tongke saat merayakan hari ulang tahun RI ke 72', 'Desa'),
(7, 'Nama Kegiatan', 'gambar/20160430_171142.jpg', 'coba', 'Desa2'),
(8, 'Nama Kegiatan', 'gambar/20160430_171134.jpg', ' fvffv', 'Desa3'),
(12, 'Nama Kegiatan', 'gambar/GettyImages-607761552-584f42e23df78c491e590f3a.jpg', '', 'PKK'),
(13, 'Nama Kegiatan', 'gambar/GettyImages-607761552-584f42e23df78c491e590f3a_1505439518.jpg', '', 'PKK2'),
(14, 'Nama Kegiatan', 'gambar/GettyImages-607761552-584f42e23df78c491e590f3a_1505439535.jpg', '', 'PKK3'),
(15, 'Nama Kegiatan', 'gambar/12556125_1123045844386071_1332557418_n.jpg', '', 'Pariwisata'),
(16, 'Nama Kegiatan', 'gambar/12556125_1123045844386071_1332557418_n_1505439760.jpg', '', 'Pariwisata2'),
(17, 'Nama Kegiatan', 'gambar/12556125_1123045844386071_1332557418_n_1505439774.jpg', '', 'Pariwisata3');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE IF NOT EXISTS `galery` (
  `id_galery` int(11) NOT NULL,
  `nama_foto` varchar(41) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galery`, `nama_foto`, `foto`, `ket`) VALUES
(1, 'Mangrove', 'gambar/12556125_1123045844386071_1332557418_n_1505515446.jpg', 'Pariwisata'),
(2, 'Mangrove', 'gambar/15403565_665124777001145_3154043176944140288_n_1505515473.jpg', 'Mangrove');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_struktur`
--

CREATE TABLE IF NOT EXISTS `gambar_struktur` (
  `id_gbr` int(11) NOT NULL,
  `gambar_str` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar_struktur`
--

INSERT INTO `gambar_struktur` (`id_gbr`, `gambar_str`) VALUES
(1, 'gambar/Untitled.png');

-- --------------------------------------------------------

--
-- Table structure for table `kritik`
--

CREATE TABLE IF NOT EXISTS `kritik` (
  `id_kritik` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `kritik` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritik`
--

INSERT INTO `kritik` (`id_kritik`, `nama`, `no_hp`, `kritik`) VALUES
(2, 'wiwik', '51218', 'bagus');

-- --------------------------------------------------------

--
-- Table structure for table `luas_wilayah`
--

CREATE TABLE IF NOT EXISTS `luas_wilayah` (
  `id_luas_wilayah` int(11) NOT NULL,
  `luas_desa` varchar(10) NOT NULL,
  `luas_pemukiman` varchar(10) NOT NULL,
  `luas_kuburan` varchar(10) NOT NULL,
  `luas_lahan` varchar(10) NOT NULL,
  `luas_taman` varchar(10) NOT NULL,
  `luas_perkantoran` varchar(10) NOT NULL,
  `luas_prasarana` varchar(10) NOT NULL,
  `luas_hutan` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luas_wilayah`
--

INSERT INTO `luas_wilayah` (`id_luas_wilayah`, `luas_desa`, `luas_pemukiman`, `luas_kuburan`, `luas_lahan`, `luas_taman`, `luas_perkantoran`, `luas_prasarana`, `luas_hutan`) VALUES
(1, '1,83', '1,00', '32,30', '-', '1,25', '35,35', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE IF NOT EXISTS `moto` (
  `id_moto` int(11) NOT NULL,
  `isi_moto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`id_moto`, `isi_moto`) VALUES
(1, 'bjh');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE IF NOT EXISTS `sambutan` (
  `id_sambutan` int(11) NOT NULL,
  `isi_sambutan` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id_sambutan`, `isi_sambutan`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur fugiat ea dolores magnam cupiditate, beatae, aliquam omnis praesentium quidem similique nemo est fuga fugit vero, soluta alias quam consectetur, enim. <b><i><u><a target="_blank" rel="nofollow" href="http://#">wawan manis</a></u></i></b></p>');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE IF NOT EXISTS `saran` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `nama`, `no_hp`, `saran`) VALUES
(1, 'dfs', 'vf', 'fv'),
(2, 'ihef', 'jkndjknf', ',mdfjerjf,tm45tjrigjtmgitjguhdfugency wsedrftghl;vefjitmjgcirtgmrgwDalam mencapai visi tersebut diatas, maka misi Kelurahan Bongki Kecamatan Sinjai Utara Kabupaten Sinjai adalah membangkitkan semangat warga masyarakat sehingga yang bersangkutan terdorong secara sadar dalam berpartisipasi dalam berbagai bidang kegiatan, baik bidang Pemerintahan, Pembangunan dan Kemasyarakatan yang selanjutnya masyarakat akan mampu mengelola potensi sumber daya yang mereka miliki, yang ditandai dengan \r\n1.      Meningkatkan disiplin, motivasi kerja dan kinerja Aparatur Kelurahan Bongki  untuk menciptakan Aparatur yang bersih, cerdas, tanggap, ikhlas dan bertanggungjawab sehingga mampu memberikan pelayanan prima yang berorientasi pada kepuasan publik.\r\n2.      Meningkatkan dan mengoptimalkan sarana prasarana yang ada sesuai dengan kebutuhan untuk dapat lebih berdaya guna dan berhasil guna serta ekonomis;\r\n3.      Meningkatkan kualitas pelayanan dalam Penyelenggaraan Pemerintahan, pelaksanaan pembangunan dan kemasyarakatan guna terwujudnya ketentraman,ketertiban dan kesejahteraan masyarakat.\r\n4.      Meningkatkan koordinasi dan kerjasama dengan Instansi terkait untuk kelancaran penyelenggaraan Pemerintahan, pelaksanaan Pembangunan dan pembinaan kehidupan masyarakat.\r\n5.      Menggerakan  semangat warga masyarakat agar lebih pro aktif dan produktif dalam mengelola potensi yang dimiliki serta meningkatkan pemberdayaan masyarakat,semangat gotong royong dan menempatkan masyarakat bukan sebagai objek tetapi sebagai subyek dalam setiap program pembangunan sehingga masyarakat lebih aktif dalam memberikan dukungan, partisipasi dan peran sertannya.\r\n6.      Meningkatkan komunikasi, silahturohmi dan jalinan hubungan yang harmonis dengan segenap elemen dan tokoh tokoh agama, tokoh masyarakat, tokoh partai politik, tokoh pemuda demi terciptanya kehidupan masyarakat yang rukun, damai, tentram, tertib, harmonis, sejahtera dan kondusif.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE IF NOT EXISTS `sejarah` (
  `id_sejarah` int(11) NOT NULL,
  `isi_sejarah` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id_sejarah`, `isi_sejarah`) VALUES
(1, 'Kelurahan Bongki terletak di ujung Utara Kabupaten Sinjai, berbatasan langsung dengan Kabupaten Bone merupakan salah slah satu dari enam Kelurahan di Kecamatan Sinjai Utara dengan jarak tempuh dari :\r\nï¶	Ibu Kota Kecamatan 		: 1 Km\r\nï¶	Ibu Kota Kabupaten Sinjai	:  45 Km\r\nï¶	Ibu Kota Provinsi		: 230 Km\r\nKelurahan Bongki yang sejak terbentuknya pada tahun 1995 dengan persetujuan  DPRD Nomor 21 Tahun1995 telah mengalami beberapa kali pergantian Lurah, yaitu :\r\nï¶	Tahun 1995 - 1999	: Dipimpin oleh Muh. Saleh\r\nï¶	Tahun 1999 - 2000  	: Dipimpin oleh Drs. M. Yusri Tahir\r\nï¶	Tahun 2000 - 2002	: Dipimpin oleh Salahuddin S.Pd\r\nï¶	Tahun 2002 - 2003	: Dipimpin oleh H. Muh. Darwis Ahmad\r\nï¶	Tahun 2003 -  2011       	: Dipimpin oleh Drs. Yuhadi Samad, M. Si\r\nï¶	Tahun 2012 - 2013	: Dipimpin oleh A.Adityawarman,AP,S.STP,M.Adm,KP \r\nï¶	Tahun 2014 â€“ Sekarang	: Dipimpin oleh Akbar Andi Mappa\r\n\r\nKelurahan Bongki merupakan kategori Kelurahan Swakarya yang pada awal berdirinya terdiri atas 2 Lingkungan yaitu lingk. Paruntu dengan Lingk. Benteng. Pada Thn  2002 dengan dikeluarkannya Surat Keputusan Camat Sinjai Utara No.01/I/2002/SUT Tgl 7 Januari 2002 telah ditetapkan pemekaran Lingk. Kelurahan Bongki menjadi 4 Lingkungan yaitu :\r\n1.	Lingkungan Paruntu dimekarkan menjadi 2 Lingkungan yaitu :\r\n- Lingkungan Paruntu\r\n- Lingkungan Popanda\r\n	2.   Lingkungan Benteng dimekarkan menjadi 2  Lingkungan yaitu :\r\n		- Lingkungan Benteng\r\n		- Lingkungan Samaenre   \r\n	Kelurahan Bongki merupakan daerah dataran dan kawasan bebas banjir dengan ketinggian dari permukaan laut Â± 71 m. Suhu udara rata-rata 29-30Â®C. Adapun batas-batasnya adalah :\r\nï¶	Sebelah Utara berbatasan dengan  Kabupaten Bone\r\nï¶	Sebelah Timur berbatasan dengan Kelurahan Balangnipa\r\nï¶	Sebelah Selatan berbatasan dengan Kelurahan Biringere\r\nï¶	Sebelah barat berbatasan dengan Kelurahan Lamatti Rilau\r\nDengan luas wilayah sekitar 4,81 KmÂ², terdiri dari :\r\nï¶	Luas persawahan 	: Â± 114 Ha\r\nï¶	Tanah Kering		: Â± 367 Ha\r\nï¶	Luas Pemukiman	: Â± 28,05 Ha\r\nï¶	Luas Perkebunan	: Â± 62 Ha\r\nï¶	Luas Pekarangan	: Â± 52 Ha\r\nï¶	Tanah Pekuburan	: Â± 52 Ha\r\nï¶	Lainnya		: Â± 188 Ha'),
(5, 'Kelurahan Bongki terletak di ujung Utara Kabupaten Sinjai, berbatasan langsung dengan Kabupaten Bone merupakan salah slah satu dari enam Kelurahan di Kecamatan Sinjai Utara dengan jarak tempuh dari :\r\nï¶	Ibu Kota Kecamatan 		: 1 Km\r\nï¶	Ibu Kota Kabupaten Sinjai	:  45 Km\r\nï¶	Ibu Kota Provinsi		: 230 Km\r\nKelurahan Bongki yang sejak terbentuknya pada tahun 1995 dengan persetujuan  DPRD Nomor 21 Tahun1995 telah mengalami beberapa kali pergantian Lurah, yaitu :\r\nï¶	Tahun 1995 - 1999	: Dipimpin oleh Muh. Saleh\r\nï¶	Tahun 1999 - 2000  	: Dipimpin oleh Drs. M. Yusri Tahir\r\nï¶	Tahun 2000 - 2002	: Dipimpin oleh Salahuddin S.Pd\r\nï¶	Tahun 2002 - 2003	: Dipimpin oleh H. Muh. Darwis Ahmad\r\nï¶	Tahun 2003 -  2011       	: Dipimpin oleh Drs. Yuhadi Samad, M. Si\r\nï¶	Tahun 2012 - 2013	: Dipimpin oleh A.Adityawarman,AP,S.STP,M.Adm,KP \r\nï¶	Tahun 2014 â€“ Sekarang	: Dipimpin oleh Akbar Andi Mappa\r\n\r\nKelurahan Bongki merupakan kategori Kelurahan Swakarya yang pada awal berdirinya terdiri atas 2 Lingkungan yaitu lingk. Paruntu dengan Lingk. Benteng. Pada Thn  2002 dengan dikeluarkannya Surat Keputusan Camat Sinjai Utara No.01/I/2002/SUT Tgl 7 Januari 2002 telah ditetapkan pemekaran Lingk. Kelurahan Bongki menjadi 4 Lingkungan yaitu :\r\n1.	Lingkungan Paruntu dimekarkan menjadi 2 Lingkungan yaitu :\r\n- Lingkungan Paruntu\r\n- Lingkungan Popanda\r\n	2.   Lingkungan Benteng dimekarkan menjadi 2  Lingkungan yaitu :\r\n		- Lingkungan Benteng\r\n		- Lingkungan Samaenre   \r\n	Kelurahan Bongki merupakan daerah dataran dan kawasan bebas banjir dengan ketinggian dari permukaan laut Â± 71 m. Suhu udara rata-rata 29-30Â®C. Adapun batas-batasnya adalah :\r\nï¶	Sebelah Utara berbatasan dengan  Kabupaten Bone\r\nï¶	Sebelah Timur berbatasan dengan Kelurahan Balangnipa\r\nï¶	Sebelah Selatan berbatasan dengan Kelurahan Biringere\r\nï¶	Sebelah barat berbatasan dengan Kelurahan Lamatti Rilau\r\nDengan luas wilayah sekitar 4,81 KmÂ², terdiri dari :\r\nï¶	Luas persawahan 	: Â± 114 Ha\r\nï¶	Tanah Kering		: Â± 367 Ha\r\nï¶	Luas Pemukiman	: Â± 28,05 Ha\r\nï¶	Luas Perkebunan	: Â± 62 Ha\r\nï¶	Luas Pekarangan	: Â± 52 Ha\r\nï¶	Tanah Pekuburan	: Â± 52 Ha\r\nï¶	Lainnya		: Â± 188 Ha');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(11) NOT NULL,
  `slide1` varchar(200) NOT NULL,
  `slide2` varchar(200) NOT NULL,
  `slide3` varchar(200) NOT NULL,
  `slide4` varchar(200) NOT NULL,
  `slide5` varchar(200) NOT NULL,
  `slide6` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `slide1`, `slide2`, `slide3`, `slide4`, `slide5`, `slide6`) VALUES
(1, 'gambar/dt_1505499925.png', 'gambar/12_1505510775.png', 'gambar/12556125_1123045844386071_1332557418_n_1505511452.jpg', 'gambar/15403565_665124777001145_3154043176944140288_n_1505511573.jpg', 'gambar/Variabel pada Program C++.jpg', 'gambar/XAMPP Control Panel.png');

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE IF NOT EXISTS `struktur` (
  `id_struktur` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nama_org` varchar(50) NOT NULL,
  `jabatan_org` varchar(50) NOT NULL,
  `gambar_org` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`id_struktur`, `nip`, `nama_org`, `jabatan_org`, `gambar_org`) VALUES
(27, '19700505 199203 1 007', 'AKBAR ANDI MAPPA', 'Kepala lurah', ''),
(29, '19660815 201001 2 001', 'ZULFARIDAH,S.IP', 'sekretaris', ''),
(30, '19660815 201001 2 001', 'ZULFARIDAH,S.IP', 'sekretaris', ''),
(31, '', 'NUR FAUZIAH', 'anggota sekretaris', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`, `foto`) VALUES
(1, 'Admin', 'admin', 'admin', 1, '../gambar/albire-dentara_1505475758.png');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE IF NOT EXISTS `visimisi` (
  `id_visimisi` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id_visimisi`, `visi`, `misi`) VALUES
(1, 'â€œ Terwujudnya masyarakat Kelurahan Bongki Kecamatan Sinjai Utara Kabupaten Sinjai  Yang bersatu ( Bersih, Elok, Rapi, Sehat, Aman, Tekun Dan Unggul ), melalui Pelayanan yang berkualitas dibidang Penyelenggaraan Pemerintahan, Pembangunan dan Pembinaan kehidupan masyarakat secara profesional,  efektif, efisien dan ekonomis â€.', 'Dalam mencapai visi tersebut diatas, maka misi Kelurahan Bongki Kecamatan Sinjai Utara Kabupaten Sinjai adalah membangkitkan semangat warga masyarakat sehingga yang bersangkutan terdorong secara sadar dalam berpartisipasi dalam berbagai bidang kegiatan, baik bidang Pemerintahan, Pembangunan dan Kemasyarakatan yang selanjutnya masyarakat akan mampu mengelola potensi sumber daya yang mereka miliki, yang ditandai dengan \r\n1.      Meningkatkan disiplin, motivasi kerja dan kinerja Aparatur Kelurahan Bongki  untuk menciptakan Aparatur yang bersih, cerdas, tanggap, ikhlas dan bertanggungjawab sehingga mampu memberikan pelayanan prima yang berorientasi pada kepuasan publik.\r\n2.      Meningkatkan dan mengoptimalkan sarana prasarana yang ada sesuai dengan kebutuhan untuk dapat lebih berdaya guna dan berhasil guna serta ekonomis;\r\n3.      Meningkatkan kualitas pelayanan dalam Penyelenggaraan Pemerintahan, pelaksanaan pembangunan dan kemasyarakatan guna terwujudnya ketentraman,ketertiban dan kesejahteraan masyarakat.\r\n4.      Meningkatkan koordinasi dan kerjasama dengan Instansi terkait untuk kelancaran penyelenggaraan Pemerintahan, pelaksanaan Pembangunan dan pembinaan kehidupan masyarakat.\r\n5.      Menggerakan  semangat warga masyarakat agar lebih pro aktif dan produktif dalam mengelola potensi yang dimiliki serta meningkatkan pemberdayaan masyarakat,semangat gotong royong dan menempatkan masyarakat bukan sebagai objek tetapi sebagai subyek dalam setiap program pembangunan sehingga masyarakat lebih aktif dalam memberikan dukungan, partisipasi dan peran sertannya.\r\n6.      Meningkatkan komunikasi, silahturohmi dan jalinan hubungan yang harmonis dengan segenap elemen dan tokoh tokoh agama, tokoh masyarakat, tokoh partai politik, tokoh pemuda demi terciptanya kehidupan masyarakat yang rukun, damai, tentram, tertib, harmonis, sejahtera dan kondusif.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `gambar_struktur`
--
ALTER TABLE `gambar_struktur`
  ADD PRIMARY KEY (`id_gbr`);

--
-- Indexes for table `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`id_kritik`);

--
-- Indexes for table `luas_wilayah`
--
ALTER TABLE `luas_wilayah`
  ADD PRIMARY KEY (`id_luas_wilayah`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`id_moto`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id_sambutan`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id_sejarah`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id_visimisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gambar_struktur`
--
ALTER TABLE `gambar_struktur`
  MODIFY `id_gbr` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kritik`
--
ALTER TABLE `kritik`
  MODIFY `id_kritik` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `luas_wilayah`
--
ALTER TABLE `luas_wilayah`
  MODIFY `id_luas_wilayah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `id_moto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id_sambutan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id_sejarah` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id_visimisi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"batch","table":"center"},{"db":"batch","table":"student"},{"db":"db_umb","table":"tbl_batch"},{"db":"db_umb","table":"tbl_ujian"},{"db":"db_umb","table":"tbl_soal"},{"db":"db_umb","table":"tbl_peserta"},{"db":"db_umb","table":"tbl_mahasiswa"},{"db":"db_umb","table":"tbl_matauji"},{"db":"db_umb","table":"tbl_user"},{"db":"db_umb","table":"tbl_menu"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma_relation`
--

INSERT INTO `pma_relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('db_poligigi', 'tb_transaksi', 'id_pasien', 'db_poligigi', 'tb_pasien', 'id_pasien'),
('db_poligigi', 'tb_transaksi', 'id_penyakit', 'db_poligigi', 'tb_penyakit', 'id_penyakit'),
('db_klinik', 'tb_transaksi', 'id_pasien', 'db_klinik', 'tb_pasien', 'id_pasien'),
('db_klinik', 'tb_transaksi', 'id_penyakit', 'db_klinik', 'tb_penyakit', 'id_penyakit');

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_umb', 'tbl_matauji', '{"sorted_col":"`tbl_matauji`.`id_matauji` ASC"}', '2018-03-02 10:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-04-18 22:27:22', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(3, 'admin', 'admin'),
(4, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE IF NOT EXISTS `perusahaan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `nama_pekerjaan` varchar(50) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `jenis_pekerjaan` varchar(50) NOT NULL,
  `gaji` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `deskripsi_pekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `nama_perusahaan`, `nama_pekerjaan`, `nama_kota`, `jenis_pekerjaan`, `gaji`, `email`, `nomor_telepon`, `deskripsi_pekerjaan`) VALUES
(6, 'Perusahaan 1', 'Manager', 'Makassar', 'Part Time', '12000000', 'perusahaan1@gmail.com', '082365555555', 'Persyaratan : Ktp, Ijazah Terakhir'),
(7, 'Perusahaan 2', 'Office Boy', 'Medan', 'Full Time', '800000', 'perusahaan2@gmail.com', '082659545665', 'Persyaratan : ktp'),
(8, 'Perusahaan 3', 'Directure', 'Bandung', 'Full Time', '20000000', 'perusahaan3@gmail.com', '085222222222', 'persyaratan : ktp, kk , ijazah SI/D3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perusahaan`
--

CREATE TABLE IF NOT EXISTS `tbl_perusahaan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perusahaan`
--

INSERT INTO `tbl_perusahaan` (`id`, `nama_perusahaan`, `email`, `nomor_telepon`) VALUES
(3, 'Perusahaan 3', 'perusahaan3@gmail.com', '085222222222'),
(4, 'Perusahaan 2', 'perusahaan3@gmail.com', '085222222222'),
(5, 'PT Mayora Grup', 'mayora1@gmail.com', '082365555555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_perusahaan`
--
ALTER TABLE `tbl_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_perusahaan`
--
ALTER TABLE `tbl_perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;--
-- Database: `security`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE IF NOT EXISTS `biodata` (
  `id` int(11) NOT NULL,
  `npm` varchar(15) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jenkel` char(15) NOT NULL,
  `alamat` varchar(15) NOT NULL,
  `jurusan` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `npm`, `nama`, `jenkel`, `alamat`, `jurusan`) VALUES
(1, '2014020031', 'wiwik', 'p', 'abdesir', 'TI');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `id` int(11) NOT NULL,
  `nidn` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `matkul` varchar(20) NOT NULL,
  `jenkel` char(2) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `matkul`, `jenkel`, `tgl_lahir`) VALUES
(1, 1123456, 'wiwik', 'rpl', 'p', '1997-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `passw`
--

CREATE TABLE IF NOT EXISTS `passw` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passw`
--

INSERT INTO `passw` (`id`, `username`, `password`) VALUES
(1, 'wiwik', 'wiwik'),
(2, 'ida', 'ida');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passw`
--
ALTER TABLE `passw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passw`
--
ALTER TABLE `passw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `seminarweb`
--
--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban`
--

CREATE TABLE IF NOT EXISTS `tbl_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('Yes','No','','') NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matauji`
--

CREATE TABLE IF NOT EXISTS `tbl_matauji` (
  `id_matauji` int(11) NOT NULL,
  `nama_matauji` varchar(20) NOT NULL,
  `aktif` enum('Yes','Not','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE IF NOT EXISTS `tbl_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_user` int(4) NOT NULL,
  `id_matauji` int(4) NOT NULL,
  `point` int(4) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panitia`
--

CREATE TABLE IF NOT EXISTS `tbl_panitia` (
  `id_panitia` int(11) NOT NULL,
  `nama_panitia` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settingsoal`
--

CREATE TABLE IF NOT EXISTS `tbl_settingsoal` (
  `id_set` int(11) NOT NULL,
  `jumlah_soal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE IF NOT EXISTS `tbl_soal` (
  `id_soal` int(11) NOT NULL,
  `id_matauji` int(11) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL,
  `pilihan_a` varchar(100) NOT NULL,
  `pilihan_b` varchar(100) NOT NULL,
  `pilihan_c` varchar(100) NOT NULL,
  `pilihan_d` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `gambar_user` varchar(50) NOT NULL,
  `no_pendaftaran` varchar(20) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` enum('Yes','No','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waktu`
--

CREATE TABLE IF NOT EXISTS `tbl_waktu` (
  `id_waktu` int(11) NOT NULL,
  `Waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `tbl_matauji`
--
ALTER TABLE `tbl_matauji`
  ADD PRIMARY KEY (`id_matauji`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_panitia`
--
ALTER TABLE `tbl_panitia`
  ADD PRIMARY KEY (`id_panitia`);

--
-- Indexes for table `tbl_settingsoal`
--
ALTER TABLE `tbl_settingsoal`
  ADD PRIMARY KEY (`id_set`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_matauji`
--
ALTER TABLE `tbl_matauji`
  MODIFY `id_matauji` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_panitia`
--
ALTER TABLE `tbl_panitia`
  MODIFY `id_panitia` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
--
-- Database: `ukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nm_barang`, `hrg_satuan`, `stok`) VALUES
(1, 'Teh Pucuk', 2500, 10),
(2, 'Hardianti', 25000000, 1),
(3, 'Susu Ultra', 4500, 10);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `hrg_satuan` double NOT NULL,
  `qty` int(11) NOT NULL,
  `status` enum('1','0','','') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `nm_barang`, `hrg_satuan`, `qty`, `status`) VALUES
(1, 2, 'Hardianti', 25000000, 12, '0'),
(2, 1, 'Teh Pucuk', 2500, 12, '0'),
(3, 2, 'Hardianti', 25000000, 12, '0'),
(4, 3, 'Susu Ultra', 4500, 2, '0'),
(5, 3, 'Susu Ultra', 4500, 1, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
