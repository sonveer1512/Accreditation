-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 08:37 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_code`
--

CREATE TABLE `access_code` (
  `id` int(11) NOT NULL,
  `icon` varchar(220) NOT NULL,
  `title` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_code`
--

INSERT INTO `access_code` (`id`, `icon`, `title`, `flag`) VALUES
(2, '1.png', 'Infinity - All Competition & Training Venues', 0),
(3, '2.png', 'Dining As Per Category', 0),
(4, '3.png', 'VVIP Dining', 0),
(5, '4.png', 'Field of Play', 0),
(6, '5.png', 'Athletes Preparation Areas', 0),
(7, '6.png', 'Technical Officials Area', 0),
(8, '7.png', 'Press area, Media Tribune / lounge, Broadcasting a', 0),
(9, '8.png', 'Operation Area', 0),
(10, '9.png', 'VIP/Games Family', 0),
(11, '10.png', 'Dedicated Car with Driver', 0),
(12, '11.png', 'On Call Fleet', 0),
(13, '12.png', 'Athlete Shuttle Bus', 0),
(14, '13.png', 'Technical Officials, Media Shuttle Bus', 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accreditation_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tshirtsize` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_email_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `player_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sport` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `created_at`, `updated_at`, `uid`, `first_name`, `last_name`, `accreditation_name`, `dob`, `address`, `email`, `mobile`, `gender`, `father_name`, `mother_name`, `spouse_name`, `tshirtsize`, `organisation`, `designation`, `org_address`, `org_email_id`, `org_phone`, `terms`, `player_image`, `state`, `sport`, `event_name`, `category_name`) VALUES
(1, NULL, NULL, 'KHAA089M04', 'Phani Kumar Marisetty', NULL, NULL, '2004-05-28', NULL, NULL, NULL, 'M', 'Subba Rao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(2, NULL, NULL, 'KHAA090M04', 'Praveen Kogana', NULL, NULL, '2004-06-06', NULL, NULL, NULL, 'M', 'Chinna Rao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(3, NULL, NULL, 'KHAA260M04', 'Mohamad Aman', NULL, NULL, '2004-11-08', NULL, NULL, NULL, 'M', 'Mohamad Akmal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(4, NULL, NULL, 'KHAA255M05', 'Suri Naidu Rejeti', NULL, NULL, '2005-06-20', NULL, NULL, NULL, 'M', 'Lakshmunaidu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(5, NULL, NULL, 'KHAA265M04', 'Koresh Babu Avanigadda', NULL, NULL, '2004-08-16', NULL, NULL, NULL, 'M', 'Annada Rao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(6, NULL, NULL, 'KHAA256M05', 'Mahesh Kumbha', NULL, NULL, '2005-07-11', NULL, NULL, NULL, 'M', 'Veera Swami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(7, NULL, NULL, 'KHAA328M04', 'Valireddy Bhanu Prasad', NULL, NULL, '2004-03-07', NULL, NULL, NULL, 'M', 'V Ramana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(8, NULL, NULL, 'KHAA227M06', 'Gavara Nani', NULL, NULL, '2006-06-04', NULL, NULL, NULL, 'M', 'G Peda Appala Naidu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(9, NULL, NULL, 'KHAA228M06', 'Nayudu Shalem Raju', NULL, NULL, '2006-06-09', NULL, NULL, NULL, 'M', 'Nayudu Raju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(10, NULL, NULL, 'KHAA229M06', 'Karri Siva Shankar', NULL, NULL, '2006-10-12', NULL, NULL, NULL, 'M', 'Veera Babu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(11, NULL, NULL, 'KHAA329M04', 'Shaik Mahaboob', NULL, NULL, '2004-04-15', NULL, NULL, NULL, 'M', 'Khaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(12, NULL, NULL, 'KHAA330M04', 'Banavathu Simhadri Nayak', NULL, NULL, '2004-06-20', NULL, NULL, NULL, 'M', 'Bodya Naik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(13, NULL, NULL, 'KHAA321M05', 'Murali Krishna Meena Rang', NULL, NULL, '2005-04-19', NULL, NULL, NULL, 'M', 'Naga Raju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(14, NULL, NULL, 'KHAA231M06', 'Meghavathu Mantru Naik', NULL, NULL, '2006-02-10', NULL, NULL, NULL, 'M', 'Dattu Naik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andhra Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(15, NULL, NULL, 'FOAA365F05', 'Tadar Marmi', NULL, NULL, '2005-10-07', NULL, NULL, NULL, 'F', 'Tadar Tamo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(16, NULL, NULL, 'FOAA366F05', 'Tadar Mari', NULL, NULL, '2005-10-07', NULL, NULL, NULL, 'F', 'Tadar Tamar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(17, NULL, NULL, 'FOAA367F05', 'Tarak Yana', NULL, NULL, '2005-12-09', NULL, NULL, NULL, 'F', 'Tarak Tade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(18, NULL, NULL, 'FOAA368F05', 'Tallo Riya', NULL, NULL, '2005-03-19', NULL, NULL, NULL, 'F', 'Tallo Babu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(19, NULL, NULL, 'FOAA427F04', 'Kai Rumi', NULL, NULL, '2004-02-04', NULL, NULL, NULL, 'F', 'Teka Rumi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(20, NULL, NULL, 'FOAA366F06', 'Lingdum Yaro', NULL, NULL, '2006-11-20', NULL, NULL, NULL, 'F', 'Lingdum Chapo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(21, NULL, NULL, 'FOAA367F06', 'Toko Yaja', NULL, NULL, '2006-04-04', NULL, NULL, NULL, 'F', 'Toko Tatam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(22, NULL, NULL, 'FOAA369F05', 'Inggena Perme', NULL, NULL, '2005-10-25', NULL, NULL, NULL, 'F', 'Gerep Perme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(23, NULL, NULL, 'FOAA370F05', 'Rongki Mize', NULL, NULL, '2005-06-11', NULL, NULL, NULL, 'F', 'Peter Mize', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(24, NULL, NULL, 'FOAA371F05', 'Papung Bodo', NULL, NULL, '2005-08-06', NULL, NULL, NULL, 'F', 'Kome Bodo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(25, NULL, NULL, 'FOAA372F05', 'Giani Ramching Mara', NULL, NULL, '2005-06-04', NULL, NULL, NULL, 'F', 'Tagia Ramching Mara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(26, NULL, NULL, 'FOAA288F07', 'Yumlam Lali', NULL, NULL, '2007-01-01', NULL, NULL, NULL, 'F', 'Yumlam Tania', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(27, NULL, NULL, 'FOAA289F07', 'Angel Tayang', NULL, NULL, '2007-01-27', NULL, NULL, NULL, 'F', 'Chamso Tayang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(28, NULL, NULL, 'FOAA428F04', 'Jumbalu Tayang', NULL, NULL, '2004-04-23', NULL, NULL, NULL, 'F', 'Sobreng Tayang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(29, NULL, NULL, 'FOAA207F08', 'Gunailu Tawsik', NULL, NULL, '2008-08-20', NULL, NULL, NULL, 'F', 'Dejelum Tawsik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(30, NULL, NULL, 'FOAA291F07', 'Yasom Godak', NULL, NULL, '2007-03-31', NULL, NULL, NULL, 'F', 'Kupi Godak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(31, NULL, NULL, 'FOAA375F05', 'Tamchi Soram', NULL, NULL, '2005-11-07', NULL, NULL, NULL, 'F', 'Tamchi Tama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(32, NULL, NULL, 'FOAA376F05', 'Kasti Doo', NULL, NULL, '2005-09-12', NULL, NULL, NULL, 'F', 'Thakemso Doo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(33, NULL, NULL, 'FOAA370F06', 'Tungam Desen', NULL, NULL, '2006-10-12', NULL, NULL, NULL, 'F', 'Tungam Taru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(34, NULL, NULL, 'FOAA294F07', 'Geyir Ori', NULL, NULL, '2007-02-21', NULL, NULL, NULL, 'F', 'Senge Ori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Girls'),
(35, NULL, NULL, 'FOAB698M05', 'Dangu Mania', NULL, NULL, '2005-09-02', NULL, NULL, NULL, 'M', 'Dangu Talik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(36, NULL, NULL, 'FOAB797M04', 'Thungsham Kimsing', NULL, NULL, '2004-06-16', NULL, NULL, NULL, 'M', 'Kamthai Kimsing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(37, NULL, NULL, 'FOAB798M04', 'Yachang Kani', NULL, NULL, '2004-08-19', NULL, NULL, NULL, 'M', 'Yachang Lapung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(38, NULL, NULL, 'FOAB699M05', 'Loghi Apa', NULL, NULL, '2005-01-12', NULL, NULL, NULL, 'M', 'Loghi Jeel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(39, NULL, NULL, 'FOAB799M04', 'Midul Doley', NULL, NULL, '2004-08-15', NULL, NULL, NULL, 'M', 'Sunil Doley', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(40, NULL, NULL, 'FOAB700M05', 'Amos Taiboi', NULL, NULL, '2005-08-04', NULL, NULL, NULL, 'M', 'Railong Taiboi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(41, NULL, NULL, 'FOAB362M06', 'Kito Ete', NULL, NULL, '2006-12-05', NULL, NULL, NULL, 'M', 'Lt Liki Ete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(42, NULL, NULL, 'FOAB800M04', 'Pokpin Yoka', NULL, NULL, '2004-04-10', NULL, NULL, NULL, 'M', 'Tapok Yoka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(43, NULL, NULL, 'FOAA704M08', 'Momik Ado', NULL, NULL, '2008-08-24', NULL, NULL, NULL, 'M', 'Bamo Ado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(44, NULL, NULL, 'FOAB363M06', 'Toku Punung', NULL, NULL, '2006-03-02', NULL, NULL, NULL, 'M', 'Toku Kaming', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(45, NULL, NULL, 'FOAA705M08', 'Domkar Bogo', NULL, NULL, '2008-10-18', NULL, NULL, NULL, 'M', 'Lukdom Bogo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(46, NULL, NULL, 'FOAB364M06', 'Rishab Ansari', NULL, NULL, '2006-11-23', NULL, NULL, NULL, 'M', 'Khalil Ansari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(47, NULL, NULL, 'FOAB801M04', 'Thupten Phuntsok Naksang', NULL, NULL, '2004-08-23', NULL, NULL, NULL, 'M', 'Sonam Naksang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(48, NULL, NULL, 'FOAB802M04', 'Gyamar Nikum', NULL, NULL, '2004-10-26', NULL, NULL, NULL, 'M', 'Gyamar Tajik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(49, NULL, NULL, 'FOAB365M06', 'Baro Liyak', NULL, NULL, '2006-01-12', NULL, NULL, NULL, 'M', 'Aru Liyak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(50, NULL, NULL, 'FOAB702M05', 'Yura Tarung', NULL, NULL, '2005-09-21', NULL, NULL, NULL, 'M', 'Yura Tare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(51, NULL, NULL, 'FOAA706M08', 'Tori Basar', NULL, NULL, '2008-11-27', NULL, NULL, NULL, 'M', 'Lito Basar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(52, NULL, NULL, 'FOAB366M06', 'Binam Tair', NULL, NULL, '2006-10-12', NULL, NULL, NULL, 'M', 'Taking Tair', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(53, NULL, NULL, 'FOAB002M07', 'Deegranso Yun', NULL, NULL, '2007-09-30', NULL, NULL, NULL, 'M', 'Soteo Yun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(54, NULL, NULL, 'FOAB703M05', 'Tarh Talar', NULL, NULL, '2005-11-11', NULL, NULL, NULL, 'M', 'Tarh Tograk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Arunachal Pradesh', 'Football', 'Team Event', 'Under 18 Boys'),
(55, NULL, NULL, 'KAAA052F05', 'Riya Kumari', NULL, NULL, '2005-04-08', NULL, NULL, NULL, 'F', 'Sikendra Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(56, NULL, NULL, 'KAAA053F05', 'Suruchi Kumari', NULL, NULL, '2005-07-03', NULL, NULL, NULL, 'F', 'Shyam Sundar Pandey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(57, NULL, NULL, 'KAAA079F04', 'Lakshmi Kumari', NULL, NULL, '38272', NULL, NULL, NULL, 'F', 'Bajrangi Paswan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(58, NULL, NULL, 'KAAB664M04', 'Nishant Kumar', NULL, NULL, '38062', NULL, NULL, NULL, 'M', 'Sunil Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(59, NULL, NULL, 'KAAB674M04', 'Saurav Kumar Kumar', NULL, NULL, '38312', NULL, NULL, NULL, 'M', 'Rakesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(60, NULL, NULL, 'KAAA420F04', 'Aashika Shandilya', NULL, NULL, '37996', NULL, NULL, NULL, 'F', 'Dharmendra Prasad Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(61, NULL, NULL, 'FOAA418F04', 'Aarti Kumari Bhagat', NULL, NULL, '38138', NULL, NULL, NULL, 'F', 'Shivji Bhagat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(62, NULL, NULL, 'FOAA359F05', 'Anjali Kumari', NULL, NULL, '38487', NULL, NULL, NULL, 'F', 'Srikant Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(63, NULL, NULL, 'KAAB559M06', 'Sunny Singh', NULL, NULL, '39030', NULL, NULL, NULL, 'M', 'Sanjay Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(64, NULL, NULL, 'KAAB560M06', 'Rupesh Kumar', NULL, NULL, '38888', NULL, NULL, NULL, 'M', 'Surendra Prasad Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(65, NULL, NULL, 'KAAD248M04', 'Ankit Singh', NULL, NULL, '38337', NULL, NULL, NULL, 'M', 'Raju Ranjan Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(66, NULL, NULL, 'KAAC488M05', 'Satyam Singh', NULL, NULL, '38497', NULL, NULL, NULL, 'M', 'Rahul Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(67, NULL, NULL, 'KAAD250M04', 'Vikash Kumar', NULL, NULL, '38004', NULL, NULL, NULL, 'M', 'Rajiv Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(68, NULL, NULL, 'KAAB561M06', 'Aniket Kumar', NULL, NULL, '38861', NULL, NULL, NULL, 'M', 'Surendra Prasad Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(69, NULL, NULL, 'KAAA022M22', 'Vinay Kumar', NULL, NULL, '38122', NULL, NULL, NULL, 'M', 'Vijendra Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(70, NULL, NULL, 'KAAB562M06', 'Vishal Kumar', NULL, NULL, '38780', NULL, NULL, NULL, 'M', 'Laxman Ray', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(71, NULL, NULL, 'KAAA267F06', 'Indu Kumari', NULL, NULL, '38950', NULL, NULL, NULL, 'F', 'Sunil Prasad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(72, NULL, NULL, 'KAAC489M05', 'Md Sarfaraz Alam', NULL, NULL, '38384', NULL, NULL, NULL, 'M', 'Md Amir Alam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(73, NULL, NULL, 'KAAC490M05', 'Aditya Kumar', NULL, NULL, '38638', NULL, NULL, NULL, 'M', 'Amrendra Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(74, NULL, NULL, 'KAAA142F07', 'Gungun Chouhan', NULL, NULL, '39083', NULL, NULL, NULL, 'F', 'Vikash Chouhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(75, NULL, NULL, 'KAAA143F07', 'Sundar Kumari', NULL, NULL, '39446', NULL, NULL, NULL, 'F', 'Sanjay Thakur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(76, NULL, NULL, 'KAAA099F08', 'Pratibha Kumari', NULL, NULL, '39707', NULL, NULL, NULL, 'F', 'Rajkumar Mahto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(77, NULL, NULL, 'KAAA427F05', 'Naincy Priya', NULL, NULL, '38353', NULL, NULL, NULL, 'F', 'Dharmendra Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(78, NULL, NULL, 'KAAA268F06', 'Rincy Kumari', NULL, NULL, '38858', NULL, NULL, NULL, 'F', 'Sikandar Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(79, NULL, NULL, 'KAAA461F04', 'Sweta Swaraj', NULL, NULL, '38028', NULL, NULL, NULL, 'F', 'Arvind Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(80, NULL, NULL, 'KAAA430F05', 'Suman Kumari', NULL, NULL, '38507', NULL, NULL, NULL, 'F', 'Arun Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(81, NULL, NULL, 'FOAA385F05', 'Soni Kumari', NULL, NULL, '38692', NULL, NULL, NULL, 'F', 'Manoj Kumar Das', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(82, NULL, NULL, 'FOAA387F05', 'Sabra Khatun', NULL, NULL, '38404', NULL, NULL, NULL, 'F', 'Sudhan Ansari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(83, NULL, NULL, 'FOAA436F04', 'Muskan Khatoon', NULL, NULL, '37987', NULL, NULL, NULL, 'F', 'Chotan Sai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(84, NULL, NULL, 'FOAA307F07', 'Manisha Kumari', NULL, NULL, '39290', NULL, NULL, NULL, 'F', 'Harendra Prasad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(85, NULL, NULL, 'FOAA384F06', 'Shruti Kumari', NULL, NULL, '38773', NULL, NULL, NULL, 'F', 'Abhay Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(86, NULL, NULL, 'FOAA308F07', 'Khushi Kumari', NULL, NULL, '39350', NULL, NULL, NULL, 'F', 'Sitaram Pasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(87, NULL, NULL, 'FOAA392F05', 'Nibha Kumari', NULL, NULL, '38443', NULL, NULL, NULL, 'F', 'Manoj Gond', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(88, NULL, NULL, 'FOAA393F05', 'Payal Kumari', NULL, NULL, '38388', NULL, NULL, NULL, 'F', 'Sanjay Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(89, NULL, NULL, 'FOAA394F05', 'Pallavi Kumari', NULL, NULL, '38385', NULL, NULL, NULL, 'F', 'Abhay Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(90, NULL, NULL, 'FOAA446F04', 'Prity Kumari', NULL, NULL, '37996', NULL, NULL, NULL, 'F', 'Ramdayal Sah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(91, NULL, NULL, 'FOAA447F04', 'Sagufi Khatoon', NULL, NULL, '38112', NULL, NULL, NULL, 'F', 'Kamru Jamma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(92, NULL, NULL, 'FOAA403F06', 'Vijeta Kumari', NULL, NULL, '38787', NULL, NULL, NULL, 'F', 'Kamlesh Roy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(93, NULL, NULL, 'FOAA466F04', 'Isha Rani', NULL, NULL, '38007', NULL, NULL, NULL, 'F', 'Ramesh Kumar Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(94, NULL, NULL, 'FOAA348F07', 'Shibu Kumari', NULL, NULL, '39360', NULL, NULL, NULL, 'F', 'Rudal Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(95, NULL, NULL, 'FOAA409F05', 'Sambhavi Raj', NULL, NULL, '38594', NULL, NULL, NULL, 'F', 'Basant Kumar Chaudhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(96, NULL, NULL, 'FOAA467F04', 'Payal Firdosh', NULL, NULL, '38256', NULL, NULL, NULL, 'F', 'Allauddin Ansari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(97, NULL, NULL, 'FOAA468F04', 'Rubi Kumari', NULL, NULL, '38050', NULL, NULL, NULL, 'F', 'Umesh Sah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(98, NULL, NULL, 'FOAA404F06', 'Anshu Kumari', NULL, NULL, '38770', NULL, NULL, NULL, 'F', 'Nirmal Raut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bihar', 'Football', 'Team Event', 'Under 18 Girls'),
(99, NULL, NULL, 'KAAA147F04', 'Vandini Vandini Vandini', NULL, NULL, '38224', NULL, NULL, NULL, 'F', 'Rakesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(100, NULL, NULL, 'BBAA293M04', 'Udit Ravish', NULL, NULL, '38099', NULL, NULL, NULL, 'M', 'Gurmel Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(101, NULL, NULL, 'BBAA195M05', 'Shivam Mishra', NULL, NULL, '38513', NULL, NULL, NULL, 'M', 'Sanjay Mishra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(102, NULL, NULL, 'BBAA297M04', 'Parag Trikha', NULL, NULL, '38137', NULL, NULL, NULL, 'M', 'Vivaswan Trikha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(103, NULL, NULL, 'BBAA301M04', 'Rajan Mattu', NULL, NULL, '38349', NULL, NULL, NULL, 'M', 'Madan Lal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(104, NULL, NULL, 'BBAA302M04', 'Vaibhav Saini', NULL, NULL, '38318', NULL, NULL, NULL, 'M', 'Ashok Kumar Saini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(105, NULL, NULL, 'BBAA140M06', 'Inderjeet Singh', NULL, NULL, '38820', NULL, NULL, NULL, 'M', 'Bahadar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(106, NULL, NULL, 'BBAA303M04', 'Jaydip Singh', NULL, NULL, '38202', NULL, NULL, NULL, 'M', 'Jagjit Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(107, NULL, NULL, 'KAAA334F05', 'Priyanka', NULL, NULL, '38519', NULL, NULL, NULL, 'F', 'Tara Dutt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(108, NULL, NULL, 'KAAA187F06', 'Gagandeep Kaur', NULL, NULL, '38927', NULL, NULL, NULL, 'F', 'Angrej Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(109, NULL, NULL, 'KAAA098F07', 'Tejasvi Sharma', NULL, NULL, '39152', NULL, NULL, NULL, 'F', 'Deepak Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(110, NULL, NULL, 'KAAA393F04', 'Asika Thapa', NULL, NULL, '38226', NULL, NULL, NULL, 'F', 'Bal Bahadur Thapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(111, NULL, NULL, 'KAAA396F04', 'Rekha', NULL, NULL, '38021', NULL, NULL, NULL, 'F', 'Nittu Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(112, NULL, NULL, 'KAAC218M05', 'Abhishek', NULL, NULL, '38386', NULL, NULL, NULL, 'M', 'Madhur Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(113, NULL, NULL, 'KAAC219M05', 'Gagandeep Singh', NULL, NULL, '38554', NULL, NULL, NULL, 'M', 'Gurmail Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(114, NULL, NULL, 'KAAA359F05', 'Deepika Joshi', NULL, NULL, '38529', NULL, NULL, NULL, 'F', 'Keshav Dutt Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(115, NULL, NULL, 'BBAA294M05', 'Hunardeep Singh Gill', NULL, NULL, '38426', NULL, NULL, NULL, 'M', 'Lakhwinder Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(116, NULL, NULL, 'KAAA270F06', 'Ritu', NULL, NULL, '38718', NULL, NULL, NULL, 'F', 'Rajinder Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(117, NULL, NULL, 'BBAA295M05', 'Arshneil Dhaliwal', NULL, NULL, '38438', NULL, NULL, NULL, 'M', 'Jaldeep Ips Dhaliwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(118, NULL, NULL, 'BBAA254M06', 'Gaurav Kumar Singh', NULL, NULL, '38991', NULL, NULL, NULL, 'M', 'Munendra Pal Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(119, NULL, NULL, 'KAAA100F08', 'Asha', NULL, NULL, '39462', NULL, NULL, NULL, 'F', 'Guddu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(120, NULL, NULL, 'KAAA146F07', 'Mony', NULL, NULL, '39263', NULL, NULL, NULL, 'F', 'Ram Charan Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(121, NULL, NULL, 'BBAA256M06', 'Mandeep Kumar', NULL, NULL, '38843', NULL, NULL, NULL, 'M', 'Balbir Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(122, NULL, NULL, 'KAAA147F07', 'Mahak', NULL, NULL, '39271', NULL, NULL, NULL, 'F', 'Kanhaya Lal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(123, NULL, NULL, 'BBAA391M04', 'Deepak', NULL, NULL, '38318', NULL, NULL, NULL, 'M', 'Satish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Basketball', 'Team Event', 'Under 18 Boys'),
(124, NULL, NULL, 'KAAA054F09', 'Vanshika', NULL, NULL, '39871', NULL, NULL, NULL, 'F', 'Vijay Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(125, NULL, NULL, 'KAAB567M06', 'Arpit', NULL, NULL, '38792', NULL, NULL, NULL, 'M', 'Ajay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(126, NULL, NULL, 'KAAD258M04', 'Parveen', NULL, NULL, '38165', NULL, NULL, NULL, 'M', 'Manoj Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(127, NULL, NULL, 'KAAA453M08', 'Mahesh Rana', NULL, NULL, '39525', NULL, NULL, NULL, 'M', 'Naresh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(128, NULL, NULL, 'KAAD259M04', 'Vikram Singh', NULL, NULL, '38344', NULL, NULL, NULL, 'M', 'Mam Raj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(129, NULL, NULL, 'KAAD260M04', 'Parmesh', NULL, NULL, '38317', NULL, NULL, NULL, 'M', 'Rajender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(130, NULL, NULL, 'KAAD263M04', 'Aditya Rana', NULL, NULL, '38289', NULL, NULL, NULL, 'M', 'Jatinder Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(131, NULL, NULL, 'KAAD264M04', 'Vivek', NULL, NULL, '38242', NULL, NULL, NULL, 'M', 'Purshotam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(132, NULL, NULL, 'KAAB572M06', 'Gobind', NULL, NULL, '38881', NULL, NULL, NULL, 'M', 'Satprakash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(133, NULL, NULL, 'KAAD265M04', 'Ratan Singh', NULL, NULL, '38148', NULL, NULL, NULL, 'M', 'Parveen Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(134, NULL, NULL, 'KAAC496M05', 'Badal', NULL, NULL, '38406', NULL, NULL, NULL, 'M', 'Shankar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chandigarh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(135, NULL, NULL, 'BBAA011F05', 'K Lakshmi Reethu Shri', NULL, NULL, '38411', NULL, NULL, NULL, 'F', 'Late K V Ramana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(136, NULL, NULL, 'BBAA018F05', 'Moni Adla', NULL, NULL, '38367', NULL, NULL, NULL, 'F', 'Niranjan Rao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(137, NULL, NULL, 'KHAA097M04', 'Dhansing', NULL, NULL, '38093', NULL, NULL, NULL, 'M', 'Karu Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(138, NULL, NULL, 'BBAA079F04', 'Dimple Dhobi Dhobi', NULL, NULL, '38071', NULL, NULL, NULL, 'F', 'Gopal Lal Dhobi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(139, NULL, NULL, 'KHAA273M05', 'Ankush Singh', NULL, NULL, '38674', NULL, NULL, NULL, 'M', 'Dadan Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(140, NULL, NULL, 'KHAA274M05', 'Vikas Kumar Yadav', NULL, NULL, '38400', NULL, NULL, NULL, 'M', 'Manohar Ram Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(141, NULL, NULL, 'KHAA275M05', 'Lakshdeep Banjare', NULL, NULL, '38517', NULL, NULL, NULL, 'M', 'Shrawan Banjare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(142, NULL, NULL, 'KHAA276M05', 'Himanshu Yadav', NULL, NULL, '38487', NULL, NULL, NULL, 'M', 'Munna Lal Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(143, NULL, NULL, 'KHAA177M06', 'Rameshwar', NULL, NULL, '38801', NULL, NULL, NULL, 'M', 'Dhaneshwar Thakur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(144, NULL, NULL, 'BBAA193F04', 'Riya Kunghadkar', NULL, NULL, '38161', NULL, NULL, NULL, 'F', 'Pramod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(145, NULL, NULL, 'BBAA196F04', 'Minu Sinha', NULL, NULL, '38185', NULL, NULL, NULL, 'F', 'Prabhu Lal Sinha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(146, NULL, NULL, 'BBAA197F04', 'Chanchal Sharma Sharma', NULL, NULL, '38280', NULL, NULL, NULL, 'F', 'Rajesh Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(147, NULL, NULL, 'BBAA203F04', 'Dkirti D Kirti', NULL, NULL, '38009', NULL, NULL, NULL, 'F', 'Ddurbabu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(148, NULL, NULL, 'BBAA195F05', 'Aanchal Yadav', NULL, NULL, '38386', NULL, NULL, NULL, 'F', 'Kanhaiya Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(149, NULL, NULL, 'KHAA215M06', 'Sejal Kumar', NULL, NULL, '38749', NULL, NULL, NULL, 'M', 'Komal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(150, NULL, NULL, 'KHAA161M07', 'Devesh Kumar', NULL, NULL, '39380', NULL, NULL, NULL, 'M', 'Late Purushottam Lal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(151, NULL, NULL, 'KHAA318M04', 'Pramod Kumar', NULL, NULL, '38332', NULL, NULL, NULL, 'M', 'Dhaneshwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(152, NULL, NULL, 'KHAA312M05', 'Lakhan Lal', NULL, NULL, '38467', NULL, NULL, NULL, 'M', 'Ram Charan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(153, NULL, NULL, 'KHAA218M06', 'Devesh Kumar', NULL, NULL, '38832', NULL, NULL, NULL, 'M', 'Yashvant Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(154, NULL, NULL, 'KHAA320M04', 'Tarun Kumar', NULL, NULL, '38049', NULL, NULL, NULL, 'M', 'Kush Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(155, NULL, NULL, 'KHAA322M04', 'Manjit Kumar Yadav', NULL, NULL, '37998', NULL, NULL, NULL, 'M', 'Rajesh Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(156, NULL, NULL, 'KHAA219M06', 'Vishal Kumar Salam', NULL, NULL, '38943', NULL, NULL, NULL, 'M', 'Sukman Salam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(157, NULL, NULL, 'KHAA220M06', 'Omkar Prasad', NULL, NULL, '38782', NULL, NULL, NULL, 'M', 'Janak Lal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(158, NULL, NULL, 'BBAA231F04', 'Sakshi Bhagat', NULL, NULL, '38223', NULL, NULL, NULL, 'F', 'Shambhu Kumar Bhagat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(159, NULL, NULL, 'BBAA239F04', 'Vidya', NULL, NULL, '38159', NULL, NULL, NULL, 'F', 'Shrinivaslu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(160, NULL, NULL, 'BBAA240F04', 'Reetika Nishad', NULL, NULL, '38099', NULL, NULL, NULL, 'F', 'Ram Gulab Nishad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(161, NULL, NULL, 'BBAA241F04', 'Ruksar Ali', NULL, NULL, '38039', NULL, NULL, NULL, 'F', 'Akhtar Ali', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chhattisgarh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(162, NULL, NULL, 'FOAA209F08', 'a grutiben Rajeshbhai Bhurku d', NULL, NULL, '39572', NULL, NULL, NULL, 'F', 'Rajeshbhai Bhurkud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(163, NULL, NULL, 'FOAA379F06', 'Ritika Singh', NULL, NULL, '38737', NULL, NULL, NULL, 'F', 'Santosh Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(164, NULL, NULL, 'FOAA211F08', 'Prathvi Dharmeshbhai Patel', NULL, NULL, '39774', NULL, NULL, NULL, 'F', 'Dharmeshbhai Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(165, NULL, NULL, 'FOAA380F06', 'Roshni Birendra Yadav', NULL, NULL, '38971', NULL, NULL, NULL, 'F', 'Birendra Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(166, NULL, NULL, 'FOAA381F06', 'Vanshika Yadav', NULL, NULL, '38936', NULL, NULL, NULL, 'F', 'Pawan Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(167, NULL, NULL, 'FOAA301F07', 'Manya Koshe', NULL, NULL, '39444', NULL, NULL, NULL, 'F', 'Kishor Kumar Koshe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(168, NULL, NULL, 'FOAA212F08', 'Reet Jignesh Patel', NULL, NULL, '39751', NULL, NULL, NULL, 'F', 'Jignesh Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(169, NULL, NULL, 'FOAA160F09', 'Harshika Bharat Parmar', NULL, NULL, '39826', NULL, NULL, NULL, 'F', 'Bharat Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(170, NULL, NULL, 'FOAA302F07', 'Mansi Yogesh Sarangkar', NULL, NULL, '39084', NULL, NULL, NULL, 'F', 'Yogesh Sarangkar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(171, NULL, NULL, 'FOAA213F08', 'Vrishti Solanki', NULL, NULL, '39467', NULL, NULL, NULL, 'F', 'Bhavin Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(172, NULL, NULL, 'FOAA214F08', 'Rupaben Ajitkumar Mahato', NULL, NULL, '39806', NULL, NULL, NULL, 'F', 'Ajitkumar Mahato', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(173, NULL, NULL, 'FOAA433F04', 'Khushi Mori', NULL, NULL, '38255', NULL, NULL, NULL, 'F', 'Umeshbhai Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(174, NULL, NULL, 'FOAA215F08', 'Palak Mahendra Dubey', NULL, NULL, '39645', NULL, NULL, NULL, 'F', 'Mahendra Dubey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(175, NULL, NULL, 'FOAA303F07', 'Aakanksha Sharma', NULL, NULL, '39246', NULL, NULL, NULL, 'F', 'Sunil Kumar Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(176, NULL, NULL, 'FOAA384F05', 'Suvarna Shankar Kurkutiya', NULL, NULL, '38574', NULL, NULL, NULL, 'F', 'Shankar Kurkutiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(177, NULL, NULL, 'FOAA304F07', 'Sanjana Parsu Tokre', NULL, NULL, '39439', NULL, NULL, NULL, 'F', 'Parsu Tokre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(178, NULL, NULL, 'FOAA434F04', 'R itikaben Vijaybhai Kharpade', NULL, NULL, '38319', NULL, NULL, NULL, 'F', 'Vijaybhai Kharpade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(179, NULL, NULL, 'FOAA435F04', 'Rikvinaben Laxibhai Vangad', NULL, NULL, '38051', NULL, NULL, NULL, 'F', 'Laxibhai Vangad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(180, NULL, NULL, 'FOAA216F08', 'Swetna Laxi Vangad', NULL, NULL, '39513', NULL, NULL, NULL, 'F', 'Laxi Vangad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(181, NULL, NULL, 'FOAA163F09', 'Pratikxa Nanubhai Dodiya', NULL, NULL, '39968', NULL, NULL, NULL, 'F', 'Nanubhai Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dadra and Nagar Haveli and\nDaman and Diu', 'Football', 'Team Event', 'Under 18 Girls'),
(182, NULL, NULL, 'KHAA005M04', 'Madan', NULL, NULL, '38034', NULL, NULL, NULL, 'M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(183, NULL, NULL, 'KHAA037M04', 'Ritik', NULL, NULL, '38278', NULL, NULL, NULL, 'M', 'Ravi Chaudhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(184, NULL, NULL, 'KHAA039M04', 'Ajay Kumar', NULL, NULL, '38279', NULL, NULL, NULL, 'M', 'Ram Prasad Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(185, NULL, NULL, 'KAAA639M04', 'Jatin Khatri', NULL, NULL, '38275', NULL, NULL, NULL, 'M', 'Vijay Pal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(186, NULL, NULL, 'KHAA073M05', 'Mohammad Mirajul', NULL, NULL, '38669', NULL, NULL, NULL, 'M', 'Mohammad Mustafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(187, NULL, NULL, 'KAAB286M05', 'Nitin Singh', NULL, NULL, '38379', NULL, NULL, NULL, 'M', 'Mahanand Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(188, NULL, NULL, 'KHAA260M05', 'Aman', NULL, NULL, '38528', NULL, NULL, NULL, 'M', 'Amarpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(189, NULL, NULL, 'KHAA169M06', 'Rohan Rawat', NULL, NULL, '38835', NULL, NULL, NULL, 'M', 'Mr Satpal Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(190, NULL, NULL, 'KHAA272M04', 'Mehul', NULL, NULL, '38226', NULL, NULL, NULL, 'M', 'Vijay Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(191, NULL, NULL, 'KHAA261M05', 'Matlum', NULL, NULL, '38421', NULL, NULL, NULL, 'M', 'Noor Mohammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(192, NULL, NULL, 'KHAA264M05', 'Sunny', NULL, NULL, '38427', NULL, NULL, NULL, 'M', 'Vijay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(193, NULL, NULL, 'KHAA274M04', 'Prince Kumar', NULL, NULL, '38245', NULL, NULL, NULL, 'M', 'Paras Nath', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(194, NULL, NULL, 'KHAA266M05', 'Satyam', NULL, NULL, '38487', NULL, NULL, NULL, 'M', 'Jagdamba Prasad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(195, NULL, NULL, 'KHAA275M04', 'Istiyak', NULL, NULL, '38319', NULL, NULL, NULL, 'M', 'Md Zakir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(196, NULL, NULL, 'VOAA370M05', 'Yash Drall', NULL, NULL, '38443', NULL, NULL, NULL, 'M', 'Yogender Drall', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(197, NULL, NULL, 'VOAA371M05', 'Bhavya Kundu', NULL, NULL, '38637', NULL, NULL, NULL, 'M', 'Amit Kundu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(198, NULL, NULL, 'VOAA372M05', 'Akshat Bisht', NULL, NULL, '38617', NULL, NULL, NULL, 'M', 'Sanjay Bisht', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(199, NULL, NULL, 'VOAA373M05', 'Tanuj Beniwal', NULL, NULL, '38547', NULL, NULL, NULL, 'M', 'Rajbir Beniwal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(200, NULL, NULL, 'KAAA828M07', 'Prince', NULL, NULL, '39102', NULL, NULL, NULL, 'M', 'Manjeet Dagar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(201, NULL, NULL, 'KHAA232M06', 'Karan S S Dabas', NULL, NULL, '39012', NULL, NULL, NULL, 'M', 'Pradeep Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(202, NULL, NULL, 'KHAA326M05', 'Social Kumar Yadav', NULL, NULL, '38521', NULL, NULL, NULL, 'M', 'Raj Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(203, NULL, NULL, 'KHAA233M06', 'Dipendra', NULL, NULL, '39000', NULL, NULL, NULL, 'M', 'Mohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(204, NULL, NULL, 'KAAC494M05', 'Ishant Malik', NULL, NULL, '38563', NULL, NULL, NULL, 'M', 'Ashok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(205, NULL, NULL, 'KAAD266M04', 'Ujjwal', NULL, NULL, '38174', NULL, NULL, NULL, 'M', 'Sukhbir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(206, NULL, NULL, 'KAAC498M05', 'Rahul Khatri', NULL, NULL, '38486', NULL, NULL, NULL, 'M', 'Subhash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(207, NULL, NULL, 'KAAB574M06', 'Vishal Kumar', NULL, NULL, '38913', NULL, NULL, NULL, 'M', 'Nakli Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(208, NULL, NULL, 'KAAB575M06', 'Sahil Sheokand', NULL, NULL, '38886', NULL, NULL, NULL, 'M', 'Mahavir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(209, NULL, NULL, 'KAAC499M05', 'Karamveer Mann', NULL, NULL, '38504', NULL, NULL, NULL, 'M', 'Ravinder Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(210, NULL, NULL, 'KAAB577M06', 'Himanshu', NULL, NULL, '39007', NULL, NULL, NULL, 'M', 'Naresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(211, NULL, NULL, 'KAAB578M06', 'Sunny Bhati', NULL, NULL, '39080', NULL, NULL, NULL, 'M', 'Ravinder Bhati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(212, NULL, NULL, 'KAAA454M08', 'Abhi Dabas', NULL, NULL, '39790', NULL, NULL, NULL, 'M', 'Sudesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(213, NULL, NULL, 'VOAA358M06', 'Devvrat Panwar', NULL, NULL, '38797', NULL, NULL, NULL, 'M', 'Lokendra Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(214, NULL, NULL, 'VOAA629M04', 'Khem Singh', NULL, NULL, '38008', NULL, NULL, NULL, 'M', 'Rajender Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(215, NULL, NULL, 'VOAA545M05', 'Madhur Tyagi', NULL, NULL, '38631', NULL, NULL, NULL, 'M', 'Mukesh Tyagi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(216, NULL, NULL, 'VOAA360M06', 'Ritik', NULL, NULL, '38864', NULL, NULL, NULL, 'M', 'Naresh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys');
INSERT INTO `candidates` (`id`, `created_at`, `updated_at`, `uid`, `first_name`, `last_name`, `accreditation_name`, `dob`, `address`, `email`, `mobile`, `gender`, `father_name`, `mother_name`, `spouse_name`, `tshirtsize`, `organisation`, `designation`, `org_address`, `org_email_id`, `org_phone`, `terms`, `player_image`, `state`, `sport`, `event_name`, `category_name`) VALUES
(217, NULL, NULL, 'VOAA546M05', 'Aditya Singh', NULL, NULL, '38417', NULL, NULL, NULL, 'M', 'Brajveer Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(218, NULL, NULL, 'VOAA361M06', 'Lavya Drall', NULL, NULL, '38762', NULL, NULL, NULL, 'M', 'Vijay Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(219, NULL, NULL, 'VOAA630M04', 'Kunal Singh Yadav', NULL, NULL, '38348', NULL, NULL, NULL, 'M', 'Jitender Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(220, NULL, NULL, 'VOAA547M05', 'Naveen Chandra', NULL, NULL, '38571', NULL, NULL, NULL, 'M', 'Rebadhar Putpuriya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(221, NULL, NULL, 'VOAA633M04', 'Mohd Sameer', NULL, NULL, '38221', NULL, NULL, NULL, 'M', 'Furkan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(222, NULL, NULL, 'VOAA364M06', 'Ritesh', NULL, NULL, '38847', NULL, NULL, NULL, 'M', 'Subhash Chand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Delhi', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(223, NULL, NULL, 'VOAA080M05', 'Kartik Vinod Kumar Sharma', NULL, NULL, '38430', NULL, NULL, NULL, 'M', 'Vinod Kumar Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(224, NULL, NULL, 'VOAA153M04', 'Y ougank Karan Singh Baliya n', NULL, NULL, '38302', NULL, NULL, NULL, 'M', 'Karan Singh Baliyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(225, NULL, NULL, 'VOAA158M04', 'Shailendra Rambachan Singh', NULL, NULL, '38032', NULL, NULL, NULL, 'M', 'Rambachan Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(226, NULL, NULL, 'VOAA238M04', 'Aman Kumar Singh', NULL, NULL, '38027', NULL, NULL, NULL, 'M', 'Nandjee Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(227, NULL, NULL, 'VOAA146F05', 'akansha Balwantsingh Kanw', NULL, NULL, '38404', NULL, NULL, NULL, 'F', 'Balwantsingh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(228, NULL, NULL, 'VOAA147F05', 'Deepika Awadhesh Yadav', NULL, NULL, '38592', NULL, NULL, NULL, 'F', 'Awadhesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(229, NULL, NULL, 'VOAA213M06', 'Patel Dhruvil', NULL, NULL, '38767', NULL, NULL, NULL, 'M', 'Nayan Bhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(230, NULL, NULL, 'VOAA491M04', 'Malek Jehan', NULL, NULL, '38320', NULL, NULL, NULL, 'M', 'Najeermahmmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(231, NULL, NULL, 'VOAA213F04', 'Krinal Rasikbhai Lakhani', NULL, NULL, '38266', NULL, NULL, NULL, 'F', 'Rasikbhai Lakhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(232, NULL, NULL, 'VOAA367M05', 'M anojkumar Choudhary Chou', NULL, NULL, '38593', NULL, NULL, NULL, 'M', 'Manojkumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(233, NULL, NULL, 'VOAA214F04', 'Isha Inderkumar Jain', NULL, NULL, '38073', NULL, NULL, NULL, 'F', 'Inderkumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(234, NULL, NULL, 'VOAA493M04', 'Chaudhari Prit', NULL, NULL, '38082', NULL, NULL, NULL, 'M', 'Satishbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(235, NULL, NULL, 'VOAA526M04', 'Viram Naran Vakatar', NULL, NULL, '37996', NULL, NULL, NULL, 'M', 'Naran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(236, NULL, NULL, 'VOAA513M05', 'Anurag', NULL, NULL, '38362', NULL, NULL, NULL, 'M', 'Sudhirkumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(237, NULL, NULL, 'VOAA514M05', 'Harsh Saroha', NULL, NULL, '38715', NULL, NULL, NULL, 'M', 'Pradeep Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(238, NULL, NULL, 'VOAA515M05', 'Saurabh Singh Negi', NULL, NULL, '38600', NULL, NULL, NULL, 'M', 'Khajan Singh Negi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(239, NULL, NULL, 'VOAA603M04', 'Piyush Rao', NULL, NULL, '38195', NULL, NULL, NULL, 'M', 'Mahatab Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(240, NULL, NULL, 'VOAA205F05', 'Priyankaben', NULL, NULL, '38546', NULL, NULL, NULL, 'F', 'Himatsinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(241, NULL, NULL, 'VOAA272F04', 'Singh Sindhu', NULL, NULL, '38340', NULL, NULL, NULL, 'F', 'Jayprakash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(242, NULL, NULL, 'VOAA095F07', 'Rutika', NULL, NULL, '39302', NULL, NULL, NULL, 'F', 'Balubhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(243, NULL, NULL, 'VOAA096F07', 'Rathva Kapilaben', NULL, NULL, '39117', NULL, NULL, NULL, 'F', 'Rameshbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(244, NULL, NULL, 'VOAA146F06', 'Parmar Divyaben', NULL, NULL, '39022', NULL, NULL, NULL, 'F', 'Dansinhbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(245, NULL, NULL, 'VOAA206F05', 'Sweetykumari', NULL, NULL, '38428', NULL, NULL, NULL, 'F', 'Dhananjay Sinha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(246, NULL, NULL, 'VOAA147F06', 'Jankiben', NULL, NULL, '38966', NULL, NULL, NULL, 'F', 'Hareshbhai Chaudhari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(247, NULL, NULL, 'VOAA148F06', 'Bariya Nehaben Kantibhai', NULL, NULL, '38987', NULL, NULL, NULL, 'F', 'Kantibhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(248, NULL, NULL, 'VOAA149F06', 'u dasama Hetalben Devashib h', NULL, NULL, '38848', NULL, NULL, NULL, 'F', 'Devashibhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(249, NULL, NULL, 'VOAA097F07', 'Priyanshi', NULL, NULL, '39202', NULL, NULL, NULL, 'F', 'Kishanbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(250, NULL, NULL, 'VOAA348M06', 'A ryan Devendrasingh Baliyan', NULL, NULL, '38992', NULL, NULL, NULL, 'M', 'Devendrasingh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gujarat', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(251, NULL, NULL, 'VOAA012F04', 'Aditi', NULL, NULL, '38147', NULL, NULL, NULL, 'F', 'Dinesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(252, NULL, NULL, 'VOAA037F04', 'Kajal Devi', NULL, NULL, '38257', NULL, NULL, NULL, 'F', 'Pawan Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(253, NULL, NULL, 'VOAA038F04', 'Sakshi', NULL, NULL, '37988', NULL, NULL, NULL, 'F', 'Mahinder Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(254, NULL, NULL, 'KAAA054F06', 'Palak', NULL, NULL, '38935', NULL, NULL, NULL, 'F', 'Pawan Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(255, NULL, NULL, 'KAAA100F05', 'Mannu', NULL, NULL, '38378', NULL, NULL, NULL, 'F', 'Subhash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(256, NULL, NULL, 'VOAA144M04', 'Aman', NULL, NULL, '38257', NULL, NULL, NULL, 'M', 'Babu Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(257, NULL, NULL, 'VOAA084F04', 'Sadana Devi', NULL, NULL, '37995', NULL, NULL, NULL, 'F', 'Shishpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(258, NULL, NULL, 'FOAA100F04', 'Ritu', NULL, NULL, '38252', NULL, NULL, NULL, 'F', 'Jagbir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(259, NULL, NULL, 'VOAA150M04', 'Ashish', NULL, NULL, '38021', NULL, NULL, NULL, 'M', 'Rajbir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(260, NULL, NULL, 'VOAA085F04', 'Parul', NULL, NULL, '38058', NULL, NULL, NULL, 'F', 'Mitterpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(261, NULL, NULL, 'VOAA087F04', 'Riya Saini', NULL, NULL, '38262', NULL, NULL, NULL, 'F', 'Satish Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(262, NULL, NULL, 'FOAA104F04', 'Anshika', NULL, NULL, '38039', NULL, NULL, NULL, 'F', 'Rajkapoor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(263, NULL, NULL, 'KAAB742M04', 'Nitin', NULL, NULL, '38291', NULL, NULL, NULL, 'M', 'Rajesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(264, NULL, NULL, 'KAAB743M04', 'Vikash', NULL, NULL, '38331', NULL, NULL, NULL, 'M', 'Ishwar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(265, NULL, NULL, 'VOAA093M05', 'Shekhar Turan', NULL, NULL, '38666', NULL, NULL, NULL, 'M', 'Ramphal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(266, NULL, NULL, 'VOAA176M04', 'Aman Kumar', NULL, NULL, '37996', NULL, NULL, NULL, 'M', 'Nathu Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(267, NULL, NULL, 'VOAA097M05', 'Digvijay Singh', NULL, NULL, '38373', NULL, NULL, NULL, 'M', 'Sarbeer Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(268, NULL, NULL, 'KAAA860M06', 'Ankit', NULL, NULL, '39022', NULL, NULL, NULL, 'M', 'Bijay Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(269, NULL, NULL, 'KAAA243F04', 'Partigya', NULL, NULL, '38215', NULL, NULL, NULL, 'F', 'Braham Parakash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(270, NULL, NULL, 'FOAA252F05', 'Naketa', NULL, NULL, '38604', NULL, NULL, NULL, 'F', 'Aatma Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(271, NULL, NULL, 'VOAA388M05', 'Sahil', NULL, NULL, '38385', NULL, NULL, NULL, 'M', 'Karmveer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(272, NULL, NULL, 'VOAA521M04', 'Ajay Kumar', NULL, NULL, '38337', NULL, NULL, NULL, 'M', 'Ramesh Chand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(273, NULL, NULL, 'VOAA389M05', 'Manish Kumar', NULL, NULL, '38619', NULL, NULL, NULL, 'M', 'Ramesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(274, NULL, NULL, 'VOAA235F04', 'Chintamani', NULL, NULL, '38248', NULL, NULL, NULL, 'F', 'Randhir Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(275, NULL, NULL, 'VOAA162F05', 'Tanu Rathi', NULL, NULL, '38533', NULL, NULL, NULL, 'F', 'Yudhveer Singh Rathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(276, NULL, NULL, 'FOAA376F04', 'Rinku Devi', NULL, NULL, '37987', NULL, NULL, NULL, 'F', 'Shishram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(277, NULL, NULL, 'KAAA419F04', 'Dipti Siwach', NULL, NULL, '38243', NULL, NULL, NULL, 'F', 'Dilaver Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(278, NULL, NULL, 'KAAB362M06', 'Himanshu', NULL, NULL, '38932', NULL, NULL, NULL, 'M', 'Sumer Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(279, NULL, NULL, 'FOAA399F04', 'Poonam', NULL, NULL, '38282', NULL, NULL, NULL, 'F', 'Nar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(280, NULL, NULL, 'KAAC313M05', 'Hitesh', NULL, NULL, '38431', NULL, NULL, NULL, 'M', 'Sh Ravinder Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(281, NULL, NULL, 'FOAA338F05', 'Shailja', NULL, NULL, '38593', NULL, NULL, NULL, 'F', 'Rajender Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(282, NULL, NULL, 'FOAA319F06', 'Varshika', NULL, NULL, '38982', NULL, NULL, NULL, 'F', 'Surender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(283, NULL, NULL, 'FOAA320F06', 'Neha', NULL, NULL, '38856', NULL, NULL, NULL, 'F', 'Dharmbir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(284, NULL, NULL, 'KAAA228F06', 'Ravina', NULL, NULL, '38724', NULL, NULL, NULL, 'F', 'Surender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(285, NULL, NULL, 'KAAA405F05', 'Pooja', NULL, NULL, '38398', NULL, NULL, NULL, 'F', 'Krishan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(286, NULL, NULL, 'FOAA437F04', 'Pinki', NULL, NULL, '38104', NULL, NULL, NULL, 'F', 'Ramesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(287, NULL, NULL, 'FOAA439F04', 'Anju', NULL, NULL, '37993', NULL, NULL, NULL, 'F', 'Mahabir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(288, NULL, NULL, 'FOAA387F06', 'Sapna', NULL, NULL, '38943', NULL, NULL, NULL, 'F', 'Satnarayan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(289, NULL, NULL, 'FOAA388F06', 'Saniya', NULL, NULL, '38801', NULL, NULL, NULL, 'F', 'Kuldeep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(290, NULL, NULL, 'FOAA311F07', 'Pooja', NULL, NULL, '39120', NULL, NULL, NULL, 'F', 'Anil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(291, NULL, NULL, 'VOAA286F04', 'Mahima', NULL, NULL, '38147', NULL, NULL, NULL, 'F', 'Rajan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(292, NULL, NULL, 'FOAA005F22', 'Kajal', NULL, NULL, '44573', NULL, NULL, NULL, 'F', 'Rambhool', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(293, NULL, NULL, 'VOAA168F06', 'Minakshi', NULL, NULL, '38761', NULL, NULL, NULL, 'F', 'Pawan Puri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(294, NULL, NULL, 'FOAA227F08', 'Dinakshi', NULL, NULL, '39460', NULL, NULL, NULL, 'F', 'Pawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(295, NULL, NULL, 'VOAA231F05', 'Mansi', NULL, NULL, '38407', NULL, NULL, NULL, 'F', 'Satender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(296, NULL, NULL, 'VOAA539M05', 'Suraj Chaudhary', NULL, NULL, '38676', NULL, NULL, NULL, 'M', 'Satyavir Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(297, NULL, NULL, 'VOAA357M06', 'Gourav Singh', NULL, NULL, '38750', NULL, NULL, NULL, 'M', 'Subhash Chand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(298, NULL, NULL, 'FOAA444F04', 'Kiran', NULL, NULL, '38265', NULL, NULL, NULL, 'F', 'Harpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(299, NULL, NULL, 'FOAA391F06', 'Tamanna', NULL, NULL, '38935', NULL, NULL, NULL, 'F', 'Sukhjeet Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(300, NULL, NULL, 'VOAA291F04', 'Aashu Devi', NULL, NULL, '38197', NULL, NULL, NULL, 'F', 'Subhash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(301, NULL, NULL, 'FOAA445F04', 'Kavita', NULL, NULL, '38280', NULL, NULL, NULL, 'F', 'Neki Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Football', 'Team Event', 'Under 18 Girls'),
(302, NULL, NULL, 'VOAA541M05', 'Ankush', NULL, NULL, '38668', NULL, NULL, NULL, 'M', 'Sishpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(303, NULL, NULL, 'VOAA543M05', 'Abhishek', NULL, NULL, '38636', NULL, NULL, NULL, 'M', 'Krishan Chand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(304, NULL, NULL, 'KAAA469F04', 'Poonam', NULL, NULL, '38166', NULL, NULL, NULL, 'F', 'Satyawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(305, NULL, NULL, 'KAAA278F06', 'Annu', NULL, NULL, '38804', NULL, NULL, NULL, 'F', 'Surender Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(306, NULL, NULL, 'KAAB581M06', 'Anurag', NULL, NULL, '38958', NULL, NULL, NULL, 'M', 'Jai Kanwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(307, NULL, NULL, 'KAAC504M05', 'Sagar', NULL, NULL, '38594', NULL, NULL, NULL, 'M', 'Naresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(308, NULL, NULL, 'KAAD272M04', 'Harsh', NULL, NULL, '38237', NULL, NULL, NULL, 'M', 'Dharmender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(309, NULL, NULL, 'KAAC509M05', 'Rohit Kumar', NULL, NULL, '38632', NULL, NULL, NULL, 'M', 'Surender Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(310, NULL, NULL, 'KAAA475F04', 'Komal', NULL, NULL, '38278', NULL, NULL, NULL, 'F', 'Sushil Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(311, NULL, NULL, 'KAAC511M05', 'Tarun', NULL, NULL, '38579', NULL, NULL, NULL, 'M', 'Anil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(312, NULL, NULL, 'KAAA478F04', 'Anshu Devi', NULL, NULL, '38150', NULL, NULL, NULL, 'F', 'Satpal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(313, NULL, NULL, 'KAAD280M04', 'Surender Gadhwal', NULL, NULL, '38351', NULL, NULL, NULL, 'M', 'Dharamvir Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(314, NULL, NULL, 'KAAA479F04', 'Ram Bhateri', NULL, NULL, '38059', NULL, NULL, NULL, 'F', 'Rajesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(315, NULL, NULL, 'KAAA482F04', 'Sweety', NULL, NULL, '38297', NULL, NULL, NULL, 'F', 'Jaibir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Haryana', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(316, NULL, NULL, 'KAAA090F05', 'Meena Thakur', NULL, NULL, '38393', NULL, NULL, NULL, 'F', 'Khiramani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(317, NULL, NULL, 'VOAA376M05', 'Arjun Sharma', NULL, NULL, '39239', NULL, NULL, NULL, 'M', 'Ravinder Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(318, NULL, NULL, 'VOAA510M04', 'Tavish Sharma', NULL, NULL, '38349', NULL, NULL, NULL, 'M', 'Satish Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(319, NULL, NULL, 'VOAA161M07', 'Arjun Sharma', NULL, NULL, '39239', NULL, NULL, NULL, 'M', 'Ravinder Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(320, NULL, NULL, 'VOAA618M04', 'Nitin', NULL, NULL, '38333', NULL, NULL, NULL, 'M', 'Kundan Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(321, NULL, NULL, 'VOAA529M05', 'Shivanshu Chauhan', NULL, NULL, '38418', NULL, NULL, NULL, 'M', 'Mohinder Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(322, NULL, NULL, 'VOAA530M05', 'Aditya', NULL, NULL, '38407', NULL, NULL, NULL, 'M', 'Guru Nath', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(323, NULL, NULL, 'VOAA531M05', 'Abhay Chauhan', NULL, NULL, '38534', NULL, NULL, NULL, 'M', 'Pritam Chand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(324, NULL, NULL, 'VOAA619M04', 'Himanshu', NULL, NULL, '38322', NULL, NULL, NULL, 'M', 'Hans Raj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(325, NULL, NULL, 'VOAA533M05', 'Naveen Tanta', NULL, NULL, '38701', NULL, NULL, NULL, 'M', 'Roop Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(326, NULL, NULL, 'VOAA355M06', 'Paras Pundir', NULL, NULL, '38765', NULL, NULL, NULL, 'M', 'Randeep Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(327, NULL, NULL, 'VOAA356M06', 'Suryansh', NULL, NULL, '38749', NULL, NULL, NULL, 'M', 'Balvir Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(328, NULL, NULL, 'VOAA623M04', 'Sahil', NULL, NULL, '38012', NULL, NULL, NULL, 'M', 'Guru Nath', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(329, NULL, NULL, 'VOAA624M04', 'Mayank Sunreta', NULL, NULL, '38339', NULL, NULL, NULL, 'M', 'Vinod Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(330, NULL, NULL, 'VOAA627M04', 'Rajender', NULL, NULL, '38082', NULL, NULL, NULL, 'M', 'Lal Das', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Volleyball', 'Team Event', 'Under 18 Boys'),
(331, NULL, NULL, 'KAAA437F05', 'Tanvi Lukta', NULL, NULL, '38714', NULL, NULL, NULL, 'F', 'Roshan Lal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(332, NULL, NULL, 'KAAA273F06', 'Ridham Ranote', NULL, NULL, '38794', NULL, NULL, NULL, 'F', 'Ashok Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(333, NULL, NULL, 'KAAA274F06', 'Anshu Chandel', NULL, NULL, '38855', NULL, NULL, NULL, 'F', 'Udham Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(334, NULL, NULL, 'KAAA275F06', 'Shagun Nayak', NULL, NULL, '38730', NULL, NULL, NULL, 'F', 'Mahinder Pal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(335, NULL, NULL, 'KAAA150F07', 'Jaspreet Kaur', NULL, NULL, '39223', NULL, NULL, NULL, 'F', 'Jaswant Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(336, NULL, NULL, 'KAAA438F05', 'Loona', NULL, NULL, '38472', NULL, NULL, NULL, 'F', 'Ramesh Chand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(337, NULL, NULL, 'KAAA277F06', 'Shanvi', NULL, NULL, '38873', NULL, NULL, NULL, 'F', 'Joginder Pal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(338, NULL, NULL, 'KAAA470F04', 'Ankita Chandel', NULL, NULL, '37989', NULL, NULL, NULL, 'F', 'Suresh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(339, NULL, NULL, 'KAAA280F06', 'Shruti Manta', NULL, NULL, '38859', NULL, NULL, NULL, 'F', 'Ranveer Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(340, NULL, NULL, 'KAAA472F04', 'Nikita Chauhan', NULL, NULL, '38292', NULL, NULL, NULL, 'F', 'Jagat Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(341, NULL, NULL, 'KAAA282F06', 'Shivani Thakur', NULL, NULL, '38718', NULL, NULL, NULL, 'F', 'Prem Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Himachal Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Girls'),
(342, NULL, NULL, 'BBAA025F04', 'Mekhala Gowda', NULL, NULL, '38352', NULL, NULL, NULL, 'F', 'Dr.Anand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(343, NULL, NULL, 'BBAA039M05', 'Avinash Ajith Nayak', NULL, NULL, '38528', NULL, NULL, NULL, 'M', 'Ajith Nayak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(344, NULL, NULL, 'VOAA206F04', 'Shreya S Naidu', NULL, NULL, '38093', NULL, NULL, NULL, 'F', 'E Srinivas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(345, NULL, NULL, 'KHAA099F08', 'Manjula', NULL, NULL, '39595', NULL, NULL, NULL, 'F', 'Somashekhara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(346, NULL, NULL, 'KHAA192F05', 'Vidya L', NULL, NULL, '38409', NULL, NULL, NULL, 'F', 'Lokesha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(347, NULL, NULL, 'KHAA193F05', 'Keerthana S', NULL, NULL, '38549', NULL, NULL, NULL, 'F', 'Siddalingaswamy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(348, NULL, NULL, 'KHAA194F05', 'Varalakshmi K P', NULL, NULL, '38575', NULL, NULL, NULL, 'F', 'Prabhudev', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(349, NULL, NULL, 'KHAA137F07', 'Manya A', NULL, NULL, '39280', NULL, NULL, NULL, 'F', 'Ashok Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(350, NULL, NULL, 'KHAA138F07', 'Rakshitha C', NULL, NULL, '39228', NULL, NULL, NULL, 'F', 'Channapppa D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(351, NULL, NULL, 'KHAA196F05', 'Nisarga K M', NULL, NULL, '38689', NULL, NULL, NULL, 'F', 'Mahadevaswamy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(352, NULL, NULL, 'FOAB859M04', 'Amogh Ajay Gachhi', NULL, NULL, '38132', NULL, NULL, NULL, 'M', 'Ajay Gachhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(353, NULL, NULL, 'FOAB340M04', 'Sarath Rajkumar', NULL, NULL, '38229', NULL, NULL, NULL, 'M', 'R Rajkumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(354, NULL, NULL, 'BBAA158F05', 'Adithi Nagarajan', NULL, NULL, '38504', NULL, NULL, NULL, 'F', 'Nagarajan As', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(355, NULL, NULL, 'BBAA082F06', 'Adhya Nagalinga', NULL, NULL, '39047', NULL, NULL, NULL, 'F', 'Nagalinga Swamy N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(356, NULL, NULL, 'BBAA180F04', 'Hannah Boby Jacob', NULL, NULL, '38114', NULL, NULL, NULL, 'F', 'Boby Jacob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(357, NULL, NULL, 'BBAA160F05', 'Aishwarya Ramesh Sandrima n', NULL, NULL, '38509', NULL, NULL, NULL, 'F', 'amesh Bhimanna Sandrima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(358, NULL, NULL, 'BBAA182F05', 'Preeti Mallappa Kadadalli', NULL, NULL, '38470', NULL, NULL, NULL, 'F', 'Mallappa Kadadalli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(359, NULL, NULL, 'BBAA107F06', 'Yashaswini M K', NULL, NULL, '38723', NULL, NULL, NULL, 'F', 'Krishna Mh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(360, NULL, NULL, 'FOAB425M04', 'Vishal R', NULL, NULL, '38227', NULL, NULL, NULL, 'M', 'Ravi M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(361, NULL, NULL, 'FOAB695M04', 'Yohann Victor Britto', NULL, NULL, '38244', NULL, NULL, NULL, 'M', 'Victor Britto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(362, NULL, NULL, 'BBAA139F06', 'Aadhya Gowda R', NULL, NULL, '39055', NULL, NULL, NULL, 'F', 'D L Ravishankar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(363, NULL, NULL, 'BBAA218F05', 'Priyanka B', NULL, NULL, '38573', NULL, NULL, NULL, 'F', 'Bhaskar N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(364, NULL, NULL, 'KHAA236F05', 'Akshatha K', NULL, NULL, '38622', NULL, NULL, NULL, 'F', 'Kumara H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(365, NULL, NULL, 'KHAA141F08', 'Keerthana P', NULL, NULL, '39504', NULL, NULL, NULL, 'F', 'Prakash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(366, NULL, NULL, 'KHAA197F06', 'Pallavi', NULL, NULL, '38950', NULL, NULL, NULL, 'F', 'Mantesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(367, NULL, NULL, 'KHAA094F09', 'Padmavathi', NULL, NULL, '39903', NULL, NULL, NULL, 'F', 'Papanna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(368, NULL, NULL, 'KHAA238F05', 'Varalakshmi', NULL, NULL, '38590', NULL, NULL, NULL, 'F', 'Chikkarangappa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(369, NULL, NULL, 'KHAA239F05', 'Namratha', NULL, NULL, '38582', NULL, NULL, NULL, 'F', 'Rajashetty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(370, NULL, NULL, 'KHAA095F09', 'Sushmitha', NULL, NULL, '40037', NULL, NULL, NULL, 'F', 'Basavaraja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(371, NULL, NULL, 'KHAA240F05', 'Chandana', NULL, NULL, '38657', NULL, NULL, NULL, 'F', 'Raghava', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(372, NULL, NULL, 'BBAA399M04', 'Sanketh S', NULL, NULL, '38203', NULL, NULL, NULL, 'M', 'Suresh B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(373, NULL, NULL, 'BBAA304M05', 'Nihal V Kamaji', NULL, NULL, '38418', NULL, NULL, NULL, 'M', 'Ajoy Lobo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(374, NULL, NULL, 'BBAA400M04', 'Mihir N Singh', NULL, NULL, '38052', NULL, NULL, NULL, 'M', 'M J Narendra Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(375, NULL, NULL, 'BBAA305M05', 'Kushal Gowda As', NULL, NULL, '38457', NULL, NULL, NULL, 'M', 'Srinivas Gowda Av', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(376, NULL, NULL, 'BBAA401M04', 'Shashank Gowda M B', NULL, NULL, '38227', NULL, NULL, NULL, 'M', 'B Basavaraju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(377, NULL, NULL, 'BBAA402M04', 'Amarthya', NULL, NULL, '37991', NULL, NULL, NULL, 'M', 'Mahadeva Swamy Ms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(378, NULL, NULL, 'BBAA403M04', 'Priyanshu', NULL, NULL, '38262', NULL, NULL, NULL, 'M', 'Mukesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(379, NULL, NULL, 'BBAA404M04', 'Goswami Shivam Bharti', NULL, NULL, '38091', NULL, NULL, NULL, 'M', 'Sanjay Bharti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(380, NULL, NULL, 'BBAA407M04', 'Bhuvan S Paravannavar', NULL, NULL, '38203', NULL, NULL, NULL, 'M', 'Shivarudra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(381, NULL, NULL, 'BBAA307M05', 'Vishnu Nm', NULL, NULL, '38441', NULL, NULL, NULL, 'M', 'Nagappa Mantagani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(382, NULL, NULL, 'BBAA408M04', 'Nithin Kumar R', NULL, NULL, '38246', NULL, NULL, NULL, 'M', 'Ravi Kumar R S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Boys'),
(383, NULL, NULL, 'FOAB827M04', 'Vedanth Singh', NULL, NULL, '38229', NULL, NULL, NULL, 'M', 'Adesh Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(384, NULL, NULL, 'FOAB828M04', 'Abhishek Shankar Pawar', NULL, NULL, '38238', NULL, NULL, NULL, 'M', 'Shakr Rupsing Pawar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(385, NULL, NULL, 'FOAB829M04', 'Kr Shashwath', NULL, NULL, '38120', NULL, NULL, NULL, 'M', 'umar Radhakrishanan Ka n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(386, NULL, NULL, 'FOAB830M04', 'Rayaan Shakeer', NULL, NULL, '38266', NULL, NULL, NULL, 'M', 'P K Shakeer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(387, NULL, NULL, 'BBAA224F05', 'Aadya P Aithal', NULL, NULL, '38629', NULL, NULL, NULL, 'F', 'Prakash Km Aithal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(388, NULL, NULL, 'FOAB712M05', 'Rowan James', NULL, NULL, '38504', NULL, NULL, NULL, 'M', 'James Dominic Savio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(389, NULL, NULL, 'FOAB831M04', 'Nivrutti', NULL, NULL, '38336', NULL, NULL, NULL, 'M', 'Sunil Pavanoji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(390, NULL, NULL, 'FOAB832M04', 'Soham S Oulkar', NULL, NULL, '38006', NULL, NULL, NULL, 'M', 'Sandeep Oulkar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(391, NULL, NULL, 'FOAB833M04', 'Aniket Bp', NULL, NULL, '38069', NULL, NULL, NULL, 'M', 'Prasanna Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(392, NULL, NULL, 'FOAB713M05', 'Arjun A G', NULL, NULL, '38427', NULL, NULL, NULL, 'M', 'Amare Gowda M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(393, NULL, NULL, 'FOAB714M05', 'Sankarapu Karthik', NULL, NULL, '38388', NULL, NULL, NULL, 'M', 'S Harikrishna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(394, NULL, NULL, 'FOAB715M05', 'Tanish Tamanna P', NULL, NULL, '38413', NULL, NULL, NULL, 'M', 'Suraj Machaiah P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(395, NULL, NULL, 'FOAB716M05', 'Gautam Rajesh', NULL, NULL, '38436', NULL, NULL, NULL, 'M', 'Rajesh Krishnan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(396, NULL, NULL, 'FOAB717M05', 'Prateek Kashyap', NULL, NULL, '38573', NULL, NULL, NULL, 'M', 'Mukesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(397, NULL, NULL, 'FOAB834M04', 'R Niel Joseph', NULL, NULL, '38058', NULL, NULL, NULL, 'M', 'Ravi Babu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(398, NULL, NULL, 'FOAB718M05', 'Ishaan Raghunanda', NULL, NULL, '38672', NULL, NULL, NULL, 'M', 'Raghunanda Narasimhaia h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(399, NULL, NULL, 'FOAB719M05', 'Aditya Kalasur', NULL, NULL, '38477', NULL, NULL, NULL, 'M', 'Vinay R Kalasur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Football', 'Team Event', 'Under 18 Boys'),
(400, NULL, NULL, 'VOAA235F05', 'Vibhu Patel', NULL, NULL, '38381', NULL, NULL, NULL, 'F', 'Mahesh A C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(401, NULL, NULL, 'VOAA236F05', 'Minnat Zarine', NULL, NULL, '38609', NULL, NULL, NULL, 'F', 'Vijay N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(402, NULL, NULL, 'VOAA237F05', 'Prakuthi K P', NULL, NULL, '38378', NULL, NULL, NULL, 'F', 'Late Prasannakumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(403, NULL, NULL, 'VOAA295F04', 'Faunia Jesline Dsouza', NULL, NULL, '38275', NULL, NULL, NULL, 'F', 'Flaven Dsouza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(404, NULL, NULL, 'VOAA175F06', 'Dimple A Gowda', NULL, NULL, '39006', NULL, NULL, NULL, 'F', 'Arun Kumar T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(405, NULL, NULL, 'VOAA296F04', 'Shwetha A S', NULL, NULL, '38134', NULL, NULL, NULL, 'F', 'Subbashetty A S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(406, NULL, NULL, 'VOAA297F04', 'Preeti Shrikant Ajur', NULL, NULL, '38035', NULL, NULL, NULL, 'F', 'Shrikant Bhimappa Ajur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(407, NULL, NULL, 'VOAA238F05', 'Preethi H M', NULL, NULL, '38398', NULL, NULL, NULL, 'F', 'Manjegowda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(408, NULL, NULL, 'VOAA298F04 A', 'kshata Bhimappa Chigadolli', NULL, NULL, '38205', NULL, NULL, NULL, 'F', 'Bhimappa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(409, NULL, NULL, 'BBAA104F07', 'Khushi N', NULL, NULL, '39225', NULL, NULL, NULL, 'F', 'Dr Naveen B S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(410, NULL, NULL, 'VOAA239F05', 'Kalyani Shivalingappa Naik', NULL, NULL, '38404', NULL, NULL, NULL, 'F', 'hivalingappa Bhimappa Na', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(411, NULL, NULL, 'VOAA299F04', 'Jyoti Madeva Mishali', NULL, NULL, '38280', NULL, NULL, NULL, 'F', 'Madeva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(412, NULL, NULL, 'VOAA116F07', 'Huligemma', NULL, NULL, '39239', NULL, NULL, NULL, 'F', 'Rajesh Vanageri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(413, NULL, NULL, 'VOAA241F05', 'Nagaveni Erayya Pujar', NULL, NULL, '38574', NULL, NULL, NULL, 'F', 'Erayya Pujar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(414, NULL, NULL, 'BBAA142F06', 'Dhanushree A', NULL, NULL, '39082', NULL, NULL, NULL, 'F', 'Kantharaju Kg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Karnataka', 'Basketball', 'Team Event', 'Under 18 Girls'),
(415, NULL, NULL, 'FOAA013F04', 'Theertha Lakshmi', NULL, NULL, '38100', NULL, NULL, NULL, 'F', 'Pradosh Kumar E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(416, NULL, NULL, 'FOAA014F04', 'Arathi V', NULL, NULL, '37996', NULL, NULL, NULL, 'F', 'Anilkumar V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(417, NULL, NULL, 'BBAA014F05', 'Akla P A', NULL, NULL, '38355', NULL, NULL, NULL, 'F', 'Anil Kumar P S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(418, NULL, NULL, 'FOAA319M04', 'Shibin P', NULL, NULL, '38200', NULL, NULL, NULL, 'M', 'Sudheer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(419, NULL, NULL, 'BBAA046F04', 'Ashlin Shiju', NULL, NULL, '38055', NULL, NULL, NULL, 'F', 'Shiju Sebastian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(420, NULL, NULL, 'BBAA048F04', 'Lakshmi Raj', NULL, NULL, '38044', NULL, NULL, NULL, 'F', 'Ravi K G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(421, NULL, NULL, 'VOAA034F05', 'Bewina Mariyam Viju', NULL, NULL, '38359', NULL, NULL, NULL, 'F', 'Viju Thomas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(422, NULL, NULL, 'FOAA565M04', 'Surajith Kumar K S', NULL, NULL, '38083', NULL, NULL, NULL, 'M', 'K P Sasidharan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(423, NULL, NULL, 'FOAB321M04', 'Kamaludheen A K', NULL, NULL, '38269', NULL, NULL, NULL, 'M', 'Kasim A K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(424, NULL, NULL, 'FOAB331M04', 'Nandakishor C R', NULL, NULL, '38246', NULL, NULL, NULL, 'M', 'Rajeevan U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(425, NULL, NULL, 'VOAA145F05', 'Anooja Gineshkumar', NULL, NULL, '38386', NULL, NULL, NULL, 'F', 'Gineshkumart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(426, NULL, NULL, 'VOAA212F04', 'Abhinandha S Nair', NULL, NULL, '38111', NULL, NULL, NULL, 'F', 'Satheesh Kumar U P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(427, NULL, NULL, 'BBAA157F04', 'Amritha P Prasad', NULL, NULL, '38091', NULL, NULL, NULL, 'F', 'Sivaprasad P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(428, NULL, NULL, 'BBAA158F04', 'Hridya M S', NULL, NULL, '38079', NULL, NULL, NULL, 'F', 'Satheeshkumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(429, NULL, NULL, 'BBAA159F04', 'Avani Nandha O', NULL, NULL, '38259', NULL, NULL, NULL, 'F', 'O Shyjan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(430, NULL, NULL, 'BBAA282M04', 'Adarsh S Kappen', NULL, NULL, '38312', NULL, NULL, NULL, 'M', 'Santhosh J Kappen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(431, NULL, NULL, 'BBAA283M04', 'Jordan Cherian Eapen', NULL, NULL, '38152', NULL, NULL, NULL, 'M', 'dathum Muriyil Cherian Ea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(432, NULL, NULL, 'BBAA284M04', 'Alfin Charly', NULL, NULL, '38042', NULL, NULL, NULL, 'M', 'Charly M Thomas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(433, NULL, NULL, 'BBAA285M04', 'Donal George Domenic', NULL, NULL, '38004', NULL, NULL, NULL, 'M', 'Dominic Varghese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(434, NULL, NULL, 'BBAA286M04', 'Rinil C K', NULL, NULL, '38274', NULL, NULL, NULL, 'M', 'C C Kuriakutty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(435, NULL, NULL, 'BBAA298M04', 'Livio Thomas Joseph', NULL, NULL, '38189', NULL, NULL, NULL, 'M', 'Joseph Thomas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(436, NULL, NULL, 'VOAA291F03', 'Irin Elsa John', NULL, NULL, '38241', NULL, NULL, NULL, 'F', 'John Antony', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(437, NULL, NULL, 'VOAA226F04', 'Akanksha Banafer', NULL, NULL, '38108', NULL, NULL, NULL, 'F', 'Amit Banafer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls');
INSERT INTO `candidates` (`id`, `created_at`, `updated_at`, `uid`, `first_name`, `last_name`, `accreditation_name`, `dob`, `address`, `email`, `mobile`, `gender`, `father_name`, `mother_name`, `spouse_name`, `tshirtsize`, `organisation`, `designation`, `org_address`, `org_email_id`, `org_phone`, `terms`, `player_image`, `state`, `sport`, `event_name`, `category_name`) VALUES
(438, NULL, NULL, 'VOAA259F04', 'Anamika P', NULL, NULL, '38315', NULL, NULL, NULL, 'F', 'Aneesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(439, NULL, NULL, 'VOAA144F06', 'Devika S', NULL, NULL, '38794', NULL, NULL, NULL, 'F', 'Sudheesh P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(440, NULL, NULL, 'VOAA204F05', 'Sethulakshmi T', NULL, NULL, '38596', NULL, NULL, NULL, 'F', 'Subhash T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(441, NULL, NULL, 'VOAA215F05', 'Anjana V', NULL, NULL, '38519', NULL, NULL, NULL, 'F', 'Gireesh V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(442, NULL, NULL, 'VOAA280F04', 'Arunima K', NULL, NULL, '38125', NULL, NULL, NULL, 'F', 'Bharathan T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(443, NULL, NULL, 'VOAA164F06', 'Pavithra R', NULL, NULL, '38809', NULL, NULL, NULL, 'F', 'Rajeesh C K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(444, NULL, NULL, 'VOAA226F05', 'Jishna P', NULL, NULL, '38482', NULL, NULL, NULL, 'F', 'A K Mohanan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(445, NULL, NULL, 'VOAA292F04', 'Saniya Shaju', NULL, NULL, '38307', NULL, NULL, NULL, 'F', 'Shaju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(446, NULL, NULL, 'VOAA293F04', 'Reny Joseph', NULL, NULL, '38188', NULL, NULL, NULL, 'F', 'Reji Joseph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(447, NULL, NULL, 'BBAA225F05', 'Aleena Jaison', NULL, NULL, '38500', NULL, NULL, NULL, 'F', 'Jaison Cheriyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(448, NULL, NULL, 'BBAA226F05', 'Shalabha T P', NULL, NULL, '38572', NULL, NULL, NULL, 'F', 'Subhash T P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(449, NULL, NULL, 'BBAA237F04', 'Edlina Ann Joseph', NULL, NULL, '38234', NULL, NULL, NULL, 'F', 'Joseph John', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(450, NULL, NULL, 'BBAA227F05', 'Ruth Anna Blessen', NULL, NULL, '37916', NULL, NULL, NULL, 'F', 'Blessen Varughese', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(451, NULL, NULL, 'BBAA228F05', 'Abhirami K A', NULL, NULL, '38600', NULL, NULL, NULL, 'F', 'Ajith Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Girls'),
(452, NULL, NULL, 'BBAA412M04', 'Anand P K', NULL, NULL, '38161', NULL, NULL, NULL, 'M', 'Murali S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(453, NULL, NULL, 'VOAA242F05', 'Karthy C Pratheesh', NULL, NULL, '38634', NULL, NULL, NULL, 'F', 'Pratheesh C P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Volleyball', 'Team Event', 'Under 18 Girls'),
(454, NULL, NULL, 'BBAA413M04', 'Vaishnav R', NULL, NULL, '38072', NULL, NULL, NULL, 'M', 'Rajesh V C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(455, NULL, NULL, 'BBAA311M05', 'Mohamed Sahal', NULL, NULL, '38357', NULL, NULL, NULL, 'M', 'Nazar K M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(456, NULL, NULL, 'BBAA312M05', 'Savio George Bino', NULL, NULL, '38657', NULL, NULL, NULL, 'M', 'Bino George', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(457, NULL, NULL, 'BBAA414M04', 'Blencil V S', NULL, NULL, '38182', NULL, NULL, NULL, 'M', 'Suresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(458, NULL, NULL, 'BBAA415M04', 'Thomson Saji', NULL, NULL, '38309', NULL, NULL, NULL, 'M', 'Saji M A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Basketball', 'Team Event', 'Under 18 Boys'),
(459, NULL, NULL, 'FOAA335F07', 'Shilji Shaji', NULL, NULL, '39154', NULL, NULL, NULL, 'F', 'Shaji Joseph', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(460, NULL, NULL, 'FOAA448F04', 'Arathy P M', NULL, NULL, '38249', NULL, NULL, NULL, 'F', 'Dr Velayudhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(461, NULL, NULL, 'FOAA449F04', 'Reshma P', NULL, NULL, '38177', NULL, NULL, NULL, 'F', 'Jayesh P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(462, NULL, NULL, 'FOAA450F04', 'Greeshma M P', NULL, NULL, '38161', NULL, NULL, NULL, 'F', 'Gireesh Thalmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(463, NULL, NULL, 'FOAA177F09', 'Sera Mary Thomas M S', NULL, NULL, '39931', NULL, NULL, NULL, 'F', 'Salu Abraham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(464, NULL, NULL, 'FOAA393F06', 'Aparna K R', NULL, NULL, '38902', NULL, NULL, NULL, 'F', 'Rajan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(465, NULL, NULL, 'FOAA394F06', 'Aleena Tony', NULL, NULL, '38908', NULL, NULL, NULL, 'F', 'Tony N K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(466, NULL, NULL, 'FOAA451F04', 'Manjima T M', NULL, NULL, '38244', NULL, NULL, NULL, 'F', 'Mani T R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(467, NULL, NULL, 'FOAA396F05', 'Megha Manikandan', NULL, NULL, '38479', NULL, NULL, NULL, 'F', 'P Manikandan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(468, NULL, NULL, 'FOAA452F04', 'Neelambari', NULL, NULL, '38259', NULL, NULL, NULL, 'F', 'Suku P K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(469, NULL, NULL, 'FOAA398F05', 'Liya Jose', NULL, NULL, '38418', NULL, NULL, NULL, 'F', 'Jose V P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(470, NULL, NULL, 'FOAA178F09', 'Anjana Rajesh M', NULL, NULL, '39944', NULL, NULL, NULL, 'F', 'Rajesh M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(471, NULL, NULL, 'FOAA400F05', 'Aksa Mathew', NULL, NULL, '38553', NULL, NULL, NULL, 'F', 'Mathew B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(472, NULL, NULL, 'FOAA455F04', 'Crismaria Saju', NULL, NULL, '38227', NULL, NULL, NULL, 'F', 'Saju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(473, NULL, NULL, 'FOAA243F08', 'Sreya K S', NULL, NULL, '39639', NULL, NULL, NULL, 'F', 'K R Suresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(474, NULL, NULL, 'FOAA339F07', 'Mary Angelina P V', NULL, NULL, '39370', NULL, NULL, NULL, 'F', 'Varghese P A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(475, NULL, NULL, 'FOAA340F07', 'Snijina V K', NULL, NULL, '39357', NULL, NULL, NULL, 'F', 'Nanu C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(476, NULL, NULL, 'FOAA457F04', 'Yadhu Priya S', NULL, NULL, '38099', NULL, NULL, NULL, 'F', 'Pavithran V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Girls'),
(477, NULL, NULL, 'FOAB849M04 h', 'ammaed Shafi Vallikkaparam', NULL, NULL, '38325', NULL, NULL, NULL, 'M', 'Abdul Sathar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(478, NULL, NULL, 'FOAB850M04', 'Abdul Dinu P K', NULL, NULL, '38217', NULL, NULL, NULL, 'M', 'Muhammed Rafi P K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(479, NULL, NULL, 'FOAB851M04', 'Sreeraj K A', NULL, NULL, '38013', NULL, NULL, NULL, 'M', 'K M Aji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(480, NULL, NULL, 'FOAB852M04', 'Muhammed Kahuf K P', NULL, NULL, '38031', NULL, NULL, NULL, 'M', 'Abdul Raheem K P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(481, NULL, NULL, 'FOAB853M04', 'Jobin Joseph', NULL, NULL, '38348', NULL, NULL, NULL, 'M', 'Joseph M C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(482, NULL, NULL, 'FOAB854M04', 'Alkesh A S', NULL, NULL, '38097', NULL, NULL, NULL, 'M', 'A B Suresh Babu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(483, NULL, NULL, 'FOAB725M05', 'Sharon C J', NULL, NULL, '38417', NULL, NULL, NULL, 'M', 'Climanse P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(484, NULL, NULL, 'FOAB855M04', 'Akshay P M', NULL, NULL, '38014', NULL, NULL, NULL, 'M', 'Raveedran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(485, NULL, NULL, 'FOAB856M04', 'Sachin Sunil C', NULL, NULL, '38086', NULL, NULL, NULL, 'M', 'Sunil C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(486, NULL, NULL, 'FOAB857M04', 'Muhammed Hasin T P', NULL, NULL, '37989', NULL, NULL, NULL, 'M', 'Mujeeb Rahman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(487, NULL, NULL, 'FOAB858M04', 'Muhammed Shinad C P', NULL, NULL, '38005', NULL, NULL, NULL, 'M', 'Muhammed Shareef K P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(488, NULL, NULL, 'FOAB726M05', 'Abhijith S', NULL, NULL, '38624', NULL, NULL, NULL, 'M', 'N Suresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(489, NULL, NULL, 'FOAB860M04', 'Sreerag C P', NULL, NULL, '38311', NULL, NULL, NULL, 'M', 'Subrahmanian C P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(490, NULL, NULL, 'FOAB861M04', 'Kiran K', NULL, NULL, '38004', NULL, NULL, NULL, 'M', 'M Kannan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(491, NULL, NULL, 'FOAB862M04', 'Sujith M P', NULL, NULL, '38024', NULL, NULL, NULL, 'M', 'Ramankutty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(492, NULL, NULL, 'FOAB863M04', 'Al Yasah A P', NULL, NULL, '38114', NULL, NULL, NULL, 'M', 'Mohammed Haneefa A P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', 'Football', 'Team Event', 'Under 18 Boys'),
(493, NULL, NULL, 'KHAA020M05', 'Vivek Vaishnav', NULL, NULL, '38683', NULL, NULL, NULL, 'M', 'Lt. Om Prakash Vaishnav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Boys'),
(494, NULL, NULL, 'KHAA051F04', 'Palak Garg', NULL, NULL, '38169', NULL, NULL, NULL, 'F', 'Vishnu Garg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Kho-Kho', 'Team Event', 'Under 18 Girls'),
(495, NULL, NULL, 'KAAA420M05', 'Ritik Thakre', NULL, NULL, '38711', NULL, NULL, NULL, 'M', 'Pramod Thakre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(496, NULL, NULL, 'KAAA235M07', 'Ayush Goud', NULL, NULL, '39375', NULL, NULL, NULL, 'M', 'Yashvant Goud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Kabaddi', 'Team Event', 'Under 18 Boys'),
(497, NULL, NULL, 'BBAA054F05', 'Monisha Goswami', NULL, NULL, '38455', NULL, NULL, NULL, 'F', 'Anand Mohan Goswami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Basketball', 'Team Event', 'Under 18 Girls'),
(498, NULL, NULL, 'HOAA111F04', 'Jyoti Singh', NULL, NULL, '38266', NULL, NULL, NULL, 'F', 'Dheeraj Singh Parihar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Hockey', 'Team Event', 'Under 18 Girls'),
(499, NULL, NULL, 'BBAA058F05', 'Shalu Jaiswal', NULL, NULL, '38453', NULL, NULL, NULL, 'F', 'Mahesh Jaiswal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Madhya Pradesh', 'Basketball', 'Team Event', 'Under 18 Girls');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_documents`
--

CREATE TABLE `candidate_documents` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `document` varchar(300) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `short_name` varchar(15) DEFAULT NULL,
  `access` varchar(100) DEFAULT NULL,
  `color` varchar(55) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `short_name`, `access`, `color`, `flag`, `created_at`, `updated_at`) VALUES
