-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 28, 2022 la 09:56 AM
-- Versiune server: 10.4.18-MariaDB
-- Versiune PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `lrv_db`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_27_125030_add_fileds_to_users_table', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'profesor',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.jpg',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `photo`, `phone`, `address`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$Jh2j4V/kSJn5/Mb2ti2hwumEYcHlAnCwtEcT84sE/ALz3O6Xp6bK2', NULL, '2022-01-27 12:22:54', '2022-01-27 12:22:54', 'admin', 'default.jpg', '+4089 542 327', 'Romania, str Uranus nr 4 bl d45'),
(2, 'Cindy Macejkovic', 'mayer.kamron@example.net', '2022-01-27 12:22:54', '$2y$10$jo5sc7wDn8XncdFVEMpU6Oa7Ij3R1.7bzihf5RPHo5MQBOj/3S1xS', 'mslcjgSvJc2gDCNqnQhMCbf9oQxdnNsfOgT3dOGDyweADOZ21rLXn3fXMdFy', '2021-07-27 09:10:11', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17699172106', 'Odessaton 187 Bogan Dam Apt. 156'),
(3, 'Jennings Ruecker PhD', 'bartell.felipe@example.com', '2022-01-27 12:22:54', '$2y$10$h/Z.dWWbZrZMDZ47A3o0w.Z440NFIkipuRCwh/BTaf065Z76jVMCG', 'L14cKPIKnG', '2021-05-14 10:05:41', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13159865816', 'New Londonview 8123 Vallie Mountain Apt. 375'),
(4, 'Patsy Rau', 'zshields@example.net', '2022-01-27 12:22:54', '$2y$10$xqknhicfXoOml3SiHBdhQ.OBvma.pMk4psukbRU3oBwTilXrTxPoa', '7DcRk1txcH', '2021-06-11 01:43:03', '2022-01-27 12:23:02', 'student', 'default.jpg', '+18704406597', 'Krystalstad 291 Belle Knoll Suite 263'),
(5, 'Earlene Dickens', 'verner77@example.com', '2022-01-27 12:22:54', '$2y$10$WqstJwg0T.ctpGY5LOzQOeD33rot/yGK18QqHab0JYPbRPFb7SNDe', 'lT8wfnYHZz', '2021-08-02 15:31:58', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+15313930181', 'New Stuartmouth 28289 Ruthie Route Suite 566'),
(6, 'Alin Steuber', 'maddison15@example.org', '2022-01-27 12:22:55', '$2y$10$9VF4TuPuQU57JOGyRoqjKOlIfpU305gbDWQY/s5XTEcf7HJdx4.Ua', 'H7Mh15awbPuCqGMFZfGhyNDyLz6vAJZ5um2QrXhTd96Qy8mABu6ei1wIiOTW', '2020-05-15 06:47:31', '2022-01-28 06:53:48', 'student', 'AbdielSteuber_1643316018.jpg', '+12209852993', 'Lake Dianna 9927 Huel Trafficway Suite 659'),
(7, 'Caesar Walsh', 'vwatsica@example.net', '2022-01-27 12:22:55', '$2y$10$Enk3S7PpmN/WllegI9Swo.RDi5DvKN/UPM3VuY69FrjguJ5GXjjKy', 'yLv3bGpDTb', '2020-10-27 08:40:38', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13172973064', 'Niaton 74468 Stoltenberg Alley'),
(8, 'Mae Lockman', 'alysa45@example.net', '2022-01-27 12:22:55', '$2y$10$ph2rEwEDjOeTQil5KGS/1.PEzitlBNWo3Cy8cXnt.dWHg1i4Kq2Um', 'bUqAotEWgY', '2021-07-11 09:23:30', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+19523824787', 'Harveyland 58715 Pamela Inlet'),
(9, 'Kylie Effertz', 'savanna.watsica@example.net', '2022-01-27 12:22:55', '$2y$10$OFZ83ZMG0JFh9NZTGnEETu.w8hV/l7CgH.0TgydCy0r2Z9CQHZMau', 'y7XXVqHktx', '2020-11-12 20:44:29', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17209264543', 'West Jacksonborough 568 Kutch Extension'),
(10, 'Zola Streich', 'zieme.daija@example.com', '2022-01-27 12:22:55', '$2y$10$yrim1mjIAJ26DNJHYa7G4uZ036I7Do136/jIvDcnpGiEh7hJJ0Jru', 'zNdczPqbAv', '2020-08-14 03:40:01', '2022-01-27 12:23:02', 'student', 'default.jpg', '+14353194874', 'Friesenstad 219 Rogahn Inlet'),
(11, 'Mr. Isac Wisoky', 'ritchie.kamryn@example.net', '2022-01-27 12:22:55', '$2y$10$7u6eB3d1y3YA1s0CyJZq2eKsr/rN7d6sMn7leNijLjo4./ryw4C7u', '83fnR1UNPT', '2020-12-31 04:30:53', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17622125882', 'South Lylashire 5061 Nitzsche Passage Apt. 454'),
(12, 'Beth Daugherty', 'deanna17@example.com', '2022-01-27 12:22:55', '$2y$10$0z/eJBbKnGKED7JRLCr9BOlbEWvjTAeTFnzMrq6IxKfalo2rgKBim', 'ZAfhg1RDMm', '2020-10-09 15:18:10', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+12628422414', 'South Emiliaberg 9389 Torphy Canyon'),
(13, 'Prof. Anabel Thiel', 'hharris@example.net', '2022-01-27 12:22:55', '$2y$10$PnvW0.ygCJ1V1vdYHJGcYe79vqPRrxB7ZT.Ane6fbIq59BOPBmNOu', 'GJvuu98SwX', '2020-08-16 21:28:39', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17402405500', 'West Jerome 1714 Kianna Flat'),
(14, 'Letitia Purdy', 'hardy.crooks@example.net', '2022-01-27 12:22:55', '$2y$10$8jVSn.zPyFlx/aYUbK4iy.ECKAg2aQBW/VFO8pyzPWy/nQ5ufe/Am', 'ktMImWBY2f', '2021-10-10 13:43:22', '2022-01-27 12:23:02', 'student', 'default.jpg', '+14015026388', 'Port Janessaport 308 Michelle Common Suite 837'),
(15, 'Olaf Gusikowski', 'alene.hintz@example.org', '2022-01-27 12:22:55', '$2y$10$TnNXOklXiWnxYd.B6mScbuUm3McFoSK6MWYwQDeoOc4B3KNxTJWtK', 'enUs3HLm7V', '2021-09-23 02:35:04', '2022-01-27 12:23:02', 'student', 'default.jpg', '+12484012222', 'Port Zeldashire 46706 Fay Port Apt. 649'),
(16, 'Allison Lowe', 'ashlee.hill@example.net', '2022-01-27 12:22:55', '$2y$10$aGC52UH2BSDTbC09L9lKrO3.VBFTkpmSDElE5r293wNmx9PdgdqHW', 'rx5VlNmK5t', '2021-02-20 21:59:02', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17048420067', 'East Aracely 889 Elfrieda Road'),
(17, 'Mrs. Leanne Waelchi DVM', 'wuckert.elody@example.com', '2022-01-27 12:22:55', '$2y$10$2wBnFYWiWa0X5yOiKBquL./yiYKCXdRjAJ.3NqQorkp1E07pzotle', '3tECp48Y2J', '2021-11-15 04:16:26', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15394166790', 'South Neil 3481 Frieda Junctions'),
(18, 'Gilda Frami', 'schuppe.webster@example.org', '2022-01-27 12:22:55', '$2y$10$pEy7buq17.tmynI38A.hOer3m1xsnsUqq.UMAeH2pA8x5dJlmOJ/2', 'DV85IW5uUs', '2020-08-24 05:41:01', '2022-01-27 12:23:02', 'student', 'default.jpg', '+16789931936', 'Finnbury 8776 Sabina Course Apt. 688'),
(19, 'Dalton Hodkiewicz', 'rhegmann@example.net', '2022-01-27 12:22:56', '$2y$10$Yn6UnR2pZ9FMvH2RCFbHFOFz5VrPiGHTuVmOfKAKmbuBO6JgQCKVi', '3HB6zET84N', '2021-04-15 21:29:22', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14157892220', 'Kaitlinview 918 Ralph Mall'),
(20, 'Kenyatta Kozey', 'landen52@example.com', '2022-01-27 12:22:56', '$2y$10$O/dlzb2akKIdIt4JBJA1c.QImjZCP7tPDMBjtF7Y.29.NM8sSNOgG', 'hMPOhEpIE1', '2020-12-16 05:24:23', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18722394288', 'Walshbury 54587 Rolfson Squares'),
(21, 'Hilbert Auer', 'linnie.feil@example.net', '2022-01-27 12:22:56', '$2y$10$8U.cChB7BdvheQj47OGwue82j5MhUIBB7yfuGnjReyMCTXMGHIU2K', 'VHpD4hDSlp', '2021-11-07 21:37:15', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14635789935', 'South Julietport 64896 Eugene Prairie Suite 750'),
(22, 'Ernest Legros', 'gertrude87@example.com', '2022-01-27 12:22:56', '$2y$10$HKeUswAwQ/paTFIi0aw1IOELfTazJ2DA7Dw0voWUAMbknKxZEhZj2', 'C1Tc8wzOYm', '2021-09-03 05:35:26', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+12536932183', 'Ebertmouth 677 Jackeline Place Suite 222'),
(23, 'Dr. Myrtice Cartwright', 'elnora66@example.org', '2022-01-27 12:22:56', '$2y$10$rFzRlKsc32NHNS6aH32bwel8vQAE6iI3yNZ8LoYHoCaIT3C9ccjl2', 'CD0oJ94UNA', '2020-11-03 02:51:15', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15516929643', 'Zoramouth 7166 Denesik Plaza Apt. 307'),
(24, 'Elisha Grant', 'bradtke.jett@example.org', '2022-01-27 12:22:56', '$2y$10$ZI1TeUF7BzdTIkD6cTYJWOTtAT5mzZu3PWUQgnuF6PhtzUcpeBnZu', 'TdrI03AQIR', '2020-03-03 12:53:25', '2022-01-27 12:23:02', 'student', 'default.jpg', '+19347236434', 'Maritzamouth 5408 Anderson Village Suite 703'),
(25, 'Prof. Kimberly Konopelski IV', 'wroberts@example.net', '2022-01-27 12:22:56', '$2y$10$weiwqwrg.vbBIqUmIdgGmeOp34wy/pNtWU.33nC8c67itEJqx6qPq', '8WZSBr23Xi', '2021-09-16 08:24:52', '2022-01-27 12:23:02', 'student', 'default.jpg', '+16515741565', 'Kirstinhaven 15116 Moore Lakes'),
(26, 'Halie Heathcote', 'jziemann@example.org', '2022-01-27 12:22:56', '$2y$10$dJlNrsbT3Gz1bFaIVMAey.yJT81yADbi0smp0EUeFsFK3fPIwn38G', 'sdvROLnIOg', '2020-08-07 03:10:55', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13307565018', 'Rempelport 5919 Heidenreich Pass Suite 316'),
(27, 'Maud Kovacek', 'arthur88@example.net', '2022-01-27 12:22:56', '$2y$10$AOb2tvHrzABiEvFgx7v48.6pAhRoSRJlIkiBtcB6xJGuNBNd3d7UO', 'GoQdQ7rVCu', '2020-03-08 01:18:48', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13416710631', 'Lake Jameyberg 7017 Terrence Mission'),
(28, 'Vincenza Homenick', 'mikayla89@example.net', '2022-01-27 12:22:56', '$2y$10$g4anEUBe4mL1FVx2AT862uUAdpuNNuQS77abtSo00XbnFI5oioiGe', 'sMQIYgWfh7', '2020-11-23 10:37:02', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15208179150', 'West Ladarius 7661 Rolfson Vista Apt. 813'),
(30, 'Lew Vandervort', 'hcorkery@example.com', '2022-01-27 12:22:56', '$2y$10$E8ZvtwxvmXMRuQVOV6xQrePNJEMfMOYhU/ysbZ.XPTqM0eqCV4B66', 'KT607XgPiX', '2021-05-31 20:07:36', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17472674006', 'Darienburgh 72435 Janis Lodge'),
(31, 'Elisa Smith', 'green.karlee@example.com', '2022-01-27 12:22:56', '$2y$10$kQ/0ZqrsbgrHxwPV2dh0Oev5w533UKzwj5YxmTDIocrS6N3PyYpn.', 'LqA7HvA1ug', '2020-09-18 16:06:09', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18585367736', 'Margotchester 9434 Zachary Pass'),
(32, 'Kylee Mayert', 'joseph93@example.com', '2022-01-27 12:22:56', '$2y$10$Vh54ib1vpsz3OIaR74qTZexSbhccl4mHlpIJ0wlcOpvZrAQIgTIDu', 'kxEvSLvKeQ', '2020-09-19 14:22:17', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17048653742', 'Port Rosella 777 Schamberger Isle Apt. 903'),
(33, 'Dayna Torp', 'aurelie.streich@example.net', '2022-01-27 12:22:57', '$2y$10$E3ggxqpBJDnBSeGxg1NO8O3M1VrF0W6x85hVa.XCtF6dnCkCYCMoe', '3Vac24Plmg', '2022-01-25 14:39:32', '2022-01-27 12:23:02', 'student', 'default.jpg', '+19793898197', 'South Aaronhaven 640 Lenora Expressway Apt. 675'),
(34, 'Christop Volkman', 'rebekah.hauck@example.net', '2022-01-27 12:22:57', '$2y$10$OHbeFjhqiGL7tQ1cfVcXduBH7sb81zCGzcYxUwQyUthWDZoaC/7S2', 'D88YXxfQFM', '2021-07-04 07:25:58', '2022-01-27 12:23:02', 'student', 'default.jpg', '+16054622268', 'Hilarioview 3163 Will Flat Apt. 893'),
(35, 'Tad Schultz', 'lempi.zieme@example.com', '2022-01-27 12:22:57', '$2y$10$6tButBZI8Kli2.BFsKS...hwUru9abldKLxmr8F4u7KTUKcOo2eba', 'HyDtgyqjre', '2021-05-19 10:11:03', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13648198969', 'East Ayana 4357 Rhiannon Plaza'),
(36, 'Dr. Pattie Heller I', 'udach@example.com', '2022-01-27 12:22:57', '$2y$10$fC.d6vnQYuRf5Z.TDAK6xeQGOEJ7ubICi6D6YB8gsnbO1iPthyfY2', 'bWQjKHaVLV', '2020-11-04 06:52:42', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14636466456', 'Swiftchester 95423 Hilbert Crescent'),
(37, 'Reuben Hagenes', 'graham.erdman@example.com', '2022-01-27 12:22:57', '$2y$10$CcyRTw4jFSI0UnNbGRMmve1APx5jMJM4YJ4bVHW2VMA3o3.r1G/12', 'g16j86BDn0', '2020-09-22 03:56:26', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14588657926', 'Rogerborough 43691 Torphy Points Apt. 338'),
(38, 'Aron Fisher', 'hollis32@example.net', '2022-01-27 12:22:57', '$2y$10$Jco0w6PyrisbVDwkw8BQLepf5AASHq2iJSvBWOvCkW2vqUWXJroDC', 'ZEI1QiwZOU', '2021-09-10 04:59:57', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14639688800', 'East Aglaemouth 1639 Jewell Stream Apt. 571'),
(39, 'Granville Reinger Jr.', 'cboehm@example.net', '2022-01-27 12:22:57', '$2y$10$1LOcYDas2Skf.OnO0yfobua2NYDfsV1m8/.6X374km3SJcKVl91pK', 'Y0A61rxnwv', '2020-12-14 04:19:36', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18704091172', 'North Rodrick 31854 Berneice Inlet'),
(40, 'Reyna Bahringer', 'lacey47@example.com', '2022-01-27 12:22:57', '$2y$10$kQou/oeAf80RZD.f7EaFp.DqYcLF6DvpBfUMEVKeQLacqH4L.fEVm', 'LpAYhHCjNH', '2020-08-17 19:42:14', '2022-01-27 12:23:02', 'student', 'default.jpg', '+19409433555', 'Timmyview 9175 Roselyn Estate Suite 210'),
(41, 'Henri Huel', 'wtorphy@example.net', '2022-01-27 12:22:57', '$2y$10$8bbIlpcfLASUWy5wVsM5uOS5XVujqyrHd.eOw7zBCczJMiZpGbpTG', 'agXyoRSDqS', '2021-02-04 16:26:06', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13138071843', 'Vandervortburgh 10586 Runolfsson Brook'),
(42, 'Terrence Dach', 'ross96@example.org', '2022-01-27 12:22:57', '$2y$10$ZAcuKf/dUr9jnGE/9JJ2D.tJA/D/rj7Ra02AdLekhvzGdbWD7D4la', 'yxj0PmXLfU', '2020-07-18 08:05:00', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18433177518', 'Babymouth 565 Jeff Branch Suite 988'),
(43, 'Laura Bruen MD', 'tania.skiles@example.net', '2022-01-27 12:22:57', '$2y$10$BFEg5PydH7TYNjkY/kSCpe5mIXppPOnKZNloBFVE16qbvD7S2jvGq', 'suA9HhbyyD', '2021-04-14 21:50:27', '2022-01-27 12:23:02', 'student', 'default.jpg', '+12696289436', 'Riceview 578 Mohammad Throughway Suite 786'),
(44, 'Valentin Batz', 'rkutch@example.net', '2022-01-27 12:22:57', '$2y$10$lfEzEQS2IyxRT4Im05dvYeT85Se20CR3j59Z57FukGAnTrC6qOMZG', 'zqhZpg661J', '2021-09-04 15:28:50', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17276642656', 'Blockmouth 8616 Shanny Stream'),
(45, 'Else Kassulke', 'bgoyette@example.com', '2022-01-27 12:22:57', '$2y$10$VTDtaXdrQ35H5HeMIu/OAebM9vcUEs5YFra3/nUHYOj2wufUjvvWm', 'iz1pDRpJjS', '2020-08-27 15:40:29', '2022-01-27 12:23:02', 'student', 'default.jpg', '+12546088933', 'New Taraville 472 Schuster Mills'),
(46, 'Terrence Jacobs III', 'lonie.vonrueden@example.net', '2022-01-27 12:22:58', '$2y$10$3az.42shQBUjcoxXScLCQ.eVaYRHvvF86qeut7pj77axx.Al.FiLS', 'BKG8bU6xTG', '2021-01-13 22:30:38', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15738445729', 'Kubland 995 Keely Heights'),
(47, 'Mr. Reed Krajcik II', 'zboncak.constance@example.org', '2022-01-27 12:22:58', '$2y$10$GP/fUPzdw/jD57cu7EpeFOxn0CLNjkIDb7EhMl8T8N8BOQikoglvK', 'mZdJT105Rp', '2020-09-18 21:08:17', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18202829162', 'Schmelershire 42619 Elenor Locks Apt. 202'),
(48, 'Bernardo Swift', 'glenna.pollich@example.com', '2022-01-27 12:22:58', '$2y$10$sQnGxpffVLGmdmkARlYJ4uH.KeeqrVieMyGOrK.l8xRV.K1Jyhe1a', 'oFeTAtfqg2', '2021-09-16 23:13:28', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17133263332', 'Dickinsonside 277 Mohr Extensions Suite 447'),
(49, 'Viola Hamill', 'hamill.jamal@example.net', '2022-01-27 12:22:58', '$2y$10$x2/GaDqXRjZd8X5Vzrgg1OG82IO7Rf1LcA9laQ5GZgmaXdxNe.ovG', 'krETqRTnEG', '2021-12-10 21:10:11', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+16577921794', 'East Janick 9256 Marcelina Terrace Suite 939'),
(51, 'Dayna Leuschke', 'buck07@example.net', '2022-01-27 12:22:58', '$2y$10$l34WbQITr/PuX9linaJ5F.li7vgrsxU/.UkXPteeDBbIOh9Mq9WoK', '0al1G49JgV', '2021-02-20 20:28:56', '2022-01-27 12:23:02', 'student', 'default.jpg', '+14633789912', 'South Kaelyntown 816 O\'Connell Locks Suite 248'),
(52, 'Maymie Konopelski', 'verda87@example.org', '2022-01-27 12:22:58', '$2y$10$VAjrOGFFKwEJQbHBrt8.oO/7kShbAd5.mm79j59FRDgnmno/dFsYG', '2pHBDDkeOK', '2020-07-06 09:35:11', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14403528993', 'Immanuelmouth 31493 Luz Fall'),
(53, 'Ms. Nola Fadel Jr.', 'ncummerata@example.org', '2022-01-27 12:22:58', '$2y$10$Fa9f53DrfSy0ym7ku2cHzO8.QP8FIs7XhkQfWa8/QT/uojKOQB7bC', 'L1x3daxKJc', '2021-02-01 17:35:19', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15415338815', 'Corkerymouth 67459 Cole Wells'),
(54, 'Maribel Blanda', 'jordy.adams@example.com', '2022-01-27 12:22:58', '$2y$10$HAFbRCayqyXa8HAeyZTD9uaLX0JWehrkkbH47IS9jI5da83iwlEpu', '0vhCfMcfaR', '2021-08-01 03:24:46', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+12296313265', 'East Averychester 4265 Williamson Causeway'),
(55, 'Kareem O\'Reilly', 'ferne.rippin@example.com', '2022-01-27 12:22:58', '$2y$10$/KXs/IEXlo/f28n0/SRXmOodde2vE2opKBM79MYX1GqvdHGtGEIUG', 'NPdR5sPY6K', '2021-10-24 13:50:02', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+16503498459', 'Bertrandland 139 Schmeler Streets Suite 005'),
(56, 'Dr. Devonte Kling Sr.', 'xmayer@example.com', '2022-01-27 12:22:58', '$2y$10$WsDjAa85wOOB3hsKoBoFkulQCbjHavKy0h385bt7i6BY68upUksCW', '8ZRWw9P6Ue', '2021-09-15 02:53:52', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+19845819975', 'East Eleazar 99654 Erling Radial Suite 868'),
(57, 'Orlo Adams', 'samson.hills@example.net', '2022-01-27 12:22:58', '$2y$10$WNxd2ozaIampaKHIwaXYfeCwi8/D8bMkNj4RYhyCyKXcFVso8wMGy', 'IcMKrJugi9', '2021-02-17 03:05:36', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+15863037583', 'Norrisside 84663 Alexie Plains'),
(58, 'Marietta Runolfsson', 'vjaskolski@example.org', '2022-01-27 12:22:58', '$2y$10$i9kme4JwMfMZrevjgHzbWOQH93bxIGocXCsTA/QSxPpZxo4yE24RK', '4G3QJZUhSt', '2020-10-19 07:28:13', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13216246634', 'Leuschkefurt 815 Carli Summit'),
(59, 'Maggie Hauck', 'jackie63@example.net', '2022-01-27 12:22:59', '$2y$10$BJrJcTGp5xqJ1QWCQ/0DGe9FdRVKL43iEe64bqjupjy41su4KMvES', 'k2QYyws4w6', '2021-11-06 20:31:50', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13805220775', 'East Ewellchester 765 Bashirian Dam Apt. 751'),
(60, 'Dillan Haag', 'nbosco@example.net', '2022-01-27 12:22:59', '$2y$10$HxFtqSABqSsQAmqYopdWfuo9vqCY1QsxWmZ24rJ0hmhqRgFfSd6sS', 'ZbY2W3pTmN', '2020-09-01 21:42:31', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17744261128', 'Lake Zackery 20473 Morar Grove'),
(61, 'Mr. Russ Prosacco III', 'maverick.mosciski@example.org', '2022-01-27 12:22:59', '$2y$10$rDtvHbxqAHcsQvieDTyxs.R8PooP8kcqk0FwIEH9a7jTAKEePBG7S', 'EWNCztfu9Q', '2021-07-29 14:22:05', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13512931616', 'Lionelburgh 810 Ruthie Walk Suite 665'),
(62, 'Ladarius Stark', 'gerhold.ivah@example.com', '2022-01-27 12:22:59', '$2y$10$aOM8ErAsQRax0B4y5TMUR.eFANoFY10fPh0F5rPqaGxxov8/4kBQq', 'tvSq0WqBAF', '2021-06-12 23:50:03', '2022-01-27 12:23:02', 'student', 'default.jpg', '+19848387144', 'New Ara 83885 Larson Circles'),
(63, 'Neil Grant', 'connelly.gwen@example.net', '2022-01-27 12:22:59', '$2y$10$AtdFRuvyCY4LzUYuSlwdjev/UOx68xzIThoJKwgMha7nE2osRxcs.', 'PtxyKrrInV', '2020-08-02 14:46:24', '2022-01-27 12:23:02', 'student', 'default.jpg', '+14238307196', 'Port Matteo 236 Gleason Springs Apt. 588'),
(64, 'Ms. Frederique Smith', 'etha.langworth@example.com', '2022-01-27 12:22:59', '$2y$10$Vxx9GoVR4775Og3By4KPRedJ/KiqjtvuHav/.LS3ryEPWX96TVS/G', 'WpG6rQLjj3', '2020-10-07 17:40:16', '2022-01-27 12:23:02', 'student', 'default.jpg', '+12548559763', 'Dickifurt 1351 Herbert Estates Suite 971'),
(65, 'Howard Lind', 'kessler.aimee@example.org', '2022-01-27 12:22:59', '$2y$10$5kcYpEgB1bE1Q7lC4TpLCuCFJT8onnokryrqWwtDu5H8UahgwuXx2', 'tye7DyNv0L', '2021-10-10 01:01:01', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17176345172', 'Gerardburgh 4382 Kuvalis Orchard Suite 555'),
(66, 'Emmie Casper I', 'hollie96@example.com', '2022-01-27 12:22:59', '$2y$10$I/ril5oACVnW4O2LTFxgAutOglUywPQTmxoR12BB4X.DY7kR0l3Qu', 'KaA14JwD0Q', '2021-09-22 14:20:41', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+16413757049', 'North Nathanialview 28547 Emard Drives'),
(67, 'Oliver Hettinger MD', 'reed88@example.org', '2022-01-27 12:22:59', '$2y$10$C/4yc7mEtWL.gbDCkGzauORBoX7.KcFy5Ia7gg.mznP2ZyywzeMHm', 'gJnetBgKi1', '2022-01-17 13:25:48', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17154009698', 'West Benny 25829 Virgie Turnpike Apt. 149'),
(68, 'Prof. Angus Becker PhD', 'jermey80@example.com', '2022-01-27 12:22:59', '$2y$10$Mh0q2aSJTtnMFmx2oVZCWOecbFV7e54eaORnjb/v8bx871NmNNM/G', 'vtqxdTwsrg', '2021-07-26 22:18:02', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18634365784', 'Port Angeloborough 751 Eleonore Landing Suite 388'),
(69, 'Wilbert Zieme MD', 'xdare@example.com', '2022-01-27 12:22:59', '$2y$10$6Fzpr76EIhRrH2Q6bDSKreFBMFX0iVfhodUvtWzXq0rHJOlGm2Jny', 'jhOGDGigG4', '2020-03-09 13:07:16', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18657685514', 'North Bartholomeland 82299 Lemuel Canyon'),
(70, 'Winnifred Gorczany PhD', 'runolfsdottir.anissa@example.com', '2022-01-27 12:22:59', '$2y$10$PPeMD03pBCD8s8xOW7ojvOK5v3FaIqbNL8NO2W8Cbw7alkyOgnfmm', 'tZ8ujQBg3l', '2021-01-26 11:15:30', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18432004387', 'East Elmore 415 Bergnaum River Apt. 867'),
(71, 'Ms. Fatima O\'Connell', 'kadin.west@example.org', '2022-01-27 12:22:59', '$2y$10$F1Jmd4ciBmQ4mKckmoSCOeSIDZ9bpUqa2IpcP5/xVUUioq04/hxhW', '5eAZBD8p6V', '2020-09-03 14:29:01', '2022-01-27 12:23:02', 'student', 'default.jpg', '+16299492351', 'New Eduardomouth 959 Ruthie Curve Apt. 960'),
(72, 'Dr. Darron Okuneva II', 'daniel.jaylon@example.com', '2022-01-27 12:22:59', '$2y$10$OtNvnk5ScExgw8fgkugbcOaJKM85tIfP7NYdHOBdhijsXWii4qrW2', 'GvRsR4z0Tl', '2021-09-16 13:29:11', '2022-01-27 12:23:02', 'student', 'default.jpg', '+17146929299', 'East Mckenzieton 810 Imelda Square Suite 414'),
(73, 'Kasandra Bernhard', 'lakin.reggie@example.com', '2022-01-27 12:23:00', '$2y$10$nfz0MXOE1OKr0yML6IKkIejwEBnNaK5Tg.4Voi8qUSs5NM5uwer16', 'WRVq8nWLVa', '2021-07-12 08:09:13', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17072179820', 'Merlechester 919 Omer Trafficway Apt. 599'),
(74, 'Lisette Zemlak', 'devan12@example.com', '2022-01-27 12:23:00', '$2y$10$i6fmT3pWsPehhLekRyWnQuc1NYxOWJmSiwzCb5GVOr6zXkEoreO3e', 'xpr5h5zZZo', '2021-12-25 15:06:18', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13613528832', 'Port Ernestfort 895 Grady Junctions'),
(75, 'Joelle Stark', 'qabshire@example.org', '2022-01-27 12:23:00', '$2y$10$25Gv7qZ4qZvWlMkgJ57SbeN6FgNmRq9CxKKdGXRROTO5CCcIOueGW', 'BMqgho4AZY', '2021-07-22 15:59:02', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17869271578', 'Lake Wilmafurt 1037 Morris Key Suite 740'),
(76, 'Jeff Ortiz III', 'jshields@example.com', '2022-01-27 12:23:00', '$2y$10$t.sEgI2yHxGfOF31w8gHsuLnmt/E2Ia0GAd0n4e6dmzNYw7Qwq9tu', 'v8WGGqriN6', '2020-06-08 17:09:04', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+19069936085', 'Kayamouth 478 Toy Ford Apt. 006'),
(77, 'Birdie Heathcote', 'jefferey.dare@example.net', '2022-01-27 12:23:00', '$2y$10$1B1bg.qQ0cQndLCjQfy5rOdPfex1WrBmBhD704Ou/78xT2KrX44U6', 'y3mBwi6eLR', '2020-02-27 07:08:20', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+19284857590', 'Port Dixie 9185 Rath Ranch'),
(78, 'Prof. Jaeden Koepp', 'omaggio@example.com', '2022-01-27 12:23:00', '$2y$10$z.liufZa4HkeuY5N5Al3DeUzAksdXCPPxX0TDf9bVR5b9oLQDz8Xq', 'tjeaBj6L3V', '2021-09-23 00:26:02', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13473130861', 'Anastasiabury 794 Gennaro Crest'),
(79, 'Prof. Breanna Wintheiser', 'cfarrell@example.com', '2022-01-27 12:23:00', '$2y$10$7dtRLGUSQX55F68JDFMSJ.x0MZ/7P/rX9X5krng4IZ.70yj/u3LGq', 'ZycSDdFwnK', '2020-08-30 07:24:18', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+12295373732', 'Lake Elinorchester 831 Bailey Loop Suite 372'),
(80, 'Larue Hammes', 'chester08@example.org', '2022-01-27 12:23:00', '$2y$10$p.0VSVj0nBq3zJizCbXDPOMYI9afnMk3q0cD.mB5X.HBxHkYOqm66', 'HpR4wWtQLF', '2020-11-20 11:28:11', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+19718458453', 'South Rosieville 6904 Madelynn Curve'),
(81, 'Jeremy D\'Amore', 'pfannerstill.stone@example.com', '2022-01-27 12:23:00', '$2y$10$1UB12qyXmlvYSHgtkd60IuDUzO1Tn/cCK8yJd9HRsnKZWS.QjGHbu', '345p2L0ILQ', '2020-09-17 18:25:07', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+13014179230', 'East Jody 288 Ozella Plaza Suite 066'),
(82, 'Ethan Mante I', 'vincenzo.casper@example.net', '2022-01-27 12:23:00', '$2y$10$rkXrqhPJEWLXjAMmh7xm5u4Z530lOLDrv4/Uxhozn9CtY1ze.3Sfy', '0383VJdcEW', '2020-10-03 06:07:33', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+15634943037', 'Vandervortberg 2927 Boyd Manors Apt. 736'),
(83, 'Emilia Daugherty', 'beatty.elta@example.com', '2022-01-27 12:23:00', '$2y$10$SdBbBf.9IZzXGb0YvXTe4eKnCtFZw4hT4fIcRo4wLaHkYR6.0uc7.', 'fxSfSvI93a', '2021-09-30 14:25:19', '2022-01-27 12:23:02', 'student', 'default.jpg', '+16164319125', 'West Alf 597 Jayde Vista Suite 534'),
(84, 'Ms. Meaghan Ullrich IV', 'schinner.tracy@example.net', '2022-01-27 12:23:00', '$2y$10$68bo3W9WSRtNIsMz8.gRnuveGvSaeoKbQ0Cm3eHAZZ1SQWD8SAU1q', 'JjdSc3hMrh', '2020-03-29 05:45:48', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+14059228577', 'West Luisfurt 3709 Shana Turnpike Suite 661'),
(85, 'Sienna Legros V', 'ahermiston@example.org', '2022-01-27 12:23:00', '$2y$10$kTzVf1iFi.HH7MWCpxrfkuKt1euJqZqZjbmyPiJzB83V5iD5BsWm6', 'wJTkjKL0SG', '2021-08-24 08:53:31', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13413028689', 'West Thad 95418 Vivian Terrace'),
(86, 'Prof. Danial Hane', 'kwuckert@example.net', '2022-01-27 12:23:01', '$2y$10$jflJV.cb7PnZibTb3bdeg.ul1RP28lYc7NnJlpWCUSuPkE1X7pS6m', '7eUL8MYKJN', '2021-01-21 10:02:38', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18165304045', 'North Camille 67614 Schneider Camp'),
(87, 'Valentina Jaskolski', 'cierra39@example.net', '2022-01-27 12:23:01', '$2y$10$/tRx.ZNu72vQo5P2QwRRZuvWorNh3VhEiwcFpggmzOm0//zzQMsIq', 'LA1mUtaha0', '2021-10-26 08:35:12', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+19803023935', 'Skylaville 25185 Vandervort Haven'),
(88, 'Gonzalo Littel', 'lillian67@example.net', '2022-01-27 12:23:01', '$2y$10$McKUHyYJ.04T3lcouQoa4ON9O.COuwsdotTXw6qK/fbQ3iFQTuqle', 'eQiO7i40V5', '2021-05-23 18:43:09', '2022-01-27 12:23:02', 'student', 'default.jpg', '+13809241211', 'Lake Kiera 7708 Amina Rapids'),
(89, 'Hayley Lindgren', 'flangworth@example.net', '2022-01-27 12:23:01', '$2y$10$mOYiDj5vpFta.63mWZOBEuaieruniplxPVZ17uRXLKqMSS0/VIHW.', 'DicDTRFkZp', '2020-11-12 16:27:41', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+17744353499', 'South Heaven 2152 Abdul Divide'),
(91, 'Dr. Monroe Hettinger MD', 'lexie38@example.net', '2022-01-27 12:23:01', '$2y$10$oZ5T2e1ouB/iBYzFkcf2eOR3jC2fVHM1sUdFo5r2V4PZjXyn.gBxW', '4ANiUxuRbS', '2021-06-20 18:33:09', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15035048084', 'Hudsonstad 3690 Pfeffer Bridge'),
(92, 'Tad Hoeger', 'crooks.alejandra@example.net', '2022-01-27 12:23:01', '$2y$10$rbGtykYhR3OdTvn3r3jAw.dxH.ESSstj41.XTYtqPpO0OdHoiTTlG', 'Q1aStDd9AZ', '2021-09-14 12:32:09', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15419300442', 'North Trinity 14974 Stokes Turnpike Suite 623'),
(93, 'Garret Dach', 'xbashirian@example.org', '2022-01-27 12:23:01', '$2y$10$RQMu4xqsjSW2kqwVBToQROdjhfTzSBldkmYL29pdcstPlf.MpKpuK', '9LKdGDDrIV', '2020-10-10 13:22:23', '2022-01-27 12:23:02', 'student', 'default.jpg', '+14588083928', 'New Orlandoberg 5579 Regan Dale Apt. 865'),
(94, 'Tess Fritsch', 'bstoltenberg@example.org', '2022-01-27 12:23:01', '$2y$10$dMyoaZvtxnmUGs6c7X8fn.OhyM1cD/rhahRRyI.ItMFwq9Jn7Y3k6', 'N9W8pY0L7F', '2020-09-23 07:42:29', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+18729538671', 'Bashirianmouth 810 Champlin Ports'),
(95, 'Hannah Konopelski', 'velda38@example.org', '2022-01-27 12:23:01', '$2y$10$XIbONF1P91qLQ9iKYk3NPezBgSRfXkXAww67cOiirHnBCwlfoYJNO', 'jf9zrJzEpb', '2020-10-16 15:26:19', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+12283907715', 'North Guiseppe 546 Kris Run Apt. 896'),
(96, 'Yazmin Borer', 'amos90@example.org', '2022-01-27 12:23:01', '$2y$10$WqpqdHV6OFO4EYwixc/ireeWjOGSI/jEMA2liD47uCb4fWl5Z8NUe', 'ej6W0Wp7pa', '2020-08-25 04:22:33', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+16509340515', 'Nedraborough 724 Jamie Park'),
(97, 'Aidan Powlowski', 'crona.felton@example.org', '2022-01-27 12:23:01', '$2y$10$WKYeNZtBmQ8dCHMVTENhG.E3ep9JPUQ8riEJERex5.58Ufg5SeELi', 'KZZXryxroR', '2021-08-25 17:40:04', '2022-01-27 12:23:02', 'student', 'default.jpg', '+15136613588', 'West Matteo 6268 Hauck Lights'),
(98, 'Gudrun Roob', 'oreilly.berneice@example.net', '2022-01-27 12:23:01', '$2y$10$pqRho/AyFH4kmnJIQQsORuRepK6NJO2VdOV5F93mFBb7P8X5yLIH.', 'XKJI2mPVAa', '2021-05-06 09:05:52', '2022-01-27 12:23:02', 'student', 'default.jpg', '+18085485560', 'New Kane 178 Carlie Turnpike'),
(99, 'Gillian Cassin', 'shea.watsica@example.net', '2022-01-27 12:23:02', '$2y$10$0uWrA1Wj3SCUZtJlXJeOfeG43e8XYWRGlCSGVE.hAEdGub2y8Chfq', 'oYwrL6r50O', '2021-07-30 13:47:50', '2022-01-27 12:23:02', 'student', 'default.jpg', '+19254476753', 'New Royce 983 Maverick Plaza'),
(100, 'Halie Dach', 'elizabeth42@example.net', '2022-01-27 12:23:02', '$2y$10$OTYjj1jKtNnFojZkH7ATyepcI2BjLsmcn0lVpdVJQFqxJ4Ga5TWW6', 'mBOZlRSdnu', '2020-09-10 10:49:49', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+16814054125', 'Olsonfurt 8907 Pollich Hollow Apt. 106'),
(101, 'Lucienne D\'Amore', 'rubie66@example.com', '2022-01-27 12:23:02', '$2y$10$op/sqtzwyRy3K9n3HIHgCugMVCIpVGakVzI1E2mZXr6x4C9D5kkGK', 'A4CWMr1O2s', '2021-02-09 16:28:41', '2022-01-27 12:23:02', 'profesor', 'default.jpg', '+16089135591', 'Port Diamond 579 Melba Extensions Suite 809'),
(102, 'Rad Alin', 'test3@gmail.com', NULL, '$2y$10$xhyV5tGGi/.6FoGwpa2usei4VYSluUoFH3f6I7ii.ecYSUO43mSqO', NULL, '2022-01-27 15:12:40', '2022-01-27 15:12:40', 'Student', 'default.jpg', '0765490216', 'Strada Stejarului'),
(104, 'Rad Alin', 'test33@gmail.com', NULL, '$2y$10$Q8XgLKEuUJCtv1NYSoBHeejsOFIhoO9E3llD/3iTTeGsNWdYEgPfa', NULL, '2022-01-27 15:13:54', '2022-01-27 15:13:54', 'Student', 'default.jpg', '0756210124', 'Strada Stejarului'),
(105, 'Sas Florin', 'test87@gmail.com', NULL, '$2y$10$xDY7BJknGvOHx80ClmMUsuFJtWz/iD6Hh7NFsCtfsj2tOp0db9tt6', NULL, '2022-01-27 15:17:47', '2022-01-27 15:17:47', 'Student', 'default.jpg', '0756437138', 'Strada Bistrita nr.5'),
(106, 'Ionut Alin', 'test7@yahoo.com', NULL, '$2y$10$dd38KRBpz3YoMjFl4x3g4eGimGnpVd5aUdx.ZPtjWwJmbDl2CmA8C', NULL, '2022-01-27 16:06:14', '2022-01-27 16:06:14', 'Student', 'default.jpg', '0746391032', 'Bulevardul Decebal'),
(107, 'user photo', 'ss@gmail.com', NULL, '$2y$10$LZYGw05CZBDMdY5DMmfpMO79l2CelmjLaF/yvIBggXk70RZ46vGTi', NULL, '2022-01-27 17:10:06', '2022-01-27 17:10:06', 'Profesor', 'default.jpg', '0957466362', 'Bucuresti'),
(108, 'tudor  Mihai', 'mihai@yahoo.com', NULL, '$2y$10$fYzVYm6pnyydT6b8Q8KQVO4Wl6QQ.HCbhIBGvoSOHGzTg88GNqLYS', NULL, '2022-01-27 17:16:14', '2022-01-27 17:16:14', 'Profesor', 'tudorMihai_1643310974.png', '0754788328', 'strada 1'),
(109, 'test9', 'test10@gmail.com', NULL, '$2y$10$jfyHDtp5yHXpMxNdO9KNcuifYzeivgklKxxVyZU1nzvGv4lhsCONu', NULL, '2022-01-28 06:51:05', '2022-01-28 06:52:19', 'student', 'test9_1643359939.png', '0764355201', 'Strada pasunii');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexuri pentru tabele `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
