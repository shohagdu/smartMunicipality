-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 05:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartmunicipalitydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountlogs`
--

CREATE TABLE `accountlogs` (
  `id` int(11) NOT NULL,
  `acno` varchar(40) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acinfo`
--

CREATE TABLE `acinfo` (
  `id` int(11) NOT NULL,
  `acname` varchar(255) NOT NULL,
  `acno` varchar(40) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acinfo`
--

INSERT INTO `acinfo` (`id`, `acname`, `acno`, `balance`, `last_update`) VALUES
(1, 'CASH ACCOUNT', '0000-0000-0000-0000', '18479.80', '2022-04-16 06:32:22'),
(2, 'চেয়ারম্যান ইউনিয়ন পরিষদ', '2216/0', '100.00', '2018-08-18 16:07:30'),
(3, 'জন্ম নিবন্ধন', '2191/1', '0.00', '2016-09-22 08:07:31'),
(4, 'এলজিএসপি', '1603033008083', '0.00', '2016-09-22 08:07:31'),
(5, 'ভূমি হস্তান্তর কর ১%', '22751', '0.00', '2016-09-22 08:07:31'),
(6, 'নিজস্ব তহবিলঃ ক্যাশ', '0001-0001-0001-0001', '0.00', '2018-06-07 20:43:28'),
(7, 'নিজস্ব তহবিলঃ জন্ম নিবন্ধন', '0002-0002-0002-0002', '0.00', '2016-09-22 08:07:31'),
(8, 'উন্নয়ন তহবিলঃ এলজিএসপি', '0003-0003-0003-0003', '0.00', '2016-09-22 08:07:31'),
(9, 'উন্নয়ন তহবিলঃ ভূমি হস্তান্তর কর ১%', '0004-0004-0004-0004', '1000.00', '2019-07-04 11:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `widget` text NOT NULL,
  `ins_date` date NOT NULL,
  `insert_by` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl`
--

INSERT INTO `acl` (`id`, `role_id`, `role_name`, `widget`, `ins_date`, `insert_by`) VALUES
(1, 1, 'Super Admin', 'index,nagorickapplicant,assessmentForm,rateSheet,holdingRateSheet,memberAddForm,nagorickInfo,nagorickGenarate,nagorickapplicant,nagorickInfo,upMap,nagorickBangla,nagorickEnglish,nagorickMoneyReceipt,tradelicenseapplicant,tradelicenseInfo,tradelicenseGenarate,tradelicenseapplicant,tradelicenseInfo,tradelicenseBangla,tradelicenseEnglish,tradelicenseMoneyReceipt,tradelicenseapplicant,warishapplicant,warishInfo,warishGenarate,warishapplicant,warishInfo,warishBangla,warishEnglish,warishMoneyReceipt,dailySubmit,taxCollection,bankTransfers,fundTransfers,allroshid,tradelicenseMoneyReceipt,tradelicense_tab_roshid,tradelicenseMoneyReceipt,bosodbitakor_tab_roshid,bosodbitakorMoneyReceipt,peshajibikor_tab_roshid,peshaMoneyReceipt,dailycollection_tab_roshid,dailyCollectionMoneyReceipt,nagoriksonod_tab_roshid,,warishsonod_tab_roshid,,trade_bosodbitakor_tab_roshid,tradeBosodbitakorMoneyReceipt,dailyCollection,dailyVatCollection,dailyBankDetails,dailyMainLedger,dailySubLedger,employeeList,employeeManage,role,role_list,webSiteUpMemberList,webSiteUpMemberUpdate,webSiteUpMemberDelete,webSiteUpMembterAdd,charimanMessage,newsManage,dynamicSlide,unionPorishad,toolSetting,newAccEntry,mainCtgEntry,SubCtgEntry,ExpCtgEntry,ExpSubCtgEntry,changePassword,adminProfile', '2016-02-10', 'admin'),
(2, 2, 'Only user', 'index,nagorickapplicant,nagorickInfo,nagorickGenarate,nagorickapplicant,nagorickInfo,nagorickBangla,nagorickEnglish,nagorickMoneyReceipt,tradelicenseapplicant,tradelicenseInfo,tradelicenseGenarate,tradelicenseapplicant,tradelicenseInfo,tradelicenseBangla,tradelicenseEnglish,tradelicenseMoneyReceipt,tradelicenseapplicant,warishapplicant,warishInfo,warishGenarate,warishapplicant,warishInfo,warishBangla,warishEnglish,warishMoneyReceipt,dailySubmit,taxCollection,bankTransfers,fundTransfers,allroshid,tradelicenseMoneyReceipt,tradelicense_tab_roshid,tradelicenseMoneyReceipt,bosodbitakor_tab_roshid,bosodbitakorMoneyReceipt,peshajibikor_tab_roshid,peshaMoneyReceipt,dailycollection_tab_roshid,dailyCollectionMoneyReceipt,nagoriksonod_tab_roshid,,warishsonod_tab_roshid,,trade_bosodbitakor_tab_roshid,tradeBosodbitakorMoneyReceipt,dailyCollection,dailyVatCollection,dailyBankDetails,dailyMainLedger,dailySubLedger,webSiteUpMemberList,webSiteUpMemberUpdate,webSiteUpMemberDelete,webSiteUpMembterAdd,charimanMessage,newsManage,dynamicSlide,upMap,unionPorishad,toolSetting,newAccEntry,mainCtgEntry,SubCtgEntry,ExpCtgEntry,ExpSubCtgEntry,changePassword', '2018-04-25', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` tinyint(3) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `fullname` varchar(60) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `passDateTime` date NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `desig` varchar(60) DEFAULT NULL,
  `pic` varchar(160) DEFAULT NULL,
  `sid` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `trans_pin_code` varchar(8) DEFAULT NULL,
  `verify_mobile` tinyint(3) DEFAULT NULL,
  `verify_email` tinyint(3) DEFAULT NULL,
  `question_id` smallint(6) UNSIGNED DEFAULT NULL,
  `security_setting` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `role_id`, `username`, `fullname`, `pass`, `passDateTime`, `email`, `mobile`, `desig`, `pic`, `sid`, `status`, `trans_pin_code`, `verify_mobile`, `verify_email`, `question_id`, `security_setting`) VALUES
(1, 1, 'admin', 'Rana', '4297f44b13955235245b2497399d7a93', '2018-06-08', 'rana.feni.fci@gmail.com', '01825292980', 'DCB Adminitration', '60792881_357750605099138_2460133902526709760_n.jpg', 'a6ff701969ac6bf57afffcff3565ef0d', '1', '', 1, 0, 0, '1'),
(5, 2, 'udcadmin', 'udcadmin', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00', 'info@steptechbd.com', '01839707645', 'UDC', '', '2bf727ed6f2c82b2c358ed32f9a83a6d', '1', NULL, 1, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `app_list`
--

CREATE TABLE `app_list` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `app_mac` varchar(30) NOT NULL,
  `app_name` varchar(150) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_list`
--

INSERT INTO `app_list` (`id`, `app_id`, `app_mac`, `app_name`, `user_name`, `address`, `registered_date`) VALUES
(1, 2150, 'Online Registration', 'Correction_up', 'abs_rana', 'datacenter', '2016-09-24 09:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `app_validation`
--

CREATE TABLE `app_validation` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `license_key` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `pc_user` varchar(80) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `license_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_validation`
--

INSERT INTO `app_validation` (`id`, `app_id`, `license_key`, `duration`, `pc_user`, `ip`, `license_date`) VALUES
(1, 2150, '97wqiQ48UMndgMNu1HV4qUqZV3VlSjeT2G7CAhj5zvd5jULgXKeWHW7ALq8qpiASyMBMiP/ivdmLCtQ4oxjKmoWcH4kxj7xviNa+JVjwTV2GV+hU8CjVaw+iGdj4iSvq', 500, 'Rana', '::1', '2018-03-23 07:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `login_time` time DEFAULT NULL,
  `logout_time` time DEFAULT NULL,
  `overtime` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'overtime in minutes',
  `is_friday` tinyint(1) DEFAULT NULL COMMENT 'Null, 0 = others day, 1 = friday',
  `is_present` tinyint(1) DEFAULT NULL COMMENT 'Null, 0 = absent, 1 = present',
  `is_late` tinyint(1) DEFAULT NULL COMMENT 'Null, 0 = in time, 1 = late',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = regular, 2 = CL, 3 = ML, 4 = roastering 	',
  `is_process` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = unprocess, 1 = processed',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_logs`
--

CREATE TABLE `attendance_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_id` bigint(20) DEFAULT NULL,
  `card_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nid_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `attendance_date` datetime NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `is_process` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = success 2= already  food received  ',
  `created_by_ip` varchar(45) CHARACTER SET utf8 NOT NULL,
  `updated_by_ip` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buisnestypes`
--

CREATE TABLE `buisnestypes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buisnestypes`
--

INSERT INTO `buisnestypes` (`id`, `title`) VALUES
(1, 'আইটি'),
(2, 'contractor'),
(3, '\" ফোন - ফ্যাক্স \"'),
(4, '\" প্রিন্টিং ও প্যাকেজিং \"'),
(5, ' \" সরবরাহকারী \"'),
(6, '\" ক্যামিক্যাল ও হাউজ ক্লিনিং প্রোডাক্টস বিক্রেতা \"'),
(7, '\" পেপার কাটিং \"'),
(8, '\" (প্রথম শ্রেণী)  ঠিকাদার ও সরবরাহকারী \"'),
(9, '\" (দ্বিতীয় শ্রেণী) ঠিকাদার ও সরবরাহকারী \"'),
(10, '\" ( তৃতীয় শ্রেণী) ঠিকাদার ও সরবরাহকারী \"'),
(11, '  \"(ত্বিতীয় শ্রেণী) ঠিকাদার \"'),
(12, '\" ঠিকাদর \"'),
(13, '\" আটা তৈরী ও সরবরাহকারী \"');

-- --------------------------------------------------------

--
-- Table structure for table `chairman_message`
--

CREATE TABLE `chairman_message` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `update_by` varchar(40) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chairman_message`
--

INSERT INTO `chairman_message` (`id`, `title`, `message`, `update_by`, `update_time`) VALUES
(1, 'tes', 'বাংলাদেশ সরকারের ‘ভিশন ২০২১ রূপকল্পে ডিজিটাল বাংলাদেশ গড়ার লক্ষে জনগণের দোরগোড়ায় সেবা এই স্লোগানকে সামনে রেখে গত ১১/১১/২০১০ খ্রিঃ তারিখ প্রধানমন্ত্রীর কার্যালয়ের একসেস টু ইনফরমেশন(এটুআই) প্রকল্পের আওতায় মাননীয় প্রধানমন্ত্রী ইউনিয়ন পরিষদে স্থাপিত তথ্য-প্রযুক্তি ভিত্তিক কেন্দ্র ‘ইউনিয়ন তথ্য ও সেবা কেন্দ্র(ইউআইএসসি)’ উদ্বোধন করেন। সরকারী নির্দেশনা মোতাবেক সিধলা ইউনিয়ন পরিষদ অফিসেও একটি তথ্য ও সেবা কেন্দ্র গড়ে তোলা হয়। ফলে এই তথ্য ও সেবা কেন্দ্র থেকে ইউনিয়নের সাধারণ জনগণ তাদের প্রয়োজনীয় নাগরিক সনদ ছাড়াও বিভিন্ন তথ্য প্রযুক্তি বিষয়ক সেবা গ্রহণ করতে পারছে। এই কেন্দ্রের সেবার পরিধি দিন দিন আরো বৃদ্ধি পাচ্ছে।  পরম করুনাময়ের কাছে তাই অশেষ কৃতজ্ঞতা। গত ২৩/০৬/২০১৪ খ্রিঃ তারিখ প্রধানমন্ত্রীর কার্যালয়ের একসেস টু ইনফরমেশন(এটুআই) প্রকল্পের আওতায় ‘জাতীয় তথ্য বাতায়ন’(National Web Portal) এর শুভ উদ্বোধন করা হয়। যা ডিজিটাল বাংলাদেশ বিনির্মানে একটি যুগান্তকারী পদক্ষেপ। এই তথ্য বাতায়নের অংশ হিসেবে সিধলা  ইউনিয়ন তথ্য বাতায়ন’(Union Web Portal) খোলা হয়েছে। আমাদের নিবেদিত প্রান উদ্যেক্তাগন যাকে দিন দিন সমৃদ্ধ করেছে। এই তথ্য বাতায়নের মাধ্যমে পৃথিবীর যেকোন প্রান্ত থেকে মানুষ এখন  সিধলা ইউনিয়নের ইতিহাস ও ঐতিহ্য, ভৌগলিক অবস্থা, ভাষা ও সংস্কৃতি, শিক্ষা, স্বাস্থ্য, কৃষি, যাতায়াত ব্যবস্থা, উন্নয়নমূলক কর্মকান্ড, সামাজিক সেবামূলক কর্মকান্ড ইত্যাদি বিষয়ক তথ্য জানতে পারবে। বর্তমান তথ্য প্রযুক্তির যুগে বিশ্ব মানুষের কাছে সিধলা ইউনিয়নকে তুলে ধরতে পারছি। আর এটা সম্ভব হয়েছে একমাত্র এই তথ্য বাতায়ন সৃষ্টির মধ্য দিয়েই। এজন্য আমি আমার ইউনিয়নবাসীর পক্ষ থেকে মাননীয় প্রধানমন্ত্রী ও এটুআই প্রকল্পের সাথে সংশ্লিষ্ট সকলেক আন্তরিক ধন্যবাদ জানাচ্ছি। সাথে সাথে এটাও ব্যক্ত করছি যে, জাতীয় কল্যাণ ও আমার ইউনিয়নের জন্য কল্যাণকর সরকারের এই ধরণের মহান কার্যক্রমে আমি ও আমার ইউনিয়নবাসী সর্বাত্নক সহযোগীতা করব। ', 'admin', '2021-03-04 19:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `checkinout`
--

CREATE TABLE `checkinout` (
  `id` int(11) NOT NULL,
  `USERID` int(11) DEFAULT NULL,
  `CHECKTIME` datetime DEFAULT NULL,
  `CHECKTYPE` varchar(1) DEFAULT NULL,
  `VERIFYCODE` int(11) DEFAULT NULL,
  `SENSORID` varchar(5) DEFAULT NULL,
  `Memoinfo` varchar(30) DEFAULT NULL,
  `WorkCode` varchar(24) DEFAULT NULL,
  `sn` varchar(20) DEFAULT NULL,
  `UserExtFmt` smallint(6) DEFAULT NULL,
  `is_process` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checkinout`
--

INSERT INTO `checkinout` (`id`, `USERID`, `CHECKTIME`, `CHECKTYPE`, `VERIFYCODE`, `SENSORID`, `Memoinfo`, `WorkCode`, `sn`, `UserExtFmt`, `is_process`) VALUES
(1, 1, '2018-10-21 20:27:56', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(2, 1, '2018-10-21 21:20:20', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(3, 1, '2018-10-21 21:32:00', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(4, 1, '2018-10-30 13:58:01', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(5, 1, '2018-11-01 11:22:31', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(6, 1, '2018-11-01 17:49:29', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(7, 1, '2018-11-01 18:21:57', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(8, 1, '2018-11-01 19:42:35', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(9, 1, '2018-11-03 12:07:44', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(10, 1, '2018-11-03 12:15:35', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(11, 1, '2018-11-03 13:51:36', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(12, 1, '2018-11-03 13:51:37', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(13, 1, '2018-11-27 09:57:38', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(14, 1, '2018-11-28 18:43:03', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(15, 1, '2018-11-28 19:59:42', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(16, 1, '2018-11-29 20:37:01', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(17, 1, '2018-11-29 20:37:03', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(18, 1, '2018-11-29 20:37:05', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(19, 8, '2018-12-01 11:18:02', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(20, 7, '2018-12-01 14:43:58', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(21, 6, '2018-12-01 14:54:26', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(22, 5, '2018-12-01 14:55:08', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(23, 3, '2018-12-04 14:28:25', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(24, 2, '2018-12-05 18:36:18', 'I', 0, '1', NULL, '0', 'CD5R182360193', 1, 0),
(25, 449, '2021-03-06 19:51:16', 'I', 1, '1', NULL, '0', 'A8N5201760128', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmd`
--

CREATE TABLE `cmd` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cmd`
--

INSERT INTO `cmd` (`id`, `title`) VALUES
(1, 'ব্যক্তি মালিকানাধীন'),
(2, 'যৌথ মালিকানা'),
(3, 'কোম্পানী');

-- --------------------------------------------------------

--
-- Table structure for table `credit_voucher`
--

CREATE TABLE `credit_voucher` (
  `id` bigint(16) UNSIGNED NOT NULL,
  `vno` bigint(16) UNSIGNED NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit_voucher`
--

INSERT INTO `credit_voucher` (`id`, `vno`, `utime`) VALUES
(1, 1, '2018-06-07 22:54:49'),
(2, 2, '2018-06-07 22:57:08'),
(3, 3, '2018-07-17 20:37:17'),
(4, 4, '2018-07-17 21:10:39'),
(5, 5, '2018-10-03 19:52:24'),
(6, 6, '2018-10-08 19:58:22'),
(7, 7, '2019-05-24 19:23:05'),
(8, 8, '2019-05-24 19:26:17'),
(9, 9, '2019-05-27 06:14:42'),
(10, 10, '2019-05-27 06:19:35'),
(11, 11, '2019-05-27 06:20:57'),
(12, 12, '2019-05-30 05:25:07'),
(13, 13, '2019-05-30 06:15:06'),
(14, 14, '2019-06-29 19:55:07'),
(15, 15, '2019-07-01 04:46:00'),
(16, 16, '2019-07-01 04:46:43'),
(17, 17, '2019-07-01 04:47:12'),
(18, 18, '2019-07-03 04:57:03'),
(19, 19, '2019-07-03 05:05:49'),
(20, 20, '2019-07-04 05:29:25'),
(21, 21, '2019-07-04 11:16:10'),
(22, 22, '2019-07-04 11:17:45'),
(23, 23, '2019-07-06 09:16:42'),
(24, 24, '2019-07-07 17:11:31'),
(25, 25, '2019-07-08 08:58:20'),
(28, 26, '2019-07-14 15:11:57'),
(29, 27, '2019-07-17 05:05:26'),
(30, 28, '2019-07-17 12:03:08'),
(31, 29, '2019-07-19 05:14:19'),
(32, 30, '2020-08-31 08:59:36'),
(33, 31, '2020-12-26 21:14:42'),
(34, 32, '2021-03-08 08:47:15'),
(37, 33, '2022-03-15 12:00:35'),
(38, 34, '2022-03-15 13:38:09'),
(39, 35, '2022-03-16 07:38:32'),
(40, 36, '2022-03-16 07:54:02'),
(41, 37, '2022-03-16 09:00:38'),
(42, 38, '2022-03-20 06:29:00'),
(43, 39, '2022-03-20 09:58:41'),
(44, 40, '2022-03-21 03:21:26'),
(45, 41, '2022-03-21 09:26:18'),
(46, 42, '2022-03-23 17:09:51'),
(58, 43, '2022-04-16 06:24:35'),
(59, 44, '2022-04-16 06:26:27'),
(60, 45, '2022-04-16 06:29:37'),
(61, 46, '2022-04-16 06:30:59'),
(62, 47, '2022-04-16 06:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `dailycollection`
--

CREATE TABLE `dailycollection` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `transid` bigint(20) NOT NULL,
  `sub_cat` int(11) NOT NULL,
  `voucherno` bigint(20) NOT NULL,
  `accounts` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paytype` varchar(50) NOT NULL,
  `slipno` varchar(100) NOT NULL,
  `chno` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `issue` date NOT NULL,
  `pono` varchar(100) NOT NULL,
  `ddno` varchar(100) NOT NULL,
  `ttno` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `des` text NOT NULL,
  `payment_date` date NOT NULL,
  `update_by` varchar(40) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dailycollection`
--

INSERT INTO `dailycollection` (`id`, `fid`, `catid`, `transid`, `sub_cat`, `voucherno`, `accounts`, `amount`, `paytype`, `slipno`, `chno`, `bank`, `issue`, `pono`, `ddno`, `ttno`, `purpose`, `des`, `payment_date`, `update_by`, `update_date`) VALUES
(1, 1, 7, 22, 11, 21, 'উন্নয়ন তহবিলঃ ভূমি হস্তান্তর কর ১%', '1000.00', 'cash', '', '', '', '0000-00-00', '', '', '', 'সরকারী অনুদান-ভূমি হস্তান্তর কর (১%),১ম কিস্তি', 'jhj', '2019-07-04', 'admin', '2019-07-04 11:16:10'),
(2, 2, 3, 23, 2, 22, 'CASH ACCOUNT', '2222.00', 'cash', '', '', '', '0000-00-00', '', '', '', 'লাইসেন্স ফি,ট্রেড লাইসেন্স ফি', 'jhjh', '2019-07-04', 'admin', '2019-07-04 11:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `dailyexp`
--

CREATE TABLE `dailyexp` (
  `id` int(11) UNSIGNED NOT NULL,
  `fid` int(11) UNSIGNED NOT NULL,
  `catid` int(11) UNSIGNED NOT NULL,
  `sub_cat` int(11) UNSIGNED NOT NULL,
  `transid` bigint(16) UNSIGNED NOT NULL,
  `voucherno` bigint(16) UNSIGNED NOT NULL,
  `accounts` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paytype` varchar(50) DEFAULT NULL,
  `slipno` varchar(100) DEFAULT NULL,
  `chno` varchar(100) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `issue` datetime NOT NULL,
  `pono` varchar(100) DEFAULT NULL,
  `ddno` varchar(100) DEFAULT NULL,
  `ttno` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `payment_date` datetime NOT NULL,
  `update_by` varchar(40) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dcb_login_history`
--

CREATE TABLE `dcb_login_history` (
  `history_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `device_browser` text DEFAULT NULL,
  `pc_ip` varchar(30) DEFAULT NULL,
  `mac` varchar(30) DEFAULT NULL,
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_login_history`
--

INSERT INTO `dcb_login_history` (`history_id`, `user_id`, `device_browser`, `pc_ip`, `mac`, `login_time`, `logout_time`) VALUES
(1, 1, 'Chrome 66.0.3359.181', '::1', 'mac', '2018-06-08 04:34:42', '0000-00-00 00:00:00'),
(2, 1, 'Chrome 67.0.3396.79', '::1', 'mac', '2018-06-08 23:42:39', '0000-00-00 00:00:00'),
(3, 1, 'Chrome 67.0.3396.79', '::1', 'mac', '2018-06-09 22:09:32', '0000-00-00 00:00:00'),
(4, 1, 'Chrome 67.0.3396.99', '::1', 'mac', '2018-07-02 01:21:43', '0000-00-00 00:00:00'),
(5, 1, 'Chrome 67.0.3396.99', '::1', 'mac', '2018-07-03 22:47:12', '0000-00-00 00:00:00'),
(6, 1, 'Chrome 67.0.3396.99', '::1', 'mac', '2018-07-04 01:17:48', '0000-00-00 00:00:00'),
(7, 1, 'Chrome 67.0.3396.99', '::1', 'mac', '2018-07-18 02:16:10', '0000-00-00 00:00:00'),
(8, 1, 'Chrome 67.0.3396.99', '::1', 'mac', '2018-07-22 00:45:40', '0000-00-00 00:00:00'),
(9, 1, 'Chrome 68.0.3440.106', '::1', 'mac', '2018-08-16 12:46:25', '0000-00-00 00:00:00'),
(10, 1, 'Chrome 68.0.3440.106', '::1', 'mac', '2018-08-18 22:04:39', '0000-00-00 00:00:00'),
(11, 1, 'Chrome 68.0.3440.106', '::1', 'mac', '2018-09-03 23:54:55', '2018-09-03 23:57:39'),
(12, 1, 'Chrome 68.0.3440.106', '::1', 'mac', '2018-09-05 01:11:27', '0000-00-00 00:00:00'),
(13, 1, 'Chrome 68.0.3440.106', '::1', 'mac', '2018-09-07 01:57:08', '0000-00-00 00:00:00'),
(14, 1, 'Chrome 68.0.3440.106', '::1', 'mac', '2018-09-08 00:32:10', '0000-00-00 00:00:00'),
(15, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-03 00:44:08', '0000-00-00 00:00:00'),
(16, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-03 23:56:14', '0000-00-00 00:00:00'),
(17, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-05 01:21:48', '0000-00-00 00:00:00'),
(18, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-06 00:44:44', '0000-00-00 00:00:00'),
(19, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-06 23:15:38', '0000-00-00 00:00:00'),
(20, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-07 01:19:29', '0000-00-00 00:00:00'),
(21, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-10-09 01:55:28', '0000-00-00 00:00:00'),
(22, 1, 'Chrome 69.0.3497.100', '::1', 'mac', '2018-11-01 01:21:27', '0000-00-00 00:00:00'),
(23, 1, 'Chrome 71.0.3578.98', '::1', 'mac', '2018-12-23 23:50:09', '0000-00-00 00:00:00'),
(24, 1, 'Chrome 71.0.3578.98', '::1', 'mac', '2019-02-03 00:46:11', '0000-00-00 00:00:00'),
(25, 1, 'Chrome 71.0.3578.98', '::1', 'mac', '2019-02-03 23:13:48', '0000-00-00 00:00:00'),
(26, 1, 'Chrome 73.0.3683.103', '::1', 'mac', '2019-04-25 00:56:03', '0000-00-00 00:00:00'),
(27, 1, 'Chrome 73.0.3683.103', '::1', 'mac', '2019-04-28 23:49:11', '0000-00-00 00:00:00'),
(28, 1, 'Chrome 73.0.3683.103', '::1', 'mac', '2019-05-01 21:53:03', '0000-00-00 00:00:00'),
(29, 1, 'Chrome 73.0.3683.103', '::1', 'mac', '2019-05-07 00:50:37', '0000-00-00 00:00:00'),
(30, 1, 'Chrome 74.0.3729.157', '::1', 'mac', '2019-05-20 00:30:24', '0000-00-00 00:00:00'),
(31, 1, 'Chrome 74.0.3729.157', '::1', 'mac', '2019-05-24 15:17:36', '0000-00-00 00:00:00'),
(32, 1, 'Chrome 74.0.3729.157', '::1', 'mac', '2019-05-24 23:57:54', '0000-00-00 00:00:00'),
(33, 1, 'Chrome 74.0.3729.169', '118.179.175.107', 'mac', '2019-05-25 16:39:33', '0000-00-00 00:00:00'),
(34, 1, 'Firefox 67.0', '103.107.161.114', 'mac', '2019-05-26 11:30:28', '0000-00-00 00:00:00'),
(35, 1, 'Firefox 68.0', '103.107.161.114', 'mac', '2019-05-26 11:35:52', '0000-00-00 00:00:00'),
(36, 1, 'Chrome 74.0.3729.169', '103.107.161.114', 'mac', '2019-05-27 12:07:04', '0000-00-00 00:00:00'),
(37, 1, 'Chrome 74.0.3729.169', '103.107.161.114', 'mac', '2019-05-30 11:04:40', '0000-00-00 00:00:00'),
(38, 1, 'Chrome 74.0.3729.136', '116.58.203.112', 'mac', '2019-06-04 13:16:48', '0000-00-00 00:00:00'),
(39, 1, 'Chrome 73.0.3683.86', '119.82.76.18', 'mac', '2019-06-12 15:04:46', '2019-06-12 15:08:52'),
(40, 1, 'Chrome 75.0.3770.89', '103.67.159.86', 'mac', '2019-06-30 01:51:07', '0000-00-00 00:00:00'),
(41, 1, 'Chrome 75.0.3770.100', '103.67.159.201', 'mac', '2019-06-30 17:19:05', '0000-00-00 00:00:00'),
(42, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-06-30 21:15:42', '0000-00-00 00:00:00'),
(43, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-01 00:14:31', '0000-00-00 00:00:00'),
(44, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-01 00:20:19', '0000-00-00 00:00:00'),
(45, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-01 00:21:21', '0000-00-00 00:00:00'),
(46, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-01 00:23:27', '0000-00-00 00:00:00'),
(47, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-01 00:23:49', '0000-00-00 00:00:00'),
(48, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-01 10:23:39', '0000-00-00 00:00:00'),
(49, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-01 23:11:28', '0000-00-00 00:00:00'),
(50, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-02 11:04:52', '0000-00-00 00:00:00'),
(51, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-02 15:17:32', '0000-00-00 00:00:00'),
(52, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-03 10:42:48', '0000-00-00 00:00:00'),
(53, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-04 10:28:07', '0000-00-00 00:00:00'),
(54, 1, 'Opera 60.0.3255.170', '103.79.183.231', 'mac', '2019-07-04 11:40:54', '0000-00-00 00:00:00'),
(55, 1, 'Chrome 75.0.3770.80', '116.58.201.24', 'mac', '2019-07-04 16:49:45', '0000-00-00 00:00:00'),
(56, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-05 17:18:28', '0000-00-00 00:00:00'),
(57, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-05 23:00:08', '0000-00-00 00:00:00'),
(58, 1, 'Firefox 68.0', '119.30.32.161', 'mac', '2019-07-06 14:41:40', '2019-07-06 14:46:00'),
(59, 2, 'Firefox 68.0', '119.30.32.161', 'mac', '2019-07-06 14:46:06', '2019-07-06 14:46:21'),
(60, 1, 'Firefox 68.0', '119.30.32.161', 'mac', '2019-07-06 14:51:30', '2019-07-06 14:58:53'),
(61, 1, 'Firefox 68.0', '119.30.38.151', 'mac', '2019-07-06 15:13:53', '0000-00-00 00:00:00'),
(62, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-06 16:08:05', '0000-00-00 00:00:00'),
(63, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-07 11:06:07', '0000-00-00 00:00:00'),
(64, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-07 15:44:06', '0000-00-00 00:00:00'),
(65, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-07 23:05:38', '0000-00-00 00:00:00'),
(66, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-08 10:30:31', '0000-00-00 00:00:00'),
(67, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-09 11:19:46', '2019-07-09 15:15:58'),
(68, 1, 'Opera 60.0.3255.170', '103.79.183.231', 'mac', '2019-07-09 12:58:59', '0000-00-00 00:00:00'),
(69, 3, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-09 15:16:07', '2019-07-09 15:17:30'),
(70, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-09 15:17:34', '0000-00-00 00:00:00'),
(71, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-09 18:15:25', '0000-00-00 00:00:00'),
(72, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-10 00:14:55', '0000-00-00 00:00:00'),
(73, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-10 10:24:10', '0000-00-00 00:00:00'),
(74, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-10 12:52:18', '0000-00-00 00:00:00'),
(75, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-10 15:43:56', '0000-00-00 00:00:00'),
(76, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-11 00:21:34', '0000-00-00 00:00:00'),
(77, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-11 10:33:24', '0000-00-00 00:00:00'),
(78, 1, 'Opera 62.0.3331.43', '103.79.183.231', 'mac', '2019-07-11 17:39:13', '0000-00-00 00:00:00'),
(79, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-11 18:43:58', '0000-00-00 00:00:00'),
(80, 1, 'Firefox 67.0', '103.67.156.131', 'mac', '2019-07-12 16:53:48', '0000-00-00 00:00:00'),
(81, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-13 17:27:11', '0000-00-00 00:00:00'),
(82, 1, 'Chrome 75.0.3770.101', '116.58.200.52', 'mac', '2019-07-13 20:33:54', '0000-00-00 00:00:00'),
(83, 1, 'Chrome 75.0.3770.100', '103.197.155.216', 'mac', '2019-07-14 14:14:08', '0000-00-00 00:00:00'),
(84, 1, 'Firefox 68.0', '103.67.158.54', 'mac', '2019-07-14 21:04:45', '0000-00-00 00:00:00'),
(85, 4, 'Chrome 75.0.3770.101', '103.67.158.54', 'mac', '2019-07-14 21:40:36', '0000-00-00 00:00:00'),
(86, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-15 11:56:25', '0000-00-00 00:00:00'),
(87, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-15 13:10:01', '0000-00-00 00:00:00'),
(88, 1, 'Chrome 55.0.2883.87', '103.120.201.165', 'mac', '2019-07-15 13:13:49', '0000-00-00 00:00:00'),
(89, 1, 'Chrome 75.0.3770.100', '202.181.17.164', 'mac', '2019-07-15 16:10:46', '0000-00-00 00:00:00'),
(90, 1, 'Firefox 68.0', '43.245.122.10', 'mac', '2019-07-15 16:52:28', '0000-00-00 00:00:00'),
(91, 1, 'Opera 62.0.3331.72', '103.79.183.210', 'mac', '2019-07-15 16:53:46', '0000-00-00 00:00:00'),
(92, 4, 'Chrome 75.0.3770.101', '116.58.202.88', 'mac', '2019-07-15 21:11:10', '0000-00-00 00:00:00'),
(93, 4, 'Chrome 75.0.3770.101', '103.130.115.46', 'mac', '2019-07-15 23:33:09', '0000-00-00 00:00:00'),
(94, 4, 'Chrome 75.0.3770.101', '103.130.115.46', 'mac', '2019-07-16 00:14:50', '0000-00-00 00:00:00'),
(95, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-16 10:31:29', '0000-00-00 00:00:00'),
(96, 4, 'Chrome 75.0.3770.100', '103.78.163.225', 'mac', '2019-07-16 15:09:59', '0000-00-00 00:00:00'),
(97, 1, 'Opera 62.0.3331.72', '103.79.183.210', 'mac', '2019-07-16 16:55:22', '0000-00-00 00:00:00'),
(98, 1, 'Chrome 75.0.3770.100', '118.179.175.107', 'mac', '2019-07-16 23:29:46', '0000-00-00 00:00:00'),
(99, 1, 'Opera 62.0.3331.72', '103.79.183.210', 'mac', '2019-07-16 23:35:57', '0000-00-00 00:00:00'),
(100, 4, 'Chrome 75.0.3770.101', '116.58.201.105', 'mac', '2019-07-17 08:28:45', '0000-00-00 00:00:00'),
(101, 1, 'Firefox 68.0', '103.67.157.77', 'mac', '2019-07-17 11:02:01', '0000-00-00 00:00:00'),
(102, 4, 'Chrome 75.0.3770.101', '103.130.115.46', 'mac', '2019-07-17 12:39:16', '0000-00-00 00:00:00'),
(103, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-17 15:42:50', '0000-00-00 00:00:00'),
(104, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-17 18:02:41', '0000-00-00 00:00:00'),
(105, 1, 'Chrome 75.0.3770.142', '103.67.156.253', 'mac', '2019-07-17 22:09:09', '0000-00-00 00:00:00'),
(106, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-18 13:24:46', '0000-00-00 00:00:00'),
(107, 1, 'Opera 62.0.3331.72', '103.79.183.231', 'mac', '2019-07-18 16:02:58', '0000-00-00 00:00:00'),
(108, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-18 16:33:43', '0000-00-00 00:00:00'),
(109, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-18 16:35:07', '0000-00-00 00:00:00'),
(110, 1, 'Chrome 75.0.3770.142', '103.60.175.27', 'mac', '2019-07-19 00:07:39', '0000-00-00 00:00:00'),
(111, 4, 'Chrome 75.0.3770.101', '103.130.115.46', 'mac', '2019-07-19 05:49:31', '0000-00-00 00:00:00'),
(112, 1, 'Chrome 75.0.3770.142', '118.179.175.107', 'mac', '2019-07-19 11:12:18', '0000-00-00 00:00:00'),
(113, 4, 'Chrome 75.0.3770.101', '103.130.115.46', 'mac', '2019-07-20 17:09:11', '0000-00-00 00:00:00'),
(114, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-21 13:10:36', '0000-00-00 00:00:00'),
(115, 1, 'Firefox 68.0', '42.0.5.246', 'mac', '2019-07-21 16:19:34', '0000-00-00 00:00:00'),
(116, 1, 'Chrome 75.0.3770.142', '202.181.17.181', 'mac', '2019-07-21 17:02:46', '0000-00-00 00:00:00'),
(117, 1, 'Chrome 85.0.4183.83', '103.205.71.20', 'mac', '2020-08-31 14:51:58', '2020-08-31 15:25:54'),
(118, 1, 'Chrome 85.0.4183.83', '103.205.71.20', 'mac', '2020-08-31 15:26:22', '2020-08-31 15:26:28'),
(119, 1, 'Chrome 84.0.4147.135', '123.49.33.161', 'mac', '2020-08-31 17:52:37', '0000-00-00 00:00:00'),
(120, 1, 'Chrome 85.0.4183.102', '103.205.71.20', 'mac', '2020-09-10 21:34:25', '2020-09-10 21:34:48'),
(121, 1, 'Chrome 85.0.4183.102', '103.137.7.10', 'mac', '2020-09-14 10:13:11', '0000-00-00 00:00:00'),
(122, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 20:15:36', '0000-00-00 00:00:00'),
(123, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 21:56:35', '0000-00-00 00:00:00'),
(124, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 21:56:51', '0000-00-00 00:00:00'),
(125, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:09:02', '0000-00-00 00:00:00'),
(126, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:09:08', '0000-00-00 00:00:00'),
(127, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:32:49', '0000-00-00 00:00:00'),
(128, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:39:34', '0000-00-00 00:00:00'),
(129, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:40:40', '0000-00-00 00:00:00'),
(130, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:41:30', '0000-00-00 00:00:00'),
(131, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:42:37', '0000-00-00 00:00:00'),
(132, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:43:19', '0000-00-00 00:00:00'),
(133, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:44:19', '0000-00-00 00:00:00'),
(134, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:44:36', '0000-00-00 00:00:00'),
(135, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:48:35', '0000-00-00 00:00:00'),
(136, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:48:59', '0000-00-00 00:00:00'),
(137, 1, 'Chrome 85.0.4183.102', '::1', 'mac', '2020-09-21 22:50:40', '0000-00-00 00:00:00'),
(138, 1, 'Chrome 86.0.4240.193', '::1', 'mac', '2020-11-13 19:23:12', '0000-00-00 00:00:00'),
(139, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-14 00:56:49', '0000-00-00 00:00:00'),
(140, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-14 22:00:17', '0000-00-00 00:00:00'),
(141, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-26 20:41:22', '0000-00-00 00:00:00'),
(142, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-27 03:13:19', '2020-12-27 03:38:50'),
(143, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-29 21:19:53', '0000-00-00 00:00:00'),
(144, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-30 08:05:33', '0000-00-00 00:00:00'),
(145, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-30 18:55:22', '0000-00-00 00:00:00'),
(146, 1, 'Chrome 87.0.4280.88', '::1', 'mac', '2020-12-30 23:20:48', '0000-00-00 00:00:00'),
(147, 1, 'Chrome 87.0.4280.88', '103.205.71.20', 'mac', '2020-12-31 00:42:08', '2020-12-31 00:42:14'),
(148, 1, 'Chrome 87.0.4280.88', '103.205.71.20', 'mac', '2020-12-31 01:02:13', '0000-00-00 00:00:00'),
(149, 1, 'Chrome 87.0.4280.101', '45.251.228.119', 'mac', '2020-12-31 01:09:14', '0000-00-00 00:00:00'),
(150, 1, 'Chrome 88.0.4324.150', '103.205.71.20', 'mac', '2021-02-15 08:16:57', '2021-02-15 08:18:50'),
(151, 1, 'Chrome 88.0.4324.150', '103.205.71.20', 'mac', '2021-02-15 08:19:46', '2021-02-15 08:21:26'),
(152, 1, 'Chrome 88.0.4324.150', '::1', 'mac', '2021-02-16 00:29:17', '2021-02-16 00:29:25'),
(153, 1, 'Chrome 88.0.4324.150', '::1', 'mac', '2021-02-16 14:58:45', '0000-00-00 00:00:00'),
(154, 1, 'Chrome 88.0.4324.150', '::1', 'mac', '2021-02-16 15:10:19', '0000-00-00 00:00:00'),
(155, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-21 12:09:30', '0000-00-00 00:00:00'),
(156, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-21 18:02:03', '0000-00-00 00:00:00'),
(157, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-21 21:58:15', '0000-00-00 00:00:00'),
(158, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-22 08:06:52', '0000-00-00 00:00:00'),
(159, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-24 08:09:14', '0000-00-00 00:00:00'),
(160, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-25 23:29:19', '0000-00-00 00:00:00'),
(161, 1, 'Chrome 88.0.4324.182', '::1', 'mac', '2021-02-26 09:36:42', '0000-00-00 00:00:00'),
(162, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-02-26 17:21:55', '0000-00-00 00:00:00'),
(163, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-02-26 22:03:42', '0000-00-00 00:00:00'),
(164, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-02-27 10:59:12', '0000-00-00 00:00:00'),
(165, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-02-27 23:09:43', '0000-00-00 00:00:00'),
(166, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-02-28 23:31:32', '0000-00-00 00:00:00'),
(167, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-03-01 21:08:11', '0000-00-00 00:00:00'),
(168, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-03-02 08:06:50', '0000-00-00 00:00:00'),
(169, 1, 'Chrome 88.0.4324.190', '::1', 'mac', '2021-03-02 22:54:22', '2021-03-03 03:00:13'),
(170, 1, 'Chrome 89.0.4389.72', '::1', 'mac', '2021-03-03 18:21:43', '2021-03-03 19:33:59'),
(171, 1, 'Chrome 89.0.4389.72', '::1', 'mac', '2021-03-03 19:35:16', '0000-00-00 00:00:00'),
(172, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-04 00:58:41', '0000-00-00 00:00:00'),
(173, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-04 23:45:21', '0000-00-00 00:00:00'),
(174, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-04 23:47:18', '0000-00-00 00:00:00'),
(175, 1, 'Chrome 88.0.4324.190', '103.221.255.62', 'mac', '2021-03-05 00:16:53', '0000-00-00 00:00:00'),
(176, 1, 'Chrome 89.0.4389.72', '42.0.6.229', 'mac', '2021-03-06 11:52:20', '2021-03-06 11:56:08'),
(177, 1, 'Chrome 89.0.4389.72', '42.0.6.229', 'mac', '2021-03-06 12:27:48', '0000-00-00 00:00:00'),
(178, 1, 'Chrome 89.0.4389.72', '42.0.6.229', 'mac', '2021-03-06 12:40:40', '2021-03-06 16:19:11'),
(179, 1, 'Chrome 89.0.4389.72', '42.0.6.229', 'mac', '2021-03-06 19:39:11', '2021-03-06 19:40:30'),
(180, 1, 'Chrome 89.0.4389.72', '42.0.6.229', 'mac', '2021-03-06 19:46:38', '0000-00-00 00:00:00'),
(181, 1, 'Chrome 88.0.4324.190', '27.147.207.115', 'mac', '2021-03-06 21:13:06', '0000-00-00 00:00:00'),
(182, 1, 'Chrome 89.0.4389.72', '103.221.254.55', 'mac', '2021-03-07 15:55:45', '0000-00-00 00:00:00'),
(183, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-08 06:49:49', '0000-00-00 00:00:00'),
(184, 1, 'Chrome 88.0.4324.190', '103.221.254.70', 'mac', '2021-03-08 14:46:00', '0000-00-00 00:00:00'),
(185, 1, 'Chrome 89.0.4389.72', '103.221.254.70', 'mac', '2021-03-08 18:14:57', '0000-00-00 00:00:00'),
(186, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-09 07:49:12', '2021-03-09 09:39:27'),
(187, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-09 07:56:42', '0000-00-00 00:00:00'),
(188, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-09 08:06:51', '0000-00-00 00:00:00'),
(189, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-09 08:07:48', '0000-00-00 00:00:00'),
(190, 1, 'Chrome 89.0.4389.72', '103.205.71.20', 'mac', '2021-03-09 08:15:27', '0000-00-00 00:00:00'),
(191, 1, 'Chrome 89.0.4389.82', '103.221.254.55', 'mac', '2021-03-09 09:43:33', '0000-00-00 00:00:00'),
(192, 1, 'Chrome 89.0.4389.82', '103.221.254.55', 'mac', '2021-03-09 09:56:13', '0000-00-00 00:00:00'),
(193, 1, 'Chrome 89.0.4389.82', '103.221.253.227', 'mac', '2021-03-09 09:58:17', '2021-03-09 09:59:14'),
(194, 1, 'Chrome 89.0.4389.82', '43.229.12.229', 'mac', '2021-03-09 12:06:32', '2021-03-09 12:09:51'),
(195, 1, 'Chrome 89.0.4389.82', '103.205.71.20', 'mac', '2021-03-10 00:42:53', '2021-03-10 01:11:53'),
(196, 1, 'Chrome 89.0.4389.82', '103.205.71.20', 'mac', '2021-03-10 01:18:19', '2021-03-10 01:30:29'),
(197, 1, 'Chrome 89.0.4389.82', '103.205.71.20', 'mac', '2021-03-12 18:46:59', '0000-00-00 00:00:00'),
(198, 1, 'Chrome 89.0.4389.82', '103.205.71.20', 'mac', '2021-03-14 00:18:49', '0000-00-00 00:00:00'),
(199, 1, 'Chrome 89.0.4389.82', '103.221.254.70', 'mac', '2021-03-14 16:34:02', '0000-00-00 00:00:00'),
(200, 1, 'Chrome 89.0.4389.82', '103.205.71.20', 'mac', '2021-03-15 02:15:07', '0000-00-00 00:00:00'),
(201, 1, 'Chrome 88.0.4324.190', '27.147.207.115', 'mac', '2021-03-16 14:09:01', '0000-00-00 00:00:00'),
(202, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-24 08:10:39', '0000-00-00 00:00:00'),
(203, 1, 'Chrome 89.0.4389.90', '27.147.207.115', 'mac', '2021-03-24 08:47:00', '0000-00-00 00:00:00'),
(204, 1, 'Chrome 89.0.4389.90', '103.221.253.227', 'mac', '2021-03-24 09:52:50', '0000-00-00 00:00:00'),
(205, 1, 'Chrome 83.0.4103.106', '37.111.218.165', 'mac', '2021-03-24 10:04:11', '0000-00-00 00:00:00'),
(206, 1, 'Chrome 89.0.4389.90', '103.118.76.162', 'mac', '2021-03-24 23:11:42', '0000-00-00 00:00:00'),
(207, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-25 01:59:13', '0000-00-00 00:00:00'),
(208, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-25 07:54:32', '0000-00-00 00:00:00'),
(209, 1, 'Chrome 83.0.4103.106', '43.229.12.146', 'mac', '2021-03-25 15:51:54', '0000-00-00 00:00:00'),
(210, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-28 00:42:22', '0000-00-00 00:00:00'),
(211, 1, 'Chrome 89.0.4389.90', '27.147.207.115', 'mac', '2021-03-30 01:03:19', '0000-00-00 00:00:00'),
(212, 1, 'Chrome 89.0.4389.90', '27.147.207.115', 'mac', '2021-03-30 13:45:07', '0000-00-00 00:00:00'),
(213, 1, 'Chrome 89.0.4389.90', '103.221.254.58', 'mac', '2021-03-30 14:07:38', '0000-00-00 00:00:00'),
(214, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-30 16:31:21', '0000-00-00 00:00:00'),
(215, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-30 19:31:29', '0000-00-00 00:00:00'),
(216, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-03-30 23:33:08', '2021-03-31 00:30:20'),
(217, 1, 'Chrome 89.0.4389.90', '27.147.207.115', 'mac', '2021-03-31 00:03:02', '0000-00-00 00:00:00'),
(218, 1, 'Chrome 89.0.4389.90', '103.221.254.70', 'mac', '2021-04-01 16:49:26', '0000-00-00 00:00:00'),
(219, 1, 'Chrome 89.0.4389.90', '103.221.254.70', 'mac', '2021-04-01 16:51:04', '0000-00-00 00:00:00'),
(220, 1, 'Chrome 89.0.4389.90', '103.205.71.20', 'mac', '2021-04-02 13:06:21', '0000-00-00 00:00:00'),
(221, 1, 'Chrome 89.0.4389.114', '103.205.71.20', 'mac', '2021-04-03 09:20:40', '0000-00-00 00:00:00'),
(222, 1, 'Chrome 89.0.4389.114', '103.205.71.20', 'mac', '2021-04-03 14:58:31', '0000-00-00 00:00:00'),
(223, 1, 'Chrome 89.0.4389.114', '203.76.221.98', 'mac', '2021-04-03 15:19:09', '2021-04-03 15:20:16'),
(224, 1, 'Chrome 89.0.4389.114', '103.221.254.58', 'mac', '2021-04-04 19:26:07', '0000-00-00 00:00:00'),
(225, 1, 'Chrome 89.0.4389.114', '103.205.71.20', 'mac', '2021-04-05 19:52:54', '0000-00-00 00:00:00'),
(226, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-05 23:01:01', '0000-00-00 00:00:00'),
(227, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-05 23:01:05', '0000-00-00 00:00:00'),
(228, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-06 00:14:07', '0000-00-00 00:00:00'),
(229, 1, 'Chrome 89.0.4389.90', '27.147.207.115', 'mac', '2021-04-06 12:37:38', '0000-00-00 00:00:00'),
(230, 1, 'Chrome 89.0.4389.90', '27.147.207.115', 'mac', '2021-04-06 12:37:54', '0000-00-00 00:00:00'),
(231, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-07 12:05:40', '0000-00-00 00:00:00'),
(232, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-08 12:55:57', '2021-04-08 13:09:37'),
(233, 1, 'Chrome 89.0.4389.114', '103.205.71.20', 'mac', '2021-04-08 13:11:46', '0000-00-00 00:00:00'),
(234, 1, 'Chrome 89.0.4389.114', '27.147.207.115', 'mac', '2021-04-09 07:32:17', '0000-00-00 00:00:00'),
(235, 1, 'Chrome 89.0.4389.114', '103.205.71.20', 'mac', '2021-04-09 10:52:01', '0000-00-00 00:00:00'),
(236, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-11 07:27:11', '0000-00-00 00:00:00'),
(237, 1, 'Chrome 89.0.4389.114', '103.118.76.162', 'mac', '2021-04-11 07:51:48', '0000-00-00 00:00:00'),
(238, 1, 'Chrome 89.0.4389.114', '103.60.175.24', 'mac', '2021-04-12 09:13:30', '0000-00-00 00:00:00'),
(239, 1, 'Chrome 89.0.4389.105', '103.221.254.58', 'mac', '2021-04-12 09:46:55', '2021-04-12 09:48:16'),
(240, 1, 'Chrome 89.0.4389.114', '103.221.254.55', 'mac', '2021-04-12 15:33:35', '0000-00-00 00:00:00'),
(241, 1, 'Chrome 89.0.4389.114', '27.147.207.115', 'mac', '2021-04-12 17:36:27', '0000-00-00 00:00:00'),
(242, 1, 'Chrome 89.0.4389.114', '103.60.175.24', 'mac', '2021-04-12 19:47:04', '0000-00-00 00:00:00'),
(243, 1, 'Chrome 89.0.4389.114', '103.221.254.58', 'mac', '2021-04-13 00:57:41', '0000-00-00 00:00:00'),
(244, 1, 'Chrome 89.0.4389.114', '103.60.175.24', 'mac', '2021-04-13 02:13:27', '2021-04-13 02:14:42'),
(245, 5, 'Chrome 89.0.4389.114', '27.147.207.115', 'mac', '2021-04-13 11:08:31', '0000-00-00 00:00:00'),
(246, 1, 'Chrome 89.0.4389.114', '103.205.71.20', 'mac', '2021-04-19 03:08:17', '0000-00-00 00:00:00'),
(247, 5, 'Chrome 90.0.4430.72', '180.211.243.250', 'mac', '2021-04-19 10:05:31', '0000-00-00 00:00:00'),
(248, 5, 'Chrome 90.0.4430.72', '180.211.243.250', 'mac', '2021-04-19 10:06:13', '0000-00-00 00:00:00'),
(249, 5, 'Chrome 90.0.4430.85', '180.211.243.250', 'mac', '2021-04-25 10:14:01', '2021-04-25 14:58:10'),
(250, 5, 'Chrome 90.0.4430.85', '180.211.243.250', 'mac', '2021-04-25 14:58:20', '0000-00-00 00:00:00'),
(251, 1, 'Chrome 90.0.4430.85', '103.205.71.20', 'mac', '2021-04-25 15:03:07', '0000-00-00 00:00:00'),
(252, 5, 'Chrome 90.0.4430.85', '180.211.243.250', 'mac', '2021-04-26 11:16:57', '0000-00-00 00:00:00'),
(253, 5, 'Chrome 90.0.4430.85', '180.211.243.250', 'mac', '2021-04-26 16:45:30', '0000-00-00 00:00:00'),
(254, 5, 'Chrome 90.0.4430.85', '180.211.243.250', 'mac', '2021-04-28 11:53:41', '0000-00-00 00:00:00'),
(255, 5, 'Chrome 90.0.4430.93', '180.211.243.250', 'mac', '2021-04-29 12:44:32', '0000-00-00 00:00:00'),
(256, 5, 'Chrome 90.0.4430.93', '180.211.243.250', 'mac', '2021-04-29 12:45:12', '0000-00-00 00:00:00'),
(257, 5, 'Chrome 55.0.2883.87', '37.111.230.181', 'mac', '2021-05-01 15:32:21', '0000-00-00 00:00:00'),
(258, 5, 'Chrome 90.0.4430.93', '37.111.248.39', 'mac', '2021-05-11 10:50:48', '0000-00-00 00:00:00'),
(259, 5, 'Chrome 90.0.4430.93', '180.211.243.250', 'mac', '2021-05-11 15:30:32', '0000-00-00 00:00:00'),
(260, 5, 'Chrome 90.0.4430.93', '180.211.243.250', 'mac', '2021-05-12 12:47:23', '0000-00-00 00:00:00'),
(261, 5, 'Chrome 90.0.4430.93', '180.211.243.250', 'mac', '2021-05-18 11:16:24', '0000-00-00 00:00:00'),
(262, 1, 'Chrome 90.0.4430.212', '103.205.71.20', 'mac', '2021-05-18 15:41:36', '0000-00-00 00:00:00'),
(263, 1, 'Chrome 90.0.4430.212', '103.205.71.20', 'mac', '2021-05-18 18:31:30', '0000-00-00 00:00:00'),
(264, 5, 'Chrome 90.0.4430.212', '180.211.243.250', 'mac', '2021-05-19 12:58:14', '0000-00-00 00:00:00'),
(265, 1, 'Chrome 90.0.4430.212', '103.205.71.20', 'mac', '2021-05-19 13:49:49', '0000-00-00 00:00:00'),
(266, 1, 'Chrome 90.0.4430.212', '103.205.71.20', 'mac', '2021-05-23 10:00:48', '0000-00-00 00:00:00'),
(267, 5, 'Chrome 91.0.4472.77', '37.111.223.31', 'mac', '2021-06-13 11:29:04', '0000-00-00 00:00:00'),
(268, 5, 'Chrome 91.0.4472.101', '180.211.243.250', 'mac', '2021-06-14 11:06:04', '0000-00-00 00:00:00'),
(269, 5, 'Chrome 91.0.4472.101', '180.211.243.250', 'mac', '2021-06-14 18:50:23', '0000-00-00 00:00:00'),
(270, 1, 'Chrome 91.0.4472.101', '::1', 'mac', '2021-06-16 20:25:57', '0000-00-00 00:00:00'),
(271, 1, 'Chrome 96.0.4664.110', '::1', 'mac', '2021-12-28 18:56:18', '0000-00-00 00:00:00'),
(272, 1, 'Chrome 96.0.4664.110', '::1', 'mac', '2021-12-30 12:27:28', '0000-00-00 00:00:00'),
(273, 1, 'Chrome 96.0.4664.110', '::1', 'mac', '2021-12-31 21:43:28', '0000-00-00 00:00:00'),
(274, 1, 'Chrome 97.0.4692.99', '::1', 'mac', '2022-02-03 14:21:56', '0000-00-00 00:00:00'),
(275, 1, 'Chrome 99.0.4844.51', '::1', 'mac', '2022-03-09 22:35:46', '0000-00-00 00:00:00'),
(276, 1, 'Chrome 99.0.4844.51', '::1', 'mac', '2022-03-10 09:17:06', '2022-03-10 09:17:52'),
(277, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-10 11:32:51', '0000-00-00 00:00:00'),
(278, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 15:13:06', '0000-00-00 00:00:00'),
(279, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 15:15:20', '0000-00-00 00:00:00'),
(280, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 15:38:07', '0000-00-00 00:00:00'),
(281, 1, 'Chrome 99.0.4844.51', '::1', 'mac', '2022-03-12 15:56:45', '0000-00-00 00:00:00'),
(282, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 16:08:26', '0000-00-00 00:00:00'),
(283, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 16:10:48', '0000-00-00 00:00:00'),
(284, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 16:12:46', '0000-00-00 00:00:00'),
(285, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 16:35:31', '0000-00-00 00:00:00'),
(286, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 16:36:48', '0000-00-00 00:00:00'),
(287, 14, NULL, '127.0.0.1', 'mac', '2022-03-12 16:56:25', '0000-00-00 00:00:00'),
(288, 14, NULL, '127.0.0.1', 'mac', '2022-03-12 17:13:43', '0000-00-00 00:00:00'),
(289, 14, NULL, '127.0.0.1', 'mac', '2022-03-12 17:14:14', '0000-00-00 00:00:00'),
(290, 14, NULL, '127.0.0.1', 'mac', '2022-03-12 17:18:59', '0000-00-00 00:00:00'),
(291, 13, NULL, '127.0.0.1', 'mac', '2022-03-12 17:27:45', '0000-00-00 00:00:00'),
(292, 14, NULL, '127.0.0.1', 'mac', '2022-03-12 19:07:03', '0000-00-00 00:00:00'),
(293, 13, NULL, '::1', 'mac', '2022-03-13 09:07:47', '0000-00-00 00:00:00'),
(294, 13, NULL, '::1', 'mac', '2022-03-13 09:11:36', '0000-00-00 00:00:00'),
(295, 13, NULL, '::1', 'mac', '2022-03-13 10:35:35', '0000-00-00 00:00:00'),
(296, 13, NULL, '::1', 'mac', '2022-03-13 10:53:23', '0000-00-00 00:00:00'),
(297, 13, NULL, '::1', 'mac', '2022-03-13 10:54:31', '0000-00-00 00:00:00'),
(298, 13, NULL, '::1', 'mac', '2022-03-13 10:57:13', '0000-00-00 00:00:00'),
(299, 13, NULL, '::1', 'mac', '2022-03-13 10:59:23', '0000-00-00 00:00:00'),
(300, 13, NULL, '::1', 'mac', '2022-03-13 11:05:52', '0000-00-00 00:00:00'),
(301, 13, NULL, '::1', 'mac', '2022-03-13 11:07:03', '0000-00-00 00:00:00'),
(302, 13, NULL, '::1', 'mac', '2022-03-13 11:07:58', '0000-00-00 00:00:00'),
(303, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-13 12:03:43', '0000-00-00 00:00:00'),
(304, 13, NULL, '::1', 'mac', '2022-03-13 13:14:00', '0000-00-00 00:00:00'),
(305, 13, NULL, '::1', 'mac', '2022-03-13 14:44:52', '0000-00-00 00:00:00'),
(306, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-13 17:38:29', '0000-00-00 00:00:00'),
(307, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-14 09:14:40', '0000-00-00 00:00:00'),
(308, 13, NULL, '::1', 'mac', '2022-03-14 09:16:22', '0000-00-00 00:00:00'),
(309, 13, NULL, '::1', 'mac', '2022-03-14 10:20:52', '0000-00-00 00:00:00'),
(310, 13, NULL, '::1', 'mac', '2022-03-15 09:01:59', '0000-00-00 00:00:00'),
(311, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-15 09:38:29', '0000-00-00 00:00:00'),
(312, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-15 14:32:06', '0000-00-00 00:00:00'),
(313, 13, NULL, '::1', 'mac', '2022-03-15 16:31:28', '0000-00-00 00:00:00'),
(314, 13, NULL, '::1', 'mac', '2022-03-15 16:52:10', '0000-00-00 00:00:00'),
(315, 13, NULL, '::1', 'mac', '2022-03-15 16:55:34', '0000-00-00 00:00:00'),
(316, 14, NULL, '::1', 'mac', '2022-03-15 19:14:49', '0000-00-00 00:00:00'),
(317, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-16 08:21:39', '2022-03-16 13:29:14'),
(318, 17, NULL, '::1', 'mac', '2022-03-16 08:35:13', '0000-00-00 00:00:00'),
(319, 17, NULL, '::1', 'mac', '2022-03-16 08:52:44', '0000-00-00 00:00:00'),
(320, 17, NULL, '::1', 'mac', '2022-03-16 08:53:43', '0000-00-00 00:00:00'),
(321, 17, NULL, '::1', 'mac', '2022-03-16 08:59:29', '0000-00-00 00:00:00'),
(322, 17, NULL, '::1', 'mac', '2022-03-16 10:21:45', '0000-00-00 00:00:00'),
(323, 17, NULL, '::1', 'mac', '2022-03-16 11:00:10', '0000-00-00 00:00:00'),
(324, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-16 13:29:30', '0000-00-00 00:00:00'),
(325, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-20 08:50:15', '0000-00-00 00:00:00'),
(326, 17, NULL, '::1', 'mac', '2022-03-20 08:51:31', '0000-00-00 00:00:00'),
(327, 17, NULL, '::1', 'mac', '2022-03-20 09:26:19', '0000-00-00 00:00:00'),
(328, 17, NULL, '::1', 'mac', '2022-03-20 09:46:04', '0000-00-00 00:00:00'),
(329, 18, NULL, '::1', 'mac', '2022-03-20 11:25:11', '0000-00-00 00:00:00'),
(330, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-20 12:21:33', '0000-00-00 00:00:00'),
(331, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-21 09:12:22', '0000-00-00 00:00:00'),
(332, 19, NULL, '::1', 'mac', '2022-03-21 09:16:23', '0000-00-00 00:00:00'),
(333, 19, NULL, '::1', 'mac', '2022-03-21 10:09:57', '0000-00-00 00:00:00'),
(334, 17, NULL, '::1', 'mac', '2022-03-21 13:03:53', '0000-00-00 00:00:00'),
(335, 18, NULL, '::1', 'mac', '2022-03-21 13:04:14', '0000-00-00 00:00:00'),
(336, 19, NULL, '::1', 'mac', '2022-03-21 13:05:51', '0000-00-00 00:00:00'),
(337, 19, NULL, '::1', 'mac', '2022-03-22 09:53:24', '0000-00-00 00:00:00'),
(338, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-22 11:09:18', '0000-00-00 00:00:00'),
(339, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-22 14:09:43', '0000-00-00 00:00:00'),
(340, 19, NULL, '::1', 'mac', '2022-03-22 14:44:28', '0000-00-00 00:00:00'),
(341, 19, NULL, '::1', 'mac', '2022-03-22 15:07:14', '0000-00-00 00:00:00'),
(342, 19, NULL, '::1', 'mac', '2022-03-22 17:35:21', '0000-00-00 00:00:00'),
(343, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-23 09:05:42', '0000-00-00 00:00:00'),
(344, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-23 15:25:13', '0000-00-00 00:00:00'),
(345, 19, NULL, '::1', 'mac', '2022-03-23 16:41:14', '0000-00-00 00:00:00'),
(346, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-23 22:21:38', '0000-00-00 00:00:00'),
(347, 20, NULL, '::1', 'mac', '2022-03-23 23:05:12', '0000-00-00 00:00:00'),
(348, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-24 08:55:56', '0000-00-00 00:00:00'),
(349, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-24 14:36:28', '0000-00-00 00:00:00'),
(350, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-27 09:23:06', '0000-00-00 00:00:00'),
(351, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-27 11:54:46', '0000-00-00 00:00:00'),
(352, 21, NULL, '::1', 'mac', '2022-03-27 14:35:57', '0000-00-00 00:00:00'),
(353, 21, NULL, '::1', 'mac', '2022-03-27 17:24:07', '0000-00-00 00:00:00'),
(354, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-28 09:07:48', '0000-00-00 00:00:00'),
(355, 21, NULL, '::1', 'mac', '2022-03-28 14:29:57', '0000-00-00 00:00:00'),
(356, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-28 15:58:44', '0000-00-00 00:00:00'),
(357, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-29 09:01:51', '0000-00-00 00:00:00'),
(358, 1, NULL, '::1', 'mac', '2022-03-29 10:50:04', '0000-00-00 00:00:00'),
(359, 20, NULL, '::1', 'mac', '2022-03-29 10:50:27', '0000-00-00 00:00:00'),
(360, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-30 09:02:22', '0000-00-00 00:00:00'),
(361, 20, NULL, '::1', 'mac', '2022-03-30 09:17:06', '0000-00-00 00:00:00'),
(362, 20, NULL, '::1', 'mac', '2022-03-30 15:50:14', '0000-00-00 00:00:00'),
(363, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-31 08:50:27', '0000-00-00 00:00:00'),
(364, 20, NULL, '::1', 'mac', '2022-03-31 09:16:48', '0000-00-00 00:00:00'),
(365, 20, NULL, '::1', 'mac', '2022-03-31 09:20:40', '0000-00-00 00:00:00'),
(366, 22, NULL, '::1', 'mac', '2022-03-31 10:01:06', '0000-00-00 00:00:00'),
(367, 22, NULL, '::1', 'mac', '2022-03-31 10:01:30', '0000-00-00 00:00:00'),
(368, 22, NULL, '::1', 'mac', '2022-03-31 10:01:46', '0000-00-00 00:00:00'),
(369, 22, NULL, '::1', 'mac', '2022-03-31 10:02:07', '0000-00-00 00:00:00'),
(370, 22, NULL, '::1', 'mac', '2022-03-31 10:34:23', '0000-00-00 00:00:00'),
(371, 22, NULL, '::1', 'mac', '2022-03-31 10:34:41', '0000-00-00 00:00:00'),
(372, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-03-31 10:41:02', '0000-00-00 00:00:00'),
(373, 22, NULL, '::1', 'mac', '2022-03-31 11:40:45', '0000-00-00 00:00:00'),
(374, 1, 'Chrome 99.0.4844.84', '::1', 'mac', '2022-03-31 12:01:59', '2022-03-31 12:02:26'),
(375, 22, NULL, '::1', 'mac', '2022-03-31 12:02:53', '0000-00-00 00:00:00'),
(376, 1, 'Chrome 99.0.4844.84', '::1', 'mac', '2022-03-31 12:09:22', '2022-03-31 12:09:27'),
(377, 22, NULL, '::1', 'mac', '2022-03-31 12:09:51', '0000-00-00 00:00:00'),
(378, 1, 'Chrome 99.0.4844.84', '::1', 'mac', '2022-03-31 12:33:07', '2022-03-31 12:33:21'),
(379, 22, NULL, '::1', 'mac', '2022-03-31 12:34:11', '0000-00-00 00:00:00'),
(380, 20, NULL, '::1', 'mac', '2022-03-31 15:37:19', '0000-00-00 00:00:00'),
(381, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-02 08:54:09', '0000-00-00 00:00:00'),
(382, 22, NULL, '::1', 'mac', '2022-04-02 09:14:54', '0000-00-00 00:00:00'),
(383, 22, NULL, '::1', 'mac', '2022-04-02 09:15:29', '0000-00-00 00:00:00'),
(384, 22, NULL, '::1', 'mac', '2022-04-02 09:15:48', '0000-00-00 00:00:00'),
(385, 22, NULL, '::1', 'mac', '2022-04-02 09:16:01', '0000-00-00 00:00:00'),
(386, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-02 10:57:01', '0000-00-00 00:00:00'),
(387, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-02 13:04:04', '0000-00-00 00:00:00'),
(388, 22, NULL, '::1', 'mac', '2022-04-02 15:43:44', '0000-00-00 00:00:00'),
(389, 21, NULL, '::1', 'mac', '2022-04-02 15:48:04', '0000-00-00 00:00:00'),
(390, 22, NULL, '::1', 'mac', '2022-04-02 15:49:50', '0000-00-00 00:00:00'),
(391, 22, NULL, '::1', 'mac', '2022-04-02 16:26:09', '0000-00-00 00:00:00'),
(392, 22, NULL, '::1', 'mac', '2022-04-02 16:41:51', '0000-00-00 00:00:00'),
(393, 22, NULL, '::1', 'mac', '2022-04-03 08:55:38', '0000-00-00 00:00:00'),
(394, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-03 08:58:06', '0000-00-00 00:00:00'),
(395, 22, NULL, '::1', 'mac', '2022-04-03 10:50:02', '0000-00-00 00:00:00'),
(396, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-03 14:57:11', '0000-00-00 00:00:00'),
(397, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-03 17:17:11', '0000-00-00 00:00:00'),
(398, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-04 08:55:55', '0000-00-00 00:00:00'),
(399, 22, NULL, '::1', 'mac', '2022-04-04 10:02:55', '0000-00-00 00:00:00'),
(400, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-04 22:23:43', '0000-00-00 00:00:00'),
(401, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-06 10:49:43', '0000-00-00 00:00:00'),
(402, 22, NULL, '::1', 'mac', '2022-04-06 11:17:55', '0000-00-00 00:00:00'),
(403, 22, NULL, '::1', 'mac', '2022-04-09 09:10:45', '0000-00-00 00:00:00'),
(404, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-09 09:21:32', '0000-00-00 00:00:00'),
(405, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-09 11:17:24', '0000-00-00 00:00:00'),
(406, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-09 14:51:50', '0000-00-00 00:00:00'),
(407, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-10 09:05:20', '0000-00-00 00:00:00'),
(408, 1, 'Firefox 98.0', '127.0.0.1', 'mac', '2022-04-10 14:50:43', '0000-00-00 00:00:00'),
(409, 24, NULL, '::1', 'mac', '2022-04-10 15:55:25', '0000-00-00 00:00:00'),
(410, 1, 'Firefox 99.0', '127.0.0.1', 'mac', '2022-04-11 09:02:47', '0000-00-00 00:00:00'),
(411, 1, 'Firefox 99.0', '127.0.0.1', 'mac', '2022-04-12 08:34:40', '0000-00-00 00:00:00'),
(412, 1, 'Firefox 99.0', '127.0.0.1', 'mac', '2022-04-12 22:04:33', '0000-00-00 00:00:00'),
(413, 1, 'Chrome 100.0.4896.75', '::1', 'mac', '2022-04-13 08:54:38', '0000-00-00 00:00:00'),
(414, 1, 'Chrome 100.0.4896.75', '::1', 'mac', '2022-04-14 09:05:50', '0000-00-00 00:00:00'),
(415, 1, 'Chrome 100.0.4896.88', '::1', 'mac', '2022-04-16 09:02:20', '0000-00-00 00:00:00'),
(416, 1, 'Chrome 100.0.4896.127', '::1', 'mac', '2022-04-17 08:54:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dcb_mobile_verfication`
--

CREATE TABLE `dcb_mobile_verfication` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dcb_security_question`
--

CREATE TABLE `dcb_security_question` (
  `question_id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_security_question`
--

INSERT INTO `dcb_security_question` (`question_id`, `title`) VALUES
(1, 'What was your favorite color?'),
(2, 'What was your childhood nickname?'),
(3, 'What is the name of your favorite childhood friend?'),
(4, 'What is the middle name of your oldest child?'),
(5, 'What is your favorite team?'),
(6, 'What is your favorite movie?'),
(7, 'What was your favorite sport in high school?'),
(8, 'What was your favorite food as a child?'),
(9, 'What was the make and model of your first car?'),
(10, 'What was the name of the hospital where you were born?'),
(11, 'Who is your childhood sports hero?'),
(12, 'What school did you attend for sixth grade?'),
(13, 'What was the last name of your third grade teacher?'),
(14, 'What was the name of the company where you had your first job?');

-- --------------------------------------------------------

--
-- Table structure for table `dcb_security_setting`
--

CREATE TABLE `dcb_security_setting` (
  `security_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `two_step_verify` enum('on','off') NOT NULL DEFAULT 'off',
  `security_question_verify` enum('on','off') NOT NULL DEFAULT 'off',
  `trans_pin_code` enum('on','off') NOT NULL DEFAULT 'off',
  `mobile_verify` enum('on','off') NOT NULL DEFAULT 'off',
  `email_verify` enum('on','off') NOT NULL DEFAULT 'off',
  `send_sms_verify` enum('on','off') NOT NULL DEFAULT 'off',
  `random_picture_verify` enum('on','off') NOT NULL DEFAULT 'off',
  `password_complexity` enum('on','off') NOT NULL DEFAULT 'off',
  `pass_change_45_days` enum('on','off') NOT NULL DEFAULT 'off',
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_security_setting`
--

INSERT INTO `dcb_security_setting` (`security_id`, `user_id`, `two_step_verify`, `security_question_verify`, `trans_pin_code`, `mobile_verify`, `email_verify`, `send_sms_verify`, `random_picture_verify`, `password_complexity`, `pass_change_45_days`, `entry_date`) VALUES
(1, 1, 'on', 'on', 'off', 'on', 'on', 'on', 'on', 'off', 'off', '2018-06-08 10:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `dcb_sms`
--

CREATE TABLE `dcb_sms` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `api_key` text DEFAULT NULL,
  `api_url` text DEFAULT NULL,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_sms`
--

INSERT INTO `dcb_sms` (`id`, `username`, `pass`, `api_key`, `api_url`, `credit`, `entry_date`) VALUES
(1, 'root', '12345', '172808547692947701839707645', 'https://www.24bulksmsbd.com/api/smsSendApi', '1.00', '2022-03-30 11:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `dcb_sms_notification`
--

CREATE TABLE `dcb_sms_notification` (
  `id` int(11) NOT NULL,
  `wedgets` text NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_sms_notification`
--

INSERT INTO `dcb_sms_notification` (`id`, `wedgets`, `entry_date`) VALUES
(1, 'tradelicense_app_on,tradelicense_sonod_on,tradelicense_renew_On,oarish_app_on,oarish_sonod_on', '2016-07-19 06:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `dcb_sms_setting`
--

CREATE TABLE `dcb_sms_setting` (
  `id` int(11) NOT NULL,
  `sms_type` tinyint(2) NOT NULL,
  `msg` text NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_sms_setting`
--

INSERT INTO `dcb_sms_setting` (`id`, `sms_type`, `msg`, `entry_date`) VALUES
(1, 1, 'আপনার  ট্র্যাকিং নং  অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন দয়া করে', '2016-07-20 02:16:54'),
(2, 2, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2016-07-20 02:17:44'),
(3, 3, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2016-07-20 02:17:53'),
(4, 4, 'দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ  দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ  দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ ', '2016-07-21 04:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `dcb_sq_ans`
--

CREATE TABLE `dcb_sq_ans` (
  `ans_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ans` text NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcb_sq_ans`
--

INSERT INTO `dcb_sq_ans` (`ans_id`, `user_id`, `question_id`, `ans`, `entry_date`) VALUES
(1, 1, 1, 'black', '2018-06-07 21:09:30'),
(2, 1, 2, 'alam', '2018-06-07 21:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `debit_voucher`
--

CREATE TABLE `debit_voucher` (
  `id` bigint(16) NOT NULL,
  `vno` bigint(20) NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `debit_voucher`
--

INSERT INTO `debit_voucher` (`id`, `vno`, `utime`) VALUES
(1, 1, '2018-08-18 16:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `end_users`
--

CREATE TABLE `end_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` bigint(20) DEFAULT NULL,
  `birthcertificate_no` bigint(20) DEFAULT NULL,
  `pno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dofb` date DEFAULT NULL,
  `ename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mstatus` tinyint(2) DEFAULT NULL,
  `holding_no` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ewname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bwname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ehname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bhname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `efname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bfname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ocupt` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edustatus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bashinda` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_gram` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_gram` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_rbs` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_rbs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_wordno` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_wordno` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_dis` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_dis` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_thana` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_thana` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_postof` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pb_postof` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_gram` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perb_gram` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_rbs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perb_rbs` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_wordno` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perb_wordno` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_dis` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perb_dis` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_thana` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perb_thana` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_postof` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perb_postof` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_active` tinyint(3) DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `updated_by` int(6) DEFAULT NULL,
  `created_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `end_users`
--

INSERT INTO `end_users` (`id`, `name`, `mobile`, `email`, `nid`, `birthcertificate_no`, `pno`, `dofb`, `ename`, `gender`, `mstatus`, `holding_no`, `ewname`, `bwname`, `ehname`, `bhname`, `efname`, `bfname`, `emname`, `mname`, `ocupt`, `edustatus`, `religion`, `bashinda`, `p_gram`, `pb_gram`, `p_rbs`, `pb_rbs`, `p_wordno`, `pb_wordno`, `p_dis`, `pb_dis`, `p_thana`, `pb_thana`, `p_postof`, `pb_postof`, `per_gram`, `perb_gram`, `per_rbs`, `perb_rbs`, `per_wordno`, `perb_wordno`, `per_dis`, `perb_dis`, `per_thana`, `perb_thana`, `per_postof`, `perb_postof`, `profile`, `password`, `is_active`, `created_by`, `updated_by`, `created_ip`, `updated_ip`, `created_at`, `updated_at`, `last_login_time`) VALUES
(1, 'Abid Hossin', '018866764237', NULL, 209457893257325, 456745756765, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:21:00', NULL, '2022-03-29 10:50:04'),
(2, 'Abdul Jalil', '01906676423', NULL, 2094578932573, 56867889098, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:22:00', NULL, NULL),
(3, 'ddddd', '018866764238', NULL, 2094578932573255676, 546456546, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:23:00', NULL, NULL),
(4, 'Abid Hossin3', '019066764233', NULL, 5678657, 546546, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '698d51a19d8a121ce581499d7b701668', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:24:00', NULL, NULL),
(5, 'dgdfg', '0188667649', NULL, 56546546, 45645, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '698d51a19d8a121ce581499d7b701668', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:27:00', NULL, NULL),
(6, 'fsdfds', '0188667649', NULL, 4565466545, 789879, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '698d51a19d8a121ce581499d7b701668', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:32:00', NULL, NULL),
(7, 'fdgfdgfd', '01886676499', NULL, 2094578932573, 56867889098, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:33:00', NULL, NULL),
(8, 'gdsgdfgfd', '01886676499', NULL, 3254354, 54646, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:34:00', NULL, NULL),
(9, 'zfasfas', '01899345353', NULL, 346543654, 456546, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:52:00', NULL, NULL),
(10, 'gdsgdf', '0188667649', NULL, 2094578932573, 56867889098, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '698d51a19d8a121ce581499d7b701668', 1, NULL, NULL, NULL, NULL, '2022-03-10 08:58:00', NULL, NULL),
(11, 'dfgdf', '018866764237', NULL, 435646, 6546546, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '698d51a19d8a121ce581499d7b701668', 1, NULL, NULL, NULL, NULL, '2022-03-10 09:03:00', NULL, NULL),
(12, 'Sirajul Islam', '01906676423', NULL, 209457893257325, 5686788909845, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'b59c67bf196a4758191e42f76670ceba', 1, NULL, NULL, NULL, NULL, '2022-03-10 09:23:00', NULL, NULL),
(13, 'আবু বকর ', '01866543952', NULL, 1998001999222, 45654655, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, NULL, NULL, '2022-03-12 03:10:00', '2022-03-13 05:06:00', '2022-03-15 16:55:34'),
(14, 'মোঃ আকরাম হোসেন', '0177543951', NULL, 2000123354556, 4234356465657, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, NULL, NULL, '2022-03-12 10:56:00', NULL, '2022-03-15 19:14:49'),
(17, 'জুবায়ের আহমেদ ', '01966543911', NULL, 19980019992228, 19983454798574, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', 1, NULL, NULL, NULL, NULL, '2022-03-16 02:34:00', NULL, '2022-03-21 13:03:53'),
(18, 'আফতাব খান ', '01311000222', NULL, 199800199922287, 199800569023334, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', 1, NULL, NULL, NULL, NULL, '2022-03-20 05:24:00', NULL, '2022-03-21 13:04:14'),
(19, 'আব্দুল করিম ', '01466543951', NULL, 199933333444567, 199921000056123, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', 1, NULL, NULL, NULL, NULL, '2022-03-21 03:16:00', NULL, '2022-03-23 16:41:14'),
(20, 'আব্দুল মাজিদ ', '01839707645', NULL, 199845678904567, 199845678904456, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', 1, NULL, NULL, NULL, NULL, '2022-03-23 17:04:00', NULL, '2022-03-31 15:37:19'),
(21, 'Md Javed', '01339707634', NULL, 209457893257320, 209457893257356, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', 1, NULL, NULL, NULL, NULL, '2022-03-27 08:34:00', NULL, '2022-04-02 15:48:04'),
(22, 'মোঃ করিমভ ', '01866543951', 'ab@gmail.com', 199801909878890, 199801909874444, '4654654hh', '2022-02-27', 'Korimov', 'male', 2, '111', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', 'msc', 'ইসলাম', '2', 'Arambag', 'মধ্য আরামবাগ ', '664654', 'প্রধান সড়ক ', '6', '6', 'Feni', 'ফেনী ', 'fulgazi', 'ফুলগাজি ', 'aa', 'আরামবাগ', 'Arambag', 'মধ্য আরামবাগ ', '664654', 'প্রধান সড়ক ', '6', '6', 'Feni', 'ফেনী ', 'fulgazi', 'ফুলগাজি ', 'aa', 'আরামবাগ', 'al_amin_sig.jpg', '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, NULL, NULL, '2022-03-31 04:00:00', '2022-04-02 18:00:00', '2022-04-09 09:10:45'),
(24, 'মোঃ আকরাম হোসেন', '01866757454', NULL, 1998909794353459, 199890979435333, NULL, NULL, '', NULL, NULL, '263', NULL, NULL, NULL, NULL, NULL, 'আব্দুল মাজিদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'আরামবাগ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, NULL, '127.0.0.1', NULL, '2022-04-10 09:49:49', NULL, '2022-04-10 15:55:25'),
(25, 'aaaaaaaaaaaaa', '01899090990', NULL, 199999999992222, 1999999999922256, NULL, NULL, '', NULL, NULL, '200', NULL, NULL, NULL, NULL, NULL, 'bbbbbbbbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CCCCCCC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, NULL, '127.0.0.1', NULL, '2022-04-11 10:08:11', NULL, NULL),
(26, 'vvvvvvvvvv', '01544444445', NULL, 199999999992666, 199999999990000, NULL, NULL, '', NULL, NULL, '202', NULL, NULL, NULL, NULL, NULL, 'lkl;mxdvgv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sgfgsdgs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, NULL, '127.0.0.1', NULL, '2022-04-11 10:09:19', NULL, NULL),
(27, 'uuuuuuuuuuuuuuuu', '01677777777', NULL, 19999999777777889, 199999999876532, NULL, NULL, '', NULL, NULL, '204', NULL, NULL, NULL, NULL, NULL, 'jkljhn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jgjhgb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, NULL, '127.0.0.1', NULL, '2022-04-11 10:10:17', NULL, NULL),
(28, 'Taek aziz', '01788898985', NULL, 20200000000333, 202000000003554, NULL, NULL, '', NULL, NULL, '544', NULL, NULL, NULL, NULL, NULL, 'aziz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'noaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, NULL, '127.0.0.1', NULL, '2022-04-12 10:31:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `end_user_invoice`
--

CREATE TABLE `end_user_invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trackid` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` bigint(20) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  `signboard_fee` decimal(10,2) DEFAULT NULL,
  `recommendation_fee` decimal(10,2) DEFAULT NULL,
  `due_fee` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `sub_charge` decimal(10,2) DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL,
  `account_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `is_active` tinyint(3) DEFAULT NULL,
  `type` tinyint(3) NOT NULL COMMENT '1=trade license, 2=nagorik,3= character, 20=warish',
  `is_paid` tinyint(3) DEFAULT NULL COMMENT '0=unpaid, 1=paid',
  `created_by` int(6) DEFAULT NULL,
  `updated_by` int(6) DEFAULT NULL,
  `created_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `end_user_invoice`
--

INSERT INTO `end_user_invoice` (`id`, `user_id`, `trackid`, `record_id`, `fee`, `signboard_fee`, `recommendation_fee`, `due_fee`, `vat`, `sub_charge`, `total_fee`, `account_no`, `invoice_date`, `payment_date`, `is_active`, `type`, `is_paid`, `created_by`, `updated_by`, `created_ip`, `updated_ip`, `created_at`, `updated_at`) VALUES
(4, 13, '467008', 11, '500.00', NULL, NULL, '0.00', '75.00', '0.00', '575.00', '0000-0000-0000-0000', '2022-03-15', '2022-03-15', 1, 1, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-15 10:20:13', '2022-03-15 10:56:00'),
(6, 14, '418709', 12, '1000.00', NULL, NULL, '0.00', '150.00', '0.00', '1150.00', '0000-0000-0000-0000', '2022-03-15', '2022-03-15', 1, 1, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-15 13:37:02', '2022-03-15 13:37:00'),
(8, 17, '286220', 12, '20.00', NULL, NULL, NULL, NULL, NULL, '20.00', '0000-0000-0000-0000', '2022-03-16', '2022-03-16', 1, 2, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-16 08:24:03', '2022-03-16 08:45:00'),
(9, 18, '361938', 8, '50.00', NULL, NULL, NULL, NULL, NULL, '50.00', '0000-0000-0000-0000', '2022-03-20', '2022-03-20', 1, 3, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-20 07:20:01', '2022-03-20 08:14:00'),
(10, 18, '666016', 13, '30.00', NULL, NULL, NULL, NULL, NULL, '30.00', '0000-0000-0000-0000', '2022-03-20', '2022-03-20', 1, 2, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-20 12:54:05', '2022-03-20 12:54:00'),
(11, 19, '498113', 14, '30.00', NULL, NULL, NULL, NULL, NULL, '30.00', '0000-0000-0000-0000', '2022-03-21', '2022-03-21', 1, 2, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-21 03:19:35', '2022-03-21 03:20:00'),
(13, 19, '251137', 4, '60.00', NULL, NULL, NULL, NULL, NULL, '60.00', '0000-0000-0000-0000', '2022-03-21', '2022-03-21', 1, 20, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-21 07:13:11', '2022-03-21 08:25:00'),
(14, 19, '364282', 10, '100.00', NULL, NULL, NULL, NULL, NULL, '100.00', '0000-0000-0000-0000', '2022-03-22', NULL, 1, 3, 0, 0, NULL, '127.0.0.1', NULL, '2022-03-22 06:06:15', NULL),
(15, 20, '388281', 15, '50.00', NULL, NULL, NULL, NULL, NULL, '50.00', '0000-0000-0000-0000', '2022-03-23', '2022-03-23', 1, 2, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-23 17:07:43', '2022-03-23 17:09:00'),
(16, 21, '578256', 12, '100.00', NULL, NULL, NULL, NULL, NULL, '100.00', '0000-0000-0000-0000', '2022-03-27', '2022-03-27', 1, 3, 1, 0, NULL, '127.0.0.1', '::1', '2022-03-27 11:25:49', '2022-03-27 11:26:00'),
(17, 21, '512820', 5, '600.00', NULL, NULL, NULL, NULL, NULL, '600.00', '0000-0000-0000-0000', '2022-03-28', NULL, 1, 20, 0, 0, NULL, '127.0.0.1', NULL, '2022-03-28 10:25:19', NULL),
(20, 20, '531042', 14, '500.00', NULL, NULL, '0.00', '75.00', '100.00', '675.00', '0000-0000-0000-0000', '2022-03-29', NULL, 1, 1, 0, 0, NULL, '127.0.0.1', NULL, '2022-03-29 05:12:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exphead`
--

CREATE TABLE `exphead` (
  `id` int(11) UNSIGNED NOT NULL,
  `fund` tinyint(3) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exphead`
--

INSERT INTO `exphead` (`id`, `fund`, `title`, `balance`) VALUES
(1, 2, 'সাধারন সংস্হাপন', '0.00'),
(2, 1, 'যোগাযোগ', '0.00'),
(3, 2, 'স্বাস্থ্য', '0.00'),
(4, 1, 'পানি সরবরাহ', '0.00'),
(5, 1, 'শিক্ষা', '0.00'),
(6, 1, 'প্রাকৃতিক সম্পদ ব্যবস্হাপনা', '0.00'),
(7, 1, 'কৃষি ও বাজার', '0.00'),
(8, 1, 'পয়নিষ্কাশন এবং বর্জ্য ব্যবস্থাপনা', '0.00'),
(9, 1, 'মানব সম্পদ উন্নয়ন', '0.00'),
(10, 1, 'অন্যান্য', '0.00'),
(11, 1, 'এলজিএসপি ফান্ড ফেরত হইতে ব্যয়', '0.00'),
(12, 1, 'অন্যা্ন্য ফান্ড ফেরত হইতে ব্যয়', '0.00'),
(13, 2, 'অডিট', '0.00'),
(14, 1, 'অগ্রিম', '0.00'),
(15, 2, 'Tax comition', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `expurpose`
--

CREATE TABLE `expurpose` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expurpose`
--

INSERT INTO `expurpose` (`id`, `pid`, `pname`, `balance`) VALUES
(1, 1, 'চেয়ারম্যান ও সদস্যদের ভাতা', '0.00'),
(2, 1, 'সেক্রেটারী ও অন্যান্য কর্মচারীদের বেতন', '0.00'),
(3, 5, 'কাবিখা', '0.00'),
(4, 5, 'টি আর', '0.00'),
(5, 3, 'এডিপি', '0.00'),
(6, 3, 'অতিদরিদ্র কর্মসূচি', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `food_dealer_info`
--

CREATE TABLE `food_dealer_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1= Dealer, 2= issue kito authority (খাদ্য বান্ধব কর্মসূচি), 3=implement Authority (VGD), 4 = Responsible Officer(VGD), 5 = UNO (VGD)',
  `name` varchar(300) DEFAULT NULL,
  `shop_name` varchar(500) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` date DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_dealer_info`
--

INSERT INTO `food_dealer_info` (`id`, `type`, `name`, `shop_name`, `address`, `mobile`, `designation`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`) VALUES
(1, 1, 'আজিজুল', '-', 'নাটোর সদর উপজেলা', '01719821693', '', 1, NULL, NULL, NULL, 1, '2021-05-23', '103.205.71.20'),
(2, 1, 'আবুল কালাম', '-', 'নাটোর সদর উপজেলা', '01712140759', '', 1, NULL, NULL, NULL, 1, '2021-05-23', '103.205.71.20'),
(3, 2, 'মো: রেজাউল করিম', '', 'নাটোর সদর উপজেলা', '01711189307', 'উপজেলা খাদ্য নিয়ন্ত্রক', 1, NULL, NULL, NULL, 1, '2021-03-06', '::1'),
(4, 2, 'আবদুর রহমান', '', 'নাটোর সদর উপজেলা', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 't', 'tt', '3', '4', NULL, 1, 1, '2021-03-03', '::1', NULL, NULL, NULL),
(6, 1, 'মোঃ অহিদ', '-', 'নাটোর সদর উপজেলা', '01734340650', '', 1, 1, '2021-03-03', '::1', 1, '2021-05-23', '103.205.71.20'),
(7, 3, 'মো: আলতাফ হোসেন', '', 'লক্ষীপুর খোলাবাড়িয়া', '01718281974', 'ইউপি চেয়ারম্যান', 1, 1, '2021-03-03', '::1', 5, '2021-04-25', '180.211.243.250'),
(8, 4, 'হাসনা জাহান', '', 'উপজেলা মহিরা বিষয়ক কর্মকর্তা', '33', '', 1, 1, '2021-03-03', '::1', 1, '2021-12-28', '::1'),
(9, 5, 'মোঃ জাহাঙ্গীর আলম', '', 'নাটোর সদর, নাটোর', '০১৭৬২৬৯২১১৩', 'উপজেলা নির্বাহী অফিসার', 1, 1, '2021-03-03', '::1', 5, '2021-05-19', '180.211.243.250'),
(10, 1, 't', '3', '3', '3', NULL, 0, 1, '2021-03-03', '::1', 1, '2021-03-03', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `food_program_info`
--

CREATE TABLE `food_program_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `program_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '	1 = খাদ্য বান্ধব কর্মসূচি, 2 = VGD',
  `vgd_cricle` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(300) NOT NULL,
  `person_amt` int(10) UNSIGNED DEFAULT NULL,
  `total_allotment` int(10) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `unit_id` int(11) UNSIGNED DEFAULT NULL COMMENT '1=Kg, 2=Mattik ton',
  `food_type` tinyint(1) DEFAULT NULL COMMENT '1 = চাল, 2 = অন্যান্য'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_program_info`
--

INSERT INTO `food_program_info` (`id`, `program_type`, `vgd_cricle`, `title`, `person_amt`, `total_allotment`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `unit_id`, `food_type`) VALUES
(1, 1, NULL, 'মার্চ - ২০২১', 30, 30000, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, 2, 1, 'এপ্রিল ২০২১', 0, 0, 2, 1, '2021-03-03 01:11:23', '::1', 1, '2021-05-18 18:43:11', '103.205.71.20', NULL, NULL),
(3, 1, NULL, 't', 3, 3, 0, 1, '2021-03-03 01:12:22', '::1', 1, '2021-03-03 02:19:56', '::1', NULL, NULL),
(4, 1, NULL, 'hello the world r', 3, 3, 0, 1, '2021-03-03 01:13:39', '::1', 1, '2021-03-03 02:14:28', '::1', NULL, NULL),
(5, 1, NULL, 'মার্চ - ২০২১', 30, 30000, 0, 1, '2021-03-03 01:52:26', '::1', 1, '2021-03-03 02:20:00', '::1', NULL, NULL),
(6, 1, NULL, 'মার্চ - ২০২১', 30, 30000, 2, 1, '2021-03-03 01:54:56', '::1', NULL, NULL, NULL, NULL, NULL),
(7, 1, NULL, 'মার্চ - ২০২১ tes', 30, 30000, 0, 1, '2021-03-03 01:55:12', '::1', 1, '2021-03-03 02:12:35', '::1', NULL, NULL),
(8, 1, NULL, 'মার্চ - ২০২১ tes 3', 30, 30000, 0, 1, '2021-03-03 01:55:12', '::1', 1, '2021-03-03 02:12:29', '::1', NULL, NULL),
(9, 2, 1, 'মে-২০২১', 0, 0, 2, 5, '2021-05-11 18:16:12', '37.111.239.207', 5, '2021-06-14 18:51:23', '180.211.243.250', NULL, NULL),
(10, 2, 1, 'জুন - ২০২১', NULL, NULL, 1, 5, '2021-06-14 18:51:12', '180.211.243.250', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_receiver_applicant_info`
--

CREATE TABLE `food_receiver_applicant_info` (
  `id` int(11) NOT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `card_no` varchar(17) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `name` varchar(350) DEFAULT NULL,
  `father_name` varchar(350) DEFAULT NULL,
  `mother_name` varchar(350) DEFAULT NULL,
  `guardin_type` tinyint(4) DEFAULT NULL,
  `occupation` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `card_issue_dt` date DEFAULT NULL,
  `finger_print_template` blob DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `village` varchar(200) DEFAULT NULL,
  `wordNo` varchar(11) DEFAULT NULL,
  `post_office` varchar(200) DEFAULT NULL,
  `upazila` varchar(200) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `issueingAuthority` int(11) DEFAULT NULL,
  `pic` text DEFAULT NULL,
  `spouse_name` varchar(500) DEFAULT NULL,
  `is_verify` tinyint(1) UNSIGNED DEFAULT 1 COMMENT '1 = Not Verify,  2=verified By NID ',
  `api_data` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `dealer_name` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `occupation_title` varchar(500) NOT NULL,
  `union_name` varchar(500) NOT NULL,
  `is_fringerprint_register` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1 = No, 2 = Yes (fingerprint,)  3 = Yes (Card)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_receiver_applicant_info`
--

INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(1, 2021040001, '1', '6916365255211', 'মোঃ মোজাম্মেল ', 'জবানি শেখ ', NULL, NULL, '13', NULL, 1, '1710481346', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(2, 2021040002, '2', '6916365223213', 'মোঃ ফজলু মিয়া ', 'মুর্শিদ মিয়া ', NULL, NULL, '13', NULL, 1, '1743125559', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(3, 2021040003, '3', '6916365254847', 'মোঃ ছায়েদ মিয়া ', ' মেহেদি ফকির ', NULL, NULL, '13', NULL, 1, '1735455265', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(4, 2021040004, '4', '6916365255250', 'মোঃ আঃ বাতেন', 'আলীম উদ্দিন ', NULL, NULL, '13', NULL, 1, '1837512371', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(5, 2021040005, '5', '6916365255272', 'মোছাঃ  মাসুদা', 'আঃ কাদির ', NULL, NULL, '13', NULL, 1, '1864636850', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(6, 2021040006, '6', '6916365255215', 'মোঃ হযরত আলী ', 'মুর্শিদ মিয়া ', NULL, NULL, '13', NULL, 1, '1864636850', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(7, 2021040007, '7', '6916365255121', 'মোঃ হেলাল ', 'আহাদ আলী ', NULL, NULL, '13', NULL, 1, '1735196241', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(8, 2021040008, '8', '6916365255395', 'মোঃ বেলাল ', 'মৃত আহাদ আলী ', NULL, NULL, '13', NULL, 1, '1744537736', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(9, 2021040009, '9', '691636500003', 'মোঃ আঃ মজিদ ', 'আঃ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(10, 2021040010, '10', '6916365254875', 'মোঃ ইদ্রিস আলী ', 'আব্বাস আলী ', NULL, NULL, '13', NULL, 1, '1832071015', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(11, 2021040011, '11', '6916365254870', 'মোঃ ওহাব আলী  ', 'আব্বাস আলী ', NULL, NULL, '13', NULL, 1, '1762599435', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(12, 2021040012, '12', '6916365000013', 'আনোয়ার আলী ', 'রহমত আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(13, 2021040013, '13', '6916365255248', 'মোছাঃ নাজমা ', 'আনোয়ার হোসেন ', NULL, NULL, '13', NULL, 1, '1772533591', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(14, 2021040014, '14', '6916365254860', 'মোঃ মানিক মিয়া ', 'কালু মিয়া ', NULL, NULL, '13', NULL, 1, '1704494402', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(15, 2021040015, '15', '6916365000111', 'মোঃ আল আমিন ', 'মৃত নুরুল ইসলাম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(16, 2021040016, '16', '6916365254855', 'আছমা খাতুন ', 'মৃত কাদের ', NULL, NULL, '13', NULL, 1, '1772957122', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(17, 2021040017, '১৭*', '6916365255212', 'শুক্করী বেগম  ', 'মুর্শিদ মিয়া ', NULL, NULL, '13', NULL, 1, '1911359352', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(18, 2021040018, '18', '692630335309', 'কাশেম  সরকার', 'রইস উদ্দিন ', NULL, NULL, '13', NULL, 1, '1771810144', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(19, 2021040019, '19', '691636500004', 'মোঃ আঙ্গুর মিয়া ', 'চান মিয়া ', NULL, NULL, '13', NULL, 1, '1869433421', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(20, 2021040020, '20', '6916365255414', 'মোঃ রফিকুল ', 'রকমান', NULL, NULL, '13', NULL, 1, '1758094090', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(21, 2021040021, '21', '691636554943', 'মোঃ আঃ  গফুর ', 'ফজর আলী', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(22, 2021040022, '22', '6916365258348', 'মোঃ জিয়উদ্দিন ', 'আঃ বারিক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(23, 2021040023, '23', '6916365254905', 'মোছাঃ রশিদা ', 'কুদ্দুস আলী ', NULL, NULL, '13', NULL, 1, 'নাই  ', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(24, 2021040024, '24', '6916365255341', 'আকতেজা', 'সোবাহান ভূঁইয়া ', NULL, NULL, '13', NULL, 1, '1754003333', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(25, 2021040025, '25', '6916365255339', 'মোছাঃ  পরিজা ', 'আঃ আওয়াল ', NULL, NULL, '13', NULL, 1, '1752326892', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(26, 2021040026, '26', '6916365255324', 'মোঃ সামসুল হক ', 'কদম আলীি ', NULL, NULL, '13', NULL, 1, '1756489792', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(27, 2021040027, '27', '6916365255199', 'মোঃ খলিল মিয়া ', 'মৃত নুর মিয়া ', NULL, NULL, '13', NULL, 1, '1964782591', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(28, 2021040028, '28', '6916365255101', 'খোদিজা খাতুন ', 'আঃ আলিম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(29, 2021040029, '29', '6916365255379', 'মোঃ ইন্তাজ ', 'কলিম উদ্দিন ', NULL, NULL, '13', NULL, 1, '1758852219', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(30, 2021040030, '30', '6916365255231', 'লাল মিয়া  ', 'নবী মিয়া ', NULL, NULL, '13', NULL, 1, '1710632238', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ  ', 'দিন মজুর', '', 1),
(31, 2021040031, '31', '6916365255394', 'মোছাঃ মাজেদা', 'ফজলুল হক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(32, 2021040032, '32', '6916365255106', 'মোঃ ফেরদৌসি ', 'নুরু খাঁ ', NULL, NULL, '13', NULL, 1, '1726184860', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(33, 2021040033, '33', '6916365254960', 'মোঃ শাজাহান ', 'সফর উদ্দিন ', NULL, NULL, '13', NULL, 1, '1738605189', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(34, 2021040034, '34', '6916365255130', 'মোঃ জামাল ', 'আঃ জব্বার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(35, 2021040035, '35', '6916365255043', 'মোছাঃ তাহেরা', 'আঃ হামিদ ', NULL, NULL, '13', NULL, 1, '1761548146', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(36, 2021040036, '36', '6916365254971', 'মোঃ আনোয়ার ', 'মোস্তফা কামাল ', NULL, NULL, '13', NULL, 1, 'নাই ', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ ', 'দিন মজুর', '', 1),
(37, 2021040037, '37', '6916365255317', 'আওসী বেগম  ', 'তমিজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ ', 'দিন মজুর', '', 1),
(38, 2021040038, '38', '6916365255067', 'মোছাঃ  জাহেদা ', 'সিদ্দিকুর রহমান ', NULL, NULL, '13', NULL, 1, '1925530941', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(39, 2021040039, '39', '6916365000109', 'মোঃ রজব আলী ', 'গিয়াস উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(40, 2021040040, '40', '6916365255136', 'মোছাঃ মমতাজ ', 'মকবুল হোসেন ', NULL, NULL, '13', NULL, 1, '1762404124', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(41, 2021040041, '41', '6916365255022', 'মোছাঃ  খোসিদা ', 'আঃ জলিল ', NULL, NULL, '13', NULL, 1, '1882267639', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(42, 2021040042, '42', '6916365254927', 'মোছাঃ বিজলী', 'আঃ করিম ', NULL, NULL, '13', NULL, 1, '1751763026', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(43, 2021040043, '43', '691636525511', 'মোঃ সামসুল হক ', 'আলাউদ্দিন ', NULL, NULL, '13', NULL, 1, '1967630568', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(44, 2021040044, '44', '2612980808412', 'মোছাঃ  রতœা ', 'ইমরান ', NULL, NULL, '13', NULL, 1, '1776794607', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(45, 2021040045, '45', '6916365255073', 'মোঃ ফুল বানু', 'মহরম আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(46, 2021040046, '46', '6916365255291', 'মোছাঃ আনোয়ারা ', 'ফজলু ', NULL, NULL, '13', NULL, 1, '1768927752', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(47, 2021040047, '47', '6916320287923', 'মোঃ সাত্তার মিয়া ', 'আলী আকবর ', NULL, NULL, '13', NULL, 1, '1782920136', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(48, 2021040048, '48', '331306038835', ' রানী ', 'আমরিত ', NULL, NULL, '13', NULL, 1, '1704897720', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(49, 2021040049, '49', '6916365255084', 'মোঃ সামসুল হক ', 'আবুল হোসেন ', NULL, NULL, '13', NULL, 1, '1732262007', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(50, 2021040050, '50', '6916365255001', 'হাছনা বেগম ', 'সিরাজ মিয়া ', NULL, NULL, '13', NULL, 1, '1728402504', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(51, 2021040051, '51', '331304702398', 'মোঃ শ্হাা মধ্যম ', 'কুদরত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(52, 2021040052, '52', '6916365254949', 'মোঃ ইসহাক ', 'মহির উদ্দিন ', NULL, NULL, '13', NULL, 1, '1983301735', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(53, 2021040053, '53', '6916365271190', 'কুরবান আলী  ', 'আজিজ শেখ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ ', 'দিন মজুর', '', 1),
(54, 2021040054, '54', '6916365255134', 'মোঃ রমজান', 'আলাউদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(55, 2021040055, '55', '6916365257034', 'মোঃ ফজর আলী ', 'আঃ হাসিম ', NULL, NULL, '13', NULL, 1, '1621945215', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(56, 2021040056, '56', '6916365255080', 'মোছাঃ  শরিফা', 'আঃ কাদির ', NULL, NULL, '13', NULL, 1, '1709036410', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(57, 2021040057, '57', '6916365254908', 'মোছাঃ  শামীমা ', 'আহাদ আলী', NULL, NULL, '13', NULL, 1, '', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(58, 2021040058, '58', '6916365255018', 'মোছাঃ ছালেহা ', 'আলী আকবর ', NULL, NULL, '13', NULL, 1, '1634071438', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(59, 2021040059, '59', '6916365255288', 'মোছাঃ আতর বানু ', 'হাসেন আলী ', NULL, NULL, '13', NULL, 1, '', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(60, 2021040060, '60', '6916365255021', 'মোছাঃ হালিমা ', 'সুরুজ মিয়া ', NULL, NULL, '13', NULL, 1, '1913174590', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(61, 2021040061, '61', '6916365254229', 'মোঃ শহিদুল ', ' মেহেদি ', NULL, NULL, '13', NULL, 1, '1723811451', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(62, 2021040062, '62', '6916365255283', 'মোঃ নজরুল ', 'নজের আলী ', NULL, NULL, '13', NULL, 1, '1741137923', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(63, 2021040063, '63', '6916365255415', 'রওশন আলী ', 'আবু বাক্কার  ', NULL, NULL, '13', NULL, 1, '1874685921', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(64, 2021040064, '64', '6916365255105', 'মোছাঃ চায়না ', 'শাহাদত ', NULL, NULL, '13', NULL, 1, '1773962122', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(65, 2021040065, '65', '6916365255049', 'মমিন আলী  ', 'ওকিল মোল্লা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(66, 2021040066, '66', '6916365255344', 'মোঃ এবাইদুল্লাহ ', 'মহর আলী ', NULL, NULL, '13', NULL, 1, '1791611565', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(67, 2021040067, '67', '6916365255417', 'মোঃ হোসেন মীর ', 'আহম্মদ মীর ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(68, 2021040068, '68', '6916365254865', 'মোঃ মোহাম্মদ ', 'মুন্তাজ মিয়া ', NULL, NULL, '13', NULL, 1, '1858300892', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(69, 2021040069, '69', '6916365255258', 'মোাছাঃ হালিমা ', 'মনতাজ মিয়া ', NULL, NULL, '13', NULL, 1, '1797329632', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(70, 2021040070, '70', '6916365255259', 'মোছাঃ  নাছিমা ', ' সেকেনদার ', NULL, NULL, '13', NULL, 1, '1791769176', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(71, 2021040071, '71', '3323013331713', 'মোঃ আঃ কুদ্দুস ', 'শামসুল হক ', NULL, NULL, '13', NULL, 1, '1674939707', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(72, 2021040072, '72', '6916365000068', 'জুলেখা ', 'মসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(73, 2021040073, '73', '691636500007', 'মোঃ সাইদুল ', 'সিদ্দিকুর রহমান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(74, 2021040074, '74', '6916365256059', 'মোছাঃ রুমা ', 'মৃত আঃ সাত্তার', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(75, 2021040075, '75', '6916365255958', 'মোছাঃ শেফালী ', 'আঃ আজিজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(76, 2021040076, '76', '6916365008695', 'মোছাঃ আছমা ', 'আলী আহমদ ', NULL, NULL, '13', NULL, 1, '1791326321', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(77, 2021040077, '77', '6916365255982', 'মোছাঃ আছিয়া ', 'ওসমান ভূঁইয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(78, 2021040078, '78', '6916365255989', 'মোঃ আঃ মান্নান ', 'মৃত পন্ডিত মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'গাজীপুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(79, 2021040079, '79', '6916365256092', 'মোঃ হযরত আলী ', 'জব্বার আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(80, 2021040080, '80', '691636500037', 'মোঃ সুন্দর আলী ', 'হযরত আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(81, 2021040081, '81', '6916365255991', 'ওমর আলী  ', 'আহম্মদ আলী  ', NULL, NULL, '13', NULL, 1, '1736453459', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ  ', 'দিন মজুর', '', 1),
(82, 2021040082, '82', '6916365255988', 'মোঃ আহম্মেদ ', 'আঃ সোবাহান ', NULL, NULL, '13', NULL, 1, '1827596634', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(83, 2021040083, '83', '6916365256053', 'মোছাঃ  স্বপ্না ', ' ¯েœটু মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(84, 2021040084, '84', '691636500043', 'মোছাঃ  হালিমা ', 'শাহ জালাল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(85, 2021040085, '85', '6916365256047', 'মোছাঃ রহিমা ', 'আঃ মালেক', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(86, 2021040086, '86', '6916365256046', 'মোছাঃ সুফিয়া ', 'নুরুল ইসলাম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(87, 2021040087, '87', '6916365255997', 'মোছাঃ মিনারা ', 'বিল্লাল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(88, 2021040088, '88', '691636526052', 'মোছাঃ হামিদা ', 'আঃ রহিম', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(89, 2021040089, '89', '6916365256141', 'মোঃ জাকির', 'শজাহান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(90, 2021040090, '90', '6916365256393', 'মোঃ আঃ জব্বার ', 'আহম্মদ মিয়া ', NULL, NULL, '13', NULL, 1, '1754550036', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(91, 2021040091, '91', '6916365256538', 'মোঃ সিরাজুল ', 'বারিক ', NULL, NULL, '13', NULL, 1, '1782320726', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(92, 2021040092, '92', '6916365256255', 'মোঃ ওমর আলী ', 'আঃ সোবাহান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(93, 2021040093, '93', '6916365256581', 'মোঃ আঃ মান্নান', 'আঃ রাজ্জাক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(94, 2021040094, '94', '6916365256295', 'মোঃ আঃ কাদির ', 'মফিজ উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(95, 2021040095, '95', '6916365256476', 'শহিদুল ইসলাম  ', 'রমিজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(96, 2021040096, '96', '6916365256446', 'মোঃ আঃ কালাম ', 'আঃ হক ', NULL, NULL, '13', NULL, 1, '1784949786', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(97, 2021040097, '97', '6916365256166', 'মোঃ সুরুজ্জামান ', 'আহাম্মদ আলী', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(98, 2021040098, '98', '6916365256656', 'মোঃ নুজ্জামান', 'মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(99, 2021040099, '99', '6916365256428', 'মোঃ সোহরাব ', 'জাহের আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(100, 2021040100, '100', '6916365000079', 'আছিয়া  ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(101, 2021040101, '101', '6916365256189', 'মোঃ মজিবর ', 'আবুল হেকিম প্রাঃ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(102, 2021040102, '102', '6916365256509', 'মোঃ নুর মোহাম্মদ ', 'আবুর জব্বার ', NULL, NULL, '13', NULL, 1, '1768088231', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(103, 2021040103, '103', '6916365256464', 'মোঃ আঃ রব মিয়া ', 'নুর চান মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(104, 2021040104, '104', '6916365256466', 'মোঃ আঃ রাজ্জাক ', 'মৃত আঃ কাশেম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(105, 2021040105, '105', '6916365256467', 'মোঃ আঃ সামাদ ', 'মৃত আঃ কাশেম ', NULL, NULL, '13', NULL, 1, '1788112589', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(106, 2021040106, '106', '6916365256391', ' রাবিয়া বেগম', 'আঃ মজিদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(107, 2021040107, '107', '6916365256117', 'নুরুল ইসলাম ', 'মৃত আঃ আজিজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(108, 2021040108, '108', '6916365256133', 'হেলেনা বেগম ', 'মকছেদ আলী ', NULL, NULL, '13', NULL, 1, '1738598418', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(109, 2021040109, '109', '6916365255367', 'মোঃ জাহাঙ্গীর', 'ইদ্রিস আলী ', NULL, NULL, '13', NULL, 1, '1789024661', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(110, 2021040110, '110', '6916365256645', 'আজগর আলী ', 'আলী আকবর', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(111, 2021040111, '111', '6916365256476', 'শহিদুল ইসলাম ', 'রমিজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(112, 2021040112, '112', '6916365256478', 'আ্ক্কাস আলী  ', 'আঃ কাদের  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(113, 2021040113, '113', '6916365256211', ' শিউলি বেগম ', 'ইউনুস আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(114, 2021040114, '114', '6916365256676', ' পিয়ারা বেগম ', 'রফিক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(115, 2021040115, '115', '6916365256683', 'মোছাঃ  শাকিলা ', 'নাসির', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(116, 2021040116, '116', '6916365256501', ' ফারুক হোসেন ', 'আঃ কুদ্দুস ', NULL, NULL, '13', NULL, 1, '1799963481', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(117, 2021040117, '117', '6916365256658', 'আবু সাহিদ  ', 'সন্ত মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(118, 2021040118, '118', '6916365000016', 'মোঃ সেন্টু মিয়া ', 'হাসেম আলী ', NULL, NULL, '13', NULL, 1, '1783814515', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(119, 2021040119, '119', '6916365256500', 'মোঃ সুমন আলী', 'ওমর আলী ', NULL, NULL, '13', NULL, 1, '1727360286', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(120, 2021040120, '120', '6916365000080', 'আকলিমা ', ' সোহাগ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(121, 2021040121, '121', '6916365256012', 'মোছ্ঃা বিলকিছ ', 'তাইজুল ইসলাম ', NULL, NULL, '13', NULL, 1, '1713786914', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(122, 2021040122, '122', '6916365256350', ' সেলিনা বেগম ', 'অজ্ঞাত ', NULL, NULL, '13', NULL, 1, '1774505669', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(123, 2021040123, '123', '6916365256670', 'মোঃ আঃ মান্নাফ ', 'জনাব আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(124, 2021040124, '124', '6916365256603', 'মোঃ শামসুল হক ', 'আঃ বারেক শেখ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(125, 2021040125, '125', '6916365256482', 'মোঃ নুর মোহাম্মদ ', 'সুলতান আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(126, 2021040126, '126', '6916365256538', 'মোঃ শাহ আলম ', 'আঃ বারেক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(127, 2021040127, '127', '6916365255939', 'মোঃ নায়েব আলীি ', 'আনছার আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(128, 2021040128, '128', '6905612500004', 'মোঃ ইব্রাহীম শেখ ', 'সিদ্দিকুর রহমান', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(129, 2021040129, '129', '6916365255010', 'আ্ক্কাস আলী ', 'ইউনুস আলী ', NULL, NULL, '13', NULL, 1, '1739816021', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(130, 2021040130, '130', '6916365000274', 'মোঃ মোসলেম ', 'সবদর আলী ', NULL, NULL, '13', NULL, 1, '1628237939', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(131, 2021040131, '131', '690561255654', ' আমেনা খাতুন ', 'সিরাজুর ইসলাম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(132, 2021040132, '132', '6905612556668', 'মর্জিনা খাতুন ', 'শাহিন প্রাং ', NULL, NULL, '13', NULL, 1, '1794914228', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(133, 2021040133, '133', '690561255692', 'মোঃ আঃ রহমান ', 'হাছেন আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(134, 2021040134, '134', '690561255776', ' জোসনা খাতুন ', 'আঃ রাইস ', NULL, NULL, '13', NULL, 1, '1722727054', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(135, 2021040135, '135', '690561255818', 'ইমান হোসেন ', 'তমিজ উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(136, 2021040136, '136', '690561255838', 'মোঃ হজরত আলী ', 'কাশেম আলী ', NULL, NULL, '13', NULL, 1, '1780481961', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(137, 2021040137, '137', '690561255862', 'আব্বাস আলী ', 'আহম্মদ আলী ', NULL, NULL, '13', NULL, 1, '1772915074', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(138, 2021040138, '138', '690561255586', 'কাশেম ', 'মোহাম্মদ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(139, 2021040139, '139', '690561255924', ' লোকমান হোসেন ', 'আঃ সাত্তার ', NULL, NULL, '13', NULL, 1, '1754783717', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(140, 2021040140, '140', '690561255906', 'মোঃ জায়েদ আলী ', 'রুপচান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(141, 2021040141, '141', '690561255918', 'আলকাছ মিয়া ', 'বাবর আালী ', NULL, NULL, '13', NULL, 1, '1750703871', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(142, 2021040142, '142', '690561255489', 'আফাজ উদ্দিন  ', 'আমির ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(143, 2021040143, '143', '690561255934', 'মোঃ লিটন ', 'রুপচান প্রাং ', NULL, NULL, '13', NULL, 1, '1748753092', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(144, 2021040144, '144', '6916365255586', 'জয়নাল হোসেন ', 'সবদ আলী  ', NULL, NULL, '13', NULL, 1, '1987219885', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(145, 2021040145, '145', '690561255571', 'মোঃ রইচ উদ্দিন ', 'হাফিজ ইদ্দিন ', NULL, NULL, '13', NULL, 1, '1739617411', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(146, 2021040146, '146', '6916365255860', 'মোঃ শাহ্ আলম ', 'রুপচান ', NULL, NULL, '13', NULL, 1, '1757021342', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(147, 2021040147, '147', '6916365000274', 'মোঃ তমিজ উদ্দিন ', 'আশাব উদ্দিন ', NULL, NULL, '13', NULL, 1, '1743621360', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(148, 2021040148, '148', '690561255654', 'মোঃ আলা উদ্দিন ', 'বজলুর রহমান ', NULL, NULL, '13', NULL, 1, '1766317117', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(149, 2021040149, '149', '6905612556668', ' মানির হোসেন ', 'রইচ উদ্দিন ', NULL, NULL, '13', NULL, 1, '1845467118', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(150, 2021040150, '150', '6916365000048', 'সামাদ হোসেন ', 'আজিমুদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(151, 2021040151, '151', '6916365256616', 'ইদ্রিস আলী ', ' নোয়াজ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'চৌরী', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(152, 2021040152, '152', '690561255925', 'আঃ কালাম ', 'আশাব উদ্দিন ', NULL, NULL, '13', NULL, 1, '1754003649', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(153, 2021040153, '153', '690561255683', 'ফাইজ উদ্দিন ', 'আশাব উদ্দিন ', NULL, NULL, '13', NULL, 1, '1751791055', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(154, 2021040154, '154', '690561255542', 'নজরুল ', 'আঃ মজিদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(155, 2021040155, '155', '690561255920', 'ছাদেক মিয়া ', 'আঃ মান্নান ', NULL, NULL, '13', NULL, 1, '1918412041', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(156, 2021040156, '156', '690561255566', 'হারুন আলী ', 'আওয়াল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(157, 2021040157, '157', '690561255542', 'জাহাঙ্গীর', 'ওয়াহেদ মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(158, 2021040158, '158', '690561255795', 'শুকুর আলী ', 'আঃ রহিম ', NULL, NULL, '13', NULL, 1, '1772532210', NULL, NULL, NULL, 'দক্ষিন পুর', '1', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(159, 2021040159, '159', '6916365257615', 'আবেদা খাতুন ', ' গোলাপ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(160, 2021040160, '160', '6916365256905', 'আবেদা বেগম ', 'হযরত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(161, 2021040161, '161', '6916365257551', 'নজরুল ইসলাম ', 'মোহাম্মদ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(162, 2021040162, '162', '6916365000065', 'রফিকুল ইসলাম  ', ' মোতালিব খা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(163, 2021040163, '163', '6916365257226', 'শাদির মিয়া  ', 'মাহাম্মদ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(164, 2021040164, '164', '6916365257023', 'আজিরন  বেগম ', 'মন্তাজ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(165, 2021040165, '165', '6916365257123', 'উজ্বল হোসেন ', 'আমির আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(166, 2021040166, '166', '6916365257130', 'মজিবর  ', 'ইদ্রিস আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(167, 2021040167, '167', '6916365257175', 'দুলাল হোসেন  ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(168, 2021040168, '168', '6916365256884', 'জাকির হোসেন  ', 'সবুর মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(169, 2021040169, '১৬৯ *', '6916365256847', 'আবু ছিদ্দিক ', 'আব্দুল জব্বার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(170, 2021040170, '170', '6916365256854', 'ছিদ্দিকুর রহমান  ', 'রহমত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(171, 2021040171, '171', '6916365257454', 'সুফিয়া বেগম  ', 'সাজাহান আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(172, 2021040172, '172', '6916365258472', 'আনজুয়ারা ', 'আমির হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(173, 2021040173, '173', '6916365000001', 'সফর আলী  ', 'জালাল উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(174, 2021040174, '174', '6916365258501', 'ইসমাইল ', 'শুকচান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(175, 2021040175, '175', '6916365257107', 'ছাইফুল ইসলাম ', 'লতিফ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(176, 2021040176, '176', '6916365257119', 'সামসুল হক ', 'আমির আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(177, 2021040177, '177', '6916365257600', 'নজরুল ইসলাম ', 'ফায়জদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(178, 2021040178, '178', '6916365257178', 'শফিকুল ইসলাম ', ' মোতালেব  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(179, 2021040179, '179', '6916365257504', 'কাশেম আলী  ', 'আক্তার হোসেন  ', NULL, NULL, '13', NULL, 1, '1776115251', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(180, 2021040180, '180', '6916365257142', 'সাকিনা  ', 'নবাব আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(181, 2021040181, '181', '6916365257230', 'কামাল হোসেন ', 'আঃ মালেক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(182, 2021040182, '182', '6916365257399', 'শহিদুল ইসলাম ', 'আবুল হাশেম ', NULL, NULL, '13', NULL, 1, '1953657546', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(183, 2021040183, '183', '6916365257298', 'হক মিয়া  ', 'আলাউদ্দিন  ', NULL, NULL, '13', NULL, 1, '1774513476', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(184, 2021040184, '184', '6916365258667', 'জোহরা বেগম ', 'সামাদ আলী  ', NULL, NULL, '13', NULL, 1, '1706235181', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(185, 2021040185, '185', '6916365255696', 'রিনা বেগম', 'আনছার আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(186, 2021040186, '186', '6916365258708', 'রিমা বেগম  ', 'কুদ্দুস ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(187, 2021040187, '187', '6916365258810', 'ছালেহা বেগম ', 'রাজ্জাক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(188, 2021040188, '188', '6916365258796', 'খোরশেদা  ', 'ফায়জদ্দিন  ', NULL, NULL, '13', NULL, 1, '1744550606', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(189, 2021040189, '189', '6916365258970', 'জাহানারা ', ' মোতালেব  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(190, 2021040190, '190', '6916365256864', 'আঃ রাজ্জাক ', 'আঃ খালেক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(191, 2021040191, '191', '6916365258421', 'আঃ রহমান  ', 'বাহার ', NULL, NULL, '13', NULL, 1, '1756908519', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(192, 2021040192, '192', '7333822638', 'আনোয়ারা  ', 'দানু মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(193, 2021040193, '193', '6916365258377', 'শরিফুল ইসলাম ', 'আফাজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(194, 2021040194, '194', '6916365258355', 'শাহিন আলম ', 'মহি উদ্দিন  ', NULL, NULL, '13', NULL, 1, '1740450106', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(195, 2021040195, '195', '6916365258379', 'শহিদা  বেগম ', 'আফাজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(196, 2021040196, '196', '6916365258143', 'সোহেল রানা  ', 'সিরাজুল  ', NULL, NULL, '13', NULL, 1, '1740450106', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(197, 2021040197, '197', '6916365256973', 'হারুন অর রশিদ ', 'জব্বার খা  ', NULL, NULL, '13', NULL, 1, '1740450106', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(198, 2021040198, '198', '6916365257243', 'নুর মোহাম্মদ  ', 'রজব আলী  ', NULL, NULL, '13', NULL, 1, '1740450106', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(199, 2021040199, '199', '6916365000011', 'আবুল কালাম  ', 'হযরত আলী  ', NULL, NULL, '13', NULL, 1, '1740450106', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(200, 2021040200, '200', '6916365257690', 'বিলকিছ খাতুন ', 'মালেক ', NULL, NULL, '13', NULL, 1, '1740450106', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(201, 2021040201, '২০১*', '6916365256922', 'মিনতি  রানী  ', 'কান্দুর সরকার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(202, 2021040202, '202', '6916365257664', 'শাফি উদ্দিন  ', 'আঃ মান্নান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(203, 2021040203, '203', '6916365256716', 'হারিজ মিয়া  ', 'ইব্রাহীম হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(204, 2021040204, '204', '6916365256464', 'আবুল হোসেন  ', 'হাছেন আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(205, 2021040205, '205', '6916365257297', 'মালেকা বেগম ', 'আলাউদ্দিন  ', NULL, NULL, '13', NULL, 1, '1721032585', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(206, 2021040206, '206', '6916365258300', 'আনোয়ার হোসেন  ', 'আঃ রহমান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(207, 2021040207, '207', '6916365250348', 'ইউছুব আলী ', 'নবী হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(208, 2021040208, '208', '6916365257285', 'মালেক ', 'আঃ ছামাদ  ', NULL, NULL, '13', NULL, 1, '1756326727', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(209, 2021040209, '209', '6916365257114', 'ফয়েজ উদ্দিন   ', 'বারিক হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(210, 2021040210, '210', '6916365257176', 'জহুরা বেগম ', ' হোসেন  আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(211, 2021040211, '211', '6916365257216', 'ছালাম খন্দকার  ', 'হাকিম খন্দকার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(212, 2021040212, '212', '6916365257519', 'জবেদা মকবুল  ', 'মকবুল  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(213, 2021040213, '213', '6916365258004', 'সিরাজ মিযা  ', 'আনছার আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(214, 2021040214, '214', '6916365257596', 'বাক্কার ছিদ্দিক ', 'হযরত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(215, 2021040215, '215', '6916365257580', 'নুর মোহাম্মদ  ', 'আঃ সাত্তার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(216, 2021040216, '216', '6916365258505', ' হোসেন আলী  ', 'শুকচান আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(217, 2021040217, '217', '6916365258610', 'শামসুল হক ', 'মান্নাফ ভুইয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(218, 2021040218, '218', '6916365254299', 'সালাম দেওয়ান ', 'আজিমুদ্দিন দেওয়ান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(219, 2021040219, '219', '6916365257650', 'সাহারা বেগম ', 'জয়নাল  হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(220, 2021040220, '220', '6916365258275', 'হাজেরা বেগম ', 'সিরাজ  ', NULL, NULL, '13', NULL, 1, '1742296886', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(221, 2021040221, '221', '6916365257652', 'সাইদুল ইসলাম  ', 'সমর উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(222, 2021040222, '222', '6916365258298', ' সোবাহান  ', 'আজিমুদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(223, 2021040223, '223', '6916365258423', 'রফিকুল ', 'রহমান আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(224, 2021040224, '224', '6916365258490', 'শরিফা ', 'আঃ রাজ্জাক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(225, 2021040225, '225', '6916365000006', 'মহাসিনা  ', 'আঃ লতিফ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(226, 2021040226, '226', '6916365258217', 'রাজু মিয়া  ', 'গিয়াস উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(227, 2021040227, '227', '6916365258719', 'হাছেন আলী  ', 'মুক্তার হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(228, 2021040228, '228', '6916365258244', 'আনোয়ার ', 'মফিজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, '1725670781', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(229, 2021040229, '229', '6916365258144', 'রইছ উদ্দিন ', 'জবান শেখ  ', NULL, NULL, '13', NULL, 1, '193624604', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(230, 2021040230, '230', '6916365258081', 'ওহাব আলী ', 'মজিদ মোল্লা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(231, 2021040231, '231', '6916365258137', 'সিরু শেখ  ', 'মমতাজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(232, 2021040232, '232', '6916365258204', 'কুদ্দুস আলী  ', 'কফিল উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(233, 2021040233, '233', '6916365258202', 'আঃ বাতেন শেখ  ', 'আঃ জব্বার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(234, 2021040234, '234', '6916365257973', 'করিম শেখ  ', 'আঃ বাতেন শেক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(235, 2021040235, '235', '6916365258189', 'হালিমা বেগম ', 'মাইনদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(236, 2021040236, '236', '6916365258198', 'আঃ রশিদ  ', 'আঃ মালেক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(237, 2021040237, '237', '6916365258617', 'সাইফুল ফকির ', ' লোকামান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(238, 2021040238, '238', '6916365258357', 'বকুল ভুইয়া  ', 'হাসিম ভুইযা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(239, 2021040239, '239', '3733426484', 'আছিয়া খাতুন ', 'জনাব আলী খন্দকার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(240, 2021040240, '240', '6916365258793', 'ঝরনা বেগম  ', ' দেলোয়ার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(241, 2021040241, '241', '2383423957', 'মুনছের আলী  ', 'সাদেক আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(242, 2021040242, '242', '6916365255609', 'আলমগীর  ', 'শহবত উল্লা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(243, 2021040243, '243', '6916365257424', 'মরিয়ম বেগম  ', 'ইদ্রিস আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(244, 2021040244, '244', '6916365258811', 'বিল্লাল হোসেন ', 'আঃ রাজ্জাক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(245, 2021040245, '245', '6916365258683', 'ইলিয়াস  ', 'কমর উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(246, 2021040246, '246', '6916365258776', 'ছাত্তার হোসেন  ', 'মোতালেব ', NULL, NULL, '13', NULL, 1, '1730914708', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(247, 2021040247, '247', '6916365257379', 'বিল্লাল হোসেন  ', 'আলকাছ মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(248, 2021040248, '248', '6916365258546', 'মার্জিয়া  ', 'বজলুর রহমান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(249, 2021040249, '249', '6916365257781', 'আজিজ মন্ডল  ', 'কাছু মন্ডল  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(250, 2021040250, '250', '6916365257726', ' মোবারক হোসেন ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 1, '1872095735', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(251, 2021040251, '251', '6916365257727', 'সুরুজ জামান ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 1, '1789727266', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(252, 2021040252, '252', '6916365257741', 'পচন সরকার  ', 'জসিম উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(253, 2021040253, '২৫৩*', '6916365257986', 'গীতা রানী  ', 'অমুল্য পাহান ', NULL, NULL, '13', NULL, 1, '1772854263', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(254, 2021040254, '254', '6916365258003', 'অনিল চন্দ্র ', 'কান্দুর চন্দ্র  ', NULL, NULL, '13', NULL, 1, '1725345831', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(255, 2021040255, '255', '6916365257920', 'আঃ রাজ্জাক  ', ' সৈয়দ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(256, 2021040256, '256', '6916365258251', 'খলিল মিয়া  ', 'সাজাহান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(257, 2021040257, '257', '6916365258089', 'হাকিমুদ্দিন  ', 'সাহেব আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(258, 2021040258, '258', '6916365258114', 'ইব্রাহিম ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(259, 2021040259, '259', '6916365258131', 'ছিদ্দিক আলী ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(260, 2021040260, '260', '6916365258002', 'ফজলু খন্দকার  ', 'বাসির উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(261, 2021040261, '261', '6916365000035', 'রুবেল মিযা  ', 'আঃ জব্বার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(262, 2021040262, '262', '6916365258212', 'সানাউল্লাহ  ', 'গিয়াস উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(263, 2021040263, '263', '691636525318', 'মোছাঃ রোকেয়া ', ' সৈয়দ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(264, 2021040264, '264', '6916365253394', 'ইউনুছ আলী  ', 'জবান শেখ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(265, 2021040265, '265', '6916365257812', 'সব্দর আলী  ', 'গয়েছ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(266, 2021040266, '266', '6916365258138', 'নাজিম উদ্দিন  ', 'আঃ জব্বার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(267, 2021040267, '267', '6916365258483', 'ফরিদ মিয়া  ', 'মাফি মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(268, 2021040268, '268', '6916365258497', 'নজরুল ইসলাম  ', 'আঃ ছামাদ ', NULL, NULL, '13', NULL, 1, '1751229179', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(269, 2021040269, '269', '6916365258432', 'রশিদ মিয়া  ', 'ছলেমান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(270, 2021040270, '270', '6916365258534', 'শরিফ মন্ডল  ', 'ছলেমান  আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(271, 2021040271, '271', '6916365257045', 'আসাদ মিয়া ', 'তমিজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(272, 2021040272, '272', '6916365257319', 'আছমা বেগম ', 'জহুরা বেগম  ', NULL, NULL, '13', NULL, 1, '17492319', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(273, 2021040273, '273', '6916365257011', 'রমিজা খাতুন  ', 'আঃ জলিল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(274, 2021040274, '274', '6916365257606', 'ইদ্রিস মিয়া  ', 'যআৎ খালেক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(275, 2021040275, '275', '6916365257594', 'আমেনা খাতুন ', 'সুন্দর আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(276, 2021040276, '276', '6916365257610', 'আছমা খাতুন  ', 'ইমান আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(277, 2021040277, '277', '6916365257620', 'নান্নু মিয়া  ', 'টুকু মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(278, 2021040278, '278', '6916365258499', 'নুর জাহান  ', 'নুর বক্স ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(279, 2021040279, '279', '6916365259305', 'মসলেম উদ্দিন  ', 'ফটিক মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(280, 2021040280, '280', '6916365257583', ' মোছাঃ মোমেনা  ', 'আঃ কুদ্দুস ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(281, 2021040281, '281', '6916365257599', 'আনোয়ার হোসেন ', 'আতর আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(282, 2021040282, '282', '6916365257505', ' হোসেন আলী  ', 'বুলু মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(283, 2021040283, '283', '6916365258772', 'সামিয়া বেগম ', 'সুলতান মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(284, 2021040284, '284', '6916365257394', 'মজিবর রহমান  ', 'আঃ কুদ্দুস মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(285, 2021040285, '285', '6916365258794', 'ফরিদ মিয়া ', 'আলকাছ মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(286, 2021040286, '286', '553364284', 'মমতা খাতুন  ', 'ময়েন উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(287, 2021040287, '287', '6916365257685', 'রুপবান বেগম  ', 'মৃত মোজাফ্ফর  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(288, 2021040288, '288', '3763814069', 'জয়নাল আবেদীন  ', 'আঃ আওয়াল  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(289, 2021040289, '289', '6916365256908', 'হারুন মিয়া  ', 'রহমত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(290, 2021040290, '290', '6916365251223', 'ওসমান  গনি  ', 'মবত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(291, 2021040291, '291', '6916365257454', 'আবু তাহের ', 'মইদর আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(292, 2021040292, '292', '6916365257044', 'আবুল খায়ের ', 'মনতাজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(293, 2021040293, '293', '6916365256959', 'নুরুল ইসলাম  ', 'আঃ আজিজ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(294, 2021040294, '294', '6916365257287', 'আবুল কালাম  ', 'মালেক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(295, 2021040295, '295', '6916365257540', 'মহরম আলী  ', 'সাহাজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ  ', 'দিন মজুর', '', 1),
(296, 2021040296, '296', '6916365258393', 'আসাদুজ্জামান ', 'আয়েজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(297, 2021040297, '297', '6916365258391', 'আজগর আলী  ', 'আয়েজ উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(298, 2021040298, '298', '6916365257227', 'সাহেরা বেগম ', 'রাশেদ মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(299, 2021040299, '299', '6916365250255', 'কামরুন নাহার ', 'আঃ সালাম সামু  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(300, 2021040300, '300', '6916365253489', 'সুরাইয়া বেগম  ', 'জযনাল আবেদীন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(301, 2021040301, '301', '4183526336', 'ফাতেমা বেগম  ', 'জহুর আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(302, 2021040302, '302', '6916365255901', 'জয়নাল উদ্দিন  ', 'আঃ মন্নাফ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(303, 2021040303, '303', '6916365252232', 'রমিজ উদ্দিন ', 'সুরুজ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(304, 2021040304, '304', '6916365257846', 'ওহাব আলী  ', 'গয়েছ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(305, 2021040305, '305', '6916365257776', 'সাগর হোসেন  ', 'তাছের প্রাং  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(306, 2021040306, '306', '6916365257830', 'মিনারা  ', ' মোতালেব হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(307, 2021040307, '307', '6916365257823', 'মেহের জান  ', 'আঃ কুদ্দুস  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(308, 2021040308, '308', '6916365257836', 'হযরত আলী  ', ' খোরশেদ শিকদার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(309, 2021040309, '309', '6916365000179', 'জাহেদ আলী  ', 'খোরশেদ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(310, 2021040310, '310', '6916365255354', 'শাজাহান আলী  ', 'সাদির আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(311, 2021040311, '311', '6916365000006', 'বাদল হোসেন ', 'কাদের আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(312, 2021040312, '312', '6916365258409', 'রোকেয়া ', 'ছামাদ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(313, 2021040313, '313', '6916365256686', 'শাফিয়া  ', 'অলি উল্লাহ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(314, 2021040314, '314', '6916365256688', 'হাসিনা ', 'আলী হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(315, 2021040315, '315', '6916365256063', 'রমজান আলী ', 'হযরত আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(316, 2021040316, '316', '6916365255174', 'গোলাপী ', 'জাকির হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(317, 2021040317, '317', '6916365258615', 'আবজাল হোসেন ', 'ওসমান  মন্ডল  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(318, 2021040318, '318', '6916365258090', 'সুরুজ আলী ', 'হাফি শিকদার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(319, 2021040319, '319', '6916365258536', 'আয়েশা ', 'আহাদ আলী ', NULL, NULL, '13', NULL, 1, '1736453454', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(320, 2021040320, '320', '6916365251232', 'তারা মিয়া  ', 'হাফিজ উদ্দিন ', NULL, NULL, '13', NULL, 1, '1744047320', NULL, NULL, NULL, 'লক্ষীপুর ', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(321, 2021040321, '321', '6916365259424', ' মোঃ হাফিজ ', 'আলী  নেওয়াজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(322, 2021040322, '322', '6916365251612', 'লিটন হোসেন ', 'অরফ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(323, 2021040323, '323', '6916365251677', 'লতিফ মিয়া  ', ' মোজাহার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(324, 2021040324, '324', '6916365250876', 'দুলাল মিয়া  ', ' মোস্তফা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(325, 2021040325, '325', '6916365251183', 'হাজী নুর চান  ', 'মৃত আছান উল্লাহ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(326, 2021040326, '326', '6916365250484', 'নছির সরকার ', 'ছাত্তার সরকার  ', NULL, NULL, '13', NULL, 1, '1721181143', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(327, 2021040327, '327', '6916365251187', 'ইয়াছিন কাজী  ', 'ছাত্তার কাজী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(328, 2021040328, '882', '6916365262667', 'আব্দুর রাজ্জাক  ', 'আমির আলী ', NULL, NULL, '13', NULL, 1, '', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(329, 2021040329, '883', '6916365266524', 'মোঃ শাজাহান ', 'আঃ আওয়াল ', NULL, NULL, '13', NULL, 1, '1774463312', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(330, 2021040330, '884', '6916365266018', 'মোঃ সুলতান ', 'আঃ সাত্তার', NULL, NULL, '13', NULL, 1, '1815763910', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(331, 2021040331, '885', '8234034307', 'আব্দুল জব্বার ', 'আঃ সাত্তার  ', NULL, NULL, '13', NULL, 1, '1792462747', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(332, 2021040332, '৮৮৬*', '6916365266213', 'মোঃ আঃ গফুর ', 'হাছেন আলী', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(333, 2021040333, '887', '6916365266039', 'মোঃ আঃ রাজ্জাক ', 'মৃত নেওয়াজ ', NULL, NULL, '13', NULL, 1, '1754232014', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(334, 2021040334, '888', '6916365266999', 'মোঃ আয়েছ আলী ', 'আঃ গফুর ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(335, 2021040335, '889', '6916365266988', 'মোঃ ফজের আলী ', 'কাচু প্রাং ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(336, 2021040336, '890', '6916365267001', 'মোঃ সেকেনদার', 'আঃ সাত্তার', NULL, NULL, '13', NULL, 1, '1849685507', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(337, 2021040337, '891', '6916365266992', 'মোঃ মজিবর ', 'রহিম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(338, 2021040338, '892', '6916365267856', 'মোঃ কাজলী', 'মান্নান ', NULL, NULL, '13', NULL, 1, '1766642419', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(339, 2021040339, '893', '6916365266583', 'মোঃ কামরুল ', 'ওহিদ ', NULL, NULL, '13', NULL, 1, '1713776199', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(340, 2021040340, '894', '6916365266577', 'মোছাঃ ফুলমেহের', 'ওহিদ ', NULL, NULL, '13', NULL, 1, '1734417129', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(341, 2021040341, '895', '6916365200260', 'মোঃ আয়নাল হক', 'নিজাম উদ্দিন', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(342, 2021040342, '896', '6916365267170', 'ফজলুর রহমান ', 'সিরাজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(343, 2021040343, '897', '6916365266515', 'মোঃ রুবেল ', 'আঃ মালোক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(344, 2021040344, '898', '6916365266569', 'মোঃ মোস্তাফিজুর', 'হান্নান ', NULL, NULL, '13', NULL, 1, '1792930720', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(345, 2021040345, '899', '6916365266513', 'মোঃ আঃ মালেক ', 'ফজর আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(346, 2021040346, '900', '6916365266787', 'জাকির হোসেন ', 'আঃ ওহাব ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(347, 2021040347, '901', '6916365266632', 'মোছাঃ মর্জিনা ', ' হেলাল উদ্দিন ', NULL, NULL, '13', NULL, 1, '1783497594', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(348, 2021040348, '902', '6916365266578', 'মোঃ শাহিন ', 'ওহিদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(349, 2021040349, '903', '6916365266918', 'মোঃ আঃ আলী', 'আমীর', NULL, NULL, '13', NULL, 1, '1767104854', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(350, 2021040350, '904', '6916365266282', 'মোঃ আ : বাছেদ ', 'আঃ মালেক', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(351, 2021040351, '905', '6916365266249', 'মোছাঃ শরিফা ', 'মৃত মিয়ার  উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(352, 2021040352, '906', '6916365200199', 'মোঃ ইউসুফ', 'মালেক', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(353, 2021040353, '907', '6916365266592', 'মোঃ মকুল ', 'জামাল উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(354, 2021040354, '908', '6916365267620', 'মোঃ শাহীন শেখ ', 'সাদেক শেখ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(355, 2021040355, '909', '6916365267223', 'মোঃ আঃ সাত্তার', 'মৃত সিরাজ মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(356, 2021040356, '910', '6916365260273', 'মোছাঃ শাহেরা ', 'আঃ সাত্তার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(357, 2021040357, '911', '6916365260244', 'মোঃ ওবায়দুল্লা ', 'আঃ সাত্তার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(358, 2021040358, '912', '6916365267251', 'মোছাঃ  মরিয়ম ', 'রমিজ উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(359, 2021040359, '913', '6916365267251', 'মোঃ করিম ', 'আঃ লতিব ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(360, 2021040360, '914', '6916365000275', 'মোঃ সাদেক মিয়া', 'লতিব ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(361, 2021040361, '915', '6916365267306', 'ফজলুর রহমাান ', 'হাসেন আলী', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(362, 2021040362, '916', '6916365266608', 'মোছাঃ মাজেদা ', 'আঃ আওয়াল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(363, 2021040363, '917', '6916365266710', 'মোঃ আঃ বাতেন', 'মসলেম উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(364, 2021040364, '918', '6916365266770', 'মোছাঃ ফুলবানু', 'আঃ রউফ', NULL, NULL, '13', NULL, 1, '1785517180', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(365, 2021040365, '919', '6916365267327', 'মোছাঃ সাজেদা ', 'বাছেদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(366, 2021040366, '920', '6916365267620', 'মোঃ ওসমান গনি ', 'তাজেল ইসলাম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(367, 2021040367, '921', '6916365267223', 'মোঃ ইসমাইল ', 'উমেদ আলী', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(368, 2021040368, '922', '6916365260273', 'মোঃ হাফিজুল ', 'আজগর ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(369, 2021040369, '923', '6916365260244', ' নজরুল ই্সলাম ', 'ওসমান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(370, 2021040370, '924', '6916365267251', 'মোঃ বেলাল', ' জয়নাল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(371, 2021040371, '925', '6916365267251', 'মোঃ আমীর ', 'আঃ কালাম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(372, 2021040372, '926', '6916365000275', 'মোঃ চাঁন ভানু ', 'আরজান', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(373, 2021040373, '927', '6916365267306', 'মোঃ হাসান আলী ', 'দবির উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(374, 2021040374, '928', '6916365267306', 'রাবেয়া ', 'রায়হান দেওয়ান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(375, 2021040375, '৯২৯*', '6916365266710', 'হাসিনা বেগম ', 'মনর উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(376, 2021040376, '930', '6916365266770', 'ফজলুর রহমান ', 'ইয়াকুব ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(377, 2021040377, '931', '6916365267327', 'মোঃ ইব্রাহীম ', 'নাজের', NULL, NULL, '13', NULL, 1, '1791408094', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(378, 2021040378, '1054', '6916365260009', ' বেলাল হোসেন ', 'কাদের হোসেন ', NULL, NULL, '13', NULL, 1, '1733265927', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(379, 2021040379, '1055', '6916365267533', 'নুরল ইসলাম  ', 'কলিমুদ্দিন  ', NULL, NULL, '13', NULL, 1, '1728173290', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(380, 2021040380, '1056', '6916365260013', 'তাহমিনা  ', 'হুমায়ন কবির  ', NULL, NULL, '13', NULL, 1, '1995256707', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(381, 2021040381, '1057', '6916365267976', 'অলেক ভুইয়া  ', 'সালাম ভুইয়া  ', NULL, NULL, '13', NULL, 1, '1736531466', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(382, 2021040382, '1058', '6916365267772', 'সাইদুল ', 'আফসার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(383, 2021040383, '1059', '6916365268212', 'রফিক হোসেন ', 'বাসার ', NULL, NULL, '13', NULL, 1, '1773194517', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(384, 2021040384, '1060', '6916365266652', 'বাতেন মিয়া  ', 'আঃ বাহার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(385, 2021040385, '1061', '6916365268745', 'আজাহার আলী  ', 'আনছার আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(386, 2021040386, '1062', '6916365268491', 'রবিউল ', 'তাহের আলী ', NULL, NULL, '13', NULL, 1, '1729320734', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(387, 2021040387, '1063', '6916365266533', 'আমেনা  বেগম  ', ' মোসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(388, 2021040388, '1064', '6916365260331', 'তাছলিমা ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 1, '1742721756', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(389, 2021040389, '1065', '6916365267664', 'মজিবর রহমান ', 'কালূ মিয়া  ', NULL, NULL, '13', NULL, 1, '1735267261', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(390, 2021040390, '1066', '6916365267634', 'ফারুখ হোসেন  ', 'কাদের আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(391, 2021040391, '1067', '6916365267778', ' হোসেন ', 'আওয়াল  ', NULL, NULL, '13', NULL, 1, '1770652050', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(392, 2021040392, '1068', '6916365267086', 'বকুল হোসেন  ', 'টুকু মিয়া ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(393, 2021040393, '1069', '6916365267086', 'সাইফুল ইসলাম  ', 'ছাত্তার ভুইয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(394, 2021040394, '1070', '6916365267781', 'সাকিলা  ', 'ইউনুছ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(395, 2021040395, '1071', '6916365268212', 'ইসমাইল হোসেন  ', 'ইব্রাহিম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(396, 2021040396, '1072', '6916365260311', 'আজিজুল ইসলাম ', 'মজিদ  ', NULL, NULL, '13', NULL, 1, '1754094641', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(397, 2021040397, '1073', '6916365268741', ' জোনাকী  বেগম  ', 'জয়নাল আবেদীন  ', NULL, NULL, '13', NULL, 1, '1786677232', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(398, 2021040398, '1074', '6916365268491', 'গুলজার  হোসেন  ', 'আঃ আজিজ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(399, 2021040399, '1075', '6916365268212', 'আশরাফুল ', 'মজিদ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(400, 2021040400, '1076', '6916365266652', 'আশরাফ আলী   ', 'মৃত সুর্য হক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(401, 2021040401, '1077', '6916365268410', 'মসলেম  খাঁ ', 'ওহি উদ্দিন  খা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(402, 2021040402, '1078', '6916365262135', 'শ্রী স্বরসতী   ', 'প্রভাস  চন্দ্র সরকার  ', NULL, NULL, '13', NULL, 1, '1706857875', NULL, NULL, NULL, 'ইব্রাহিম  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(403, 2021040403, '1079', '6916365268981', 'কামাল হোসেন  ', 'লালু সরকার  ', NULL, NULL, '13', NULL, 1, '1780481732', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(404, 2021040404, '1080', '6916365268928', 'আজিজুল ইসলাম ', 'মজিবর রহমান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(405, 2021040405, '1081', '6916365260290', 'ছনিয়া বেগম ', 'ওমর ফারুখ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(406, 2021040406, '1082', '6916365268374', ' হোসনেয়ারা  ', 'বাদসা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(407, 2021040407, '1083', '6916365260654', 'শিমু খাতুন ', 'রহমান আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(408, 2021040408, '1084', '6916365268746', 'নান্নু মিয়া  ', 'কাদির আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(409, 2021040409, '1085', '6916365269024', 'ফজলূ  ', 'মিলন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(410, 2021040410, '1086', '6916365268555', ' সৈকত আলী  ', 'মকছেদ আলী  ', NULL, NULL, '13', NULL, 1, '1765176496', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(411, 2021040411, '1087', '6916365268543', 'শাজাহান আলী  ', 'লাল চান মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(412, 2021040412, '1088', '6916365269573', 'রজব আলী  ', 'রশিদ  মোল্লা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(413, 2021040413, '1089', '6916365268893', 'আব্দুস সালাম ', 'হাফেজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(414, 2021040414, '1090', '6916365268282', 'নুর উদ্দিন  ', 'মহিউদ্দিন  ', NULL, NULL, '13', NULL, 1, '1966152725', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(415, 2021040415, '1091', '6916365269593', 'মান্নান আলী  ', 'মহর উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(416, 2021040416, '1092', '6916365268376', 'নুরু মিয়া  ', 'হাছেন আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(417, 2021040417, '1093', '6916365268423', 'জয়নাল ', 'নান্নু মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(418, 2021040418, '1094', '6916365260012', 'আব্দুল্লাহ  ', 'সুরুজ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(419, 2021040419, '1095', '6916365269538', ' রেজিয়া  বেগম ', 'হযরত আলী  ', NULL, NULL, '13', NULL, 1, '1731223374', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(420, 2021040420, '1096', '6916365268979', 'সামসুন্নাহার  ', 'দুলাল হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(421, 2021040421, '1097', '6916365268570', 'গিয়াস উদ্দিন  ', 'আঃ রহমান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(422, 2021040422, '1098', '6916365268325', 'রাবিয়া বেগম  ', 'গিয়াস উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(423, 2021040423, '1099', '6916365268337', 'সাইমন বেগম  ', 'মৃত জালাল উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(424, 2021040424, '1100', '6916365269247', 'মজেদা  ', 'আজম আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(425, 2021040425, '1101', '6916365260188', 'তাছলিমা  ', 'তাইজুল ইসলাম ', NULL, NULL, '13', NULL, 1, '1763078432', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(426, 2021040426, '1102', '6916365268137', 'সোহরাব হোসেন ', 'জুরান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(427, 2021040427, '1103', '6916365268899', 'শফিজুদ্দিন   ', 'মিন্নত আলী  ', NULL, NULL, '13', NULL, 1, '1734293694', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(428, 2021040428, '1104', '6916365268708', 'জিন্নত আলী  ', 'নওয়াজ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(429, 2021040429, '1105', '6916365268675', 'আঃ সাত্তার ', 'খলিলুর রহমান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(430, 2021040430, '1106', '6916365268774', 'মসলেম উদ্দিন  ', ' গোলাম মোস্তফা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(431, 2021040431, '1107', '6916365268556', 'ছাত্তার মিয়া  ', 'ইসমাইল হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(432, 2021040432, '১১০৮*', '6916365268941', 'শহর ভানু ', 'আবু হানিফ মীর  ', NULL, NULL, '13', NULL, 1, '1756014864', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(433, 2021040433, '1109', '6916365268923', 'ফিরোজ মিয়া  ', 'মান্নান আলী  ', NULL, NULL, '13', NULL, 1, '1761137940', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(434, 2021040434, '1110', '6916365268987', 'মতিউর রহমান  ', ' সোনা মিয়া  ', NULL, NULL, '13', NULL, 1, '1721037670', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(435, 2021040435, '1111', '6916365268654', 'আফসার আলী  ', 'নওয়াজ আলী  ', NULL, NULL, '13', NULL, 1, '1987396501', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(436, 2021040436, '1112', '6916365263234', 'সাথী  ', 'আলমগীর  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(437, 2021040437, '1113', '6916365269119', 'মিলন মিয়া  ', 'আঃ মান্নান  ', NULL, NULL, '13', NULL, 1, '1916945431', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(438, 2021040438, '1114', '6916365268238', 'নবীরন  ', 'নামির ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(439, 2021040439, '1115', '6916365268940', 'রফিজ উদ্দিন ', 'মনতাজ  মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(440, 2021040440, '1116', '6916365269395', 'বিউটি  ', 'আশরাফুল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(441, 2021040441, '1117', '6916365268982', 'কুদ্দুস আলী  ', 'মিলন ', NULL, NULL, '13', NULL, 1, '1706060054', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(442, 2021040442, '1118', '6916365269061', 'মফিজুল  ', 'সামসুল  হক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(443, 2021040443, '1119', '6916365268987', 'মালেক হোসেন ', 'খালেক হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(444, 2021040444, '1120', '6916365268510', ' মোস্তফা  ', 'মিন্নত আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(445, 2021040445, '1121', '6916365269113', 'জাহাঙ্গীর খা  ', 'কামাল খা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(446, 2021040446, '1122', '6916365260052', 'রুবেল  হোসেন ', ' গোলাম মোস্তফা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(447, 2021040447, '1123', '6916365269050', 'আশরাফুল ', 'জালাল হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(448, 2021040448, '1124', '6916365269049', 'আনজুয়ারা  ', 'জালাল হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(449, 2021040449, '1125', '6916365268669', 'রোকন উদ্দিন  ', 'মহিউদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(450, 2021040450, '1126', '6916365000003', 'সাইদুল হক  ', 'সামসুল হক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(451, 2021040451, '1127', '6916365269111', 'এলোয়ারা খা  ', 'কামাল খা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(452, 2021040452, '1128', '6916365268740', 'আনোয়ার ', 'রাজ্জাক হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(453, 2021040453, '1129', '6916365269572', 'ঝরনা  ', 'কাদের মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(454, 2021040454, '1130', '6916365268214', 'রাজিয়া  ', 'ইউনুছ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(455, 2021040455, '1131', '6916365268506', 'নুরুল ইসলাস ', 'বারেক হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(456, 2021040456, '1132', '6916365268990', 'মধু মিয়া  ', 'মিরাজ আলী  ', NULL, NULL, '13', NULL, 1, '1987106912', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(457, 2021040457, '1133', '6916365264928', 'মহর আলী ', 'লালু সরকার  ', NULL, NULL, '13', NULL, 1, '1953963236', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(458, 2021040458, '1134', '6916365269059', 'আফসার খা  ', 'কামাল খা ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(459, 2021040459, '1135', '6916365269082', 'আবুল হোসেন  ', 'খলিলুর রহমান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(460, 2021040460, '1136', '6916365268522', 'ইসমাইল  ', 'সাহেব আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(461, 2021040461, '১১৩৭*', '6916365268099', 'কমেলা বেগম ', 'মসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, ' খোলাবাড়ীয়া ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(462, 2021040462, '1138', '6916365268125', 'নাবিনা বেগম  ', 'জাহাঙ্গীর ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(463, 2021040463, '১১৩৯*', '6916365268564', 'আবুল হোসেন ', 'রইছ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(464, 2021040464, '1140', '6916365269020', 'রহিমা  ', 'সালাম  হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(465, 2021040465, '1141', '6916365268992', 'মাজিয়া  ', 'আঃ লতিফ ', NULL, NULL, '13', NULL, 1, '1961337479', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(466, 2021040466, '1142', '6916365268512', 'বাদসা  ', 'মুনছুর আলী  ', NULL, NULL, '13', NULL, 1, '1740823234', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(467, 2021040467, '1143', '6916365260397', 'সাইদুল ইসলাম  ', 'মুনসুর আলী ', NULL, NULL, '13', NULL, 1, '1749366208', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(468, 2021040468, '1144', '6916365268235', 'রিয়াজুল ইসলাম  ', 'আবু ছাইদ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(469, 2021040469, '1145', '6916365269090', 'মফিজুল ইসলাম ', 'আবু ছায়িদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(470, 2021040470, '১১৪৬*', '6916365268272', 'সখিনা বেগম ', 'জয়নাল আবেদীন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', 'মহিলা  ', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(471, 2021040471, '1147', '6916365268234', 'হাছনা  বেগম  ', 'আহাদ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(472, 2021040472, '1148', '6916365268201', 'মুন্তাজ আলী ', 'আঃ হামিদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(473, 2021040473, '1149', '6916365268091', 'সাহেব আলী  ', 'নুরুল ইসলাম  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(474, 2021040474, '1150', '6916365268271', 'মতি মিয়া  ', 'বুরজু মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(475, 2021040475, '1151', '9133729773', 'রাহেলা খাতুন  ', 'আঃ রাজ্জাক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(476, 2021040476, '1152', '6916365269563', 'হাফেজা ', 'বাচ্চু মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(477, 2021040477, '1153', '6916365268740', 'মহরম আলী  ', 'আঃ সালাম  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(478, 2021040478, '1154', '6916365268068', 'রহমান  ', 'আতর আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(479, 2021040479, '1155', '6916365268560', 'আক্কাস আলী  ', 'তমিজ উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(480, 2021040480, '1156', '6916365268122', 'আলম  ', 'আলী নেওয়াজ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(481, 2021040481, '1157', '6916365260240', 'উমর আলী ', 'মান্নান ', NULL, NULL, '13', NULL, 1, '1754551819', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(482, 2021040482, '1158', '6916365269026', 'আনোয়ার ', 'মান্নান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(483, 2021040483, '1159', '6916365269029', 'ইমন শাহা   ', 'মান্নান ', NULL, NULL, '13', NULL, 1, '1735213117', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(484, 2021040484, '1160', '6916365268547', 'হালিম ', 'নুর মোহাম্মদ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(485, 2021040485, '1161', '6916365268279', ' হোসেন আলী ', 'মান্নান আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(486, 2021040486, '1162', '6916365268016', 'রফিকুল ইসলাম ', 'আঃ বাতেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(487, 2021040487, '1163', '6916365268016', 'আনোয়ার  ', 'আঃ  রাজ্জাক  ', NULL, NULL, '13', NULL, 1, '1700890499', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(488, 2021040488, '1164', '6916365268223', 'ছালমা  ', 'গফুর  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(489, 2021040489, '1165', '6916365268242', 'আলমগীর ', 'কুদ্দুস  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(490, 2021040490, '১১৬৬*', '6916365260291', 'শিল্পী বেগম  ', ' দেলোয়ার ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(491, 2021040491, '1167', '6916365268748', 'চান মিয়া   ', 'আব্দুল কাদের  ', NULL, NULL, '13', NULL, 1, '1757987578', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(492, 2021040492, '1168', '6916365268509', 'রাবেয়া  বেগম  ', 'আহাদ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(493, 2021040493, '1169', '6916365260041', 'ইসমাইল হোসেন ', 'মিরাজ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(494, 2021040494, '1170', '6916365268464', 'জামাল  ', ' সোনা উদ্দিন  ', NULL, NULL, '13', NULL, 1, '1734103848', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(495, 2021040495, '1171', '6916365265268', 'রমজান আলী  ', ' গোলাম মোস্তফা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(496, 2021040496, '1172', '6916365268517', ' মোঃ দেলোয়ার ', 'সমসের আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(497, 2021040497, '1173', '6916365268920', 'আফাজ উদ্দিন  ', 'মিন্নত  আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(498, 2021040498, '1174', '6916365260017', 'আজিজুর রহমান ', 'মতিউর রহমান  ', NULL, NULL, '13', NULL, 1, '1746857862', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(499, 2021040499, '1175', '6916365269100', ' সেলিম রেজা ', 'জামাল উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(500, 2021040500, '1176', '6916365268993', 'শহিদুল ইসলাম  ', ' মেরাজ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(501, 2021040501, '1177', '6916365269060', 'আব্দুল কাদের ', 'কামাল খা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(502, 2021040502, '1178', '6916365268023', ' মোঃ ইদ্রিস আলী ', 'আঃ হামিদ ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(503, 2021040503, '1179', '6916365268015', ' মোঃ দেলোয়ার  ', 'আঃ রাজ্জাক ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(504, 2021040504, '1180', '6916365268052', 'আহম্মদ আলী  ', 'আঃ রাজ্জাক  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(505, 2021040505, '1181', '6916365268487', ' মোঃ জয়নাল  ', 'কশেম আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(506, 2021040506, '1182', '6916365268282', 'জামাল উদ্দিন  ', 'লালু খলিফা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(507, 2021040507, '1183', '6916365268651', 'সুমতি রানী  ', 'রবিন্দ্র নাথ ', NULL, NULL, '13', NULL, 1, '1792255995', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(508, 2021040508, '1184', '6916365268614', 'জগেস  চন্দ্র  ', 'গন্ধুরাম  ', NULL, NULL, '13', NULL, 1, '1735873778', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(509, 2021040509, '1185', '6916365268626', 'সুবল  চন্দ্র ', 'বিনদ চন্দ্র  ', NULL, NULL, '13', NULL, 1, '1733623186', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(510, 2021040510, '1186', '6916365268646', 'শুশান্ত কুমার  ', 'হরিদাস সরকার  ', NULL, NULL, '13', NULL, 1, '1724155031', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(511, 2021040511, '1187', '6916365269552', 'শ্রী  মালি পাহান  ', 'রাম কৃষ্ণ পাহান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(512, 2021040512, '1188', '6916365269554', 'ভরত পাহান  ', 'দুর্গা চরন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(513, 2021040513, '1189', '6916365269654', 'জামনাথ পাহান  ', 'রশেশ পাহান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(514, 2021040514, '১১৯০*', '6916365269515', 'পার্বতী রানী ', 'কার্তিক পাহান  ', NULL, NULL, '13', NULL, 1, '1789726166', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(515, 2021040515, '1191', '6916365269528', 'অমল পহান ', 'ধীরেন্দ্রনাথ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(516, 2021040516, '1192', '6916365268586', 'শ্রী বাচ্চু পাহান  ', 'সুরেশ পাহান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(517, 2021040517, '1193', '6916365266893', 'সমরা পাহান  ', 'মগন পাহান ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(518, 2021040518, '1194', '6916365268702', 'ফলিন পাহান  ', 'রমেশ পাহান ', NULL, NULL, '13', NULL, 1, '1752482760', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(519, 2021040519, '1195', '6916365268700', 'অনিল পাহান ', ' রশেশ  পাহান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(520, 2021040520, '1196', '6916365268595', 'গুলচান  ', 'কালী চরন পাহান  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(521, 2021040521, '1197', '6916365268616', 'নারায়ন চন্দ্র ', 'যতিন চন্দ্র  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(522, 2021040522, '1198', '6916365268270', 'হাজেরা  ', 'আজিজুুল ইসলাম ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(523, 2021040523, '১১৯৯*', '6916365268052', 'বিবি ফাতেমা ', 'বদিউজ্জামান মুন্সি  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(524, 2021040524, '1200', '6916365268107', 'মোস্তফা কামাল ', 'আঃ জব্বার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(525, 2021040525, '1201', '6916365260058', 'রহমান আলী  ', 'নুরুল ইসলাম  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(526, 2021040526, '1202', '6916365268913', 'শহিদুল ইসলাম  ', 'মজিবর রহমান ', NULL, NULL, '13', NULL, 1, '1775801750', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(527, 2021040527, '1203', '6916365260014', 'নাজিম উদ্দিন  ', 'ফজলুর রহমান ', NULL, NULL, '13', NULL, 1, '1734529941', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(528, 2021040528, '1204', '6916365260007', 'হাওয়া বেওয়া  ', 'এরশাদ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(529, 2021040529, '1205', '6916365268354', 'রাজিয়া  ', 'আহাদ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা ', 'দিন মজুর', '', 1),
(530, 2021040530, '1206', '6916365268906', 'শাজাহান মীর  ', 'তাহু মীর  ', NULL, NULL, '13', NULL, 1, '1770645457', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(531, 2021040531, '1207', '6916365268444', 'আয়েশা  বেগম  ', 'জলিল হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(532, 2021040532, '1208', '6916365269191', 'ইউনুছ আলী ', 'রহিম আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(533, 2021040533, '1209', '6916365263849', 'রাশিদা ', 'সায়েদ আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া  ', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(534, 2021040534, '1621', '691636554943', 'ওবায়দুল হোসেন ', 'ডাঃ আওয়াল ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(535, 2021040535, '1622', '6916365258348', 'মর্জিনা বেগম  ', 'সফর আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(536, 2021040536, '1623', '6916365254827', 'ফরিদা বেগম ', 'আলা উদ্দিন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(537, 2021040537, '1624', '691636526879', 'ফিরোজা বেগম', 'কাসেম আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '7', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(538, 2021040538, '1625', '6916365255339', 'রবিউল ইসলাম  ', 'সুরানা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বাসু পাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(539, 2021040539, '1626', '6916365255324', 'আব্দুর  রাজ্জাক  ', 'সিরাজ প্রাং  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(540, 2021040540, '1627', '6916365255199', 'আলী নেওয়াজ  ', 'সিরাজ প্রাং  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(541, 2021040541, '1628', '6916365255101', ' মোছাঃ কহিনুর  ', 'শহিদ মিয়া  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(542, 2021040542, '1629', '6916365255379', 'রানী বেগম  ', 'মোজাফ্ফর হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(543, 2021040543, '1630', '6916365255231', 'মমেনা বেগম  ', 'শাহজান  মির্জা  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(544, 2021040544, '1631', '6916365255226', 'আমিনুল ইসলাম ', 'রমজান  আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(545, 2021040545, '1632', '6916365271766', 'মোছাঃ সাবিনা ', 'জনাব আলী', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বাসুপারা', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(546, 2021040546, '1633', '6916365254949', ' হোসেন আলী ', 'আওয়াল হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(547, 2021040547, '1634', '6916365254973', 'মোছাঃ মরজিনা   ', 'আনছার আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা  ', 'দিন মজুর', '', 1),
(548, 2021040548, '1635', '6916365255134', 'নরেন সরকার  ', ' পোল্লাদ  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(549, 2021040549, '1636', '6916365257034', 'তাছলিমা  বেগম  ', 'আনোয়ার  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বড়াবড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'মহিলা', 'দিন মজুর', '', 1),
(550, 2021040550, '1637', '6916365255080', ' সোবাহান আলী  ', 'আজিজ হোসেন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(551, 2021040551, '1638', '6916365254908', 'মাসুদ দেওয়ান ', 'আজিজ হোসেন ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(552, 2021040552, '1639', '6916365255018', ' খোরশেদ আলী  ', 'আকবর আলী  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(553, 2021040553, '1640', '6916365255288', 'কলিম উদ্দিন  ', 'ছলিম উদ্দিন  ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(554, 2021040554, '1641', '6916365255021', 'জয়নাল হোসেন  ', 'মহাম্মদ আলী ', NULL, NULL, '13', NULL, 1, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আজিজুল', 'পুরুষ', 'দিন মজুর', '', 1),
(555, 2021040555, '328', '6916365251356', 'আসাদ আলী ', 'সায়েদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(556, 2021040556, '329', '6916365251203', 'বাহার উদ্দিন  ', 'কানচু মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(557, 2021040557, '330', '6916365259325', 'আদু মিয়া  ', 'মাতাবর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(558, 2021040558, '331', '6916365250102', 'ফাতেমা  ', 'নিজাম উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(559, 2021040559, '332', '6916365251209', ' রেজিয়া বেগম  ', ' মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(560, 2021040560, '333', '6916365259808', 'জাকির হোসেন  ', 'সামসু কাজী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(561, 2021040561, '334', '6916365257611', 'হানু মিয়া ', 'হানিফ মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(562, 2021040562, '335', '6916365259410', 'সলেমান  ', 'সওদাগর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(563, 2021040563, '336', '6916365250181', 'গিয়াস ', 'জাম্ব আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(564, 2021040564, '337', '6916365259918', 'মেরিনা  ', 'নিজাম উদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(565, 2021040565, '338', '6916365251045', 'রফ মিয়া', 'ফজলূ হোসেন', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(566, 2021040566, '339', '6916365250087', 'তাইজুল ইসলাম ', 'হাফিজ শিকদার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(567, 2021040567, '340', '6916365261047', 'আছমা বেগম  ', 'বাছের আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(568, 2021040568, '341', '6916365261050', 'কবির হোসেন  ', 'হাফিজ সেক্্েরটারী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(569, 2021040569, '342', '6916365259835', 'আসাদ  আলী ', 'সানিয়াজ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(570, 2021040570, '343', '6916365259595', 'বিল্লাল  ', 'রউফ  শিকদার ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(571, 2021040571, '344', '6916365256677', 'মিনারা  ', 'রুপচান  ', NULL, NULL, '13', NULL, 6, '179930695', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(572, 2021040572, '345', '6916365259989', 'মুক্তি হোসেন ', 'বাসেদ মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(573, 2021040573, '346', '6916365259997', 'চান ড্রাইভার  ', 'জলিল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(574, 2021040574, '347', '6916365260496', 'ই্রবাহিম হোসেন  ', ' মোহাম্মদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(575, 2021040575, '348', '6916365250120', 'মর্জিনা ', 'ওবাইদুল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(576, 2021040576, '349', '6916365260459', 'টিলূ রানী', 'শ্রী নিতাই  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(577, 2021040577, '350', '6916365261264', 'মোছাঃ মাসুদা  ', 'মহর চান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(578, 2021040578, '351', '6916365259260', 'নুরুল ইসলাম ', 'আঃ মোতালেব  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(579, 2021040579, '352', '6916365250353', 'জহুরুল শিকদার  ', 'মুসা শিকদার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(580, 2021040580, '353', '6916365255212', 'মানিক  ', 'নিখিল চন্দ  ', NULL, NULL, '13', NULL, 6, '1709169596', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(581, 2021040581, '354', '6916365251162', ' মোঃ আঃ রহিম  ', 'পিয়ার আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(582, 2021040582, '355', '6916365259983', ' মোঃ ফরহাদ  ', 'মসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 6, '172885891', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(583, 2021040583, '356', '1933581702', 'মিন্টু মিয়া  ', 'ফজলু মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(584, 2021040584, '357', '6433528467', 'নারজিনা বেগম  ', 'সাদেক আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(585, 2021040585, '358', '6916365259983', 'আবু তাহের  ', 'বাচ্চু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(586, 2021040586, '359', '6916365259985', 'রহিম বাদশাহ ', 'বাচ্চু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(587, 2021040587, '360', '6916365259517', 'ইদ্রিস আলী  ', 'আক্কাছ আলী ', NULL, NULL, '13', NULL, 6, '179637643', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(588, 2021040588, '361', '6916365259516', 'কুদ্দুস আলী  ', 'আক্কাছ আলী  ', NULL, NULL, '13', NULL, 6, '1753797406', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(589, 2021040589, '362', '6916365259939', 'মনোয়ারা ', 'রাজ্জাক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(590, 2021040590, '363', '6916365259937', 'অমেলা  ', 'মৃত রফিক ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(591, 2021040591, '364', '6916365260213', 'ফজিলা  ', 'আব্দুল জব্বার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(592, 2021040592, '365', '6916365260003', 'মিলন  ', 'আঃ গনি ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(593, 2021040593, '366', '6916365260736', 'বাহাদুর  ', 'আঃ গনি মিয়া ', NULL, NULL, '13', NULL, 6, '172138002', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(594, 2021040594, '367', '6916365000108', 'ফহিমা  ', 'কামাল  হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(595, 2021040595, '368', '6916365000108', 'সাহিদা  ', 'আঃ রহিম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(596, 2021040596, '369', '6916365260942', 'রোকিয়া  ', 'রইছ আলী  ', NULL, NULL, '13', NULL, 6, '1910658351', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(597, 2021040597, '370', '6916365260939', 'আবুল খন্দকার  ', 'ফজলু  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(598, 2021040598, '371', '6916365259437', 'আকলিমা বেগম  ', 'মাহমুদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(599, 2021040599, '372', '6916365261353', 'আদরী বেগম  ', 'কাতের আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(600, 2021040600, '373', '6916365260792', 'রিজিয়া ', 'ঝরু সরকার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(601, 2021040601, '374', '6916365260929', 'নাজমা খাতুন  ', 'ইসমাইল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(602, 2021040602, '375', '6916365260935', 'আসিয়া খাতুন ', 'আবু বাক্কার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(603, 2021040603, '376', '6916365260430', 'আবেদ আলী  ', 'আঃ হাসেম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(604, 2021040604, '377', '6916365260348', 'কুলছ’ম বেগম ', 'সজিবর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(605, 2021040605, '378', '6916365255659', 'জোহুরা  ', 'আব্দুল আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(606, 2021040606, '379', '6916365260294', 'নুর জাহান  ', ' বেলান সরকার ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(607, 2021040607, '380', '6916365260738', 'রামিদা  ', 'মিলন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(608, 2021040608, '381', '6916365000356', 'ফরহাদ আলী  ', 'মৃত মসলেম  ', NULL, NULL, '13', NULL, 6, '1713814090', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(609, 2021040609, '382', '6916365261188', 'ফরিদা ', ' মোজাম্মেল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(610, 2021040610, '383', '6916365260730', 'সাগর ইসলাম  ', 'শামসুল হক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(611, 2021040611, '384', '6916365259751', 'কহিনুর খাতুন ', 'কাছের আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(612, 2021040612, '385', '6916365260311', 'আয়েশা খাতুন ', 'সফের আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(613, 2021040613, '386', '6916365260764', 'বিপ্লব  ', 'মৃত রাধা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(614, 2021040614, '387', '6916365259942', 'আব্দুল খালেক ', 'কলিম উদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(615, 2021040615, '388', '6916365259150', 'ছালেহা বেগম  ', ' সোহরাব মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(616, 2021040616, '389', '6916365261116', 'রমিজ উদ্দিন ', 'মান্নান ফকির  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(617, 2021040617, '390', '6916365259624', 'শুকুর আলী ', 'চান মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(618, 2021040618, '391', '6916365260748', ' রেহেনা ', 'লাল মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(619, 2021040619, '392', '6916365259280', 'জয়েন আলী  ', 'মমিন আলী  ', NULL, NULL, '13', NULL, 6, '1761152145', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(620, 2021040620, '393', '6916365259563', 'বাসু মিয়া  ', ' তোতা মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(621, 2021040621, '394', '6916365260766', 'আবুল কালাম  ', 'আঃ খালেক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(622, 2021040622, '395', '6916365259679', 'রেজিয়া বেগম  ', 'আফাজ উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(623, 2021040623, '396', '6916365259184', 'মফিজ উদ্দিন ', 'আবু তালেব  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(624, 2021040624, '397', '6916365259182', 'আবু তালেব ', 'ভাদু থান্দার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(625, 2021040625, '398', '6916365259356', 'আলম হোসেন ', 'ভাদু থান্দার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(626, 2021040626, '399', '6916365260213', 'জয়নাল আবেদীন  ', 'আঃ বাছেদ  ', NULL, NULL, '13', NULL, 6, '1749531344', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(627, 2021040627, '400', '6916365000371', 'রেজাউল করিম ', 'হান্নান মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(628, 2021040628, '401', '6916365260436', 'আনোয়ারা বেগম ', 'আঃ ছামাদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(629, 2021040629, '402', '6916365260433', 'মমতাজ বেগম ', 'হানিফ মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(630, 2021040630, '403', '6916365259521', 'আমেনা বেগম ', 'আশাবদ্দিন  ', NULL, NULL, '13', NULL, 6, '1763126338', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(631, 2021040631, '404', '6916365259848', 'শাহিনা বেগম  ', 'আঃ হক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(632, 2021040632, '405', '6916365260598', 'আব্দুর রশিদ  ', 'আকবর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(633, 2021040633, '406', '6916365259832', 'আয়েশা বেগম  ', 'আঃ মান্নান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(634, 2021040634, '407', '6916365259834', 'শিরিনা বেগম ', 'সিরাজ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(635, 2021040635, '408', '6916365259315', 'ফজলূর রহমান ', 'আঃ গনি  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(636, 2021040636, '409', '6916365259535', 'নুরুল ইসলাম  ', 'সায়েব আলী  ', NULL, NULL, '13', NULL, 6, '174767069', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(637, 2021040637, '410', '6916365260348', 'কুলছুম বেগম  ', 'মজিবর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(638, 2021040638, '411', '6916365260003', 'কহিনুর খাতুন  ', 'হাফিজ মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(639, 2021040639, '412', '691636500003', 'ফাতেমা আক্তার  ', 'আজিজুল শিকদার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(640, 2021040640, '413', '6916365000145', 'মিন্টু ', 'মকবুল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(641, 2021040641, '414', '6916365259041', 'ফারজানা বেগম  ', 'হাফিস উদ্দিন  ', NULL, NULL, '13', NULL, 6, '1834374043', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(642, 2021040642, '415', '6916365259854', 'আব্দুল কাদের ', 'গফুর মুন্সি  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(643, 2021040643, '416', '6916365253043', 'মালেক মিয়া  ', 'হানিফ মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(644, 2021040644, '417', '6916365000151', 'আনোয়ারুল ', 'আজিমুদ্দিন  ', NULL, NULL, '13', NULL, 6, '1767343562', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(645, 2021040645, '418', '6916365260704', ' রেহেনো বেগম ', 'আজাহার  ', NULL, NULL, '13', NULL, 6, '1784220054', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(646, 2021040646, '419', '6916365260677', 'মর্জিনা বেগম  ', 'আঃ মজিদ ', NULL, NULL, '13', NULL, 6, '1758161739', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(647, 2021040647, '420', '6916365260319', 'জহুরা বেগম  ', ' মোতালেব ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(648, 2021040648, '421', '6916365260649', 'জাকির হোসেন  ', ' খোবা মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(649, 2021040649, '422', '6916365260307', ' মেসের আলী ', 'আকাইলা মন্ডল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(650, 2021040650, '423', '6916365000309', 'আঃ জলিল  ', 'আজিমুদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(651, 2021040651, '424', '6916365259307', 'নুর হোসেন  ', 'আলাল উদ্দিন', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(652, 2021040652, '425', '6916365260655', 'সাহেরা বিবি  ', 'হাবিবর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(653, 2021040653, '426', '6916365260652', ' খোকা মিয়া ', 'মহন উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(654, 2021040654, '427', '691636500033', 'শাহালম হোসেন ', ' মেসের আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(655, 2021040655, '428', '6916365259720', 'মহসিন সরকার ', 'হারু মন্ডল  ', NULL, NULL, '13', NULL, 6, '1925619005', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(656, 2021040656, '429', '6916365000012', 'কাকলী ', 'হরেন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(657, 2021040657, '430', '6916365260600', 'জামেনা ', ' মোস্তফা ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(658, 2021040658, '431', '6916365260550', 'আব্দুল ওয়াহিদ  ', 'আঃ কাদের ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(659, 2021040659, '432', '6916365260692', 'মোছাঃ দিররুবা  ', 'আব্দুল আওয়াল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(660, 2021040660, '433', '6916365260611', 'আঃ আওয়াল  ', 'আকবর আলী  ', NULL, NULL, '13', NULL, 6, '1770826563', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(661, 2021040661, '434', '6916365260561', 'রাবেয়া বেগম ', 'জমসেদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(662, 2021040662, '435', '6916365260596', 'আব্দুর রাজ্জাক  ', 'মকবুল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(663, 2021040663, '436', '6916365260536', ' সেলিনা পারভীন  ', 'আনোয়ার হোসেন ', NULL, NULL, '13', NULL, 6, '1788515279', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(664, 2021040664, '437', '6916365260570', 'মুন্নি বেগম  ', 'শহিদুল ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(665, 2021040665, '438', '6916365260610', 'জমেলা ', 'ময়েজ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(666, 2021040666, '439', '6916365260621', 'আনোয়ারা বেগম ', 'খলিলূর রহমান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(667, 2021040667, '440', '6916365260533', 'রহিমা বেগম  ', 'আঃ জব্বার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(668, 2021040668, '441', '6916365260548', 'আমিরুল ইসলাম ', 'আঃ হালিম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(669, 2021040669, '442', '6916365260351', ' দেলোয়ারা  ', 'আঃ জব্বার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(670, 2021040670, '443', '6916365260604', 'লাইলী বেগম  ', ' তোফাজ্বল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(671, 2021040671, '444', '6916365259868', 'ফারুখ হোসেন ', 'আলাউদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(672, 2021040672, '445', '6916365260231', 'ফজলুল হক  ', ' মোহাম্মদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(673, 2021040673, '446', '6916365259252', 'সাজেদা ', 'হযরত আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(674, 2021040674, '447', '691636500102', '্ওজুফা ', ' সেন্টু  ', NULL, NULL, '13', NULL, 6, '1783482178', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(675, 2021040675, '448', '6916365261209', 'কলিম উদ্দিন  ', 'আইয়ুব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(676, 2021040676, '449', '6916365259965', 'নাছিমা বেগম ', 'হুমায়ন বেগম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(677, 2021040677, '450', '6916365000048', 'গোলাপী বেগম ', 'সাইদুর  রহমান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(678, 2021040678, '451', '6916365260490', 'মাজেদা ', 'আহম্মেদ আলী ', NULL, NULL, '13', NULL, 6, '1704514887', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(679, 2021040679, '452', '6916365259316', 'মকছেদ মাল ', 'রফাতুল্লা  ', NULL, NULL, '13', NULL, 6, '1768146010', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(680, 2021040680, '453', '6916365261201', 'কনক কাজী  ', 'আবু সাইদ কাজী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(681, 2021040681, '454', '6916365264606', 'আমেনা বেগম  ', 'বাবুল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(682, 2021040682, '455', '6916365261314', 'শহিদ পাটোয়ারী  ', 'আইনাল হক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(683, 2021040683, '456', '6916365261315', ' মোছাঃ রেহেনা  ', 'আজিজ উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(684, 2021040684, '457', '691636525888', 'জামাল উদ্দিন  ', 'আলাল উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়রসাতুরিযা  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(685, 2021040685, '458', '6916365250467', 'জরিনা বেগম ', ' তৈয়ব আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(686, 2021040686, '459', '6916365260593', 'আবু কাশেম  ', 'বাহার উদ্দিন  ', NULL, NULL, '13', NULL, 6, '1932916320', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(687, 2021040687, '460', '6916365259771', ' গোলজার ', 'ফাইজদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(688, 2021040688, '461', '6916365250915', 'মোতালেব ', 'হামিজ উদ্দ্নি  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(689, 2021040689, '462', '6916365250713', 'শ্রী মহন দাস ', 'বনমালী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(690, 2021040690, '463', '691636526088', 'আলেয়া বেগম  ', 'হযরত আলী ', NULL, NULL, '13', NULL, 6, '1761378190', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(691, 2021040691, '464', '6916365256762', 'চায়না  বেগম  ', 'আজগর আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(692, 2021040692, '465', '9157624736', 'আমিরুল শিকদার ', 'আঃ  রহমান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(693, 2021040693, '466', '6916365260699', 'রশেন আলী  ', 'আশরাফুল  ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(694, 2021040694, '467', '6916365260125', 'আবুল হোসেন ', 'ইসমাইল  হোসেন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(695, 2021040695, '468', '6916365260215', 'কমেলা  বেগম ', 'সামেদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(696, 2021040696, '469', '6916365260669', 'আঃ মালেক ', 'ছাবেদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(697, 2021040697, '470', '6916365255922', ' রেহেনা বেগম ', 'ইসমাইল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(698, 2021040698, '471', '6916365260638', 'নাছিমা বেগম ', 'ইসমাইল  ', NULL, NULL, '13', NULL, 6, '1731827675', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(699, 2021040699, '472', '6916365260632', 'নাজিম উদ্দিন ', 'মজিদ মন্ডল  ', NULL, NULL, '13', NULL, 6, '1719025443', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(700, 2021040700, '473', '6916365260633', 'রাহিমা  বেগম  ', 'ইয়াছিন আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(701, 2021040701, '474', '6916365259708', 'আয়েশা বেগম ', 'শাজাহান আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(702, 2021040702, '475', '6916365259693', 'সামসুদ্দিন ', 'হাফিজ উদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(703, 2021040703, '476', '6916365260680', 'আলাউদ্দিন  ', 'মৃত মনির  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(704, 2021040704, '477', '6916365260503', 'রোজিনা বেগম  ', 'ইউনুছ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(705, 2021040705, '478', '6916365260876', ' মোতালেব প্রাং ', 'হাফিজ প্রাং ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(706, 2021040706, '479', '6916365262656', 'জমিলা বেগম  ', ' মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(707, 2021040707, '480', '6916365261170', 'জোসনা  ', 'ইয়াছিন আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(708, 2021040708, '481', '6916365260514', 'ছিদ্দিক আলী  ', 'আজগর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(709, 2021040709, '482', '6916365260897', 'রমজান ', 'ওমর আলী  ', NULL, NULL, '13', NULL, 6, '1797851640', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(710, 2021040710, '483', '6916365269747', 'রজব আলী ', 'মন্তাজ আলী ', NULL, NULL, '13', NULL, 6, '1745815843', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(711, 2021040711, '484', '6916365260005', 'ইদ্রিস আলী ', 'সাত্তার সরকার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(712, 2021040712, '485', '6916365269748', 'কুলছুম  বেগম ', 'করিম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(713, 2021040713, '486', '6916365269651', 'রহিমা বেগম ', 'চান মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(714, 2021040714, '487', '6916365260450', 'মাছুরা ', 'হাবিবুর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(715, 2021040715, '488', '6916365269652', 'রানী বেগম ', 'ফরিদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(716, 2021040716, '489', '6916365260448', 'ফাতেমা  ', 'খলিলূর রহমান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(717, 2021040717, '490', '6916365269795', 'মজনু মিয়া  ', 'দারোগ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(718, 2021040718, '491', '6916365260636', 'জাহেরা বেগম  ', 'আলাউদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(719, 2021040719, '492', '6916365260285', 'ছিদ্দিক আলী  ', ' হোসেন আলী ', NULL, NULL, '13', NULL, 6, '1982975633', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(720, 2021040720, '493', '6916365260582', 'জামাল হোসেন  ', 'সাত্তার আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(721, 2021040721, '494', '6916365260972', 'রাহেলা  বেগম ', 'সিরাজ ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(722, 2021040722, '495', '6916365260406', 'মাজেদা বেগম ', 'আজিজুল ইসলাম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(723, 2021040723, '496', '6916365260361', 'বাবু  ', 'বকর আলী  ', NULL, NULL, '13', NULL, 6, '1710493034', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(724, 2021040724, '497', '6916365260063', 'আমির হোসেন  ', 'হাছেন আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(725, 2021040725, '498', '6916365260498', 'হামিদা বেগম  ', 'আঃ” কাদের ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(726, 2021040726, '499', '6916365260953', ' খোকা মিয়া  ', 'মানিক হোসেন  ', NULL, NULL, '13', NULL, 6, '1728999992', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(727, 2021040727, '500', '6916365261560', 'জালাল উদ্দিন  ', 'আহম্মদ আলী ', NULL, NULL, '13', NULL, 0, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম               ', 'পুরুষ', 'দিন মজুর', '', 1),
(728, 2021040728, '501', '6916365259911', 'আকলিমা খাতুন ', 'ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(729, 2021040729, '502', '6916365265212', 'কেরামত আলী  ', 'আশরাফ  আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(730, 2021040730, '503', '6916365258903', 'লাভলী খাতুন  ', 'ইসলাম   উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(731, 2021040731, '504', '6916365259088', 'মজিরন  বেগম  ', 'মসলেম  উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(732, 2021040732, '505', '6916365258878', 'শহর ভানু  ', 'ইদন মাল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(733, 2021040733, '506', '6916365258917', 'আবর আলী  ', 'ফটিক আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(734, 2021040734, '507', '6916365258998', 'মজিদ মাল  ', 'ইদন মাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(735, 2021040735, '508', '6916365259024', 'আমেনা  ', 'সোমো  প্রামানিক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(736, 2021040736, '509', '6916365258996', 'মমেনা বেগম ', 'আবুল হোসেন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(737, 2021040737, '510', '6916365259024', 'কাশেম মাল ', 'ইদন মাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(738, 2021040738, '511', '6916365259007', ' সেকেন্দার  ', 'হাতেম সরদার  ', NULL, NULL, '13', NULL, 2, '1780782732', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(739, 2021040739, '512', '6916365259434', 'আবুল হাসিম  ', ' চেরাগ আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(740, 2021040740, '513', '6916365260750', ' সেরিম রেজা ', 'শামসুল রেজা ', NULL, NULL, '13', NULL, 2, '1723597883', NULL, NULL, NULL, 'হয়বতপুর  ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(741, 2021040741, '514', '6916365252013', 'আকতার হোসেন  ', 'আমেনা বেগম  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(742, 2021040742, '515', '6916365260705', 'মজিবর রহমান  ', 'আঃ বারেক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(743, 2021040743, '516', '6916365250468', 'মমতাজ  ', 'আঃ আওয়াল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(744, 2021040744, '517', '6916365250442', 'দিলিপ হোসেন  ', ' গৌর চন্দ্র সরকার  ', NULL, NULL, '13', NULL, 2, '1735551901', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(745, 2021040745, '518', '6916365250464', ' খোদেজা বেগম ', 'শাহিন আলম  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(746, 2021040746, '519', '6916365250995', 'ওহিদুল্লা  ', 'শওকত আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(747, 2021040747, '520', '6916365250527', 'আদরী  ', 'বুলবুল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(748, 2021040748, '521', '6916365259884', 'আনিছুর রহমান  ', 'ফজলূর রহমান  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(749, 2021040749, '522', '6916365251118', 'আজিজুল ইসলাম ', 'রমিজ উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(750, 2021040750, '523', '6916365259184', 'মজিদ উদ্দিন  ', 'আবু তালেব  ', NULL, NULL, '13', NULL, 2, '1775282940', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(751, 2021040751, '524', '6916365252523', 'মজনু  ', 'কুদ্দুস আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(752, 2021040752, '525', '6916365250472', 'ছিদ্দিক আলী  ', 'আজিম উদ্দিন  ', NULL, NULL, '13', NULL, 2, '1767177558', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(753, 2021040753, '526', '6916365250993', 'শহিদুল ইসলাম  ', 'শওকত আলী  ', NULL, NULL, '13', NULL, 2, '1722961463', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(754, 2021040754, '527', '6916365250456', 'আলা উদ্দিন ', 'নায়েব আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(755, 2021040755, '528', '6916365250631', 'নওশের ', 'কাচু তালুকদাুর  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ  ', 'দিন মজুর', '', 1),
(756, 2021040756, '529', '6916365250641', 'জয়নাল ', 'মগল মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(757, 2021040757, '530', '6916365250033', 'যাদব কুমার ', 'শ্রী  শ্যামল সরকার  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(758, 2021040758, '531', '6916365253536', 'মিঠন  ', 'মান্নান মাল ', NULL, NULL, '13', NULL, 2, '1722731309', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(759, 2021040759, '532', '6916365259556', 'রাবেয়া  ', 'মসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(760, 2021040760, '533', '6916365259224', 'মজিদ মিয়া  ', 'মফিজ ', NULL, NULL, '13', NULL, 2, '1824873106', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(761, 2021040761, '534', '6916365250394', 'সাইদুল ইসলাম ', 'হাছেন প্রাং  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(762, 2021040762, '535', '6916365251286', 'মোছাঃ  রওসনারা   ', 'জাকির হোসেন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(763, 2021040763, '536', '6916365251110', 'রিনা  বেগম ', 'রবিউল ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(764, 2021040764, '537', '6916365258692', 'জরিনা বেগম  ', 'জামাল উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(765, 2021040765, '538', '6916365259633', 'শিউলী  ', 'ইব্রাহিম হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(766, 2021040766, '539', '6916365253801', 'চান মন্ডল  ', 'আমিরুল্লা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(767, 2021040767, '540', '6916365250091', 'মনোয়ারা ', 'কুদ্দুস আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(768, 2021040768, '541', '6916365259981', 'চান ফকির ', ' সোনামদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর ', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(769, 2021040769, '542', '5983701037', 'আওয়াল হোসেন ', 'মকছেদ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(770, 2021040770, '543', '6916365263244', 'আক্তার প্রাং  ', 'কান্দুর প্রাং ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(771, 2021040771, '544', '6916365263243', 'রাহিমা বেগম ', ' মোশারফ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(772, 2021040772, '545', '6916365263097', 'ইয়াছিন আলী', 'ইদ্রিস আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(773, 2021040773, '546', '6916365263247', 'সাজাহান আলী ', 'হারিছ উল্লাহ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(774, 2021040774, '547', '6916365263120', 'ফয়েজ উদ্দ্নি  ', 'আরজান আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(775, 2021040775, '548', '6916365263322', 'আছমত আলী ', 'রহমত আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(776, 2021040776, '549', '6916365263214', 'আনায়ারা ', 'খলিল হোসেন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(777, 2021040777, '550', '6916365263291', 'আবু সামা  ', 'আজাহার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(778, 2021040778, '551', '6916365263348', 'শাহাদত হোসেন  ', 'ফাইজদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(779, 2021040779, '552', '6916365263356', 'আঃ লতিফ  ', 'মঙ্গল মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(780, 2021040780, '553', '6916365263207', 'ফজলূ  মিয়া  ', 'সুফি গন্যা  ', NULL, NULL, '13', NULL, 6, '1777353139', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(781, 2021040781, '554', '6916365262187', 'নাজমুল ', 'হাসান আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(782, 2021040782, '555', '6916365263269', 'মজনু মিয়া  ', 'সুফি গন্যা  ', NULL, NULL, '13', NULL, 6, '1840455247', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(783, 2021040783, '556', '6916365263173', ' সোনার সদর ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(784, 2021040784, '557', '6916365263180', 'শাহাদত হোসেন  ', 'কান্দুর প্রাং  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(785, 2021040785, '558', '6916365263113', 'আনোয়ারা  ', 'আঃ সামাদ  ', NULL, NULL, '13', NULL, 6, '1921535194', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(786, 2021040786, '559', '6916365263342', 'জাকির হোসেন  ', 'জমির উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(787, 2021040787, '560', '4183663964', 'কদভানু  বেগম ', 'আমিন উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(788, 2021040788, '561', '6916365263278', 'আমজাদ আলী  ', 'শাহাজাদ্দীন  ', NULL, NULL, '13', NULL, 6, '1765494449', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(789, 2021040789, '562', '6916365263177', 'মজিদ আলী  ', 'মহির উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(790, 2021040790, '563', '6916365263122', 'ইমদাদুল হক ', 'তাই জদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(791, 2021040791, '564', '6916365261655', 'আবুল মন্ডল  ', 'সাদু মন্ডল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(792, 2021040792, '565', '6916365262193', 'মইফুল খাতুন ', ' রেজাউল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(793, 2021040793, '566', '6916365633760', 'আবুল কাশেম  ', 'রউছ উদ্দিন ', NULL, NULL, '13', NULL, 6, '1954081379', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(794, 2021040794, '567', '1933596155', 'আব্দুল মাসুদ  ', 'মান্নান ভুইয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(795, 2021040795, '৫৬৮*', '6916365263280', 'মসলেম উদ্দিন  ', ' মোঃ মান্নাফ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(796, 2021040796, '569', '6916365261457', 'শহিদুল ইসলাম ', 'আজিম উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(797, 2021040797, '570', '6916365263250', 'জিন্নত ফকির  ', 'একাব্বর আলী  ', NULL, NULL, '13', NULL, 6, '1761110593', NULL, NULL, NULL, 'কাদিমসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(798, 2021040798, '571', '6916365263226', 'হাছিনা বেগম  ', 'খলিল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(799, 2021040799, '572', '6916365261550', 'সফুরা  ', 'শুকুর আলী ', NULL, NULL, '13', NULL, 6, '1747478926', NULL, NULL, NULL, 'কাদিমসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(800, 2021040800, '573', '6916365263640', 'রেজিয়া  ', 'জহুরুল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(801, 2021040801, '574', '6916365260338', 'ইমান আলী ', 'রহমত আলী  ', NULL, NULL, '13', NULL, 6, '1798717877', NULL, NULL, NULL, 'কাদিম সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(802, 2021040802, '575', '6916365262187', 'সামসুন নাহার ', 'রাজ্জাক মন্ডল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিরা ', 'দিন মজুর', '', 1),
(803, 2021040803, '576', '6916365262843', 'আঃ রশিদ  ', 'খলিল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(804, 2021040804, '577', '6916365263109', 'জামিরন ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(805, 2021040805, '578', '6916365263213', 'আহাদ আলী  ', 'রহমত আলী  ', NULL, NULL, '13', NULL, 6, '1768969490', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(806, 2021040806, '579', '6916365263039', 'খাইরুল ইসলাম  ', 'মতিউর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(807, 2021040807, '580', '6916365263447', 'কল্যানী রানী  ', 'আনন্দ কুমার সরকার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(808, 2021040808, '581', '6916365263647', 'কলিম উদ্দিন  ', ' তৈয়ব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(809, 2021040809, '582', '6916365263675', 'কাঞ্চন বেগম ', 'আক্কাস আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(810, 2021040810, '583', '6916365262643', 'জামাল উদ্দিন  ', 'মনর উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(811, 2021040811, '584', '6916365262888', 'আজগর আলী  ', ' মোহাম্মদ আলী  ', NULL, NULL, '13', NULL, 6, '1947993613', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(812, 2021040812, '585', '6916365263577', 'আঃ সামাদ ', 'জাফর মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(813, 2021040813, '586', '6916365263643', 'সহিনা  ', ' রেজাউল ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(814, 2021040814, '587', '6916365263674', 'নিলুফা ', 'আল মামুন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(815, 2021040815, '588', '6916365263687', 'আরিফুল ইসলাম ', 'আলা উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(816, 2021040816, '589', '6916365263666', 'আপেলা  ', 'আলাল সওদা গর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(817, 2021040817, '590', '6916365263651', 'শ্রী লক্ষীপুর রানী  ', ' গোপাল চন্দ্র দাস ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(818, 2021040818, '591', '6916365263394', 'হাসিনা  ', 'খলিলুর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(819, 2021040819, '592', '6916365263642', 'আই্য়ুব আলী  ', 'াইব্রাহিম মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(820, 2021040820, '593', '6916365262768', 'রওসনারা  ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(821, 2021040821, '594', '6916365262772', 'তারা বানু  ', 'জয়নাল  ', NULL, NULL, '13', NULL, 6, '1745607437', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(822, 2021040822, '595', '6916365262712', 'হরফ আলী ', 'গফুর আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ার সাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(823, 2021040823, '596', '6916365263702', 'জাফর আলী  ', 'গফুর মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(824, 2021040824, '597', '6916365263637', 'সুমতী রানী  ', 'গোপাল চন্দ্র বাদ্যকর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(825, 2021040825, '598', '6916365262867', 'হামিদ মিয়া  ', 'মুসুম দানী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিযারসাতুরিয়া  ', '4', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(826, 2021040826, '599', '6916365260027', 'ইউসুফ আলী ', 'আলী  আকবর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়রসাতুরিযা  ', '4', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(827, 2021040827, '600', '6916365263423', 'ফরিদ মিয়া  ', 'নান্নু মিয়া  ', NULL, NULL, '13', NULL, 6, '1728859539', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(828, 2021040828, '601', '6916365263602', 'রসুল ফকির ', 'খলিল ফকির ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(829, 2021040829, '602', '6916365263547', 'মনির আলী দাস  ', 'শিবেন চন্দ্র ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(830, 2021040830, '603', '6916365263608', 'রইছ মোল্লা  ', 'জয়নুদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(831, 2021040831, '604', '7783671196', ' বেদেনা বেগম  ', 'আমজাদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(832, 2021040832, '605', '6916365263041', 'দেলোয়ার হোসেন  ', 'সিরাজ উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(833, 2021040833, '606', '6916365266059', 'মুন্নি ', 'ভুলু প্রাং ', NULL, NULL, '13', NULL, 6, '1983885959', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(834, 2021040834, '607', '6916365268355', ' হোসনেয়ারা  ', 'জলিল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(835, 2021040835, '608', '6916365263343', 'নাজমা  ', 'মউনুল ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(836, 2021040836, '609', '6916365263552', 'শক্তি রানী সরকার ', 'রবি সরকার ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(837, 2021040837, '610', '6916365263279', 'ফুলমেহের ', 'রজব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(838, 2021040838, '611', '6916365000399', 'সুকুমার দাস ', ' গোপাল চন্দ্র ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(839, 2021040839, '612', '6916365266228', 'কাজেম মন্ডল  ', 'পচাই মন্ডল  ', NULL, NULL, '13', NULL, 6, '1767389935', NULL, NULL, NULL, 'দিযারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(840, 2021040840, '613', '6916365262499', 'ইসমাইল  ', 'জীবন সরকার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(841, 2021040841, '614', '6916365262656', 'জাহানারা ', 'খোকা ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(842, 2021040842, '615', '6916365263112', 'চান্দু ', 'তাহের আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(843, 2021040843, '616', '6916365263283', 'আবু তাহের ', 'রজব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিযারসাতুরিযা ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(844, 2021040844, '617', '6916365262665', 'রুবিয়া  ', 'ইদ্রিস আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(845, 2021040845, '618', '6916365263078', 'রমেনা বেগম    ', 'দবির উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(846, 2021040846, '619', '6916365005280', 'আমিরন  ', 'আবুল হোসেন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(847, 2021040847, '620', '6916365262964', 'মান্নান আলী ', ' মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(848, 2021040848, '621', '6916365263141', 'আব্দুল রাজ্জাক  ', 'হাছান আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(849, 2021040849, '622', '6916365263286', 'জাহাঙ্গীর  ', 'আবুল কালাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(850, 2021040850, '623', '6916365262642', 'আক্তার আলী  ', 'পচাই সরকার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিযারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(851, 2021040851, '624', '6916365260248', 'আক্তার হোসেন ', 'রফিক খা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিযারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(852, 2021040852, '625', '6916365260034', 'মজিবর ', 'লাল মিয়া  ', NULL, NULL, '13', NULL, 6, '1790899392', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(853, 2021040853, '626', '6916365261423', 'সওদাগর ', 'আবেদ আলী   ', NULL, NULL, '13', NULL, 6, '1794228247', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(854, 2021040854, '627', '6916365261474', 'শ্রীমতি মাধবী ', 'সন্তেষ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(855, 2021040855, '628', '6916365262958', 'হাওয়া বেগম  ', 'মানিক প্রাং  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(856, 2021040856, '629', '6916365261854', 'জহুরা  ', 'নজরুল ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(857, 2021040857, '630', '6916365262298', 'শ্রী কিসব শাহ  ', 'নবদিপ চন্দ্র শাহ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(858, 2021040858, '৬৩১*', '6916365261731', 'আব্দুল আলিম  ', 'নাজিম উদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(859, 2021040859, '632', '6916365262399', 'জাহানারা ', ' সোবাহান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(860, 2021040860, '633', '6916365262266', 'সাকেরা ', 'ওসমান  আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(861, 2021040861, '634', '6916365261403', 'সাহেরা  ', 'মসলেম মন্ডল  ', NULL, NULL, '13', NULL, 6, '1748770602', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(862, 2021040862, '৬৩৫*', '6916365260052', ' মোছাঃ নুরভানু ', 'আঃ সামাদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(863, 2021040863, '636', '6916365262147', 'শহিতুন ', 'রহিম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(864, 2021040864, '637', '6916365261691', 'আনছার খা  ', 'মনতাজ খা  ', NULL, NULL, '13', NULL, 6, '1780641744', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(865, 2021040865, '৬৩৮*', '6916365261659', 'শাহিদা খাতুন ', ' মেহের প্রাং', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(866, 2021040866, '639', '6916365262123', 'শ্রীমতি সংগিতা  ', 'শ্রী দিনেশ  ', NULL, NULL, '13', NULL, 6, '1737720359', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(867, 2021040867, '640', '6916365262293', 'শিল্পী ', 'সাদেক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(868, 2021040868, '641', '6916365262208', 'ময়না  ', 'ময়নাল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(869, 2021040869, '642', '6916365262233', 'হাবিজা ', 'সুলতান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(870, 2021040870, '643', '6916365261931', 'রহমান  মোল্লা  ', 'ঠান্ডু মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(871, 2021040871, '৬৪৪*', '6916365262155', 'মালেকা বেগম  ', ' ঘেরু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(872, 2021040872, '645', '6916365262348', 'হাফসা ', 'শওকত  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(873, 2021040873, '646', '6916365262263', 'সাহেরা ', ' রফিক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(874, 2021040874, '647', '6916365262279', 'মজিনা  ', 'রফিকুল ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(875, 2021040875, '648', '6916365261730', 'কুলছুম ', 'আফসার আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(876, 2021040876, '649', '6916365261740', ' রোজিনা ', 'আবু ছাইদ ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(877, 2021040877, '৬৫০*', '6916365261666', 'রমজান আলী ', 'জয়ধর আলী  মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই  ', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(878, 2021040878, '651', '6916365261552', 'ফাতেমা  ', 'তাজেল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(879, 2021040879, '652', '6916365268775', 'মনোহার  ', 'মাদার আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(880, 2021040880, '653', '6916365262016', 'আলহাজ্ব ', 'ইসমাইল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(881, 2021040881, '654', '6916365261730', 'শ্রী মতি জোসনা  ', ' গৌর চন্দ্র শীল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(882, 2021040882, '655', '6916365261719', 'মান্নাফ  ', 'করিম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(883, 2021040883, '656', '6916365261571', 'শ্রী মতি নিয়তী  ', 'শ্রী সুনিল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(884, 2021040884, '657', '6916365261974', 'মোছাঃ সনেকা  ', 'ময়নাল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(885, 2021040885, '658', '6916365261714', 'ছানোয়ারা  ', ' সোহরাব হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(886, 2021040886, '659', '6916365261578', 'শ্রী সন্ধা রানী  ', 'শ্রী বিম্বনাথ পঞ্চাশ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(887, 2021040887, '660', '6916365269117', 'শ্রীমতি গৌরী  ', 'শ্রী দিজেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(888, 2021040888, '661', '6916365262035', 'রমজান আলী  ', 'বেলাল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(889, 2021040889, '662', '6916365260050', 'চাম্পা ', 'ময়নাল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(890, 2021040890, '663', '6916365261870', ' লোকমান  ', ' কেদু মন্ডল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(891, 2021040891, '664', '6916365262398', 'খিদির আলী  ', 'ছিরফত আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(892, 2021040892, '665', '6916365260001', 'শ্রীমতি মালতি ', 'ললনী মন্ডল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(893, 2021040893, '666', '6916365261624', 'বাসন্তি রানী  ', 'শ্রী মাহিত্য  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(894, 2021040894, '667', '6916365261699', 'মজনু খা ', 'আনছু খা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(895, 2021040895, '668', '6916365262013', 'শাবানা  ', 'ছলেমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(896, 2021040896, '669', '6916365262389', 'করোম আলী ', 'নয়ন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(897, 2021040897, '670', '6916365261910', 'আকালূ ফকির  ', 'নয়ন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(898, 2021040898, '671', '6916365262012', 'আব্দুস সোবাহান  ', ' হোসেন আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(899, 2021040899, '৬৭২*', '6916365262013', 'সাদেক আলী  ', 'বাহার উদ্দিন মন্ডল  ', NULL, NULL, '13', NULL, 6, '                    ', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(900, 2021040900, '673', '6916365261602', ' জোসনা  ', 'রবি মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(901, 2021040901, '674', '6916365262250', 'আফসানা  ', 'ইমান শেখ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(902, 2021040902, '675', '6916365262316', 'বছির উদ্দিন  ', 'রহমত  আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(903, 2021040903, '676', '6916365262375', 'মনোয়ারা  ', 'করিম আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(904, 2021040904, '677', '6916365261831', 'ফরিদা  বেগম  ', 'ফজলূ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(905, 2021040905, '678', '6916365263159', 'মদিনা  ', 'তছলেম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(906, 2021040906, '679', '6916365262153', 'আলেকা ', ' খোলিল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(907, 2021040907, '680', '6916365262343', 'হুনুফা  ', 'আইয়ুুব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(908, 2021040908, '681', '6916365262303', 'আবেদা  ', 'চান্দু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(909, 2021040909, '682', '6916365262163', 'মকুল হোসেন  ', 'মুনছের আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(910, 2021040910, '683', '6916365262223', 'আছমা  ', 'তমেজ উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(911, 2021040911, '684', '6916365263073', 'মজিদা ', 'শাহাদত ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(912, 2021040912, '685', '6916365262271', 'দোলোনাথ  ', 'ফিরোজ আলী  ', NULL, NULL, '13', NULL, 6, '1987678594', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(913, 2021040913, '686', '6916365263107', 'আক্কাস আলী  ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ ', 'দিন মজুর', '', 1),
(914, 2021040914, '687', '6916365261653', ' মোছাঃ ওমেলা  ', 'আকছেদ মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(915, 2021040915, '688', '6916365261670', 'তফিজ ফকির ', 'আজিজ ফকির ', NULL, NULL, '13', NULL, 6, '1764995679', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(916, 2021040916, '689', '6916365261540', 'মকলেছ মিয়া ', 'আলাউদ্দিন  ', NULL, NULL, '13', NULL, 6, '1928925655', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(917, 2021040917, '690', '6916365260031', ' মোঃ আঃ কুদ্দুস  ', 'ঠান্টু মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(918, 2021040918, '691', '6916365261540', 'মোঃ রেজাউল  ', 'গনি শেখ ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(919, 2021040919, '692', '6916365260287', 'আলমগীর  ', ' মোঃ জামাল  ', NULL, NULL, '13', NULL, 6, '1731154475', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(920, 2021040920, '693', '691636526288', 'আয়নাল  ', ' খোরশেদ আলম  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(921, 2021040921, '694', '69163652600266', 'মোছাঃ অঞ্জনা  ', ' মোঃ ইয়াদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(922, 2021040922, '695', '6916365262403', ' মোঃ রমজান ', 'গফর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(923, 2021040923, '696', '6916365269840', ' মোছাঃ আসমা  ', 'আলতাব ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(924, 2021040924, '697', '6916365263568', 'খুশি বেগম  ', 'মজিবর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(925, 2021040925, '698', '6916365263020', 'মোকলেছ  ', 'ওমেদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'কাদিম সাতুরিয়া    ', '4', 'লক্ষীপুর খোলাবাড়ীয়', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(926, 2021040926, '699', '6916365262566', ' দেলজান  ', 'ময়েজ ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(927, 2021040927, '700', '7783817732', 'আব্দুল জলিল  ', 'আশরাফ কারিগর  ', NULL, NULL, '13', NULL, 6, '1735418591', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(928, 2021040928, '701', '6916365262645', ' মেহেজান  ', 'আবুল কালাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(929, 2021040929, '702', '6916365262003', 'আবেজান  ', 'ফরিদ মন্ডল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিযা  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(930, 2021040930, '703', '6916365262398', 'মোঃ মামুন  ', 'ছিদ্দিক আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(931, 2021040931, '704', '6916365262568', 'নুরুজ্জামান  ', 'মনতাজ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(932, 2021040932, '705', '691636500299', 'ইব্রাহিম হোসেন ', 'বারেক হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(933, 2021040933, '706', '6916365264128', 'আফিয়া  ', 'রুপচান মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(934, 2021040934, '707', '6916365262883', ' মোবারক হোসেন  ', 'রহমান আলী  ', NULL, NULL, '13', NULL, 6, '1780741499', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(935, 2021040935, '708', '6916365266997', 'মকবুল হোসেন  ', 'আবুল কাশেম ', NULL, NULL, '13', NULL, 6, '1730962170', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(936, 2021040936, '709', '6916365266193', 'ইকবাল হোসেন  ', 'কিতাব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(937, 2021040937, '710', '6916365267554', ' দেয়োয়ারা বেগম  ', 'আক্কাছ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(938, 2021040938, '711', '6916365265485', 'বিল্লাল হোসেন  ', ' ফিরোজ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(939, 2021040939, '712', '6916365264178', 'ওবাইদুল  ', ' হোসেন আলী ', NULL, NULL, '13', NULL, 6, '1930435645', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(940, 2021040940, '713', '6916365263248', 'জাহিদুল ইসলাম  ', 'ছাত্তার আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(941, 2021040941, '714', '6916365263252', 'আমজাদ আলী ', 'কাশেম আলী ', NULL, NULL, '13', NULL, 6, '1783746868', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(942, 2021040942, '715', '6916365263253', 'শাহিন  ', 'লাল মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(943, 2021040943, '716', '6916365266054', ' মেমিনা  বেগম  ', ' মোতালেব হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(944, 2021040944, '717', '6916365266089', 'মোহাম্মদ আলী  ', ' সেকেন্দার আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(945, 2021040945, '718', '6916365256345', 'ছালেহা  ', 'হযরত আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(946, 2021040946, '719', '6916365263223', 'শিলা বেগম  ', 'আকবর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(947, 2021040947, '720', '6916365256371', 'নাজিমুদ্দিন ', 'সিরাজ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(948, 2021040948, '721', '6916365264022', 'জরিনা বেগম  ', 'রফিকুল ইসলাম ', NULL, NULL, '13', NULL, 6, '1724892644', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(949, 2021040949, '722', '6916365264092', 'কাদের আলী  ', 'আঃ রহমান ', NULL, NULL, '13', NULL, 6, '1763021602', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(950, 2021040950, '723', '6916365256348', 'আঃ জলিল  ', 'রশিদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(951, 2021040951, '724', '6916365264693', 'জামাল হোসেন  ', 'ছাত্তার আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(952, 2021040952, '725', '6916365256346', 'আমির উদ্দিন ', ' চেরাগ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(953, 2021040953, '726', '6916365266723', 'ওহিদ আলী  ', 'বাহার উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(954, 2021040954, '727', '6916365267064', 'আজিজুল  ইসলাম ', 'আজিজ হোসেন ', NULL, NULL, '13', NULL, 6, '1796775002', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(955, 2021040955, '728', '6916365263842', 'হারিজ মিয়া  ', 'মন মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(956, 2021040956, '729', '6916365266767', ' রেনুকা ', 'সাবত আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(957, 2021040957, '730', '6916365263986', 'সাজাহান আলী  ', 'আরজু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(958, 2021040958, '731', '6916365264513', 'বাবুল হোসেন ', 'ইনছার আলী ', NULL, NULL, '13', NULL, 6, '1733292678', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(959, 2021040959, '732', '6916365264573', 'মহি উদ্দিন  ', 'সুলতান প্রাং  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(960, 2021040960, '733', '6916365263897', 'মানকি শেখ  ', 'সুলতান শেখ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(961, 2021040961, '734', '6916365264598', 'রুপসী ', 'সুলতান  শেখ ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(962, 2021040962, '735', '6916365266462', 'শহর বানু  ', 'সিরাজ আলী  ', NULL, NULL, '13', NULL, 6, '1751270417', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(963, 2021040963, '736', '6916365265271', 'জয়নাল হোসেন  ', 'হুছেন কবির  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(964, 2021040964, '737', '6916365266279', 'মনোয়ারা বেগম ', 'আঃ জলিল  ', NULL, NULL, '13', NULL, 6, '1923886969', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(965, 2021040965, '738', '6916365256451', 'রুপচান  ', 'ফেলাল উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(966, 2021040966, '739', '6916365263833', 'আয়মলা বেগম  ', 'বাছেদ আলী  ', NULL, NULL, '13', NULL, 6, '1535005388', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(967, 2021040967, '740', '6916365268952', 'আছমা বেগম  ', 'মহি উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(968, 2021040968, '741', '6916365269662', 'শাহিন আলী  ', 'সুরুজ মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(969, 2021040969, '742', '6916365263517', 'সাইফুল ইসলাম  ', 'সিরাজুল ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(970, 2021040970, '743', '6916365264611', 'নুরুল আমি  ', 'সিরাজুল  ইসলাম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(971, 2021040971, '744', '6916365264593', 'লুৎফর রহমান ', 'নুরুল আমিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(972, 2021040972, '745', '6916365264527', 'জাকির হোসেন ', 'ইউনুছ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(973, 2021040973, '746', '6916365264699', 'শফিকুল ইসলাম  ', 'ইসমাইল হোসেন ', NULL, NULL, '13', NULL, 6, '1737168216', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(974, 2021040974, '747', '6916365264533', 'মিন্টু মিয়া  ', 'সামসুল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(975, 2021040975, '748', '6916365260356', ' সেলিম মিয়া  ', 'রুহুল আমিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(976, 2021040976, '749', '6916365264516', 'ইয়াকুব আলী  ', 'ইউসুফ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(977, 2021040977, '750', '6916365260028', 'আমিন হোসেন ', 'ইব্রাহিম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(978, 2021040978, '751', '6916365264017', 'আফিয়া বেগম ', 'সুলতান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(979, 2021040979, '752', '6916365264004', 'রুস্তম আলী  ', 'আজিমুদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(980, 2021040980, '753', '6916365264033', 'নুরু মিয়া  ', 'ফজলূ মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(981, 2021040981, '754', '6916365264160', 'আবু কাশেম  ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(982, 2021040982, '755', '6916365264042', 'হাছেন আলী ', 'সামসুল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(983, 2021040983, '756', '6916365260027', 'হারিছ মিয়া ', ' মোজাফ্ফর ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(984, 2021040984, '757', '6916365263972', 'ছালেহা বেগম  ', 'জাহের আলী ', NULL, NULL, '13', NULL, 6, '1966150942', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(985, 2021040985, '758', '6916365263990', 'ফরিদা বেগম  ', 'নান্নু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(986, 2021040986, '759', '6916365263956', 'সুরুজ আলী ', 'কফিল হোসেন  ', NULL, NULL, '13', NULL, 6, '1728754275', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(987, 2021040987, '760', '6916365267429', 'মাজেদা  বেগম ', 'মহর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(988, 2021040988, '761', '6916365263289', 'নুরুল আমিন   ', 'তুরাব আলী  ', NULL, NULL, '13', NULL, 6, '1770826563', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(989, 2021040989, '762', '6916365261636', 'মোঃ মান্নাফ  ', 'আঃ হামিদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(990, 2021040990, '763', '6916365265793', 'জাহানারা বেগম  ', 'আঃ হাই  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(991, 2021040991, '764', '6916365266240', 'জামাল হোসেন ', 'সাদেক আলী  ', NULL, NULL, '13', NULL, 6, '1914905959', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(992, 2021040992, '765', '6916365263436', ' শেফালী বেগম  ', 'মাহমুদ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(993, 2021040993, '766', '6916365269736', 'ছাত্তার হোসেন  ', 'আরজু  মিয়া ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(994, 2021040994, '767', '6916365267462', ' রেহেনা  বেগম  ', 'ওমর ফারুখ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(995, 2021040995, '768', '6916365261452', 'মজিনা  বেগম  ', 'আজিজুল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(996, 2021040996, '769', '6916365269882', 'জয়নাল   ', 'ওহাব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(997, 2021040997, '770', '6916365261452', 'শাহাদত হোসেন ', 'আমির হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(998, 2021040998, '771', '6916365268985', 'শাহিন আলম  ', 'আছের আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(999, 2021040999, '772', '6916365268989', 'শাজাহান আলী ', 'আছের আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1000, 2021041000, '773', '6916365262899', 'ময়েন উদ্দিন  ', 'মমিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1001, 2021041001, '774', '6916365263698', 'রাহাদ আলী ', 'আপেল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1002, 2021041002, '775', '6916365267393', 'মনতাজ আলী  ', 'হারিজ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1003, 2021041003, '776', '6916365268982', 'শামিমা  ', 'কাজল হোসেন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1004, 2021041004, '777', '6916365269782', 'আবুল হোসেন  ', 'বাক্কার ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1005, 2021041005, '778', '6916365265383', 'বাদল  হোসেন  ', 'কুদ্দুস আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1006, 2021041006, '779', '6916365269873', 'রাশেদ আলী  ', 'রহমান  আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1007, 2021041007, '780', '6916365260080', 'কুবাদ আলী  ', 'আফাজ উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1008, 2021041008, '781', '6916365266002', 'মরিয়ম বেগম  ', 'কুদ্দুস আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1009, 2021041009, '782', '6916365260898', 'আরজান ', 'আলীম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1010, 2021041010, '783', '6916365268009', 'লতিফ আলী ', 'আলেকজান  ', NULL, NULL, '13', NULL, 6, '1745613114', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1011, 2021041011, '784', '6916365269882', 'মকুল হোসেন ', 'নিজাম আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1012, 2021041012, '785', '6916365260004', 'মরিয়ম বেগম  ', 'খুকিমন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1013, 2021041013, '786', '6916365265157', 'নুরুল ইসলাম  ', 'ময়েজ উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1014, 2021041014, '787', '6916365263738', 'আবু ছাইদ  ', 'দুলভ কবিরাজ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1015, 2021041015, '788', '6916365263745', 'ফজিলা  ', 'মনির হোসন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1016, 2021041016, '789', '6916365263744', 'শাহাজামাল  ', 'হানিফ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1017, 2021041017, '790', '6916365263738', ' সোহরাব হোসেন  ', 'লুলহাস  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1018, 2021041018, '791', '6916365263730', 'ফরহাদ আলী  ', ' খোরশেদ আলী ', NULL, NULL, '13', NULL, 6, '1820818500', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1019, 2021041019, '792', '6916365263743', 'মুক্তার হোসেন  ', 'জুলহাস শেখ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1020, 2021041020, '793', '6916365260093', 'কামাল উদ্দিন  ', 'মজিদ ফকির ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1021, 2021041021, '794', '6916365263746', 'আনোয়ার হোসেন ', 'সামসুদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1022, 2021041022, '795', '6916365266380', 'আব্দুল মকিম  ', 'আঃ মজিদ  ', NULL, NULL, '13', NULL, 6, '1790257009', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1023, 2021041023, '796', '6916365260004', 'আঃ সালাম ', 'আকবর আলী ', NULL, NULL, '13', NULL, 6, '1721244868', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1024, 2021041024, '797', '6916365265684', 'মাসুদ রানা  ', 'মান্নান আলী ', NULL, NULL, '13', NULL, 6, '1796033864', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1025, 2021041025, '798', '6916365260352', 'ফাহিমা  ', 'মজিবর রহমান  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1026, 2021041026, '799', '6916365265551', 'আল মেহের ', 'মকিম আলী  ', NULL, NULL, '13', NULL, 6, '1621878393', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1027, 2021041027, '800', '6916365267757', ' রেহাজ উদ্দিন  ', 'কমর উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ  ', 'দিন মজুর', '', 1),
(1028, 2021041028, '801', '6916365265510', 'ইব্রাহিম হোসেন  ', 'রজব আলী  ', NULL, NULL, '13', NULL, 6, '1797136720', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1029, 2021041029, '802', '6916365265485', 'রাফিয়া বেগম ', 'আব্দুর রহমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1030, 2021041030, '803', '6916365265519', 'আনোয়ারা  ', 'রিয়াজ উদ্দিন  ‘', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1031, 2021041031, '804', '6916365260034', 'কামরুন্নাহার  ', 'লিয়াকত আলী  ', NULL, NULL, '13', NULL, 6, '1921801310', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1032, 2021041032, '805', '6916365265567', ' গোলাপ মিয়া  ', 'নায়েব আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1033, 2021041033, '806', '6916365265577', 'ঝুুমুর আক্তার  ', ' তোতা মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1034, 2021041034, '807', '6916365265578', 'জাহের আলী ', 'আইয়ুব  আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1035, 2021041035, '808', '6916365265575', 'বাবলূ মিয়া ', 'বারিক হোসেন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1036, 2021041036, '809', '6916365265597', 'আবুল কাশেম  ', ' জোহুরা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1037, 2021041037, '810', '6916365265684', 'শিপন আলী ', 'সাফি  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1038, 2021041038, '811', '6916365265644', 'আঃ জব্বার ', 'হাই শিকদার  ', NULL, NULL, '13', NULL, 6, '1735147836', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1039, 2021041039, '812', '6916365265684', 'সুফিয়া  বেগম  ', 'জিন্নত আলী  ', NULL, NULL, '13', NULL, 6, '1962536530', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1040, 2021041040, '813', '6916365265661', 'আমজাদ হোসেন ', ' মোতালিব হোসেন  ', NULL, NULL, '13', NULL, 6, '1745593571', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(1041, 2021041041, '814', '6916365265679', 'মানিক হোসেন  ', ' মোতালিব ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1042, 2021041042, '815', '6916365265578', 'অলি মিয়া  ', 'মালেক ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1043, 2021041043, '816', '6916365265141', 'ইন্তাজ  আলী  ', 'রুস্তম  আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1044, 2021041044, '817', '6916365265152', 'আব্দুল বারিক ', 'বাদসা গাজী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1045, 2021041045, '818', '6916365265144', 'ছ্ইাফুল ইসলাম ', 'আঃ বারিক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1046, 2021041046, '819', '6916365265138', 'রব মিয়া ', 'ফালু গাজী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1047, 2021041047, '820', '6916365265137', 'শিল্পী বেগম ', 'আঃ আলীম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(1048, 2021041048, '821', '6916365264931', 'সালেক মিয়া ', 'সিরাজ আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1049, 2021041049, '822', '6916365264858', ' হেলেনা বেগম  ', 'তাইজুল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1050, 2021041050, '823', '6916365264894', 'আনজুয়ারা  ', 'আঃ গফুর  ', NULL, NULL, '13', NULL, 6, '1933983695', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1051, 2021041051, '824', '6916365266090', 'ইউনুছ আলী  ', 'সামসুল আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1052, 2021041052, '825', '6916365264911', 'ফিরোজা  বেগম  ', 'বকুল সরকার  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1053, 2021041053, '826', '6916365266095', ' মোবারক হোসেন  ', 'রইছ আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1054, 2021041054, '827', '6916365264859', 'আফেজান ', 'হানিফ মোল্লা  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1055, 2021041055, '828', '6916365265003', 'জামেনা বেগম  ', 'আরাফাত আলী  ', NULL, NULL, '13', NULL, 6, '1791325537', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1056, 2021041056, '829', '6916365264639', 'আমির হোসেন ', ' ফেলাল  উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1057, 2021041057, '830', '6916365265053', 'তাইজুল ইসলাম ', 'কুয়াত আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1058, 2021041058, '831', '6916365264962', 'জাকির হোসেন ', 'কাশেম আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1059, 2021041059, '832', '6916365265071', 'রমিদ ', 'জয়নুদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1060, 2021041060, '833', '6916365265380', 'আলাউদ্দিন  ', 'মসলেম উদ্দি ন ', NULL, NULL, '13', NULL, 6, '1745613114', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1061, 2021041061, '834', '6916365264955', 'আঃ আলীম ', 'বাহার উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1062, 2021041062, '835', '6916365260002', 'অলেক মিয়া  ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1063, 2021041063, '836', '6916365264924', 'ইসমাইল হোসেন  ', 'জলিল হোসেন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1064, 2021041064, '837', '6916365261403', 'কালাম হোসেন ', 'কাশেম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1065, 2021041065, '838', '6916365265768', 'হান্নান ', 'আদম আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1066, 2021041066, '839', '6916365265810', 'মুনছুর আলী  ', 'মসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1067, 2021041067, '840', '6916365265810', 'ময়েন উদ্দিন  ', ' সৈয়মুদ্দিন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1068, 2021041068, '841', '6916365260181', 'ফাতেমা ', 'আজাহান শেখ  ', NULL, NULL, '13', NULL, 6, '1820818500', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1069, 2021041069, '842', '6916365265813', 'জাকির হোসেন ', 'আঃ রাজ্জাক ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1070, 2021041070, '843', '6916365265966', 'মবিদুল  ', 'মসলেম হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1071, 2021041071, '844', '6916365266945', 'দুলাল হোসেন  ', 'গফর হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1072, 2021041072, '845', '6916365265924', 'সুকিত আলী  ', ' মোজাহার ', NULL, NULL, '13', NULL, 6, '1790257009', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1073, 2021041073, '846', '6916365265954', 'আসকান আলী  ', ' সৈইমুদ্দিন  ', NULL, NULL, '13', NULL, 6, '1721244868', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1074, 2021041074, '847', '6916365265980', 'আব্দুল হক ', 'কুদরত আলী ', NULL, NULL, '13', NULL, 6, '1796033864', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1075, 2021041075, '848', '6916365266087', 'লুৎফর আলী ', 'মজিবর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1076, 2021041076, '849', '6916365265123', 'হযরত আলী  ', 'রহমত উল্লা  ', NULL, NULL, '13', NULL, 6, '1621878393', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1077, 2021041077, '850', '6916365265132', 'আব্দুল মালেক ', 'সিরাজুল  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1078, 2021041078, '851', '6916365265946', 'জিয়াইর রহমান ', 'কিসমত তুল্লা  ', NULL, NULL, '13', NULL, 6, '1797136720', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1079, 2021041079, '852', '6916365265781', 'বাছেদ  হোসেন ', ' লোকমান ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1080, 2021041080, '853', '6916365265991', 'আনোয়ারা  ', 'রফাত  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(1081, 2021041081, '854', '6916365265997', 'নুরজাহান ', 'রহমাত আলী ', NULL, NULL, '13', NULL, 6, '1921801310', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা ', 'দিন মজুর', '', 1),
(1082, 2021041082, '855', '6916365265824', 'আবুল  কাশেম ', 'গরিবুল্লা ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1083, 2021041083, '856', '6916365269137', 'আলাউদ্দিন  ', 'খলিল হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1084, 2021041084, '857', '6916365265488', 'দুখিনী  ', 'আফাজ উদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1085, 2021041085, '858', '6916365265211', 'সফুরা ', 'আবু বক্কর  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1086, 2021041086, '859', '6916365265534', 'হেলেনা  বেগম ', 'চুনু মিয়া  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1087, 2021041087, '860', '6916365267801', 'শরিফুল ', 'ফরিদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1088, 2021041088, '861', '6916365265348', 'ফেরদৌসী  ', 'আসাদ মিয়া  ', NULL, NULL, '13', NULL, 6, '1735147836', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1089, 2021041089, '862', '6916365262873', 'বাবলূ  ', 'কিসমত আলী  ', NULL, NULL, '13', NULL, 6, '1962536530', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1090, 2021041090, '863', '6916365263289', 'শুকুর আলী  ', 'ফেলাল উদ্দিন  ', NULL, NULL, '13', NULL, 6, '1745593571', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1091, 2021041091, '864', '6916365263289', 'বাবলূ ', 'রইস আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1092, 2021041092, '865', '6916365261409', 'লিপন ', 'কবির হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1093, 2021041093, '866', '6916365268246', 'বৃষ্টি  ', 'শাহালম ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1094, 2021041094, '867', '6916365262029', 'নজরুল ', 'আঃ লতিফ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1095, 2021041095, '868', '6916365265686', 'সুরুজ মিয়া  ', ' তোফাজ্বল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1096, 2021041096, '869', '6916365265698', 'হাজেরা ', 'সামনুল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(1097, 2021041097, '870', '6916365268660', 'ছালামত আলী', 'ছাবর আলী  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1098, 2021041098, '871', '6916365265609', 'ছালাম মিয়া  ', 'আমিন উদ্দিন ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1099, 2021041099, '872', '6916365265783', 'আক্কাছ আলী  ', 'ওমর আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া    ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1100, 2021041100, '873', '6916365266892', 'শহিদুল ', 'তাজেল ', NULL, NULL, '13', NULL, 6, '1933983695', NULL, NULL, NULL, 'ইব্রাহিম পুর     ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1101, 2021041101, '874', '6916365265736', 'কুদ্দুস আলী  ', 'আবু ছায়িদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'পার আটঘড়িয়া  ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1102, 2021041102, '875', '6916365264385', 'কামাল ', 'হাসেম আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1103, 2021041103, '876', '6916365264280', 'মর্জিনা বেগম ', 'কামাল ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা  ', 'দিন মজুর', '', 1),
(1104, 2021041104, '877', '6916365260416', ' দেলোয়ার ', 'মিজানুর হোসেন  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1105, 2021041105, '878', '6916365264323', 'শরফত আলী  ', 'রহম আলী  ', NULL, NULL, '13', NULL, 6, '1791325537', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1106, 2021041106, '879', '6916365264395', 'হাজেরা  ', 'আঃ রশিদ  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1107, 2021041107, '880', '6916365264309', 'রাবেয়া  ', 'মালেক  ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'মহিলা', 'দিন মজুর', '', 1),
(1108, 2021041108, '881', '6916365264227', 'আঃ আলিম  ', 'তুরব আলী ', NULL, NULL, '13', NULL, 6, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'মোঃ অহিদ', 'পুরুষ', 'দিন মজুর', '', 1),
(1109, 2021041109, '932', '6916365267620', ' শিউলি বেগম ', ' ফরিদ হোসেন ', NULL, NULL, '13', NULL, 2, '1733265927', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1110, 2021041110, '933', '6916365267223', 'হারিজা', 'রাকিব', NULL, NULL, '13', NULL, 2, '1728173290', NULL, NULL, NULL, 'কাঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1111, 2021041111, '৯৩৪*', '6916365260273', 'সেলিম রেজা  ', 'মজিবর রহমান ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'পার আটঘড়িয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1112, 2021041112, '935', '6916365260244', 'মোঃ বাবু মিয়া ', 'আঃ রহিম ', NULL, NULL, '13', NULL, 2, '1736531466', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1113, 2021041113, '936', '6916365267251', ' করফুন নেছা ', 'বাবর আলী ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1114, 2021041114, '937', '6916365267251', 'মোঃ নুরুন্নাহার ', 'আঃ কাদের', NULL, NULL, '13', NULL, 2, '1773194517', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1115, 2021041115, '938', '6916365000275', 'মোছাঃ  শাহীনা ', 'কামরূল ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1116, 2021041116, '939', '6916365267306', 'মোঃ নজরুল ', ' কেতাব আলী মোল্লা ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1117, 2021041117, '940', '6916365266608', 'মোঃ সিরাজুল ', ' কেতাব আলী মোল্লা ', NULL, NULL, '13', NULL, 2, '1729320734', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1118, 2021041118, '941', '6916365266710', 'নুরুল ইসলাম ', ' কেতাব আলী মোল্লা ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1119, 2021041119, '942', '6916365266770', 'মোছাঃ সীমা ', 'বারেক তালুকদার', NULL, NULL, '13', NULL, 2, '1742721756', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1120, 2021041120, '943', '6916365267327', 'মোঃ ইয়াকুব ', 'সিরাজ আলীি ', NULL, NULL, '13', NULL, 2, '1735267261', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1121, 2021041121, '944', '6916365267620', 'আঃ রহমান মোল্লা', 'আঃ জলিল ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1122, 2021041122, '945', '6916365267223', 'মোঃ মুনসুর ', 'নুরুল ইসলাম ', NULL, NULL, '13', NULL, 2, '1770652050', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1123, 2021041123, '946', '6916365260273', 'মোঃ রবিউল ', 'জয়নাল মোল্লা ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1124, 2021041124, '947', '6916365260244', 'মোঃ সাইফুল ', 'ইউনুস ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1125, 2021041125, '948', '6916365267251', 'মোঃ শেখ ফরিদ ', 'মৃত মোহাম্মদ ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1126, 2021041126, '949', '6916365267251', 'জাহাঙ্গীর মোল্লা ', 'জলিল মোল্লা ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1127, 2021041127, '950', '6916365000275', 'মোঃ বিল্লাল ', ' মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 2, '1754094641', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1128, 2021041128, '951', '6916365267306', ' আনোয়ার হোসেন ', 'মারফত আলীি ', NULL, NULL, '13', NULL, 2, '1786677232', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1129, 2021041129, '952', '6916365266608', 'মোঃ মোতালেব ', 'নুরু ইসলাম ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1130, 2021041130, '953', '6916365266710', 'মোঃ জাহানারা ', 'আমজাদ হোসেন ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1131, 2021041131, '954', '6916365266770', 'আলমগীর হোসেন ', 'মসলেম উদ্দিন', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1132, 2021041132, '955', '6916365267327', ' মসলেম উদ্দিন', 'কলিম উদ্দিন', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1133, 2021041133, '956', '6916365267620', ' রহিমা বেগম', 'আবদুল ', NULL, NULL, '13', NULL, 2, '1706857875', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1134, 2021041134, '957', '6916365267223', 'মোঃ আলিম ', 'আজিজ ', NULL, NULL, '13', NULL, 2, '1780481732', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1135, 2021041135, '958', '6916365260273', 'মোঃ জয়নাল  ', 'আয়ত আলী ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1136, 2021041136, '959', '6916365260244', 'মোঃ হযরত আলী ', 'নয়ন ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1137, 2021041137, '960', '6916365267251', 'মোঃ আজিম', 'ফজলু ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1138, 2021041138, '961', '6916365267251', 'আফিয়া', 'আজিজ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1139, 2021041139, '962', '6916365000275', 'মোঃ ওসমান গনী', 'আঃ কাদের ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1140, 2021041140, '963', '6916365267306', 'মোঃ কাদের ', ' সোনা মিয়া ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1141, 2021041141, '964', '6916365266608', 'মোঃ হনুফা ', 'বিল্লাল ', NULL, NULL, '13', NULL, 2, '1765176496', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1142, 2021041142, '৯৬৫*', '6916365270582', 'সাজেদা খাতুন  ', 'গহের আলী  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1143, 2021041143, '966', '6916365266770', 'মোঃ মন্টু মিয়া ', 'ইউনুস আলীি ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1144, 2021041144, '967', '6916365267327', 'মোঃ নজরুল ', 'সালাম ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1145, 2021041145, '968', '6916365267620', 'মোঃ নাসির ', 'হযরত ', NULL, NULL, '13', NULL, 2, '1966152725', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1146, 2021041146, '969', '6916365267223', 'মোঃ আঃ হোসেন ', 'আশাব উদ্দিন ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1147, 2021041147, '970', '6916365260273', 'মোঃ হযরত আলী ', 'আঃ জব্বার ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1148, 2021041148, '971', '6916365260244', 'মকবুল হোসেন ', 'জয়নাল ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1149, 2021041149, '972', '6916365267251', 'মোছাঃ শাহেরা ', 'জয়নাল ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1150, 2021041150, '973', '6916365267251', 'মোঃ নুরু মিয়া ', 'আফতাব উদ্দিন ', NULL, NULL, '13', NULL, 2, '1731223374', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1151, 2021041151, '974', '6916365000275', 'মোঃ সামাদ ', 'আফতাব উদ্দিন ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1152, 2021041152, '975', '6916365267306', 'মোঃ ফজর আলী ', 'নওয়াব আলী ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1153, 2021041153, '976', '6916365266608', 'মোঃ জামাল ', 'ইদ্রিস ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1154, 2021041154, '977', '6916365266710', 'মোঃ রবিউল ', 'আলাল উদ্দিন ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1155, 2021041155, '978', '6916365267620', 'মোঃ ওমর আলী ', 'শহিদুল্যা ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1156, 2021041156, '979', '6916365267223', 'মোঃ জয়নাল', 'রইচ মিয়া ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1157, 2021041157, '980', '6916365260273', 'মোঃ শরিফ মিয়া ', 'কুদ্দুস ', NULL, NULL, '13', NULL, 2, '1770652045', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1158, 2021041158, '981', '6916365260244', 'মোঃ কালাম ', 'খালেক ', NULL, NULL, '13', NULL, 2, '1959008531', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1159, 2021041159, '982', '6916365267251', 'মোঃ আঃ বাসার', 'আঃ সাইদ ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1160, 2021041160, '983', '6916365267251', 'মোঃ শফিক ', 'বাসার ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1161, 2021041161, '984', '6916365000275', 'মোছাঃ বিউটি ', 'বজলুর রহমান ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1162, 2021041162, '985', '6916365267011', 'মোঃ ফয়েজ ', 'আঃ হাসিম  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1163, 2021041163, '986', '6916365267620', 'নুরুল ইসলাম ', 'ফয়েজ উদ্দিন  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1164, 2021041164, '987', '6916365267328', 'আলী হোসেন   ', 'জয়নাল  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1165, 2021041165, '988', '6916365260273', 'কামাল হেসেন ', ' মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1166, 2021041166, '989', '6916365260244', 'ইউসুফ আলী  ', 'সামসুল আলম  ', NULL, NULL, '13', NULL, 2, '1936241531', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1167, 2021041167, '990', '6916365267251', 'আলীম হোসেন  ', 'রাজ্জাক আলী ', NULL, NULL, '13', NULL, 2, '1731948705', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1168, 2021041168, '991', '6916365267370', 'আনোয়ারা    ', 'হান্নান মিয়া ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1169, 2021041169, '992', '6916365000275', 'ফারুখ হোসেন ', 'সাত্তার  হোসেন  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1170, 2021041170, '993', '6916365268738', 'হাসিনা ', 'মহরম  আলী  ', NULL, NULL, '13', NULL, 2, '1932726159', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1171, 2021041171, '994', '6916365266717', 'শাখাওয়াত  ', 'ওহাব আলী  ', NULL, NULL, '13', NULL, 2, '1916663851', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1172, 2021041172, '995', '6916365266710', 'ওয়াজেদ আলী  ', 'আহসান আলী ', NULL, NULL, '13', NULL, 2, '1828236944', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1173, 2021041173, '996', '6916365266770', 'জাহাঙ্গীর  হোসেন  ', 'আওয়াল  ', NULL, NULL, '13', NULL, 2, '1957691996', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1174, 2021041174, '৯৯৭*', '6916365000040', 'নাছিমা খাতুন ', 'সামসুল হোসেন  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1175, 2021041175, '998', '6916365266614', 'আহাম্মদ আলী  ', 'সদর উদ্দিন  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1176, 2021041176, '999', '6916365266314', 'সুখি বেগম  ', 'সিরাজুল ইসলাম ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1177, 2021041177, '1000', '6916365266250', 'জয়নাল ', 'সুরুজ মিয়া  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1178, 2021041178, '1001', '6916365267014', ' মোছাঃ এরন', 'ফজলুর রহমান  ', NULL, NULL, '13', NULL, 2, '1774786649', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1179, 2021041179, '১০০২*', '6916365266748', 'শামসুল হক ', 'রফিক মিয়া  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1180, 2021041180, '1003', '6916365266600', 'নুরুল হক ', 'ইসমাইল  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1181, 2021041181, '1004', '6916365267111', 'হযরত আলী  ', 'কাদের শেখ  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1182, 2021041182, '1005', '6916365266245', 'বাতেন আলী  ', 'ওয়াজেদ আলী  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1183, 2021041183, '1006', '6916365266332', 'নুরুর হক  ', 'হযরত আলী ', NULL, NULL, '13', NULL, 2, '1710842227', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1184, 2021041184, '1007', '6916365266402', ' গোলাম মোস্তফা  ', 'কাদির  ', NULL, NULL, '13', NULL, 2, '1793853783', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1185, 2021041185, '1008', '6916365266367', 'নুুরুল ইসলাম ', 'মহের আলী ', NULL, NULL, '13', NULL, 2, '1829420853', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1186, 2021041186, '1009', '6916365267136', 'আফিয়া ', 'সাদেক আলী  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1187, 2021041187, '1010', '6916365267143', 'আঃ রহিম ', 'জাহের আলী  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1188, 2021041188, '1011', '6916365266992', 'মজিবর রহমান ', 'রহিম  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1189, 2021041189, '1012', '6916365260123', 'নায়েব আলী  ', 'দরাদ আলী ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1190, 2021041190, '1013', '6916365267188', 'নুরুর ইসলাম  ', 'সিরাজ মিয়া  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1191, 2021041191, '1014', '6916365266700', 'রইছ উদ্দিন  ', 'জলিল  ', NULL, NULL, '13', NULL, 2, '1740872070', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1192, 2021041192, '১০১৫*', '6916365267188', 'জাহেদা খাতুন  ', 'হাসান আলী  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1193, 2021041193, '1016', '6916365260279', 'সফিকুল  ', 'তাইজুল ইসলাম ', NULL, NULL, '13', NULL, 2, '1750657691', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1194, 2021041194, '1017', '6916365266638', 'ইকবাল হোসেন  ', 'মনজুর আহমেদ   ', NULL, NULL, '13', NULL, 2, '1757999626', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1195, 2021041195, '1018', '6916365266611', 'মঞ্জুর আহমেদ  ', 'ইসমাইল  ', NULL, NULL, '13', NULL, 2, '1756999626', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1196, 2021041196, '1019', '6916365266803', 'সুলাইমান  ', 'আঃ মালেক হোসেন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1197, 2021041197, '1020', '6916365266934', 'আঃ ওহাব  ', 'শাফির উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1198, 2021041198, '1021', '6916365266896', 'সুমি  ', ' মোস্তফা  ', NULL, NULL, '13', NULL, 2, '1739413196', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1199, 2021041199, '1022', '6916365266862', 'ইসমাইল ', 'ছাফির উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1200, 2021041200, '1023', '6916365000089', 'জুনাইদ ', 'তাইজুর ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1201, 2021041201, '1024', '6916365267741', 'জাহেদা  ', ' লোকমান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1202, 2021041202, '1025', '6916365267634', 'ফারুখ হোসেন  ', 'আঃ কাদের  ', NULL, NULL, '13', NULL, 2, '1778031453', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1203, 2021041203, '1026', '6916365267652', 'ফাতেমা  ', 'নওসের আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1204, 2021041204, '1027', '6916365267555', 'কহিনুর খাতুন ', 'কাদের আলী  ', NULL, NULL, '13', NULL, 2, '1796682597', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিরা  ', 'দিন মজুর', '', 1),
(1205, 2021041205, '1028', '6916365000120', 'শাহানারা  ', 'বাবলু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1206, 2021041206, '1029', '6916365267456', 'ওমর আলী  ', 'আমির আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1207, 2021041207, '1030', '6916365267478', 'শাহিদুল ইসলাম  ', 'সাদেক আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1208, 2021041208, '1031', '6916365267804', 'জয়নাল ', 'লতিফ মৃধা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1209, 2021041209, '1032', '6916365267628', 'হাজেরা  ', 'কালাম ', NULL, NULL, '13', NULL, 2, '1728173290', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1210, 2021041210, '1033', '6916365267064', 'ফজলুর রহমান  ', 'কালূ মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1211, 2021041211, '1034', '6916365267759', 'ফজলুর রহমান ', 'ওসমান গনি  ', NULL, NULL, '13', NULL, 2, '1767413220', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(1212, 2021041212, '1035', '6916365267545', 'নুরুল ইসলাম  ', 'লাল মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1213, 2021041213, '1036', '6916365266165', 'আবুল হোসেন  ', 'আঃ হালিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1214, 2021041214, '1037', '6916365260184', 'বাছেদ হোসেন ', 'খালেক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1215, 2021041215, '1038', '6916365267636', 'কাদের হোসেন ', 'তালেব ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1216, 2021041216, '1039', '6916365267517', ' মোজাম্মেল ', 'চান মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1217, 2021041217, '1040', '6916365267670', 'দুলাল হোসেন ', 'ভাষান মির  ', NULL, NULL, '13', NULL, 2, '173839679', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1218, 2021041218, '1041', '6916365267971', 'শফিকুল  ', 'ছাত্তার ভুইয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1219, 2021041219, '1042', '6916365267748', 'আঃ সালাম ', 'সোনা মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1220, 2021041220, '1043', '6916365267444', 'ফারুখ মিয়া ', 'নিজাম উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1221, 2021041221, '1044', '6916365267051', 'মনির হোসেন ', 'জয়নাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1222, 2021041222, '1045', '6916365267427', 'হোসনেয়ারা ', 'আবুল কালাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1223, 2021041223, '1046', '6916365267413', 'কুলছুম  ', 'আরিজ মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1224, 2021041224, '1047', '6916365267695', 'নজরুল ইসলাম ', 'আবুল হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1225, 2021041225, '1048', '6916365267086', 'সাইফুল ইসলাম  ', 'ছাত্তার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1226, 2021041226, '1049', '6916365267050', 'নুর হোসেন ', 'জয়নাল হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1227, 2021041227, '1050', '6916365267987', 'খাদেজা ', 'হারুন মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1228, 2021041228, '1051', '6916365267549', 'ফরিদ মিয়া  ', 'নুরুর ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1229, 2021041229, '1052', '6916365000001', 'ফুলভানু  ', 'আঃ রহমান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1230, 2021041230, '1053', '6916365267531', 'সাদেক আলী ', 'রইছ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1231, 2021041231, '1210', '2834333235', ' রোয়াজান ', 'আঃ রহমান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1232, 2021041232, '1211', '6916365270839', 'মোঃ  কিম্মত ', 'জামাল ', NULL, NULL, '13', NULL, 2, '1763140272', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1233, 2021041233, '1212', '6916365270845', 'মোঃ হাম্মত ', 'জামাল ', NULL, NULL, '13', NULL, 2, '174195005', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1234, 2021041234, '1213', '9134334516', 'নারগিছ খাতুন ', 'নাছির উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1235, 2021041235, '1214', '6916365270967', 'মোঃ হেলাল ', 'হাকিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1236, 2021041236, '1215', '6916365270821', 'মোঃ হালিমা', 'টছমুদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1237, 2021041237, '1216', '6916365270986', 'সাইদুল  ইসলাম  ', ' মোস্তফা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1238, 2021041238, '1217', '6916365270631', 'মোঃ জমশেদ ', 'আঃ রাজ্জাক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1239, 2021041239, '1218', '6916365270965', 'মোঃ কাম্মাদ ', 'আঃ মোল্লা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1240, 2021041240, '1219', '6916365270874', 'ইলিয়াছ ', 'আঃ রাজ্জাক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ  ', 'দিন মজুর', '', 1),
(1241, 2021041241, '1220', '6916365270995', 'মোঃ রমজেদ ', ' মোঃ দিদার আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1242, 2021041242, '1221', '3284343468', 'শামিম আলী ', 'দিদার আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1243, 2021041243, '1222', '6916365270593', 'মোছাঃ  নাজমা ', 'তালেব ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1244, 2021041244, '1223', '6916365270490', 'জোসনা বেগম  ', 'আঃ করিম  মোল্লা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1245, 2021041245, '1224', '6916365270600', 'মোছাঃ সাজেদা ', 'শুকচান ডাঃ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1246, 2021041246, '1225', '3734347614', 'রাবিযা খাতুন ', 'জহুরুল ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1247, 2021041247, '1226', '6916365270505', 'মোঃ কাদের ', 'নায়েব আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1248, 2021041248, '1227', '6916365270651', 'মোঃ খোদাবক্রা', 'আমজাদ ', NULL, NULL, '13', NULL, 2, '1759977997', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1249, 2021041249, '1228', '6916365270585', 'মোঃ মিন্টু ', 'খাতের আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1250, 2021041250, '1229', '6916365270503', 'মোছাঃ  শাহানারা ', 'এছাহাক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1251, 2021041251, '1230', '6916365270502', 'মোঃ রাহাত ', ' চেরু', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1252, 2021041252, '1231', '6916365270582', 'মোঃ ছায়েত ', ' চেরু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1253, 2021041253, '1232', '6916365000001', 'ছাকিয়া ', 'আবু বক্কর  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1254, 2021041254, '1233', '6916365270786', 'মোঃ আসরাফুল ', 'দবির ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1255, 2021041255, '1234', '6916365270640', 'মোঃ আঃ হোসেন', 'দিদার আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1256, 2021041256, '1235', '6916365270867', 'মোঃ আঃ জলিল ', 'আকবর', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1257, 2021041257, '1236', '6916365270997', 'মোঃ শমসের ', 'রাজ্জাক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1258, 2021041258, '1237', '6916365270862', 'মোঃ জাবেদ ', 'ছাদের ', NULL, NULL, '13', NULL, 2, '1755336417', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1259, 2021041259, '1238', '6916365270804', 'মোঃ মুজাম্মেল ', ' ফেলু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1260, 2021041260, '1239', '6916365270087', 'মোছাঃ আকলিমা', 'ছলিম উদ্দিন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1261, 2021041261, '1240', '6916365270054', 'মোঃ জাহেদ আলী ', ' মোহাম্মদ আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1262, 2021041262, '1241', '6916365270068', 'মোঃ শুকচান ', 'শামসুল হক ', NULL, NULL, '13', NULL, 2, '1760860709', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1263, 2021041263, '1242', '6916365270999', 'মোঃ মাসুদ রানা ', 'নাসু মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1264, 2021041264, '1243', '6916365270040', 'মোঃ রফিক ', 'আজিমুদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1265, 2021041265, '1244', '6916365270260', 'মোঃ রফিক ', 'আলী আকবর', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1266, 2021041266, '1245', '69163652708', 'মোঃ সূরুজ  আলী ', 'বাবর আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1267, 2021041267, '1246', '691636527755', 'হায়তনা ', 'মুকুল আলী', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1268, 2021041268, '1247', '6916365270754', 'মোঃ রায়হান ', 'আসরাফ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1269, 2021041269, '1248', '6916365270711', 'মোছাঃ ছামেনা ', 'আকবর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1270, 2021041270, '1249', '6916365270779', 'মোঃ আফসার ', ' মোহাম্মদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1271, 2021041271, '1250', '6916365270099', 'মোঃ আলম ', 'মুছারুদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1272, 2021041272, '1251', '6916365270092', 'মোঃ জেহের আলী ', 'আমির উদ্দিন', NULL, NULL, '13', NULL, 2, '1740839304', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1273, 2021041273, '1252', '6916365270163', 'মোঃ নবীর ', 'আদম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1274, 2021041274, '1253', '6916365270296', 'মোঃ শাহিন ', 'রমজান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1275, 2021041275, '1254', '6916365270173', 'চান ভানু   ', 'আকালু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1276, 2021041276, '1255', '6916365270145', 'মোঃ তাজেম ', 'জপিনি ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1277, 2021041277, '1256', '6916365270101', 'মোঃ আনার ', 'কায়েম উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1278, 2021041278, '1257', '6916365270084', 'মোঃ আশরাফুল ', ' সোবাহান', NULL, NULL, '13', NULL, 2, '1774452295', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1279, 2021041279, '1258', '6916365270662', 'মোঃ হারুন ', 'মকবুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1280, 2021041280, '1259', '6916365270264', 'ছামিয়া ', 'বাদসা মন্ডল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1281, 2021041281, '1260', '6916365270300', 'আনোয়ারা ', 'মকছেদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1282, 2021041282, '1261', '4207715261', 'জিল্লুর রহমান  ', 'বরকতুল্লা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1283, 2021041283, '1262', '6916365270849', 'মোঃ রসূল ', 'আব্বাছ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1284, 2021041284, '1263', '6916365270545', 'মনোয়ারা ', 'কামরুল ইসলাম  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1285, 2021041285, '1264', '6916365270056', 'মোঃ আয়নাল ', ' খেরু', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1286, 2021041286, '1265', '6916365270882', 'মোঃ সোহরাফ', 'মোহাম্মদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1287, 2021041287, '1266', '6916365270830', 'মোছাঃ  তহমিনা', ' রহিম', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1288, 2021041288, '1267', '6916365270818', 'মোঃ মনিরুল ', 'এবাদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1289, 2021041289, '1268', '6916365270837', 'মোঃ রুপচাদ ', 'খায়রুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1290, 2021041290, '1269', '6916365270816', 'মোঃ জলিল ', 'এবাদ ', NULL, NULL, '13', NULL, 2, '1760435995', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1291, 2021041291, '1270', '6916365269747', 'মোঃ জয়নাল ', 'শমসের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1292, 2021041292, '1271', '6916365269890', 'তমেজ আলী  ', 'শাজাহান  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1293, 2021041293, '1272', '6916365270876', 'মোঃ মোস্তফা ', 'হুসেন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1294, 2021041294, '1273', '6916365270903', 'মোছাঃ রহিমা', 'হানিফ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1295, 2021041295, '1274', '6916365270377', 'মোঃ আক্কাছ', 'আফছু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1296, 2021041296, '1275', '6916365270356', 'মোঃ ইউসুফ ', 'তমসের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1297, 2021041297, '1276', '6916365269934', 'আমেনা বেগম  ', 'হাসেন আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1298, 2021041298, '1277', '6916365270298', 'মোঃ শরিফুল ', ' হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1299, 2021041299, '1278', '5533946397', 'হাজু বেগম  ', 'কদ প্রাং  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1300, 2021041300, '1279', '6916365271974', 'কুলছুম বেগম  ', 'বানেছ আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1301, 2021041301, '1280', '6916365269723', 'শওকত আলী  ', 'মন্ডল মুন্সি  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1302, 2021041302, '1281', '6916365000144', 'সোবাহান আলী  ', 'বারেক আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1303, 2021041303, '1282', '6916365269738', 'কমেলা বেগম  ', 'মুনছের আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1304, 2021041304, '1283', '6916365269752', 'মোঃ মিরাজুল ', 'আতাহার ', NULL, NULL, '13', NULL, 2, '1724807727', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1305, 2021041305, '1284', '6916365270900', 'রমজান আলী  ', 'হিরু মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1306, 2021041306, '1285', '6916365269948', 'মোঃ গফুর আলী ', 'আলী নেওয়াজ ', NULL, NULL, '13', NULL, 2, '1748682358', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1307, 2021041307, '1286', '6916365269972', 'মোঃ জমশেদ ', 'তমশেদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1308, 2021041308, '১২৮৭*', '6916365269970', 'হাফিজুর রহমান  ', 'ইমান আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1309, 2021041309, '1288', '6916365269967', 'আব্দুল মোতালেব  ', 'ময়েজ উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1310, 2021041310, '1289', '6916365000310', 'খোকন মোল্লা  ', 'সাবান আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1311, 2021041311, '১২৯০*', '6916365269928', 'আশরাফুল', 'রাজন খা  ', NULL, NULL, '13', NULL, 2, 'না্ি  ', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1312, 2021041312, '1291', '6916365270904', 'দুলালী ', 'আঃ খালেক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1313, 2021041313, '1292', '6916365269785', 'মোঃ শামসুল হক ', 'ছমির', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1314, 2021041314, '1293', '6916365269781', 'মোঃ আলম মিয়া ', 'মীরজাহান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1315, 2021041315, '1294', '6916365271351', 'মফিজ উদ্দিন ', 'মসলেম উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1316, 2021041316, '1295', '6916365271451', 'আসলাম হোসেন  ', 'চলেমান  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1317, 2021041317, '1296', '6916365269913', 'খলিলুর রহমান', 'খুরশেদ ', NULL, NULL, '13', NULL, 2, '1742664946', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1318, 2021041318, '1297', '6916365269810', 'মোছাঃ রুবিনা ', 'আলম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1319, 2021041319, '1298', '6916365269809', 'মোছাঃ মরিয়ম ', 'জালাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1320, 2021041320, '1299', '6916365268927', 'মোঃ শাহিদ ', 'জাবের', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1321, 2021041321, '1300', '6916365271975', 'মোঃ হানিফ', 'মজনু', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1322, 2021041322, '1301', '6916365272056', 'মোছাঃ জোসনা', 'নজির পাগলা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1323, 2021041323, '1302', '6916365271180', 'মোঃ রহিম ', 'আখের গাইন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1324, 2021041324, '1303', '6916365271233', 'মোঃ জাহেদ', 'আফসার', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1325, 2021041325, '1304', '6916365271398', 'মোঃ কুদ্দুস ', 'আছমত ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1326, 2021041326, '1305', '6916365271274', 'মোঃ রশিদ ', 'রহিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1327, 2021041327, '1306', '6916365271173', 'মোঃ রমজান ', 'মকছেদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1328, 2021041328, '1307', '6916365271248', 'আদরী  ', 'জগদীস  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1329, 2021041329, '1308', '6916365270132', 'মোঃ রহিম', 'আফসার', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1330, 2021041330, '1309', '6916365271208', 'মোঃ রফিকুল', 'ছমির', NULL, NULL, '13', NULL, 2, '197613820', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1331, 2021041331, '1310', '6916365272062', 'মোঃ মজিবর', 'কালু শেখ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1332, 2021041332, '1311', '6916365270004', 'মোঃ ইসরাফিল', 'রহমান ', NULL, NULL, '13', NULL, 2, '1750443009', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1333, 2021041333, '1312', '6916365271450', 'মোঃ আজিজুল', 'মসলেম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1334, 2021041334, '1313', '6916365271221', 'মোঃ  মানিক', 'খবির', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1335, 2021041335, '1314', '6916365271164', 'মোঃ শফিকুল', 'সৈয়দ আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1336, 2021041336, '1315', '6916365271366', 'মোঃ মুনসুর ', 'রয়েল', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1337, 2021041337, '1316', '6916365271372', 'মোঃ জাহাঙ্গীর', 'আকবর', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1338, 2021041338, '1317', '6916365271070', 'শ্রী সয়েন', 'সঞ্চয় পাহান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1339, 2021041339, '1318', '6916365271077', 'শ্রী সুবেন', 'দাসু পাহান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1340, 2021041340, '1319', '6916365271064', 'শ্রী মাধব পাহান', 'কালী চরন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1341, 2021041341, '1320', '6916365277452', 'রব্বেল ', 'মফিজ উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1342, 2021041342, '1321', '6916365271060', 'শ্রী খিরবালা', 'রমানা', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1343, 2021041343, '1322', '6916365271393', 'বাবুল ইসলাম  ', 'শুকুর আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1344, 2021041344, '১৩২৩*', '6916365271150', 'রমজেদ হোসেন ', 'মংলা কারিগর  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1345, 2021041345, '1324', '6916365000305', 'মাজেদুল ইসলাম ', 'খবির উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1346, 2021041346, '1325', '6916365271084', 'মোঃ টিপু', 'আক্কেল   ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1347, 2021041347, '1326', '6916365271331', 'মোঃ সোহেল ', 'শুকুর আলী', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1348, 2021041348, '1327', '6916365271367', 'মোছাঃ মনোয়ারা ', 'জালাল', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1349, 2021041349, '1328', '6916365265213', 'আব্দুল ওহাব  ', 'কাজেম মোল্লা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1350, 2021041350, '1329', '6916365271098', 'মহরানী ', 'অশ্বনীকান্ত ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1351, 2021041351, '1330', '6916365271559', 'নরুল ইসলাম', 'দরবেশ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1352, 2021041352, '1331', '6916365271571', 'মোঃ সাইফুল', 'নুরুল ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1353, 2021041353, '1332', '6916365271081', 'বীনা পাহান ', 'জাকনা পাহান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1354, 2021041354, '1333', '6916365271690', 'মোঃ মিলন  ', 'কুবুত আলী', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1355, 2021041355, '1334', '6916365271846', 'মোঃ হাছেন ', 'মিরাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1356, 2021041356, '1335', '6916365270085', 'সুলতানা  ', 'আঃ গফুর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1357, 2021041357, '1336', '6916365270249', 'সালমা বেগম ', 'আজম ইকবাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1358, 2021041358, '1337', '6916365271702', 'মোঃ ফজের আলী ', 'শাহাদত ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1359, 2021041359, '1338', '6916365271586', 'হালিমা বেগম  ', ' মোকাদ্দেস আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1360, 2021041360, '1339', '7784296209', 'ফারুক হোসেন  ', 'আবু বক্কর  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1361, 2021041361, '1340', '6916365271714', 'শ্রী সুরেশ', 'রমেশ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1362, 2021041362, '1341', '6916365271716', 'শ্রী জয়চান', 'রমেশ পাহান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1363, 2021041363, '1342', '6916365271962', 'বিনোদ ', 'শ্বিনাথ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1364, 2021041364, '1343', '6916365271718', ' জবান', 'সুরুত ', NULL, NULL, '13', NULL, 2, '1779737671', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1365, 2021041365, '1344', '6916365271801', 'শহীদ ', 'সুরুত ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1366, 2021041366, '1345', '6916365271796', 'মোঃ চান মিয়া ', 'কাচু', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1367, 2021041367, '1346', '6916365270069', 'আঃ হান্নান ', 'আলী মুদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1368, 2021041368, '1347', '6916365271998', 'মোঃ রবিউল ', ' সোহরাব ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1369, 2021041369, '1348', '6916365271394', 'মোঃ টগর আলী ', ' সৈয়ব আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1370, 2021041370, '1349', '6916365271997', 'মোঃ মজিবর', 'মহির', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1371, 2021041371, '1350', '6916365271015', 'মোঃ শফিকুল ', 'টগর আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1372, 2021041372, '1351', '6916365271691', ' সরুতি ', 'সামাদ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1373, 2021041373, '1352', '6916365271592', 'মোঃ হাকিম ', ' বেলায়েত', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1374, 2021041374, '1353', '6916365271633', 'মোঃ রেজাউল ', 'রাজ্জাক', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1375, 2021041375, '1354', '6916365271011', 'মোঃ ইব্রাহীম ', 'রওশন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1376, 2021041376, '১৩৫৫*', '6916365271956', 'আম্বিয়া বেগম ', ' মোজাফর আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1377, 2021041377, '1356', '6916365271058', 'মোঃ উজ্জল ', 'ফজলু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1378, 2021041378, '1357', '6916365270078', 'আবুল হোসেন ', 'আয়জদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1379, 2021041379, '১৩৫৮*', '6916365271980', ' রোকেয়া বেগম  ', 'জেহের আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1380, 2021041380, '1359', '6916365271840', 'মোঃ আঃ ছিদ্দিক ', 'কাশেম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1381, 2021041381, '1360', '3734351996', 'হাছিনা বেগম  ', 'শুকচান প্রাং  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1382, 2021041382, '1361', '6916365205587', 'রাবেয়া বেগম ', ' তোফায়েল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1383, 2021041383, '1362', '6916365270284', 'মোঃ ইসলাম ', 'নুরু মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(1384, 2021041384, '1363', '6916365295050', 'আছমা বেগম  ', 'আমিরুল ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1385, 2021041385, '1364', '6916365000405', 'নিজাম আলী ', 'সাদেক আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1386, 2021041386, '1365', '2384353633', 'অপেলা বেগম ', 'মজির উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1387, 2021041387, '1366', '6916365270273', 'মোঃ আয়নাল ', 'করিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1388, 2021041388, '1367', '6916365266883', 'কাঞ্চন বেগম  ', 'সিরাজ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1389, 2021041389, '1368', '6916365270315', 'মোঃ হুসেন ', 'রব মিয়া', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1390, 2021041390, '1369', '6916365270193', 'মোঃ আফজাল', 'তয়েজ উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1391, 2021041391, '1370', '6916365270259', 'মোঃ আজগর', 'চুনু মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1392, 2021041392, '1371', '6916365270242', 'মোঃ আনার ', 'আজগর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1393, 2021041393, '1372', '6916365270292', 'মোঃ সিদ্দিক ', 'ইসমাইল', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1394, 2021041394, '1373', '6916365270235', 'মতিজান বেগম  ', 'মকছেদ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1395, 2021041395, '1374', '6916365270208', 'মোঃ মালেক ', 'বাবর আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1396, 2021041396, '1375', '6916365270327', 'মোঃ বাবর আলী ', 'কেয়ার প্রাং', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1397, 2021041397, '1376', '6916365270233', 'মোঃ মুসলিম ', 'নুরু মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1398, 2021041398, '1377', '6916365270244', 'মোঃ আাসলাম ', 'আশরাফ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1399, 2021041399, '1378', '6916365270200', 'মোছাঃ ছারেজান ', 'জদো ফকির', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1400, 2021041400, '1379', '6916365270219', 'মোঃ তারা ভানু', 'জদো ফকির ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1401, 2021041401, '1380', '6916365270189', 'মোঃ ফজলু ', 'কিনার প্রাং', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1402, 2021041402, '1381', '6916365270342', 'মোঃ নজরুর ', 'কিনার প্রাং', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1403, 2021041403, '1382', '6916365272037', 'রওশনারা  ', 'শাজাহান  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1404, 2021041404, '1383', '6916365272019', 'মোঃ ফুল জান ', 'আমজাদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1405, 2021041405, '1384', '6916365270035', 'মোঃ আজিজুল ', ' মোস্তফা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1406, 2021041406, '1385', '6916365270719', 'মোঃ মনির ', 'খালেক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1407, 2021041407, '1386', '6916365270173', 'শ্রী কমল পাহান', 'অধিকার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1408, 2021041408, '1387', '6916365270112', ' নবিয়া ', 'মন্তাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1409, 2021041409, '1388', '6916365003751', 'শান্ত পাহান  ', 'হিরেন পাহান  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1410, 2021041410, '1389', '6916365270709', 'মোঃ হাবিল ', 'মিনার আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বাসুপাড়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1411, 2021041411, '1390', '6916365271990', 'মমিন দেওয়ান ', 'আজিজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'শেখের হাট', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1412, 2021041412, '1391', '6916365270987', 'মোঃ কালাম', 'ছলেমান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1413, 2021041413, '1392', '6916365272270', 'মোছাঃ খোদেজা', 'মসলেম প্রাঃ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1414, 2021041414, '1393', '6916365272289', ' মোঃ শাহ আলম ', 'মৃত ওছিমুদ্দিন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1415, 2021041415, '1394', '6916365272293', ' মোঃ মজনু ', ' সোনা মিয়া', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1416, 2021041416, '1395', '6916365270828', ' মোঃ নুর নবী', 'সেকেন্দার', NULL, NULL, '13', NULL, 2, '1764998566', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1417, 2021041417, '1396', '6916365272250', ' মোঃ নিজাম ', 'আক্কাছ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1418, 2021041418, '1397', '6916365272217', ' মোঃ সাজদার ', 'ওছিমুদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1419, 2021041419, '1398', '6916365272612', ' মোঃ আকালুদ্দিন ', 'মৃত সেলিম শেখ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1420, 2021041420, '1399', '6916365272509', ' মোঃ মজিবর ', 'হাছেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1421, 2021041421, '1400', '6916365272466', ' মোঃ রইচ উদ্দিন ', ' মোঃ সুন্দর আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1422, 2021041422, '1401', '6916365272281', ' মোছাঃ মনোয়ারা ', 'মৃত বাস্তুল ফকির ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1423, 2021041423, '1402', '6916365272236', ' মোছাঃ মালেকা ', 'আঃ হক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1424, 2021041424, '1403', '6916365272476', ' মোছাঃ কুলছুম ', 'রঞ্জিত প্রাঃ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1425, 2021041425, '1404', '6916365272604', ' মোছাঃ রমেছা ', 'আঃ হালিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1426, 2021041426, '1405', '6916365272272', ' মোছাঃ রাহিমা ', 'মৃত মোজাম্মেল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1427, 2021041427, '1406', '6916365272547', ' মোছাঃ হালিমা ', 'রমজান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1428, 2021041428, '1407', '2619351958468', ' মোছাঃ রেশমা ', 'শহিদুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1429, 2021041429, '1408', '6916365272227', ' মোছাঃ জানেরা', 'মৃত খালেক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1430, 2021041430, '1409', '6916365274107', ' মোঃ হযরত ', 'আহম্মদ আলী ', NULL, NULL, '13', NULL, 2, '1733285407', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1431, 2021041431, '1410', '6916365274167', ' মোঃ মানিক ', ' সোনা মিয়া', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1432, 2021041432, '1411', '6916365274139', ' মোঃ আনোয়ার ', 'মৃত হারু মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1433, 2021041433, '1412', '6916365274104', ' মোছাঃ মর্জিনা ', 'কাসেম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1434, 2021041434, '1413', '2617294923314', 'মোতালেব ', 'শামসু মিযা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1435, 2021041435, '1414', '6916365274141', ' মোঃ হাববিুর', 'আনােয়ার মুন্সি ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1436, 2021041436, '1415', '6916365000092', ' মোঃ সাইফুল ', 'মিন্নত আলী', NULL, NULL, '13', NULL, 2, '1792256019', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1437, 2021041437, '1416', '6916365274301', ' মোঃ মান্নান ', 'আঃ জব্বার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1438, 2021041438, '1417', '6916365273910', ' মোঃ মনির ', 'কাশেম মোল্লা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1439, 2021041439, '1418', '6916365273948', ' মোঃ সূজন মিয়া ', 'আলী আকবর', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1440, 2021041440, '1419', '6916365273904', ' মোঃ মানিক ', 'মৃত ফজলুল হক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1441, 2021041441, '1420', '6916365273509', 'হালিমা বেগম  ', 'দারু মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1442, 2021041442, '1421', '6916365273435', ' মোঃ ইদ্রিস ', 'মৃত মুন্তাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1443, 2021041443, '1422', '6916365273967', 'আমেনা বেগম  ', 'মজিবর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1444, 2021041444, '1423', '6916365273415', ' মোঃ হানিফ ', 'বসির উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1445, 2021041445, '1424', '6916365273398', ' মোঃ নান্নু মিয়া ', 'নিয়ামত উল্লাহ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1446, 2021041446, '1425', '6916365262432', ' মোঃ ছাইদুল ', 'আলী নুর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1447, 2021041447, '1426', '6916365273413', ' মোঃ রজব মিয়া া', 'আলী নুর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1448, 2021041448, '1427', '6916365273291', ' মোঃ কাশেম ', 'আঃ হাই ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1449, 2021041449, '1428', '6916365273459', ' মোঃ বজলুর ', 'ফুল মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1450, 2021041450, '1429', '6916365262422', ' মোঃ ইব্রাহীম মিয়া ', 'আঃ খালেক ', NULL, NULL, '13', NULL, 2, '1965745134', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1451, 2021041451, '1430', '6916365273531', ' মোছাঃ আঞ্জুয়ারা ', 'জালাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1452, 2021041452, '1431', '691093866903', ' মোছাঃ মিরা খাতুন ', 'আলি মুদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1453, 2021041453, '1432', '6916365273563', ' মোছাঃ কামরুল', 'পিয়ার আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1454, 2021041454, '1433', '6916365273559', ' মোঃ পিয়ার আলী ', 'পলান মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1455, 2021041455, '1434', '69163652733541', ' মোছাঃ মরিয়ম ', 'তছলেম উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1456, 2021041456, '১৪৩৫*', '6916365273510', 'শরিফা খাতুন ', 'শাহালম হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1457, 2021041457, '1436', '6916365273564', ' মোঃ জামরুল ', 'পিয়ার আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1458, 2021041458, '1437', '6916365273262', 'রহিমা বেগম  ', 'শহিদ মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1459, 2021041459, '1438', '6916365273706', ' মোছাঃ মল্লিকা ', 'নজরুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1460, 2021041460, '1439', '6916365273586', ' মোছাঃ আছিয়া ', 'চান মোহাম্মদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1461, 2021041461, '1440', '6916365274202', ' মোঃ মান্নান ', 'সিরাজ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1462, 2021041462, '1441', '6916365274197', 'আমির হোসেন ', 'কালা মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1463, 2021041463, '1442', '6916365274152', ' মোঃ সুরুজ মিযা ', 'রইছ উদ্দিন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1464, 2021041464, '১৪৪৩*', '6916365296887', 'আলম হোসেন ', 'আকবর আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ  ', 'দিন মজুর', '', 1),
(1465, 2021041465, '1444', '6916365274123', ' মোছঃ ইদ্দ্রিস ', 'রইচ উদ্দিন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1466, 2021041466, '1445', '6916365274490', ' মোঃ মোহাম্মদ', 'হাকিম', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1467, 2021041467, '1446', '6916365274475', ' মোছাঃ সালেহা', 'মোফাজ্জল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1468, 2021041468, '1447', '6916365274517', ' মোঃ বাচ্চু মিয়া ', 'সালামত ', NULL, NULL, '13', NULL, 2, '1747957397', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1469, 2021041469, '1448', '6916365275553', 'আঃ সোবাহান ', 'ইসমাইল হোসেন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া  ', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1470, 2021041470, '১৪৪৯*', '6916365000002', 'জয়নব খাতুন ', 'শুকুর আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1471, 2021041471, '1450', '6916365000064', 'সুজন আলী ', 'আঃ হক মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1472, 2021041472, '1451', '6916365272628', ' মোঃ মোজাম্মেল ', 'আজিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1473, 2021041473, '1452', '6916365274410', 'নুরভানু ', ' লোকমা হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1474, 2021041474, '1453', '6916365273021', ' মোঃ মাফিয়া ', 'মোঃ এনজুল হক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1475, 2021041475, '1454', '6916365273275', 'রিনা বেগম  ', 'ইব্রাহিম  খলিল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিরা  ', 'দিন মজুর', '', 1),
(1476, 2021041476, '1455', '6916365272277', ' মোঃ ওসমান ', ' মোঃ ইউনুস ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1477, 2021041477, '1456', '6916365272301', ' মোছাঃ মর্জিনা ', ' লোকমান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1478, 2021041478, '1457', '6916365272927', ' মোছাঃ সাজেদা ', 'রওশন মন্ডল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1479, 2021041479, '1458', '6916365273814', ' মোঃ তফছের ', 'মৃত নাজের মৃধা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1480, 2021041480, '1459', '6916365273483', ' মোঃ আঃ রহিম ', 'মৃত দুলু মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1481, 2021041481, '1460', '6916365273319', ' মোছাঃ পরিজান ', 'চান মিঞা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1482, 2021041482, '1461', '6916365273315', ' মোছাঃ মিনারা ', 'আঃ আজিজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1483, 2021041483, '1462', '6916365000171', ' মোঃ আকরাম ', 'আব্দুল্লাহ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1484, 2021041484, '1463', '6916365273297', ' মোছাঃ আছমা ', 'শাহেদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1485, 2021041485, '1464', '6916365273269', ' রওশনয়ারা ', 'ছাফিল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1486, 2021041486, '1465', '6916365273440', ' মোঃ জাকির ', 'মৃত বাহার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1487, 2021041487, '1466', '6916365273846', 'সাদেক আলী  ', 'হযরত আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1488, 2021041488, '1467', '6916365274002', ' মোঃ আয়নাল ', 'মৃত তছিমুদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1489, 2021041489, '1468', '6916365273357', ' মোঃ আঃ সাত্তার ', 'মৃত দনু মিয়া ', NULL, NULL, '13', NULL, 2, '1937380344', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1490, 2021041490, '1469', '6916365273287', ' মোছাঃ সফুরা ', 'আতাহার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1491, 2021041491, '1470', '6916365273741', ' মোঃ এনায়েত ', 'মৃত সমতুল্লা ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1492, 2021041492, '1471', '6916365273359', ' মোঃ করিম ', 'মৃত আছের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1493, 2021041493, '1472', '6916365273356', ' মোঃ খলিলুর ', 'মৃত দবির', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1494, 2021041494, '1473', '6916365274416', 'সাজেদা  ', 'বাবুল খা  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1495, 2021041495, '1474', '6916365000346', 'মিন্টু ', 'আব্দুল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1496, 2021041496, '1475', '6916365264736', 'ইব্রাহিম ', 'নাজিম উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ  ', 'দিন মজুর', '', 1),
(1497, 2021041497, '1476', '6916365274253', ' মোঃ নাদের ', 'মৃত মুন্তাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1498, 2021041498, '1477', '6916365274260', ' মোঃ ইউসুফ ', 'মৃত মুন্তাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1499, 2021041499, '1478', '6916365000278', 'আকলিমা ', 'লিটন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1500, 2021041500, '1479', '6916365274535', ' মোঃ নজরুল ', 'মত ৃমফিজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1501, 2021041501, '1480', '6916365274521', ' মোঃ আঃ কাদের', 'মৃত মুন্তাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1502, 2021041502, '1481', '6916365274430', ' মোঃ জফের ', 'মৃত গয়ের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1503, 2021041503, '1482', '6916365268743', ' মোছাঃ রুবি ', 'ঈমান শেখ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1504, 2021041504, '1483', '6916365264', ' মোঃ ছাদেক ', 'জরুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1505, 2021041505, '1484', '6916365274474', ' মোঃ কামাল ', 'হাকিম শেখ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1506, 2021041506, '1485', '6916365274448', ' মোঃ মনির খাঁ ', 'মৃত আব্দুল খাঁ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1507, 2021041507, '1486', '6916365274480', ' মোঃ সেকেন ', 'মৃত জহির ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1508, 2021041508, '1487', '69163652', ' মোঃ রবিউল ', 'শুক্কুর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1509, 2021041509, '1488', '6916365274392', ' মোঃ খোকন ', 'মৃত মজনু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1510, 2021041510, '1489', '6916365274285', ' মোঃ জাহেদ ', 'মৃত আফাজ সোনার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1511, 2021041511, '1490', '6916365272857', ' মোঃ মাহবুব ', 'মান্নান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1512, 2021041512, '1491', '6916365270030', 'পিয়ারা ', ' সোহরাফ  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1513, 2021041513, '১৪৯২*', '6916365272827', 'সামসুন্নাহার ', 'কাজিম উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1514, 2021041514, '1493', '6916365272850', ' মোঃ রফিক ', ' মোতালেব ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1515, 2021041515, '1494', '6916365274522', 'আঃ আজিজ ', 'জুলমত প্রাং  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1516, 2021041516, '1495', '691636527387', ' মোঃ জাহিদুল ', 'রহিম উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1517, 2021041517, '1496', '6916365000004', ' মোঃ আমিন ', 'জহুরুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1518, 2021041518, '1497', '6916365000005', ' মোঃ আঃ লতিফ ', 'সামাদ ', NULL, NULL, '13', NULL, 2, '1926359588', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1519, 2021041519, '1498', '6916365273043', ' মোঃ কামাল ', 'মান্নান গাজী', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1520, 2021041520, '1499', '6916365272854', ' মোঃ হাফিজ ', 'সুরুজ আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1521, 2021041521, '1500', '6916365272809', ' আজিম আলী ', 'ওয়াহেদ আলী ', NULL, NULL, '13', NULL, 2, '1935850286', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1522, 2021041522, '1501', '6916365272874', ' মোঃ মিঠুন ', ' লেদু মিয়া ', NULL, NULL, '13', NULL, 2, '1750689577', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1523, 2021041523, '1502', '6916365272849', ' মোছাঃ তাছলেমা ', 'লৎফর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1524, 2021041524, '1503', '6916365272856', ' মোছাঃ সাজেদা ', 'মান্নান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1525, 2021041525, '1504', '6916365272870', ' মোঃ শাহ আলম ', 'শাজাহান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1526, 2021041526, '1505', '6916365272866', ' মোঃ রবিউল ', ' খেড়– ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1527, 2021041527, '1506', '6916365272814', ' সোনার ভানু ', 'বাসার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1528, 2021041528, '1507', '6916365272820', ' মোছাঃ শাহিদা ', 'আশরাফুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1529, 2021041529, '1508', '6916365272826', ' মোঃ কাজল ', 'আমজাদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1530, 2021041530, '1509', '6916365272737', ' মোঃ মজিদ ', 'তয়েজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1531, 2021041531, '1510', '691636527200', ' মোছাঃ আছিয়া ', 'আলতাফ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1532, 2021041532, '1511', '6916365272790', ' মোজাফ্ফর ', 'রাহাত ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1533, 2021041533, '1512', '6916365272659', ' মোঃ বাবলু বাগু', 'জমির ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1534, 2021041534, '1513', '6916365272811', ' মোঃ রইজ উদ্দিন ', 'ওয়েহেদ আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1535, 2021041535, '1514', '6916365273259', ' মোঃ জহির প্রাঃ ', 'বাহার প্রাঃ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1536, 2021041536, '1515', '6916365272668', 'জালাল উদ্দিন ', 'আলিম উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ  ', 'দিন মজুর', '', 1),
(1537, 2021041537, '1516', '6916365272674', 'রব্বেল ', 'ইবির উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1538, 2021041538, '1517', '6916365272408', ' মোঃ ফজের ', 'জাফের', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1539, 2021041539, '1518', '6916365272546', ' মোঃ ফজলু ', 'জবান', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1540, 2021041540, '1519', '6916365272483', ' মোঃ ছাইফুল ', 'সিরাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1541, 2021041541, '1520', '6916365264756', ' মোঃ লালন ', 'আফসার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1542, 2021041542, '1521', '6916365273490', ' মোঃ ডোল হোক ', 'ছাইবার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1543, 2021041543, '1522', '6916365272413', ' মোঃ আঃ রাজ্জাক ', 'রিয়াজ উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1544, 2021041544, '1523', '6916365273223', ' মোঃ লোকমান ', 'ছায়েদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1545, 2021041545, '1524', '6916365272693', ' মোঃ আশকান ', ' সেকেন্দার', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1546, 2021041546, '1525', '6916365272460', ' মোঃ মধু ', 'তয়েজ উদ্দিন ', NULL, NULL, '13', NULL, 2, '1776977207', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1547, 2021041547, '1526', '6916365268761', '  সুমন ', 'নরেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1548, 2021041548, '1527', '6916365263335', ' মোঃ শরিফুল ', 'আজাহার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1549, 2021041549, '1528', '6916365272323', 'বুলবুলি ', 'মাইনুল ইসলাম  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা ', 'দিন মজুর', '', 1),
(1550, 2021041550, '1529', '6916365273230', 'আঃ জলিল  ', 'আঃ জব্বার  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ ', 'দিন মজুর', '', 1),
(1551, 2021041551, '1530', '6916365272214', ' মোঃ শাজাহান ', 'ওসীম উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1552, 2021041552, '1531', '6916365000013', ' মোঃ  আনোয়ার ', 'মদিজল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1553, 2021041553, '1532', '6916365273208', 'শহর বানু  ', 'খলিল মিয়া ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1554, 2021041554, '1533', '6916365273197', 'আশরাফ আলী ', 'জহুরুল হক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1555, 2021041555, '1534', '6916365273045', ' মোঃ ছুলেমান ', 'তৌহিদ গাজী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1556, 2021041556, '1535', '6916365273064', ' মোঃ হালিম ', 'আঃ জলিল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1);
INSERT INTO `food_receiver_applicant_info` (`id`, `applicant_id`, `card_no`, `nid`, `name`, `father_name`, `mother_name`, `guardin_type`, `occupation`, `address`, `dealer_id`, `mobile`, `card_issue_dt`, `finger_print_template`, `date_of_birth`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `issueingAuthority`, `pic`, `spouse_name`, `is_verify`, `api_data`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `dealer_name`, `gender`, `occupation_title`, `union_name`, `is_fringerprint_register`) VALUES
(1557, 2021041557, '1536', '69163652000011', ' মোঃ কুরমান', 'মুনছের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1558, 2021041558, '1537', '6916365272965', ' মোঃ ফরিদ ', 'আফছার', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1559, 2021041559, '1538', '6916365272984', ' মোঃ মর্হরম ', 'মুনছের', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1560, 2021041560, '1539', '6916365273135', ' মোঃ শাহাবুদ্দিন ', 'দায়ম উদ্দিন ', NULL, NULL, '13', NULL, 2, '1944556475', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1561, 2021041561, '1540', '69163652729992', ' মোঃ আকছেদ ', 'আঃ করিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1562, 2021041562, '1541', '6916365272313', ' মোছাঃ মেন্নেকা ', 'মসলেম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1563, 2021041563, '1542', '6916365272354', ' মোছাঃ বিলকিছ ', 'বাচ্চু ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1564, 2021041564, '1543', '6916365272329', ' মোছাঃ রাশিদা ', ' মোজাফ্ফর ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1565, 2021041565, '1544', '6916365272344', ' মোছাঃ মুঞ্জরা ', 'মাজদার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1566, 2021041566, '1545', '6916365268783', ' মোঃ সাইদুল ', 'ছাকাত ', NULL, NULL, '13', NULL, 2, '1729175334', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1567, 2021041567, '1546', '6916365272322', ' মোছাঃ নরুন্নাহার ', ' রেজাউল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1568, 2021041568, '1547', '6916365272358', ' মোঃ নজরুল ', ' মোহাম্মদ ', NULL, NULL, '13', NULL, 2, '1731035532', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1569, 2021041569, '1548', '6916365272326', ' মোঃ আফছার ', 'সফিউদ্দিন', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1570, 2021041570, '1549', '6916365000258', 'সোহেল রানা ', 'কুদ্দুস ', NULL, NULL, '13', NULL, 2, '1733178057', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1571, 2021041571, '1550', '6916365272352', ' মোঃ আলতাব ', 'সাবদুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1572, 2021041572, '1551', '6916365268781', ' মোঃ আলীম ', 'হযরত আলী ', NULL, NULL, '13', NULL, 2, '1764389099', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1573, 2021041573, '1552', '6916365000291', ' মোঃ শিরজুল ', 'নবীর ', NULL, NULL, '13', NULL, 2, '1788047040', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1574, 2021041574, '১৫৫৩*', '6916365272355', 'মমতাজ বেগম ', 'আনিসুর রহমান  ', NULL, NULL, '13', NULL, 2, '', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1575, 2021041575, '1554', '6916365272884', ' মোঃ মোস্তফা', 'সোবাহান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1576, 2021041576, '1555', '6916365272862', ' মোঃ শাহীদা', 'তোফাজ্জল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1577, 2021041577, '1556', '6916365273927', 'নুর আলম ', 'আঃ বারেক  ', NULL, NULL, '13', NULL, 2, '1745075228', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1578, 2021041578, '1557', '6916365274499', ' মোছাঃ সাইদা', 'ইদ্রিস ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1579, 2021041579, '1558', '6916365272240', 'জেকের আলী ', 'বিল্লাল আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ ', 'দিন মজুর', '', 1),
(1580, 2021041580, '1559', '6916365000095', ' মোঃ মাসুদ রানা', 'সাহেদ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1581, 2021041581, '1560', '6916365274495', ' মোঃ জয়নাল ', 'মফিজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1582, 2021041582, '1561', '6916365000302', ' মোঃ বাবলু ', 'বিশু প্রাঃ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1583, 2021041583, '1562', '6916365273769', ' মোছাঃ রহিমা', 'ওয়জেদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1584, 2021041584, '1563', '6916365272904', 'লতাজান  ', 'মজিবর রহমান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1585, 2021041585, '1564', '6916365274487', ' মোছাঃ আলেয়া ', 'জালাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1586, 2021041586, '1565', '6916365272411', 'দুলার মৃধা  ', 'রিয়াজ উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1587, 2021041587, '1566', '6916365273111', ' মোঃ মাসুদ ', 'খালেক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1588, 2021041588, '1567', '6916365268766', ' মোঃ আজগর ', 'বদু', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1589, 2021041589, '1568', '6916365272993', ' মোঃ মজুর হক ', 'মুন্তাজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1590, 2021041590, '1569', '6916365272737', 'মজিদ মিয়া  ', 'হুকুম মন্ডল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1591, 2021041591, '1570', '6916365273046', 'আলী আহম্মদ ', ' তৌহিদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1592, 2021041592, '1571', '69163652', ' মোছাঃ জামেনা ', 'সাত্তার ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1593, 2021041593, '1572', '6916365274443', 'আানোয়ারা', 'মিঞার উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1594, 2021041594, '1573', '6916365272987', ' মোঃ রফিক ', 'করিম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1595, 2021041595, '1574', '691636527308', 'মোঃ রুহুর আমিন', 'আঃ আজিজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1596, 2021041596, '1575', '6916365274435', ' মোঃ দেলোয়ার ', 'আঃ মান্নান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1597, 2021041597, '1576', '6916365274459', 'খাজা আহম্মেদ ', 'সামসুল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1598, 2021041598, '1577', '6916365273055', 'মায়াজান ', 'আঃ আজিজ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1599, 2021041599, '1578', '2617239801524', ' মোঃ আঃ মান্নান ', 'মৃত হামিদ ', NULL, NULL, '13', NULL, 2, '1788960990', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1600, 2021041600, '1579', '6916365274289', ' মোঃ সফর আলী ', 'ইব্রাহীম ', NULL, NULL, '13', NULL, 2, '1755666800', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1601, 2021041601, '1580', '2384059768', 'হুনুফা বেগম ', 'ফয়েজ উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1602, 2021041602, '1581', '6916365274024', ' মোঃ নুরুল হক ', 'মৃত আঃ রশিদ ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1603, 2021041603, '1582', '6916365274233', ' মোঃ আঃ কাদের ', 'মৃত আঃ মালেক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1604, 2021041604, '1583', '6916365273113', ' মোঃ ইসমাইল ', 'আলীম উদ্দিন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1605, 2021041605, '1584', '6916365000009', 'রেহেনা বেগম  ', 'জমসেদ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1606, 2021041606, '1585', '6916365272152', ' মোছাঃ হালিমা ', 'ওমের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1607, 2021041607, '1586', '6916365272174', ' মোছাঃ রাজিয়া  ', 'ফজের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1608, 2021041608, '1587', '6916365272162', ' মোছাঃ আলতাব ', 'ওমের ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1609, 2021041609, '1588', '6916365272187', 'মেনেনেকা ', 'মৃত আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1610, 2021041610, '1589', '6916365278973', ' মোঃ আঃ হক', 'কাঞœন মিয়া', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1611, 2021041611, '1590', '6916365257679', 'মিন্টু হোসেন  ', 'আঃ রাজ্জাক ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর ', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ ', 'দিন মজুর', '', 1),
(1612, 2021041612, '১৫৯১*', '6916365298328', 'রেজিয়া বেগম ', 'আফির উদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1613, 2021041613, '1592', '691636528738', ' মোঃ সুরুজ মিয়া ', 'কাঞ্চন মিয়া', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1614, 2021041614, '1593', '6916365284502', ' মোঃ তারা মিয়া ', ' মোঃ কামাল ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1615, 2021041615, '১৫৯৪*', '270567201030', 'পরিনা বেগম ', 'সুরত আলী  ', NULL, NULL, '13', NULL, 2, 'নাই ', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা  ', 'দিন মজুর', '', 1),
(1616, 2021041616, '1595', '6916365000531', 'তাছলিমা  ', 'চানমিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1617, 2021041617, '1596', '6916365274558', 'আতাউর রহমান ', 'জুলফত আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ ', 'দিন মজুর', '', 1),
(1618, 2021041618, '1597', '6916365274594', 'আনোয়ারা ', 'আঃ রহমান ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ ', 'দিন মজুর', '', 1),
(1619, 2021041619, '1598', '6916365274226', 'ছিদ্দিকুর রহমান  ', 'শামসুদ্দিন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1620, 2021041620, '1599', '691636527435', 'সাহারা ', 'মিয়াচান  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1621, 2021041621, '1600', '6916365000017', 'মফিজুল ইসলাম  ', 'সানু মিয়া  ', NULL, NULL, '13', NULL, 2, '1736261044', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1622, 2021041622, '1601', '691636500002', 'আবুুল হোসেন ', 'আঃ মালেক ভুইয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1623, 2021041623, '1602', '6916365272441', 'ইব্রাহিম ভুইয়া  ', 'রমজান ভুইয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1624, 2021041624, '1603', '6916365267439', 'আমজাদ হোসেন  ', 'আঃ মালেক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1625, 2021041625, '1604', '6916365255250', ' মোছাঃ শিরিনা ', 'আঃ ওহিদ  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1626, 2021041626, '1605', '6916365255272', 'খলিলুর রহমান  ', 'জাহের আলী ', NULL, NULL, '13', NULL, 2, '1740815553', NULL, NULL, NULL, 'খেলাবাড়ীযা', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1627, 2021041627, '1606', '6916365255215', 'আবু তালেব ', 'সরোয়ারদী সরকার  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1628, 2021041628, '1607', '6916365255121', ' মোছাঃ সালেহা ', 'আঃ মালেক ভুইয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1629, 2021041629, '1608', '6916365255395', ' মোঃ হোসেন ', 'মৃত জয়নাল  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীযা', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1630, 2021041630, '1609', '6916365256352', ' মোঃ এনামুল', 'মেতালিব মোল্লা  ', NULL, NULL, '13', NULL, 2, '1926973915', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1631, 2021041631, '১৬১০*', '6916365254875', ' জোহরা বেগম  ', 'তাইজুল ইসলাম ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1632, 2021041632, '1611', '6916365254870', 'মহি উদ্দিন  ', 'আব্দুল হক মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1633, 2021041633, '1612', '6916365266267', 'হেলাল উদ্দিন  ', 'আব্দুল কাদের  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'খোলাবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1634, 2021041634, '1613', '6916365255248', ' কোরমান আলী  ', 'হুমায়ন আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1635, 2021041635, '1614', '6916365254860', 'শাহাজান আলী  ', 'মৃত লতিফ ভুইয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1636, 2021041636, '1615', '6916365000111', 'শহিদুল ইসলাম  ', 'আজাহার আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'হয়বতপুর', '3', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1637, 2021041637, '১৬১৬*', '6916365254855', 'হাসিনা বেগম ', 'আঃ  লতিফ  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '6', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1638, 2021041638, '1617', '6916365255212', 'মোঃ ইউনুস', 'ছাফের আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'ইব্রাহিম পুর', '5', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1639, 2021041639, '1618', '692630335030', ' মোঃ আলম', 'আব্দুল খালেক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'লক্ষীপুর', '2', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1640, 2021041640, '1619', '691636500000', ' হারুন রশিদ ', 'আরিজ মিয়া  ', NULL, NULL, '13', NULL, 2, '1743533814', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1641, 2021041641, '1620', '6916365255414', 'আঃ কাদের  ', 'মৃত আকবর আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1642, 2021041642, '1642', '6916365254229', 'আঃ জলিল  ', 'মহাম্মদ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1643, 2021041643, '1643', '6916365255283', 'আলতাফ', 'আমজাদ হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'বড়বাড়ীয়া', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1644, 2021041644, '1644', '6916365255404', 'শহিদুল ইসলাম  ', 'আব্দুল  ', NULL, NULL, '13', NULL, 2, '1760216231', NULL, NULL, NULL, 'বড়বাড়ীয়া  ', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1645, 2021041645, '1645', '6916365255105', 'নান্টু চন্দ্র  ', 'লক্ষন  ', NULL, NULL, '13', NULL, 2, '1782830966', NULL, NULL, NULL, 'বড়বাড়ীয়া  ', '9', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1646, 2021041646, '1646', '691636500047', 'সারমিন হোসেন  ', 'হালিম হোসেন  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1647, 2021041647, '1647', '6916365255344', 'রমজান আলী  ', 'নজের আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1648, 2021041648, '1648', '6916365255417', 'রাবেয়া  বেগম  ', 'ইদ্রিস আলী ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1649, 2021041649, '1649', '6916365254865', 'আক্কাস আলী ', 'তছলিম উদ্দিন   ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাদিমসাতুরিয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1650, 2021041650, '১৬৫০*', '6916365255258', 'সাইদ প্রাং  ', 'আকবর আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া  ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1651, 2021041651, '1651', '6916365255259', ' গোলাপজান ', 'সজের আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'চরতেবাড়ীয়া   ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1652, 2021041652, '1652', '3323013331713', 'উমর ফারুখ ', 'ইয়াছিন  আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া   ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1653, 2021041653, '1653', '6916365255311', 'ইউসুুফ আলী  ', 'জালাল হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দিয়ারসাতুরিয়া ', '4', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1654, 2021041654, '1654', '691636500000', ' মোছাঃ বাদলী  ', 'জমসেদ আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1655, 2021041655, '1655', '6916365256059', 'ছলিমন ', ' লোকমান হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'দরাপপুর   ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1656, 2021041656, '1656', '6916365255958', 'জব্বার আলী  ', 'বারিক হোসেন ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1657, 2021041657, '1657', '6916365008695', ' মোহাম্মদ আলী  ', 'ছানোয়ার  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1658, 2021041658, '1658', '6916365255982', 'আবুল খায়ের  ', 'শামসুল  হক  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1659, 2021041659, '1659', '6916365255989', 'সাগরিকা  ', 'বশু মিয়া  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঠালবাড়ীয়া  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1660, 2021041660, '1660', '6916365256092', 'কল্পনা  বেগম ', 'সুকচান আলী  ', NULL, NULL, '13', NULL, 2, 'নাই', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'মহিলা', 'দিন মজুর', '', 1),
(1661, 2021041661, '1661', '691636500003', 'আঃ কাদের ', 'এবাদ আলী  ', NULL, NULL, '13', NULL, 2, '1744620447', NULL, NULL, NULL, 'কাঁঠালবাড়ীয়া ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আবুল কালাম', 'পুরুষ', 'দিন মজুর', '', 1),
(1662, 2021041662, '1662', '6916365256038', 'রাজিয়া বেগম  ', ' হেলাল  হোসেন  ', NULL, NULL, '13', NULL, 0, 'নাই', NULL, NULL, NULL, 'দরাপপুর  ', '8', 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, ',,', 'মহিলা', 'দিন মজুর', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_receiver_record`
--

CREATE TABLE `food_receiver_record` (
  `id` int(11) NOT NULL,
  `food_program_id` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `food_type` tinyint(1) DEFAULT NULL COMMENT '1 = চাল, 2= অন্যান্য',
  `food_amount` float DEFAULT NULL,
  `receive_dt` date DEFAULT NULL COMMENT '0 = Delete, 1= Active, 2= Inactive',
  `dealer_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_vgd_applicant_info`
--

CREATE TABLE `food_vgd_applicant_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vgd_cricle` int(11) UNSIGNED DEFAULT NULL,
  `vgd_card_no` int(11) UNSIGNED DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `guardian_type` tinyint(3) UNSIGNED DEFAULT 1 COMMENT '1 = Father, 2 = Husband',
  `gurdian_name` varchar(300) DEFAULT NULL,
  `mother_name` varchar(300) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `age` int(11) UNSIGNED DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(30) DEFAULT NULL,
  `total_family_member` int(11) UNSIGNED DEFAULT NULL,
  `village` varchar(300) DEFAULT NULL,
  `wordNo` int(11) UNSIGNED DEFAULT NULL,
  `post_office` varchar(300) DEFAULT NULL,
  `upazila` varchar(300) DEFAULT NULL,
  `district` varchar(300) DEFAULT NULL,
  `moholla_name` varchar(300) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `card_issue_dt` date DEFAULT NULL,
  `card_distributes_dt` date DEFAULT NULL,
  `implementing_authority` int(11) UNSIGNED DEFAULT NULL,
  `responsible_officer` int(11) UNSIGNED DEFAULT NULL,
  `responsible_uno_info` int(11) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED DEFAULT 1 COMMENT '0 = Deleted, 1 = Active, 2 = Inactive, 3 = Deadline Expired, 4 = pending, 5 = Decline by UNO  ',
  `is_verify` tinyint(1) NOT NULL DEFAULT 1,
  `api_data` text DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_vgd_applicant_info`
--

INSERT INTO `food_vgd_applicant_info` (`id`, `applicant_id`, `vgd_cricle`, `vgd_card_no`, `pic`, `name`, `guardian_type`, `gurdian_name`, `mother_name`, `date_of_birth`, `age`, `nid`, `mobile_no`, `total_family_member`, `village`, `wordNo`, `post_office`, `upazila`, `district`, `moholla_name`, `comments`, `card_issue_dt`, `card_distributes_dt`, `implementing_authority`, `responsible_officer`, `responsible_uno_info`, `is_active`, `is_verify`, `api_data`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`) VALUES
(1, 2021040001, NULL, 1, NULL, 'মোছাঃ সাহিদা খাতৃন', 1, 'ফজলুর রহমান', NULL, NULL, 32, '8233536542', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2021040002, NULL, 2, NULL, 'মোছাঃ শেফালী খাতুন', 1, 'ইদ্রিস আলী', NULL, NULL, 33, '2383810989', NULL, 5, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2021040003, NULL, 3, NULL, 'মোছাঃ খোদেজা খাতুন', 1, 'মোঃশিরু মিয়া', NULL, NULL, 32, '8653343510', NULL, 6, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর উক্তর পাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2021040004, NULL, 4, NULL, 'মোছাঃ ছাবিয়া বেগম', 1, 'ফজলু', NULL, NULL, 48, '4634432910', NULL, 6, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 2021040005, NULL, 5, NULL, 'মোছাঃ নুর জাহান', 1, 'কালাম', NULL, NULL, 35, '2395709385', NULL, 5, 'কদিম সাতুরিয়া', 4, NULL, NULL, NULL, 'কদিম সাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2021040006, NULL, 6, NULL, 'সানিতা পাহান', 1, 'ধীরেন পাহান', NULL, NULL, 29, '2398878989', NULL, 5, 'দয়রাপ পুর', 8, NULL, NULL, NULL, 'দয়রাপ পুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 2021040007, NULL, 7, NULL, 'মোছাঃ কামরুন্নাহার', 1, 'সাব্বির', NULL, NULL, 43, '5083398510', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2021040008, NULL, 8, NULL, 'মোছাঃ রহিমা', 1, 'আনোয়ার হোসেন', NULL, NULL, 37, '3716685130', NULL, 7, 'বড়বাড়িয়া', 9, NULL, NULL, NULL, 'বড়বাড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2021040009, NULL, 9, NULL, 'মোছাঃ রাহিমা বেগম', 1, 'হামজা', NULL, NULL, 49, '1484312275', NULL, 7, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 2021040010, NULL, 10, NULL, 'মোছাঃ রিনা বেগম', 1, 'আলা উদ্দিন', NULL, NULL, 42, '2833789536', NULL, 7, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2021040011, NULL, 11, NULL, 'মোছাঃ মর্জিনা বেগম', 1, 'ফেলাল উদ্দিন', NULL, NULL, 47, '3734050929', NULL, 6, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 2021040012, NULL, 12, NULL, 'মোছাঃ আনোয়ারা খাতুন', 1, 'আনোয়ার', NULL, NULL, 37, '4184154690', NULL, 5, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 2021040013, NULL, 13, NULL, 'মোছাঃ আনোয়ারা বেগম', 1, 'নুরুল ইসলাম', NULL, NULL, 35, '2385460593', NULL, 4, 'দক্ষীনপুর', 1, NULL, NULL, NULL, 'দক্ষীনপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 2021040014, NULL, 14, NULL, 'মোছাঃ আলেয়া বেগম', 1, '.', NULL, NULL, 43, '8233424608', NULL, 3, 'দিয়ারসাতুরিয়া', 3, NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 2021040015, NULL, 15, NULL, 'মোছাঃ আলোকা বেগম', 1, 'আমিরুল', NULL, NULL, 37, '5534156889', NULL, 6, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 2021040016, NULL, 16, NULL, 'মোছাঃ বিলকিছ বেগম', 1, 'লোকমান', NULL, NULL, 38, '5983849547', NULL, 4, 'কাদিমসাতুরিয়া', 4, NULL, NULL, NULL, 'কাদিমসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 2021040017, NULL, 17, NULL, 'মোছাঃ রেনুকা বেগম', 1, 'আঃসামাদ', NULL, NULL, 47, '5533542550', NULL, 6, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 2021040018, NULL, 18, NULL, 'কল্পনা রানী', 1, 'গিরিস চন্দ্র', NULL, NULL, 37, '5533729215', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 2021040019, NULL, 19, NULL, 'মোছাঃ সাগরী বেগম', 1, 'মনিরুল ইসলাম', NULL, NULL, 48, '6883427475', NULL, 4, 'চরতেবাড়িয়া', 4, NULL, NULL, NULL, 'চরতেবাড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 2021040020, NULL, 20, NULL, 'মোছাঃ মর্জিনা খাতুন', 1, 'তোফাজ্জল', NULL, NULL, 36, '7784408564', NULL, 6, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 2021040021, NULL, 21, NULL, 'মোছঃ ফুলজান বেগম', 1, 'ইয়াদ আলী', NULL, NULL, 40, '7783926236', NULL, 6, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 2021040022, NULL, 22, NULL, 'মোছাঃ সেলিনা খাতুন', 1, 'আফছার প্রামানিক', NULL, NULL, 30, '4655008748', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 2021040023, NULL, 23, NULL, 'মোছাঃ মাসুদা বেগম', 1, 'আলমগীর', NULL, NULL, 43, '7333576796', NULL, 5, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 2021040024, NULL, 24, NULL, 'মোছাঃ ফাতেমা খাতুন', 1, 'আবুল হোসেন', NULL, NULL, 40, '6433904858', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 2021040025, NULL, 25, NULL, 'মোছাঃ সন্ধামনি', 1, 'মোঃ বাদশা', NULL, NULL, 38, '7784032596', NULL, 2, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'দবিরের মোড়', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 2021040026, NULL, 26, NULL, 'মোছাঃ কহিনুর বেগম', 1, 'নিজাম উদ্দিন', NULL, NULL, 32, '6883728468', NULL, 6, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 2021040027, NULL, 27, NULL, 'মোছাঃ ফাহিনা খাতুন', 1, 'রফিকুল ইসলাম', NULL, NULL, 40, '5083725837', NULL, 7, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 2021040028, NULL, 28, NULL, 'সামীমা', 1, 'আজাদ', NULL, NULL, 34, '9567957064', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 2021040029, NULL, 29, NULL, 'মোছাঃ লাবনী আক্তার', 1, '.', NULL, NULL, 25, '5504809350', NULL, 7, 'বাসুপাড়া', 8, NULL, NULL, NULL, 'বাসপাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 2021040030, NULL, 30, NULL, 'মোছাঃ রওশনারা', 1, 'রস্তম আলী', NULL, NULL, 37, '5083525567', NULL, 4, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 2021040031, NULL, 31, NULL, 'মোছাঃ হাসিনা বেগম', 1, '.', NULL, NULL, 43, '2383440001', NULL, 3, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 2021040032, NULL, 32, NULL, 'মোছাঃ মইফুল', 1, 'সোলেমান', NULL, NULL, 29, '8207766398', NULL, 3, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 2021040033, NULL, 33, NULL, 'মোসাঃ আমেনা খাতুন', 1, 'তফিজ উদ্দিন', NULL, NULL, 45, '1022591653', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 2021040034, NULL, 34, NULL, 'মোছাঃ আবেদা বেগম', 1, 'শহিদুল', NULL, NULL, 49, '3733422897', NULL, 2, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 2021040035, NULL, 35, NULL, 'মোছাঃ ফাতেমা খাতুন', 1, 'রুমা', NULL, NULL, 48, '7333541691', NULL, 2, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 2021040036, NULL, 36, NULL, 'মোছাঃ রাজিয়া খাতুন', 1, 'রাজু', NULL, NULL, 48, '3733824001', NULL, 7, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 2021040037, NULL, 37, NULL, 'মোছাঃ নূরুন্নাহার বেগম', 1, 'আব্দুর রশিদ', NULL, NULL, 43, '9133642596', NULL, 3, 'দক্ষিণপুর', 1, NULL, NULL, NULL, 'দক্ষিণপুুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 2021040038, NULL, 38, NULL, 'মোছাঃ তাহেরা খাতুন', 1, 'বিউটি', NULL, NULL, 47, '1483941868', NULL, 5, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 2021040039, NULL, 39, NULL, 'শিমু আক্তার', 1, 'আবুল', NULL, NULL, 39, '3723733774', NULL, 3, 'কাঠালবাড়ীয়া', 6, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 2021040040, NULL, 40, NULL, 'মোছাঃ রুমা খাতুন', 1, 'সেন্টু', NULL, NULL, 24, '5108372516', NULL, 5, 'পার আটঘরিয়া', 5, NULL, NULL, NULL, 'আটঘরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 2021040041, NULL, 41, NULL, 'সেলিনা', 1, 'রাজ্জাক', NULL, NULL, 33, '5539696889', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 2021040042, NULL, 42, NULL, 'মোছাঃ সুফিয়া খাতুন', 1, '.', NULL, NULL, 35, '1483644934', NULL, 3, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 2021040043, NULL, 43, NULL, 'মোছাঃ কমলী বেগম', 1, 'কমলী বেগম', NULL, NULL, 48, '5533399555', NULL, 2, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 2021040044, NULL, 44, NULL, 'মোছাঃ তাছলিমা খাতুন', 1, 'শাহ আলম', NULL, NULL, 22, '9151680577', NULL, 3, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 2021040045, NULL, 45, NULL, 'মোছাঃ সোহাগী বেগম', 1, 'রহমত আলী', NULL, NULL, 33, '5083625243', NULL, 3, 'দক্ষিণপুর', 1, NULL, NULL, NULL, 'দক্ষিণপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 2021040046, NULL, 46, NULL, 'মোছাঃ লিজা খাতুন', 1, '.', NULL, NULL, 33, '6857478215', NULL, 4, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 2021040047, NULL, 47, NULL, 'মোছাঃ রাজিয়া খাতুন', 1, 'মোঃ তাইজুল ইসলাম', NULL, NULL, 45, '3733955722', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া মোল্লাপাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 2021040048, NULL, 48, NULL, 'মোছাঃ মল্লিকা খাতুন', 1, 'সােদকুল', NULL, NULL, 38, '5533930581', NULL, 4, 'পার আটঘড়িয়া', 5, NULL, NULL, NULL, 'পার আটঘড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 2021040049, NULL, 49, NULL, 'মোছাঃ নুরবানু বেগম', 1, 'শাহিন', NULL, NULL, 26, '7807691741', NULL, 3, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 2021040050, NULL, 50, NULL, 'মোছাঃ মাবিয়া খাতুন', 1, 'আজমত আলী', NULL, NULL, 40, '8233431116', NULL, 5, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 2021040051, NULL, 51, NULL, 'মোছাঃ আনোয়ারা বেগম', 1, 'আব্দুর রশিদ', NULL, NULL, 50, '1483653042', NULL, 5, 'হয়বতপুর', 5, NULL, NULL, NULL, 'হয়বতপুর উত্তর পারা', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 2021040052, NULL, 52, NULL, 'মোছা বুলবুলি বেগম', 1, 'মোঃ শামসুল হক', NULL, NULL, 38, '6883725159', NULL, 5, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খামার পাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 2021040053, NULL, 53, NULL, 'মোছাঃ মনজু বেগম', 1, 'হাসান আলী', NULL, NULL, 49, '2834298420', NULL, 3, 'কাঠালবাড়ীয়া', 6, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 2021040054, NULL, 54, NULL, 'মোছাঃ নাজমা খাতুন', 1, 'আমিনুল', NULL, NULL, 24, '4201710318', NULL, 4, 'খোলাবাড়িয়া', 6, NULL, NULL, NULL, 'খোলাবাড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 2021040055, NULL, 55, NULL, 'মোছাঃ ফুলভানু', 1, 'পার আটঘড়িয়া', NULL, NULL, 40, '2833923754', NULL, 4, 'পার আটঘড়িয়া', 5, NULL, NULL, NULL, 'পার আটঘড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 2021040056, NULL, 56, NULL, 'মোছাঃ বেলি বেগম', 1, 'ইসলাম', NULL, NULL, 38, '4634322681', NULL, 4, 'দরাপপুর', 8, NULL, NULL, NULL, 'দরাপপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 2021040057, NULL, 57, NULL, 'মোছাঃ মনোয়ারা বেগম', 1, 'ইউসুফ আলী', NULL, NULL, 43, '7784175858', NULL, 4, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 2021040058, NULL, 58, NULL, 'মোছাঃ নাছরিন বেগম', 1, 'আজিজুল', NULL, NULL, 31, '5534293633', NULL, 4, 'দরাপপুর', 8, NULL, NULL, NULL, 'দরাপপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 2021040059, NULL, 59, NULL, 'মোছাঃ বিলকিছ বেগম', 1, 'আঃ জব্বার', NULL, NULL, 34, '5984068394', NULL, 4, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 2021040060, NULL, 60, NULL, 'হাসিনা বেগম', 1, 'বজলু', NULL, NULL, 48, '9140807455', NULL, 4, 'দিয়ার সাতুরিয়া', 4, NULL, NULL, NULL, 'দিয়ার সাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 2021040061, NULL, 61, NULL, 'শিখা রাণী সরকার', 1, 'বিনয়', NULL, NULL, 40, '7333843048', NULL, 4, 'কাদিম সাতুরিয়া', 4, NULL, NULL, NULL, 'কাদিম সাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 2021040062, NULL, 62, NULL, 'মোছাঃ নাদিরা খাতুন', 1, 'রুহল আমিন', NULL, NULL, 23, '7351763854', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 2021040063, NULL, 63, NULL, 'মোছাঃ কুলসুম বেগম', 1, 'রমজান আলী', NULL, NULL, 37, '1484033038', NULL, 6, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 2021040064, NULL, 64, NULL, 'মোছাঃ সাজেদা বেগম', 1, 'আঃ বাছেদ', NULL, NULL, 36, '3733934677', NULL, 4, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 2021040065, NULL, 65, NULL, 'মোছাঃ জাহানারা বেগম', 1, 'হারুনুর রশিদ', NULL, NULL, 33, '8684445342', NULL, 8, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 2021040066, NULL, 66, NULL, 'মোছাঃ ফাতেমা বেগম', 1, 'হারুন', NULL, NULL, 42, '5083910611', NULL, 5, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 2021040067, NULL, 67, NULL, 'মোছাঃ সেলিনা বেগম', 1, 'জামাল', NULL, NULL, 38, '6434174022', NULL, 5, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 2021040068, NULL, 68, NULL, 'মোছাঃ ফুলমালা খাতুন', 1, 'রজব আলী', NULL, NULL, 44, '2383561871', NULL, 4, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 2021040069, NULL, 69, NULL, 'মোছাঃ জাহান্নারা বেগম', 1, 'মেরাজ আলী', NULL, NULL, 41, '9133429515', NULL, 6, 'দিয়ার সাতুরিয়া', 3, NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 2021040070, NULL, 70, NULL, 'মোছাঃ সাজেদা খাতুন', 1, 'সামছুজ্জামান', NULL, NULL, 30, '8683767837', NULL, 4, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 2021040071, NULL, 71, NULL, 'মোছাঃ চম্পা বেগম', 1, 'আলী হোসেন', NULL, NULL, 28, '2808005397', NULL, 4, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 2021040072, NULL, 72, NULL, 'মোছাঃ ফরিদা বেগম', 1, 'শাহীন আলম', NULL, NULL, 33, '3283543175', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 2021040073, NULL, 73, NULL, 'মোছাঃ আলেয়া বেগম', 1, 'মোঃনাসির উদ্দিন', NULL, NULL, 39, '6434174162', NULL, 6, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর মন্ডল পাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 2021040074, NULL, 74, NULL, 'মোছাঃ রওশন আরা বেগম', 1, 'মোঃ আব্দুল খালেক', NULL, NULL, 35, '8233413452', NULL, 5, 'চৌরী,', 1, NULL, NULL, NULL, 'চৌরী,', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 2021040075, NULL, 75, NULL, 'মোছাঃ আখি খাতুন', 1, 'সোহাগ হোসেন', NULL, NULL, 23, '4657160216', NULL, 3, 'কাদিমসাতুরিয়া', 4, NULL, NULL, NULL, 'কাদিমসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 2021040076, NULL, 76, NULL, 'মোছাঃ রোজিনা বেগম', 1, 'মোঃ বাবু', NULL, NULL, 41, '5083508076', NULL, 5, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 2021040077, NULL, 77, NULL, 'মোছাঃ মাবিয়া বেগম', 1, 'ফারুক হোসেন', NULL, NULL, 36, '8233411696', NULL, 2, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 2021040078, NULL, 78, NULL, 'মোছাঃ হালিমা খাতুন', 1, 'বকুল', NULL, NULL, 42, '3283663015', NULL, 5, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 2021040079, NULL, 79, NULL, 'মোছাঃ হালিমা বেগম', 1, 'মেহেরুল', NULL, NULL, 37, '9133654336', NULL, 8, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 2021040080, NULL, 80, NULL, 'মোছাঃ কহিনুর খাতুন', 1, 'আব্দুল কুদ্দুস', NULL, NULL, 33, '4622698449', NULL, 3, 'হযবতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 2021040081, NULL, 81, NULL, 'মোছাঃ শাহানারা বেগম', 1, 'ছাবের উদ্দিন', NULL, NULL, 46, '6433398879', NULL, 1, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 2021040082, NULL, 82, NULL, 'মোছাঃ নুরবানু', 1, 'তছলিম মিয়া', NULL, NULL, 38, '8234179565', NULL, 5, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 2021040083, NULL, 83, NULL, 'মোছাঃ জমেলা খাতুন', 1, 'জিন্নত আলী', NULL, NULL, 47, '7784148749', NULL, 4, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 2021040084, NULL, 84, NULL, 'মোছাঃ আছিয়া বেগম', 1, 'শফিক হোসেন', NULL, NULL, 37, '7333943707', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 2021040085, NULL, 85, NULL, 'মোছাঃ শাহিদা খাতুন', 1, 'আহসান', NULL, NULL, 42, '1934371707', NULL, 2, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 2021040086, NULL, 86, NULL, 'নিলু সরকার', 1, 'আঃ মজিদ', NULL, NULL, 26, '5509944285', NULL, 4, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 2021040087, NULL, 87, NULL, 'মোছাঃ রিনা খাতুন', 1, 'মোঃনুরুল ইসলাম', NULL, NULL, 50, '6898649063', NULL, 5, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর পশ্চিম পাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 2021040088, NULL, 88, NULL, 'মোছাঃ মর্জিনা খাতুন', 1, 'মোঃ মুহিন', NULL, NULL, 33, '6884398436', NULL, 4, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 2021040089, NULL, 89, NULL, 'মোছাঃ মুঞ্জু বেগম', 1, 'আহসান আলী', NULL, NULL, 47, '6434146301', NULL, 4, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 2021040090, NULL, 90, NULL, 'মোছাঃ রুবিয়া বেগম', 1, 'নুর মোহাম্মদ', NULL, NULL, 48, '5083634880', NULL, 7, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 2021040091, NULL, 91, NULL, 'মোছাঃ রুনা খাতুন', 1, 'সুমন', NULL, NULL, 30, '5094194197', NULL, 5, 'পার আটঘরিয়া', 5, NULL, NULL, NULL, 'পার আটঘরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 2021040092, NULL, 92, NULL, 'মোছাঃ বিউটি খাতুন', 1, 'নূর আলম', NULL, NULL, 28, '4646774481', NULL, 5, 'পার আটঘরিয়া', 5, NULL, NULL, NULL, 'পার আটঘরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 2021040093, NULL, 93, NULL, 'মোছাঃ পারভীন বেগম', 1, 'লিটন মিয়া', NULL, NULL, 34, '3733436350', NULL, 3, 'দিয়ারসাতুরিয়া', 3, NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 2021040094, NULL, 94, NULL, 'মোছাঃ মেহের বানু', 1, 'দমিজ উদ্দিন', NULL, NULL, 32, '4633759875', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 2021040095, NULL, 95, NULL, 'মোছাঃ শারমিন খাতুন', 1, 'নুরে আলম', NULL, NULL, 21, '8254975363', NULL, 2, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 2021040096, NULL, 96, NULL, 'মোছাঃ সাদিয়া ইয়াসমিন', 1, 'রান্ট', NULL, NULL, 22, '6005002677', NULL, 5, 'শেখের হাট', 8, NULL, NULL, NULL, 'শেখের হাট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 2021040097, NULL, 97, NULL, 'মোছাঃ আছমা খাতুন', 1, 'ফারুক', NULL, NULL, 33, '6433404610', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 2021040098, NULL, 98, NULL, 'মোছাঃ রোকেয়া বেগম', 1, 'ইয়াকুব আলী', NULL, NULL, 47, '8233667065', NULL, 6, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 2021040099, NULL, 99, NULL, 'মোছাঃ কামরুন্নাহার সাথী', 1, 'কামরুন্নাহার', NULL, NULL, 31, '4633827631', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 2021040100, NULL, 100, NULL, 'মোছাঃ মর্জিনা খাতুন', 1, 'মনিরুল', NULL, NULL, 35, '8234336553', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 2021040101, NULL, 101, NULL, 'মোছাঃ ফাহিমা বেগম', 1, 'বিল্লাল', NULL, NULL, 32, '3734043502', NULL, 3, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 2021040102, NULL, 102, NULL, 'মোছাঃ মমেনা বেগম', 1, 'সেলিম হোসেন', NULL, NULL, 34, '1484176415', NULL, 5, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 2021040103, NULL, 103, NULL, 'সালমা বেগম', 1, 'মহসিন হোসেন', NULL, NULL, 28, '5539383132', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 2021040104, NULL, 104, NULL, 'মোছাঃ নিলুফা বেগম', 1, 'মহাম্মদ আলী', NULL, NULL, 35, '7333546047', NULL, 4, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 2021040105, NULL, 105, NULL, 'মোছাঃ ফাতেমা বেগম', 1, 'আলতাব', NULL, NULL, 36, '8683776994', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 2021040106, NULL, 106, NULL, 'মোছাঃ জুবেদা বেগম', 1, 'জাকির হোসেন', NULL, NULL, 49, '3733740363', NULL, 7, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 2021040107, NULL, 107, NULL, 'মরিয়ম', 1, 'মহসিন', NULL, NULL, 45, '6441326771', NULL, 5, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 2021040108, NULL, 108, NULL, 'মোছাঃ জুলেখা খাতুন যুথি', 1, 'সুবাহান', NULL, NULL, 30, '8232511934', NULL, 3, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 2021040109, NULL, 109, NULL, 'মোছাঃ বিলকিছ খাতুন', 1, 'মতিন', NULL, NULL, 28, '1483979371', NULL, 6, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 2021040110, NULL, 110, NULL, 'মোছাঃ হীরা বেগম', 1, 'সাইদুল', NULL, NULL, 37, '7784318805', NULL, 4, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 2021040111, NULL, 111, NULL, 'মোছাঃ আকতেজা খাতুন', 1, 'সোবাহান আলী', NULL, NULL, 49, '3733651974', NULL, 5, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 2021040112, NULL, 112, NULL, 'মোছাঃ নূরুন্নাহার', 1, 'আবুল', NULL, NULL, 37, '3283553703', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 2021040113, NULL, 113, NULL, 'মোছাঃ সাহিদা খাতুন', 1, '.', NULL, NULL, 34, '2833905645', NULL, 4, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 2021040114, NULL, 114, NULL, 'মোছাঃ মহিমা বেগম', 1, 'হানিফ', NULL, NULL, 37, '1934365790', NULL, 4, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 2021040115, NULL, 115, NULL, 'মোছাঃ জামেনা বেগম', 1, 'কাশেম', NULL, NULL, 40, '3283940496', NULL, 3, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 2021040116, NULL, 116, NULL, 'মোছাঃ নাজমা বেগম', 1, 'মকছেদ আলী', NULL, NULL, 38, '4633694346', NULL, 3, 'কাদিমসাতুরিয়া', 4, NULL, NULL, NULL, 'কাদিমসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 2021040117, NULL, 117, NULL, 'মোছাঃ শাহিনুর খাতুন', 1, 'খাইরুল', NULL, NULL, 33, '3283535478', NULL, 1, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 2021040118, NULL, 118, NULL, 'মোছাঃ রত্না খাতুন', 1, 'রনি', NULL, NULL, 23, '4665010379', NULL, 3, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 2021040119, NULL, 119, NULL, 'মোছাঃ সাপিয়া বেগম', 1, 'আজিম', NULL, NULL, 27, '3301726737', NULL, 5, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 2021040120, NULL, 120, NULL, 'মোছাঃ আমেনা খাতুন', 1, 'আবু কালাম', NULL, NULL, 35, '4638018442', NULL, 4, 'পার আটঘড়িয়া', 5, NULL, NULL, NULL, 'পার আটঘড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 2021040121, NULL, 121, NULL, 'মোছাঃ মমতাজ বেগম', 1, 'মকবুল হোসেন', NULL, NULL, 43, '5083507599', NULL, 4, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীিপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 2021040122, NULL, 122, NULL, 'মোছাঃ সাহিদা খাতুন', 1, 'সহিদুল', NULL, NULL, 35, '9566755337', NULL, 5, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 2021040123, NULL, 123, NULL, 'মোসাঃ জেসমিন আক্তার আফরোজা', 1, 'ওবাইদুল', NULL, NULL, 33, '19872617239160000', NULL, 5, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 2021040124, NULL, 124, NULL, 'মোসাঃ মরজিনা বেগম', 1, 'হাসেন', NULL, NULL, 35, '6887073242', NULL, 5, 'ইব্রাহিম পুর', 5, NULL, NULL, NULL, 'ইব্রাহিম পুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 2021040125, NULL, 125, NULL, 'মোছাঃ রাহেলা খাতুন', 1, 'মজিবর', NULL, NULL, 28, '4655011254', NULL, 5, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 2021040126, NULL, 126, NULL, 'মোছাঃ নাছিমা বেগম', 1, 'সামসার', NULL, NULL, 32, '9133530577', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 2021040127, NULL, 127, NULL, 'শ্যামলী রানী', 1, 'পলাশ পাহান', NULL, NULL, 34, '2383753429', NULL, 4, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 2021040128, NULL, 128, NULL, 'মোছাঃ হুসনে আরা বেগম', 1, 'নজরুল', NULL, NULL, 42, '6433410138', NULL, 6, 'দিয়ারসাতুরিয়া', 3, NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 2021040129, NULL, 129, NULL, 'মোছাঃ হালিমা বেগম', 1, 'মোকােদ্দেস', NULL, NULL, 47, '19736916365271500', NULL, 2, 'বাসুপাড়া', 8, NULL, NULL, NULL, 'বাসুপাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 2021040130, NULL, 130, NULL, 'মোছাঃ ফাতেমা বেগম', 1, 'আবুল হোসেন', NULL, NULL, 35, '7310590141', NULL, 5, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 2021040131, NULL, 131, NULL, 'মোছাঃ আছিয়া খাতুন', 1, 'মুসা', NULL, NULL, 31, '3750601514', NULL, 4, 'দক্ষিণপুর', 1, NULL, NULL, NULL, 'দক্ষিণপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 2021040132, NULL, 132, NULL, 'মোছাঃ জামিনা খাতুন', 1, 'রফিকুল ইসলাম', NULL, NULL, 38, '3283426769', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 2021040133, NULL, 133, NULL, 'মোছাঃ বেলী খাতুন', 1, 'সাজাহান আলী', NULL, NULL, 33, '5083787159', NULL, 5, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 2021040134, NULL, 134, NULL, 'মোছাঃ ফরিদা বেগম', 1, 'মনির', NULL, NULL, 42, '3733940997', NULL, 4, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 2021040135, NULL, 135, NULL, 'মোছাঃ নুরজাহান বেগম', 1, 'রাইতুল', NULL, NULL, 32, '5084321412', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 2021040136, NULL, 136, NULL, 'মোছাঃ খালেদা আক্তার লিপি', 1, 'আঃ আজিজ', NULL, NULL, 36, '2383425754', NULL, 5, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 2021040137, NULL, 137, NULL, 'মোছাঃ রেহেনা খাতুন', 1, 'কালাম', NULL, NULL, 47, '3734170859', NULL, 3, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 2021040138, NULL, 138, NULL, 'মোছাঃ রোজিনা বেগম', 1, 'পিয়ার আলী', NULL, NULL, 33, '5983972158', NULL, 5, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 2021040139, NULL, 139, NULL, 'মোছাঃ জুলেখা বেগম', 1, 'সামাদ', NULL, NULL, 35, '7334368433', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 2021040140, NULL, 140, NULL, 'মোছাঃ ফজিলা বেগম', 1, 'ইসমাইল', NULL, NULL, 48, '6433909196', NULL, 2, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 2021040141, NULL, 141, NULL, 'মোছাঃ নাজমুন নাহার', 1, 'তাহের ভূইয়া', NULL, NULL, 35, '9133418021', NULL, 2, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 2021040142, NULL, 142, NULL, 'মোছাঃ রিপালী বেগম', 1, 'আব্দুল বারিক', NULL, NULL, 45, '8234323627', NULL, 6, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 2021040143, NULL, 143, NULL, 'মোছাঃ সাবিনা খাতুন', 1, 'আয়েশা', NULL, NULL, 36, '8233662454', NULL, 3, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 2021040144, NULL, 144, NULL, 'মোছাঃ রওশনারা', 1, 'আঃ সালাম', NULL, NULL, 40, '9133409194', NULL, 7, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 2021040145, NULL, 145, NULL, 'মোছাঃ আয়েশা আক্তার', 1, '.', NULL, NULL, 33, '3733424737', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 2021040146, NULL, 146, NULL, 'মোছাঃ শেফালী বেগম', 1, 'শিমুল', NULL, NULL, 41, '1483938492', NULL, 3, 'পার আটঘড়িয়া', 5, NULL, NULL, NULL, 'পার আটঘড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 2021040147, NULL, 147, NULL, 'মোছাঃ জোছনা বেগম', 1, 'ওহিদুল্লাহ', NULL, NULL, 46, '6883406537', NULL, 2, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 2021040148, NULL, 148, NULL, 'মোছাঃ নাসরিন', 1, 'আকরাম হোসেন', NULL, NULL, 26, '2399309661', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 2021040149, NULL, 149, NULL, 'মোছাঃ মরিয়ম বেগম', 1, 'মজনু মিয়া', NULL, NULL, 42, '5083506922', NULL, 4, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 2021040150, NULL, 150, NULL, 'মোছাঃ রওশনারা খাতুন', 1, 'রহিম', NULL, NULL, 34, '6884147460', NULL, 9, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 2021040151, NULL, 151, NULL, 'মোছাঃ সিমা খাতুন', 1, 'বড়বাড়ীয়া', NULL, NULL, 31, '19896916365273000', NULL, 4, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়াড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 2021040152, NULL, 152, NULL, 'মোছাঃ রাবিয়া বেগম', 1, 'নুরুল আমিন', NULL, NULL, 42, '7783407864', NULL, 3, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 2021040153, NULL, 153, NULL, 'ফেন্সী', 1, 'আব্দুল্লাহ', NULL, NULL, 32, '9155024665', NULL, 5, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 2021040154, NULL, 154, NULL, 'মোছাঃ লাইলী বেগম', 1, 'আনোয়ার', NULL, NULL, 33, '9566755873', NULL, 1, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 2021040155, NULL, 155, NULL, 'মোছাঃ সোহাগী বেগম', 1, '.', NULL, NULL, 37, '7784403482', NULL, 3, 'শেখের হাট', 8, NULL, NULL, NULL, 'শেখের হাট', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 2021040156, NULL, 156, NULL, 'মোছাঃ আকলিমা বেগম', 1, 'কাঠালবাড়ীয়া', NULL, NULL, 39, '9134310383', NULL, 4, 'কাঠালবাড়ীয়া', 6, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 2021040157, NULL, 157, NULL, 'মোছাঃ রাজিয়া খাতুন', 1, 'আওয়াল', NULL, NULL, 37, '6433907315', NULL, 4, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 2021040158, NULL, 158, NULL, 'মোছাঃ জেয়াছমীন খাতুন', 1, 'মহরম', NULL, NULL, 32, '8233638975', NULL, 4, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 2021040159, NULL, 159, NULL, 'মোছাঃ রিনা বেগম', 1, 'ইউসুব আলী', NULL, NULL, 36, '2383660830', NULL, 2, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 2021040160, NULL, 160, NULL, 'মোছাঃ আজেদা বেগম', 1, 'কাদিমসাতুরিয়া', NULL, NULL, 35, '2383830052', NULL, 6, 'কাদিমসাতুুরিয়া', 4, NULL, NULL, NULL, 'কাদিমসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 2021040161, NULL, 161, NULL, 'মোছাঃ শাহানাজ বেগম', 1, '.', NULL, NULL, 36, '5530457067', NULL, 3, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হযবতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 2021040162, NULL, 162, NULL, 'মোছাঃ রেহেনা বেগম', 1, 'নজরুল', NULL, NULL, 25, '4201707678', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 2021040163, NULL, 163, NULL, 'মোছাঃ আসমা বেগম', 1, 'ইমান হোসেন', NULL, NULL, 34, '5083916196', NULL, 5, 'পার আটঘড়িয়া', 5, NULL, NULL, NULL, 'পার আটঘড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 2021040164, NULL, 164, NULL, 'লুৎফুন নাহার', 1, 'আজিজুল', NULL, NULL, 26, '1507749545', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 2021040165, NULL, 165, NULL, 'মোছাঃ শাহিনা খাতুন', 1, 'কাজল', NULL, NULL, 26, '6451705666', NULL, 4, 'দিয়ারসাতুরিয়া', 2, NULL, NULL, NULL, 'দিয়ারসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 2021040166, NULL, 166, NULL, 'মোছাঃ সুজেদা খাতুন', 1, 'আলম হোসেন', NULL, NULL, 30, '4186597482', NULL, 4, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 2021040167, NULL, 167, NULL, 'মোছাঃ ফাতেমা খাতুন', 1, 'হানিফ', NULL, NULL, 34, '3284418419', NULL, 3, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 2021040168, NULL, 168, NULL, 'মোছাঃ ফরিদা খাতুন', 1, 'আবু হানিফ', NULL, NULL, 35, '4183403601', NULL, 4, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 2021040169, NULL, 169, NULL, 'মোছাঃ সুফিয়া খাতুন', 1, 'হযরত আলী', NULL, NULL, 44, '9567147799', NULL, 6, 'খোলাবাড়ীয়া', 6, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 2021040170, NULL, 170, NULL, 'মোছাঃ মিনা বেগম', 1, 'নবীনুর হোসেন', NULL, NULL, 31, '9121225859', NULL, 4, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 2021040171, NULL, 171, NULL, 'মোচাঃ ফরিদা বেগম', 1, 'আসলাম আলী', NULL, NULL, 33, '6884331908', NULL, 4, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 2021040172, 1, 172, 'img/default/profile.png', 'মোছাঃ অযুফা খাতুন', 1, '.', NULL, '0000-00-00', 40, '1934371707', NULL, 1, 'গাজীপুর', 1, '', '', '', 'গাজীপুর', NULL, '2021-05-05', NULL, NULL, NULL, 9, 1, 1, NULL, NULL, NULL, NULL, 5, '2021-05-11 18:29:31', '37.111.239.207'),
(173, 2021040173, NULL, 173, NULL, 'মোছাঃ মাহমুদা', 1, 'শহিদুল', NULL, NULL, 28, '6007707281', NULL, 3, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 2021040174, NULL, 174, NULL, 'মোছাঃ মহিমা বেগম', 1, 'শহিদৃুল ইসলাম', NULL, NULL, 38, '6433531768', NULL, 4, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 2021040175, NULL, 175, NULL, 'মোছাঃ নিলুফা বেগম', 1, 'আব্দুল্লা আল মামুন', NULL, NULL, 40, '6883810845', NULL, 4, 'কদিমসাতুরিয়া', 4, NULL, NULL, NULL, 'কাদিমসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 2021040176, NULL, 176, NULL, 'মোছাঃ শেলিনা বেগম', 1, '.', NULL, NULL, 45, '5959736173', NULL, 4, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 2021040177, NULL, 177, NULL, 'মোছাঃ ছেরেজান বেগম', 1, 'ঝড়ু মিয়া', NULL, NULL, 49, '7334346892', NULL, 6, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 2021040178, NULL, 178, NULL, 'তাসলিমা খাতুন', 1, 'সমজান আলী', NULL, NULL, 31, '1029379888', NULL, 5, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 2021040179, NULL, 179, NULL, 'মোছাঃ জাহানারা খাতুন', 1, 'জাহেদ আলী', NULL, NULL, 22, '5104959225', NULL, 4, 'ইব্রাহিমপুর', 5, NULL, NULL, NULL, 'ইব্রাহিমপুর,লক্ষীপুর হাট, নাটোর সদর, নাটোর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 2021040180, NULL, 180, NULL, 'মোছাঃ মালেকা খাতুন', 1, 'মারজুল', NULL, NULL, 45, '9566756632', NULL, 4, 'দক্ষিণপুর', 1, NULL, NULL, NULL, 'দক্ষিণপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 2021040181, NULL, 181, NULL, 'মোসাঃ সোনালী খাতুন', 1, 'মুরশিদ', NULL, NULL, 20, '20006916365000000', NULL, 5, 'কাদিমসাতুরিয়া', 4, NULL, NULL, NULL, 'কাদিমসাতুরিয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 2021040182, NULL, 182, NULL, 'মোছাঃ আয়েশা বেগম', 1, 'আঃ মোতালেব', NULL, NULL, 41, '19786916365269400', NULL, 3, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 2021040183, NULL, 183, NULL, 'মোছাঃ মুর্শিদা খাতুন', 1, 'রাজু', NULL, NULL, 21, '5108158733', NULL, 2, 'হয়বতপুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 2021040184, NULL, 184, NULL, 'মোছাঃ শাহানাজ', 1, 'মোঃ আহাদ আলী', NULL, NULL, 41, '8234313289', NULL, 3, 'কাঠালবাড়ীয়া', 6, NULL, NULL, NULL, 'দবিরের মোড়', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 2021040185, NULL, 185, NULL, 'মোছাঃ মাসুদা আক্তার', 1, 'মহসিন', NULL, NULL, 21, '6007672543', NULL, 3, 'হয়বত পুর', 3, NULL, NULL, NULL, 'হয়বতপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 2021040186, NULL, 186, NULL, 'মোছাঃ নাছিমা খাতুন', 1, 'সেকেন্দার', NULL, NULL, 40, '4183638677', NULL, 4, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 2021040187, NULL, 187, NULL, 'মোছাঃ ছোলেমা খাতুন', 1, 'মোজাম্মেল', NULL, NULL, 39, '9133641317', NULL, 1, 'গাজীপুর', 1, NULL, NULL, NULL, 'গাজীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 2021040188, NULL, 188, NULL, 'মোছাঃ আজমীয়ারা', 1, 'সবুজ আলী', NULL, NULL, 21, '6908501536', NULL, 7, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 2021040189, NULL, 189, NULL, 'মোছাঃ রাশিদা খাতুন', 1, 'সাহাবুদ্দিন', NULL, NULL, 45, '5084293645', NULL, 5, 'কাঠালবাড়ীয়া', 6, NULL, NULL, NULL, 'দবিরের মোড়', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 2021040190, NULL, 190, NULL, 'লায়লা খাতুন', 1, 'তারিকুল', NULL, NULL, 20, '1957819954', NULL, 4, 'লক্ষীপুর', 2, NULL, NULL, NULL, 'লক্ষীপুর', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 2021040191, NULL, 191, NULL, 'মোছাঃ নাজমা বেগম', 1, 'আবুল', NULL, NULL, 42, '9133945171', NULL, 1, 'কাঠালবাড়ীয়া', 8, NULL, NULL, NULL, 'কাঠালবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 2021040192, NULL, 192, NULL, 'মোছাঃ জয়নব', 1, 'মোস্তফা', NULL, NULL, 46, '5984430339', NULL, 3, 'বাসুপাড়া', 8, NULL, NULL, NULL, 'বাসুপাড়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 2021040193, NULL, 193, NULL, 'মোছাঃ আদরী খাতুন', 1, 'লিমন', NULL, NULL, 28, '3744637996', NULL, 5, 'বড়বাড়ীয়া', 9, NULL, NULL, NULL, 'বড়বাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 2021040194, NULL, 194, NULL, 'মোছাঃ মর্জিনা বেগম', 1, 'রফিক', NULL, NULL, 35, '9566767548', NULL, 4, 'চরতেবাড়ীয়া', 4, NULL, NULL, NULL, 'চরতেবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 2021040195, NULL, 195, NULL, 'মোছাঃ নাজমুন্নাহার', 1, 'হাসেম আলী', NULL, NULL, 33, '9566814555', NULL, 6, 'চৌরী', 1, NULL, NULL, NULL, 'চৌরী', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 2021040196, NULL, 196, NULL, 'মোছাঃ শাহানাজ বেগম', 1, 'শাহ আলম', NULL, NULL, 46, '2833905744', NULL, 5, 'খোলাবাড়ীয়া', 7, NULL, NULL, NULL, 'খোলাবাড়ীয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 2021040197, NULL, 197, NULL, 'মোছাঃ রহিমা বেগম', 1, 'চান মিয়া', NULL, NULL, 40, '1933986885', NULL, 4, 'পার আটঘড়িয়া', 5, NULL, NULL, NULL, 'পার আটঘড়িয়া', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_vgd_circle_setup`
--

CREATE TABLE `food_vgd_circle_setup` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `issue_dt` date DEFAULT NULL,
  `distributes_dt` date DEFAULT NULL,
  `food_type` tinyint(1) UNSIGNED DEFAULT 1 COMMENT '1 = চাল, 2= Others',
  `food_amount` int(11) UNSIGNED DEFAULT 30,
  `implement_authority` int(11) UNSIGNED DEFAULT NULL,
  `responsibile_officer` int(11) UNSIGNED DEFAULT NULL,
  `responsibile_uno` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=deleted, 1=active 2=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_vgd_circle_setup`
--

INSERT INTO `food_vgd_circle_setup` (`id`, `title`, `issue_dt`, `distributes_dt`, `food_type`, `food_amount`, `implement_authority`, `responsibile_officer`, `responsibile_uno`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`, `is_active`) VALUES
(1, 'ভিজিটি চক্র ২০২১-২০২২', '2021-01-21', '2021-01-21', 1, 30, 7, 8, 9, NULL, '2021-04-10 19:25:49', NULL, 1, '2021-12-28 19:00:42', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_vgd_receiver_info`
--

CREATE TABLE `food_vgd_receiver_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `vgd_circle_id` int(11) UNSIGNED DEFAULT NULL,
  `vgd_program_id` int(11) UNSIGNED DEFAULT NULL,
  `applicant_id` int(11) UNSIGNED DEFAULT NULL,
  `receve_type` tinyint(3) UNSIGNED DEFAULT 1 COMMENT '1 = খাদ্য শস্য, 2 = Others ',
  `receive_amount` int(11) DEFAULT NULL,
  `receive_dt` date DEFAULT NULL,
  `implement_authority_id` int(11) UNSIGNED DEFAULT NULL,
  `responsible_officer_id` int(11) UNSIGNED DEFAULT NULL,
  `responsible_uno_id` int(11) UNSIGNED DEFAULT NULL,
  `log_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_vgd_receiver_info`
--

INSERT INTO `food_vgd_receiver_info` (`id`, `vgd_circle_id`, `vgd_program_id`, `applicant_id`, `receve_type`, `receive_amount`, `receive_dt`, `implement_authority_id`, `responsible_officer_id`, `responsible_uno_id`, `log_id`, `is_active`, `created_by`, `created_time`, `created_ip`, `updated_by`, `updated_time`, `updated_ip`) VALUES
(1, 1, 2, 1, 1, 30, '2021-04-19', 7, 8, 9, 135, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(2, 1, 2, 2, 1, 30, '2021-04-13', 7, 8, 9, 102, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(3, 1, 2, 3, 1, 30, '2021-04-19', 7, 8, 9, 130, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(4, 1, 2, 93, 1, 30, '2021-04-13', 7, 8, 9, 128, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(5, 1, 2, 119, 1, 30, '2021-04-13', 7, 8, 9, 103, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(6, 1, 2, 124, 1, 30, '2021-04-19', 7, 8, 9, 129, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(7, 1, 2, 131, 1, 30, '2021-04-13', 7, 8, 9, 124, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(8, 1, 2, 179, 1, 30, '2021-04-13', 7, 8, 9, 100, 1, NULL, '2021-04-25 14:47:02', '180.211.243.250', NULL, NULL, NULL),
(9, 1, 2, 8, 1, 30, '2021-04-13', 7, 8, 9, 146, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(10, 1, 2, 15, 1, 30, '2021-04-13', 7, 8, 9, 148, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(11, 1, 2, 36, 1, 30, '2021-04-13', 7, 8, 9, 142, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(12, 1, 2, 62, 1, 30, '2021-04-13', 7, 8, 9, 147, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(13, 1, 2, 67, 1, 30, '2021-04-13', 7, 8, 9, 139, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(14, 1, 2, 70, 1, 30, '2021-04-13', 7, 8, 9, 138, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(15, 1, 2, 87, 1, 30, '2021-04-13', 7, 8, 9, 143, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(16, 1, 2, 148, 1, 30, '2021-04-13', 7, 8, 9, 140, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(17, 1, 2, 152, 1, 30, '2021-04-13', 7, 8, 9, 149, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(18, 1, 2, 160, 1, 30, '2021-04-13', 7, 8, 9, 141, 1, NULL, '2021-04-25 14:59:32', '180.211.243.250', NULL, NULL, NULL),
(19, 1, 2, 96, 1, 30, '2021-04-13', 7, 8, 9, 164, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(20, 1, 2, 98, 1, 30, '2021-04-13', 7, 8, 9, 161, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(21, 1, 2, 113, 1, 30, '2021-04-13', 7, 8, 9, 163, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(22, 1, 2, 155, 1, 30, '2021-04-13', 7, 8, 9, 165, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(23, 1, 2, 165, 1, 30, '2021-04-13', 7, 8, 9, 158, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(24, 1, 2, 171, 1, 30, '2021-04-13', 7, 8, 9, 166, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(25, 1, 2, 189, 1, 30, '2021-04-13', 7, 8, 9, 162, 1, NULL, '2021-04-25 14:59:54', '180.211.243.250', NULL, NULL, NULL),
(26, 1, 2, 6, 1, 30, '2021-04-13', 7, 8, 9, 176, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(27, 1, 2, 7, 1, 30, '2021-04-13', 7, 8, 9, 177, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(28, 1, 2, 14, 1, 30, '2021-04-13', 7, 8, 9, 184, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(29, 1, 2, 20, 1, 30, '2021-04-13', 7, 8, 9, 167, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(30, 1, 2, 26, 1, 30, '2021-04-13', 7, 8, 9, 173, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(31, 1, 2, 29, 1, 30, '2021-04-13', 7, 8, 9, 178, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(32, 1, 2, 38, 1, 30, '2021-04-13', 7, 8, 9, 174, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(33, 1, 2, 85, 1, 30, '2021-04-19', 7, 8, 9, 202, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(34, 1, 2, 99, 1, 30, '2021-04-13', 7, 8, 9, 183, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(35, 1, 2, 103, 1, 30, '2021-04-13', 7, 8, 9, 170, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(36, 1, 2, 112, 1, 30, '2021-04-13', 7, 8, 9, 168, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(37, 1, 2, 120, 1, 30, '2021-04-13', 7, 8, 9, 171, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(38, 1, 2, 129, 1, 30, '2021-04-13', 7, 8, 9, 179, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(39, 1, 2, 151, 1, 30, '2021-04-13', 7, 8, 9, 169, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(40, 1, 2, 172, 1, 30, '2021-04-13', 7, 8, 9, 182, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(41, 1, 2, 178, 1, 30, '2021-04-13', 7, 8, 9, 175, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(42, 1, 2, 180, 1, 30, '2021-04-13', 7, 8, 9, 181, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(43, 1, 2, 191, 1, 30, '2021-04-13', 7, 8, 9, 172, 1, NULL, '2021-04-25 15:00:11', '180.211.243.250', NULL, NULL, NULL),
(44, 1, 9, 76, 1, 30, '2021-04-25', 7, 8, 9, 204, 1, NULL, '2021-05-11 18:31:53', '37.111.239.207', NULL, NULL, NULL),
(45, 1, 9, 95, 1, 30, '2021-04-28', 7, 8, 9, 208, 1, NULL, '2021-05-11 18:31:53', '37.111.239.207', NULL, NULL, NULL),
(46, 1, 9, 115, 1, 30, '2021-04-26', 7, 8, 9, 206, 1, NULL, '2021-05-11 18:31:53', '37.111.239.207', NULL, NULL, NULL),
(47, 1, 9, 150, 1, 30, '2021-04-25', 7, 8, 9, 205, 1, NULL, '2021-05-11 18:31:53', '37.111.239.207', NULL, NULL, NULL),
(48, 1, 9, 166, 1, 30, '2021-04-26', 7, 8, 9, 207, 1, NULL, '2021-05-11 18:31:53', '37.111.239.207', NULL, NULL, NULL),
(49, 1, 9, 193, 1, 30, '2021-05-11', 7, 8, 9, 210, 1, NULL, '2021-05-11 18:31:53', '37.111.239.207', NULL, NULL, NULL),
(50, 1, 9, 92, 1, 30, '2021-05-11', 7, 8, 9, 215, 1, NULL, '2021-05-11 18:32:29', '37.111.239.207', NULL, NULL, NULL),
(51, 1, 9, 185, 1, 30, '2021-05-11', 7, 8, 9, 217, 1, NULL, '2021-05-11 18:32:29', '37.111.239.207', NULL, NULL, NULL),
(52, 1, 9, 27, 1, 30, '2021-04-13', 7, 8, 9, 228, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(53, 1, 9, 28, 1, 30, '2021-04-13', 7, 8, 9, 229, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(54, 1, 9, 34, 1, 30, '2021-04-13', 7, 8, 9, 231, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(55, 1, 9, 37, 1, 30, '2021-04-13', 7, 8, 9, 232, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(56, 1, 9, 39, 1, 30, '2021-04-13', 7, 8, 9, 233, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(57, 1, 9, 41, 1, 30, '2021-04-13', 7, 8, 9, 234, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(58, 1, 9, 45, 1, 30, '2021-04-13', 7, 8, 9, 235, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(59, 1, 9, 47, 1, 30, '2021-04-13', 7, 8, 9, 236, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(60, 1, 9, 49, 1, 30, '2021-04-13', 7, 8, 9, 237, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(61, 1, 9, 51, 1, 30, '2021-04-13', 7, 8, 9, 238, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(62, 1, 9, 53, 1, 30, '2021-04-13', 7, 8, 9, 239, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(63, 1, 9, 56, 1, 30, '2021-04-13', 7, 8, 9, 240, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(64, 1, 9, 59, 1, 30, '2021-04-13', 7, 8, 9, 241, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(65, 1, 9, 66, 1, 30, '2021-04-13', 7, 8, 9, 243, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(66, 1, 9, 71, 1, 30, '2021-04-13', 7, 8, 9, 244, 1, NULL, '2021-05-12 12:48:01', '180.211.243.250', NULL, NULL, NULL),
(67, 1, 9, 17, 1, 30, '2021-05-11', 7, 8, 9, 339, 1, NULL, '2021-05-12 12:49:32', '180.211.243.250', NULL, NULL, NULL),
(68, 1, 9, 18, 1, 30, '2021-05-11', 7, 8, 9, 346, 1, NULL, '2021-05-12 12:49:32', '180.211.243.250', NULL, NULL, NULL),
(69, 1, 9, 32, 1, 30, '2021-05-11', 7, 8, 9, 344, 1, NULL, '2021-05-12 12:49:32', '180.211.243.250', NULL, NULL, NULL),
(70, 1, 9, 33, 1, 30, '2021-05-11', 7, 8, 9, 257, 1, NULL, '2021-05-12 12:49:32', '180.211.243.250', NULL, NULL, NULL),
(71, 1, 9, 69, 1, 30, '2021-05-11', 7, 8, 9, 317, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(72, 1, 9, 73, 1, 30, '2021-04-13', 7, 8, 9, 245, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(73, 1, 9, 78, 1, 30, '2021-04-13', 7, 8, 9, 246, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(74, 1, 9, 80, 1, 30, '2021-04-13', 7, 8, 9, 247, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(75, 1, 9, 81, 1, 30, '2021-05-11', 7, 8, 9, 249, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(76, 1, 9, 89, 1, 30, '2021-05-11', 7, 8, 9, 252, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(77, 1, 9, 100, 1, 30, '2021-04-13', 7, 8, 9, 266, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(78, 1, 9, 104, 1, 30, '2021-05-11', 7, 8, 9, 255, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(79, 1, 9, 106, 1, 30, '2021-05-11', 7, 8, 9, 343, 1, NULL, '2021-05-12 12:49:39', '180.211.243.250', NULL, NULL, NULL),
(80, 1, 9, 110, 1, 30, '2021-04-13', 7, 8, 9, 267, 1, NULL, '2021-05-12 12:49:41', '180.211.243.250', NULL, NULL, NULL),
(81, 1, 9, 111, 1, 30, '2021-04-13', 7, 8, 9, 268, 1, NULL, '2021-05-12 12:49:41', '180.211.243.250', NULL, NULL, NULL),
(82, 1, 9, 114, 1, 30, '2021-04-13', 7, 8, 9, 269, 1, NULL, '2021-05-12 12:49:41', '180.211.243.250', NULL, NULL, NULL),
(83, 1, 9, 117, 1, 30, '2021-04-13', 7, 8, 9, 270, 1, NULL, '2021-05-12 12:49:41', '180.211.243.250', NULL, NULL, NULL),
(84, 1, 9, 122, 1, 30, '2021-05-11', 7, 8, 9, 300, 1, NULL, '2021-05-12 12:49:41', '180.211.243.250', NULL, NULL, NULL),
(85, 1, 9, 123, 1, 30, '2021-04-13', 7, 8, 9, 271, 1, NULL, '2021-05-12 12:49:41', '180.211.243.250', NULL, NULL, NULL),
(86, 1, 9, 126, 1, 30, '2021-04-13', 7, 8, 9, 272, 1, NULL, '2021-05-12 12:49:43', '180.211.243.250', NULL, NULL, NULL),
(87, 1, 9, 127, 1, 30, '2021-05-11', 7, 8, 9, 345, 1, NULL, '2021-05-12 12:49:43', '180.211.243.250', NULL, NULL, NULL),
(88, 1, 9, 133, 1, 30, '2021-04-19', 7, 8, 9, 273, 1, NULL, '2021-05-12 12:49:43', '180.211.243.250', NULL, NULL, NULL),
(89, 1, 9, 135, 1, 30, '2021-04-19', 7, 8, 9, 274, 1, NULL, '2021-05-12 12:49:43', '180.211.243.250', NULL, NULL, NULL),
(90, 1, 9, 137, 1, 30, '2021-05-11', 7, 8, 9, 254, 1, NULL, '2021-05-12 12:49:43', '180.211.243.250', NULL, NULL, NULL),
(91, 1, 9, 139, 1, 30, '2021-04-19', 7, 8, 9, 276, 1, NULL, '2021-05-12 12:49:43', '180.211.243.250', NULL, NULL, NULL),
(92, 1, 9, 140, 1, 30, '2021-05-11', 7, 8, 9, 341, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(93, 1, 9, 141, 1, 30, '2021-04-19', 7, 8, 9, 277, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(94, 1, 9, 145, 1, 30, '2021-04-19', 7, 8, 9, 278, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(95, 1, 9, 147, 1, 30, '2021-04-19', 7, 8, 9, 279, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(96, 1, 9, 149, 1, 30, '2021-04-19', 7, 8, 9, 280, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(97, 1, 9, 153, 1, 30, '2021-04-19', 7, 8, 9, 282, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(98, 1, 9, 154, 1, 30, '2021-05-11', 7, 8, 9, 323, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(99, 1, 9, 157, 1, 30, '2021-04-19', 7, 8, 9, 284, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(100, 1, 9, 159, 1, 30, '2021-04-19', 7, 8, 9, 285, 1, NULL, '2021-05-12 12:49:45', '180.211.243.250', NULL, NULL, NULL),
(101, 1, 9, 161, 1, 30, '2021-04-19', 7, 8, 9, 286, 1, NULL, '2021-05-12 12:49:48', '180.211.243.250', NULL, NULL, NULL),
(102, 1, 9, 164, 1, 30, '2021-04-19', 7, 8, 9, 287, 1, NULL, '2021-05-12 12:49:48', '180.211.243.250', NULL, NULL, NULL),
(103, 1, 9, 169, 1, 30, '2021-04-19', 7, 8, 9, 289, 1, NULL, '2021-05-12 12:49:48', '180.211.243.250', NULL, NULL, NULL),
(104, 1, 9, 170, 1, 30, '2021-04-19', 7, 8, 9, 290, 1, NULL, '2021-05-12 12:49:50', '180.211.243.250', NULL, NULL, NULL),
(105, 1, 9, 182, 1, 30, '2021-05-11', 7, 8, 9, 342, 1, NULL, '2021-05-12 12:49:50', '180.211.243.250', NULL, NULL, NULL),
(106, 1, 9, 196, 1, 30, '2021-05-11', 7, 8, 9, 256, 1, NULL, '2021-05-12 12:49:58', '180.211.243.250', NULL, NULL, NULL),
(107, 1, 2, 9, 1, 30, '2021-04-13', 7, 8, 9, 139, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(108, 1, 2, 10, 1, 30, '2021-04-13', 7, 8, 9, 140, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(109, 1, 2, 11, 1, 30, '2021-04-13', 7, 8, 9, 141, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(110, 1, 2, 12, 1, 30, '2021-04-13', 7, 8, 9, 142, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(111, 1, 2, 13, 1, 30, '2021-04-13', 7, 8, 9, 143, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(112, 1, 2, 22, 1, 30, '2021-04-13', 7, 8, 9, 146, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(113, 1, 2, 23, 1, 30, '2021-04-13', 7, 8, 9, 147, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(114, 1, 2, 24, 1, 30, '2021-04-13', 7, 8, 9, 148, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(115, 1, 2, 25, 1, 30, '2021-04-13', 7, 8, 9, 149, 1, NULL, '2021-05-18 18:42:29', '103.205.71.20', NULL, NULL, NULL),
(116, 1, 2, 35, 1, 30, '2021-04-13', 7, 8, 9, 103, 1, NULL, '2021-05-18 18:42:31', '103.205.71.20', NULL, NULL, NULL),
(117, 1, 2, 43, 1, 30, '2021-04-13', 7, 8, 9, 105, 1, NULL, '2021-05-18 18:42:32', '103.205.71.20', NULL, NULL, NULL),
(118, 1, 2, 58, 1, 30, '2021-04-13', 7, 8, 9, 158, 1, NULL, '2021-05-18 18:42:34', '103.205.71.20', NULL, NULL, NULL),
(119, 1, 2, 77, 1, 30, '2021-04-13', 7, 8, 9, 162, 1, NULL, '2021-05-18 18:42:35', '103.205.71.20', NULL, NULL, NULL),
(120, 1, 2, 82, 1, 30, '2021-04-13', 7, 8, 9, 163, 1, NULL, '2021-05-18 18:42:35', '103.205.71.20', NULL, NULL, NULL),
(121, 1, 2, 90, 1, 30, '2021-04-13', 7, 8, 9, 165, 1, NULL, '2021-05-18 18:42:36', '103.205.71.20', NULL, NULL, NULL),
(122, 1, 2, 91, 1, 30, '2021-04-13', 7, 8, 9, 166, 1, NULL, '2021-05-18 18:42:36', '103.205.71.20', NULL, NULL, NULL),
(123, 1, 2, 94, 1, 30, '2021-04-13', 7, 8, 9, 169, 1, NULL, '2021-05-18 18:42:36', '103.205.71.20', NULL, NULL, NULL),
(124, 1, 2, 97, 1, 30, '2021-04-13', 7, 8, 9, 171, 1, NULL, '2021-05-18 18:42:37', '103.205.71.20', NULL, NULL, NULL),
(125, 1, 2, 102, 1, 30, '2021-04-13', 7, 8, 9, 173, 1, NULL, '2021-05-18 18:42:37', '103.205.71.20', NULL, NULL, NULL),
(126, 1, 2, 105, 1, 30, '2021-04-13', 7, 8, 9, 176, 1, NULL, '2021-05-18 18:42:37', '103.205.71.20', NULL, NULL, NULL),
(127, 1, 2, 108, 1, 30, '2021-04-13', 7, 8, 9, 178, 1, NULL, '2021-05-18 18:42:37', '103.205.71.20', NULL, NULL, NULL),
(128, 1, 2, 109, 1, 30, '2021-04-13', 7, 8, 9, 179, 1, NULL, '2021-05-18 18:42:38', '103.205.71.20', NULL, NULL, NULL),
(129, 1, 2, 118, 1, 30, '2021-04-13', 7, 8, 9, 181, 1, NULL, '2021-05-18 18:42:40', '103.205.71.20', NULL, NULL, NULL),
(130, 1, 2, 121, 1, 30, '2021-04-13', 7, 8, 9, 183, 1, NULL, '2021-05-18 18:42:40', '103.205.71.20', NULL, NULL, NULL),
(131, 1, 2, 125, 1, 30, '2021-04-13', 7, 8, 9, 184, 1, NULL, '2021-05-18 18:42:40', '103.205.71.20', NULL, NULL, NULL),
(132, 1, 2, 130, 1, 30, '2021-04-19', 7, 8, 9, 129, 1, NULL, '2021-05-18 18:42:40', '103.205.71.20', NULL, NULL, NULL),
(133, 1, 2, 143, 1, 30, '2021-04-19', 7, 8, 9, 188, 1, NULL, '2021-05-18 18:42:41', '103.205.71.20', NULL, NULL, NULL),
(134, 1, 2, 162, 1, 30, '2021-04-19', 7, 8, 9, 135, 1, NULL, '2021-05-18 18:42:42', '103.205.71.20', NULL, NULL, NULL),
(135, 1, 2, 174, 1, 30, '2021-04-25', 7, 8, 9, 203, 1, NULL, '2021-05-18 18:42:43', '103.205.71.20', NULL, NULL, NULL),
(136, 1, 2, 175, 1, 30, '2021-04-25', 7, 8, 9, 136, 1, NULL, '2021-05-18 18:42:43', '103.205.71.20', NULL, NULL, NULL),
(137, 1, 2, 176, 1, 30, '2021-04-26', 7, 8, 9, 206, 1, NULL, '2021-05-18 18:42:43', '103.205.71.20', NULL, NULL, NULL),
(138, 1, 2, 177, 1, 30, '2021-04-26', 7, 8, 9, 207, 1, NULL, '2021-05-18 18:42:43', '103.205.71.20', NULL, NULL, NULL),
(139, 1, 2, 181, 1, 30, '2021-04-29', 7, 8, 9, 293, 1, NULL, '2021-05-18 18:42:43', '103.205.71.20', NULL, NULL, NULL),
(140, 1, 2, 183, 1, 30, '2021-04-29', 7, 8, 9, 295, 1, NULL, '2021-05-18 18:42:43', '103.205.71.20', NULL, NULL, NULL),
(141, 1, 9, 188, 1, 30, '2021-05-11', 7, 8, 9, 340, 1, NULL, '2021-05-18 19:54:18', '202.134.8.132', NULL, NULL, NULL),
(142, 1, 10, 31, 1, 30, '2021-06-13', 7, 8, 9, 368, 1, NULL, '2021-06-14 18:52:37', '180.211.243.250', NULL, NULL, NULL),
(143, 1, 10, 30, 1, 30, '2021-06-13', 7, 8, 9, 388, 1, NULL, '2021-06-14 18:54:23', '180.211.243.250', NULL, NULL, NULL),
(144, 1, 10, 83, 1, 30, '2021-06-13', 7, 8, 9, 397, 1, 1, '2021-06-16 22:26:37', '::1', NULL, NULL, NULL),
(145, 1, 10, 197, 1, 30, '2021-06-13', 7, 8, 9, 400, 1, 1, '2021-06-16 22:26:38', '::1', NULL, NULL, NULL),
(146, 1, 10, 105, 1, 30, '2021-06-13', 7, 8, 9, 399, 1, 1, '2021-06-16 23:34:17', '::1', NULL, NULL, NULL),
(147, 1, 10, 149, 1, 30, '2021-06-13', 7, 8, 9, 398, 1, 1, '2021-06-16 23:34:17', '::1', NULL, NULL, NULL),
(148, 1, 10, 1, 1, 30, '2021-06-13', 7, 8, 9, 373, 1, 1, '2021-06-16 23:36:23', '::1', NULL, NULL, NULL),
(149, 1, 10, 8, 1, 30, '2021-06-13', 7, 8, 9, 376, 1, 1, '2021-06-16 23:36:23', '::1', NULL, NULL, NULL),
(150, 1, 10, 9, 1, 30, '2021-06-13', 7, 8, 9, 389, 1, 1, '2021-06-16 23:36:23', '::1', NULL, NULL, NULL),
(151, 1, 10, 24, 1, 30, '2021-06-13', 7, 8, 9, 380, 1, 1, '2021-06-16 23:36:23', '::1', NULL, NULL, NULL),
(152, 1, 10, 27, 1, 30, '2021-06-13', 7, 8, 9, 375, 1, 1, '2021-06-16 23:36:24', '::1', NULL, NULL, NULL),
(153, 1, 10, 34, 1, 30, '2021-06-13', 7, 8, 9, 381, 1, 1, '2021-06-16 23:36:24', '::1', NULL, NULL, NULL),
(154, 1, 10, 41, 1, 30, '2021-06-13', 7, 8, 9, 367, 1, 1, '2021-06-16 23:36:24', '::1', NULL, NULL, NULL),
(155, 1, 10, 45, 1, 30, '2021-06-13', 7, 8, 9, 390, 1, 1, '2021-06-16 23:36:24', '::1', NULL, NULL, NULL),
(156, 1, 10, 49, 1, 30, '2021-06-13', 7, 8, 9, 383, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(157, 1, 10, 53, 1, 30, '2021-06-13', 7, 8, 9, 369, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(158, 1, 10, 56, 1, 30, '2021-06-13', 7, 8, 9, 372, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(159, 1, 10, 58, 1, 30, '2021-06-13', 7, 8, 9, 387, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(160, 1, 10, 80, 1, 30, '2021-06-13', 7, 8, 9, 374, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(161, 1, 10, 108, 1, 30, '2021-06-13', 7, 8, 9, 386, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(162, 1, 10, 114, 1, 30, '2021-06-13', 7, 8, 9, 365, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(163, 1, 10, 115, 1, 30, '2021-06-13', 7, 8, 9, 364, 1, 1, '2021-06-16 23:36:55', '::1', NULL, NULL, NULL),
(164, 1, 10, 117, 1, 30, '2021-06-13', 7, 8, 9, 366, 1, 1, '2021-06-16 23:37:01', '::1', NULL, NULL, NULL),
(165, 1, 10, 129, 1, 30, '2021-06-13', 7, 8, 9, 370, 1, 1, '2021-06-16 23:37:01', '::1', NULL, NULL, NULL),
(166, 1, 10, 139, 1, 30, '2021-06-13', 7, 8, 9, 378, 1, 1, '2021-06-16 23:37:01', '::1', NULL, NULL, NULL),
(167, 1, 10, 141, 1, 30, '2021-06-13', 7, 8, 9, 382, 1, 1, '2021-06-16 23:37:02', '::1', NULL, NULL, NULL),
(168, 1, 10, 147, 1, 30, '2021-06-13', 7, 8, 9, 371, 1, 1, '2021-06-16 23:37:02', '::1', NULL, NULL, NULL),
(169, 1, 10, 164, 1, 30, '2021-06-13', 7, 8, 9, 379, 1, 1, '2021-06-16 23:37:02', '::1', NULL, NULL, NULL),
(170, 1, 10, 172, 1, 30, '2021-06-13', 7, 8, 9, 391, 1, 1, '2021-06-16 23:37:02', '::1', NULL, NULL, NULL),
(171, 1, 10, 176, 1, 30, '2021-06-13', 7, 8, 9, 393, 1, 1, '2021-06-16 23:37:02', '::1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fund_sub_ctg`
--

CREATE TABLE `fund_sub_ctg` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `mc_id` smallint(6) UNSIGNED NOT NULL,
  `subid` smallint(6) UNSIGNED NOT NULL,
  `fund_id` tinyint(3) UNSIGNED NOT NULL,
  `trno` bigint(16) UNSIGNED NOT NULL,
  `voucherno` bigint(16) UNSIGNED NOT NULL,
  `vtype` enum('C','D') NOT NULL DEFAULT 'C',
  `sub_title` varchar(255) DEFAULT NULL,
  `dr` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cr` decimal(10,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fund_sub_ctg`
--

INSERT INTO `fund_sub_ctg` (`id`, `mc_id`, `subid`, `fund_id`, `trno`, `voucherno`, `vtype`, `sub_title`, `dr`, `cr`, `balance`, `payment_date`, `utime`) VALUES
(1, 1, 5, 2, 1, 1, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '2000.00', '0.00', '2018-06-08', '2018-06-07 22:54:49'),
(2, 1, 5, 2, 2, 2, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '200.00', '2000.00', '2018-06-08', '2018-06-07 22:57:08'),
(3, 3, 2, 2, 3, 3, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '115.00', '115.00', '2018-07-18', '2018-07-17 20:37:17'),
(4, 1, 5, 2, 4, 4, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '3000.00', '2200.00', '2018-07-18', '2018-07-17 21:10:39'),
(5, 6, 1, 2, 6, 5, 'C', 'অন্যান্য ফি', '0.00', '0.00', '0.00', '2018-10-04', '2018-10-03 19:52:24'),
(6, 6, 1, 2, 7, 6, 'C', 'অন্যান্য ফি', '0.00', '0.00', '0.00', '2018-10-09', '2018-10-08 19:58:22'),
(7, 1, 5, 2, 8, 7, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '400.00', '5200.00', '2019-05-25', '2019-05-24 19:23:05'),
(8, 6, 1, 2, 9, 8, 'C', 'অন্যান্য ফি', '0.00', '0.00', '0.00', '2019-05-25', '2019-05-24 19:26:17'),
(9, 1, 5, 2, 10, 9, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '5600.00', '2019-05-27', '2019-05-27 06:14:42'),
(10, 1, 5, 2, 11, 10, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '5700.00', '2019-05-27', '2019-05-27 06:19:35'),
(11, 6, 1, 2, 12, 11, 'C', 'অন্যান্য ফি', '0.00', '50.00', '50.00', '2019-05-27', '2019-05-27 06:20:57'),
(12, 1, 5, 2, 13, 12, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '225.00', '5800.00', '2019-05-30', '2019-05-30 05:25:07'),
(13, 6, 1, 2, 14, 13, 'C', 'অন্যান্য ফি', '0.00', '0.00', '50.00', '2019-05-30', '2019-05-30 06:15:06'),
(14, 1, 5, 2, 15, 14, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '390.00', '6025.00', '2019-06-30', '2019-06-29 19:55:07'),
(15, 1, 5, 2, 16, 15, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '990.00', '6415.00', '2019-07-01', '2019-07-01 04:46:00'),
(16, 1, 5, 2, 17, 16, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '205.00', '7405.00', '2019-07-01', '2019-07-01 04:46:43'),
(17, 6, 1, 2, 18, 17, 'C', 'অন্যান্য ফি', '0.00', '100.00', '150.00', '2019-07-01', '2019-07-01 04:47:12'),
(18, 6, 1, 2, 19, 18, 'C', 'অন্যান্য ফি', '0.00', '100.00', '250.00', '2019-07-03', '2019-07-03 04:57:03'),
(19, 1, 5, 2, 20, 19, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '215.00', '7610.00', '2019-07-03', '2019-07-03 05:05:49'),
(20, 3, 2, 2, 21, 20, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '129.80', '244.80', '2019-07-04', '2019-07-04 05:29:25'),
(21, 7, 11, 1, 22, 21, 'C', '১ম কিস্তি', '0.00', '1000.00', '1000.00', '2019-07-04', '2019-07-04 11:16:10'),
(22, 3, 2, 2, 23, 22, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '2222.00', '2466.80', '2019-07-04', '2019-07-04 11:17:45'),
(23, 1, 5, 2, 24, 23, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '800.00', '7825.00', '2019-07-06', '2019-07-06 09:16:42'),
(24, 1, 4, 2, 25, 24, 'C', 'ব্যবসা,পেশা ও জীবিকার উপর কর', '0.00', '100.00', '100.00', '2019-07-07', '2019-07-07 17:11:31'),
(25, 1, 5, 2, 26, 25, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '390.00', '8625.00', '2019-07-08', '2019-07-08 08:58:20'),
(28, 1, 5, 2, 27, 26, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '1625.00', '9015.00', '2019-07-14', '2019-07-14 15:11:57'),
(29, 1, 5, 2, 28, 27, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '1900.00', '10640.00', '2019-07-17', '2019-07-17 05:05:26'),
(30, 1, 5, 2, 29, 28, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '173.00', '12540.00', '2019-07-17', '2019-07-17 12:03:08'),
(31, 3, 2, 2, 30, 29, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '0.00', '2466.80', '2019-07-19', '2019-07-19 05:14:19'),
(32, 6, 1, 2, 31, 30, 'C', 'অন্যান্য ফি', '0.00', '0.00', '250.00', '2020-08-31', '2020-08-31 08:59:36'),
(33, 14, 23, 10, 32, 31, 'C', 'UDC fee', '0.00', '0.00', '0.00', '2020-12-27', '2020-12-26 21:14:42'),
(34, 14, 23, 10, 33, 32, 'C', 'UDC fee', '0.00', '0.00', '0.00', '2021-03-08', '2021-03-08 08:47:15'),
(35, 3, 2, 2, 34, 33, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '575.00', '3041.80', '2022-03-15', '2022-03-15 12:00:35'),
(36, 3, 2, 2, 35, 34, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '1150.00', '4191.80', '2022-03-15', '2022-03-15 13:38:09'),
(37, 3, 2, 2, 36, 35, 'C', 'ট্রেড লাইসেন্স ফি', '0.00', '575.00', '4766.80', '2022-03-16', '2022-03-16 07:38:32'),
(38, 6, 1, 2, 37, 36, 'C', 'অন্যান্য ফি', '0.00', '20.00', '270.00', '2022-03-16', '2022-03-16 07:54:02'),
(39, 6, 1, 2, 38, 37, 'C', 'অন্যান্য ফি', '0.00', '20.00', '290.00', '2022-03-16', '2022-03-16 09:00:38'),
(40, 14, 23, 10, 39, 38, 'C', 'UDC fee', '0.00', '20.00', '20.00', '2022-03-20', '2022-03-20 06:29:00'),
(41, 14, 23, 10, 40, 39, 'C', 'UDC fee', '0.00', '50.00', '70.00', '2022-03-20', '2022-03-20 09:58:41'),
(42, 6, 1, 2, 41, 40, 'C', 'অন্যান্য ফি', '0.00', '30.00', '320.00', '2022-03-21', '2022-03-21 03:21:26'),
(43, 6, 1, 2, 42, 41, 'C', 'অন্যান্য ফি', '0.00', '60.00', '380.00', '2022-03-21', '2022-03-21 09:26:18'),
(44, 6, 1, 2, 43, 42, 'C', 'অন্যান্য ফি', '0.00', '50.00', '430.00', '2022-03-23', '2022-03-23 17:09:51'),
(56, 1, 5, 2, 44, 43, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '12713.00', '2022-04-16', '2022-04-16 06:24:35'),
(57, 1, 5, 2, 45, 44, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '12813.00', '2022-04-01', '2022-04-16 06:26:27'),
(58, 1, 5, 2, 46, 45, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '12913.00', '2022-04-03', '2022-04-16 06:29:37'),
(59, 1, 5, 2, 47, 46, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '13013.00', '2022-04-05', '2022-04-16 06:30:59'),
(60, 1, 5, 2, 48, 47, 'C', 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0.00', '100.00', '13113.00', '2022-04-12', '2022-04-16 06:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `fund_transfer`
--

CREATE TABLE `fund_transfer` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `sub_cat` int(11) NOT NULL,
  `transid` bigint(20) NOT NULL,
  `voucherno` bigint(20) NOT NULL,
  `accounts` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paytype` varchar(50) NOT NULL,
  `slipno` varchar(120) NOT NULL,
  `chno` varchar(120) NOT NULL,
  `bank` varchar(120) NOT NULL,
  `issue` date NOT NULL,
  `pono` varchar(120) NOT NULL,
  `ddno` varchar(120) NOT NULL,
  `ttno` varchar(120) NOT NULL,
  `fid2` int(11) NOT NULL,
  `catid2` int(11) NOT NULL,
  `sub_cat2` smallint(6) NOT NULL,
  `transid2` bigint(20) NOT NULL,
  `voucherno2` bigint(20) NOT NULL,
  `accounts2` varchar(255) NOT NULL,
  `paytype2` varchar(50) NOT NULL,
  `slipno2` varchar(120) NOT NULL,
  `chno2` varchar(120) NOT NULL,
  `bank2` varchar(120) NOT NULL,
  `issue2` date NOT NULL,
  `pono2` varchar(120) NOT NULL,
  `ddno2` varchar(120) NOT NULL,
  `ttno2` varchar(120) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `des` text NOT NULL,
  `update_by` varchar(40) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `getlicense`
--

CREATE TABLE `getlicense` (
  `id` int(11) UNSIGNED NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `bno` int(11) UNSIGNED NOT NULL,
  `fiscal_year` varchar(40) DEFAULT NULL,
  `trno` bigint(16) NOT NULL,
  `vno` bigint(16) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `scharge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sbfee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `update_by` varchar(40) DEFAULT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `getlicense`
--

INSERT INTO `getlicense` (`id`, `trackid`, `bno`, `fiscal_year`, `trno`, `vno`, `fee`, `due`, `scharge`, `sbfee`, `discount`, `vat`, `total`, `payment_date`, `status`, `update_by`, `utime`) VALUES
(1, '11111111', 1, '2018-2019', 3, 3, '100.00', '0.00', '0.00', '0.00', '0.00', '15.00', '115.00', '2018-07-18', '1', 'admin', '2018-07-17 20:37:17'),
(2, '181566', 2, '2019-2020', 21, 20, '100.00', '12.00', '12.00', '0.00', '0.00', '16.80', '129.80', '2019-07-04', '1', 'admin', '2019-07-04 05:29:25'),
(3, '432432', 3, '2019-2020', 30, 29, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2019-07-19', '1', 'admin', '2019-07-19 05:14:19'),
(4, '467008', 4, '2021-2022', 34, 33, '500.00', '0.00', '0.00', '0.00', '0.00', '75.00', '575.00', '2022-03-15', '1', 'admin', '2022-03-15 12:00:35'),
(5, '418709', 5, '2021-2022', 35, 34, '1000.00', '0.00', '0.00', '0.00', '0.00', '150.00', '1150.00', '2022-03-15', '1', 'admin', '2022-03-15 13:38:09'),
(6, '176080', 6, '2021-2022', 36, 35, '500.00', '0.00', '0.00', '0.00', '0.00', '75.00', '575.00', '2022-03-16', '1', 'admin', '2022-03-16 07:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `holdingclientinfo`
--

CREATE TABLE `holdingclientinfo` (
  `id` int(11) UNSIGNED NOT NULL,
  `rate_sheet_id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `fathername` varchar(60) NOT NULL,
  `national_id` varchar(20) DEFAULT NULL COMMENT 'national id',
  `birth_certificate_id` varchar(20) DEFAULT NULL COMMENT 'birth certificate id',
  `village` varchar(40) NOT NULL,
  `wordno` smallint(6) UNSIGNED NOT NULL COMMENT 'word number',
  `holding_no` varchar(10) NOT NULL,
  `dag_no` varchar(10) NOT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0= delete, 1= active, 2 =inactive',
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holdingclientinfo`
--

INSERT INTO `holdingclientinfo` (`id`, `rate_sheet_id`, `name`, `fathername`, `national_id`, `birth_certificate_id`, `village`, `wordno`, `holding_no`, `dag_no`, `mobile_number`, `registration_date`, `due`, `created_by`, `created_ip`, `updated_by`, `updated_ip`, `is_active`, `utime`) VALUES
(1, 1, 'আবু বকর ছিদ্দিক', 'আবদুল মমিন', NULL, NULL, 'জায়লস্কর', 7, '101', '1001', '01825292980', '2018-06-08 04:50:03', NULL, 1, '::1', NULL, NULL, 1, '2018-06-07 22:50:03'),
(2, 8, 'ওসমান গনি', 'আবু তাহের', NULL, NULL, 'বাকরখানী', 9, '102', '1002', '01825292981', '2018-06-08 04:51:31', NULL, 1, '::1', NULL, NULL, 1, '2018-06-07 22:51:31'),
(3, 2, 'শাওন', 'হক', NULL, NULL, 'বালিচর', 6, '103', '1003', '01825292987', '2018-06-08 04:58:38', NULL, 1, '::1', NULL, NULL, 1, '2018-06-07 22:58:38'),
(4, 10, 'test', 'test', NULL, NULL, 'asadsfsadf', 1, '1111', '1110', NULL, '2019-05-24 16:49:54', NULL, 1, '::1', NULL, NULL, 1, '2019-05-24 10:49:54'),
(5, 11, 'sss', 'sss', NULL, NULL, 'ss', 6, '125', '1200', '01716344112', '2019-05-27 12:12:41', NULL, 1, '103.107.161.114', NULL, NULL, 1, '2019-05-27 06:12:41'),
(6, 7, 'মো: চেক আলী', 'মৃত: মরা আলী', NULL, NULL, 'সাজিয়াড়া', 3, '126', '1260', NULL, '2019-05-30 11:22:50', NULL, 1, '103.107.161.114', NULL, NULL, 1, '2019-05-30 05:22:50'),
(7, 10, 'Abu', 'Naser', NULL, NULL, 'P', 4, '01', '0000', '01719214125', '2019-06-30 01:52:29', NULL, 1, '103.67.159.86', NULL, NULL, 1, '2019-06-29 19:52:29'),
(8, 12, 'hridoy', 'lotif', NULL, NULL, 'mohon gong', 6, '116', '2235', NULL, '2019-07-01 10:26:35', NULL, 1, '202.181.17.164', NULL, NULL, 1, '2019-07-01 04:26:35'),
(9, 7, 'asif anam khan', 'lotif', NULL, NULL, 'mohon gong', 6, '100', '1120', NULL, '2019-07-03 11:03:57', NULL, 1, '202.181.17.164', NULL, NULL, 1, '2019-07-03 05:03:57'),
(10, 12, 'asif anam', 'lotif', NULL, NULL, 'mohon gong', 4, '116', '1134', NULL, '2019-07-03 15:09:42', NULL, 1, '202.181.17.164', NULL, NULL, 1, '2019-07-03 09:09:42'),
(11, 1, 'royal', 'lotif', NULL, NULL, 'mohon gong', 5, '116', '1023', NULL, '2019-07-09 13:26:32', NULL, 1, '202.181.17.164', NULL, NULL, 1, '2019-07-09 07:26:32'),
(12, 11, 'আবু নাছের', 'আব্দুল মুকিত', NULL, NULL, 'পানিউম্দা', 6, '1250', '1250', '01711245688', '2019-07-14 21:08:29', NULL, 1, '103.67.158.54', NULL, NULL, 1, '2019-07-14 15:08:29'),
(18, 4, 'মোঃ আকরাম হোসেন', 'আব্দুল মাজিদ', '1998909794353459', '199890979435333', 'আরামবাগ', 3, '263', '6304', '01866757454', '2022-04-10 15:49:49', NULL, 1, '127.0.0.1', NULL, NULL, 1, '2022-04-10 09:49:49'),
(19, 11, 'aaaaaaaaaaaaa', 'bbbbbbbbb', '199999999992222', '1999999999922256', 'CCCCCCC', 6, '200', '1501', '01899090990', '2022-04-11 16:08:11', NULL, 1, '127.0.0.1', NULL, NULL, 1, '2022-04-11 10:08:11'),
(20, 11, 'vvvvvvvvvv', 'lkl;mxdvgv', '199999999992666', '199999999990000', 'sgfgsdgs', 6, '202', '1043', '01544444445', '2022-04-11 16:09:19', NULL, 1, '127.0.0.1', NULL, NULL, 1, '2022-04-11 10:09:19'),
(21, 11, 'uuuuuuuuuuuuuuuu', 'jkljhn', '19999999777777889', '199999999876532', 'jgjhgb', 4, '204', '8908', '01677777777', '2022-04-11 16:10:17', NULL, 1, '127.0.0.1', NULL, NULL, 1, '2022-04-11 10:10:17'),
(24, 10, 'Taek aziz', 'aziz kkk', '20200000000333', '202000000003554', 'noaya', 3, '544', '21312', '01788898985', '2022-04-12 22:48:31', '800.00', 1, '127.0.0.1', 1, '127.0.0.1', 1, '2022-04-12 16:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `holding_rate_sheet`
--

CREATE TABLE `holding_rate_sheet` (
  `id` int(11) UNSIGNED NOT NULL,
  `occupation_id` tinyint(3) UNSIGNED NOT NULL,
  `classification_id` tinyint(3) UNSIGNED NOT NULL,
  `label_id` smallint(6) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_by` int(11) UNSIGNED NOT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_current` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1= current, 0=old',
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=active, 0=in-active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `holding_rate_sheet`
--

INSERT INTO `holding_rate_sheet` (`id`, `occupation_id`, `classification_id`, `label_id`, `amount`, `created_by`, `created_ip`, `created_date`, `updated_by`, `updated_ip`, `updated_date`, `is_current`, `is_active`) VALUES
(1, 1, 6, 1, '1000.00', 1, '::1', '2018-06-08 04:45:02', NULL, NULL, NULL, 1, 1),
(2, 2, 6, 1, '500.00', 1, '::1', '2018-06-08 04:45:29', NULL, NULL, NULL, 1, 1),
(3, 4, 6, 3, '250.00', 1, '::1', '2018-06-08 04:45:49', NULL, NULL, NULL, 1, 1),
(4, 4, 7, 3, '200.00', 1, '::1', '2018-06-08 04:46:09', NULL, NULL, NULL, 1, 1),
(5, 3, 6, 4, '75.00', 1, '::1', '2018-06-08 04:46:30', NULL, NULL, NULL, 1, 1),
(6, 3, 8, 4, '40.00', 1, '::1', '2018-06-08 04:46:55', NULL, NULL, NULL, 1, 1),
(7, 5, 7, 3, '225.00', 1, '::1', '2018-06-08 04:47:12', NULL, NULL, NULL, 1, 1),
(8, 5, 6, 3, '250.00', 1, '::1', '2018-06-08 04:47:30', NULL, NULL, NULL, 1, 1),
(9, 2, 7, 2, '300.00', 1, '::1', '2018-06-08 04:47:48', NULL, NULL, NULL, 1, 1),
(10, 2, 6, 2, '400.00', 1, '::1', '2018-06-08 04:48:24', NULL, NULL, NULL, 1, 1),
(11, 5, 9, 4, '100.00', 1, '103.107.161.114', '2019-05-27 12:09:01', NULL, NULL, NULL, 1, 1),
(12, 4, 8, 4, '1000.00', 1, '103.107.161.114', '2019-05-27 12:09:55', 1, '202.181.17.164', '2019-07-09 13:29:17', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `holding_rate_sheet_label`
--

CREATE TABLE `holding_rate_sheet_label` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `rate_sheet_label` varchar(200) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=enable, 2= disable',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_ip` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `holding_rate_sheet_label`
--

INSERT INTO `holding_rate_sheet_label` (`id`, `rate_sheet_label`, `status`, `created_by`, `created_ip`, `created_date`, `updated_by`, `updated_ip`, `updated_date`) VALUES
(1, 'পাকা', 1, 1, '::1', '2018-06-08 04:43:19', NULL, NULL, NULL),
(2, 'আধাপাকা', 1, 1, '::1', '2018-06-08 04:43:34', NULL, NULL, NULL),
(3, 'টিনসেড', 1, 1, '::1', '2018-06-08 04:43:47', NULL, NULL, NULL),
(4, 'কাচা', 1, 1, '::1', '2018-06-08 04:43:57', 1, '202.181.17.164', '2019-07-09 16:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `trackid`, `mobile`, `msg`, `utime`) VALUES
(1, '11111111', NULL, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন  আপনার  সনদ নং : ২০১৮০৯১৫৩৪৫৪৪৫২৯৪', '2018-07-17 20:37:17'),
(2, '258853', '01825292963', 'আপনার  ট্র্যাকিং নং : 258853 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2018-10-08 19:56:47'),
(3, '054265', '01825292960', 'আপনার  ট্র্যাকিং নং : 054265 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2019-02-03 18:36:41'),
(4, '181566', '01643789562', 'আপনার  ট্র্যাকিং নং : 181566 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2019-07-04 05:29:00'),
(5, '181566', NULL, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন  আপনার  সনদ নং : ২০১৯০৯১৫৩৪৫৫৮৯৭১২', '2019-07-04 05:29:25'),
(6, '432432', '11', 'আপনার  ট্র্যাকিং নং : 432432 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2019-07-19 05:13:25'),
(7, '432432', NULL, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন  আপনার  সনদ নং : ২০১৯০৯১৫৩৪৫২৫২৪১৯', '2019-07-19 05:14:19'),
(8, '534718', '01839707645', 'আপনার  ট্র্যাকিং নং : 534718 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2020-09-21 17:19:56'),
(9, '851863', '01830320809', 'আপনার  ট্র্যাকিং নং : 851863 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2020-12-26 20:38:24'),
(10, '176080', '01834567891', 'আপনার  ট্র্যাকিং নং : 176080 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2020-12-30 13:39:58'),
(11, '432432', '11', 'দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ  দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ  দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ   আপনার  সনদ নং : ২০১৯০৯১৫৩৪৫২৫২৪১৯', '2021-12-28 15:05:04'),
(12, '181566', '01643789562', 'দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ  দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ  দয়া করে আপনার  সার্টিফিকেট নবায়ন করুণ   আপনার  সনদ নং : ২০১৯০৯১৫৩৪৫৫৮৯৭১২', '2021-12-28 15:05:52'),
(18, '010989', '01866543952', 'আপনার  ট্র্যাকিং নং : 010989 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-13 06:50:30'),
(19, '988572', '01866543953', 'আপনার  ট্র্যাকিং নং : 988572 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-13 07:19:28'),
(20, '467008', '01866543952', 'আপনার  ট্র্যাকিং নং : 467008 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-13 08:46:09'),
(21, '842088', '01899999855', 'আপনার  ট্র্যাকিং নং : 842088 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-14 04:14:04'),
(22, '467008', NULL, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন  আপনার  সনদ নং : ২০২২০৬৪০০৬৫৪২২৮৯৮', '2022-03-15 12:00:35'),
(23, '418709', '01775439511', 'আপনার  ট্র্যাকিং নং : 418709 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-15 13:21:19'),
(24, '418709', NULL, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন  আপনার  সনদ নং : ২০২২০৬৪০০৬৫৩১৭৩৩০', '2022-03-15 13:38:09'),
(25, '176080', NULL, 'আপনার  ট্র্যাকিং নং অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন  আপনার  সনদ নং : ২০২২০৬৪০০৬৫৬২১৩৪০', '2022-03-16 07:38:32'),
(26, '251137', '01466543951', 'আপনার  ট্র্যাকিং নং : 251137 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-21 05:10:42'),
(27, '672931', '01866543956', 'আপনার  ট্র্যাকিং নং : 672931 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-22 05:52:54'),
(28, '512820', '01339707634', 'আপনার  ট্র্যাকিং নং : 512820 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-27 12:37:51'),
(29, '531042', '01866543951', 'আপনার  ট্র্যাকিং নং : 531042 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-03-29 04:53:14'),
(30, '168741', '01866543951', 'আপনার  ট্র্যাকিং নং : 168741 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-04-04 09:14:39'),
(31, '737843', '01866543951', 'আপনার  ট্র্যাকিং নং : 737843 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-04-04 09:24:40'),
(32, '900623', '01866543951', 'আপনার  ট্র্যাকিং নং : 900623 অনলাইনে ট্র্যাকিং নং টি দিয়ে  আপনার  আবেদনের অবস্থান যাছাই করুন', '2022-04-04 09:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `id` int(11) UNSIGNED NOT NULL,
  `tid` bigint(16) UNSIGNED NOT NULL,
  `voucherno` bigint(16) UNSIGNED NOT NULL,
  `vtype` enum('C','D') NOT NULL DEFAULT 'C',
  `catid` int(11) UNSIGNED NOT NULL,
  `subid` int(11) UNSIGNED NOT NULL,
  `fundtype` smallint(6) UNSIGNED NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `ac` varchar(255) DEFAULT NULL,
  `dr` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cr` decimal(10,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `inby` varchar(40) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ledger`
--

INSERT INTO `ledger` (`id`, `tid`, `voucherno`, `vtype`, `catid`, `subid`, `fundtype`, `purpose`, `ac`, `dr`, `cr`, `balance`, `payment_date`, `inby`, `up_date`) VALUES
(1, 1, 1, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '2000.00', '2000.00', '2018-06-08', 'admin', '2018-06-07 22:54:49'),
(2, 2, 2, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '200.00', '2200.00', '2018-06-08', 'admin', '2018-06-07 22:57:08'),
(3, 3, 3, 'C', 3, 2, 2, 'ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '115.00', '2315.00', '2018-07-18', 'admin', '2018-07-17 20:37:17'),
(4, 4, 4, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '3000.00', '5315.00', '2018-07-18', 'admin', '2018-07-17 21:10:39'),
(5, 5, 1, 'D', 0, 0, 0, 'Balance Transfer From', '0000-0000-0000-0000', '100.00', '0.00', '5215.00', '2018-08-18', 'admin', '2018-08-18 16:07:30'),
(6, 6, 5, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '0.00', '5215.00', '2018-10-04', 'admin', '2018-10-03 19:52:24'),
(7, 7, 6, 'C', 6, 1, 2, 'ওয়ারিশ সনদ', '0000-0000-0000-0000', '0.00', '0.00', '5215.00', '2018-10-09', 'admin', '2018-10-08 19:58:22'),
(8, 8, 7, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '400.00', '5615.00', '2019-05-25', 'admin', '2019-05-24 19:23:05'),
(9, 9, 8, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '0.00', '5615.00', '2019-05-25', 'admin', '2019-05-24 19:26:17'),
(10, 10, 9, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '100.00', '5715.00', '2019-05-27', 'admin', '2019-05-27 06:14:42'),
(11, 11, 10, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '100.00', '5815.00', '2019-05-27', 'admin', '2019-05-27 06:19:35'),
(12, 12, 11, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '50.00', '5865.00', '2019-05-27', 'admin', '2019-05-27 06:20:57'),
(13, 13, 12, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '225.00', '6090.00', '2019-05-30', 'admin', '2019-05-30 05:25:07'),
(14, 14, 13, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '0.00', '6090.00', '2019-05-30', 'admin', '2019-05-30 06:15:06'),
(15, 15, 14, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '390.00', '6480.00', '2019-06-30', 'admin', '2019-06-29 19:55:07'),
(16, 16, 15, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '990.00', '7470.00', '2019-07-01', 'admin', '2019-07-01 04:46:00'),
(17, 17, 16, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '205.00', '7675.00', '2019-07-01', 'admin', '2019-07-01 04:46:43'),
(18, 18, 17, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '100.00', '7775.00', '2019-07-01', 'admin', '2019-07-01 04:47:12'),
(19, 19, 18, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '100.00', '7875.00', '2019-07-03', 'admin', '2019-07-03 04:57:03'),
(20, 20, 19, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '215.00', '8090.00', '2019-07-03', 'admin', '2019-07-03 05:05:49'),
(21, 21, 20, 'C', 3, 2, 2, 'ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '129.80', '8219.80', '2019-07-04', 'admin', '2019-07-04 05:29:25'),
(22, 22, 21, 'C', 7, 11, 1, 'সরকারী অনুদান-ভূমি হস্তান্তর কর (১%),১ম কিস্তি', '0004-0004-0004-0004', '0.00', '1000.00', '1000.00', '2019-07-04', 'admin', '2019-07-04 11:16:10'),
(23, 23, 22, 'C', 3, 2, 2, 'লাইসেন্স ফি,ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '2222.00', '10441.80', '2019-07-04', 'admin', '2019-07-04 11:17:45'),
(24, 24, 23, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '800.00', '11241.80', '2019-07-06', 'admin', '2019-07-06 09:16:42'),
(25, 25, 24, 'C', 1, 4, 2, 'ব্যবসা,পেশা ও জীবিকার উপর কর', '0000-0000-0000-0000', '0.00', '100.00', '11341.80', '2019-07-07', 'admin', '2019-07-07 17:11:31'),
(26, 26, 25, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '390.00', '11731.80', '2019-07-08', 'admin', '2019-07-08 08:58:20'),
(29, 27, 26, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '1625.00', '13356.80', '2019-07-14', 'admin', '2019-07-14 15:11:57'),
(30, 28, 27, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '1900.00', '15256.80', '2019-07-17', 'admin', '2019-07-17 05:05:26'),
(31, 29, 28, 'C', 1, 5, 2, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '0000-0000-0000-0000', '0.00', '173.00', '15429.80', '2019-07-17', 'admin', '2019-07-17 12:03:08'),
(32, 30, 29, 'C', 3, 2, 2, 'ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '0.00', '15429.80', '2019-07-19', 'admin', '2019-07-19 05:14:19'),
(33, 31, 30, 'C', 6, 1, 2, 'ওয়ারিশ সনদ', '0000-0000-0000-0000', '0.00', '0.00', '15429.80', '2020-08-31', 'admin', '2020-08-31 08:59:36'),
(34, 32, 31, 'C', 14, 23, 10, NULL, '0000-0000-0000-0000', '0.00', '0.00', '15429.80', '2020-12-27', 'admin', '2020-12-26 21:14:42'),
(35, 33, 32, 'C', 14, 23, 10, 'অবিবাহিত সনদ', '0000-0000-0000-0000', '0.00', '0.00', '15429.80', '2021-03-08', 'admin', '2021-03-08 08:47:15'),
(36, 34, 33, 'C', 3, 2, 2, 'ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '575.00', '16004.80', '2022-03-15', 'admin', '2022-03-15 12:00:35'),
(37, 35, 34, 'C', 3, 2, 2, 'ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '1150.00', '17154.80', '2022-03-15', 'admin', '2022-03-15 13:38:09'),
(38, 36, 35, 'C', 3, 2, 2, 'ট্রেড লাইসেন্স ফি', '0000-0000-0000-0000', '0.00', '575.00', '17729.80', '2022-03-16', 'admin', '2022-03-16 07:38:32'),
(39, 37, 36, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '20.00', '17749.80', '2022-03-16', 'admin', '2022-03-16 07:54:02'),
(40, 38, 37, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '20.00', '17769.80', '2022-03-16', 'admin', '2022-03-16 09:00:38'),
(41, 39, 38, 'C', 14, 23, 10, 'চারিত্রিক সনদ', '0000-0000-0000-0000', '0.00', '20.00', '17789.80', '2022-03-20', 'admin', '2022-03-20 06:29:00'),
(42, 40, 39, 'C', 14, 23, 10, 'চারিত্রিক সনদ', '0000-0000-0000-0000', '0.00', '50.00', '17839.80', '2022-03-20', 'admin', '2022-03-20 09:58:41'),
(43, 41, 40, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '30.00', '17869.80', '2022-03-21', 'admin', '2022-03-21 03:21:26'),
(44, 42, 41, 'C', 6, 1, 2, 'ওয়ারিশ সনদ', '0000-0000-0000-0000', '0.00', '60.00', '17929.80', '2022-03-21', 'admin', '2022-03-21 09:26:18'),
(45, 43, 42, 'C', 6, 1, 2, 'নাগরিক সনদ', '0000-0000-0000-0000', '0.00', '50.00', '17979.80', '2022-03-23', 'admin', '2022-03-23 17:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `license_hostory`
--

CREATE TABLE `license_hostory` (
  `id` int(11) NOT NULL,
  `sno` varchar(17) NOT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `status` enum('1','2') NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `license_hostory`
--

INSERT INTO `license_hostory` (`id`, `sno`, `issue_date`, `expire_date`, `status`, `up_date`) VALUES
(1, '20180915345445294', '2018-07-18', '2019-06-30', '1', '2018-07-17 20:37:17'),
(2, '20190915345589712', '2019-07-04', '2020-06-30', '1', '2019-07-04 05:29:25'),
(3, '20190915345252419', '2019-07-19', '2020-06-30', '1', '2019-07-19 05:14:19'),
(4, '20190915345589712', '2019-07-04', '2020-06-30', '1', '2020-08-31 09:11:18'),
(5, '20190915345589712', '2020-08-31', '2021-06-30', '2', '2020-08-31 09:11:18'),
(6, '20190915345589712', '2020-08-31', '2021-06-30', '1', '2020-08-31 09:11:36'),
(7, '20190915345589712', '2020-08-31', '2021-06-30', '2', '2020-08-31 09:11:36'),
(8, '20190915345252419', '2019-07-19', '2020-06-30', '1', '2021-12-28 15:01:54'),
(9, '20190915345252419', '2021-12-28', '2022-06-30', '2', '2021-12-28 15:01:54'),
(10, '20190915345252419', '2021-12-28', '2022-06-30', '1', '2021-12-28 15:02:06'),
(11, '20190915345252419', '2021-12-28', '2022-06-30', '2', '2021-12-28 15:02:06'),
(12, '20190915345252419', '2021-12-28', '2022-06-30', '1', '2021-12-28 15:02:53'),
(13, '20190915345252419', '2021-12-28', '2022-06-30', '2', '2021-12-28 15:02:53'),
(14, '20190915345252419', '2021-12-28', '2022-06-30', '1', '2021-12-28 15:05:04'),
(15, '20190915345252419', '2021-12-28', '2022-06-30', '2', '2021-12-28 15:05:04'),
(16, '20190915345589712', '2020-08-31', '2021-06-30', '1', '2021-12-28 15:05:52'),
(17, '20190915345589712', '2021-12-28', '2022-06-30', '2', '2021-12-28 15:05:52'),
(18, '20220640065422898', '2022-03-15', '2022-06-30', '1', '2022-03-15 12:00:35'),
(19, '20220640065317330', '2022-03-15', '2022-06-30', '1', '2022-03-15 13:38:09'),
(20, '20220640065621340', '2022-03-16', '2022-06-30', '1', '2022-03-16 07:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `license_notification`
--

CREATE TABLE `license_notification` (
  `id` int(11) NOT NULL,
  `notifydate` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mainctg`
--

CREATE TABLE `mainctg` (
  `id` int(11) NOT NULL,
  `fund_id` int(11) NOT NULL COMMENT '1=development, 2= personal',
  `category` varchar(255) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `insert_by` varchar(40) NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mainctg`
--

INSERT INTO `mainctg` (`id`, `fund_id`, `category`, `balance`, `insert_by`, `utime`) VALUES
(1, 2, 'কর ও রেট', '13313.00', 'admin', '2022-04-16 06:32:22'),
(2, 1, 'ইজারা', '0.00', 'admin', '2018-06-07 21:46:30'),
(3, 2, 'লাইসেন্স ফি', '4766.80', 'admin', '2022-03-16 07:38:32'),
(4, 2, 'যানবাহন (মটরযান ব্যতীত)', '0.00', 'admin', '2018-06-07 21:46:30'),
(5, 1, 'বিনিযোগের আয়', '0.00', 'admin', '2018-06-07 21:46:30'),
(6, 2, 'জন্ম নিবন্ধন ফি', '430.00', 'admin', '2022-03-23 17:09:51'),
(7, 1, 'সরকারী অনুদান-ভূমি হস্তান্তর কর (১%)', '1000.00', 'admin', '2019-07-04 11:16:10'),
(8, 1, 'সরকরী অনুদান-সংস্থাপন', '0.00', 'admin', '2018-06-07 21:46:30'),
(9, 1, 'সরকরী অনুদান-উন্নয়ন', '0.00', 'admin', '2018-06-07 21:46:30'),
(10, 1, 'স্থানীয় সরকার-জেলা পরিষদ অনুদান', '0.00', 'admin', '2018-06-07 21:46:30'),
(11, 1, 'স্থানীয় সরকার-উপজেলা পরিষদ অনুদান', '0.00', 'admin', '2018-06-07 21:46:30'),
(12, 1, 'এলজিএসপি ফান্ড ফেরত', '0.00', 'admin', '2018-06-07 21:46:30'),
(13, 2, 'অন্যান্য প্রাপ্তি', '0.00', 'admin', '2018-06-07 21:46:30'),
(14, 10, 'UDC fund', '70.00', 'admin', '2022-03-20 09:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `mainctg_in_budget`
--

CREATE TABLE `mainctg_in_budget` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `actual_budget` decimal(10,2) NOT NULL,
  `budget_year` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mamla_badi`
--

CREATE TABLE `mamla_badi` (
  `id` int(11) UNSIGNED NOT NULL,
  `mamla_id` int(11) UNSIGNED NOT NULL,
  `badi_name` varchar(60) DEFAULT NULL,
  `badi_father_name` varchar(60) DEFAULT NULL,
  `gram` varchar(120) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mamla_badi`
--

INSERT INTO `mamla_badi` (`id`, `mamla_id`, `badi_name`, `badi_father_name`, `gram`, `status`) VALUES
(1, 1, 'asdad', 'asdasd', '', '1'),
(2, 2, 'asdad', 'asdasd', 'asd1', '1'),
(3, 2, 'asdad', 'asdasd', 'asd', '1'),
(4, 3, 'asdad', '', '', '1'),
(5, 3, 'asdad', 'asdasd', '', '1'),
(6, 4, 'asdad', 'asdasd', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mamla_bibadi`
--

CREATE TABLE `mamla_bibadi` (
  `id` int(11) UNSIGNED NOT NULL,
  `mamla_id` int(11) UNSIGNED NOT NULL,
  `bibadi_name` varchar(60) DEFAULT NULL,
  `bibadi_father_name` varchar(60) DEFAULT NULL,
  `gram` varchar(120) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mamla_bibadi`
--

INSERT INTO `mamla_bibadi` (`id`, `mamla_id`, `bibadi_name`, `bibadi_father_name`, `gram`, `status`) VALUES
(1, 1, 'asd', 'asd', '', '1'),
(2, 2, 'asd', 'asd', 'asd', '1'),
(3, 2, 'asd', 'asd', 'asd', '1'),
(4, 3, 'asd', 'asd', '', '1'),
(5, 4, 'asd', 'asd', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mamla_tbl`
--

CREATE TABLE `mamla_tbl` (
  `id` int(11) UNSIGNED NOT NULL,
  `mamla_no` int(11) UNSIGNED NOT NULL,
  `mamla_sonod` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `mamla_date` date NOT NULL,
  `sunani_date` date NOT NULL,
  `badi_gram` varchar(120) DEFAULT NULL,
  `bibadi_gram` varchar(120) DEFAULT NULL,
  `status` enum('1','2','3') NOT NULL,
  `comments` text DEFAULT NULL,
  `ins_user` varchar(40) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mamla_tbl`
--

INSERT INTO `mamla_tbl` (`id`, `mamla_no`, `mamla_sonod`, `subject`, `mamla_date`, `sunani_date`, `badi_gram`, `bibadi_gram`, `status`, `comments`, `ins_user`, `up_date`) VALUES
(1, 1, '20190915345703511', 'Null', '2019-07-01', '2019-07-09', 'adsasd', 'asd', '3', '', 'admin', '2019-07-02 09:18:41'),
(2, 2, '20190915345550952', 'Null', '2019-07-01', '2019-07-31', '', '', '2', '', 'admin', '2019-07-02 10:56:58'),
(3, 3, '20190915345290546', 'aa', '2019-07-02', '2019-07-22', '', '', '1', NULL, 'admin', '2019-07-02 06:21:02'),
(4, 4, '20190915345825137', 'Null', '2019-07-02', '2019-06-24', '', '', '1', NULL, 'admin', '2019-07-02 09:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id` int(11) UNSIGNED NOT NULL,
  `trackid` varchar(17) NOT NULL COMMENT 'holding tax = dagno, tradelicense = trackid, other = sno',
  `bno` int(11) UNSIGNED DEFAULT NULL COMMENT 'Book number, use tradelicense, holding tax',
  `m_r_n` int(11) UNSIGNED DEFAULT NULL COMMENT 'Money receipt number',
  `inno` int(11) UNSIGNED NOT NULL COMMENT 'Invoice number',
  `fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'sub total',
  `due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `scharge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'pay amount',
  `fiscal_year_id` text DEFAULT NULL,
  `rate_sheet_id` text DEFAULT NULL,
  `rate_sheet_amount` text DEFAULT NULL,
  `payment_date` date NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1=tradelicense,2=tradeBosotbitaKor, 3= tradepesKor, 4=dagBosotKor, 5=nagorick, 6= warish, 7= dailycollection, 8=dailyexpensive',
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`id`, `trackid`, `bno`, `m_r_n`, `inno`, `fee`, `due`, `scharge`, `discount`, `vat`, `total`, `fiscal_year_id`, `rate_sheet_id`, `rate_sheet_amount`, `payment_date`, `status`, `utime`) VALUES
(1, '1001', 1, 1, 1, '2000.00', '0.00', '0.00', '0.00', '0.00', '2000.00', '[\"4\",\"3\"]', '[\"1\",\"1\"]', '[\"1000.00\",\"1000.00\"]', '2018-06-08', 4, '2018-06-07 22:54:49'),
(2, '1002', 1, 2, 2, '250.00', '0.00', '0.00', '50.00', '0.00', '200.00', '[\"4\"]', '[\"8\"]', '[\"250.00\"]', '2018-06-08', 4, '2018-06-07 22:57:08'),
(3, '11111111', 1, NULL, 3, '100.00', '0.00', '0.00', '0.00', '15.00', '115.00', NULL, NULL, NULL, '2018-07-18', 1, '2018-07-17 20:37:17'),
(4, '1001', 101, 12, 4, '3000.00', '0.00', '0.00', '0.00', '0.00', '3000.00', '[\"9\",\"8\",\"5\"]', '[\"1\",\"1\",\"1\"]', '[\"1000.00\",\"1000.00\",\"1000.00\"]', '2018-07-18', 4, '2018-07-17 21:10:39'),
(5, '379040', NULL, NULL, 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2018-10-04', 5, '2018-10-03 19:52:24'),
(6, '258853', NULL, NULL, 6, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2018-10-09', 6, '2018-10-08 19:58:22'),
(7, '1110', 123, 1111, 7, '400.00', '0.00', '0.00', '0.00', '0.00', '400.00', '[\"5\"]', '[\"10\"]', '[\"400.00\"]', '2019-05-25', 4, '2019-05-24 19:23:05'),
(8, '153119', NULL, NULL, 8, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2019-05-25', 5, '2019-05-24 19:26:17'),
(9, '1200', 1, 101, 9, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '[\"4\"]', '[\"11\"]', '[\"100.00\"]', '2019-05-27', 4, '2019-05-27 06:14:42'),
(10, '1200', 1, 102, 10, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '[\"5\"]', '[\"11\"]', '[\"100.00\"]', '2019-05-27', 4, '2019-05-27 06:19:35'),
(11, '784188', NULL, NULL, 11, '50.00', '0.00', '0.00', '0.00', '0.00', '50.00', NULL, NULL, NULL, '2019-05-27', 5, '2019-05-27 06:20:57'),
(12, '1260', 1, 100, 12, '225.00', '0.00', '0.00', '0.00', '0.00', '225.00', '[\"5\"]', '[\"7\"]', '[\"225.00\"]', '2019-05-30', 4, '2019-05-30 05:25:07'),
(13, '831291', NULL, NULL, 13, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2019-05-30', 5, '2019-05-30 06:15:06'),
(14, '0000', 1, 10, 14, '400.00', '0.00', '0.00', '10.00', '0.00', '390.00', '[\"1\"]', '[\"10\"]', '[\"400.00\"]', '2019-06-30', 4, '2019-06-29 19:55:07'),
(15, '2235', 1, 1011, 15, '1000.00', '0.00', '0.00', '10.00', '0.00', '990.00', '[\"5\"]', '[\"12\"]', '[\"1000.00\"]', '2019-07-01', 4, '2019-07-01 04:46:00'),
(16, '1260', 1, 1012, 16, '225.00', '0.00', '0.00', '20.00', '0.00', '205.00', '[\"6\"]', '[\"7\"]', '[\"225.00\"]', '2019-07-01', 4, '2019-07-01 04:46:43'),
(17, '444091', NULL, NULL, 17, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', NULL, NULL, NULL, '2019-07-01', 5, '2019-07-01 04:47:12'),
(18, '508830', NULL, NULL, 18, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', NULL, NULL, NULL, '2019-07-03', 5, '2019-07-03 04:57:03'),
(19, '1120', 12, 1, 19, '225.00', '0.00', '0.00', '10.00', '0.00', '215.00', '[\"6\"]', '[\"7\"]', '[\"225.00\"]', '2019-07-03', 4, '2019-07-03 05:05:49'),
(20, '181566', 2, NULL, 20, '100.00', '12.00', '12.00', '0.00', '16.80', '129.80', NULL, NULL, NULL, '2019-07-04', 1, '2019-07-04 05:29:25'),
(21, '000000', NULL, NULL, 21, '1000.00', '0.00', '0.00', '0.00', '0.00', '1000.00', NULL, NULL, NULL, '2019-07-04', 7, '2019-07-04 11:16:10'),
(22, '000000', NULL, NULL, 22, '2222.00', '0.00', '0.00', '0.00', '0.00', '2222.00', NULL, NULL, NULL, '2019-07-04', 7, '2019-07-04 11:17:45'),
(23, '2235', 2, 11, 23, '1000.00', '0.00', '0.00', '200.00', '0.00', '800.00', '[\"7\"]', '[\"1\"]', '[\"1000.00\"]', '2019-07-06', 4, '2019-07-06 09:16:42'),
(24, '181566', NULL, NULL, 24, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', NULL, NULL, NULL, '2019-07-07', 3, '2019-07-07 17:11:31'),
(25, '1120', 12, 1011, 25, '400.00', '0.00', '0.00', '10.00', '0.00', '390.00', '[\"5\"]', '[\"10\"]', '[\"400.00\"]', '2019-07-08', 4, '2019-07-08 08:58:20'),
(26, '1250', 1, 122, 26, '1725.00', '0.00', '0.00', '100.00', '0.00', '1625.00', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"7\"]', '[\"1000.00\",\"500.00\",\"225.00\"]', '2019-07-14', 4, '2019-07-14 15:11:57'),
(27, '1250', 55, 222, 27, '2000.00', '0.00', '0.00', '100.00', '0.00', '1900.00', '[\"6\",\"7\"]', '[\"1\",\"1\"]', '[\"1000.00\",\"1000.00\"]', '2019-07-17', 4, '2019-07-17 05:05:26'),
(28, '1260', 5, 10, 28, '225.00', '0.00', '0.00', '52.00', '0.00', '173.00', '[\"1\"]', '[\"7\"]', '[\"225.00\"]', '2019-07-17', 4, '2019-07-17 12:03:08'),
(29, '432432', 3, NULL, 29, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2019-07-19', 1, '2019-07-19 05:14:19'),
(30, '054265', NULL, NULL, 30, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2020-08-31', 6, '2020-08-31 08:59:36'),
(31, '093144', NULL, NULL, 31, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2020-12-27', 5, '2020-12-26 21:14:42'),
(32, '597436', NULL, NULL, 32, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, '2021-03-08', 5, '2021-03-08 08:47:15'),
(33, '467008', 4, NULL, 33, '500.00', '0.00', '0.00', '0.00', '75.00', '575.00', NULL, NULL, NULL, '2022-03-15', 1, '2022-03-15 12:00:35'),
(34, '418709', 5, NULL, 34, '1000.00', '0.00', '0.00', '0.00', '150.00', '1150.00', NULL, NULL, NULL, '2022-03-15', 1, '2022-03-15 13:38:09'),
(35, '176080', 6, NULL, 35, '500.00', '0.00', '0.00', '0.00', '75.00', '575.00', NULL, NULL, NULL, '2022-03-16', 1, '2022-03-16 07:38:32'),
(36, '358230', NULL, NULL, 36, '20.00', '0.00', '0.00', '0.00', '0.00', '20.00', NULL, NULL, NULL, '2022-03-16', 5, '2022-03-16 07:54:02'),
(37, '286220', NULL, NULL, 37, '20.00', '0.00', '0.00', '0.00', '0.00', '20.00', NULL, NULL, NULL, '2022-03-16', 5, '2022-03-16 09:00:38'),
(38, '329563', NULL, NULL, 38, '20.00', '0.00', '0.00', '0.00', '0.00', '20.00', NULL, NULL, NULL, '2022-03-20', 5, '2022-03-20 06:29:00'),
(39, '361938', NULL, NULL, 39, '50.00', '0.00', '0.00', '0.00', '0.00', '50.00', NULL, NULL, NULL, '2022-03-20', 5, '2022-03-20 09:58:41'),
(40, '498113', NULL, NULL, 40, '30.00', '0.00', '0.00', '0.00', '0.00', '30.00', NULL, NULL, NULL, '2022-03-21', 5, '2022-03-21 03:21:26'),
(41, '251137', NULL, NULL, 41, '60.00', '0.00', '0.00', '0.00', '0.00', '60.00', NULL, NULL, NULL, '2022-03-21', 6, '2022-03-21 09:26:18'),
(42, '388281', NULL, NULL, 42, '50.00', '0.00', '0.00', '0.00', '0.00', '50.00', NULL, NULL, NULL, '2022-03-23', 5, '2022-03-23 17:09:51'),
(54, '8908', NULL, NULL, 43, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '\"9\"', '\"11\"', '\"100.00\"', '2022-04-16', 4, '2022-04-16 06:24:35'),
(55, '1043', NULL, NULL, 44, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '\"9\"', '\"11\"', '\"100.00\"', '2022-04-01', 4, '2022-04-16 06:26:27'),
(56, '1043', NULL, NULL, 45, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '\"9\"', '\"11\"', '\"100.00\"', '2022-04-03', 4, '2022-04-16 06:29:37'),
(57, '1043', NULL, NULL, 46, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '\"9\"', '\"11\"', '\"100.00\"', '2022-04-05', 4, '2022-04-16 06:30:59'),
(58, '1501', NULL, NULL, 47, '100.00', '0.00', '0.00', '0.00', '0.00', '100.00', '\"9\"', '\"11\"', '\"100.00\"', '2022-04-12', 4, '2022-04-16 06:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `onnanoseba`
--

CREATE TABLE `onnanoseba` (
  `id` int(11) UNSIGNED NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `applicant_id` int(11) UNSIGNED NOT NULL,
  `trno` bigint(16) NOT NULL,
  `vno` bigint(16) NOT NULL,
  `acno` varchar(255) DEFAULT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `onnanoseba`
--

INSERT INTO `onnanoseba` (`id`, `trackid`, `applicant_id`, `trno`, `vno`, `acno`, `fee`, `payment_date`, `utime`) VALUES
(1, '093144', 1, 32, 31, '0000-0000-0000-0000', '0.00', '2020-12-27', '2020-12-26 21:14:42'),
(2, '597436', 2, 33, 32, '0000-0000-0000-0000', '0.00', '2021-03-08', '2021-03-08 08:47:15'),
(3, '329563', 3, 39, 38, '0000-0000-0000-0000', '20.00', '2022-03-20', '2022-03-20 06:29:00'),
(4, '361938', 4, 40, 39, '0000-0000-0000-0000', '50.00', '2022-03-20', '2022-03-20 09:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `otherserviceinfo`
--

CREATE TABLE `otherserviceinfo` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trackid` varchar(8) NOT NULL,
  `sonodno` varchar(17) DEFAULT NULL,
  `delivery_type` tinyint(3) NOT NULL,
  `serviceId` tinyint(3) NOT NULL,
  `mukti_name` varchar(60) NOT NULL,
  `gejet_no` varchar(15) NOT NULL,
  `m_sonshod_sonod` varchar(20) NOT NULL,
  `relation` varchar(60) NOT NULL,
  `short_rel` varchar(30) NOT NULL,
  `sector_no` varchar(10) NOT NULL,
  `mukti_sonod` varchar(20) NOT NULL,
  `incomeAmount` varchar(20) DEFAULT NULL,
  `publishName` varchar(60) DEFAULT NULL,
  `workPlace` varchar(100) DEFAULT NULL,
  `ddfb` date NOT NULL,
  `nationid` varchar(20) DEFAULT NULL,
  `bcno` varchar(20) DEFAULT NULL,
  `pno` varchar(20) DEFAULT NULL,
  `dofb` date NOT NULL,
  `ename` varchar(60) NOT NULL,
  `name` varchar(80) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `mstatus` tinyint(2) NOT NULL,
  `ewname` varchar(60) DEFAULT NULL,
  `bwname` varchar(80) DEFAULT NULL,
  `ehname` varchar(60) DEFAULT NULL,
  `bhname` varchar(80) DEFAULT NULL,
  `efname` varchar(60) NOT NULL,
  `bfname` varchar(80) NOT NULL,
  `emname` varchar(60) NOT NULL,
  `mname` varchar(80) NOT NULL,
  `ocupt` varchar(120) DEFAULT NULL,
  `edustatus` varchar(120) DEFAULT NULL,
  `religion` varchar(30) NOT NULL,
  `bashinda` enum('1','2') NOT NULL,
  `p_gram` varchar(60) DEFAULT NULL,
  `pb_gram` varchar(100) DEFAULT NULL,
  `p_rbs` varchar(60) DEFAULT NULL,
  `pb_rbs` varchar(80) DEFAULT NULL,
  `p_wordno` int(4) DEFAULT NULL,
  `pb_wordno` varchar(10) DEFAULT NULL,
  `p_dis` varchar(60) DEFAULT NULL,
  `pb_dis` varchar(100) DEFAULT NULL,
  `p_thana` varchar(60) DEFAULT NULL,
  `pb_thana` varchar(100) DEFAULT NULL,
  `p_postof` varchar(60) DEFAULT NULL,
  `pb_postof` varchar(100) DEFAULT NULL,
  `per_gram` varchar(60) DEFAULT NULL,
  `perb_gram` varchar(100) DEFAULT NULL,
  `per_rbs` varchar(60) DEFAULT NULL,
  `perb_rbs` varchar(80) DEFAULT NULL,
  `per_wordno` int(4) DEFAULT NULL,
  `perb_wordno` varchar(10) DEFAULT NULL,
  `per_dis` varchar(60) DEFAULT NULL,
  `perb_dis` varchar(100) DEFAULT NULL,
  `per_thana` varchar(60) DEFAULT NULL,
  `perb_thana` varchar(100) DEFAULT NULL,
  `per_postof` varchar(60) DEFAULT NULL,
  `perb_postof` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `profile` varchar(160) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL COMMENT '	1=user apply, 2= admin apply	',
  `is_process` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=accented, 2=paid, 3=complete',
  `payment_method` tinyint(3) DEFAULT NULL COMMENT '1=bkash, 2=cash',
  `insert_time` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `otherserviceinfo`
--

INSERT INTO `otherserviceinfo` (`id`, `user_id`, `trackid`, `sonodno`, `delivery_type`, `serviceId`, `mukti_name`, `gejet_no`, `m_sonshod_sonod`, `relation`, `short_rel`, `sector_no`, `mukti_sonod`, `incomeAmount`, `publishName`, `workPlace`, `ddfb`, `nationid`, `bcno`, `pno`, `dofb`, `ename`, `name`, `gender`, `mstatus`, `ewname`, `bwname`, `ehname`, `bhname`, `efname`, `bfname`, `emname`, `mname`, `ocupt`, `edustatus`, `religion`, `bashinda`, `p_gram`, `pb_gram`, `p_rbs`, `pb_rbs`, `p_wordno`, `pb_wordno`, `p_dis`, `pb_dis`, `p_thana`, `pb_thana`, `p_postof`, `pb_postof`, `per_gram`, `perb_gram`, `per_rbs`, `perb_rbs`, `per_wordno`, `perb_wordno`, `per_dis`, `perb_dis`, `per_thana`, `perb_thana`, `per_postof`, `perb_postof`, `mobile`, `email`, `attachment`, `profile`, `status`, `type`, `is_process`, `payment_method`, `insert_time`, `utime`) VALUES
(1, NULL, '448740', NULL, 3, 1, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '2020-12-17', '2', '2', 'female', 2, '', '', '', '', '2', '2', '2', '2', '', '', 'হিন্দু', '2', '2', '2', '2', '2', 2, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 2, '2', '2', '2', '2', '2', '2', '2', '01830320809', '', 'ts', 'http://localhost/smartUp/img/default/profile.png', '0', 0, 0, NULL, '2020-12-27', '2020-12-26 21:00:49'),
(2, NULL, '093144', '20200915345752498', 3, 0, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '2020-12-02', '33', '33', 'male', 2, '', '', '', '', '3', '33', '33', '33', '', '', 'ইসলাম', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01830320801', '', '', 'library/profile/1609016556.JPG', '1', 0, 0, NULL, '2020-12-27', '2020-12-26 21:14:42'),
(3, NULL, '733613', NULL, 3, 1, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '2020-12-10', '22', '22', 'female', 2, '', '', '', '', '22', '22', '22', '22', '', '', 'হিন্দু', '1', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01830320804', '', '', 'library/profile/1609016683.JPG', '0', 0, 0, NULL, '2020-12-27', '2020-12-26 21:04:43'),
(4, NULL, '398519', NULL, 3, 2, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '2020-12-09', '22', '22', 'female', 2, '', '', '', '', '22', '22', '22', '22', '', '', 'ইসলাম', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01830320803', '', 'tst', 'library/profile/160929778119032.jpg', '0', 0, 1, NULL, '2020-12-27', '2022-03-21 07:09:37'),
(5, NULL, '597436', '20210640036505415', 3, 3, '', '', '', '', '', '', '', '3', '3', '3', '2020-12-17', '', '', '', '2020-12-16', '3', '3', 'female', 3, '', '', '', '', '3', '3', 'asdfsa', 'asdf', '3', '3', 'হিন্দু', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01830320808', '', 'stt', 'library/profile/160933597834746.jpg', '1', 0, 0, NULL, '2020-12-30', '2021-03-08 08:47:15'),
(6, NULL, '553186', NULL, 3, 0, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '2020-12-17', 'a', 'a', 'female', 2, '', '', '', '', 'a', 'a', 'a', 'a', '', '', 'হিন্দু', '2', 'a', '', 'a', '', 0, '', 'a', '', 'a', '', 'a', '', 'a', '', 'a', '', 0, '', 'a', '', 'a', '', 'a', '', '01830320802', '', '', 'library/profile/160934891915300.jpg', '0', 0, 0, NULL, '2020-12-30', '2020-12-30 17:21:59'),
(8, 18, '361938', '20220640065721933', 3, 2, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '199800199922287', '199800569023334 ', '', '2022-03-01', 'Aftab', 'আফতাব খান  ', 'male', 2, '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', '', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01311000222', '', 'zdvgdfa fa', 'library/profile/164775598265999.', '1', 1, 3, NULL, '2022-03-20', '2022-03-20 09:58:41'),
(9, NULL, '329563', '20220640065739277', 3, 2, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '19000000000001111', '19004000000001111', '', '2022-02-27', 'test', 'test', 'male', 2, '', '', '', '', 'dfgg', 'sdgdfg', 'dfgdf', 'gfdgfd', '', '', 'ইসলাম', '2', '', 'fbfgfd', '', 'b', 0, '4', '', 'fdgf', '', 'fgfg', '', 'fgg', '', 'fbfgfd', '', 'b', 0, '4', '', 'fdgf', '', 'fgfg', '', 'fgg', '01899999000', '', 'gjjg', 'img/default/profile.png', '1', 0, 0, NULL, '2022-03-20', '2022-03-20 06:29:00'),
(10, 19, '364282', NULL, 3, 10, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '199933333444567', '199921000056123 ', '', '2022-02-28', 'abdul k', 'Abdul Karim ', 'male', 2, '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', '', 'msc', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01466543951', '', 'xvcfbxc xvxcvcxvx', 'library/profile/164792897421752.', '0', 1, 1, NULL, '2022-03-22', '2022-03-22 06:06:15'),
(11, 19, '269738', NULL, 3, 2, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '199933333444567', '199921000056123 ', '', '2022-02-27', 'ak', 'আব্দুল করিম  ', 'male', 2, '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', '', '', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01866543951', '', 'gjhkgb jhg', 'library/profile/164803227450959.', '0', 1, 0, NULL, '2022-03-23', '2022-03-23 11:23:22'),
(12, 21, '578256', NULL, 3, 2, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '209457893257320', '209457893257356 ', '', '2022-02-28', 'j', 'Md Javed ', 'male', 2, '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'dfgdfg', '', '', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01339707634', '', '  bxcvxcv', 'library/profile/164838032061664.', '0', 1, 2, NULL, '2022-03-27', '2022-03-27 11:26:17'),
(13, 22, '688828', NULL, 3, 2, '', '', '', '', '', '', '', '', '', '', '0000-00-00', '199801909878890', '199801909874444', '4654654hh', '2022-02-27', 'Korimov', 'মোঃ করিমভ ', 'male', 2, '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', 'msc', 'ইসলাম', '2', 'Arambag', 'মধ্য আরামবাগ ', '664654', 'প্রধান সড়ক ', 6, '6', 'Feni', 'ফেনী ', 'fulgazi', 'ফুলগাজি ', 'aa', 'আরামবাগ', 'Arambag', 'মধ্য আরামবাগ ', '664654', 'প্রধান সড়ক ', 6, '6', 'Feni', 'ফেনী ', 'fulgazi', 'ফুলগাজি ', 'aa', 'আরামবাগ', '01866543951', 'ab@gmail.com', 'vdsfd asds', 'library/profile/164906851821149.', '0', 1, 0, 1, '2022-04-04', '2022-04-04 10:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `otherservicelist`
--

CREATE TABLE `otherservicelist` (
  `id` int(11) NOT NULL,
  `listName` varchar(120) NOT NULL,
  `insdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ins_user` varchar(60) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `otherservicelist`
--

INSERT INTO `otherservicelist` (`id`, `listName`, `insdate`, `ins_user`, `status`) VALUES
(1, 'মৃত্যু সনদ', '2018-06-07 21:56:55', 'admin', '1'),
(2, 'চারিত্রিক সনদ', '2018-06-07 21:56:55', 'admin', '1'),
(3, 'অবিবাহিত সনদ', '2018-06-07 21:56:55', 'admin', '1'),
(4, 'ভূমিহীন সনদ', '2022-03-24 08:57:15', 'admin', '0'),
(5, 'পুনঃ বিবাহ না হওয়া সনদ ', '2018-06-07 21:56:55', 'admin', '1'),
(6, 'বার্ষিক আয়ের প্রত্যয়ন', '2022-03-24 08:56:35', 'admin', '0'),
(7, 'একই নামের প্রত্যয়ন', '2022-03-24 08:56:30', 'admin', '0'),
(8, 'প্রকৃত বাকঁ ও শ্রবন প্রতিবন্ধী', '2022-03-24 08:57:03', 'admin', '1'),
(9, 'সনাতন ধর্ম  অবলম্বী', '2022-03-24 08:56:11', 'admin', '0'),
(10, 'অনুমতি পত্র', '2022-03-24 08:56:04', 'admin', '0'),
(11, 'প্রত্যয়ন পত্র', '2022-03-24 08:55:57', 'admin', '0'),
(12, 'মুক্তিযোদ্ধা সনদ', '2018-06-07 21:56:55', 'admin', '1'),
(13, 'মুক্তিযোদ্ধা পোষ্য সনদ', '2018-06-07 21:56:55', 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_api`
--

CREATE TABLE `payment_gateway_api` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `app_key` text DEFAULT NULL,
  `app_secret` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `is_active` tinyint(3) NOT NULL DEFAULT 1,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_gateway_api`
--

INSERT INTO `payment_gateway_api` (`id`, `username`, `password`, `app_key`, `app_secret`, `status`, `is_active`, `entry_date`) VALUES
(1, 'testdemo', 'test%#de23@msdao', '5nej5keguopj928ekcj3dne8p', '1honf6u1c56mqcivtc9ffl960slp4v2756jle5925nbooa46ch62', 1, 1, '2022-03-30 10:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `payment_log_bosotbita`
--

CREATE TABLE `payment_log_bosotbita` (
  `id` int(10) UNSIGNED NOT NULL,
  `holding_info_id` bigint(20) NOT NULL,
  `invoice` int(10) UNSIGNED NOT NULL,
  `voucherno` varchar(20) DEFAULT NULL,
  `holding_no` varchar(10) NOT NULL,
  `dag_no` varchar(10) DEFAULT NULL,
  `book_number` int(10) UNSIGNED DEFAULT NULL,
  `money_receipt` int(10) UNSIGNED DEFAULT NULL,
  `fisyal_year_id` smallint(5) UNSIGNED NOT NULL,
  `rate_sheet_id` smallint(5) UNSIGNED NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `sub_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `is_paid` tinyint(3) DEFAULT NULL COMMENT '0=unpaid, 1=paid',
  `type` tinyint(3) DEFAULT NULL COMMENT '1=offline payment, 2=online payment',
  `status` tinyint(3) DEFAULT NULL COMMENT '	0=pending ,1=accented 2=paid, 3=complete',
  `payment_date` date NOT NULL,
  `is_active` tinyint(3) DEFAULT NULL COMMENT '1=current,2=previous',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_log_bosotbita`
--

INSERT INTO `payment_log_bosotbita` (`id`, `holding_info_id`, `invoice`, `voucherno`, `holding_no`, `dag_no`, `book_number`, `money_receipt`, `fisyal_year_id`, `rate_sheet_id`, `amount`, `sub_amount`, `due_amount`, `discount`, `total`, `is_paid`, `type`, `status`, `payment_date`, `is_active`, `created_by`, `created_ip`, `updated_ip`, `created_date`, `updated_date`, `updated_by`) VALUES
(78, 5, 1, NULL, '125', NULL, NULL, NULL, 9, 11, '100.00', '0.00', '0.00', '0.00', '100.00', 0, NULL, 0, '0000-00-00', 1, 1, '::1', NULL, '2022-04-13 16:22:00', NULL, NULL),
(79, 12, 2, NULL, '1250', NULL, NULL, NULL, 9, 11, '100.00', '0.00', '200.00', '0.00', '100.00', 0, NULL, 0, '0000-00-00', 1, 1, '::1', NULL, '2022-04-13 16:22:00', NULL, NULL),
(80, 19, 3, '47', '200', NULL, NULL, NULL, 9, 11, '100.00', '0.00', '0.00', '0.00', '100.00', 1, 1, 3, '2022-04-12', 1, 1, '::1', '::1', '2022-04-13 16:22:00', '2022-04-16 12:32:22', '1'),
(81, 20, 4, '46', '202', NULL, NULL, NULL, 9, 11, '100.00', '0.00', '0.00', '0.00', '100.00', 1, 1, 3, '2022-04-05', 1, 1, '::1', '::1', '2022-04-16 12:30:59', NULL, '1'),
(82, 21, 5, '43', '204', NULL, NULL, NULL, 9, 11, '100.00', '0.00', '0.00', '0.00', '100.00', 1, 1, 3, '0000-00-00', 1, 1, '::1', '::1', '2022-04-16 12:24:35', NULL, '1'),
(83, 4, 6, NULL, '1111', NULL, NULL, NULL, 9, 10, '400.00', '0.00', '0.00', '0.00', '400.00', 0, NULL, 0, '0000-00-00', 1, 1, '::1', NULL, '2022-04-17 16:05:13', NULL, NULL),
(84, 7, 7, NULL, '01', NULL, NULL, NULL, 9, 10, '400.00', '0.00', '0.00', '0.00', '400.00', 0, NULL, 0, '0000-00-00', 1, 1, '::1', NULL, '2022-04-17 16:05:13', NULL, NULL),
(85, 24, 8, NULL, '544', NULL, NULL, NULL, 9, 10, '400.00', '0.00', '800.00', '0.00', '1200.00', 0, NULL, 0, '0000-00-00', 1, 1, '::1', NULL, '2022-04-17 16:05:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trackid` varchar(8) NOT NULL,
  `sonodno` varchar(17) DEFAULT NULL,
  `delivery_type` tinyint(3) NOT NULL,
  `nationid` varchar(20) DEFAULT NULL,
  `bcno` varchar(20) DEFAULT NULL,
  `pno` varchar(20) DEFAULT NULL,
  `dofb` date NOT NULL,
  `ename` varchar(60) NOT NULL,
  `name` varchar(80) NOT NULL,
  `gender` enum('male','female','others') NOT NULL,
  `mstatus` tinyint(2) NOT NULL,
  `holding_no` varchar(10) NOT NULL,
  `ewname` varchar(60) DEFAULT NULL,
  `bwname` varchar(80) DEFAULT NULL,
  `ehname` varchar(60) DEFAULT NULL,
  `bhname` varchar(80) DEFAULT NULL,
  `efname` varchar(60) NOT NULL,
  `bfname` varchar(80) NOT NULL,
  `emname` varchar(60) NOT NULL,
  `mname` varchar(80) NOT NULL,
  `ocupt` varchar(120) DEFAULT NULL,
  `edustatus` varchar(120) DEFAULT NULL,
  `religion` varchar(30) NOT NULL,
  `bashinda` enum('1','2') NOT NULL,
  `p_gram` varchar(60) DEFAULT NULL,
  `pb_gram` varchar(100) DEFAULT NULL,
  `p_rbs` varchar(60) DEFAULT NULL,
  `pb_rbs` varchar(80) DEFAULT NULL,
  `p_wordno` int(4) DEFAULT NULL,
  `pb_wordno` varchar(10) DEFAULT NULL,
  `p_dis` varchar(60) DEFAULT NULL,
  `pb_dis` varchar(100) DEFAULT NULL,
  `p_thana` varchar(60) DEFAULT NULL,
  `pb_thana` varchar(100) DEFAULT NULL,
  `p_postof` varchar(60) DEFAULT NULL,
  `pb_postof` varchar(100) DEFAULT NULL,
  `per_gram` varchar(60) DEFAULT NULL,
  `perb_gram` varchar(100) DEFAULT NULL,
  `per_rbs` varchar(60) DEFAULT NULL,
  `perb_rbs` varchar(80) DEFAULT NULL,
  `per_wordno` int(4) DEFAULT NULL,
  `perb_wordno` varchar(10) DEFAULT NULL,
  `per_dis` varchar(60) DEFAULT NULL,
  `perb_dis` varchar(100) DEFAULT NULL,
  `per_thana` varchar(60) DEFAULT NULL,
  `perb_thana` varchar(100) DEFAULT NULL,
  `per_postof` varchar(60) DEFAULT NULL,
  `perb_postof` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `profile` varchar(160) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `type` tinyint(3) DEFAULT NULL COMMENT '1=user apply, 2= admin apply 	',
  `is_process` tinyint(3) DEFAULT 0 COMMENT '0=pending ,1=accented 2=paid, 3=complete ',
  `payment_method` tinyint(3) DEFAULT NULL COMMENT '1=bkash,2=cash',
  `insert_time` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`id`, `user_id`, `trackid`, `sonodno`, `delivery_type`, `nationid`, `bcno`, `pno`, `dofb`, `ename`, `name`, `gender`, `mstatus`, `holding_no`, `ewname`, `bwname`, `ehname`, `bhname`, `efname`, `bfname`, `emname`, `mname`, `ocupt`, `edustatus`, `religion`, `bashinda`, `p_gram`, `pb_gram`, `p_rbs`, `pb_rbs`, `p_wordno`, `pb_wordno`, `p_dis`, `pb_dis`, `p_thana`, `pb_thana`, `p_postof`, `pb_postof`, `per_gram`, `perb_gram`, `per_rbs`, `perb_rbs`, `per_wordno`, `perb_wordno`, `per_dis`, `perb_dis`, `per_thana`, `perb_thana`, `per_postof`, `perb_postof`, `mobile`, `email`, `attachment`, `profile`, `status`, `type`, `is_process`, `payment_method`, `insert_time`, `utime`) VALUES
(1, NULL, '379040', '20180915345607189', 3, '123456456789123', '1111111111114544', '1544545458787', '1990-06-12', 'Rana', 'রানা', 'male', 2, '101', '', '', '', '', 'Momin', 'মমিন', 'Razia', 'রেজিয়া', 'ছাত্র', 'এস এস সি', 'ইসলাম', '2', 'Dhaka', 'বব', '124', '৩', 12, '৩৩', 'Dhaka', 'বব', 'Dhaka', 'বব', 'Dhaka', 'ব', 'Dhaka', 'বব', '124', '৩', 12, '৩৩', 'Dhaka', 'বব', 'Dhaka', 'বব', 'Dhaka', 'ব', '01825292980', 'rana.feni.fci@gmail.com', 'dsfdfdfdfdfdf', 'http://localhost/db_correction/smartup/img/default/profile.png', '1', NULL, NULL, NULL, '2018-10-04', '2019-05-19 18:40:01'),
(2, NULL, '153119', '20190915345829640', 3, '', '', '', '1999-02-12', 'test', 'test', 'male', 2, '1111', '', '', '', '', 'aaasf', 'aasfas', 'asfdas', 'asdf', '', '', 'ইসলাম', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01825292987', '', '', 'http://localhost/db_correction/smartup/img/default/profile.png', '1', NULL, NULL, NULL, '2019-05-24', '2019-05-24 19:26:17'),
(3, NULL, '784188', '20190915345631995', 1, '', '', '', '1993-05-02', 'ss', 'াাা', 'male', 2, '125', '', '', '', '', 'sss', 'বিবববক', 'sss', 'াাাা', '', '', 'ইসলাম', '2', '', '', '', '', 0, '', 'sss', '', 'ffgfg', '', 'dd', '', '', '', '', '', 0, '', 'sss', '', 'ffgfg', '', 'dd', '', '01716344112', '', '', 'http://demo2.smartup.com.bd/img/default/profile.png', '1', NULL, NULL, NULL, '2019-05-27', '2019-05-27 06:20:57'),
(4, NULL, '831291', '20190915345079922', 3, '', '', '', '1996-07-02', 'dsfa', 'দেতকতদ', 'male', 2, '126', '', '', '', '', 'sfda', 'ুাি', 'df', 'ািু', '', '', 'ইসলাম', '1', '', '', '', '', 0, '', '', '', '', '', '', '', 'hdsf', 'ুিা', '', '', 2, '2', 'dsfa', 'ািুৃ', 'dsf', 'ৃুিা', 'dsf', 'ুা', '01716344112', '', '50', 'http://demo2.smartup.com.bd/img/default/profile.png', '1', NULL, NULL, NULL, '2019-05-30', '2019-05-30 06:15:06'),
(5, NULL, '444091', '20190915345133740', 3, '', '', '', '1970-01-01', 'aksar', 'asdadas', 'male', 1, '116', '5', 'asd', '', '', 'as', 'asdasd', 'asd', 'asda', 'asd', 'asda', 'ইসলাম', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01643789562', '', '', 'http://demo2.smartup.com.bd/img/default/profile.png', '1', NULL, NULL, NULL, '2019-07-01', '2019-07-01 04:47:12'),
(6, NULL, '508830', '20190915345961885', 2, '', '', '', '2019-10-07', 'asda', 'asdadas', 'male', 1, '116', 'aa', 'asd', '', '', 'Younus', 'aa', 'asd', 'asda', '', '', 'হিন্দু', '2', '', '', '', '', 0, '', 'aa', '', 'aa', 'aa', '', '', '', '', '', '', 0, '', 'aa', '', 'aa', 'aa', '', '', '01643789562', '', 'aaa', 'http://demo2.smartup.com.bd/img/default/profile.png', '1', NULL, NULL, NULL, '2019-07-03', '2019-07-03 04:57:03'),
(7, NULL, '479779', NULL, 3, '111111111111111', '11111111111111111', '11111111111111111', '2020-12-09', 'Md Omar Faruk', 'মো: ওমর ফারুক', 'male', 2, '101', '', '', '', '', 'মো: সিরাজুল হক', 'মো: সিরাজুল হক', 'নুরের নাহার', 'নুরের নাহার', 'বেকার', 'নাই', 'ইসলাম', '2', 's', 's', 's', 's', 0, 's', 'ts', 's', 's', 's', 's', 's', 's', 's', 's', 's', 0, 's', 'ts', 's', 's', 's', 's', 's', '01839707645', 'omarshohag93@gmail.com', 'test', 'img/default/profile.png', '0', NULL, NULL, NULL, '2020-12-26', '2020-12-26 04:29:47'),
(8, NULL, '022728', NULL, 3, '', '', '', '2020-12-23', '2', '2', 'female', 1, '102', '', '', '3', '3', '222', '22', '22', '22', '', '', 'হিন্দু', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01839707646', '', '', 'library/profile/1608988977.png', '0', NULL, NULL, NULL, '2020-12-26', '2020-12-26 13:22:58'),
(9, NULL, '358230', '20220640065243627', 3, '154862338955544', '', '', '1980-02-05', 'MD. Omar Faruk', 'মো: ওমর ফারুক', 'male', 5, '102', '', '', '', '', 'MD. Serajul Islam', 'মো: সিরাজুল ইসলাম', 'Nurer Naher', 'নুরেরর নাহার', 'চাকুরীজিবি', 'Bsc in CSE', 'ইসলাম', '2', 'Lemua', '', '', '', 5, '', 'Feni', '', 'Feni Sadar', '', 'Lemua Bazar', '', 'Lemua', '', '', '', 5, '', 'Feni', '', 'Feni Sadar', '', 'Lemua Bazar', '', '01840239203', '', 'N/A', 'library/profile/1608993516.jpg', '1', NULL, NULL, NULL, '2020-12-26', '2022-03-16 07:54:02'),
(10, NULL, '203019', NULL, 3, '', '', '', '2020-12-16', '3', '3', 'female', 1, '102', '', '', '2', '2', '3', '3', '3', '3', '', '', 'ইসলাম', '2', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '01420320809', '', '', 'library/profile/160929657748413.jpg', '0', NULL, NULL, NULL, '2020-12-27', '2020-12-30 02:49:37'),
(11, NULL, '899453', NULL, 3, '3233', '3', '3', '1970-01-01', '3', '3', 'male', 1, '102', '3', '3', '', '', '3', '3', '3', '3', '3', '3', 'ইসলাম', '2', '', '', '', '', 0, '', '3', '', '3', '', '3', '', '', '', '', '', 0, '', '3', '', '3', '', '3', '', '01839707644', '', 'ts', 'library/profile/160933354596484.jpg', '0', NULL, NULL, NULL, '2020-12-30', '2020-12-30 13:05:45'),
(12, 17, '286220', '20220640065170829', 3, '199800199922288', '199834547985748', '', '2022-02-27', 'Jubayer ahmed', 'জুবায়ের আহমেদ ', 'male', 2, '111', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', 'msc', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01966543911', '', 'আমার জানা মতে সে একজন ভাল মানুষ', 'library/profile/164741004654287.', '1', 1, 3, NULL, '2022-03-16', '2022-03-16 09:00:38'),
(13, 18, '666016', NULL, 3, '199800199922287', '199800569023334', '', '2022-02-27', 'aaftab', 'আফতাব খান ', 'male', 2, '456', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', 'msc', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', '', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', '', '', 'আরামবাগ', '01311000222', '', '', 'library/profile/164778078797151.', '0', 1, 2, NULL, '2022-03-20', '2022-03-20 12:54:41'),
(14, 19, '498113', '20220640065584517', 3, '199933333444567', '199921000056123', '', '2022-02-28', 'ab', 'Abdul Karim', 'male', 2, '1115', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', 'msc', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01466543951', '', 'sdgr gwetf qe', 'library/profile/164783268992036.', '1', 1, 3, NULL, '2022-03-21', '2022-03-21 03:21:26'),
(15, 20, '388281', '20220640065933245', 3, '199845678904567', '199845678904456', '', '2022-02-28', 'abdul majid', 'আব্দুল মাজিদ ', 'male', 2, '11177', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', '', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01839707645', '', 'sdfgsdg we fwe', 'library/profile/164805519060018.', '1', 1, 3, NULL, '2022-03-23', '2022-03-23 17:09:51'),
(16, 21, '529878', NULL, 3, '209457893257320', '209457893257356', '', '2022-03-02', 'MJ', 'Md Javed', 'male', 2, '111888', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', '', 'msc', 'ইসলাম', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '01339707634', '', 'DFGDF GDFGDS', 'library/profile/164837024196715.', '0', 1, 0, NULL, '2022-03-27', '2022-03-27 08:37:21'),
(21, 22, '548734', NULL, 3, '199801909878890', '199801909874444', '4654654hhgfhghg', '2022-02-27', 'Korimov', 'মোঃ করিমভ ', 'male', 2, '111', '', '', '', '', 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', 'msc', 'ইসলাম', '2', 'Arambag', 'মধ্য আরামবাগ ', '664654', 'প্রধান সড়ক ', 6, '6', 'Feni', 'ফেনী ', 'fulgazi', 'ফুলগাজি ', 'aa', 'আরামবাগ', 'Arambag', 'মধ্য আরামবাগ ', '664654', 'প্রধান সড়ক ', 6, '6', 'Feni', 'ফেনী ', 'fulgazi', 'ফুলগাজি ', 'aa', 'আরামবাগ', '01866543951', 'ab@gmail.com', 'bcvbvcbszdgdf', 'al_amin_sig.jpg', '0', 1, 0, 1, '2022-04-04', '2022-04-04 06:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `porichoprotro`
--

CREATE TABLE `porichoprotro` (
  `id` int(11) UNSIGNED NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `applicant_id` int(11) UNSIGNED NOT NULL,
  `trno` bigint(16) UNSIGNED NOT NULL,
  `vno` bigint(16) UNSIGNED NOT NULL,
  `acno` varchar(255) DEFAULT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `porichoprotro`
--

INSERT INTO `porichoprotro` (`id`, `trackid`, `applicant_id`, `trno`, `vno`, `acno`, `fee`, `payment_date`, `utime`) VALUES
(1, '379040', 1, 6, 5, '0000-0000-0000-0000', '0.00', '2018-10-04', '2018-10-03 19:52:24'),
(2, '153119', 2, 9, 8, '0000-0000-0000-0000', '0.00', '2019-05-25', '2019-05-24 19:26:17'),
(3, '784188', 3, 12, 11, '0000-0000-0000-0000', '50.00', '2019-05-27', '2019-05-27 06:20:57'),
(4, '831291', 4, 14, 13, '0000-0000-0000-0000', '0.00', '2019-05-30', '2019-05-30 06:15:06'),
(5, '444091', 5, 18, 17, '0000-0000-0000-0000', '100.00', '2019-07-01', '2019-07-01 04:47:12'),
(6, '508830', 6, 19, 18, '0000-0000-0000-0000', '100.00', '2019-07-03', '2019-07-03 04:57:03'),
(7, '358230', 7, 37, 36, '0000-0000-0000-0000', '20.00', '2022-03-16', '2022-03-16 07:54:02'),
(8, '286220', 8, 38, 37, '0000-0000-0000-0000', '20.00', '2022-03-16', '2022-03-16 09:00:38'),
(9, '498113', 9, 41, 40, '0000-0000-0000-0000', '30.00', '2022-03-21', '2022-03-21 03:21:26'),
(10, '388281', 10, 43, 42, '0000-0000-0000-0000', '50.00', '2022-03-23', '2022-03-23 17:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `rate_sheet`
--

CREATE TABLE `rate_sheet` (
  `rid` int(11) NOT NULL,
  `licence_type` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ins_user` varchar(60) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=active, 0= inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rate_sheet_history`
--

CREATE TABLE `rate_sheet_history` (
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `old_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `new_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `ins_date` date NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `up_user` varchar(60) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `renew_req`
--

CREATE TABLE `renew_req` (
  `id` int(11) NOT NULL,
  `sno` varchar(17) NOT NULL,
  `dtype` tinyint(3) NOT NULL,
  `renew_utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup_tbl`
--

CREATE TABLE `setup_tbl` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `full_name_english` varchar(255) NOT NULL,
  `gram` varchar(60) NOT NULL,
  `gram_english` varchar(60) NOT NULL,
  `thana` varchar(60) NOT NULL,
  `thana_english` varchar(60) NOT NULL,
  `district` varchar(60) NOT NULL,
  `district_english` varchar(60) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `union_code` varchar(10) NOT NULL,
  `upazila_code` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `web_link` varchar(40) NOT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `created_ip` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `updated_time` timestamp NULL DEFAULT NULL,
  `porichoy_nid_api` varchar(500) DEFAULT NULL,
  `porichoy_api_key` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup_tbl`
--

INSERT INTO `setup_tbl` (`id`, `full_name`, `full_name_english`, `gram`, `gram_english`, `thana`, `thana_english`, `district`, `district_english`, `postal_code`, `union_code`, `upazila_code`, `email`, `mobile`, `phone`, `web_link`, `created_by`, `created_ip`, `created_time`, `updated_by`, `updated_ip`, `updated_time`, `porichoy_nid_api`, `porichoy_api_key`) VALUES
(1, 'চৌমহনী পৌরসভা', 'Chaumuhan Pourashava', 'চৌমহনী ', 'Chaumuhan ', 'বেগমগঞ্জ', 'Begumganj', 'নোয়াখালী', 'Noakhali', '6401', '0640065', '6400', 'altafhossenup4@gmail.com', '01718281974', '01729752425', 'www.localhost', 0, '', '2022-02-03 08:26:15', 1, '::1', '2022-02-03 08:26:15', 'https://porichoy.azurewebsites.net/api/Kyc/nid-person-values', '7c369818-47f9-42ec-b324-d84f65f20f13');

-- --------------------------------------------------------

--
-- Table structure for table `slide_setting`
--

CREATE TABLE `slide_setting` (
  `id` int(11) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `sequence` smallint(5) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide_setting`
--

INSERT INTO `slide_setting` (`id`, `image_name`, `title`, `description`, `sequence`, `status`) VALUES
(1, 'Chrysanthemum.jpg', '', '', 0, '0'),
(2, 'Desert.jpg', '', '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `snf_global_form`
--

CREATE TABLE `snf_global_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL COMMENT '1=occupation, 2=class',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=enable,2=disabled',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `snf_global_form`
--

INSERT INTO `snf_global_form` (`id`, `title`, `type`, `status`, `created_by`, `created_ip`, `created_date`, `updated_by`, `updated_ip`, `updated_date`) VALUES
(1, 'ব্যাবসায়ী', 1, 1, 1, '::1', '2018-06-05 01:24:30', NULL, NULL, NULL),
(2, 'প্রবাসী', 1, 1, 1, '::1', '2018-06-05 01:24:39', NULL, NULL, NULL),
(3, 'ভিক্ষুক', 1, 1, 1, '::1', '2018-06-05 01:24:50', NULL, NULL, NULL),
(4, 'কৃষক', 1, 1, 1, '::1', '2018-06-05 01:25:05', NULL, NULL, NULL),
(5, 'দিনমুজুর', 1, 1, 1, '::1', '2018-06-05 01:25:17', NULL, NULL, NULL),
(6, 'A', 2, 1, 1, '::1', '2018-06-05 01:25:36', NULL, NULL, NULL),
(7, 'B', 2, 1, 1, '::1', '2018-06-05 01:25:41', NULL, NULL, NULL),
(8, 'C', 2, 1, 1, '::1', '2018-06-05 01:25:45', NULL, NULL, NULL),
(9, 'D', 2, 1, 1, '::1', '2018-06-05 01:25:51', NULL, NULL, NULL),
(10, 'শ্রমিক', 1, 1, 1, '::1', '2018-06-05 01:25:17', NULL, NULL, NULL),
(11, 'অন্যান্য', 1, 1, 1, '::1', '2018-06-05 01:25:17', NULL, NULL, NULL),
(12, 'গৃহিনী', 1, 1, 1, '::1', '2018-06-05 01:25:05', NULL, NULL, NULL),
(13, 'দিন মজুর', 1, 1, 1, '::1', '2018-06-05 01:25:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subctg`
--

CREATE TABLE `subctg` (
  `id` int(11) NOT NULL,
  `mc_id` int(11) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subctg`
--

INSERT INTO `subctg` (`id`, `mc_id`, `sub_title`, `balance`) VALUES
(1, 6, 'অন্যান্য ফি', '430.00'),
(2, 3, 'ট্রেড লাইসেন্স ফি', '4766.80'),
(3, 1, 'ট্রেড লাইসেন্স ধারীর বসতভিটার উপর কর', '0.00'),
(4, 1, 'ব্যবসা,পেশা ও জীবিকার উপর কর', '100.00'),
(5, 1, 'হোল্ডিং ট্যাক্স ধারীর বসতভিটার উপর কর', '13213.00'),
(6, 1, 'বিনোদন কর সিনেমা, যাত্রা, নাটক ও অন্যান্য', '0.00'),
(7, 2, 'হাটবাজার', '0.00'),
(8, 2, 'ফেরী ঘাট', '0.00'),
(9, 2, 'জলমহল', '0.00'),
(10, 2, 'অন্যান্য', '0.00'),
(11, 7, '১ম কিস্তি', '1000.00'),
(12, 7, 'তৃতীয় কিস্তি', '0.00'),
(13, 8, 'চেয়ারম্যান ও সদস্যদের ভাতা', '0.00'),
(14, 8, 'সেক্রেটারী ও অন্যান্য কর্মচারীদের বেতন ও ভাতা', '0.00'),
(15, 9, 'কাবিখা', '0.00'),
(16, 9, 'টি আর', '0.00'),
(17, 9, 'এলজিএসপি', '0.00'),
(18, 9, 'অতিদরিদ্র কর্মসূচি', '0.00'),
(19, 9, 'থোক', '0.00'),
(20, 13, 'ভিজিডিও ভিজিএফ', '0.00'),
(21, 13, 'ব্যাংক জমা (এলজিএসপি)', '0.00'),
(22, 13, 'অন্যান্য', '0.00'),
(23, 14, 'UDC fee', '70.00');

-- --------------------------------------------------------

--
-- Table structure for table `subctg_in_budget`
--

CREATE TABLE `subctg_in_budget` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `actual_budget` decimal(10,2) NOT NULL DEFAULT 0.00,
  `budget_year` varchar(50) NOT NULL,
  `status` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assesment`
--

CREATE TABLE `tbl_assesment` (
  `assid` int(11) NOT NULL,
  `hinfoid` int(11) NOT NULL,
  `htype_rate_id` int(11) NOT NULL,
  `ins_date` date NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ins_user` varchar(60) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_autistic`
--

CREATE TABLE `tbl_autistic` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_autisticstudent`
--

CREATE TABLE `tbl_autisticstudent` (
  `id` int(11) NOT NULL,
  `student_name` varchar(60) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_books`
--

CREATE TABLE `tbl_books` (
  `id` int(11) NOT NULL,
  `bno` int(11) NOT NULL DEFAULT 1,
  `fiscal_year` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_books`
--

INSERT INTO `tbl_books` (`id`, `bno`, `fiscal_year`) VALUES
(1, 1, '2018-2019'),
(2, 2, '2019-2020'),
(3, 3, '2019-2020'),
(4, 4, '2021-2022'),
(5, 5, '2021-2022'),
(6, 6, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fighters`
--

CREATE TABLE `tbl_fighters` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `sector_no` varchar(10) NOT NULL,
  `life_history` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fiscal_year`
--

CREATE TABLE `tbl_fiscal_year` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_year` varchar(10) NOT NULL,
  `short_year` varchar(6) NOT NULL,
  `start_year` date DEFAULT NULL,
  `end_year` date DEFAULT NULL,
  `is_current` tinyint(3) UNSIGNED NOT NULL COMMENT '2=old, 1= current, 0= upcomming',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_ip` varchar(15) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fiscal_year`
--

INSERT INTO `tbl_fiscal_year` (`id`, `full_year`, `short_year`, `start_year`, `end_year`, `is_current`, `created_by`, `created_ip`, `created_date`, `updated_by`, `updated_ip`, `updated_date`) VALUES
(1, '2014-2015', '14-15', '2014-06-30', '2015-06-30', 2, 1, NULL, '2018-05-09 16:45:41', NULL, NULL, NULL),
(2, '2015-2016', '15-16', '2015-06-30', '2016-06-30', 2, 1, NULL, '2018-05-09 19:53:39', NULL, NULL, NULL),
(3, '2016-2017', '16-17', '2016-06-30', '2017-06-30', 2, 1, NULL, '2018-05-09 16:37:35', NULL, NULL, NULL),
(4, '2017-2018', '17-18', '2017-06-30', '2018-06-30', 2, 1, NULL, '2018-05-09 18:44:40', NULL, NULL, NULL),
(5, '2018-2019', '18-19', '2018-06-30', '2019-06-30', 2, 1, NULL, '2018-05-09 18:44:40', NULL, NULL, NULL),
(6, '2019-2020', '19-20', '2019-06-30', '2020-06-30', 0, 1, NULL, '2018-05-09 18:44:40', NULL, NULL, NULL),
(7, '2020-2021', '20-21', '2020-06-30', '2021-06-30', 0, 1, NULL, '2018-05-09 18:44:40', NULL, NULL, NULL),
(8, '2021-2022', '21-22', '2021-06-30', '2022-06-30', 0, 1, NULL, '2018-05-09 18:44:40', NULL, NULL, NULL),
(9, '2022-2023', '22-23', '2022-06-30', '2023-06-30', 1, 1, NULL, '2018-05-09 18:44:40', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foreignman`
--

CREATE TABLE `tbl_foreignman` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mother_vata`
--

CREATE TABLE `tbl_mother_vata` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descrip` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `entry_user` varchar(40) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `descrip`, `status`, `entry_user`, `entry_date`) VALUES
(1, 'test double', '<p>hello world&nbsp; double test adf</p>', '1', 'admin', '2020-12-26 21:31:25'),
(2, 'news two ', '<p>news two details</p>', '1', 'admin', '2018-07-17 20:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_oldmanstipend`
--

CREATE TABLE `tbl_oldmanstipend` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poormans`
--

CREATE TABLE `tbl_poormans` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracking`
--

CREATE TABLE `tbl_tracking` (
  `id` int(11) NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tracking`
--

INSERT INTO `tbl_tracking` (`id`, `trackid`, `utime`) VALUES
(1, '379040', '2018-10-03 19:51:40'),
(2, '258853', '2018-10-08 19:56:47'),
(3, '054265', '2019-02-03 18:36:40'),
(4, '153119', '2019-05-24 10:51:09'),
(5, '784188', '2019-05-27 06:18:03'),
(6, '831291', '2019-05-30 06:14:48'),
(7, '444091', '2019-07-01 04:44:28'),
(8, '508830', '2019-07-03 04:55:47'),
(9, '181566', '2019-07-04 05:29:00'),
(10, '432432', '2019-07-19 05:13:25'),
(11, '534718', '2020-09-21 17:19:56'),
(12, '479779', '2020-12-26 04:29:47'),
(13, '022728', '2020-12-26 13:22:58'),
(14, '358230', '2020-12-26 14:38:36'),
(15, '203019', '2020-12-26 20:05:04'),
(16, '851863', '2020-12-26 20:38:24'),
(17, '448740', '2020-12-26 21:00:49'),
(18, '093144', '2020-12-26 21:02:36'),
(19, '733613', '2020-12-26 21:04:43'),
(20, '398519', '2020-12-26 21:11:51'),
(21, '899453', '2020-12-30 13:05:19'),
(22, '176080', '2020-12-30 13:39:58'),
(23, '597436', '2020-12-30 13:46:18'),
(24, '553186', '2020-12-30 17:21:59'),
(34, '010989', '2022-03-13 06:50:30'),
(35, '988572', '2022-03-13 07:19:28'),
(36, '467008', '2022-03-13 08:46:09'),
(37, '842088', '2022-03-14 04:14:04'),
(38, '418709', '2022-03-15 13:21:19'),
(39, '286220', '2022-03-16 05:54:06'),
(40, '913698', '2022-03-20 05:26:20'),
(41, '361938', '2022-03-20 05:59:42'),
(42, '329563', '2022-03-20 06:26:59'),
(43, '666016', '2022-03-20 12:53:07'),
(44, '498113', '2022-03-21 03:18:09'),
(45, '251137', '2022-03-21 05:10:42'),
(46, '672931', '2022-03-22 05:52:54'),
(47, '364282', '2022-03-22 06:02:54'),
(48, '269738', '2022-03-23 10:44:34'),
(49, '388281', '2022-03-23 17:06:30'),
(50, '529878', '2022-03-27 08:37:21'),
(51, '578256', '2022-03-27 11:25:20'),
(52, '512820', '2022-03-27 12:37:51'),
(53, '531042', '2022-03-29 04:53:14'),
(54, '627697', '2022-03-31 04:39:59'),
(55, '567080', '2022-04-04 06:07:16'),
(56, '496668', '2022-04-04 06:22:47'),
(57, '110414', '2022-04-04 06:28:38'),
(58, '548734', '2022-04-04 06:57:44'),
(59, '168741', '2022-04-04 09:14:39'),
(60, '737843', '2022-04-04 09:24:40'),
(61, '900623', '2022-04-04 09:58:55'),
(62, '688828', '2022-04-04 10:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upmember`
--

CREATE TABLE `tbl_upmember` (
  `id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `n_id` varchar(20) NOT NULL,
  `designation` tinyint(4) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `mobile` varchar(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dofb` date NOT NULL,
  `mstatus` tinyint(3) NOT NULL,
  `district` varchar(60) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `joindate` date NOT NULL,
  `barea` varchar(120) NOT NULL,
  `vno` varchar(10) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `update_by` varchar(40) NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_upmember`
--

INSERT INTO `tbl_upmember` (`id`, `full_name`, `n_id`, `designation`, `status`, `mobile`, `email`, `dofb`, `mstatus`, `district`, `qualification`, `joindate`, `barea`, `vno`, `pic`, `update_by`, `utime`) VALUES
(3, 'মোঃ আলতাফ হোসেন', '', 1, '1', '01718281974', 'altafhossenup4@gmail.com', '2021-03-11', 1, 'নাটোর', '', '1970-01-01', 'নাটোর', 'ওয়ার্ড নং', '24-248253_user-profile-default-image-png-clipart-png-download.png', '', '2021-12-28 14:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voter_list`
--

CREATE TABLE `tbl_voter_list` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `upazila_code` varchar(10) NOT NULL,
  `union_code` varchar(10) NOT NULL,
  `bangla_name` varchar(100) NOT NULL,
  `english_name` varchar(60) NOT NULL,
  `father_name` varchar(80) NOT NULL,
  `mother_name` varchar(80) NOT NULL,
  `date_of_birth` date NOT NULL,
  `basha` varchar(60) NOT NULL,
  `gram` varchar(60) NOT NULL,
  `word_no` varchar(10) NOT NULL,
  `post_office` varchar(60) NOT NULL,
  `upzilla` varchar(60) NOT NULL,
  `district` varchar(60) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warishesinfo`
--

CREATE TABLE `tbl_warishesinfo` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trackid` varchar(8) NOT NULL,
  `sonodno` varchar(17) DEFAULT NULL,
  `delivery_type` tinyint(3) NOT NULL,
  `nationid` varchar(20) DEFAULT NULL,
  `bcno` varchar(20) DEFAULT NULL,
  `pno` varchar(20) DEFAULT NULL,
  `dofb` date NOT NULL,
  `ename` varchar(60) NOT NULL,
  `bname` varchar(80) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `mstatus` tinyint(2) NOT NULL,
  `ewname` varchar(60) DEFAULT NULL,
  `bwname` varchar(80) DEFAULT NULL,
  `ehname` varchar(60) DEFAULT NULL,
  `bhname` varchar(80) DEFAULT NULL,
  `efname` varchar(60) NOT NULL,
  `bfname` varchar(80) NOT NULL,
  `emname` varchar(60) NOT NULL,
  `bmane` varchar(80) NOT NULL,
  `ocupt` varchar(120) DEFAULT NULL,
  `bashinda` enum('1','2') NOT NULL,
  `p_gram` varchar(60) DEFAULT NULL,
  `pb_gram` varchar(100) DEFAULT NULL,
  `p_rbs` varchar(60) DEFAULT NULL,
  `pb_rbs` varchar(100) DEFAULT NULL,
  `p_wordno` int(4) DEFAULT NULL,
  `pb_wordno` varchar(10) DEFAULT NULL,
  `p_dis` varchar(60) DEFAULT NULL,
  `pb_dis` varchar(100) DEFAULT NULL,
  `p_thana` varchar(60) DEFAULT NULL,
  `pb_thana` varchar(100) DEFAULT NULL,
  `p_postof` varchar(60) DEFAULT NULL,
  `pb_postof` varchar(100) DEFAULT NULL,
  `per_gram` varchar(60) DEFAULT NULL,
  `perb_gram` varchar(100) DEFAULT NULL,
  `per_rbs` varchar(60) DEFAULT NULL,
  `perb_rbs` varchar(100) DEFAULT NULL,
  `per_wordno` int(4) DEFAULT NULL,
  `perb_wordno` varchar(10) DEFAULT NULL,
  `per_dis` varchar(60) DEFAULT NULL,
  `perb_dis` varchar(100) DEFAULT NULL,
  `per_thana` varchar(60) DEFAULT NULL,
  `perb_thana` varchar(100) DEFAULT NULL,
  `per_postof` varchar(60) DEFAULT NULL,
  `perb_postof` varchar(100) DEFAULT NULL,
  `english_applicant_name` varchar(60) NOT NULL,
  `bangla_applicant_name` varchar(80) NOT NULL,
  `english_applicant_father_name` varchar(60) NOT NULL,
  `bangla_applicant_father_name` varchar(80) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `verifier_name` varchar(60) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `type` tinyint(3) DEFAULT NULL COMMENT '1=user apply, 2= admin apply',
  `is_process` tinyint(3) DEFAULT 0 COMMENT '0=pending ,1=accented 2=paid, 3=complete',
  `payment_method` tinyint(3) DEFAULT NULL COMMENT '1=bkash,2=cash',
  `ins_time` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_warishesinfo`
--

INSERT INTO `tbl_warishesinfo` (`id`, `user_id`, `trackid`, `sonodno`, `delivery_type`, `nationid`, `bcno`, `pno`, `dofb`, `ename`, `bname`, `gender`, `mstatus`, `ewname`, `bwname`, `ehname`, `bhname`, `efname`, `bfname`, `emname`, `bmane`, `ocupt`, `bashinda`, `p_gram`, `pb_gram`, `p_rbs`, `pb_rbs`, `p_wordno`, `pb_wordno`, `p_dis`, `pb_dis`, `p_thana`, `pb_thana`, `p_postof`, `pb_postof`, `per_gram`, `perb_gram`, `per_rbs`, `perb_rbs`, `per_wordno`, `perb_wordno`, `per_dis`, `perb_dis`, `per_thana`, `perb_thana`, `per_postof`, `perb_postof`, `english_applicant_name`, `bangla_applicant_name`, `english_applicant_father_name`, `bangla_applicant_father_name`, `mobile`, `email`, `verifier_name`, `note`, `status`, `type`, `is_process`, `payment_method`, `ins_time`, `utime`) VALUES
(1, NULL, '258853', '20180915345240279', 3, '34543534532453245', '23453245345', '234532453245', '2018-10-09', 'Md Abdul Karim', 'মো: আবদুল করিম', 'male', 2, NULL, NULL, NULL, NULL, 'Kamal Uddin', 'কামাল উদ্দিন', 'Halima Begum', 'হালিমা বেগম', 'sdfg', '2', 'Lemua Bazar', 'লেমুয়া বাজার', 'Lemua Bazar', 'লেমুয়া বাজার', 4, '4', 'Feni', 'ফেনী', 'Feni Sadar', 'ফেনী সদর', 'Lemua Bazar', 'লেমুয়া বাজার', 'Lemua Bazar', 'লেমুয়া বাজার', 'Lemua Bazar', 'লেমুয়া বাজার', 4, '4', 'Feni', 'ফেনী', 'Feni Sadar', 'ফেনী সদর', 'Lemua Bazar', 'লেমুয়া বাজার', 'Md Omar Faruk', 'মো: ওমর ফারুক', 'Md Serajul Islam', 'মো: সিরাজুল ইসলাম', '01825292963', 'omarshohag93@gmail.com', 'aaaa', 'আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের নাম বাংলাদেশ আমাদের দেশের', '1', NULL, NULL, NULL, '2018-10-09', '2020-08-31 08:59:16'),
(2, NULL, '054265', '20200915345222389', 3, '', '', '', '2019-02-20', 'sdfg', 'sdfg', 'male', 2, NULL, NULL, NULL, NULL, 'sdfg', 'sdfg', 'sdfg', 'sdf', 'sdfg', '2', 'sdfg', 'sdf', 'sdfg', 'sdfg', 4, '4', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfg', 'sdf', 'sdfg', 'sdf', 'sdfg', 'sdfg', 4, '4', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfg', 'sdf', 'sdfg', 'sdfg', 'sdfg', 'sdfg', '01825292960', 'rana.feni.fci@gmail.com', 'জয়নাল ', 'sdgsdgsdfg sdfg s sdg test', '1', NULL, NULL, NULL, '2019-02-04', '2020-08-31 08:59:36'),
(3, NULL, '842088', NULL, 3, '4645645455465456', '54645565656565656', '4654654566gg5', '1977-08-01', 'Abu Bakkar', '456546', 'male', 1, NULL, NULL, NULL, NULL, 'tyuty', 'utyuytu', 'tyutyu', 'ytutyu', 'utyutyu', '2', '', 'rtuyrt', '', '', 0, '4', '', 'ytuty', '', 'ytuyt', '', 'ytut', '', 'rtuyrt', '', '', 0, '4', '', 'ytuty', '', 'ytuyt', '', 'ytut', 'eryttrytrytr', 'rtuyytu', 'uytsasew', 'ytuytuyt', '01899999855', '', NULL, 'tyu yer eyreyrey ery er', '0', NULL, NULL, NULL, '2022-03-14', '2022-03-14 04:14:04'),
(4, 19, '251137', '20220640065013889', 3, '199933333444567', '199921000056123', '', '2022-02-27', 'abdul', 'Abdul Karim', 'female', 2, NULL, NULL, NULL, NULL, 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'emp', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', 'eryttrytrytr', 'rtuyytu', 'seefgdg', 'fdgfgff', '01466543951', '', 'ghghh', 'vvadsffqf qw rqwerq gg ', '1', 1, 3, NULL, '2022-03-21', '2022-03-21 09:26:18'),
(5, 21, '512820', NULL, 3, '209457893257320', '209457893257356', '', '2022-03-01', 'Jubayer ahmed', 'Md Javed', 'male', 1, NULL, NULL, NULL, NULL, 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', 'student', '2', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', '', 'মধ্য আরামবাগ ', '', 'প্রধান সড়ক ', 0, '6', '', 'ফেনী ', '', 'ফুলগাজি ', '', 'আরামবাগ', 'eryttrytrytr', 'rtuyytu', '6', 'fdgfgff', '01339707634', '', NULL, 'vdfvsdf adsfasfas Xsdsds sadas', '0', 1, 1, NULL, '2022-03-27', '2022-03-28 10:25:19'),
(6, 22, '900623', NULL, 3, '199801909878890', '199801909874444', '', '2022-03-29', 'e k azad', 'এ কে আজাদ ', 'male', 2, NULL, NULL, NULL, NULL, 'Jaber Ahmed', 'জাবের আহমেদ ', 'amena', 'আমিনা বেগম ', '', '2', '', 'রাস্তার মোর', '', 'প্রধান সড়ক ', 0, '৪', '', 'নোয়াখালী', '', 'চৌমহনী', '', 'চৌমহনী ', '', 'রাস্তার মোর', '', 'প্রধান সড়ক ', 0, '৪', '', 'নোয়াখালী', '', 'চৌমহনী', '', 'চৌমহনী ', 'ab jalil', 'আব্দুল জলিল ', 'monir', 'মনির ', '01866543951', '', NULL, 'যে তার ছোট ছেলে উক্ত জমির মালিক ', '0', 1, 0, 1, '2022-04-04', '2022-04-04 09:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wcc`
--

CREATE TABLE `tbl_wcc` (
  `id` int(11) NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `trno` bigint(20) NOT NULL,
  `vno` bigint(20) NOT NULL,
  `acno` varchar(255) NOT NULL,
  `fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wcc`
--

INSERT INTO `tbl_wcc` (`id`, `trackid`, `applicant_id`, `trno`, `vno`, `acno`, `fee`, `payment_date`, `utime`) VALUES
(1, '258853', 1, 7, 6, '0000-0000-0000-0000', '0.00', '2018-10-09', '2018-10-08 19:58:22'),
(2, '054265', 2, 31, 30, '0000-0000-0000-0000', '0.00', '2020-08-31', '2020-08-31 08:59:36'),
(3, '251137', 3, 42, 41, '0000-0000-0000-0000', '60.00', '2022-03-21', '2022-03-21 09:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_webtools`
--

CREATE TABLE `tbl_webtools` (
  `id` int(11) NOT NULL,
  `item_no` tinyint(3) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `entry_user` varchar(40) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_webtools`
--

INSERT INTO `tbl_webtools` (`id`, `item_no`, `status`, `entry_user`, `entry_date`) VALUES
(2, 1, '1', 'admin', '2017-04-18 11:12:13'),
(3, 2, '0', 'admin', '2020-08-31 09:00:43'),
(4, 3, '1', 'admin', '2017-04-18 11:12:13'),
(5, 4, '1', 'admin', '2017-05-23 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_widow`
--

CREATE TABLE `tbl_widow` (
  `id` int(11) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `insert_by` varchar(40) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tradelicense`
--

CREATE TABLE `tradelicense` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `trackid` varchar(8) NOT NULL,
  `sno` varchar(17) DEFAULT NULL,
  `delivery_type` tinyint(3) NOT NULL,
  `app_type` tinyint(3) NOT NULL,
  `ownertype` tinyint(3) NOT NULL,
  `ecomname` varchar(200) NOT NULL,
  `bcomname` varchar(255) NOT NULL,
  `ewname` varchar(160) NOT NULL,
  `bwname` varchar(200) NOT NULL,
  `gender` varchar(80) NOT NULL,
  `mstatus` varchar(80) NOT NULL,
  `efname` varchar(160) NOT NULL,
  `bfname` varchar(200) NOT NULL,
  `ehname` varchar(100) DEFAULT NULL,
  `bhname` varchar(100) DEFAULT NULL,
  `emname` varchar(160) NOT NULL,
  `bmane` varchar(200) NOT NULL,
  `vatid` varchar(20) DEFAULT NULL,
  `taxid` varchar(20) DEFAULT NULL,
  `btype` varchar(200) NOT NULL,
  `btype_english` varchar(120) DEFAULT NULL,
  `pay_amount` decimal(4,2) NOT NULL,
  `be_gram` varchar(60) DEFAULT NULL,
  `bb_gram` varchar(100) DEFAULT NULL,
  `be_rbs` varchar(60) DEFAULT NULL,
  `bb_rbs` varchar(100) DEFAULT NULL,
  `be_wordno` int(4) DEFAULT NULL,
  `bb_wordno` varchar(10) DEFAULT NULL,
  `be_dis` varchar(60) DEFAULT NULL,
  `bb_dis` varchar(100) DEFAULT NULL,
  `be_thana` varchar(60) DEFAULT NULL,
  `bb_thana` varchar(100) DEFAULT NULL,
  `be_postof` varchar(60) DEFAULT NULL,
  `bb_postof` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `profile` varchar(160) DEFAULT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `type` tinyint(3) DEFAULT NULL COMMENT '1=user apply, 2= admin apply',
  `is_process` tinyint(3) DEFAULT 0 COMMENT '0=pending ,1=accented 2=paid, 3=complete',
  `payment_method` tinyint(3) DEFAULT NULL COMMENT '1=bkash, 2=cash',
  `insert_time` date NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `syn_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tradelicense`
--

INSERT INTO `tradelicense` (`id`, `user_id`, `trackid`, `sno`, `delivery_type`, `app_type`, `ownertype`, `ecomname`, `bcomname`, `ewname`, `bwname`, `gender`, `mstatus`, `efname`, `bfname`, `ehname`, `bhname`, `emname`, `bmane`, `vatid`, `taxid`, `btype`, `btype_english`, `pay_amount`, `be_gram`, `bb_gram`, `be_rbs`, `bb_rbs`, `be_wordno`, `bb_wordno`, `be_dis`, `bb_dis`, `be_thana`, `bb_thana`, `be_postof`, `bb_postof`, `mobile`, `phone`, `email`, `profile`, `issue_date`, `expire_date`, `status`, `type`, `is_process`, `payment_method`, `insert_time`, `utime`, `syn_status`) VALUES
(1, NULL, '11111111', '20180915345445294', 1, 1, 1, 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', NULL, NULL, 'aa', 'aa', NULL, NULL, 'aa', 'Contractor', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rana.jpg', '2018-07-18', '2019-06-30', '', NULL, 0, NULL, '0000-00-00', '2019-06-30 12:04:13', 1),
(2, NULL, '181566', '20190915345589712', 2, 1, 1, 'Jamal Traders', 'জামাল ট্রেডার্স', 'Jamal Uddin', 'জামাল উদ্দিন', 'male', 'বিবাহিত', 'Serajul Islam', 'সিরাজুল ইসলাম', '', '', 'Nurer Naher', 'নুরের নাহার', '', '', 'রট সিমেন্টের দোকান', 'Rot and Sement Shop', '0.00', 'Lemua Bazar', 'লেমুয়া বাজর', 'Lemua Bazar', 'লেমুয়া বাজার', 2, '২', 'Feni', 'ফেনী', 'Feni Sadar', 'ফেনী সদর', 'Lemua Bazar', 'লেমুয়া বাজার', '01643789562', '41525', 'omarshohag93@gmail.com', 'library/profile/160935515537793.jpg', '2021-12-28', '2022-06-30', '2', NULL, 0, NULL, '2019-07-04', '2021-12-28 15:05:52', 1),
(3, NULL, '432432', '20190915345252419', 1, 1, 1, 'z', 'z', 'z', 'z', 'male', 'বিবাহিত', 'z', 'z', '', '', 'z', 'z', '11', '11', 'z', 'z', '0.00', 'z', 'z', 'z', 'z', 10, 'z', 'z', 'z', 'z', 'z', 'z', 'z', '11', '11', '', 'http://demo2.smartup.com.bd/img/default/profile.png', '2021-12-28', '2022-06-30', '2', NULL, 0, NULL, '2019-07-19', '2021-12-28 15:01:54', 1),
(4, NULL, '534718', NULL, 3, 1, 1, 'Gm Brothers', 'জি এম ব্রাদার্স', 'Md. Omar Faruk', 'মো : ওমর ফারুক', 'male', 'বিবাহিত', 'Md. Serajul Islam', 'মো: সিরাজুল ইসলাম', '', '', 'Nurer Naher', 'নুরের নাহার', '', '', 'টেডিং করোপোরেশন', 'Trading Corporation', '0.00', 'Lemua Bazar', '', '', '', 9, '', 'Feni', '', 'Feni sadar', '', 'Lemua  Bazar', '', '01839707645', '', 'omarlemua@gmail.com', 'http://localhost/smartUp/img/default/profile.png', '0000-00-00', '0000-00-00', '1', NULL, 0, NULL, '2020-09-21', '2020-09-21 17:19:56', 1),
(5, NULL, '851863', NULL, 3, 1, 1, 'ss', 'ss', 'ss', 'ss', 'male', 'অবিবাহিত', 'ss', 's', '', '', 's', 's', '', '', 's', 's', '0.00', '', '', '', '', 0, '', '', '', '', '', '', '', '01830320809', '', '', 'library/profile/160935519138824.JPG', '0000-00-00', '0000-00-00', '1', NULL, 0, NULL, '2020-12-27', '2020-12-30 19:06:31', 1),
(6, NULL, '176080', '20220640065621340', 3, 1, 1, 'shohag traders', '3', '3', '3', 'male', 'বিবাহিত', '3', '3', '', '', '3', '3', '3', '3', '3', '3', '0.00', '33', '', '3', '', 33, '', '3', '', '3', '', '33', '', '01834567891', '', '', 'library/profile/160935520273539.JPG', '2022-03-16', '2022-06-30', '2', NULL, 3, NULL, '2020-12-30', '2022-03-16 07:38:32', 1),
(11, 13, '467008', '20220640065422898', 3, 1, 1, 'ANB Limited', 'এ ন বি লিমিটেড', 'Abdus salam', 'আব্দুস সালাম', 'male', 'অবিবাহিত', 'abdul salam', 'আব্দুল   কালাম', '', '', 'amena begum', 'আমেনা বেগম ', '24234', '', 'মুদি দোকান', 'Modi Shop', '0.00', '', 'নিঝুম পুর ', '', '৩৩৪/৩', 0, '২', '', 'গাজিপুর ', '', 'সফিপুর ', '', 'উজানপুর ', '01866543952', '', 'abs@gmail.com', 'library/profile/164716116915726.', '2022-03-15', '2022-06-30', '2', 1, 2, NULL, '2022-03-13', '2022-03-15 12:00:35', 1),
(12, 14, '418709', '20220640065317330', 3, 1, 1, 'Step Traders ', 'স্টেপ ট্রেড্রাস ', 'Akram khan', 'Akram khan', 'male', 'অবিবাহিত', 'abdul salam', 'আহমেদ খান ', '', '', 'Chokina', 'ছকিনা ', '436456', '457657', 'আইটি কোম্পানি', 'IT Company', '0.00', '', 'নিঝুম পুর ', '', '৩৩৪/৩', 0, '২', '', 'গাজিপুর ', '', 'সফিপুর ', '', 'উজানপুর ', '01775439511', '', '', 'library/profile/164735047969190.', '2022-03-15', '2022-06-30', '2', 1, 2, NULL, '2022-03-15', '2022-03-16 08:32:27', 1),
(13, 19, '672931', NULL, 3, 1, 1, 'ANBC Limited', 'এ ন বি  লিমিটেড', 'Abdus salam', 'আব্দুস সালাম', 'male', 'অবিবাহিত', 'abdul salam', 'আব্দুল   কালাম', '', '', 'amena begum', 'আমেনা বেগম ', '2423455', '6666', 'মুদি দোকান', 'Modi Shop', '0.00', '', 'নিঝুম পুর ', '', '৩৩৪/৩', 0, '২', '', 'গাজিপুর ', '', 'সফিপুর ', '', 'উজানপুর ', '01866543956', '', '', 'library/profile/164792837411873.', '0000-00-00', '0000-00-00', '1', 1, 0, NULL, '2022-03-22', '2022-03-22 05:52:54', 1),
(14, 20, '531042', NULL, 3, 1, 1, 'ABC Limited', 'এ  বি লিমিটেড', 'Abdus salam', 'আব্দুস সালাম', 'male', 'বিবাহিত', 'abdul salam', 'আব্দুল   কালাম', '', '', 'amena begum', 'আমেনা বেগম ', '2423444', '', 'মুদি দোকান', 'Modi Shop', '0.00', '', 'নিঝুম পুর ', '', '৩৩৪/৩', 0, '২', '', 'গাজিপুর ', '', 'সফিপুর ', '', 'উজানপুর ', '01866543951', '', '', 'library/profile/164852959499509.jpg', '0000-00-00', '0000-00-00', '1', 1, 1, NULL, '2022-03-29', '2022-03-29 05:12:57', 1),
(16, 22, '737843', NULL, 3, 1, 1, 'Karim Store ', 'করিম ষ্টোর ', 'Korimov', 'মোঃ করিমভ ', 'male', 'অবিবাহিত', 'Jaber Ahmed', 'জাবের আহমেদ ', '', '', 'amena', 'আমিনা বেগম ', '', '', 'মুদি দোকান', 'Grocery Shop', '0.00', 'Bazar', 'চৌমহনী বাজার ', 'Main Road', '৩৩৪/৩', 4, '২', 'Nuakhali', 'নোয়াখালী', 'Choumohoni', 'চৌমহনী', 'Choumohoni', 'চৌমহনী', '01866543951', '', 'ab@gmail.com', 'al_amin_sig.jpg', '0000-00-00', '0000-00-00', '1', 1, 0, 1, '2022-04-04', '2022-04-04 09:31:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(16) UNSIGNED NOT NULL,
  `tid` bigint(16) UNSIGNED NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `tid`, `up_date`) VALUES
(1, 1, '2018-06-07 22:54:49'),
(2, 2, '2018-06-07 22:57:08'),
(3, 3, '2018-07-17 20:37:17'),
(4, 4, '2018-07-17 21:10:39'),
(5, 5, '2018-08-18 16:07:30'),
(6, 6, '2018-10-03 19:52:24'),
(7, 7, '2018-10-08 19:58:22'),
(8, 8, '2019-05-24 19:23:05'),
(9, 9, '2019-05-24 19:26:17'),
(10, 10, '2019-05-27 06:14:42'),
(11, 11, '2019-05-27 06:19:35'),
(12, 12, '2019-05-27 06:20:57'),
(13, 13, '2019-05-30 05:25:07'),
(14, 14, '2019-05-30 06:15:06'),
(15, 15, '2019-06-29 19:55:07'),
(16, 16, '2019-07-01 04:46:00'),
(17, 17, '2019-07-01 04:46:43'),
(18, 18, '2019-07-01 04:47:12'),
(19, 19, '2019-07-03 04:57:03'),
(20, 20, '2019-07-03 05:05:49'),
(21, 21, '2019-07-04 05:29:25'),
(22, 22, '2019-07-04 11:16:10'),
(23, 23, '2019-07-04 11:17:45'),
(24, 24, '2019-07-06 09:16:42'),
(25, 25, '2019-07-07 17:11:31'),
(26, 26, '2019-07-08 08:58:20'),
(29, 27, '2019-07-14 15:11:57'),
(30, 28, '2019-07-17 05:05:26'),
(31, 29, '2019-07-17 12:03:08'),
(32, 30, '2019-07-19 05:14:19'),
(33, 31, '2020-08-31 08:59:36'),
(34, 32, '2020-12-26 21:14:42'),
(35, 33, '2021-03-08 08:47:15'),
(38, 34, '2022-03-15 12:00:35'),
(39, 35, '2022-03-15 13:38:09'),
(40, 36, '2022-03-16 07:38:32'),
(41, 37, '2022-03-16 07:54:02'),
(42, 38, '2022-03-16 09:00:38'),
(43, 39, '2022-03-20 06:29:00'),
(44, 40, '2022-03-20 09:58:41'),
(45, 41, '2022-03-21 03:21:26'),
(46, 42, '2022-03-21 09:26:18'),
(47, 43, '2022-03-23 17:09:51'),
(59, 44, '2022-04-16 06:24:35'),
(60, 45, '2022-04-16 06:26:27'),
(61, 46, '2022-04-16 06:29:37'),
(62, 47, '2022-04-16 06:30:59'),
(63, 48, '2022-04-16 06:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `up_map`
--

CREATE TABLE `up_map` (
  `id` int(11) NOT NULL,
  `map_link` text NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `update_by` varchar(40) NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_map`
--

INSERT INTO `up_map` (`id`, `map_link`, `status`, `update_by`, `utime`) VALUES
(1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14608.267806000722!2d90.3613731697754!3d23.74499180000001!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1531860173707\" width=\"100%\" height=\"\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '1', '', '2018-07-17 20:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `up_sonods`
--

CREATE TABLE `up_sonods` (
  `id` int(11) NOT NULL,
  `sno` varchar(17) NOT NULL,
  `utime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `up_sonods`
--

INSERT INTO `up_sonods` (`id`, `sno`, `utime`) VALUES
(1, '20180915345445294', '2018-07-17 20:37:17'),
(2, '20180915345607189', '2018-10-03 19:52:24'),
(3, '20180915345240279', '2018-10-08 19:58:22'),
(4, '20190915345829640', '2019-05-24 19:26:17'),
(5, '20190915345631995', '2019-05-27 06:20:57'),
(6, '20190915345079922', '2019-05-30 06:15:06'),
(7, '20190915345133740', '2019-07-01 04:47:12'),
(8, '20190915345703511', '2019-07-01 09:34:38'),
(9, '20190915345550952', '2019-07-01 10:53:04'),
(10, '20190915345290546', '2019-07-02 06:21:02'),
(11, '20190915345825137', '2019-07-02 09:18:23'),
(12, '20190915345961885', '2019-07-03 04:57:03'),
(13, '20190915345589712', '2019-07-04 05:29:25'),
(14, '20190915345252419', '2019-07-19 05:14:19'),
(15, '20200915345222389', '2020-08-31 08:59:36'),
(16, '20200915345752498', '2020-12-26 21:14:42'),
(17, '20210640036505415', '2021-03-08 08:47:15'),
(18, '20220640065422898', '2022-03-15 12:00:35'),
(19, '20220640065317330', '2022-03-15 13:38:09'),
(20, '20220640065621340', '2022-03-16 07:38:32'),
(21, '20220640065243627', '2022-03-16 07:54:02'),
(22, '20220640065170829', '2022-03-16 09:00:38'),
(23, '20220640065739277', '2022-03-20 06:29:00'),
(24, '20220640065721933', '2022-03-20 09:58:41'),
(25, '20220640065584517', '2022-03-21 03:21:26'),
(26, '20220640065013889', '2022-03-21 09:26:18'),
(27, '20220640065933245', '2022-03-23 17:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) UNSIGNED NOT NULL,
  `USERID` int(11) DEFAULT NULL,
  `Badgenumber` varchar(24) DEFAULT NULL,
  `SSN` varchar(20) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `PAGER` varchar(20) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `HIREDDAY` datetime DEFAULT NULL,
  `street` varchar(80) DEFAULT NULL,
  `CITY` varchar(2) DEFAULT NULL,
  `STATE` varchar(2) DEFAULT NULL,
  `ZIP` varchar(12) DEFAULT NULL,
  `OPHONE` varchar(20) DEFAULT NULL,
  `FPHONE` varchar(20) DEFAULT NULL,
  `VERIFICATIONMETHOD` smallint(6) DEFAULT NULL,
  `DEFAULTDEPTID` smallint(6) DEFAULT NULL,
  `SECURITYFLAGS` smallint(6) DEFAULT NULL,
  `ATT` smallint(6) DEFAULT NULL,
  `INLATE` smallint(6) DEFAULT NULL,
  `OUTEARLY` smallint(6) DEFAULT NULL,
  `OVERTIME` smallint(6) DEFAULT NULL,
  `SEP` smallint(6) DEFAULT NULL,
  `HOLIDAY` smallint(6) DEFAULT NULL,
  `MINZU` varchar(8) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `LUNCHDURATION` smallint(6) DEFAULT NULL,
  `PHOTO` mediumblob DEFAULT NULL,
  `mverifypass` varchar(10) DEFAULT NULL,
  `Notes` mediumblob DEFAULT NULL,
  `privilege` int(11) DEFAULT NULL,
  `InheritDeptSch` smallint(6) DEFAULT NULL,
  `InheritDeptSchClass` smallint(6) DEFAULT NULL,
  `AutoSchPlan` smallint(6) DEFAULT NULL,
  `MinAutoSchInterval` int(11) DEFAULT NULL,
  `RegisterOT` smallint(6) DEFAULT NULL,
  `InheritDeptRule` smallint(6) DEFAULT NULL,
  `EMPRIVILEGE` smallint(6) DEFAULT NULL,
  `CardNo` varchar(20) DEFAULT NULL,
  `FaceGroup` int(11) DEFAULT NULL,
  `AccGroup` int(11) DEFAULT NULL,
  `UseAccGroupTZ` int(11) DEFAULT NULL,
  `VerifyCode` int(11) DEFAULT NULL,
  `Expires` int(11) DEFAULT NULL,
  `ValidCount` int(11) DEFAULT NULL,
  `ValidTimeBegin` datetime DEFAULT NULL,
  `ValidTimeEnd` datetime DEFAULT NULL,
  `TimeZone1` int(11) DEFAULT NULL,
  `TimeZone2` int(11) DEFAULT NULL,
  `TimeZone3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `USERID`, `Badgenumber`, `SSN`, `Name`, `Gender`, `TITLE`, `PAGER`, `BIRTHDAY`, `HIREDDAY`, `street`, `CITY`, `STATE`, `ZIP`, `OPHONE`, `FPHONE`, `VERIFICATIONMETHOD`, `DEFAULTDEPTID`, `SECURITYFLAGS`, `ATT`, `INLATE`, `OUTEARLY`, `OVERTIME`, `SEP`, `HOLIDAY`, `MINZU`, `PASSWORD`, `LUNCHDURATION`, `PHOTO`, `mverifypass`, `Notes`, `privilege`, `InheritDeptSch`, `InheritDeptSchClass`, `AutoSchPlan`, `MinAutoSchInterval`, `RegisterOT`, `InheritDeptRule`, `EMPRIVILEGE`, `CardNo`, `FaceGroup`, `AccGroup`, `UseAccGroupTZ`, `VerifyCode`, `Expires`, `ValidCount`, `ValidTimeBegin`, `ValidTimeEnd`, `TimeZone1`, `TimeZone2`, `TimeZone3`) VALUES
(1, 1, '562', NULL, '6433377139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 1, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(2, 2, '1422', NULL, '1933609636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 1, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(3, 3, '599', NULL, '6433487870', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(4, 4, '1343', NULL, '7783483527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(5, 5, '603', NULL, '1016759514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(6, 6, '602', NULL, '7783499978', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(7, 7, '611', NULL, '8233489536', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(8, 8, '596', NULL, '6883488675', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(9, 9, '594', NULL, '6883487867', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(10, 10, '1396', NULL, '8683408507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(11, 11, '1344', NULL, '2383490832', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(12, 12, '451', NULL, '1933672519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(13, 13, '711', NULL, '8683529484', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(14, 14, '624', NULL, '9566684982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(15, 15, '736', NULL, '8683418027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(16, 16, '633', NULL, '9133487307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(17, 17, '605', NULL, '4633518180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(18, 18, '1866', NULL, '1483478374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(19, 19, '563', NULL, '5983414078', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(20, 20, '567', NULL, '2833374529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(21, 21, '1987', NULL, '3733508596', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(22, 22, '522', NULL, '7783709921', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(23, 23, '604', NULL, '2383392350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(24, 24, '1366', NULL, '5533475637', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(25, 25, '1993', NULL, '6883617638', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(26, 26, '626', NULL, '6433381859', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(27, 27, '552', NULL, '5083477223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(28, 28, '661', NULL, '5983518969', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(29, 29, '731', NULL, '2383394638', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(30, 30, '747', NULL, '4183376237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(31, 31, '612', NULL, '6433372056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(32, 32, '600', NULL, '5083369834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(33, 33, '714', NULL, '7333415474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(34, 34, '657', NULL, '2833601897', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(35, 35, '699', NULL, '5533377353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(36, 36, '1982', NULL, '1933435271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(37, 37, '1312', NULL, '6433671382', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(38, 38, '655', NULL, '6433376131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(39, 39, '1318', NULL, '1016853515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(40, 40, '684', NULL, '6420594688', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(41, 41, '676', NULL, '6881632118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(42, 42, '696', NULL, '6433603120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(43, 43, '709', NULL, '4633517554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(44, 44, '580', NULL, '7783618874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(45, 45, '650', NULL, '690535000638', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(46, 46, '1991', NULL, '9133390337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(47, 47, '741', NULL, '5983417295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(48, 48, '744', NULL, '5983407064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(49, 49, '1989', NULL, '6433477707', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(50, 50, '1391', NULL, '5533367131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(51, 51, '656', NULL, '2833379825', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(52, 52, '1374', NULL, '1483557508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(53, 53, '436', NULL, '4183713694', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(54, 54, '725', NULL, '6883611839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(55, 55, '601', NULL, '1919075893', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(56, 56, '722', NULL, '7333634058', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(57, 57, '572', NULL, '7333640881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(58, 58, '1981', NULL, '9133390261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(59, 59, '575', NULL, '7333647084', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(60, 60, '557', NULL, '4183378266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(61, 61, '634', NULL, '7783486819', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(62, 62, '734', NULL, '6715831343737', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(63, 63, '635', NULL, '3733497923', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(64, 64, '591', NULL, '5083589175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(65, 65, '658', NULL, '4183488487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(66, 66, '773', NULL, '8665767920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(67, 67, '593', NULL, '6400267412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(68, 68, '1984', NULL, '7347407277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(69, 69, '491', NULL, '3283726143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(70, 70, '1322', NULL, '1933915025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(71, 71, '717', NULL, '2383397300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(72, 72, '1346', NULL, '1933436709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(73, 73, '678', NULL, '3296707908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(74, 74, '1441', NULL, '9133483348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(75, 75, '636', NULL, '4633511573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(76, 76, '737', NULL, '8233381667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(77, 77, '597', NULL, '3307667984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(78, 78, '713', NULL, '7783617835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(79, 79, '647', NULL, '4633744372', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(80, 80, '435', NULL, '8233616328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(81, 81, '449', NULL, '9151404309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(82, 82, '494', NULL, '2833711670', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(83, 83, '1317', NULL, '5092895324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(84, 84, '419', NULL, '6883718949', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(85, 85, '550', NULL, '6433485346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(86, 86, '595', NULL, '1483490700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(87, 87, '698', NULL, '8683412780', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(88, 88, '693', NULL, '9566686490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(89, 89, '705', NULL, '3283397317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(90, 90, '478', NULL, '2383615719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(91, 91, '1310', NULL, '2383692619', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(92, 92, '1418', NULL, '8233564585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(93, 93, '1409', NULL, '1483374185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(94, 94, '1373', NULL, '2833550532', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(95, 95, '1440', NULL, '5083357227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(96, 96, '1358', NULL, '8683715711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(97, 97, '1370', NULL, '8233562373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(98, 98, '1329', NULL, '5083358498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(99, 99, '1311', NULL, '5983710491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(100, 100, '460', NULL, '5983756510', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(101, 101, '1325', NULL, '6883681600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(102, 102, '1323', NULL, '6883676584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(103, 103, '1427', NULL, '7783480689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(104, 104, '674', NULL, '5083477397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(105, 105, '1442', NULL, '6433542872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(106, 106, '752', NULL, '4633705159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(107, 107, '542', NULL, '7784015880', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(108, 108, '1368', NULL, '7333587967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(109, 109, '1306', NULL, '2833674399', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(110, 110, '1961', NULL, '3733698280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(111, 111, '1432', NULL, '5983581835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(112, 112, '1305', NULL, '1933914721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(113, 113, '1424', NULL, '5533557251', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(114, 114, '574', NULL, '4633744257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(115, 115, '733', NULL, '1483383061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(116, 116, '689', NULL, '8233386666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(117, 117, '723', NULL, '5533372123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(118, 118, '1953', NULL, '8683713906', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(119, 119, '1433', NULL, '5533548631', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(120, 120, '1385', NULL, '6433546857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(121, 121, '1399', NULL, '4633396793', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(122, 122, '1382', NULL, '3283490971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(123, 123, '566', NULL, '1483372494', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(124, 124, '1351', NULL, '9133682444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(125, 125, '1426', NULL, '4183477662', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(126, 126, '1420', NULL, '9133481078', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(127, 127, '721', NULL, '4183488826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(128, 128, '719', NULL, '5083473677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(129, 129, '746', NULL, '3733507135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(130, 130, '727', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(131, 131, '1967', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(132, 132, '691', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(133, 133, '632', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(134, 134, '1436', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(135, 135, '1950', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(136, 136, '630', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(137, 137, '1309', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(138, 138, '726', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(139, 139, '695', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(140, 140, '742', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(141, 141, '724', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(142, 142, '745', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(143, 143, '1336', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(144, 144, '430', NULL, '5533617006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(145, 145, '1966', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(146, 146, '1417', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(147, 147, '750', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(148, 148, '1389', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(149, 149, '447', NULL, '3733619070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(150, 150, '1355', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(151, 151, '1430', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(152, 152, '1356', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(153, 153, '670', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(154, 154, '1410', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(155, 155, '690', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(156, 156, '1419', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(157, 157, '1867', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(158, 158, '739', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(159, 159, '1429', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(160, 160, '1416', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(161, 161, '775', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(162, 162, '1379', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(163, 163, '1412', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(164, 164, '1414', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(165, 165, '1962', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(166, 166, '649', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(167, 167, '1383', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(168, 168, '1964', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(169, 169, '1960', NULL, '1933739508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(170, 170, '440', NULL, '8233718942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(171, 171, '1338', NULL, '2833552934', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(172, 172, '1408', NULL, '3733385599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(173, 173, '1882', NULL, '8241345365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(174, 174, '1443', NULL, '688560432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(175, 175, '1330', NULL, '9133377524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(176, 176, '1380', NULL, '3283694713', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(177, 177, '620', NULL, '6883610898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(178, 178, '1439', NULL, '2833473966', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(179, 179, '1951', NULL, '7333885361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(180, 180, '1438', NULL, '2833471549', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(181, 181, '1327', NULL, '8233867913', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(182, 182, '1959', NULL, '7333888548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(183, 183, '1421', NULL, '5083357706', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(184, 184, '579', NULL, '6433603187', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(185, 185, '685', NULL, '7783490316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(186, 186, '1392', NULL, '5083846971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(187, 187, '664', NULL, '5533379383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(188, 188, '1405', NULL, '6883374081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(189, 189, '1968', NULL, '1016698357', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(190, 190, '1333', NULL, '7333890965', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(191, 191, '1954', NULL, '2808805499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(192, 192, '1963', NULL, '5533677851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(193, 193, '1357', NULL, '5983715490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(194, 194, '1365', NULL, '6883861574', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(195, 195, '1956', NULL, '6433542930', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(196, 196, '1360', NULL, '8662019291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(197, 197, '476', NULL, '2383729080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(198, 198, '1348', NULL, '1483558845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(199, 199, '702', NULL, '2833382712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(200, 200, '720', NULL, '1933661520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(201, 201, '1321', NULL, '1483684336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(202, 202, '558', NULL, '1016700500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(203, 203, '1347', NULL, '9566770450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(204, 204, '1353', NULL, '20026916336000240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(205, 205, '1320', NULL, '7783681609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(206, 206, '1304', NULL, '4183864224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(207, 207, '1316', NULL, '6916336235354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(208, 208, '1340', NULL, '1483478804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(209, 209, '1381', NULL, '8683510377', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(210, 210, '1371', NULL, '3283489841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(211, 211, '1398', NULL, '7783553857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(212, 212, '1872', NULL, '1935875577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0);
INSERT INTO `userinfo` (`id`, `USERID`, `Badgenumber`, `SSN`, `Name`, `Gender`, `TITLE`, `PAGER`, `BIRTHDAY`, `HIREDDAY`, `street`, `CITY`, `STATE`, `ZIP`, `OPHONE`, `FPHONE`, `VERIFICATIONMETHOD`, `DEFAULTDEPTID`, `SECURITYFLAGS`, `ATT`, `INLATE`, `OUTEARLY`, `OVERTIME`, `SEP`, `HOLIDAY`, `MINZU`, `PASSWORD`, `LUNCHDURATION`, `PHOTO`, `mverifypass`, `Notes`, `privilege`, `InheritDeptSch`, `InheritDeptSchClass`, `AutoSchPlan`, `MinAutoSchInterval`, `RegisterOT`, `InheritDeptRule`, `EMPRIVILEGE`, `CardNo`, `FaceGroup`, `AccGroup`, `UseAccGroupTZ`, `VerifyCode`, `Expires`, `ValidCount`, `ValidTimeBegin`, `ValidTimeEnd`, `TimeZone1`, `TimeZone2`, `TimeZone3`) VALUES
(213, 213, '1350', NULL, '1933731323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(214, 214, '1388', NULL, '5083464551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(215, 215, '679', NULL, '6883483098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(216, 216, '694', NULL, '2383630015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(217, 217, '645', NULL, '5533373246', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(218, 218, '524', NULL, '1933939967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(219, 219, '571', NULL, '9566682937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(220, 220, '715', NULL, '7783384717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(221, 221, '639', NULL, '8683532603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(222, 222, '692', NULL, '7333639099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(223, 223, '1361', NULL, '1483861256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(224, 224, '1955', NULL, '3733689016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(225, 225, '1875', NULL, '1933732172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(226, 226, '1387', NULL, '1483560361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(227, 227, '583', NULL, '3401497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(228, 228, '492', NULL, '7333750813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(229, 229, '640', NULL, '4183489741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(230, 230, '1394', NULL, '1016851063', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(231, 231, '549', NULL, '6433474829', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(232, 232, '556', NULL, '3733398758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(233, 233, '1364', NULL, '2383876998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(234, 234, '608', NULL, '8230088927', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(235, 235, '663', NULL, '2833608470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(236, 236, '1314', NULL, '8683599388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(237, 237, '643', NULL, '5983633826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(238, 238, '484', NULL, '6433700108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(239, 239, '701', NULL, '3733501831', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(240, 240, '644', NULL, '3733628188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(241, 241, '488', NULL, '2383737166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(242, 242, '1362', NULL, '9566835337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(243, 243, '598', NULL, '7317107527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(244, 244, '554', NULL, '9566738556', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(245, 245, '1881', NULL, '4184007203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(246, 246, '609', NULL, '2833878644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(247, 247, '578', NULL, '4633640299', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(248, 248, '570', NULL, '5083692037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(249, 249, '654', NULL, '1005201320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(250, 250, '667', NULL, '19936916336000428', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(251, 251, '1313', NULL, '2833670223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(252, 252, '1871', NULL, '6883674076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(253, 253, '1377', NULL, '6883553312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(254, 254, '1423', NULL, '8683599271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(255, 255, '1376', NULL, '7783484186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(256, 256, '1965', NULL, '3733875615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(257, 257, '1395', NULL, '5983400796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(258, 258, '1868', NULL, '4633502606', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(259, 259, '651', NULL, '7333414337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(260, 260, '412', NULL, '3716030014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(261, 261, '408', NULL, '7334043275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(262, 262, '1401', NULL, '5533370390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(263, 263, '682', NULL, '5983409201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(264, 264, '521', NULL, '6883376516', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(265, 265, '1400', NULL, '64333666111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(266, 266, '1404', NULL, '6883371699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(267, 267, '1413', NULL, '6433470595', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(268, 268, '1435', NULL, '4633506219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(269, 269, '508', NULL, '5083866110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(270, 270, '1349', NULL, '7333506835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(271, 271, '1337', NULL, '4183479445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(272, 272, '462', NULL, '6434001563', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(273, 273, '681', NULL, '6883384213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(274, 274, '740', NULL, '4183375684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(275, 275, '703', NULL, '8683420965', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(276, 276, '716', NULL, '7783390409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(277, 277, '718', NULL, '8233388977', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(278, 278, '1397', NULL, '2833368760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(279, 279, '1985', NULL, '5983407114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(280, 280, '688', NULL, '7333641392', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(281, 281, '728', NULL, '8683649340', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(282, 282, '514', NULL, '8233721102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(283, 283, '1402', NULL, '3283385684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(284, 284, '1969', NULL, '5983413443', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(285, 285, '427', NULL, '6433600159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(286, 286, '1434', NULL, '4183555525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(287, 287, '677', NULL, '6435607897', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(288, 288, '616', NULL, '5083365758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(289, 289, '1952', NULL, '3733505477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(290, 290, '671', NULL, '5533375415', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(291, 291, '1359', NULL, '5533682067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(292, 292, '1407', NULL, '6883551878', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(293, 293, '584', NULL, '6883612597', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(294, 294, '385', NULL, '7783155679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(295, 295, '426', NULL, '4183611039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(296, 296, '1341', NULL, '1933421982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(297, 297, '1342', NULL, '238338579', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(298, 298, '652', NULL, '5083467802', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(299, 299, '625', NULL, '2847046667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(300, 300, '666', NULL, '1490059670', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(301, 301, '1923', NULL, '3300150145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(302, 302, '1990', NULL, '8683422193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(303, 303, '1425', NULL, '5533556097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(304, 304, '1983', NULL, '5983412320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(305, 305, '710', NULL, '4183489782', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(306, 306, '1354', NULL, '5095285226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(307, 307, '1874', NULL, '7783484491', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(308, 308, '407', NULL, '6883863604', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(309, 309, '390', NULL, '9133709130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(310, 310, '1415', NULL, '9133684135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(311, 311, '759', NULL, '1933758979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(312, 312, '1308', NULL, '2383690837', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(313, 313, '528', NULL, '9132617243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(314, 314, '592', NULL, '3715597434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(315, 315, '1986', NULL, '7333521404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(316, 316, '1411', NULL, '9133683186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(317, 317, '496', NULL, '1016946681', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(318, 318, '1339', NULL, '4633581451', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(319, 319, '1988', NULL, '3268314287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(320, 320, '414', NULL, '2384025892', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(321, 321, '1431', NULL, '1483552475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(322, 322, '673', NULL, '6883684521', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(323, 323, '490', NULL, '4183707951', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(324, 324, '1319', NULL, '5983708560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(325, 325, '697', NULL, '2833612076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(326, 326, '589', NULL, '6916336238027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(327, 327, '409', NULL, '9566927571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(328, 328, '648', NULL, '1016814814', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(329, 329, '687', NULL, '2383498975', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(330, 330, '561', NULL, '3283503989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(331, 331, '581', NULL, '4633642972', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(332, 332, '529', NULL, '6816336240519', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(333, 333, '576', NULL, '2383620958', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(334, 334, '660', NULL, '3733627198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(335, 335, '704', NULL, '4183489774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(336, 336, '1372', NULL, '7783485613', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(337, 337, '533', NULL, '2383900228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(338, 338, '706', NULL, '6883374768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(339, 339, '735', NULL, '19496916336236067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(340, 340, '1958', NULL, '5083666924', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(341, 341, '519', NULL, '4183493826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(342, 342, '607', NULL, '7333522089', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(343, 343, '1326', NULL, '3283695363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(344, 344, '637', NULL, '1917736587', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(345, 345, '1957', NULL, '5983714972', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(346, 346, '502', NULL, '3733735967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(347, 347, '396', NULL, '3260523786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(348, 348, '653', NULL, '2391210826', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(349, 349, '662', NULL, '8233611618', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(350, 350, '569', NULL, '7333406770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(351, 351, '94', NULL, '6884011617', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(352, 352, '384', NULL, '3284027574', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(353, 353, '399', NULL, '4618487807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(354, 354, '411', NULL, '2383879794', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(355, 355, '477', NULL, '4183721093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(356, 356, '1331', NULL, '3283876294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(357, 357, '483', NULL, '6433713275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(358, 358, '1922', NULL, '9566682861', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(359, 359, '627', NULL, '2833486588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(360, 360, '394', NULL, '5983914614', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(361, 361, '586', NULL, '7783381366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(362, 362, '573', NULL, '6926305393898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(363, 363, '675', NULL, '6433478390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(364, 364, '434', NULL, '1933658740', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(365, 365, '392', NULL, '4633890845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(366, 366, '623', NULL, '8233620551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(367, 367, '749', NULL, '4633403870', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(368, 368, '1403', NULL, '3733383131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(369, 369, '1390', NULL, '85072456584', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(370, 370, '1367', NULL, '5533676705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(371, 371, '700', NULL, '5983414722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(372, 372, '1384', NULL, '3283571333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(373, 373, '1375', NULL, '7783484095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(374, 374, '548', NULL, '4633519709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(375, 375, '774', NULL, '4633522851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(376, 376, '619', NULL, '2383727035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(377, 377, '515', NULL, '6433865778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(378, 378, '465', NULL, '8683908597', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(379, 379, '428', NULL, '19856916336000024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(380, 380, '621', NULL, '9551104616', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(381, 381, '511', NULL, '7783882033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(382, 382, '512', NULL, '2833862325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(383, 383, '642', NULL, '3736378310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(384, 384, '505', NULL, '1933777870', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(385, 385, '544', NULL, '1933935387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(386, 386, '421', NULL, '1016821223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(387, 387, '422', NULL, '4183711771', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(388, 388, '377', NULL, '8233884264', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(389, 389, '382', NULL, '7783871986', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(390, 390, '1992', NULL, '5083474220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(391, 391, '707', NULL, '1933545830', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(392, 392, '457', NULL, '9133620642', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(393, 393, '415', NULL, '4634040077', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(394, 394, '510', NULL, '9133877820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(395, 395, '509', NULL, '8683910932', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(396, 396, '1352', NULL, '4183677709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(397, 397, '553', NULL, '7783499507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(398, 398, '380', NULL, '2834002046', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(399, 399, '518', NULL, '6433861306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(400, 400, '513', NULL, '7783870772', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(401, 401, '631', NULL, '5533377387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(402, 402, '417', NULL, '9567646832', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(403, 403, '473', NULL, '9133620626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(404, 404, '398', NULL, '5533879390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(405, 405, '545', NULL, '5533705207', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(406, 406, '389', NULL, '1931194342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(407, 407, '1328', NULL, '4183676727', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(408, 408, '481', NULL, '4633638285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(409, 409, '450', NULL, '3733729176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(410, 410, '439', NULL, '4183713769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(411, 411, '471', NULL, '1016865980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(412, 412, '448', NULL, '1483719538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(413, 413, '383', NULL, '2384019911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(414, 414, '397', NULL, '7784016763', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(415, 415, '418', NULL, '8683642014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(416, 416, '467', NULL, '6883612449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(417, 417, '729', NULL, '3283633018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(418, 418, '1437', NULL, '5083547926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(419, 419, '391', NULL, '5535304405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(420, 420, '686', NULL, '4183605775', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(421, 421, '1334', NULL, '3283697518', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(422, 422, '1332', NULL, '1483562664', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0);
INSERT INTO `userinfo` (`id`, `USERID`, `Badgenumber`, `SSN`, `Name`, `Gender`, `TITLE`, `PAGER`, `BIRTHDAY`, `HIREDDAY`, `street`, `CITY`, `STATE`, `ZIP`, `OPHONE`, `FPHONE`, `VERIFICATIONMETHOD`, `DEFAULTDEPTID`, `SECURITYFLAGS`, `ATT`, `INLATE`, `OUTEARLY`, `OVERTIME`, `SEP`, `HOLIDAY`, `MINZU`, `PASSWORD`, `LUNCHDURATION`, `PHOTO`, `mverifypass`, `Notes`, `privilege`, `InheritDeptSch`, `InheritDeptSchClass`, `AutoSchPlan`, `MinAutoSchInterval`, `RegisterOT`, `InheritDeptRule`, `EMPRIVILEGE`, `CardNo`, `FaceGroup`, `AccGroup`, `UseAccGroupTZ`, `VerifyCode`, `Expires`, `ValidCount`, `ValidTimeBegin`, `ValidTimeEnd`, `TimeZone1`, `TimeZone2`, `TimeZone3`) VALUES
(423, 423, '444', NULL, '1483608004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(424, 424, '479', NULL, '4183708991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(425, 425, '443', NULL, '1933765073', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(426, 426, '1386', NULL, '9133484551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(427, 427, '395', NULL, '7334032161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(428, 428, '403', NULL, '1484017601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(429, 429, '404', NULL, '8234015827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(430, 430, '432', NULL, '8683644531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(431, 431, '482', NULL, '5533703954', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(432, 432, '520', NULL, '4184004630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(433, 433, '507', NULL, '5083697820', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(434, 434, '410', NULL, '6884007227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(435, 435, '413', NULL, '5984046655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(436, 436, '531', NULL, '3733889780', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(437, 437, '441', NULL, '8233880288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(438, 438, '614', NULL, '7333409808', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(439, 439, '732', NULL, '7783381200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(440, 440, '453', NULL, '6883617646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(441, 441, '425', NULL, '4183712845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(442, 442, '738', NULL, '2833372697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(443, 443, '772', NULL, '8233151482', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(444, 444, '1883', NULL, '5984048784', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(445, 445, '541', NULL, '9133883935', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(446, 446, '452', NULL, '2383891047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(447, 447, '472', NULL, '2833600774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(448, 448, '646', NULL, '4633630530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(449, 449, '613', NULL, '4183377409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(450, 450, '659', NULL, '6414573334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(451, 451, '526', NULL, '5533720891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(452, 452, '669', NULL, '7783501823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(453, 453, '537', NULL, '4183872748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(454, 454, '1363', NULL, '4633881026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(455, 455, '532', NULL, '1483877872', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(456, 456, '1406', NULL, '3283383770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(457, 457, '606', NULL, '8683531100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(458, 458, '485', NULL, '5533705363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(459, 459, '555', NULL, '4633409455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(460, 460, '474', NULL, '2837235700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(461, 461, '501', NULL, '9133617143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(462, 462, '587', NULL, '1933432252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(463, 463, '405', NULL, '6884011781', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(464, 464, '489', NULL, '5083699107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(465, 465, '530', NULL, '7333748387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(466, 466, '683', NULL, '9566798030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(467, 467, '755', NULL, '1933928952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(468, 468, '498', NULL, '5083704220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(469, 469, '468', NULL, '7333731003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(470, 470, '423', NULL, '8683640174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(471, 471, '429', NULL, '6883705284', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(472, 472, '543', NULL, '7333896947', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(473, 473, '672', NULL, '8233609620', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(474, 474, '668', NULL, '4633523321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(475, 475, '433', NULL, '1908170986', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(476, 476, '445', NULL, '5533010068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(477, 477, '546', NULL, '7333509342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(478, 478, '438', NULL, '6433701171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(479, 479, '641', NULL, '1016821306', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(480, 480, '516', NULL, '2833872183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(481, 481, '455', NULL, '8233725061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(482, 482, '753', NULL, '6005240020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(483, 483, '424', NULL, '2833716422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(484, 484, '1994', NULL, '2833377209', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 1, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(485, 485, '442', NULL, '2383731474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 1, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(486, 486, '388', NULL, '2833876028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 1, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(487, 487, '378', NULL, '6884004703', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(488, 488, '470', NULL, '8233717126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, '', 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(489, 489, '420', NULL, '6916336239473', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(490, 490, '495', NULL, '3283730517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(491, 491, '381', NULL, '5083992841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(492, 492, '497', NULL, '5083692813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(493, 493, '610', NULL, '5985189009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(494, 494, '577', NULL, '3267387235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(495, 495, '1884', NULL, '2368034167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(496, 496, '517', NULL, '2822402141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(497, 497, '401', NULL, '6433999817', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(498, 498, '758', NULL, '9119297647', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(499, 499, '466', NULL, '8684053088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(500, 500, '469', NULL, '2833710128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(501, 501, '525', NULL, '3283893919', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(502, 502, '1444', NULL, '1457712600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(503, 503, '464', NULL, '2401744434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(504, 504, '387', NULL, '7333897408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(505, 505, '754', NULL, '9133870841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(506, 506, '535', NULL, '6433878649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(507, 507, '504', NULL, '4183717794', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(508, 508, '446', NULL, '3733618783', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(509, 509, '1335', NULL, '4633710282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(510, 510, '506', NULL, '1933759720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(511, 511, '454', NULL, '5083692086', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(512, 512, '402', NULL, '6884004497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(513, 513, '539', NULL, '3284031865', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(514, 514, '458', NULL, '5083601541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(515, 517, '461', NULL, '6883600998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(516, 518, '431', NULL, '7783603595', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(517, 519, '386', NULL, '9133881384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(518, 520, '1378', NULL, '5533475751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(519, 521, '416', NULL, '2833870112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(520, 522, '1315', NULL, '1933733212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(521, 523, '618', NULL, '2825052489', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(522, 524, '486', NULL, '4633904232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(523, 525, '393', NULL, '2833869171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(524, 526, '360', NULL, '5083869775', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(525, 527, '680', NULL, '3283504227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(526, 528, '25', NULL, '2833378256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(527, 529, '371', NULL, '5083860709', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(528, 530, '400', NULL, '7783871960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(529, 531, '708', NULL, '3283620684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(530, 532, '712', NULL, '1483488571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(531, 533, '459', NULL, '6883602457', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(532, 534, '499', NULL, '7333747835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(533, 535, '538', NULL, '2833880053', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(534, 536, '456', NULL, '6883704659', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(535, 537, '559', NULL, '6433872170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(536, 538, '480', NULL, '2833609742', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(537, 539, '500', NULL, '5803704295', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(538, 540, '60', NULL, '8233720484', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(539, 541, '64', NULL, '5083696103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(540, 542, '560', NULL, '6883492024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0),
(541, 543, '622', NULL, '2383497043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 1, 1, 24, 1, 0, 0, NULL, 0, 1, 1, 0, 0, 0, NULL, NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `image` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vgd_attendance_logs`
--

CREATE TABLE `vgd_attendance_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nid_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `attendance_date` datetime NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1,
  `is_process` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = success 2= already  food received  ',
  `created_by_ip` varchar(45) CHARACTER SET utf8 NOT NULL,
  `updated_by_ip` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vgd_attendance_logs`
--

INSERT INTO `vgd_attendance_logs` (`id`, `card_no`, `nid_no`, `attendance_date`, `status`, `is_process`, `created_by_ip`, `updated_by_ip`, `created_at`, `updated_at`) VALUES
(100, '1', '5104959225', '2021-04-13 15:07:27', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:39:10', NULL),
(101, '1', '5104959225', '2021-04-13 15:07:27', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:39:44', NULL),
(102, '2', '2383810989', '2021-04-13 15:16:59', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:41:12', NULL),
(103, '35', '3301726737', '2021-04-13 18:31:47', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:41:14', NULL),
(104, '41', '41', '2021-04-13 18:37:34', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:41:31', NULL),
(105, '43', '43', '2021-04-13 18:39:03', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:41:31', NULL),
(106, '45', '45', '2021-04-13 18:40:57', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:41:31', NULL),
(107, '49', '49', '2021-04-13 18:43:39', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:41:31', NULL),
(108, '51', '51', '2021-04-13 18:45:27', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:41:31', NULL),
(109, '53', '53', '2021-04-13 18:48:39', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(110, '56', '56', '2021-04-13 18:50:57', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(111, '59', '59', '2021-04-13 18:54:52', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(112, '62', '62', '2021-04-13 18:57:08', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(113, '66', '66', '2021-04-13 19:03:22', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(114, '69', '69', '2021-04-13 19:06:15', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(115, '71', '71', '2021-04-13 19:08:02', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(116, '73', '73', '2021-04-13 19:10:11', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(117, '78', '78', '2021-04-13 19:19:36', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(118, '80', '80', '2021-04-13 19:21:20', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:43:25', NULL),
(119, '85', '85', '2021-04-13 19:29:08', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(120, '95', '95', '2021-04-13 19:50:10', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(121, '100', '100', '2021-04-13 19:58:48', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(122, '111', '111', '2021-04-13 20:15:51', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(123, '114', '114', '2021-04-13 20:21:35', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(124, '115', '3750601514', '2021-04-13 20:23:03', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(125, '117', '117', '2021-04-13 20:24:26', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(126, '123', '123', '2021-04-13 20:34:22', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(127, '126', '126', '2021-04-13 20:38:06', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(128, '127', '3733436350', '2021-04-13 20:39:40', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:44:57', NULL),
(129, '130', '6887073242', '2021-04-19 12:54:01', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(130, '131', '8653343510', '2021-04-19 12:54:08', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(131, '133', '133', '2021-04-19 12:56:34', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(132, '135', '135', '2021-04-19 12:58:51', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(133, '137', '137', '2021-04-19 13:01:23', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(134, '139', '139', '2021-04-19 13:03:17', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(135, '162', '8233536542', '2021-04-19 14:36:03', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(136, '175', '175', '2021-04-25 12:43:11', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:45:05', NULL),
(137, '2', '2383810989', '2021-04-13 15:15:56', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(138, '8', '8683767837', '2021-04-13 17:27:18', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(139, '9', '6434174022', '2021-04-13 17:31:31', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(140, '10', '2399309661', '2021-04-13 17:35:44', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(141, '11', '2383830052', '2021-04-13 17:39:02', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(142, '12', '3733824001', '2021-04-13 17:41:25', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(143, '13', '6898649063', '2021-04-13 17:43:19', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(144, '14', '14', '2021-04-13 17:45:54', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(145, '20', '20', '2021-04-13 18:00:15', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(146, '22', '3716685130', '2021-04-13 18:03:49', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:58:53', NULL),
(147, '23', '7351763854', '2021-04-13 18:05:46', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(148, '24', '5534156889', '2021-04-13 18:07:12', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(149, '25', '7783407864', '2021-04-13 18:10:26', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(150, '26', '26', '2021-04-13 18:12:05', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(151, '27', '27', '2021-04-13 18:13:53', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(152, '28', '28', '2021-04-13 18:15:32', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(153, '29', '29', '2021-04-13 18:17:20', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(154, '34', '34', '2021-04-13 18:30:13', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(155, '37', '37', '2021-04-13 18:33:20', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(156, '39', '39', '2021-04-13 18:34:56', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:25', NULL),
(157, '47', '47', '2021-04-13 18:42:20', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(158, '58', '6451705666', '2021-04-13 18:53:30', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(159, '62', '62', '2021-04-13 18:58:43', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(160, '66', '66', '2021-04-13 19:04:23', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(161, '76', '8233667065', '2021-04-13 19:16:04', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(162, '77', '5084293645', '2021-04-13 19:18:08', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(163, '82', '2833905645', '2021-04-13 19:23:08', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(164, '89', '6005002677', '2021-04-13 19:35:40', 3, 2, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(165, '90', '7784403482', '2021-04-13 19:38:59', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(166, '91', '6884331908', '2021-04-13 19:40:20', 2, 1, '180.211.243.250', NULL, '2021-04-25 08:59:48', NULL),
(167, '92', '7784408564', '2021-04-13 19:42:05', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(168, '93', '3283553703', '2021-04-13 19:44:11', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(169, '94', '19896916365273000', '2021-04-13 19:48:33', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(170, '96', '5539383132', '2021-04-13 19:51:37', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(171, '97', '4638018442', '2021-04-13 19:54:49', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(172, '99', '9133945171', '2021-04-13 19:57:12', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(173, '102', '6883728468', '2021-04-13 20:00:38', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(174, '103', '1483941868', '2021-04-13 20:02:28', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(175, '104', '1029379888', '2021-04-13 20:03:39', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(176, '105', '2398878989', '2021-04-13 20:05:45', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:00', NULL),
(177, '106', '5083398510', '2021-04-13 20:08:08', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(178, '108', '5504809350', '2021-04-13 20:10:52', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(179, '109', '19736916365271500', '2021-04-13 20:12:11', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(180, '110', '110', '2021-04-13 20:13:50', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(181, '118', '9566756632', '2021-04-13 20:26:14', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(182, '120', '19806916365255100', '2021-04-13 20:29:13', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(183, '121', '4633827631', '2021-04-13 20:30:49', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(184, '125', '8233424608', '2021-04-13 20:36:33', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(185, '130', '6887073242', '2021-04-19 12:17:32', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(186, '131', '8653343510', '2021-04-19 12:39:50', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:03', NULL),
(187, '141', '141', '2021-04-19 13:05:11', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(188, '143', '143', '2021-04-19 13:08:20', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(189, '145', '145', '2021-04-19 13:10:13', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(190, '147', '147', '2021-04-19 13:13:47', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(191, '149', '149', '2021-04-19 13:23:49', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(192, '151', '151', '2021-04-19 13:31:55', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(193, '153', '153', '2021-04-19 13:34:21', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(194, '155', '155', '2021-04-19 13:39:19', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(195, '157', '157', '2021-04-19 13:40:57', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(196, '159', '159', '2021-04-19 13:46:55', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:04', NULL),
(197, '161', '161', '2021-04-19 13:50:16', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(198, '164', '164', '2021-04-19 14:44:24', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(199, '166', '166', '2021-04-19 14:46:54', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(200, '169', '169', '2021-04-19 14:52:53', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(201, '170', '170', '2021-04-19 14:54:31', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(202, '172', '1934371707', '2021-04-19 18:09:06', 3, 2, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(203, '174', '174', '2021-04-25 12:39:38', 2, 1, '180.211.243.250', NULL, '2021-04-25 09:00:06', NULL),
(204, '174', '5083508076', '2021-04-25 12:39:38', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(205, '175', '6884147460', '2021-04-25 12:43:11', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(206, '176', '3283940496', '2021-04-26 13:20:21', 2, 1, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(207, '177', '4186597482', '2021-04-26 18:46:28', 2, 1, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(208, '178', '8254975363', '2021-04-28 13:54:48', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(209, '8', '8683767837', '2021-05-11 14:53:24', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(210, '107', '3744637996', '2021-05-11 15:04:37', 2, 1, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(211, '25', '7783407864', '2021-05-11 15:14:55', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(212, '125', '8233424608', '2021-05-11 15:26:03', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(213, '13', '6898649063', '2021-05-11 15:30:35', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:31:46', NULL),
(214, '1', '5104959225', '2021-05-11 15:40:05', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(215, '18', '4646774481', '2021-05-11 15:55:04', 2, 1, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(216, '130', '6887073242', '2021-05-11 15:55:27', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(217, '15', '6007672543', '2021-05-11 15:56:34', 2, 1, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(218, '35', '3301726737', '2021-05-11 15:58:55', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(219, '131', '8653343510', '2021-05-11 15:59:47', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(220, '10', '2399309661', '2021-05-11 16:00:20', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(221, '115', '3750601514', '2021-05-11 16:32:27', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(222, '127', '3733436350', '2021-05-11 16:34:37', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(223, '121', '4633827631', '2021-05-11 17:22:33', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:18', NULL),
(224, '90', '7784403482', '2021-05-11 17:23:25', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:32:22', NULL),
(225, '14', '14', '2021-04-13 17:45:54', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(226, '20', '7784408564', '2021-04-13 18:00:15', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(227, '26', '6883728468', '2021-04-13 18:12:05', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(228, '27', '5083725837', '2021-04-13 18:13:53', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(229, '28', '9567957064', '2021-04-13 18:15:32', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(230, '29', '5504809350', '2021-04-13 18:17:20', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(231, '34', '3733422897', '2021-04-13 18:30:13', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(232, '37', '9133642596', '2021-04-13 18:33:20', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(233, '39', '3723733774', '2021-04-13 18:34:56', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(234, '41', '5539696889', '2021-04-13 18:37:34', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:10', NULL),
(235, '45', '5083625243', '2021-04-13 18:40:57', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(236, '47', '3733955722', '2021-04-13 18:42:20', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(237, '49', '7807691741', '2021-04-13 18:43:39', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(238, '51', '1483653042', '2021-04-13 18:45:27', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(239, '53', '2834298420', '2021-04-13 18:48:39', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(240, '56', '4634322681', '2021-04-13 18:50:57', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(241, '59', '5984068394', '2021-04-13 18:54:52', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(242, '62', '7351763854', '2021-04-13 18:57:08', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(243, '66', '5083910611', '2021-04-13 19:03:22', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(244, '71', '2808005397', '2021-04-13 19:08:02', 3, 2, '37.111.239.207', NULL, '2021-05-11 12:35:12', NULL),
(245, '73', '6434174162', '2021-04-13 19:10:11', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(246, '78', '3283663015', '2021-04-13 19:19:36', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(247, '80', '4622698449', '2021-04-13 19:21:20', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(248, '85', '1934371707', '2021-04-13 19:29:08', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(249, '198', '6433398879', '2021-05-11 18:03:25', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(250, '199', '3283663015', '2021-05-11 18:04:41', 4, 3, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(251, '102', '6883728468', '2021-05-11 18:06:18', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(252, '200', '6434146301', '2021-05-11 18:07:41', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(253, '118', '9566756632', '2021-05-11 18:08:47', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(254, '201', '3734170859', '2021-05-11 18:11:38', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:18', NULL),
(255, '202', '7333546047', '2021-05-11 18:12:42', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(256, '203', '2833905744', '2021-05-11 18:15:07', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(257, '204', '1022591653', '2021-05-11 18:16:47', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(258, '93', '3283553703', '2021-05-11 18:19:54', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(259, '109', '19736916365271500', '2021-05-11 18:20:11', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(260, '105', '2398878989', '2021-05-11 18:20:37', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(261, '205', '205', '2021-05-11 18:22:21', 4, 3, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(262, '206', '206', '2021-05-11 18:26:25', 4, 3, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(263, '207', '207', '2021-05-11 18:29:59', 4, 3, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(264, '11', '2383830052', '2021-05-11 18:32:43', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:22', NULL),
(265, '95', '8254975363', '2021-04-13 19:50:10', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(266, '100', '8234336553', '2021-04-13 19:58:48', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(267, '110', '7784318805', '2021-04-13 20:13:50', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(268, '111', '3733651974', '2021-04-13 20:15:51', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(269, '114', '1934365790', '2021-04-13 20:21:35', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(270, '117', '3283535478', '2021-04-13 20:24:26', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(271, '123', '19872617239160000', '2021-04-13 20:34:22', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(272, '126', '9133530577', '2021-04-13 20:38:06', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(273, '133', '5083787159', '2021-04-19 12:56:34', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(274, '135', '5084321412', '2021-04-19 12:58:51', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:23', NULL),
(275, '137', '3734170859', '2021-04-19 13:01:23', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(276, '139', '7334368433', '2021-04-19 13:03:17', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(277, '141', '9133418021', '2021-04-19 13:05:11', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(278, '145', '3733424737', '2021-04-19 13:10:13', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(279, '147', '6883406537', '2021-04-19 13:13:47', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(280, '149', '5083506922', '2021-04-19 13:23:49', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(281, '151', '19896916365273000', '2021-04-19 13:31:55', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(282, '153', '9155024665', '2021-04-19 13:34:21', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(283, '155', '7784403482', '2021-04-19 13:39:19', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(284, '157', '6433907315', '2021-04-19 13:40:57', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:25', NULL),
(285, '159', '2383660830', '2021-04-19 13:46:55', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(286, '161', '5530457067', '2021-04-19 13:50:16', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(287, '164', '1507749545', '2021-04-19 14:44:24', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(288, '166', '4186597482', '2021-04-19 14:46:54', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(289, '169', '9567147799', '2021-04-19 14:52:53', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(290, '170', '9121225859', '2021-04-19 14:54:31', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(291, '179', '8254975363', '2021-04-28 13:57:02', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(292, '180', '6007672543', '2021-04-28 14:00:08', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(293, '181', '9121225859', '2021-04-29 14:47:32', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(294, '182', '3283535478', '2021-04-29 14:49:17', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:26', NULL),
(295, '183', '1022591653', '2021-04-29 14:51:47', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(296, '151', '19896916365273000', '2021-05-11 15:00:49', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(297, '182', '3283535478', '2021-05-11 15:01:48', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(298, '147', '6883406537', '2021-05-11 15:12:52', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(299, '43', '3723733774', '2021-05-11 15:22:16', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(300, '122', '9566755337', '2021-05-11 15:27:19', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(301, '139', '7334368433', '2021-05-11 15:34:54', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(302, '49', '7807691741', '2021-05-11 15:40:49', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(303, '169', '9567147799', '2021-05-11 15:41:24', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(304, '56', '4634322681', '2021-05-11 15:41:54', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:28', NULL),
(305, '164', '1507749545', '2021-05-11 15:45:09', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(306, '166', '4186597482', '2021-05-11 15:49:54', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(307, '141', '9133418021', '2021-05-11 15:52:05', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(308, '14', '14', '2021-05-11 15:52:23', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(309, '153', '9155024665', '2021-05-11 15:53:23', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(310, '179', '8254975363', '2021-05-11 16:03:05', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(311, '133', '5083787159', '2021-05-11 16:04:28', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(312, '161', '5530457067', '2021-05-11 16:37:55', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(313, '51', '1483653042', '2021-05-11 16:39:48', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(314, '53', '2834298420', '2021-05-11 16:44:37', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:29', NULL),
(315, '59', '5984068394', '2021-05-11 16:45:53', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(316, '135', '5084321412', '2021-05-11 16:46:47', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(317, '129', '9133429515', '2021-05-11 16:47:08', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(318, '80', '4622698449', '2021-05-11 16:48:00', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(319, '145', '3733424737', '2021-05-11 16:48:43', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(320, '28', '9567957064', '2021-05-11 16:52:06', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(321, '103', '1483941868', '2021-05-11 16:53:25', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(322, '82', '2833905645', '2021-05-11 16:56:56', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(323, '83', '9566755873', '2021-05-11 16:57:40', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(324, '37', '9133642596', '2021-05-11 17:04:04', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:48:42', NULL),
(325, '100', '8234336553', '2021-05-11 17:04:57', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(326, '91', '6884331908', '2021-05-11 17:05:29', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(327, '104', '1029379888', '2021-05-11 17:07:45', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(328, '99', '9133945171', '2021-05-11 17:08:14', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(329, '92', '7784408564', '2021-05-11 17:09:43', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(330, '96', '5539383132', '2021-05-11 17:09:56', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(331, '62', '7351763854', '2021-05-11 17:10:16', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(332, '71', '2808005397', '2021-05-11 17:10:37', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(333, '76', '8233667065', '2021-05-11 17:11:25', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(334, '181', '9121225859', '2021-05-11 17:14:14', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:03', NULL),
(335, '24', '5534156889', '2021-05-11 17:16:01', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(336, '155', '7784403482', '2021-05-11 17:20:22', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(337, '157', '6433907315', '2021-05-11 17:22:50', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(338, '185', '5083506922', '2021-05-11 17:33:53', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(339, '186', '5533542550', '2021-05-11 17:40:04', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(340, '188', '5083725837', '2021-05-11 17:48:48', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(341, '190', '6433909196', '2021-05-11 17:52:18', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(342, '191', '19786916365269400', '2021-05-11 17:54:15', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(343, '192', '3733740363', '2021-05-11 17:55:19', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(344, '193', '8207766398', '2021-05-11 17:56:46', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:16', NULL),
(345, '194', '2383753429', '2021-05-11 17:57:52', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:19', NULL),
(346, '197', '5533729215', '2021-05-11 18:01:51', 2, 1, '180.211.243.250', NULL, '2021-05-12 06:49:19', NULL),
(347, '58', '6451705666', '2021-05-12 13:19:15', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:19', NULL),
(348, '95', '8254975363', '2021-05-12 13:22:37', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:19', NULL),
(349, '210', '210', '2021-05-12 14:07:48', 4, 3, '180.211.243.250', NULL, '2021-05-12 06:49:19', NULL),
(350, '159', '2383660830', '2021-05-12 14:40:06', 3, 2, '180.211.243.250', NULL, '2021-05-12 06:49:19', NULL),
(351, '212', '212', '2021-05-12 14:57:35', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(352, '177', '4186597482', '2021-05-18 13:17:13', 3, 2, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(353, '214', '214', '2021-05-18 13:18:57', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(354, '216', '216', '2021-05-19 14:24:53', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(355, '205', '205', '2021-05-11 18:22:21', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(356, '206', '206', '2021-05-11 18:26:25', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(357, '207', '207', '2021-05-11 18:29:59', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(358, '208', '208', '2021-05-12 13:26:23', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(359, '209', '209', '2021-05-12 13:43:49', 4, 3, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(360, '20', '7784408564', '2021-05-12 14:04:56', 3, 2, '180.211.243.250', NULL, '2021-05-19 07:52:49', NULL),
(361, '176', '3283940496', '2021-05-12 14:31:05', 3, 2, '180.211.243.250', NULL, '2021-05-19 07:52:52', NULL),
(362, '120', '19806916365255100', '2021-05-12 14:33:37', 3, 2, '180.211.243.250', NULL, '2021-05-19 07:52:52', NULL),
(363, '217', '217', '2021-06-13 14:06:35', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(364, '115', '115', '2021-06-13 14:12:19', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(365, '114', '1934365790', '2021-06-13 14:15:52', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(366, '117', '3283535478', '2021-06-13 14:17:43', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(367, '41', '5539696889', '2021-06-13 14:24:13', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(368, '31', '31', '2021-06-13 14:29:52', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(369, '53', '2834298420', '2021-06-13 14:35:13', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(370, '129', '129', '2021-06-13 14:37:37', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(371, '147', '6883406537', '2021-06-13 14:41:43', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(372, '56', '4634322681', '2021-06-13 14:48:38', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:51:58', NULL),
(373, '1', '1', '2021-06-13 14:51:04', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(374, '80', '4622698449', '2021-06-13 14:54:33', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(375, '27', '5083725837', '2021-06-13 15:03:47', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(376, '8', '8', '2021-06-13 15:06:08', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(377, '218', '218', '2021-06-13 15:10:01', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(378, '139', '7334368433', '2021-06-13 15:12:22', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(379, '164', '1507749545', '2021-06-13 15:14:13', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(380, '24', '24', '2021-06-13 15:34:28', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(381, '34', '3733422897', '2021-06-13 15:45:35', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(382, '141', '9133418021', '2021-06-13 15:52:38', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:52:01', NULL),
(383, '49', '7807691741', '2021-06-13 15:56:37', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(384, '219', '219', '2021-06-13 16:13:59', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(385, '220', '220', '2021-06-13 16:17:35', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(386, '108', '108', '2021-06-13 16:22:10', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(387, '58', '58', '2021-06-13 16:25:37', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(388, '30', '30', '2021-06-13 16:29:46', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(389, '9', '9', '2021-06-13 16:32:39', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(390, '45', '5083625243', '2021-06-13 16:42:10', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(391, '172', '1934371707', '2021-06-13 16:53:07', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(392, '214', '214', '2021-06-13 17:23:19', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:17', NULL),
(393, '176', '176', '2021-06-13 17:27:39', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(394, '205', '205', '2021-06-13 17:31:36', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(395, '209', '209', '2021-06-13 17:42:06', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(396, '221', '221', '2021-06-13 17:53:18', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(397, '83', '83', '2021-06-13 17:54:26', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(398, '149', '5083506922', '2021-06-13 17:59:34', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(399, '105', '105', '2021-06-13 20:21:56', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(400, '197', '197', '2021-06-13 20:24:49', 3, 2, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL),
(401, '223', '223', '2021-06-13 20:29:09', 4, 3, '180.211.243.250', NULL, '2021-06-14 12:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warishinfo`
--

CREATE TABLE `warishinfo` (
  `id` int(11) NOT NULL,
  `trackid` varchar(8) NOT NULL,
  `w_name` varchar(60) NOT NULL,
  `w_relation` varchar(30) NOT NULL,
  `w_age` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warishinfo`
--

INSERT INTO `warishinfo` (`id`, `trackid`, `w_name`, `w_relation`, `w_age`) VALUES
(1, '258853', 'ff', 'ff', '4'),
(2, '258853', 'sdfg', 'sdfg', '3'),
(3, '258853', 'asdf', 'asf', '3'),
(4, '054265', 'sd', 'sdf', '4'),
(5, '054265', 'sdf', 'sdf', '4'),
(6, '842088', 'dfhd', 'hgfh', '55'),
(7, '842088', 'dgdfg', 'hjhg', '34'),
(8, '251137', 'a', 'son', '40'),
(9, '251137', 'b', 'son', '34'),
(10, '512820', 'dfhd', 'hgfh', '55'),
(11, '900623', 'জায়েদ ', 'ছেলে', '38');

-- --------------------------------------------------------

--
-- Table structure for table `word_member`
--

CREATE TABLE `word_member` (
  `id` int(11) NOT NULL,
  `word_no` smallint(6) UNSIGNED NOT NULL,
  `member_name` varchar(60) NOT NULL,
  `member_father` varchar(60) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_ip` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_ip` varchar(20) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=enable, 2= disable',
  `is_delete` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0= active, 1 = delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `word_member`
--

INSERT INTO `word_member` (`id`, `word_no`, `member_name`, `member_father`, `created_by`, `created_ip`, `created_date`, `updated_by`, `updated_ip`, `updated_date`, `is_active`, `is_delete`) VALUES
(1, 1, 'aa', 'aa', 1, '::1', '2018-10-06 00:47:09', NULL, NULL, NULL, 1, 0),
(2, 2, 'sads', 'sdsd', 1, '::1', '2018-10-06 23:15:52', NULL, NULL, NULL, 1, 0),
(3, 3, 'dfsdf', 'dfdf', 1, '::1', '2018-10-06 23:16:23', NULL, NULL, NULL, 1, 0),
(4, 4, 'aa', 'aa', 1, '::1', '2018-10-06 23:16:58', NULL, NULL, NULL, 1, 0),
(5, 5, 'fd', 'dfdf', 1, '::1', '2018-10-06 23:17:25', NULL, NULL, NULL, 1, 0),
(6, 6, 'dfdf', 'dfdf', 1, '::1', '2018-10-07 01:20:34', 1, '::1', '2018-10-07 01:20:39', 1, 1),
(7, 6, 'df', 'dfdf', 1, '::1', '2018-10-07 01:37:10', 1, '::1', '2018-10-07 01:37:16', 1, 1),
(8, 6, 'sdg', 'sdfg', 1, '::1', '2018-10-07 01:37:23', NULL, NULL, NULL, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountlogs`
--
ALTER TABLE `accountlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acinfo`
--
ALTER TABLE `acinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `app_list`
--
ALTER TABLE `app_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_validation`
--
ALTER TABLE `app_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendances_record_id_attendance_date_unique` (`record_id`,`attendance_date`);

--
-- Indexes for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buisnestypes`
--
ALTER TABLE `buisnestypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chairman_message`
--
ALTER TABLE `chairman_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkinout`
--
ALTER TABLE `checkinout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmd`
--
ALTER TABLE `cmd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_voucher`
--
ALTER TABLE `credit_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailycollection`
--
ALTER TABLE `dailycollection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailyexp`
--
ALTER TABLE `dailyexp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcb_login_history`
--
ALTER TABLE `dcb_login_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `dcb_mobile_verfication`
--
ALTER TABLE `dcb_mobile_verfication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcb_security_question`
--
ALTER TABLE `dcb_security_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `dcb_security_setting`
--
ALTER TABLE `dcb_security_setting`
  ADD PRIMARY KEY (`security_id`);

--
-- Indexes for table `dcb_sms`
--
ALTER TABLE `dcb_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcb_sms_notification`
--
ALTER TABLE `dcb_sms_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcb_sms_setting`
--
ALTER TABLE `dcb_sms_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcb_sq_ans`
--
ALTER TABLE `dcb_sq_ans`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `debit_voucher`
--
ALTER TABLE `debit_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_users`
--
ALTER TABLE `end_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_user_invoice`
--
ALTER TABLE `end_user_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exphead`
--
ALTER TABLE `exphead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expurpose`
--
ALTER TABLE `expurpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_dealer_info`
--
ALTER TABLE `food_dealer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_program_info`
--
ALTER TABLE `food_program_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_receiver_applicant_info`
--
ALTER TABLE `food_receiver_applicant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_receiver_record`
--
ALTER TABLE `food_receiver_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_vgd_applicant_info`
--
ALTER TABLE `food_vgd_applicant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_vgd_circle_setup`
--
ALTER TABLE `food_vgd_circle_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_vgd_receiver_info`
--
ALTER TABLE `food_vgd_receiver_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_sub_ctg`
--
ALTER TABLE `fund_sub_ctg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_transfer`
--
ALTER TABLE `fund_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getlicense`
--
ALTER TABLE `getlicense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holdingclientinfo`
--
ALTER TABLE `holdingclientinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holding_rate_sheet`
--
ALTER TABLE `holding_rate_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holding_rate_sheet_label`
--
ALTER TABLE `holding_rate_sheet_label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledger`
--
ALTER TABLE `ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_hostory`
--
ALTER TABLE `license_hostory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_notification`
--
ALTER TABLE `license_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainctg`
--
ALTER TABLE `mainctg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainctg_in_budget`
--
ALTER TABLE `mainctg_in_budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mamla_badi`
--
ALTER TABLE `mamla_badi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mamla_bibadi`
--
ALTER TABLE `mamla_bibadi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mamla_tbl`
--
ALTER TABLE `mamla_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onnanoseba`
--
ALTER TABLE `onnanoseba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherserviceinfo`
--
ALTER TABLE `otherserviceinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otherservicelist`
--
ALTER TABLE `otherservicelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateway_api`
--
ALTER TABLE `payment_gateway_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_log_bosotbita`
--
ALTER TABLE `payment_log_bosotbita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trackid` (`trackid`),
  ADD UNIQUE KEY `sonodno` (`sonodno`);

--
-- Indexes for table `porichoprotro`
--
ALTER TABLE `porichoprotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_sheet`
--
ALTER TABLE `rate_sheet`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `rate_sheet_history`
--
ALTER TABLE `rate_sheet_history`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `renew_req`
--
ALTER TABLE `renew_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_tbl`
--
ALTER TABLE `setup_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_setting`
--
ALTER TABLE `slide_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snf_global_form`
--
ALTER TABLE `snf_global_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subctg`
--
ALTER TABLE `subctg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subctg_in_budget`
--
ALTER TABLE `subctg_in_budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assesment`
--
ALTER TABLE `tbl_assesment`
  ADD PRIMARY KEY (`assid`);

--
-- Indexes for table `tbl_autistic`
--
ALTER TABLE `tbl_autistic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_autisticstudent`
--
ALTER TABLE `tbl_autisticstudent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_books`
--
ALTER TABLE `tbl_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fighters`
--
ALTER TABLE `tbl_fighters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_fiscal_year`
--
ALTER TABLE `tbl_fiscal_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_foreignman`
--
ALTER TABLE `tbl_foreignman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_mother_vata`
--
ALTER TABLE `tbl_mother_vata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_oldmanstipend`
--
ALTER TABLE `tbl_oldmanstipend`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_poormans`
--
ALTER TABLE `tbl_poormans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_tracking`
--
ALTER TABLE `tbl_tracking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trackid` (`trackid`);

--
-- Indexes for table `tbl_upmember`
--
ALTER TABLE `tbl_upmember`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `n_id` (`n_id`);

--
-- Indexes for table `tbl_voter_list`
--
ALTER TABLE `tbl_voter_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tbl_warishesinfo`
--
ALTER TABLE `tbl_warishesinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trackid` (`trackid`),
  ADD UNIQUE KEY `sonodno` (`sonodno`);

--
-- Indexes for table `tbl_wcc`
--
ALTER TABLE `tbl_wcc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_webtools`
--
ALTER TABLE `tbl_webtools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_widow`
--
ALTER TABLE `tbl_widow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `tradelicense`
--
ALTER TABLE `tradelicense`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trackid` (`trackid`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_map`
--
ALTER TABLE `up_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sonods`
--
ALTER TABLE `up_sonods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vgd_attendance_logs`
--
ALTER TABLE `vgd_attendance_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warishinfo`
--
ALTER TABLE `warishinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word_member`
--
ALTER TABLE `word_member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountlogs`
--
ALTER TABLE `accountlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acinfo`
--
ALTER TABLE `acinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_list`
--
ALTER TABLE `app_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_validation`
--
ALTER TABLE `app_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buisnestypes`
--
ALTER TABLE `buisnestypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `chairman_message`
--
ALTER TABLE `chairman_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkinout`
--
ALTER TABLE `checkinout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cmd`
--
ALTER TABLE `cmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credit_voucher`
--
ALTER TABLE `credit_voucher`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `dailycollection`
--
ALTER TABLE `dailycollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dailyexp`
--
ALTER TABLE `dailyexp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dcb_login_history`
--
ALTER TABLE `dcb_login_history`
  MODIFY `history_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `dcb_mobile_verfication`
--
ALTER TABLE `dcb_mobile_verfication`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dcb_security_question`
--
ALTER TABLE `dcb_security_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dcb_security_setting`
--
ALTER TABLE `dcb_security_setting`
  MODIFY `security_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dcb_sms`
--
ALTER TABLE `dcb_sms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dcb_sms_notification`
--
ALTER TABLE `dcb_sms_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dcb_sms_setting`
--
ALTER TABLE `dcb_sms_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dcb_sq_ans`
--
ALTER TABLE `dcb_sq_ans`
  MODIFY `ans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `debit_voucher`
--
ALTER TABLE `debit_voucher`
  MODIFY `id` bigint(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `end_users`
--
ALTER TABLE `end_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `end_user_invoice`
--
ALTER TABLE `end_user_invoice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exphead`
--
ALTER TABLE `exphead`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `expurpose`
--
ALTER TABLE `expurpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_dealer_info`
--
ALTER TABLE `food_dealer_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food_program_info`
--
ALTER TABLE `food_program_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food_receiver_applicant_info`
--
ALTER TABLE `food_receiver_applicant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1663;

--
-- AUTO_INCREMENT for table `food_receiver_record`
--
ALTER TABLE `food_receiver_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_vgd_applicant_info`
--
ALTER TABLE `food_vgd_applicant_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `food_vgd_circle_setup`
--
ALTER TABLE `food_vgd_circle_setup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_vgd_receiver_info`
--
ALTER TABLE `food_vgd_receiver_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `fund_sub_ctg`
--
ALTER TABLE `fund_sub_ctg`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `fund_transfer`
--
ALTER TABLE `fund_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `getlicense`
--
ALTER TABLE `getlicense`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `holdingclientinfo`
--
ALTER TABLE `holdingclientinfo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `holding_rate_sheet`
--
ALTER TABLE `holding_rate_sheet`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `holding_rate_sheet_label`
--
ALTER TABLE `holding_rate_sheet_label`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ledger`
--
ALTER TABLE `ledger`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `license_hostory`
--
ALTER TABLE `license_hostory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `license_notification`
--
ALTER TABLE `license_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mainctg`
--
ALTER TABLE `mainctg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mainctg_in_budget`
--
ALTER TABLE `mainctg_in_budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mamla_badi`
--
ALTER TABLE `mamla_badi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mamla_bibadi`
--
ALTER TABLE `mamla_bibadi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mamla_tbl`
--
ALTER TABLE `mamla_tbl`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `money`
--
ALTER TABLE `money`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `onnanoseba`
--
ALTER TABLE `onnanoseba`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otherserviceinfo`
--
ALTER TABLE `otherserviceinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `otherservicelist`
--
ALTER TABLE `otherservicelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_gateway_api`
--
ALTER TABLE `payment_gateway_api`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_log_bosotbita`
--
ALTER TABLE `payment_log_bosotbita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `personalinfo`
--
ALTER TABLE `personalinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `porichoprotro`
--
ALTER TABLE `porichoprotro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rate_sheet`
--
ALTER TABLE `rate_sheet`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_sheet_history`
--
ALTER TABLE `rate_sheet_history`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `renew_req`
--
ALTER TABLE `renew_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setup_tbl`
--
ALTER TABLE `setup_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide_setting`
--
ALTER TABLE `slide_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `snf_global_form`
--
ALTER TABLE `snf_global_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subctg`
--
ALTER TABLE `subctg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subctg_in_budget`
--
ALTER TABLE `subctg_in_budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assesment`
--
ALTER TABLE `tbl_assesment`
  MODIFY `assid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_autistic`
--
ALTER TABLE `tbl_autistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_autisticstudent`
--
ALTER TABLE `tbl_autisticstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_books`
--
ALTER TABLE `tbl_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_fighters`
--
ALTER TABLE `tbl_fighters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fiscal_year`
--
ALTER TABLE `tbl_fiscal_year`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_foreignman`
--
ALTER TABLE `tbl_foreignman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mother_vata`
--
ALTER TABLE `tbl_mother_vata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_oldmanstipend`
--
ALTER TABLE `tbl_oldmanstipend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_poormans`
--
ALTER TABLE `tbl_poormans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tracking`
--
ALTER TABLE `tbl_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_upmember`
--
ALTER TABLE `tbl_upmember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_voter_list`
--
ALTER TABLE `tbl_voter_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_warishesinfo`
--
ALTER TABLE `tbl_warishesinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_wcc`
--
ALTER TABLE `tbl_wcc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_webtools`
--
ALTER TABLE `tbl_webtools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_widow`
--
ALTER TABLE `tbl_widow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tradelicense`
--
ALTER TABLE `tradelicense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `up_map`
--
ALTER TABLE `up_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `up_sonods`
--
ALTER TABLE `up_sonods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vgd_attendance_logs`
--
ALTER TABLE `vgd_attendance_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `warishinfo`
--
ALTER TABLE `warishinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `word_member`
--
ALTER TABLE `word_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