(2, 'Internation Associatation', 'IOA', '[\"4\"]', '#af4646', 0, '2023-01-09 13:01:57', '2023-01-09 13:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `category_sort_name`
--

CREATE TABLE `category_sort_name` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sort_name` varchar(55) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_sort_name`
--

INSERT INTO `category_sort_name` (`id`, `cat_id`, `sort_name`, `flag`, `created_at`, `updated_at`) VALUES
(1, 1, 'S1', 0, '2023-01-07 18:00:37', '2023-01-07 18:00:37'),
(2, 1, 'S2', 0, '2023-01-07 18:00:37', '2023-01-07 18:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `title` varchar(35) NOT NULL,
  `color_code` varchar(10) NOT NULL,
  `flag` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `title`, `color_code`, `flag`) VALUES
(1, 'IOA', '#0de739', 0),
(7, 'HOCK', '#ff0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(555, '2022_10_02_110811_add_receipt_session', 1),
(556, '2022_10_02_111946_add_receipt_session_date', 1),
(557, '2022_10_02_124209_add_check_and_received', 1),
(558, '2022_10_02_124808_add_check_and_received_date', 1),
(559, '2022_10_03_064357_create_product_boms_table', 1),
(571, '2022_10_08_092758_add_code', 2),
(572, '2014_10_12_100000_create_password_resets_table', 3),
(573, '2019_08_19_000000_create_failed_jobs_table', 3),
(574, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(575, '2022_09_03_182923_create_users_table', 3),
(576, '2022_10_08_062825_create_inspections_table', 3),
(577, '2022_10_10_075206_create_assign_dealers_table', 4),
(579, '2022_10_12_044108_create_brands_table', 5),
(580, '2022_10_12_054534_create_modals_table', 6),
(581, '2022_10_12_071143_create_cars_table', 7),
(582, '2022_10_12_113516_create_jobs_table', 7),
(583, '2022_10_29_074932_add_brand_image', 8),
(585, '2022_11_03_053956_create_teams_table', 9),
(586, '2022_11_03_132326_create_roles_table', 10),
(587, '2022_11_03_152400_add_emergencey_phone', 11),
(588, '2022_11_03_152853_add_joining_date', 12),
(589, '2022_11_03_173412_create_sources_table', 13),
(592, '2022_11_04_113421_add_team_id', 15),
(594, '2022_11_03_174446_create_statuses_table', 17),
(596, '2022_11_03_123052_create_leads_table', 18),
(599, '2022_11_05_125228_create_assign_leads_table', 19),
(600, '2022_11_08_161029_create_team_members_table', 20),
(601, '2022_11_08_162841_add_profile_image', 21),
(602, '2022_11_08_175206_create_further_assigneds_table', 22),
(603, '2022_11_10_110807_create_inspect_details_table', 23),
(604, '2022_11_11_134144_create_inspected_images_table', 24),
(605, '2022_11_13_140420_add_status', 25),
(606, '2022_11_14_172238_create_notifications_table', 26),
(607, '2022_11_15_131234_create_notifications_table', 27),
(608, '2022_11_16_113359_create_supervisions_table', 28),
(609, '2022_11_16_175753_create_lead_assign_to_qcs_table', 29),
(610, '2022_11_17_103659_add_assigned_by', 29),
(611, '2022_11_17_114939_create_assign_lead_to_c_j_s_table', 29),
(612, '2022_11_17_121755_add_status_feild', 29),
(613, '2022_11_17_160838_create_lead_statuses_table', 30),
(614, '2022_11_17_230242_add_assigndate', 30),
(615, '2022_11_18_110524_create_book_inspections_table', 30),
(616, '2022_11_18_131857_create_lead_next_calls_table', 30),
(617, '2022_11_19_113853_add_status_and_assigndate', 30),
(621, '2022_12_11_000642_create_candidates_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('014d6c3a-02ff-4c19-bada-4682f0a3181b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":213,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:02:30', '2022-11-21 16:02:30'),
('01dc6345-9927-4d6a-973f-ee1ab438985f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":91,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:15:36', '2022-11-19 12:15:36'),
('02dda929-0a5a-413f-9935-c200d2457e8f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":141,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:30:43', '2022-11-21 13:30:43'),
('035d7c16-65a1-439b-a308-254f645bf8ab', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":308,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:23:04', '2022-11-22 11:23:04'),
('05015fa7-1040-4a72-a44f-d814d33c5297', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":140,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:30:19', '2022-11-21 13:30:19'),
('051009a4-b55d-4511-a6f7-7261f22af5d9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":187,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:46:30', '2022-11-21 15:46:30'),
('05a847ea-eefc-4afc-9882-25b8748c1e37', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":313,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:24:49', '2022-11-22 11:24:49'),
('0607bbd7-c1bc-48ba-9e03-fc6dc51b5dcc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":2,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:13:42', '2022-11-17 13:13:42'),
('068f22fa-4ff2-4648-9028-1c93cd06c35d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":326,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:39', '2022-11-22 11:28:39'),
('07411683-e603-49d1-903c-a6b04a3d9fb5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":225,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:09:17', '2022-11-21 16:09:17'),
('09059045-8f74-4dfd-b57f-bc8ad328653c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":289,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:47:07', '2022-11-22 10:47:07'),
('09220537-003e-49b0-aa35-a23dc8bcb5ab', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":161,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:38:19', '2022-11-21 15:38:19'),
('094b95a1-863a-4b84-bcee-78759b439266', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":349,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:34:59', '2022-11-23 10:34:59'),
('09b3451e-d659-415b-9207-bdd75a738027', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":209,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:59:19', '2022-11-21 15:59:19'),
('09b6649a-3ef2-4f0e-9f61-6118372eecaf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":22,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:45:48', '2022-11-18 14:45:48'),
('0a393507-a545-49b6-8072-74067d4bc5b7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":57,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:11:14', '2022-11-18 16:11:14'),
('0a9928e9-8c66-469d-ae25-a0e5887cd344', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":70,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:39:10', '2022-11-18 16:39:10'),
('0ab032a9-4e8c-4a23-b4d3-5e3acdc4b5d5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":271,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:01:57', '2022-11-21 18:01:57'),
('0af6b743-0bd4-4274-b9f4-aefefee34360', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":269,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:01:01', '2022-11-21 18:01:01'),
('0af8bbb4-bdb3-406b-9ac2-30027053dfaa', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":162,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:38:35', '2022-11-21 15:38:35'),
('0d73e83b-cd92-4824-bba0-c7d254cb5866', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":190,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:39', '2022-11-21 15:47:39'),
('0df498bc-8ad0-49b3-915f-23452584a47e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":194,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:51:02', '2022-11-21 15:51:02'),
('0e6be8be-85cc-4934-a40d-7cd671e6abe0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":186,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:46:13', '2022-11-21 15:46:13'),
('0e972185-bf80-42e1-a8a2-9ba3b01126da', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":19,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:41:50', '2022-11-18 14:41:50'),
('10b6f8c4-8686-4a63-9854-6d8e8948cf41', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":93,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:17:22', '2022-11-19 12:17:22'),
('10ba4cae-5407-497b-80ec-1a342a61d65b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"334\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:18', '2022-11-22 18:51:18'),
('112c67dd-7d04-4e59-99f5-6cceca24da3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":132,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:17:51', '2022-11-21 13:17:51'),
('118309fc-f5bc-4406-99c8-02a5a626d5e9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":72,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:42:02', '2022-11-18 16:42:02'),
('123e16b3-0668-497c-9fea-4643786744c7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":215,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:03:06', '2022-11-21 16:03:06'),
('14402d31-ee0e-48fe-a38e-a5276e9ea295', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":14,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:30:22', '2022-11-17 17:30:22'),
('1559ffd0-de76-495c-b72c-319e4b3fbf3b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":301,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:51:57', '2022-11-22 10:51:57'),
('155f4241-12c8-44c8-beff-4e4eb37b62ad', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":223,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:08:31', '2022-11-21 16:08:31'),
('164ccc59-92b8-4827-ae96-864a0b80768e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":169,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:40:33', '2022-11-21 15:40:33'),
('1705c2bc-ec6e-4a0e-b63a-54980b16a101', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":184,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:45:36', '2022-11-21 15:45:36'),
('171eed2b-4c23-4735-bd78-908b671aa5b7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":183,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:45:19', '2022-11-21 15:45:19'),
('178823d2-0b9b-4fa2-8978-e781b3122b06', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 3, '{\"lead_id\":\"333\",\"message\":\"Rajinder Singh you have assigned a new Lead\"}', NULL, '2022-11-22 18:52:34', '2022-11-22 18:52:34'),
('18173a50-75c0-466b-855f-798aa1166755', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":107,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:22:27', '2022-11-19 14:22:27'),
('19601142-6ec0-4de1-a749-4e26449e0e55', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":125,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:29:46', '2022-11-21 12:29:46'),
('1aa0252f-05a0-420b-b067-49f039c69839', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":347,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:34:06', '2022-11-23 10:34:06'),
('1c62a73c-4629-4345-8383-1aa1c887423b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":9,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 16:32:11', '2022-11-17 16:32:11'),
('1cfbcc3b-e840-4836-b785-9147000a36cd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":270,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:01:40', '2022-11-21 18:01:40'),
('1cffab48-c668-4bae-a8a4-37f70013001b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":319,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:45', '2022-11-22 11:26:45'),
('1d3432ef-75ad-46d4-90f1-34054714620d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":121,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 17:42:47', '2022-11-19 17:42:47'),
('1d5db19a-17fd-44e3-8483-92003da5dc84', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":83,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:09:32', '2022-11-19 11:09:32'),
('1dec6241-a34d-4358-baf9-bcf56b6bcfe3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":237,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:14:40', '2022-11-21 16:14:40'),
('1eaa594e-3da1-4210-a82c-cd8f84f8bf1e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":20,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:43:26', '2022-11-18 14:43:26'),
('1f670a02-5b87-4c66-ba29-d200afb6269c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":196,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:51:39', '2022-11-21 15:51:39'),
('214d26f6-8d1f-43ba-9f2a-c3422489b924', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":232,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:12:51', '2022-11-21 16:12:51'),
('22035804-643a-4ba1-881c-f8667466bce0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":293,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:48:42', '2022-11-22 10:48:42'),
('22b35f27-c5cd-4ea1-a0db-5b9d07f2add6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":36,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:39:36', '2022-11-18 15:39:36'),
('23bc27d0-2db9-4d79-b69f-47ef18238b13', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":358,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 11:32:26', '2022-11-23 11:32:26'),
('2434ae84-9106-45ed-962a-d767d5626a1a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":249,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:21:24', '2022-11-21 16:21:24'),
('256eeca2-71c9-46cd-9ee0-d09ee7dea090', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":210,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:59:33', '2022-11-21 15:59:33'),
('2599ccd6-efac-43b7-a59c-5391fb097b2e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":318,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:23', '2022-11-22 11:26:23'),
('25c861aa-04d5-41ed-b483-1f184893106f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":285,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:45:34', '2022-11-22 10:45:34'),
('26be7dde-d808-4178-9a1d-f1a389c5ee6c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":277,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:01', '2022-11-21 18:04:01'),
('272192e6-032c-4732-873d-b91f761d0e68', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":71,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:40:59', '2022-11-18 16:40:59'),
('287b2548-10b2-473f-ba21-34f29f9e65f2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 6, '{\"lead_id\":\"333\",\"message\":\"Mayank you have assigned a new Lead\"}', NULL, '2022-11-22 18:53:11', '2022-11-22 18:53:11'),
('290e022a-0761-4c85-9c5a-5d8fd2efa599', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":41,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:52:20', '2022-11-18 15:52:20'),
('297872af-091d-42d2-9468-fd4234662261', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":229,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:10:55', '2022-11-21 16:10:55'),
('29a78d58-6d09-4604-b69f-246568328d49', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":353,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:36:58', '2022-11-23 10:36:58'),
('2a5ad7b7-1c0f-4a00-b061-4a5fd35a1f8e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":44,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:54:51', '2022-11-18 15:54:51'),
('2aa02d12-92ac-4319-947a-35acfa5b9e3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":273,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:02:56', '2022-11-21 18:02:56'),
('2ac73c7f-b6c2-4301-aef0-ac1fba74977f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":99,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:28:49', '2022-11-19 12:28:49'),
('2c5d1922-f4e3-4083-9f86-dc5ae26ff043', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":78,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 10:56:20', '2022-11-19 10:56:20'),
('2cacc76a-c376-4d34-88a8-2b4f07a83bac', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":286,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:45:57', '2022-11-22 10:45:57'),
('2cd9afba-5426-4856-b880-86f1c14e71eb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":60,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:14:29', '2022-11-18 16:14:29'),
('2df87777-47ae-48e1-ac04-e557eb9cd681', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":85,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:23:11', '2022-11-19 11:23:11'),
('2ea95dba-6ed6-4d55-8250-fa662385ec51', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"372\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:05', '2022-11-25 05:48:05'),
('2f30cf0d-5ad7-4931-98a8-8de7098e033d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":52,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:05:19', '2022-11-18 16:05:19'),
('2fbf15ac-41f6-437c-99c4-f4690d388a03', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":143,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:31:33', '2022-11-21 13:31:33'),
('2fc20c33-31cb-4a7c-be3c-85539146853f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":207,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:58:44', '2022-11-21 15:58:44'),
('301090af-b9e9-4cc7-a4f3-960c82916fc9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":109,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:57:05', '2022-11-19 14:57:05'),
('30de2202-1ee1-4d50-96b4-df910129ca6f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":304,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:17:26', '2022-11-22 11:17:26'),
('30dedc6d-1ded-41a6-bd96-ba32b1750e86', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":113,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:12:06', '2022-11-19 15:12:06'),
('31fffbc0-5d6f-4e5c-82ed-6c9127bd9c3a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":62,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:19:54', '2022-11-18 16:19:54'),
('32867bab-78ae-45ac-b2f3-c0e7645f928f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":255,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:26:24', '2022-11-21 16:26:24'),
('3364f805-6421-4b43-8132-c0575f583be2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":106,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:20:10', '2022-11-19 14:20:10'),
('339ddf26-5e72-4d62-8f8e-3e23824112b6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":191,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:58', '2022-11-21 15:47:58'),
('350786a2-cb38-4f2c-be1b-e5271e063872', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":76,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:47:56', '2022-11-18 16:47:56'),
('356a11bb-c76e-4c0e-9edf-2b5777bf9ce7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":260,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:28:22', '2022-11-21 16:28:22'),
('363bcc12-e7e4-454b-a491-6c7bf1ee8695', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":228,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:10:31', '2022-11-21 16:10:31'),
('36fdbe1d-f82d-4969-885e-bdd49a2e72e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":352,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:36:28', '2022-11-23 10:36:28'),
('37c56ca3-1d35-4b13-abe1-5880144e669f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":312,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:24:32', '2022-11-22 11:24:32'),
('37e7a5f7-3e00-4c23-9286-bdf0a5ee5dca', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":345,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:33:04', '2022-11-23 10:33:04'),
('381e355b-d6e6-46a4-a873-d1874a90a486', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":226,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:09:44', '2022-11-21 16:09:44'),
('3828995f-a69d-4fc5-bd00-81c1d9bbfc60', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":279,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:30', '2022-11-21 18:04:30'),
('382ca03d-b18b-4349-af88-b180b2e584a6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":117,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 16:11:33', '2022-11-19 16:11:33'),
('386dc412-ebf9-4682-840c-2016cd9ad4d1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":197,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:52:04', '2022-11-21 15:52:04'),
('3922e74c-549b-4c46-a3bf-8ad8a4d0170f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":166,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:39', '2022-11-21 15:39:39'),
('3abd16c6-390b-4e19-a970-eadcfbaef9ba', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":90,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:14:07', '2022-11-19 12:14:07'),
('3ac3d78c-e7ab-4326-ab8f-32a57fcab77c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":29,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:27:42', '2022-11-18 15:27:42'),
('3be59d58-aaca-4ec9-a04a-61a29db47b69', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":265,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:57:40', '2022-11-21 17:57:40'),
('3c98e350-20a3-4863-a1db-0b063bf14af9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":188,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:01', '2022-11-21 15:47:01'),
('3ef60e08-7048-4071-b34b-deeacf660699', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":81,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:02:37', '2022-11-19 11:02:37'),
('3f462522-dce3-41d5-97ea-11060733e778', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":88,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:34:02', '2022-11-19 11:34:02'),
('3fb30d81-9a1c-4e3d-8f9e-4a8facaa0c55', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":142,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:31:05', '2022-11-21 13:31:05'),
('3fc83af8-3b4c-409e-a800-808e84794e91', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":234,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:13:32', '2022-11-21 16:13:32'),
('3fcbe69b-9092-46b9-933f-34890cfc5038', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":200,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:53:04', '2022-11-21 15:53:04'),
('3fe7f74a-1e95-49be-826d-dbce981a9e3c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":233,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:13:13', '2022-11-21 16:13:13'),
('41021ec9-7ce2-4e33-97e3-7e602bd5cd4c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":242,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:18:21', '2022-11-21 16:18:21'),
('41307c86-aa95-4ace-81f0-55c574e4a901', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"333\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:21', '2022-11-22 18:51:21'),
('416adb9e-0b55-433e-8716-cbd24e7fad43', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 3, '{\"lead_id\":\"372\",\"message\":\"Rajinder Singh you have assigned a new Lead\"}', NULL, '2022-11-24 05:07:58', '2022-11-24 05:07:58'),
('418cb0b2-bd73-47be-922e-23c7e62a3c81', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":324,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:05', '2022-11-22 11:28:05'),
('440fd871-33f7-484c-955f-41717f9d8dd0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":364,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:50:09', '2022-11-23 13:50:09'),
('4475bdfe-7149-4aa9-97e5-fdf72e409079', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":87,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:32:54', '2022-11-19 11:32:54'),
('4626098f-a88c-4f48-ad38-a423f7d67b6a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":221,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:07:23', '2022-11-21 16:07:23'),
('4628c1d9-3730-4e51-9e6f-9b750f648d45', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":177,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:43:20', '2022-11-21 15:43:20'),
('46297fce-3323-4dec-baa1-4e271446d131', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":354,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:37:25', '2022-11-23 10:37:25'),
('46535ad4-73ba-4dba-a533-4a8343dfdd71', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":39,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:49:13', '2022-11-18 15:49:13'),
('46fcef23-da8d-445d-a752-2c4c44c3940e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":262,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:29:03', '2022-11-21 16:29:03'),
('4857a067-a451-498e-8291-40b67ef056f0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":56,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:09:52', '2022-11-18 16:09:52'),
('48e9ca5e-057f-4064-83a5-a80805f45c82', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":256,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:26:43', '2022-11-21 16:26:43'),
('49ab5941-82ee-46c3-a1d5-ae09ad387679', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":189,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:47:19', '2022-11-21 15:47:19'),
('4b0b8541-aabf-4a0a-a915-3184310d59e1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":367,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:28:12', '2022-11-23 16:28:12'),
('4b340893-dc2b-4dbe-ad60-91e0f700f427', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":252,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:22:27', '2022-11-21 16:22:27'),
('4b40754b-593c-4ddf-b3bc-30b6ab672b22', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"372\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-24 05:06:46', '2022-11-24 05:06:46'),
('4c4f34a0-b806-485b-9b8b-6375b5795f21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 5, '{\"lead_id\":\"370\",\"message\":\"Naresh Kumar you have assigned a new Lead\"}', NULL, '2022-11-25 05:54:24', '2022-11-25 05:54:24'),
('4e1516e4-f4ea-44f2-bb7d-97d768a014af', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":239,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:17:21', '2022-11-21 16:17:21'),
('4e6694c4-0d88-4312-b42c-300984584763', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":28,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:26:12', '2022-11-18 15:26:12'),
('50b6db45-426b-4e19-aee2-ede8471377cc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":370,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 18:37:40', '2022-11-23 18:37:40'),
('50b9be86-5aa5-491e-944a-2b9e4485d112', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":146,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:36:48', '2022-11-21 13:36:48'),
('50f25300-b01a-414d-9471-b0b3d0dfbad3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":174,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:42:20', '2022-11-21 15:42:20'),
('511ab530-c221-4e21-91e8-076b8da601e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":100,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:30:34', '2022-11-19 12:30:34'),
('51eddf41-2d19-46ca-a465-b5e70571f027', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":35,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:38:00', '2022-11-18 15:38:00'),
('555ed979-ee67-4891-9fee-6f23c1477a78', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":201,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:53:26', '2022-11-21 15:53:26'),
('565a9989-7a6e-4d0d-9096-469523f6e7ea', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":278,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:14', '2022-11-21 18:04:14'),
('5755e005-0fd9-4b84-844c-c03b1dde9539', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":86,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:31:32', '2022-11-19 11:31:32'),
('586a5f36-55dd-446a-92c2-0c2fc6c6578e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":160,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:37:58', '2022-11-21 15:37:58'),
('589ec07d-6faf-44e5-82ff-749e56625ede', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":244,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:19:06', '2022-11-21 16:19:06'),
('5933d966-956d-4205-ad38-21cdde10f23d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":165,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:24', '2022-11-21 15:39:24'),
('5a0a408e-c27c-4056-9444-4ed4808692c6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":235,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:13:56', '2022-11-21 16:13:56'),
('5ca76508-84ee-4e6e-941d-99f8fb2a7ba5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":176,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:42:57', '2022-11-21 15:42:57'),
('5e23c3bc-771b-4e48-83e8-427c5e962ddf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":157,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:36:55', '2022-11-21 15:36:55'),
('5e91f3e9-204b-489f-a739-42c632dc12e1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":227,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:10:03', '2022-11-21 16:10:03'),
('5e9f5545-7789-420a-b4be-262db848b165', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":128,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:09:08', '2022-11-21 13:09:08'),
('5f01f0e6-9dcb-49eb-992f-b8d7ac42f1dd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":94,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:18:43', '2022-11-19 12:18:43'),
('5f652aaa-3447-44ba-b53d-b86fa3994280', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":148,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:52:32', '2022-11-21 13:52:32'),
('5f93ee56-3f15-4eaf-92f0-2b34122c5904', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":343,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:32:08', '2022-11-23 10:32:08'),
('603af0d5-24d0-407a-93b3-3d689a09f0e6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":59,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:13:47', '2022-11-18 16:13:47'),
('603cf73b-00ba-4b2c-8bc0-bf632fd53b25', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":208,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:59:02', '2022-11-21 15:59:02'),
('6053a301-d8fc-428d-8782-037fc9761bce', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":10,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 16:41:54', '2022-11-17 16:41:54'),
('60c2c05d-c483-4729-bc42-bfa72f4fafee', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":167,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:58', '2022-11-21 15:39:58'),
('611aa7d1-5293-4aba-8db1-de3d4edd38b2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":97,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:25:07', '2022-11-19 12:25:07'),
('61ee8dcc-89f5-4a07-9761-a6700166fdec', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":245,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:20:24', '2022-11-21 16:20:24'),
('623d465d-6cef-4423-8eaf-04c958f64b60', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":206,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:58:28', '2022-11-21 15:58:28'),
('62c266e3-f5ce-45b9-ae61-8db3884a8933', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":112,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:10:54', '2022-11-19 15:10:54'),
('63d998ab-0ae5-47c1-9767-f81dd7a5a809', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":96,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:21:50', '2022-11-19 12:21:50'),
('647d915e-3edc-494d-975a-03919f4597e0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":300,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:51:22', '2022-11-22 10:51:22'),
('64a3cea5-c7d5-483d-872a-f69c2e31df5e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":361,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:11:54', '2022-11-23 13:11:54'),
('655034e1-5c7c-44ce-ac18-4c9f08745c3a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":15,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:32:30', '2022-11-17 17:32:30'),
('6923120f-ae1c-4e4e-9685-1892bd76c89a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":135,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:26:56', '2022-11-21 13:26:56'),
('6975e354-5535-4454-a367-b1fb976a33e3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":261,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:28:42', '2022-11-21 16:28:42'),
('697a38d6-4b61-4d4e-b64d-0a846c2e1d43', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":231,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:12:21', '2022-11-21 16:12:21'),
('69916343-5f35-46db-90e9-c3cb8f344fea', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":346,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:33:34', '2022-11-23 10:33:34'),
('69d57e3c-bef8-4a86-9d38-1c12ffc0a622', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":339,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:30:20', '2022-11-23 10:30:20'),
('6aa282b5-5ae1-43bc-b8be-607d00a7cdf8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":136,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:27:26', '2022-11-21 13:27:26'),
('6d9ce8f0-2b1a-46e2-81dd-9c00fd2692fe', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":172,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:41:19', '2022-11-21 15:41:19'),
('6ddbd816-85fa-4ce2-8806-fa0af27853ca', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":77,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:51:00', '2022-11-18 16:51:00'),
('6fdf84e7-2338-4edf-9c71-eaf8ee6c61d8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":362,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:13:47', '2022-11-23 13:13:47'),
('7088900c-f3b1-4985-97b6-fc85b75015f7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":51,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:04:14', '2022-11-18 16:04:14'),
('70ddf17d-eb4d-416e-a608-4dedba75fd22', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":267,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:58:33', '2022-11-21 17:58:33'),
('70ffca62-4fa4-4d49-9ee4-8653bb654558', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":168,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:40:15', '2022-11-21 15:40:15'),
('71d99c2a-3481-4538-ba07-a701cd245d5a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":323,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:27:49', '2022-11-22 11:27:49'),
('71ecf39f-d07a-4b43-84df-275b062809d2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":314,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:25:07', '2022-11-22 11:25:07'),
('72f69cf6-c888-4a71-8593-7788845956ff', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 3, '{\"lead_id\":\"370\",\"message\":\"Rajinder Singh you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:55', '2022-11-25 05:48:55'),
('736085aa-e359-4b65-92b1-40fea5de30f1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":199,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:52:49', '2022-11-21 15:52:49'),
('7478a084-842b-4055-98a8-809720ef9efc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":95,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:20:36', '2022-11-19 12:20:36'),
('74edde07-f259-4ff3-9000-778da3c00017', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":336,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 16:14:30', '2022-11-22 16:14:30'),
('7524cfef-5979-4987-8119-0d47cfbef174', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":63,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:22:16', '2022-11-18 16:22:16'),
('76addc32-688f-483d-b96c-60332a35c9dd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":218,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:04:33', '2022-11-21 16:04:33'),
('78635b6a-ed56-4fb7-8954-5fbedfc40e78', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":185,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:45:54', '2022-11-21 15:45:54'),
('78c825f4-bdd3-447a-9faa-850696056fff', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":357,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 11:26:13', '2022-11-23 11:26:13'),
('7a5ce9f4-45f2-41dd-a7d6-36f8ffd439e5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":330,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 13:11:22', '2022-11-22 13:11:22'),
('7b5c28ca-7a5a-4593-8377-ba2ae6b4d7e3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":205,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:58:12', '2022-11-21 15:58:12'),
('7d3fd4a2-aec0-4e5b-b7cb-a71c8482630a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":351,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:35:55', '2022-11-23 10:35:55'),
('7d4dd7dd-8abf-4e71-817e-7b2dbb4e8d32', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":243,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:18:38', '2022-11-21 16:18:38'),
('7e552e85-9c74-4977-90da-67ddc01881ad', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":317,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:03', '2022-11-22 11:26:03'),
('7ea37ec5-fa76-4691-ace0-9c57f9e6a8b3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":111,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:09:58', '2022-11-19 15:09:58'),
('7f18c376-2c7b-4bbf-bfbc-d224ab522728', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":238,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:14:58', '2022-11-21 16:14:58'),
('7fab24ae-bdfc-416d-9570-45e8f7efaa1e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":92,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:16:11', '2022-11-19 12:16:11'),
('8091b128-e2dc-4739-99f5-368e3351682a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":27,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:24:41', '2022-11-18 15:24:41'),
('80923c7c-0670-4479-a847-990e3913ffcc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":170,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:40:45', '2022-11-21 15:40:45'),
('82477bc0-6b8f-4712-b22a-5e37fc62a7c6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":329,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 12:12:08', '2022-11-22 12:12:08'),
('82734e72-6712-41c6-b6c1-c4ff545187ef', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":253,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:23:03', '2022-11-21 16:23:03'),
('8294212a-61c5-42a8-a1fe-275dbe571986', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":46,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:58:25', '2022-11-18 15:58:25'),
('82e04526-75cd-431b-915c-b25ae03aebbc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":17,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:35:48', '2022-11-17 17:35:48'),
('82ee5eaf-7d9c-4cd9-af47-17c97d227a23', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":13,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:28:57', '2022-11-17 17:28:57'),
('82f17ccd-6318-49dd-9857-7183adad97c3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":74,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:45:17', '2022-11-18 16:45:17'),
('8433b483-3a1c-4fe5-869d-2a02c53c8287', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":53,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:06:51', '2022-11-18 16:06:51'),
('85345cce-0b73-4711-9f53-a660a4cafae2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":257,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:27:00', '2022-11-21 16:27:00'),
('8588f16b-e16c-489d-bc64-94dc41d8cbb9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":296,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:49:52', '2022-11-22 10:49:52'),
('867b5ac9-d8f8-4992-96cc-63926c174554', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":181,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:33', '2022-11-21 15:44:33'),
('875a2426-34f8-4d5e-a7d1-aa31cccfbff5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":198,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:52:20', '2022-11-21 15:52:20'),
('89c804be-8278-4d07-9a1a-14f939844eab', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":182,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:54', '2022-11-21 15:44:54'),
('8ae9e6c8-83dc-4182-8b0d-1023e34b6320', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":291,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:47:48', '2022-11-22 10:47:48'),
('8b31b9b7-ed89-4d14-8892-dc184b042db0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":64,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:22:58', '2022-11-18 16:22:58'),
('8c49577d-7da6-468a-b946-07f498139d70', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":127,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:35:47', '2022-11-21 12:35:47'),
('8dab7c44-a597-4f1b-a92c-fe3b7f65a2b9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":55,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:09:04', '2022-11-18 16:09:04'),
('8e228331-ab68-426a-9c82-cc0670398596', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":105,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 13:17:37', '2022-11-19 13:17:37'),
('8e8d3a8a-3ecd-47ab-a6b6-8ebfd6b50b46', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":159,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:37:42', '2022-11-21 15:37:42'),
('8eef5c19-82e1-45ce-99cd-6a29c7f15e21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":114,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:13:20', '2022-11-19 15:13:20'),
('8fa98107-9040-40d7-92c9-05038d0aeb7a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":54,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:08:09', '2022-11-18 16:08:09'),
('8fc709fb-face-491a-a2cb-65ed5dfbce72', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":50,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:03:21', '2022-11-18 16:03:21'),
('8ffca9c5-6d20-48b6-93e6-594eb949a8fb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":202,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:53:44', '2022-11-21 15:53:44'),
('901f9d4e-e1af-4c63-a31b-7d4f29b83f31', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":137,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:29:03', '2022-11-21 13:29:03'),
('90a8f497-01e8-4886-8930-d500c36cb5c7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":4,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:21:58', '2022-11-17 13:21:58'),
('939fe0d7-05e9-4833-881c-3a0f9c341aed', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":158,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:37:24', '2022-11-21 15:37:24'),
('93bfecaf-3944-445f-ac74-9e970fa5bb2c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":1,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:12:24', '2022-11-17 13:12:24'),
('93c8ce90-3e12-4068-a8e4-b6854b9fc624', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":156,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:35:27', '2022-11-21 15:35:27'),
('93fc5441-02bf-466e-af85-dcbb3152f055', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":145,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:32:17', '2022-11-21 13:32:17'),
('93ffa156-7d3f-46f2-9df6-783098143748', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":11,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:04:17', '2022-11-17 17:04:17'),
('940472f7-2e8f-438e-96aa-99a505bd9ec0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":368,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:33:04', '2022-11-23 16:33:04'),
('9535a66d-9e6d-4e06-a74c-2b17fcc9ac21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":66,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:24:34', '2022-11-18 16:24:34'),
('95be2d46-2126-42a7-9159-609e6ba386ec', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":164,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:39:09', '2022-11-21 15:39:09'),
('96bb88b9-4143-4610-9e29-69598f1bcec3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":321,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:27:15', '2022-11-22 11:27:15');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('96c342ae-09d4-444d-b938-1da620eba72f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":40,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:50:25', '2022-11-18 15:50:25'),
('96fdb97f-9122-4098-b837-2091d977042d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":214,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:02:49', '2022-11-21 16:02:49'),
('974c84ae-9acf-4f30-9916-7443e3daa953', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":153,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:21:59', '2022-11-21 15:21:59'),
('97a2aa0f-b85c-4f9e-9bb7-8d64683592f5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":369,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:36:03', '2022-11-23 16:36:03'),
('97cd01ae-d8e5-414f-8a39-fde3efd00a0d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":163,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:38:54', '2022-11-21 15:38:54'),
('99bfa682-d7c3-42b7-b185-87f00d473f1f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":147,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:43:33', '2022-11-21 13:43:33'),
('99e322cc-46cb-48ad-a63b-21fc73bb58c4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":276,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:03:44', '2022-11-21 18:03:44'),
('9b383c50-b02f-4474-9b87-ec18b5f6a9b5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":3,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:19:40', '2022-11-17 13:19:40'),
('9cbd2618-da4e-4944-a46e-81a6cae86cb3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":122,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 17:53:35', '2022-11-19 17:53:35'),
('9cfc44e1-1ad8-4c96-9a58-95d49cc4526c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":65,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:23:37', '2022-11-18 16:23:37'),
('9d3bdf54-be9c-47b7-9e65-264c773fada8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":337,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:25:40', '2022-11-23 10:25:40'),
('9dd3243b-af05-45d5-99d9-3e0533d6129a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":230,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:11:12', '2022-11-21 16:11:12'),
('9e83f67c-261f-42eb-b522-1a16c3f52c21', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":331,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 13:59:38', '2022-11-22 13:59:38'),
('9f7fdfe0-a706-4b2a-ad5b-c91195a38808', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":251,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:22:05', '2022-11-21 16:22:05'),
('a0121497-dccf-46bd-b768-6c3eea788282', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":69,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:38:01', '2022-11-18 16:38:01'),
('a042a149-6b2b-4325-9ae1-c17d37e1f8fb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":152,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:20:18', '2022-11-21 15:20:18'),
('a1143ded-22e5-4655-b8fe-68741064a5b1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"336\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:13', '2022-11-22 18:51:13'),
('a1585437-463e-4a9e-8493-b745d1a8b51a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":151,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:05:46', '2022-11-21 15:05:46'),
('a1ee7be9-8a8f-4e69-9726-7aed8c1e31d1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":79,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 10:58:18', '2022-11-19 10:58:18'),
('a22ecb79-dfe4-4793-9294-8c7bcbfb1228', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":306,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:22:25', '2022-11-22 11:22:25'),
('a3f304c2-2ebb-4d14-a9d6-9fd64f93433b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":149,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:54:27', '2022-11-21 13:54:27'),
('a3f5d49e-4f1d-4ae3-ac1f-93affd2e6e77', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":120,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 17:38:00', '2022-11-19 17:38:00'),
('a498f680-a0c7-4471-96ec-8f192c1c70fb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":42,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:53:17', '2022-11-18 15:53:17'),
('a537dc23-e855-4627-b666-72309096caf1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":38,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:45:55', '2022-11-18 15:45:55'),
('a5662b98-155d-426d-b656-8efa56e4dd52', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":12,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:19:40', '2022-11-17 17:19:40'),
('a57c0789-8a4a-4f48-aaec-df8ee550b94c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":254,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:26:01', '2022-11-21 16:26:01'),
('a5c9b1fc-ebad-47dc-a957-b9bd0ceaac8f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":219,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:04:50', '2022-11-21 16:04:50'),
('a6243762-0a59-4983-bb6e-ad0736b58359', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":250,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:21:49', '2022-11-21 16:21:49'),
('a63e29c1-79ed-4c25-aac0-d1eac9236e49', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":355,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:38:18', '2022-11-23 10:38:18'),
('a6cde9b2-5028-4e3f-b0df-d6b7addef32e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":89,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:07:03', '2022-11-19 12:07:03'),
('a6e70975-c290-4207-92d5-adac1783d8e7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":220,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:05:11', '2022-11-21 16:05:11'),
('a70c1f10-9d48-40d0-a031-6a6fb7a97f3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":195,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:51:17', '2022-11-21 15:51:17'),
('a716fc85-2f2f-4c77-b64f-db21af355a6e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":224,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:08:57', '2022-11-21 16:08:57'),
('a71f998a-7632-46ae-9cc3-058df9f9dfe3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":282,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:05:21', '2022-11-21 18:05:21'),
('a72af504-7870-4fe1-9937-d46c82d326e1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":305,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:21:57', '2022-11-22 11:21:57'),
('a7880392-47d3-4aee-b7d6-597f58b7a11b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":25,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:20:01', '2022-11-18 15:20:01'),
('a9072a67-5fc2-4d9b-b290-07a561143ff5', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":335,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 15:32:51', '2022-11-22 15:32:51'),
('ab8804bf-9d9c-4c38-bcbd-f7d20abf4540', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":21,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:44:38', '2022-11-18 14:44:38'),
('abc9d6b6-013a-4a59-8479-9c13f9467bff', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":138,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:29:29', '2022-11-21 13:29:29'),
('ad6c369c-8dcf-4e23-9437-18eb0ce0fcdb', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":68,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:27:01', '2022-11-18 16:27:01'),
('aed5640a-9693-4acc-b0f3-3e354a934a26', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":268,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:58:55', '2022-11-21 17:58:55'),
('af9c1c91-514b-4b10-b687-e3fedd15c4f7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":101,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:32:10', '2022-11-19 12:32:10'),
('af9c9765-f7da-4201-9ab0-96a1de2b91c1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":133,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:23:34', '2022-11-21 13:23:34'),
('afd53823-edd0-4e9b-847d-06c154ef12ba', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":80,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 10:59:38', '2022-11-19 10:59:38'),
('b16496fe-c2ca-40a4-9e7a-5280d09ab3aa', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":33,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:35:06', '2022-11-18 15:35:06'),
('b1ce6bac-681c-4ae5-a781-7c94c3c290b1', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":334,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 14:56:11', '2022-11-22 14:56:11'),
('b1d0c745-7a3b-4a1b-997f-8debb4ca34ad', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":134,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:25:34', '2022-11-21 13:25:34'),
('b1daca5a-2696-4672-9156-0571ca87cdf9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":298,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:50:42', '2022-11-22 10:50:42'),
('b25cce70-57ac-48b7-99b2-6e2a447b77f8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":363,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:48:12', '2022-11-23 13:48:12'),
('b294f6e8-0065-4fa7-806d-b057dd4268bd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":246,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:20:26', '2022-11-21 16:20:26'),
('b2aeadd8-ef69-4c8b-a595-ae56e9511916', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":131,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:15:38', '2022-11-21 13:15:38'),
('b2b56b3a-4331-4a05-97bf-3cf391879a83', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":299,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:51:02', '2022-11-22 10:51:02'),
('b6a49e38-213a-4fa6-a1ba-4578b4467788', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":280,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:04:49', '2022-11-21 18:04:49'),
('b6c8b7eb-20d7-4b38-83d0-aea6f6e07e52', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":348,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:34:32', '2022-11-23 10:34:32'),
('b7381865-baa1-40e0-beae-c389c95e72c7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":236,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:14:20', '2022-11-21 16:14:20'),
('b8ee4d06-5ed3-4929-8270-feb1cd9ea5bd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":67,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:25:05', '2022-11-18 16:25:05'),
('b98e65b3-e1a7-4523-a913-49342acdce32', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":193,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:48:33', '2022-11-21 15:48:33'),
('b9beaac9-1b6d-46f0-8e7d-3b091fc02520', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":310,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:23:46', '2022-11-22 11:23:46'),
('ba432a42-5e09-46bb-9bfa-9b00e06c4720', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":264,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:34:08', '2022-11-21 16:34:08'),
('bb527d80-5d92-4aa0-8e4f-2989b9ae9a56', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":8,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 16:28:32', '2022-11-17 16:28:32'),
('bb6d9686-2600-4977-bff4-d8167a7818e9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":365,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:54:09', '2022-11-23 13:54:09'),
('bbf909c8-e20e-49c2-a941-370da215833f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":338,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:29:45', '2022-11-23 10:29:45'),
('bccd094b-05a1-4d10-9ae0-68e1db1bc70c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":360,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 13:06:55', '2022-11-23 13:06:55'),
('be59eaa8-9a54-4efa-921b-344801737f45', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":222,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:07:43', '2022-11-21 16:07:43'),
('bef13452-9158-499a-b353-17040bf4b056', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":98,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:26:19', '2022-11-19 12:26:19'),
('bf9f85ed-07ff-4bf0-baf7-c868cf3d6b39', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":103,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:36:08', '2022-11-19 12:36:08'),
('c0447817-036a-4fa3-9183-a4f9664a2ebf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":47,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:59:34', '2022-11-18 15:59:34'),
('c073a85f-462a-4439-9722-e3f4932e9127', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":124,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:29:12', '2022-11-21 12:29:12'),
('c0ca11aa-d785-4e1e-a857-2fda1f898a84', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":34,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:36:40', '2022-11-18 15:36:40'),
('c0cd92ef-2e6b-4c1c-b4fe-f871389f3864', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":272,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:02:35', '2022-11-21 18:02:35'),
('c0f1d851-f1a5-49ec-b477-4b7c9f2ac14b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":192,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:48:14', '2022-11-21 15:48:14'),
('c126c67a-dcb5-4499-8db1-f924d387af30', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":284,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:45:04', '2022-11-22 10:45:04'),
('c304d32b-78da-4bca-8b50-675edf432954', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":281,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:05:05', '2022-11-21 18:05:05'),
('c3d9f116-dc28-4267-b0db-a1de6a3f7076', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":212,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:02:09', '2022-11-21 16:02:09'),
('c4ddfb22-636e-4c9e-8b73-ff8d8f4ca030', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":32,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:34:04', '2022-11-18 15:34:04'),
('c4e654f0-1bb0-43ef-b0f0-2b62c0a3865d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":341,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:31:16', '2022-11-23 10:31:16'),
('c521812f-797a-4fe4-820d-77524fbe416d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":328,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 12:11:35', '2022-11-22 12:11:35'),
('c5ca10d2-f583-4b4c-a973-5bdb1a1b94b8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":48,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:01:22', '2022-11-18 16:01:22'),
('c66ae681-db17-4ece-be94-ede4798d103c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 5, '{\"lead_id\":\"333\",\"message\":\"Naresh Kumar you have assigned a new Lead\"}', NULL, '2022-11-22 18:53:18', '2022-11-22 18:53:18'),
('c7c93eba-3bcb-4cce-af19-80139ee57017', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":344,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:32:38', '2022-11-23 10:32:38'),
('c868b938-0f26-4177-a91d-7a57db0defbe', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":315,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:25:25', '2022-11-22 11:25:25'),
('c9713e01-1c7e-426c-b7fc-a4e9293390b6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"370\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:10', '2022-11-25 05:48:10'),
('cca678d6-078d-4712-9b07-bff27312fd20', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":155,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:35:07', '2022-11-21 15:35:07'),
('ce4376b6-ffae-446f-b99e-2888c30afe3c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":342,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:31:43', '2022-11-23 10:31:43'),
('ced90511-9376-4fb4-9850-58a1a3bc5789', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":108,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 14:25:11', '2022-11-19 14:25:11'),
('cf2316f1-64ae-4f15-9f74-bdbf6f660724', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"371\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-25 05:48:07', '2022-11-25 05:48:07'),
('cf60ac54-b678-4165-9bc7-34837c12e6dd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":175,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:42:40', '2022-11-21 15:42:40'),
('cfd256d5-2ead-4b8a-81ae-e6d98611e34e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":294,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:49:03', '2022-11-22 10:49:03'),
('d0b5a441-ed90-464f-9ed0-8d32a855a1e8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":129,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:13:42', '2022-11-21 13:13:42'),
('d1163153-eecc-41d8-9730-df96347d4828', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":45,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:56:40', '2022-11-18 15:56:40'),
('d1376074-20d2-41cd-86d8-03d95b909ad7', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 6, '{\"lead_id\":\"372\",\"message\":\"Mayank you have assigned a new Lead\"}', NULL, '2022-11-24 05:08:20', '2022-11-24 05:08:20'),
('d1bc3e27-90b5-478d-941d-fdc4b407ba62', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":58,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:12:22', '2022-11-18 16:12:22'),
('d25696bd-aa95-4d41-b4a3-320ab8604a18', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":130,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:15:06', '2022-11-21 13:15:06'),
('d2a736cd-ca19-438d-a598-e6f089030757', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":332,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 13:59:55', '2022-11-22 13:59:55'),
('d2d9bc95-e2a1-498d-8c14-def8cf5c2fec', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":350,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:35:27', '2022-11-23 10:35:27'),
('d3044c4c-4c45-4144-a1b8-7be165bbc234', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":372,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-24 10:16:18', '2022-11-24 10:16:18'),
('d310f0d4-9fe7-4527-acdf-907b6f6e6ace', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":102,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:33:33', '2022-11-19 12:33:33'),
('d36df434-584f-40c8-bee2-99b37eeac256', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":366,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 16:02:28', '2022-11-23 16:02:28'),
('d3a765eb-46d6-4b04-b5cb-f1df7facb40f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":266,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 17:58:09', '2022-11-21 17:58:09'),
('d3ddd1ac-5a46-4410-b7d7-96fd17889bdc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":104,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 12:38:05', '2022-11-19 12:38:05'),
('d41bc031-5698-4d8b-837f-b3283922ffdf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":309,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:23:24', '2022-11-22 11:23:24'),
('d4ad3a8a-937d-4773-9b28-98ece34e8c04', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":371,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-24 10:15:53', '2022-11-24 10:15:53'),
('d4dc3a19-d5da-421c-93d4-1c7d3492b086', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":241,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:17:56', '2022-11-21 16:17:56'),
('d5609958-29f3-4b8c-9eca-6db2628617aa', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":123,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:26:08', '2022-11-21 12:26:08'),
('d576e4f7-ef87-406c-9ed1-0b7a3b3f950b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":307,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:22:44', '2022-11-22 11:22:44'),
('d66dd611-e98b-48ba-8980-6a83a50d39e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":73,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:43:20', '2022-11-18 16:43:20'),
('d77ebd0a-bf40-4364-a19b-c8ca5a286a6b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":5,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 13:45:55', '2022-11-17 13:45:55'),
('d79b7d06-314c-441a-b595-d342c54b18f9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":356,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:46:55', '2022-11-23 10:46:55'),
('d831247f-28d5-4b4a-8018-861ded30969f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":150,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:58:49', '2022-11-21 13:58:49'),
('d88adb89-b0ba-4874-8087-2eebc726b6b2', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":171,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:41:02', '2022-11-21 15:41:02'),
('d89703cc-0961-4b23-8f90-5511f7452cf0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 4, '{\"lead_id\":\"335\",\"message\":\"Preeti Shukla you have assigned a new Lead\"}', NULL, '2022-11-22 18:51:16', '2022-11-22 18:51:16'),
('d8d2b743-2112-4faf-9d73-f45c5a805640', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":288,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:46:46', '2022-11-22 10:46:46'),
('d91ecebd-b8c4-4d1c-b809-d978d727c74d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":37,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:44:55', '2022-11-18 15:44:55'),
('d95cdceb-d799-4c84-9a95-74a64f2964af', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":333,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 14:01:01', '2022-11-22 14:01:01'),
('da2f166a-3486-46d5-a797-76f031c77b0b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":116,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:20:34', '2022-11-19 15:20:34'),
('da3c3720-1c1e-4fe9-8a65-2af313a95fea', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":287,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:46:21', '2022-11-22 10:46:21'),
('db1a692f-a435-405d-8253-774dea31e094', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":24,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:18:21', '2022-11-18 15:18:21'),
('dbd8f74c-836a-4dfa-9660-972e87c17a91', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":126,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 12:35:09', '2022-11-21 12:35:09'),
('dc0e508e-9dd8-4496-8ee6-158f57118054', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":259,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:28:04', '2022-11-21 16:28:04'),
('dc25dfb1-7fa3-4343-80d5-ce412684fbaf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":23,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 14:49:21', '2022-11-18 14:49:21'),
('dc317c72-c205-4f98-b4b7-59b4b1fd6c7e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":18,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 18:11:34', '2022-11-17 18:11:34'),
('dd77143e-0a8c-41a4-bc1d-00face9bc8c9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":154,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:34:18', '2022-11-21 15:34:18'),
('ddc03a31-d3d5-46ca-9be3-5aea64ea35c9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":173,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:41:35', '2022-11-21 15:41:35'),
('de395507-8fe1-411d-9639-7ee8fca12420', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":303,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:17:04', '2022-11-22 11:17:04'),
('df720317-6a35-4eb4-9b95-2c7e21022721', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":115,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:14:41', '2022-11-19 15:14:41'),
('dfd2effe-2542-48a6-99f5-5616f7bd6340', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":26,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:21:32', '2022-11-18 15:21:32'),
('e0a03c63-d695-49d3-ae0f-fa873b429f2c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":325,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:23', '2022-11-22 11:28:23'),
('e0e2ff81-ec6f-44b2-b064-209dd61ce72c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":316,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:25:42', '2022-11-22 11:25:42'),
('e0fb7dc6-346d-4c57-b81b-170c5ac1e1f8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":118,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 16:13:53', '2022-11-19 16:13:53'),
('e433d21c-91b8-439b-964a-c37401a0684a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":216,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:03:26', '2022-11-21 16:03:26'),
('e4424ec5-249a-4ff9-ac59-ece4db54da7b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":274,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:03:11', '2022-11-21 18:03:11'),
('e4b5dc86-55a1-4cf9-ab37-8d5ebccbb984', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":203,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:54:04', '2022-11-21 15:54:04'),
('e580b7cf-7415-40e1-85cb-cffb675a0e59', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":217,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:03:45', '2022-11-21 16:03:45'),
('e6697bfd-916b-4ee8-9a01-90c118883872', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":320,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:26:59', '2022-11-22 11:26:59'),
('e71ae930-3ee2-4ca3-8189-40977c91a542', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":311,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:24:05', '2022-11-22 11:24:05'),
('e9159c98-8b1d-4987-8f85-bd52aaf6a643', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":292,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:48:14', '2022-11-22 10:48:14'),
('e9213acc-3f89-455c-a21d-f904d5c8015b', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":7,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 14:17:26', '2022-11-17 14:17:26'),
('e9445be6-31a6-4783-ad22-5a49a3db77cf', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":297,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:50:18', '2022-11-22 10:50:18'),
('e950595c-852b-4f83-b962-cf1ff63d031d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":61,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:19:07', '2022-11-18 16:19:07'),
('ea09759d-d477-4a3c-bd56-412e5f3dd5df', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":139,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:29:53', '2022-11-21 13:29:53'),
('ea1c9436-49f2-45b0-8bda-d7dc0561ef5e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":75,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:46:11', '2022-11-18 16:46:11'),
('ea5f3cc2-2740-45c2-9f73-642c8ac4e018', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":180,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:18', '2022-11-21 15:44:18'),
('eae21f90-f0bf-4d7b-8b4d-2507eb70a344', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":322,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:27:32', '2022-11-22 11:27:32'),
('ec5bfde7-f673-488f-a8eb-e8ab031adac8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":110,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 15:09:09', '2022-11-19 15:09:09'),
('ecd172a3-82b1-42bc-97cf-711343b0239f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":49,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 16:02:27', '2022-11-18 16:02:27'),
('ed1a6798-54b8-4c8f-90af-4fb4e2df86f3', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":258,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:27:41', '2022-11-21 16:27:41'),
('ee0b4e03-482f-4dd7-a07d-d0f33a783cbd', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":30,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:28:32', '2022-11-18 15:28:32'),
('eed9a7c2-eb61-4f59-a3e0-1d233d505442', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":179,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:44:00', '2022-11-21 15:44:00'),
('efbcc53d-7ab6-4368-b1b2-e72e0b9607af', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":302,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:52:13', '2022-11-22 10:52:13'),
('f00a959e-4644-411e-8493-5ad08575face', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":211,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:00:07', '2022-11-21 16:00:07'),
('f2ee5e1f-4e89-42fb-a1c6-1bd327b284de', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":263,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:29:46', '2022-11-21 16:29:46'),
('f3815f1a-dad7-499a-a5cf-2f97e9893a3f', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":240,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:17:38', '2022-11-21 16:17:38'),
('f4063b29-4e58-4712-885d-550e8de92833', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":84,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:14:14', '2022-11-19 11:14:14'),
('f46c9306-3a5d-450d-be9a-99bff64b92be', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":6,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 14:13:57', '2022-11-17 14:13:57'),
('f528a288-1fa6-4efe-bced-13cc237c4e9e', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":43,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:54:07', '2022-11-18 15:54:07'),
('f53265dd-34b6-41e8-af1a-9224b1ab89c6', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":16,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-17 17:34:33', '2022-11-17 17:34:33'),
('f549787f-7fc9-4935-a0c8-137c072b19b0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":275,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:03:27', '2022-11-21 18:03:27'),
('f59400cc-ee8d-4eb0-ae83-4711fda564fc', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":82,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 11:07:31', '2022-11-19 11:07:31'),
('f5cc151c-0496-4e60-9445-06c51c84a86d', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":295,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:49:26', '2022-11-22 10:49:26'),
('f7ee99e8-494d-4cdd-96d8-822bc3630e50', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":359,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 12:59:45', '2022-11-23 12:59:45'),
('f86766a4-1442-4543-bcb6-77515fd1ce72', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":119,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-19 16:14:49', '2022-11-19 16:14:49'),
('f8715a24-b2bb-439c-87c3-e3882cd8b319', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":327,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 11:28:57', '2022-11-22 11:28:57'),
('f87783ff-9910-4feb-aa03-953b3a7746b8', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":290,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-22 10:47:28', '2022-11-22 10:47:28'),
('f89d6316-7836-4af6-90eb-a9c7cbad5f96', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":178,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:43:43', '2022-11-21 15:43:43'),
('f8cf4b7b-c1ab-4a56-b4c8-3c440413593a', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":204,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 15:54:28', '2022-11-21 15:54:28'),
('f9315308-9402-46bb-ba9b-6b8265024d01', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":283,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 18:05:57', '2022-11-21 18:05:57'),
('f94c4fb1-a1be-4e2c-bec0-ad54316110f9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":248,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:21:08', '2022-11-21 16:21:08'),
('fbbb017d-26dd-4fd0-9f8f-e4d28b52ce1c', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":340,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-23 10:30:46', '2022-11-23 10:30:46'),
('fc95b770-7126-47a9-99ac-529f973ca4e0', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":247,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 16:20:52', '2022-11-21 16:20:52'),
('fd0b0aa2-7ebd-44b4-9d9e-4a6d93098ec9', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":144,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-21 13:31:55', '2022-11-21 13:31:55'),
('fe691e1d-520f-40d0-9b5a-7093b47357e4', 'App\\Notifications\\AssignedLead', 'App\\Models\\User', 2, '{\"lead_id\":31,\"message\":\"Tarun Mehta you have assigned a new Lead\"}', NULL, '2022-11-18 15:31:26', '2022-11-18 15:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id`, `name`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Athletics', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(2, 'Wrestling', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(3, 'Boxing', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(4, 'Shooting', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(5, 'Kayaking & Canoeing', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(6, 'Rowing', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(7, 'Volleyball', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(8, 'Judo', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(9, 'Swimming', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(10, 'Basketball', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(11, 'Weightlifting', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(12, 'Table Tennis', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(13, 'Kabaddi', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(14, 'Football (Boys)', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(15, 'Football (Girls)', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(16, 'Tennis', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(17, 'Badminton', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(18, 'Hockey', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(19, 'Gymnastics', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(20, 'Kalaripayyattu', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(21, 'Yogasana', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(22, 'Mallakhamb', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(23, 'Archery', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(24, 'Kho Kho', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(25, 'Fencing', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(26, 'Cycling (Road)', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(27, 'Cycling (Track)', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(28, 'Thang-Ta', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(29, 'Gatka', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29'),
(30, 'Slalom', 0, '2023-01-09 14:12:29', '2023-01-09 14:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Here 0 is active user and 1 is blocked user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `code`, `flag`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', '$2y$10$AQqTUfeHXOHLb6eeGSjx7eYMkYglLH2DvJ39u7SXab.79qL8UvJAu', NULL, '0', NULL, NULL, NULL),
(11, 'Surya', '8285889741', 'surys@gmil.com', '$2y$10$1mnLTtRgYrsZwz8eb5se/eFZGrgVTftoT6qATseyLpijZ/0aG7kvi', '9', '0', NULL, NULL, '202301101919new-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `webdetails`
--

CREATE TABLE `webdetails` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_url` varchar(50) NOT NULL,
  `favicon` varchar(300) NOT NULL,
  `thumb_favicon` varchar(500) NOT NULL,
  `thumb_logo` varchar(500) NOT NULL,
  `logo` text NOT NULL,
  `title` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(55) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `return` text NOT NULL,
  `refund` text NOT NULL,
  `disclaimer` text NOT NULL,
  `wallet_policy` text NOT NULL,
  `faqs` text NOT NULL,
  `about` text NOT NULL,
  `fb_link` text NOT NULL,
  `twitter_link` text DEFAULT NULL,
  `insta_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `minimum_amount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `gst_number` text NOT NULL,
  `city` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `description` text NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `twakto` varchar(1500) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_code`
--
ALTER TABLE `access_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_documents`
--
ALTER TABLE `candidate_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_sort_name`
--
ALTER TABLE `category_sort_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webdetails`
--
ALTER TABLE `webdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_code`
--
ALTER TABLE `access_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `candidate_documents`
--
ALTER TABLE `candidate_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_sort_name`
--
ALTER TABLE `category_sort_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `webdetails`
--
ALTER TABLE `webdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
