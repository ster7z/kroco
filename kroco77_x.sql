-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-kroco77.alwaysdata.net
-- Generation Time: Dec 07, 2023 at 06:07 PM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kroco77_x`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `ID` bigint(20) NOT NULL,
  `content_type` int(11) NOT NULL DEFAULT 0,
  `content_title` varchar(200) NOT NULL,
  `content_description` text DEFAULT NULL,
  `content_slug` varchar(255) NOT NULL,
  `content_text` longtext DEFAULT NULL,
  `content_opt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`ID`, `content_type`, `content_title`, `content_description`, `content_slug`, `content_text`, `content_opt`) VALUES
(1, 0, 'Homepage', 'Homepage content', 'home', '', NULL),
(2, 0, 'Terms of Service', 'Terms of service', 'tos', '<h1>Terms of Service</h1><p>You accepted this terms by using this website.</p>', NULL),
(3, 0, 'Contact', 'Contact with us. Free!', 'contact', '<h1>Contact</h1>', NULL),
(4, 1, 'Youtube Video Downloader', 'Youtube Video Downloader', 'youtube-video-downloader', '', NULL),
(5, 1, 'Dailymotion Video Downloader', 'Dailymotion Video Downloader', 'dailymotion-video-downloader', '', NULL),
(6, 1, 'Espn Video Downloader', 'Espn Video Downloader', 'espn-video-downloader', '', NULL),
(7, 1, 'Odnoklassniki Video Downloader', 'Odnoklassniki Video Downloader', 'odnoklassniki-video-downloader', '', NULL),
(8, 1, 'Mashable Video Downloader', 'Mashable Video Downloader', 'mashable-video-downloader', '', NULL),
(9, 1, 'Tumblr Video Downloader', 'Tumblr Video Downloader', 'tumblr-video-downloader', '', NULL),
(10, 1, 'Buzzfeed Video Downloader', 'Buzzfeed Video Downloader', 'buzzfeed-video-downloader', '', NULL),
(11, 1, 'Instagram Video Downloader', 'Instagram Video Downloader', 'instagram-video-downloader', '', NULL),
(12, 1, 'Liveleak Video Downloader', 'Liveleak Video Downloader', 'liveleak-video-downloader', '', NULL),
(13, 1, 'Break Video Downloader', 'Break Video Downloader', 'break-video-downloader', '', NULL),
(14, 1, 'Twitter Video Downloader', 'Twitter Video Downloader', 'twitter-video-downloader', '', NULL),
(15, 1, 'Vimeo Video Downloader', 'Vimeo Video Downloader', 'vimeo-video-downloader', '', NULL),
(16, 1, 'Soundcloud Music Downloader', 'Soundcloud Music Downloader', 'soundcloud-music-downloader', '', NULL),
(17, 1, 'Izlesene Video Downloader', 'Izlesene Video Downloader', 'izlesene-video-downloader', '', NULL),
(18, 1, 'Tiktok Video Downloader', 'Tiktok Video Downloader', 'tiktok-video-downloader', '', NULL),
(19, 1, 'Bandcamp Music Downloader', 'Bandcamp Music Downloader', 'bandcamp-music-downloader', '', NULL),
(20, 1, 'Imgur Video Downloader', 'Imgur Video Downloader', 'imgur-video-downloader', '', NULL),
(21, 1, 'Imdb Video Downloader', 'Imdb Video Downloader', 'imdb-video-downloader', '', NULL),
(22, 1, 'Flickr Video Downloader', 'Flickr Video Downloader', 'flickr-video-downloader', '', NULL),
(23, 1, 'Facebook Video Downloader', 'Facebook Video Downloader', 'facebook-video-downloader', '', NULL),
(24, 1, '9GAG Video Downloader', '9GAG Video Downloader', '9gag-video-downloader', NULL, NULL),
(25, 1, 'TED Video Downloader', 'TED Video Downloader', 'ted-video-downloader', NULL, NULL),
(26, 1, 'Vkontakte Video Downloader', 'Vkontakte Video Downloader', 'vk-video-downloader', NULL, NULL),
(27, 1, 'Pinterest Video Downloader', 'Pinterest Video Downloader', 'pinterest-video-downloader', NULL, NULL),
(28, 1, 'Likee Video Downloader', 'Likee Video Downloader', 'likee-video-downloader', NULL, NULL),
(29, 1, 'Twitch Video Downloader', 'Twitch Video Downloader', 'twitch-video-downloader', NULL, NULL),
(30, 1, 'Blogger Video Downloader', 'Blogger Video Downloader', 'blogger-video-downloader', NULL, NULL),
(31, 1, 'Reddit Video Downloader', 'Reddit Video Downloader', 'reddit-video-downloader', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `ID` bigint(20) NOT NULL,
  `download_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `download_meta` longtext DEFAULT NULL,
  `download_links` longtext DEFAULT NULL,
  `download_source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
