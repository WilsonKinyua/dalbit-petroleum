-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2022 at 02:02 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dalbitpetroleum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dalbit Affiliates', '2021-12-05 19:15:01', '2021-12-05 19:15:01', NULL),
(2, 'Dalbit Trading', '2021-12-05 19:15:52', '2021-12-05 19:15:52', NULL),
(3, 'Dalbit Licensees', '2021-12-05 19:16:08', '2021-12-05 19:16:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `telephone_number`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'VZnXgNlh', 'aidenhogunst543@gmail.com', '8786449078', 'sYHTGNVFKCtiJLl', '2022-02-12 01:40:57', '2022-02-12 01:40:57', NULL),
(2, 'yilpYIjfHQPScuOw', 'aidenhogunst543@gmail.com', '5684339889', 'XdfEophFsQzAJaP', '2022-02-12 01:41:03', '2022-02-12 01:41:03', NULL),
(3, 'Dianna Swafford', 'swafford.dianna@hotmail.com', '(03) 5365 7734', 'I called you 2 times. WHy didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://sexlovers.club/', '2022-02-12 02:07:30', '2022-02-12 02:07:30', NULL),
(4, 'Login', 'elmira.razuvaeva.81@list.ru', '87419382719', 'Мы вынуждены принять меры  \r\n \r\nПодробнее по ссылке: https://forms.yandex.ru/u/610fe0c0a7a9d9645645/success/52416?AAAAAdalbitpetroleum.comBBBBB', '2022-02-12 05:46:40', '2022-02-12 05:46:40', NULL),
(5, 'vak', 'k3h06ulo@icloud.com', '81883446584', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y8jwkmmr', '2022-02-12 16:01:42', '2022-02-12 16:01:42', NULL),
(6, 'Bismark Kipngetich', 'kipbismark09@gmail.com', '+254797373080', 'I am writing to apply for the job,due to my  online search I found that you are the company of my dream,in the field of geoscience.\r\n     I study on diploma petroleum geoscience \r\nat Eldoret National Polytechnic and I get a grade of pass,I request for the opportunity so that I can acquire more skill as I have study on the theory part.\r\n             Should you be interested in my qualification, please do not hesitate to contact me 0797373080', '2022-02-12 23:18:52', '2022-02-12 23:18:52', NULL),
(7, 'Bismark Kipngetich', 'kipbismark09@gmail.com', NULL, 'I am writing to apply for the job,due to my  online search I found that you are the company of my dream,in the field of geoscience.\r\n     I study on diploma petroleum geoscience \r\nat Eldoret National Polytechnic and I get a grade of pass,I request for the opportunity so that I can acquire more skill as I have study on the theory part.\r\n             Should you be interested in my qualification, please do not hesitate to contact me 0797373080', '2022-02-12 23:19:16', '2022-02-12 23:19:16', NULL),
(8, 'Bismark Kipngetich', 'kipbismark09@gmail.com', '+254797373080', 'I am writing to apply for the job,due to my  online search I found that you are the company of my dream,in the field of geoscience.\r\n     I study on diploma petroleum geoscience \r\nat Eldoret National Polytechnic and I get a grade of pass,I request for the opportunity so that I can acquire more skill as I have study on the theory part.\r\n             Should you be interested in my qualification, please do not hesitate to contact me 0797373080', '2022-02-12 23:19:43', '2022-02-12 23:19:43', NULL),
(9, 'Bismark Kipngetich', 'kipbismark09@gmail.com', '+254797373080', 'I am writing to apply for the job,due to my  online search I found that you are the company of my dream,in the field of geoscience.\r\n     I study on diploma petroleum geoscience \r\nat Eldoret National Polytechnic and I get a grade of pass,I request for the opportunity so that I can acquire more skill as I have study on the theory part.\r\n             Should you be interested in my qualification, please do not hesitate to contact me 0797373080', '2022-02-12 23:21:52', '2022-02-12 23:21:52', NULL),
(10, 'Karen Keene', 'karen.keene@outlook.com', '69 613 72 29', 'The world\'s best fantasy sex game is here.\r\n\r\nYou will never find such an amazing sex game anywhere.\r\n\r\nClick here to start playing.\r\n\r\nhttps://sexlovers.club/game/play', '2022-02-14 02:19:44', '2022-02-14 02:19:44', NULL),
(11, 'Horny Shriya', 'tudor.eugenio@googlemail.com', '9043558989', 'I called you 2 times yesterday. I\'m very horny. I need a guy to satisfy me. \r\n\r\nCall me by clicking the link below.\r\n\r\nhttps://sexlovers.club/', '2022-02-15 03:32:30', '2022-02-15 03:32:30', NULL),
(12, 'vak', 'v693ni4w@icloud.com', '85992259836', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/ydy2m2b3', '2022-02-15 05:11:02', '2022-02-15 05:11:02', NULL),
(13, 'Login5627', 'b.kosterina@inbox.ru', '85721728378', 'Aктивaция счета  \r\nПодробнее по ссылке: https://forms.yandex.ru/u/610fe0c0a7a9d9645645/success/08441?AAAAAdalbitpetroleum.comBBBBB', '2022-02-15 23:53:02', '2022-02-15 23:53:02', NULL),
(14, 'Lynette Wyselaskie', 'lynette.wyselaskie43@hotmail.com', '(03) 5327 1142', 'I called you 2 times. WHy didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://sexlovers.club/', '2022-02-16 04:03:30', '2022-02-16 04:03:30', NULL),
(15, 'bs.eh5@freeallapp.com', '4mfarhani42@suppm.site', '04.31.24.40.34', 'Submit your site to over 1000 directories all with one click here> https://1mdr.short.gy/submityoursite', '2022-02-16 23:37:44', '2022-02-16 23:37:44', NULL),
(16, 'Jere D\'Albertis', 'dalbertis.jere@googlemail.com', '0351 3554794', 'I called you 2 times. WHy didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://sexlovers.club/', '2022-02-17 11:40:12', '2022-02-17 11:40:12', NULL),
(17, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website dalbitpetroleum.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-02-17 23:53:52', '2022-02-17 23:53:52', NULL),
(18, 'Olivia Jackson', 'olivia@backlinkpro.club', '081 937 56 53', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to dalbitpetroleum.com from our website that has a Moz Domain Authority of 50?\r\n\r\nWe charge just $30 (USD) to be paid via Paypal, card, or Payoneer. This is a one-time fee, so there are no extra charges and the link is permanent.\r\n\r\nIf you\'d like to know more about the site, please reply to this email and we can discuss further.\r\n\r\nKind Regards,\r\nOlivia', '2022-02-19 01:01:22', '2022-02-19 01:01:22', NULL),
(19, 'RcIXPEWDsUjbMod', 'gerardogemma82@gmail.com', '4512341114', 'UMNviGbfgLR', '2022-02-20 12:58:45', '2022-02-20 12:58:45', NULL),
(20, 'ZfnJeuBd', 'gerardogemma82@gmail.com', '9373350866', 'gMyNGisbq', '2022-02-20 12:58:52', '2022-02-20 12:58:52', NULL),
(21, 'Leif Humffray', 'leif.humffray@gmail.com', NULL, 'If you ever need more social audience for dalbitpetroleum.com, we can run Facebook Traffic campaigns with this service: https://www.seo-treff.de/product/country-targeted-traffic/', '2022-02-21 00:07:35', '2022-02-21 00:07:35', NULL),
(22, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website dalbitpetroleum.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at dalbitpetroleum.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-02-22 02:25:55', '2022-02-22 02:25:55', NULL),
(23, '4mfarhani42@suppm.site', '4mfarhani42@suppm.site', '617-599-5179', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://1mdr.short.gy/submityoursite', '2022-02-23 12:36:35', '2022-02-23 12:36:35', NULL),
(24, 'Van Holliman', 'van.holliman@gmail.com', '06-61161670', 'I called you 2 times. WHy didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://sexlovers.club/', '2022-02-24 07:18:50', '2022-02-24 07:18:50', NULL),
(25, 'Mario', 'mario.macandie@hotmail.com', '077 1999 8211', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nBest regards, \r\n\r\nMario\r\nDalbit Petroleum — Fuel Supply & Distribution', '2022-02-24 16:55:21', '2022-02-24 16:55:21', NULL),
(26, 'SonyaMap', 'woodthighgire1988@gmail.com', '85939552373', 'Hey, I\'m bored! My contacts: https://buktrk.com/click?o=6&a=1036', '2022-02-24 20:48:29', '2022-02-24 20:48:29', NULL),
(27, 'Ranker SEO', 'rhoads.declan@yahoo.com', '0457-6695581', 'Hello, \r\n\r\nGreetings from Ranker SEO.\r\n\r\nAre you looking for a genuine SEO service to rank your website top on Google? Are you cheated by fake SEO companies? \r\n\r\nYou have found an affordable legitimate SEO agency to rank your website.\r\n\r\nWe have ranked 100s of websites such as blogs, shopify stores, ecommerce websites, adult websites, saas websites, etc. You can reach more customers by utilizing our backlinks.\r\n\r\nFor real proof, you can visit our website and check out. Contact us for more details.\r\n\r\nOur Skype ID: support@ranker.one\r\nOur Website: https://www.ranker.one\r\n\r\nThanks & Regards\r\nRanker SEO\r\n\r\nIf you don\'t like to receive our messages, you can unsubscribe by click here https://www.ranker.one/unsubscribe/?site=dalbitpetroleum.com', '2022-02-26 04:02:53', '2022-02-26 04:02:53', NULL),
(28, 'asdasda', 'asdasdas@dasdasdas.asdas', '123123123123123', '12312312312312312', '2022-02-26 16:31:58', '2022-02-26 16:31:58', NULL),
(29, 'KaymotdDracy', 'bruk.epetweson543@gmail.com', '88773637261', 'Hi. My new naked video, I enlarged my tits and ass, as you asked https://datingtorrid.top/robot/?u=wh5kd06&o=qxpp80k', '2022-02-27 19:33:29', '2022-02-27 19:33:29', NULL),
(30, 'Ranker SEO', 'jocelyn.musselman97@gmail.com', '09931 77 49 63', 'Hello, Greetings from Ranker SEO.\r\n\r\nAre you looking for a genuine SEO service to rank your website top on Google? Are you cheated by fake SEO companies? \r\n\r\nYou have found an affordable legitimate SEO agency to rank your website.\r\n\r\nWe have ranked 100s of websites such as blogs, shopify stores, ecommerce websites, adult websites, saas websites, etc. You can reach more customers by utilizing our backlinks.\r\n\r\nFor real proof, you can visit our website and check out. Contact us for more details.\r\n\r\nOur Skype ID: live:.cid.b33532543daf017b\r\nOur Website: https://www.rankerseo.one\r\n\r\nThanks & Regards\r\nRanker SEO', '2022-03-01 20:18:03', '2022-03-01 20:18:03', NULL),
(31, 'hregina.mugue@fwhyhs.com', 'bs.eh5@freeallapp.com', '06-50749914', 'Free submission of your new website to over 1000 business directories here https://1mdr.short.gy/submityoursite', '2022-03-02 01:02:25', '2022-03-02 01:02:25', NULL),
(32, 'Ricardo', 'mcmichael.ricardo@gmail.com', '078 8983 9411', 'Hey there \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: https://caredogbest.com\r\n \r\nMany Thanks, \r\n \r\nRicardo\r\nDalbit Petroleum — Fuel Supply & Distribution', '2022-03-02 11:25:13', '2022-03-02 11:25:13', NULL),
(33, 'vak', 'fxq4646i@gmail.com', '82598216635', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y879mo3d', '2022-03-04 05:41:44', '2022-03-04 05:41:44', NULL),
(34, 'xlpweGZImPtCWX', 'bijoykhanshhx@gmail.com', '4983885328', 'viroUphAl', '2022-03-04 09:10:12', '2022-03-04 09:10:12', NULL),
(35, 'MFGSiyAPYLk', 'bijoykhanshhx@gmail.com', '4294092822', 'UbHkunhwVmWKO', '2022-03-04 09:10:39', '2022-03-04 09:10:39', NULL),
(36, 'eMzcUnCyH', 'bijoykhanshhx@gmail.com', '6952247921', 'iMJquZBtAKF', '2022-03-04 09:11:01', '2022-03-04 09:11:01', NULL),
(37, 'GxkwnlbhTJIH', 'bijoykhanshhx@gmail.com', '6007437503', 'KeQrLUhiTmD', '2022-03-04 09:11:08', '2022-03-04 09:11:08', NULL),
(38, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website dalbitpetroleum.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-03-05 02:28:44', '2022-03-05 02:28:44', NULL),
(39, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with dalbitpetroleum.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out dalbitpetroleum.com.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-03-05 07:44:40', '2022-03-05 07:44:40', NULL),
(40, 'nsamuelvale101@yaungshop.com', 'umonircio@joinm3.com', '0318 7380384', 'Add your site to 1000 business directories with one click here-> https://bit.ly/submityoursite1000', '2022-03-05 10:10:05', '2022-03-05 10:10:05', NULL),
(41, 'vak', 'mf2qhxov@icloud.com', '84632857226', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/ybmsfjnw', '2022-03-07 05:25:57', '2022-03-07 05:25:57', NULL),
(42, 'Ramgopal Malav', 'ramgopalmalav94@gmail.com', '8158292191', 'Dear Sir,\r\nI am RamGopal Malav,Currently I am working in Sterling Oil Exploration Energy Production Corporation Limited Nigeria in Crude Operations,If any vacancy available in Oil and Gas please let me know.', '2022-03-07 11:17:54', '2022-03-07 11:17:54', NULL),
(43, 'Ramgopal Malav', 'ramgopalmalav94@gmail.com', '8158292191', 'Dear Sir,\r\nI am RamGopal Malav,Currently I am working in Sterling Oil Exploration Energy Production Corporation Limited Nigeria in Crude Operations,If any vacancy available in Oil and Gas please let me know.', '2022-03-07 11:18:01', '2022-03-07 11:18:01', NULL),
(44, 'Nancy Osullivan', 'nancy@datalist.biz', '(03) 9256 0130', 'Hello,\r\n\r\nIt is with sad regret to inform you that DataList.biz is shutting down. We have made all our databases available for you at a one-time fee.\r\n\r\nYou can visit us on DataList.biz\r\n\r\nRegards.\r\nNancy', '2022-03-10 01:36:25', '2022-03-10 01:36:25', NULL),
(45, 'nsamuelvale101@yaungshop.com', '3chawki.berrada@onlyu.link', '67 174 62 34', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://1mdr.short.gy/add-your-website', '2022-03-10 14:17:04', '2022-03-10 14:17:04', NULL),
(46, 'vak', 'qsvjo3bl@gmail.com', '84335572744', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/yacu3wzd', '2022-03-10 15:02:41', '2022-03-10 15:02:41', NULL),
(47, 'Fidelia', 'fidelia.swinford@hotmail.com', '310-896-5706', 'Hey\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.store\r\n\r\nBest Wishes,\r\n\r\nFidelia', '2022-03-10 21:50:53', '2022-03-10 21:50:53', NULL),
(48, 'bBvFrEULTuaP', 'leek05089@gmail.com', '5559631873', 'ASqocGJPB', '2022-03-11 00:13:21', '2022-03-11 00:13:21', NULL),
(49, 'shzVBfTNturYIL', 'leek05089@gmail.com', '4273789066', 'JBLZmTIVRYqtew', '2022-03-11 00:13:32', '2022-03-11 00:13:32', NULL),
(50, 'nyloBwqkzTvI', 'leek05089@gmail.com', '7230023528', 'GWNUwglkqDjMPuH', '2022-03-11 00:14:17', '2022-03-11 00:14:17', NULL),
(51, 'gVnZswTBICdzy', 'leek05089@gmail.com', '9163765283', 'RdgfYNnpwit', '2022-03-11 00:14:28', '2022-03-11 00:14:28', NULL),
(52, 'Dana', 'boren.dana36@gmail.com', '0660 906 17 37', 'Hello there\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.store\r\n\r\nThank You,\r\n\r\nDana', '2022-03-11 21:42:15', '2022-03-11 21:42:15', NULL),
(53, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found dalbitpetroleum.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-03-13 04:24:32', '2022-03-13 04:24:32', NULL),
(54, 'vak', '48il4r8i@yahoo.com', '82398858488', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y7gpf9gu', '2022-03-14 13:46:49', '2022-03-14 13:46:49', NULL),
(55, 'Cortez', 'info@dalbitpetroleum.com', '023-5188793', 'Hello there \r\n\r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\n\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here:  https://medicopostura.com\r\n\r\nTo your success, \r\n \r\nCortez\r\nDalbit Petroleum — Fuel Supply & Distribution', '2022-03-15 02:22:49', '2022-03-15 02:22:49', NULL),
(56, 'NataliaRit', 'nataliaRit@aol.com', '+380 2620389552', 'Ηеllо аll, guуѕ! Ι know, my mеѕѕage may bе too ѕресifiс,\r\nВut my sіster fоund nіcе mаn һere and tһеу married, ѕo һоw about mе?ǃ :)\r\nI аm 23 уеarѕ old, Νаtаlіa, frоm Ukraіnе, I knоw Еnglіѕh and Gеrmаn languagеѕ alѕо\r\nAnd... I һavе spесіfiс dіsease, namеd nymphоmаnіa. Wһо knоw wһat іѕ thіs, cаn understаnd me (bеttеr to say it іmmеdiatеlу)\r\nΑh yеѕ, Ι cооk vеrу tаstуǃ аnd Ι love not оnlу cоok ;))\r\nIm reаl gіrl, not рrоѕtіtutе, аnd looking for ѕerіouѕ аnd hоt rеlationshір...\r\nΑnywaу, уou cаn find mу prоfile һеre: #lіnk', '2022-03-15 12:46:34', '2022-03-15 12:46:34', NULL),
(57, 'bchakka111975s@ronell.me', 'umonircio@joinm3.com', '0486 81 95 02', 'Submit your site to over 1000 advertising websites for free now https://1mdr.short.gy/submit-your-site', '2022-03-15 20:48:32', '2022-03-15 20:48:32', NULL),
(58, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with dalbitpetroleum.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out dalbitpetroleum.com.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-03-17 19:17:10', '2022-03-17 19:17:10', NULL),
(59, 'Rusty Stallcup', 'rusty@datalist.biz', '0386 3501944', 'Hello,\r\n\r\nIt is with sad regret to inform you that DataList.biz is shutting down. We have made all our databases available for you at a one-time fee.\r\n\r\nYou can visit us on DataList.biz\r\n\r\nRegards.\r\nRusty', '2022-03-17 20:05:20', '2022-03-17 20:05:20', NULL),
(60, 'Gilbertscups', 'rabchat213@yandex.ru', '83769343385', 'Best Online Сasinos \r\nSlоts, Frееspin, Рoker, and many games. \r\nBig bonus to everyone! \r\n \r\nhttps://tinyurl.com/22eh8bne', '2022-03-19 21:40:08', '2022-03-19 21:40:08', NULL),
(61, 'Login3345', 'ilya.grumkov@list.ru', '83281529851', 'Выплата на карту № 2992 **** **** **** ЗАВЕРШЕНА  \r\n \r\nПодробнее по ссылке: https://forms.yandex.ru/u/jfsz2f687d1pb48rfks4/success/?AAAAAdalbitpetroleum.comBBBBB', '2022-03-21 11:25:45', '2022-03-21 11:25:45', NULL),
(62, 'vnatasha.sunaina4@tahugejrot.buzz', 'roussama.ararouci@ldwdkj.com', '0472 40 55 41', 'Congrats on your new site, get it listed here for free and we\'ll start sending people to your site https://bit.ly/submityoursite1000', '2022-03-22 01:35:54', '2022-03-22 01:35:54', NULL),
(63, 'Steve -', 'info@reallygreatdigital.marketing', '555 555 1212', 'I was reading your site at dalbitpetroleum.com...\r\n\r\nI thought your website was very beautiful (nice job!) but I noticed that you weren\'t ranking well for some or all of your keywords.  Because you aren\'t ranking for all of your keywords you are missing out on business and opportunities because peopel can\'t find you when they type in those keywords into Google.\r\n\r\nI\'m part of a team of leading digital marketing experts with over 25 years experience. Combined, we have hundreds of years of experience. We have more experience than almost anyone in the business and have worked with hundreds of major companies, universities, celebrities, non-profits, and mom and pop businesses, including Fortune 50 and Fortune 500 corporations. We are looking for businesses, organizations, and people who want to improve their Google ranking so that more of whoever/whatever you want to find you, can find you.\r\n\r\nIt\'s not enough in 2022 to just rank for your name or company name. To get new customers and for people to find your website you need to rank for the keywords in your niche, that customers are typing into Google every second. In fact, in 2022 there are over 99,000 searches every second! And if you are not ranked then you are losing this business, money, and opportunity to your competitors.\r\n\r\n\r\nForbes Magazine states that:\r\n\r\n***91% of online adults use search engines to find information on the web.\r\n\r\n***65 percent of people see online search as the most trusted source of information about people and companies. That’s a higher level of trust than any other online or offline source.\r\n\r\n***Nearly 50% of US adults who Google themselves say the results aren’t positive.\r\n\r\n***93% of searchers never go past the first page, instead using only the first 10 search results to form their impression.\r\n\r\n\r\nJust read these articles in the Wall Street Journal to see how important Google ranking is, especially after the pandemic.\r\nhttps://www.wsj.com/articles/how-covid-19-supercharged-the-advertising-triopoly-of-google-facebook-and-amazon-11616163738\r\nhttps://www.wsj.com/articles/SB117856222924394753\r\n\r\nAs you probably know, it\'s become a very competitive world in the Google ranking and digital marketing arena, but we are here to help you stand above the rest and achieve your website goals. We have more experience than nearly anyone out there so we can help you defeat your competitors and get the success you deserve.\r\n\r\nSo, if you are serious about your online presence, and why wouldn\'t you be if you went to all the work to create a website, and want to rank higher I can offer you a free ranking review of your website to go over the mistakes and errors and omissions we saw when visiting your site that prevents you from ranking well in Google.  Then, just to prove ourselves to you, we will rank your Facebook page on the 1st page of Google, for a keyword of our choosing, for absolutely free.  Then, after we have proved ourselves to you with an easy keyword, you can decide if you want to work with us for your actual keywords.  We will also help you select better keywords so you aren\'t trying to rank for impossible keywords.\r\n\r\nWe have generated millions for our customers over the years and are only looking for those who are serious and looking to compete and succeed right now with their online presence and want to rank higher and are ready to get started today. We only have a limited number of new customer spots, so if you are not serious about ranking higher and earning more then you can remove your URLs from our system at https://unsubscribeblockade.com/ (Only enter your website URL/link since we do not send emails.)  But if you are serious, keep reading.\r\n\r\nWe succeed by making you succeed.\r\n\r\nJust hit reply, or contact us via email at info@reallygreatdigital.marketing, or fill out the form on our website at https://reallygreatdigital.marketing to take advantage of this valuable free, no obligation, SEO ranking review to go over how to make your website rank better in Google and rank your Facebook page for free.', '2022-03-22 04:43:03', '2022-03-22 04:43:03', NULL),
(64, 'Rupesh Kumar Sharma', 'rupesh19772003@yahoo.co.in', '09998013159', 'Dear Sir,\r\n\r\nGreetings,\r\n\r\nI had received a job offer from this overseas job consultant in name of Your Company,\r\n\r\nPlease verify is it real or fake.\r\n\r\nPlease see the trail mail attached.  \r\n\r\n Regards, \r\n Rupesh Kumar Sharma\r\n Surat-395009,\r\n Gujarat.\r\n INDIA. \r\n Mob.: +91 9998013159\r\n\r\n\r\n\r\nHide original message\r\n----- Forwarded message -----\r\nFrom: ocean khurana <ocean.elexesoverseas@gmail.com>\r\nTo: \"rupesh19772003@yahoo.co.in\" <rupesh19772003@yahoo.co.in>\r\nSent: Tuesday, 22 March, 2022, 02:12:49 pm IST\r\nSubject: SHORTLISTED FOR TANZANIA\r\n\r\nELEXES OVERSEAS\r\n\r\nLOCATION - Indore, Madhya Pradesh\r\n\r\nWe are pleased to inform you that we would like to offer you the [QA/QC ENGINEER] position. We believe your past experience and strong specific skills will be an asset to our company.\r\n\r\nWEB SITE -  https://www.elexesoverseas.com/\r\n\r\nABOUT COMPANY\r\n\r\nEstablished in 2002, Dalbit supplies and distributes petroleum products and services across East, Central and Southern Africa.\r\n\r\n\r\nLOCATION - TANZANIA\r\n\r\nWEB SITE -   www.dalbitpetroleum.com\r\n\r\n\r\n\r\n\r\nSALARY PACKAGE OFFER - 2000 US Dollar- 6000 US Dollar (depends on your interview and experience. Rate shall be paid for scheduled work days in which associates perform work.\r\n\r\nfirst you forward the all required documents on my mail id and after your documents verification you get a call from our side for the next procedure.\r\n\r\nRequired Documents are mentioned below:\r\n\r\nv  Updated CV\r\n\r\nv  Academic Certificates (10th, 12th,    \r\nGraduation/Professional).\r\n\r\nv  Passport Scan Copy\r\n\r\nv  Experience Letter\r\n\r\nv  Offer letter of previous company\r\n\r\nv  Salary Slips\r\n\r\n \r\n\r\nPlease respond to this email to let us know if you would like to accept the position and all the process about this job.\r\n\r\nI look forward to hearing from you.\r\n\r\nOCEAN KHURANA\r\nweb-mail:- elexesoverseas.com\r\ncontact No.:- 8699968228\r\nE-mail:- info@elexesoverseas.com', '2022-03-22 19:11:50', '2022-03-22 19:11:50', NULL),
(65, 'Rupesh Kumar Sharma', 'rupesh19772003@yahoo.co.in', '09998013159', 'Dear Sir,\r\n\r\nGreetings,\r\n\r\nI had received a job offer from this overseas job consultant in name of Your Company,\r\n\r\nPlease verify is it real or fake.\r\n\r\nPlease see the trail mail attached.  \r\n\r\n Regards, \r\n Rupesh Kumar Sharma\r\n Surat-395009,\r\n Gujarat.\r\n INDIA. \r\n Mob.: +91 9998013159\r\n\r\n\r\n\r\nHide original message\r\n----- Forwarded message -----\r\nFrom: ocean khurana <ocean.elexesoverseas@gmail.com>\r\nTo: \"rupesh19772003@yahoo.co.in\" <rupesh19772003@yahoo.co.in>\r\nSent: Tuesday, 22 March, 2022, 02:12:49 pm IST\r\nSubject: SHORTLISTED FOR TANZANIA\r\n\r\nELEXES OVERSEAS\r\n\r\nLOCATION - Indore, Madhya Pradesh\r\n\r\nWe are pleased to inform you that we would like to offer you the [QA/QC ENGINEER] position. We believe your past experience and strong specific skills will be an asset to our company.\r\n\r\nWEB SITE -  https://www.elexesoverseas.com/\r\n\r\nABOUT COMPANY\r\n\r\nEstablished in 2002, Dalbit supplies and distributes petroleum products and services across East, Central and Southern Africa.\r\n\r\n\r\nLOCATION - TANZANIA\r\n\r\nWEB SITE -   www.dalbitpetroleum.com\r\n\r\n\r\n\r\n\r\nSALARY PACKAGE OFFER - 2000 US Dollar- 6000 US Dollar (depends on your interview and experience. Rate shall be paid for scheduled work days in which associates perform work.\r\n\r\nfirst you forward the all required documents on my mail id and after your documents verification you get a call from our side for the next procedure.\r\n\r\nRequired Documents are mentioned below:\r\n\r\nv  Updated CV\r\n\r\nv  Academic Certificates (10th, 12th,    \r\nGraduation/Professional).\r\n\r\nv  Passport Scan Copy\r\n\r\nv  Experience Letter\r\n\r\nv  Offer letter of previous company\r\n\r\nv  Salary Slips\r\n\r\n \r\n\r\nPlease respond to this email to let us know if you would like to accept the position and all the process about this job.\r\n\r\nI look forward to hearing from you.\r\n\r\nOCEAN KHURANA\r\nweb-mail:- elexesoverseas.com\r\ncontact No.:- 8699968228\r\nE-mail:- info@elexesoverseas.com', '2022-03-22 19:12:05', '2022-03-22 19:12:05', NULL),
(66, 'Rupesh Kumar Sharma', 'rupesh19772003@yahoo.co.in', '09998013159', 'Dear Sir,\r\n\r\nGreetings,\r\n\r\nI had received a job offer from this overseas job consultant in name of Your Company,\r\n\r\nPlease verify is it real or fake.\r\n\r\nPlease see the trail mail attached.  \r\n\r\n Regards, \r\n Rupesh Kumar Sharma\r\n Surat-395009,\r\n Gujarat.\r\n INDIA. \r\n Mob.: +91 9998013159\r\n\r\n\r\n\r\nHide original message\r\n----- Forwarded message -----\r\nFrom: ocean khurana <ocean.elexesoverseas@gmail.com>\r\nTo: \"rupesh19772003@yahoo.co.in\" <rupesh19772003@yahoo.co.in>\r\nSent: Tuesday, 22 March, 2022, 02:12:49 pm IST\r\nSubject: SHORTLISTED FOR TANZANIA\r\n\r\nELEXES OVERSEAS\r\n\r\nLOCATION - Indore, Madhya Pradesh\r\n\r\nWe are pleased to inform you that we would like to offer you the [QA/QC ENGINEER] position. We believe your past experience and strong specific skills will be an asset to our company.\r\n\r\nWEB SITE -  https://www.elexesoverseas.com/\r\n\r\nABOUT COMPANY\r\n\r\nEstablished in 2002, Dalbit supplies and distributes petroleum products and services across East, Central and Southern Africa.\r\n\r\n\r\nLOCATION - TANZANIA\r\n\r\nWEB SITE -   www.dalbitpetroleum.com\r\n\r\n\r\n\r\n\r\nSALARY PACKAGE OFFER - 2000 US Dollar- 6000 US Dollar (depends on your interview and experience. Rate shall be paid for scheduled work days in which associates perform work.\r\n\r\nfirst you forward the all required documents on my mail id and after your documents verification you get a call from our side for the next procedure.\r\n\r\nRequired Documents are mentioned below:\r\n\r\nv  Updated CV\r\n\r\nv  Academic Certificates (10th, 12th,    \r\nGraduation/Professional).\r\n\r\nv  Passport Scan Copy\r\n\r\nv  Experience Letter\r\n\r\nv  Offer letter of previous company\r\n\r\nv  Salary Slips\r\n\r\n \r\n\r\nPlease respond to this email to let us know if you would like to accept the position and all the process about this job.\r\n\r\nI look forward to hearing from you.\r\n\r\nOCEAN KHURANA\r\nweb-mail:- elexesoverseas.com\r\ncontact No.:- 8699968228\r\nE-mail:- info@elexesoverseas.com', '2022-03-22 19:12:24', '2022-03-22 19:12:24', NULL),
(67, 'Jessie Montenegro', 'jessie', '+1 304-873-4360', 'It is with sad regret to inform you DataList.biz is shutting down on 25 March 2022. \r\n\r\nWe have made available databases per country for all companies available.. \r\n\r\nYou can view our samples and download databases instantly on our website DataList.biz', '2022-03-23 00:55:38', '2022-03-23 00:55:38', NULL),
(68, 'MichaelPlefe', 'chubenkodaniiaz+134g@mail.ru', '82724637783', 'dalbitpetroleum.com uriefeodeighrkfldjiijofofjmvkdnsisdiehiusfiajfhweiuioidjsjsbfiadjasifaijdfifijsaaiwghifadja', '2022-03-23 05:56:16', '2022-03-23 05:56:16', NULL),
(69, 'vak', 'ismo2zwv@hotmail.com', '86862357147', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y9nshbbj', '2022-03-23 08:27:22', '2022-03-23 08:27:22', NULL),
(70, 'Reta Kemper', 'reta', '+1 304-873-4360', 'It is with sad regret to inform you DataList.biz is shutting down on 25 March 2022. \r\n\r\nWe have made available databases per country for all companies available.. \r\n\r\nYou can view our samples and download databases instantly on our website DataList.biz', '2022-03-26 02:01:02', '2022-03-26 02:01:02', NULL),
(71, 'vak', '9dlm0qs1@gmail.com', '84766272575', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y9uze7ck', '2022-03-26 11:41:10', '2022-03-26 11:41:10', NULL),
(72, 'Steve -', 'info@reallygreatdigital.marketing', '555 555 1212', 'I was browsing your site at dalbitpetroleum.com and really liked it!\r\nI am a local Google ranking and lead generation expert\r\nand wondered if you\'d like a free ranking review\r\nto go over some ways you could improve\r\nyour site to get more leads, traffic, customers,\r\nor whatever it is you are trying to get from your site?\r\n\r\nIf you\'d like this 100% free, no obligation website ranking\r\nreview just reply with your best phone number \r\nand the best time to call.\r\n\r\nThanks so much.', '2022-03-26 16:56:48', '2022-03-26 16:56:48', NULL),
(73, '5hoss@gmailup.com', 'umonircio@joinm3.com', '613-724-0491', 'Submit your site to over 1000 directories all with one click here> https://bit.ly/submityoursite1000', '2022-03-29 13:51:45', '2022-03-29 13:51:45', NULL),
(74, 'dalahicu@mailinator.com', 'waluwyno@mailinator.com', '+1 (244) 129-6604', 'Qui consequuntur atq', '2022-03-30 02:15:27', '2022-03-30 02:15:27', NULL),
(75, 'Sandeep Agarwal', 'ssrpharma@envipro.co.in', '+917977575732', 'Sir,\r\nOur patented formula based oil additive supplement ENVIPRO™️ enhances mileage upto 80% in petrol and 70% in diesel, clean injectors, increases Octane numbers & Cetane values. It increases engine life, power and pick up and reduces harmful emissions upto 98%.\r\n\r\nIt would be of mutual benefit if we could consider working together on a business solution and take your country forward in keeping the environment green & clean, as well as boost your nation’s health and economic stability.\r\n\r\nALL RESULTS ARE TESTED & PROVEN.\r\n\r\nYou may request us for a DEMO.\r\n\r\nPlease contact us on the mail id: ssrpharma@envipro.co.in\r\ncall on +91-7977575732\r\n Sandeep Agarwal', '2022-03-30 09:27:37', '2022-03-30 09:27:37', NULL),
(76, 'Sandeep Agarwal', 'ssrpharma@envipro.co.in', NULL, 'Sir,\r\nOur patented formula based oil additive supplement ENVIPRO™️ enhances mileage upto 80% in petrol and 70% in diesel, and reduces harmful emissions upto 98%.\r\n\r\nIt would be of mutual benefit if we could consider working together on a business solution and take your country forward in keeping the environment green & clean, as well as boost your nation’s health and economic stability.\r\n\r\nALL RESULTS ARE TESTED & PROVEN.\r\n\r\nYou may request us for a DEMO.\r\n\r\nPlease contact us on the mail id: ssrpharma@envipro.co.in\r\ncall on +91-7977575732\r\n Sandeep Agarwal', '2022-03-30 09:28:07', '2022-03-30 09:28:07', NULL),
(77, 'Sandeep Agarwal', 'ssrpharma@envipro.co.in', NULL, 'Sir,\r\nOFFERING (USA PATENTED) FUEL SUPPLEMENT FORMULA, INCREASE MILEAGE UPTO 80% & REDUCE POLLUTION UPTO 98 %.\r\n\r\nIt would be of mutual benefit if we could consider working together on a business solution and take your country forward in keeping the environment green & clean, as well as boost your nation’s health and economic stability.\r\n\r\nALL RESULTS ARE TESTED & PROVEN.\r\n\r\nYou may request us for a DEMO.\r\n\r\nPlease contact us on the mail id: ssrpharma@envipro.co.in\r\ncall on +91-7977575732\r\n Sandeep Agarwal', '2022-03-30 09:28:46', '2022-03-30 09:28:46', NULL),
(78, 'Sandeep Agarwal', 'ssrpharma@envipro.co.in', NULL, 'Sir,\r\nOFFERING (USA PATENTED) FUEL SUPPLEMENT FORMULA, INCREASE MILEAGE UPTO 80% & REDUCE POLLUTION UPTO 98 %.\r\n\r\nIt would be of mutual benefit if we could consider working together on a business solution and take your country forward in keeping the environment green & clean, as well as boost your nation’s health and economic stability.\r\n\r\nALL RESULTS ARE TESTED & PROVEN.\r\n\r\nYou may request us for a DEMO.', '2022-03-30 09:29:01', '2022-03-30 09:29:01', NULL),
(79, 'Sandeep Agarwal', 'ssrpharma@envipro.co.in', NULL, 'Sir,\r\nOFFERING (USA PATENTED) FUEL SUPPLEMENT FORMULA, INCREASE MILEAGE UPTO 80% & REDUCE POLLUTION UPTO 98 %.\r\n\r\nALL RESULTS ARE TESTED & PROVEN.\r\n\r\nYou may request us for a DEMO.', '2022-03-30 09:29:32', '2022-03-30 09:29:32', NULL),
(80, 'Sandeep Agarwal', 'ssrpharma@envipro.co.in', '+917977575732', 'Sir,\r\nOFFERING (USA PATENTED) FUEL SUPPLEMENT FORMULA, INCREASE MILEAGE UPTO 80% & REDUCE POLLUTION UPTO 98 %.\r\n\r\nALL RESULTS ARE TESTED & PROVEN.\r\n\r\nYou may request us for a DEMO.', '2022-03-30 09:30:13', '2022-03-30 09:30:13', NULL),
(81, 'Kellee Bunting', 'kellee@businessleads101.com', '032 740 89 18', 'It is with sad regret to inform you that BusinessLeads101.com is shutting down.\r\n\r\nWe have over 300 million records available for a one time fee of $149.\r\n\r\nPlease visit our website BusinessLeads101.com\r\n\r\nRegards,\r\nKellee', '2022-03-31 03:32:42', '2022-03-31 03:32:42', NULL),
(82, 'Tyreeken', 'm.rizziero@tin.it', '87845128326', 'SMM premium quality cheap and without intermediaries https://www.google.com/url?q=https%3A%2F%2Fvk.cc%2FccgQZt&sa=D&sntz=1&usg=AOvVaw07lL_kc7zZcksNSSYY3kMA', '2022-03-31 09:38:36', '2022-03-31 09:38:36', NULL),
(83, 'Ken P', 'kenp38491@aol.com', '+18149737130', 'Hey this is Ken. I lost your number but I remembered your site. Need you to contact me ASAP regarding that one issue you were having +18149737130‬   \r\nAtwCDWz8V3pBzRHs', '2022-04-01 08:12:23', '2022-04-01 08:12:23', NULL),
(84, 'Steven', 'maccarthy.steven79@googlemail.com', '(02) 4977 9015', 'Hey \r\n\r\nAre you Scrambling while opening Jars, Bottles, and Cans?\r\n\r\nThis Jar Opener Takes The Strain & Frustration Out Of Opening Jars & Bottles!  Never Struggle with opening a jar again!\r\n\r\nClick Now & GET 50% OFF → https://kitchenopener.biz\r\n\r\nBest Wishes, \r\nSteven', '2022-04-01 16:08:56', '2022-04-01 16:08:56', NULL),
(85, 'vak', 'hul8240e@icloud.com', '86762886316', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y8d2nh5a', '2022-04-01 18:38:56', '2022-04-01 18:38:56', NULL);
INSERT INTO `contacts` (`id`, `name`, `email`, `telephone_number`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(86, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with dalbitpetroleum.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out dalbitpetroleum.com.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-01 22:22:58', '2022-04-01 22:22:58', NULL),
(87, 'Edgar Joris', 'edgar@starleads.org', '079 6325 2594', 'It is with sad regret to inform you that StarLeads.org is shutting down.\r\n\r\nWe have made available over 300 million records for $149.\r\n\r\nRegards,\r\nStarLeads.org', '2022-04-02 12:05:44', '2022-04-02 12:05:44', NULL),
(88, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,\r\nSyed Ahamed,\r\nPlumbing Supervisor \r\nCon. Number : 00919942470577', '2022-04-02 20:58:16', '2022-04-02 20:58:16', NULL),
(89, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,\r\nSyed Ahamed,\r\nPlumbing Supervisor \r\nCon. Number : 00919942470577', '2022-04-02 20:58:17', '2022-04-02 20:58:17', NULL),
(90, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,\r\nSyed Ahamed,\r\nPlumbing Supervisor \r\nCon. Number : 00919942470577', '2022-04-02 20:58:34', '2022-04-02 20:58:34', NULL),
(91, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,\r\nSyed Ahamed,\r\nPlumbing Supervisor', '2022-04-02 20:58:57', '2022-04-02 20:58:57', NULL),
(92, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,\r\nSyed Ahamed,\r\nPlumbing Supervisor', '2022-04-02 20:58:58', '2022-04-02 20:58:58', NULL),
(93, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,\r\nSyed Ahamed,', '2022-04-02 20:59:12', '2022-04-02 20:59:12', NULL),
(94, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,\r\nyours truly,', '2022-04-02 20:59:24', '2022-04-02 20:59:24', NULL),
(95, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.\r\nThanks,', '2022-04-02 20:59:35', '2022-04-02 20:59:35', NULL),
(96, 'Syedahamed', 'syedjan1980@gmail.com', '+919942470577', 'Assalamu Alaikum Sir / Madam,\r\nMy name is Ahmed, plumbing Supervisor . I have received an offer letter from your Dalbit petroleum Fuelling Regional Growth. I have attached a copy of it in the mail. Let me know the true status of this.', '2022-04-02 20:59:47', '2022-04-02 20:59:47', NULL),
(97, 'Colleen Burges', 'burges.colleen@outlook.com', '03431 47 67 67', 'I called you 2 times. Why didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://telegra.ph/Chat-With-Me-04-02', '2022-04-03 01:13:07', '2022-04-03 01:13:07', NULL),
(98, 'AnthonyRen', 'andreimorozovskii@rambler.ru', '84862979918', 'Bеst оnlinе cаsino \r\nwith signup bоnus \r\nSlоts, Frееspin, Роker, and many gаmуs. \r\nget your bоnus right now \r\nhttps://tinyurl.com/2p8a8nv6', '2022-04-03 06:44:27', '2022-04-03 06:44:27', NULL),
(99, 'nsamuelvale101@yaungshop.com', 'jaouadhifarah0@bebekpenyet.buzz', '06-40317261', 'You can submit your site to over 1000 different business/advertising directories for free with one click https://bit.ly/submityoursite1000', '2022-04-03 18:19:15', '2022-04-03 18:19:15', NULL),
(100, 'Jessicabus', 'holidahon.mnt@gmail.com', '88178717322', 'Hey, hope you are well! I\'m sexy hot girl just want a guy or girl, I love sex. Look at me and your mind will be blown! http://x-tube.one', '2022-04-03 22:07:18', '2022-04-03 22:07:18', NULL),
(101, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'My name’s Eric and I just came across your website - dalbitpetroleum.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like dalbitpetroleum.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-04 09:07:28', '2022-04-04 09:07:28', NULL),
(102, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - dalbitpetroleum.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across dalbitpetroleum.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-05 02:07:54', '2022-04-05 02:07:54', NULL),
(103, 'SteveAvoix', 'isabellaaviles2@gmail.es', '86566694137', 'Make 1578 USDT per day in 17 days https://telegra.ph/More-than-1500-USDT-per-day-on-automated-cryptocurrency-trading-04-02-3?az4', '2022-04-05 14:23:48', '2022-04-05 14:23:48', NULL),
(104, 'JITHIN SREEKANTAN NAIR', 'jithinsreekantan@gmail.com', '9447646698', 'I got an interview call From DALPIT petroleum ltd Tanazania\r\nIs it true or fake\r\nCan you please reply', '2022-04-05 19:16:14', '2022-04-05 19:16:14', NULL),
(105, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website dalbitpetroleum.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at dalbitpetroleum.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithwebtraffic.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-07 23:07:12', '2022-04-07 23:07:12', NULL),
(106, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found dalbitpetroleum.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-08 14:48:10', '2022-04-08 14:48:10', NULL),
(107, 'Williamhic', 'shahrukh_akhter@yahoo.com', '88288698676', 'From $50,000,000 from Twitter https://telegra.ph/55-million-a-year-in-affiliate-marketing-with-twitter-04-07-4?axz2', '2022-04-08 18:50:51', '2022-04-08 18:50:51', NULL),
(108, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at dalbitpetroleum.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-10 10:43:41', '2022-04-10 10:43:41', NULL),
(109, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - dalbitpetroleum.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across dalbitpetroleum.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-10 12:59:00', '2022-04-10 12:59:00', NULL),
(110, 'Max', 'armitage.max@msn.com', '714-554-8951', 'New Multifunction Waterproof Backpack\r\n\r\nThe best ever SUPER Backpack: Drop-proof/Scratch-resistant/USB Charging/Large capacity storage\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://thebackpack.sale\r\n\r\nBest Wishes, \r\n\r\nMax', '2022-04-10 21:38:12', '2022-04-10 21:38:12', NULL),
(111, 'Albertina Vaughn', 'albertina@bulletproofsmtp.org', '06262 19 65 56', 'Hello.\r\n\r\nWe are offering Bullet Proof SMTP servers that never get suspended. Email as much as you want.\r\n\r\nDMCA ignored, bulletproof locations, 100% uptime guaranteed, unlimited data transfer, and 24/7/365 support.\r\n\r\n100 Spots available. BulletProofSMTP.org', '2022-04-13 01:48:40', '2022-04-13 01:48:40', NULL),
(112, 'Simon Lawes', 'simon@bulletproofsmtp.org', '67 445 17 62', 'Hello.\r\n\r\nWe are offering Bullet Proof SMTP servers that never get suspended. Email as much as you want.\r\n\r\nDMCA ignored, bulletproof locations, 100% uptime guaranteed, unlimited data transfer, and 24/7/365 support.\r\n\r\n100 Spots available. BulletProofSMTP.org', '2022-04-13 11:53:06', '2022-04-13 11:53:06', NULL),
(113, 'Siddharth Mohanty', 'siddharthm99@gmail.com', '8135966767', 'I recieved offer letter want to know if it\'s legit', '2022-04-13 16:34:37', '2022-04-13 16:34:37', NULL),
(114, 'Siddharth Mohanty', 'siddharthm99@gmail.com', NULL, 'I recieved offer letter want to know if it\'s legit', '2022-04-13 16:34:47', '2022-04-13 16:34:47', NULL),
(115, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 21:49:18', '2022-04-13 21:49:18', NULL),
(116, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 21:49:24', '2022-04-13 21:49:24', NULL),
(117, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 21:49:24', '2022-04-13 21:49:24', NULL),
(118, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 21:49:37', '2022-04-13 21:49:37', NULL),
(119, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 21:50:11', '2022-04-13 21:50:11', NULL),
(120, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 21:50:31', '2022-04-13 21:50:31', NULL),
(121, 'yasir idris', 'yasir.arefat444@gmail.com', NULL, 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 22:01:36', '2022-04-13 22:01:36', NULL),
(122, 'yasir idris', 'yasir.arefat444@gmail.com', '+919852404328', 'Respected sir/madam\r\ni am yasir idris ,i beg to say that i have got offer letter form dalbit limited company ,i want to know that this offer letter is genuine or not ,and also i have mail tanzania mail id but no any got response.\r\nso i kindly request you to please give me right desicion like offer letter is genuine or not .\r\nThanks $ regards\r\nyasir idris\r\n+919852404328', '2022-04-13 22:03:14', '2022-04-13 22:03:14', NULL),
(123, 'sethuraman', 'sethu_2005@yahoo.co.in', '91 9965895404', 'Dear Sr,\r\n\r\nI got  a  offer from Elexes overseas consultancy from IndIa. Now they are askIng securtIty depost money. KIndly confIrm wheteher  can Pay or not?\r\nKndly confrm. \r\n\r\n\r\nSubject : Offer of Employment.\r\nDalbit Petroleum Ltd Azania Plaza, 2nd Floor pugu,Nyerere road,9122,Dar Es Salaam,Tanzania.takes great\r\npride in informing you that you have been offer as “QA/QC ENGINEER” in our organization. Your\r\nappointment shall be subject to the following term and conditions:-\r\nYour Date of joining- 27.04.2022', '2022-04-15 18:49:39', '2022-04-15 18:49:39', NULL),
(124, 'sethuraman', 'sethu_2005@yahoo.co.in', '9965895404', 'Dear Sir,\r\n\r\nI got  a  offer from Elexes overseas consultancy from IndIa. Now they are askIng securtIty depost money. KIndly confIrm wheteher  can Pay or not?\r\nKindly confrm. Offer letter enclosed please check t and confrm as early.\r\n\r\n\r\n\r\nSubject : Offer of Employment.\r\nDalbit Petroleum Ltd Azania Plaza, 2nd Floor pugu,Nyerere road,9122,Dar Es Salaam,Tanzania.takes great\r\npride in informing you that you have been offer as “QA/QC ENGINEER” in our organization. Your\r\nappointment shall be subject to the following term and conditions:-\r\nYour Date of joining- 27.04.2022', '2022-04-15 19:00:31', '2022-04-15 19:00:31', NULL),
(125, 'Laurinda', 'laurindahalfey@gmail.com', '0355 6307639', 'Hello there \r\n \r\nPawSafer™ Can Safely Trim Your Dog\'S Nails In No Time From Home.\r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.shop\r\n \r\nCheers, \r\n \r\nLaurinda', '2022-04-15 19:26:55', '2022-04-15 19:26:55', NULL),
(126, 'HenryISods', 'aulia_store@yahoo.com', '89032214195', 'No need to work anymore while you have the Robot launched! \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng', '2022-04-16 18:51:22', '2022-04-16 18:51:22', NULL),
(127, 'gemooboy.lovej@bucol.net', 'roussama.ararouci@ldwdkj.com', '0660 220 20 69', 'Congrats on your new site, get it listed here for free and we\'ll start sending people to your site https://bit.ly/submityoursite1000', '2022-04-16 21:37:26', '2022-04-16 21:37:26', NULL),
(128, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across dalbitpetroleum.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-18 11:49:50', '2022-04-18 11:49:50', NULL),
(129, 'Muhammad Hamza Saleem', 'hamzasaleemkz@gmail.com', '03409117737', 'Dear Sir,\r\nI am Hamza Saleem currently working as Planning and Preventive Maintenance Engineer at Power Cement Ltd. Pakistan. I am looking for new roles and opportunities. Please share the email id so i can drop my CV for your consideration.\r\n \r\nRegards', '2022-04-18 14:35:34', '2022-04-18 14:35:34', NULL),
(130, 'Shad Frye', 'shad@zippyleads.org', 'NA', 'ZippyLeads.org is running an easter special till the 18th of April.\r\n\r\nGet all the leads you need for your company with our easter special.', '2022-04-19 00:35:13', '2022-04-19 00:35:13', NULL),
(131, 'vak', 'zqhm0ptx@icloud.com', '88997451485', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y43nhrpb', '2022-04-19 07:29:00', '2022-04-19 07:29:00', NULL),
(132, 'Marlon Triggs', 'triggs.marlon@hotmail.com', '02241 81 81 57', 'I called you 2 times. Why didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://live-sex-chat.club/', '2022-04-19 13:31:26', '2022-04-19 13:31:26', NULL),
(133, 'Hortense Darker', 'hortense@topdatalist.com', 'NA', 'Hello.\r\n\r\nIt is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe have made all our databases available for you for a once off fee.\r\n\r\nVisit us on TopDataList.com', '2022-04-20 00:57:08', '2022-04-20 00:57:08', NULL),
(134, 'Idoudtejpn', 'stas.batulin.83@inbox.ru', '84356459759', 'НА ВАШ СЧЕТ ЗАЧИСЛЕНО +13677.00  \r\n \r\nПодробнее: https://forms.yandex.ru/u/v51g561wbug8dyxfvei3/success/?AAAAAdalbitpetroleum.comBBBBB', '2022-04-20 06:21:37', '2022-04-20 06:21:37', NULL),
(135, 'Roma Grayson', 'roma@topdatalist.com', 'NA', 'Hello.\r\n\r\nIt is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe have made all our databases available for you for a once off fee.\r\n\r\nVisit us on TopDataList.com', '2022-04-20 09:06:26', '2022-04-20 09:06:26', NULL),
(136, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, my name is Eric and I’m betting you’d like your website dalbitpetroleum.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at dalbitpetroleum.com.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-20 09:43:42', '2022-04-20 09:43:42', NULL),
(137, 'ChristinaSax', 'christinaSax@aol.com', '+380 2336452709', 'Неllо аll, guуѕ! Ι know, mу meѕsаgе mау be tоо sрecіfіc,\r\nВut my sіѕter fоund nісe mаn hеre аnd thеу married, sо hоw аbout me?ǃ :)\r\nI аm 25 уearѕ оld, Сhriѕtinа, frоm Ukraіne, Ι knоw Engliѕh and Gеrman lаnguаgеs аlѕо\r\nАnd... I hаvе speсifiс dіѕеaѕe, nаmеd nymphоmаnia. Ԝhо know what іs thіѕ, саn understаnd me (better tо ѕау it immediatеlу)\r\nАh yes, Ι соok verу taѕty! and Ι lovе not only сооk ;))\r\nΙm reаl girl, not рroѕtitutе, and lоokіng for sеriоuѕ аnd hot relаtiоnshір...\r\nAnуwаy, уоu cаn fіnd mу рrofile here: http://omspamab.tk/user/39818/', '2022-04-20 11:22:21', '2022-04-20 11:22:21', NULL),
(138, 'Bret Gregg', 'bret.gregg@gmail.com', '070 5626 4328', 'I called you 2 times. Why didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://live-sex-chat.club/', '2022-04-20 15:58:20', '2022-04-20 15:58:20', NULL),
(139, 'Claribel Condon', 'claribel@topdatalist.com', 'NA', 'Hello.\r\n\r\nIt is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe have made all our databases available for you for a once off fee.\r\n\r\nVisit us on TopDataList.com', '2022-04-21 03:51:37', '2022-04-21 03:51:37', NULL),
(140, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found dalbitpetroleum.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-21 16:39:28', '2022-04-21 16:39:28', NULL),
(141, 'Shayan Nisar Ahmad Mulla', 'hseshayan@gmail.com', '+918055767254', 'Dear Sir / Mam,\r\n\r\nMy name is Shayan Nisar Ahmad Mulla. I got a job opportunity in Dalbit Petroleum Tanzania as i recieved interview call from +255 22 286 5234.\r\nI want to verify offer letter please tell me how to verify I\'m trying to contact you but i didn\'t get any response from your side. \r\n\r\nAppreciate your kind action.\r\n\r\nThank & regards\r\n\r\nShayan Nisar Ahmad Mulla', '2022-04-21 20:20:43', '2022-04-21 20:20:43', NULL),
(142, 'Shayan Nisar Ahmad Mulla', 'hseshayan@gmail.com', '+918055767254', 'Dear Sir / Mam,\r\n\r\nMy name is Shayan Nisar Ahmad Mulla. I got a job opportunity in Dalbit Petroleum Tanzania as i recieved interview call from +255 22 286 5234.\r\nI want to verify offer letter please tell me how to verify I\'m trying to contact you but i didn\'t get any response from your side. \r\n\r\nAppreciate your kind action.\r\n\r\nThank & regards\r\n\r\nShayan Nisar Ahmad Mulla', '2022-04-21 20:20:52', '2022-04-21 20:20:52', NULL),
(143, 'Shayan Nisar Ahmad Mulla', 'hseshayan@gmail.com', NULL, 'Dear Sir / Mam,\r\n\r\nMy name is Shayan Nisar Ahmad Mulla. I got a job opportunity in Dalbit Petroleum Tanzania as i recieved interview call from +255 22 286 5234.\r\nI want to verify offer letter please tell me how to verify I\'m trying to contact you but i didn\'t get any response from your side. \r\n\r\nAppreciate your kind action.\r\n\r\nThank & regards\r\n\r\nShayan Nisar Ahmad Mulla', '2022-04-21 20:21:03', '2022-04-21 20:21:03', NULL),
(144, 'roussama.ararouci@ldwdkj.com', 'bchakka111975s@ronell.me', '312-691-6952', 'Good job on the new site! Now go ahead and submit it to our free directory here https://bit.ly/submityoursite1000', '2022-04-21 20:32:56', '2022-04-21 20:32:56', NULL),
(145, 'Caro kalenga', 'carofmikalenga@gmail.com', NULL, 'Manifeste l\'intérêt de travail au sein de votre entreprise , avec l\'expérience que je dans la logistique pétrolier .', '2022-04-21 21:59:26', '2022-04-21 21:59:26', NULL),
(146, 'HenryISods', 'ashontayegadson2@yahoo.com', '89030366227', 'Only one click can grow up your money really fast. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-22 02:36:45', '2022-04-22 02:36:45', NULL),
(147, 'HenryISods', 'jakm714@yahoo.com', '89030800921', 'Feel free to buy everything you want with the additional income. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-22 07:27:02', '2022-04-22 07:27:02', NULL),
(148, 'HenryISods', 'scastro65@hotmail.com', '89035600142', 'Need money? Get it here easily? \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-22 12:21:04', '2022-04-22 12:21:04', NULL),
(149, 'vak', 'a68a480t@yahoo.com', '82195355131', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y378z3f8', '2022-04-22 15:00:39', '2022-04-22 15:00:39', NULL),
(150, 'PANKAJ CHAITRAM BAWANE', 'pankajbawane@rediffmail.com', '00917016801658', 'Dear sir, please guide me as I received offer letter on my name PANKAJ CHAITRAM BAWANE from your company for the post of Piping Engineer, \r\nSo,kindly check and verify and give me feedback as early as possible. \r\nThanking you!', '2022-04-22 15:02:02', '2022-04-22 15:02:02', NULL),
(151, 'PANKAJ CHAITRAM BAWANE', 'pankajbawane@rediffmail.com', NULL, 'Dear sir, please guide me as I received offer letter on my name PANKAJ CHAITRAM BAWANE from your company for the post of Piping Engineer, \r\nSo,kindly check and verify and give me feedback as early as possible. \r\nThanking you!', '2022-04-22 15:02:17', '2022-04-22 15:02:17', NULL),
(152, 'PANKAJ CHAITRAM BAWANE', 'pankajbawane@rediffmail.com', '00917016801658', 'Dear sir, please guide me as I received offer letter on my name PANKAJ CHAITRAM BAWANE from your company for the post of Piping Engineer, \r\nSo,kindly check and verify and give me feedback as early as possible. \r\nThanking you!', '2022-04-22 15:02:39', '2022-04-22 15:02:39', NULL),
(153, 'HenryISods', 'peattyhot0o@hotmail.com', '89034894674', 'Financial Robot is #1 investment tool ever. Launch it! \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-22 17:13:22', '2022-04-22 17:13:22', NULL),
(154, 'HenryISods', 'ana_bok@yahoo.com', '89039292745', 'Financial independence is what this robot guarantees. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-22 22:08:27', '2022-04-22 22:08:27', NULL),
(155, 'HenryISods', 'michaelhepler32@comcast.net', '89031923521', 'Your computer can bring you additional income if you use this Robot. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-23 04:03:35', '2022-04-23 04:03:35', NULL),
(156, 'HenryISods', 'carepaula@icloud.com', '89039785536', 'Make yourself rich in future using this financial robot. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-23 08:56:51', '2022-04-23 08:56:51', NULL),
(157, 'Squase', 'slgpacyq@yahoo.com', '81372856884', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cryptocurrencies. Join our system and start making money with us. Go to system: https://telegra.ph/Chaos-in-Vancouver-Unemployed-citizens-no-longer-plan-to-find-a-job-04-22', '2022-04-23 09:25:30', '2022-04-23 09:25:30', NULL),
(158, 'HenryISods', 'joshricespam@gmail.com', '89032421405', 'This robot will help you to make hundreds of dollars each day. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-23 13:59:42', '2022-04-23 13:59:42', NULL),
(159, 'HenryISods', '4gloribea@comcast.net', '89039524763', 'Trust the financial Bot to become rich. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng', '2022-04-23 18:49:32', '2022-04-23 18:49:32', NULL),
(160, 'HenryISods', 'chadsing15@yahoo.com', '89031380878', 'Invest $1 today to make $1000 tomorrow. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-23 22:21:22', '2022-04-23 22:21:22', NULL),
(161, 'HenryISods', 'jr75087@gmail.com', '89038012372', 'Robot never sleeps. It makes money for you 24/7. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-24 03:09:18', '2022-04-24 03:09:18', NULL),
(162, 'HenryISods', 'cdkasinger@comcast.net', '89036063537', 'This robot will help you to make hundreds of dollars each day. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-24 07:59:08', '2022-04-24 07:59:08', NULL),
(163, 'HenryISods', 'JDHOWELL21@YAHOO.COM', '89035980538', 'Need money? Get it here easily? https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-24 12:50:55', '2022-04-24 12:50:55', NULL),
(164, 'BTC Giveaway', 'info@btcgiveaways.xyz', '056 342 41 23', 'You have been chosen to participate in one of the biggest bitcoin giveaways. I have accumulated roughly around $100,000,000 in profits from multiple tech startups over the past decade. Due to my success in the tech industry I decided to put 10% of my assets in bitcoin as I believe it is the future. You can see here https://i.postimg.cc/qvFXT8wv/giveaway.jpg Out of good faith I\'m giving away $1,000,000 of that to select individuals for a short period of time. Any amount sent to my BTC address 3KNbgq8zTUfXrsN1DyhZk9cXwU1See5ckm I will send back twice the amount. Minimum amount is $10,000 and maximum amount is $500,000. 3qy23ZBs', '2022-04-24 17:29:55', '2022-04-24 17:29:55', NULL),
(165, 'HenryISods', 'remyjm85@yahoo.com', '89039320954', 'Have no financial skills? Let Robot make money for you. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-24 17:44:31', '2022-04-24 17:44:31', NULL),
(166, 'Sheila Jewett', 'sheila.jewett@hotmail.com', '(07) 4017 7712', 'I called you 2 times. Why didn\'t you pick up? I\'m horny.. Please call me.\r\n\r\nI\'m online. You can chat with me by clicking this link.\r\n\r\nhttps://live-sex-chat.club/', '2022-04-24 22:09:44', '2022-04-24 22:09:44', NULL),
(167, 'HenryISods', 'fresh13ms@aol.com', '89032502036', 'Check out the automatic Bot, which works for you 24/7. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-24 22:38:41', '2022-04-24 22:38:41', NULL);
INSERT INTO `contacts` (`id`, `name`, `email`, `telephone_number`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(168, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at dalbitpetroleum.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-25 00:26:43', '2022-04-25 00:26:43', NULL),
(169, 'HenryISods', 'bpbrass@verizon.net', '89038881302', 'Check out the newest way to make a fantastic profit. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-25 03:44:39', '2022-04-25 03:44:39', NULL),
(170, 'vak', 'q9o4097i@yahoo.com', '83266596811', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/yyq5np86', '2022-04-25 12:11:12', '2022-04-25 12:11:12', NULL),
(171, 'HenryISods', 'gprantil72@live.com', '89033054147', 'Making money can be extremely easy if you use this Robot. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng', '2022-04-25 19:47:02', '2022-04-25 19:47:02', NULL),
(172, 'HenryISods', 'CROWE004@GMAIL.COM', '89033730094', 'There is no need to look for a job anymore. Work online. https://breweriana.it/gotodate/promo', '2022-04-26 00:47:33', '2022-04-26 00:47:33', NULL),
(173, 'Denis', 'denisdeus02@gmail.com', '+255787139597', 'Greeting..\r\n\r\nOpen Land Project for Sale at Kikatiti,Kikwe and  Karatu Arusha..\r\n\r\nKIKATITI..\r\n\r\nProjects are Located in Arumeru District,Kikatiti Ward Sakila Chini Village Arusha..\r\n\r\nPROJECT A..\r\n\r\nThe Project has 6 Acres Of Land that equivalent to 29400 square meters..\r\n\r\nThe Land is Located 75 Meters from Moshi Arusha road and 550 Meters from Lodhia Industry.\r\n\r\nPROJECT B..\r\n\r\nThe Project has 10 Acres of Land that equivalent to 49000 square meters..\r\n\r\nThe Land Located 75 Meters from Moshi Arusha road and 700 Meters from Lodhia Industry..\r\n\r\nPROJECT C..\r\n\r\nThe Project has 15 Acres of land kikatiti main road that equivalent to 73500 square meters..\r\n\r\nPROJECT D..\r\n\r\nThe Project has 18 Acres of land that equivalent to 88200 square meters..\r\n\r\nThe Land Located 100 meters from Moshi Arusha road and 75 from Tanga Arusha Railway..\r\n\r\nDISTANCE..\r\n\r\nDistance from KIA  15 KM..\r\n\r\nDistance from Arusha City 32 KM..\r\n\r\nDistance from Tanzanite Mining 32 KM..\r\n\r\nKIKWE..\r\n\r\nProject is Located at Purpose Area Called Kikwe11 to 15 km from Arusha town..\r\n\r\nThere are 8 acres of land that has clean Tittle Deed..\r\n\r\nThe Land its Located at East African road, 3 km from Nelson Mandela  University Road, 3 km from East Africa Road and 1 Km before Dashir Lodge..\r\n\r\nThe Land is bordered by River Nganana that Separates it from Gomba Estates,Also tap water and electricity that can easily be connected from the Neighbourhood..\r\n\r\nVIEW : Both Kilimanjaro and Meru Mountain are clearly viewed from the Land..\r\n\r\nGoogle Map Coordinates for the land are -3.431489,36.812572\r\n\r\nKARATU..\r\nThere are 8 Acres of Land that Located at Manyara Kibaoni nearby  Serena Hotel and Kirurumo Lodge..\r\n\r\nThere are 13 acres  of land nearby Rhotia Valley lodge..\r\n\r\nThere are 20 acres of land nearby Marera Camp 4 kilometers from town..\r\n\r\nThere are 4 acres of land in a place called Tloma 7 kilometers from town..\r\n\r\nThere are 4 acres  of land in a place Called Kinihe,6 kilometers from town..\r\n\r\nThe land Project are on Good Site that suitable for :-\r\n\r\nInvestment like Hotels,Lodges and Farming..\r\n\r\nInvestment like Schools Business Services..\r\n\r\nInvestment like Petrol Station to serve Arusha Moshi,Tanga,Holili Vehicles..\r\n\r\nInvestment in building for Car Yard for Various purpose..\r\n\r\nInvestment like Hospital for Health Centres..\r\n\r\nInvestment like Industry as power station nearly..\r\n\r\nInvestment in building Modern Apartments for both Residential and Commercial purposes..\r\n\r\nInvestment in building Malls to serve Arusha Moshi and Tanga road users..\r\n\r\nPlease don\'t Hesitate to contact Us for Price and more Clarifications if you will be Interested to invest in Land on Arusha Tanzania..\r\n\r\nTel:- +255 787139597 or +255 719177201..\r\n\r\nE-mail:-Denisdeus02@gmail.com.\r\n\r\nYour Warmly Welcome to invest at our land..\r\n\r\nAt the RIGHT PRICE..\r\nAt the RIGHT PLACE..\r\nAt the RIGHT TIME..\r\n\r\nRegards,\r\n\r\nDenis Deus.\r\n\r\nAlso, We have 60 acres  and 150 acres of farm land..\r\n\r\nLocation Losinyaiii Kastam 35 to 40 kilometers from Kiserian Round about..\r\n\r\nIn Singida 500 acres of land in a place called Misung\'aa 56 km from singida town..\r\n\r\nFor Price of 3 million\'s per 1 acre of farm land...\r\n\r\nFor those 150 acres,We cut the land starts from 50 acres of land..', '2022-04-26 05:14:21', '2022-04-26 05:14:21', NULL),
(174, 'Denis', 'denisdeus02@gmail.com', NULL, 'Greeting..\r\n\r\nOpen Land Project for Sale at Kikatiti,Kikwe and  Karatu Arusha..\r\n\r\nKIKATITI..\r\n\r\nProjects are Located in Arumeru District,Kikatiti Ward Sakila Chini Village Arusha..\r\n\r\nPROJECT A..\r\n\r\nThe Project has 6 Acres Of Land that equivalent to 29400 square meters..\r\n\r\nThe Land is Located 75 Meters from Moshi Arusha road and 550 Meters from Lodhia Industry.\r\n\r\nPROJECT B..\r\n\r\nThe Project has 10 Acres of Land that equivalent to 49000 square meters..\r\n\r\nThe Land Located 75 Meters from Moshi Arusha road and 700 Meters from Lodhia Industry..\r\n\r\nPROJECT C..\r\n\r\nThe Project has 15 Acres of land kikatiti main road that equivalent to 73500 square meters..\r\n\r\nPROJECT D..\r\n\r\nThe Project has 18 Acres of land that equivalent to 88200 square meters..\r\n\r\nThe Land Located 100 meters from Moshi Arusha road and 75 from Tanga Arusha Railway..\r\n\r\nDISTANCE..\r\n\r\nDistance from KIA  15 KM..\r\n\r\nDistance from Arusha City 32 KM..\r\n\r\nDistance from Tanzanite Mining 32 KM..\r\n\r\nKIKWE..\r\n\r\nProject is Located at Purpose Area Called Kikwe11 to 15 km from Arusha town..\r\n\r\nThere are 8 acres of land that has clean Tittle Deed..\r\n\r\nThe Land its Located at East African road, 3 km from Nelson Mandela  University Road, 3 km from East Africa Road and 1 Km before Dashir Lodge..\r\n\r\nThe Land is bordered by River Nganana that Separates it from Gomba Estates,Also tap water and electricity that can easily be connected from the Neighbourhood..\r\n\r\nVIEW : Both Kilimanjaro and Meru Mountain are clearly viewed from the Land..\r\n\r\nGoogle Map Coordinates for the land are -3.431489,36.812572\r\n\r\nKARATU..\r\nThere are 8 Acres of Land that Located at Manyara Kibaoni nearby  Serena Hotel and Kirurumo Lodge..\r\n\r\nThere are 13 acres  of land nearby Rhotia Valley lodge..\r\n\r\nThere are 20 acres of land nearby Marera Camp 4 kilometers from town..\r\n\r\nThere are 4 acres of land in a place called Tloma 7 kilometers from town..\r\n\r\nThere are 4 acres  of land in a place Called Kinihe,6 kilometers from town..\r\n\r\nThe land Project are on Good Site that suitable for :-\r\n\r\nInvestment like Hotels,Lodges and Farming..\r\n\r\nInvestment like Schools Business Services..\r\n\r\nInvestment like Petrol Station to serve Arusha Moshi,Tanga,Holili Vehicles..\r\n\r\nInvestment in building for Car Yard for Various purpose..\r\n\r\nInvestment like Hospital for Health Centres..\r\n\r\nInvestment like Industry as power station nearly..\r\n\r\nInvestment in building Modern Apartments for both Residential and Commercial purposes..\r\n\r\nInvestment in building Malls to serve Arusha Moshi and Tanga road users..\r\n\r\nPlease don\'t Hesitate to contact Us for Price and more Clarifications if you will be Interested to invest in Land on Arusha Tanzania..\r\n\r\nTel:- +255 787139597 or +255 719177201..\r\n\r\nE-mail:-Denisdeus02@gmail.com.\r\n\r\nYour Warmly Welcome to invest at our land..\r\n\r\nAt the RIGHT PRICE..\r\nAt the RIGHT PLACE..\r\nAt the RIGHT TIME..\r\n\r\nRegards,\r\n\r\nDenis Deus.\r\n\r\nAlso, We have 60 acres  and 150 acres of farm land..\r\n\r\nLocation Losinyaiii Kastam 35 to 40 kilometers from Kiserian Round about..\r\n\r\nIn Singida 500 acres of land in a place called Misung\'aa 56 km from singida town..\r\n\r\nFor Price of 3 million\'s per 1 acre of farm land...\r\n\r\nFor those 150 acres,We cut the land starts from 50 acres of land..', '2022-04-26 05:17:56', '2022-04-26 05:17:56', NULL),
(175, 'Denis', 'denisdeus02@gmail.com', NULL, 'Greeting..\r\n\r\nOpen Land Project for Sale at Kikatiti,Kikwe and  Karatu Arusha..\r\n\r\nKIKATITI..\r\n\r\nProjects are Located in Arumeru District,Kikatiti Ward Sakila Chini Village Arusha..\r\n\r\nPROJECT A..\r\n\r\nThe Project has 6 Acres Of Land that equivalent to 29400 square meters..\r\n\r\nThe Land is Located 75 Meters from Moshi Arusha road and 550 Meters from Lodhia Industry.\r\n\r\nPROJECT B..\r\n\r\nThe Project has 10 Acres of Land that equivalent to 49000 square meters..\r\n\r\nThe Land Located 75 Meters from Moshi Arusha road and 700 Meters from Lodhia Industry..\r\n\r\nPROJECT C..\r\n\r\nThe Project has 15 Acres of land kikatiti main road that equivalent to 73500 square meters..\r\n\r\nPROJECT D..\r\n\r\nThe Project has 18 Acres of land that equivalent to 88200 square meters..\r\n\r\nThe Land Located 100 meters from Moshi Arusha road and 75 from Tanga Arusha Railway..\r\n\r\nDISTANCE..\r\n\r\nDistance from KIA  15 KM..\r\n\r\nDistance from Arusha City 32 KM..\r\n\r\nDistance from Tanzanite Mining 32 KM..\r\n\r\nKIKWE..\r\n\r\nProject is Located at Purpose Area Called Kikwe11 to 15 km from Arusha town..\r\n\r\nThere are 8 acres of land that has clean Tittle Deed..\r\n\r\nThe Land its Located at East African road, 3 km from Nelson Mandela  University Road, 3 km from East Africa Road and 1 Km before Dashir Lodge..\r\n\r\nThe Land is bordered by River Nganana that Separates it from Gomba Estates,Also tap water and electricity that can easily be connected from the Neighbourhood..\r\n\r\nVIEW : Both Kilimanjaro and Meru Mountain are clearly viewed from the Land..\r\n\r\nGoogle Map Coordinates for the land are -3.431489,36.812572\r\n\r\nKARATU..\r\nThere are 8 Acres of Land that Located at Manyara Kibaoni nearby  Serena Hotel and Kirurumo Lodge..\r\n\r\nThere are 13 acres  of land nearby Rhotia Valley lodge..\r\n\r\nThere are 20 acres of land nearby Marera Camp 4 kilometers from town..\r\n\r\nThere are 4 acres of land in a place called Tloma 7 kilometers from town..\r\n\r\nThere are 4 acres  of land in a place Called Kinihe,6 kilometers from town..\r\n\r\nThe land Project are on Good Site that suitable for :-\r\n\r\nInvestment like Hotels,Lodges and Farming..\r\n\r\nInvestment like Schools Business Services..\r\n\r\nInvestment like Petrol Station to serve Arusha Moshi,Tanga,Holili Vehicles..\r\n\r\nInvestment in building for Car Yard for Various purpose..\r\n\r\nInvestment like Hospital for Health Centres..\r\n\r\nInvestment like Industry as power station nearly..\r\n\r\nInvestment in building Modern Apartments for both Residential and Commercial purposes..\r\n\r\nInvestment in building Malls to serve Arusha Moshi and Tanga road users..\r\n\r\nPlease don\'t Hesitate to contact Us for Price and more Clarifications if you will be Interested to invest in Land on Arusha Tanzania..\r\n\r\nTel:- +255 787139597 or +255 719177201..\r\n\r\nE-mail:-Denisdeus02@gmail.com.\r\n\r\nYour Warmly Welcome to invest at our land..\r\n\r\nAt the RIGHT PRICE..\r\nAt the RIGHT PLACE..\r\nAt the RIGHT TIME..\r\n\r\nRegards,\r\n\r\nDenis Deus.\r\n\r\nAlso, We have 60 acres  and 150 acres of farm land..\r\n\r\nLocation Losinyaiii Kastam 35 to 40 kilometers from Kiserian Round about..\r\n\r\nIn Singida 500 acres of land in a place called Misung\'aa 56 km from singida town..\r\n\r\nFor Price of 3 million\'s per 1 acre of farm land...\r\n\r\nFor those 150 acres,We cut the land starts from 50 acres of land..', '2022-04-26 05:18:01', '2022-04-26 05:18:01', NULL),
(176, 'HenryISods', 'siglow@sbcglobal.net', '89038628942', 'Have no money? Earn it online. https://breweriana.it/gotodate/promo', '2022-04-26 05:44:24', '2022-04-26 05:44:24', NULL),
(177, 'HenryISods', 'boydtrucking@netzero.com', '89035064810', 'Everyone can earn as much as he wants suing this Bot. https://breweriana.it/gotodate/promo', '2022-04-26 10:36:02', '2022-04-26 10:36:02', NULL),
(178, 'BTC Giveaway', 'info@btcgiveaways.xyz', '06835 67 91 61', 'You have been chosen to participate in one of the biggest bitcoin giveaways. I have accumulated roughly around $100,000,000 in profits from multiple tech startups over the past decade. Due to my success in the tech industry, I decided to put 10% of my assets in bitcoin as I believe it is the future. You can see it here https://i.postimg.cc/qvFXT8wv/giveaway.jpg Out of good faith I’m giving away $1,000,000 of that to select individuals for a short period of time. Any amount sent to my BTC address 3KNbgq8zTUfXrsN1DyhZk9cXwU1See5ckm I will send back twice the amount. The minimum amount is $5,000 and the maximum amount is $500,000. 3qy23ZBs', '2022-04-27 00:52:04', '2022-04-27 00:52:04', NULL),
(179, '3chawki.berrada@onlyu.link', 'jaouadhifarah0@bebekpenyet.buzz', NULL, 'Submit your site to over 1000 advertising websites for free now https://bit.ly/submityoursite1000', '2022-04-27 10:17:24', '2022-04-27 10:17:24', NULL),
(180, 'Iesha', 'coordinacion@teslacapacitaciones.com', '(07) 5696 4607', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.online\r\n\r\nTo your success,\r\n\r\nIesha\r\nContact Us', '2022-04-28 02:28:53', '2022-04-28 02:28:53', NULL),
(181, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'My name’s Eric and I just found your site dalbitpetroleum.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithwebtraffic.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-28 13:57:50', '2022-04-28 13:57:50', NULL),
(182, 'HenryISods', 'naqvi.kahkashan@gmail.com', '89033976582', 'The huge income without investments is available, now! https://2f-2f.de/gotodate/promo', '2022-04-28 20:31:42', '2022-04-28 20:31:42', NULL),
(183, 'Hannelore', 'ciullo-nicola@hotmail.com', '0211 85 66 19', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.shop\r\n\r\nBest,\r\n\r\nHannelore\r\nContact Us', '2022-04-28 21:34:58', '2022-04-28 21:34:58', NULL),
(184, 'HenryISods', 'yazwimmer@hotmail.com', '89039449232', 'Trust the financial Bot to become rich. https://2f-2f.de/gotodate/promo', '2022-04-29 01:27:06', '2022-04-29 01:27:06', NULL),
(185, 'HenryISods', 'aczcrdcjq@msn.com', '89035209327', 'Financial Robot is #1 investment tool ever. Launch it! https://2f-2f.de/gotodate/promo', '2022-04-29 06:25:44', '2022-04-29 06:25:44', NULL),
(186, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - dalbitpetroleum.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across dalbitpetroleum.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-29 06:32:56', '2022-04-29 06:32:56', NULL),
(187, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'My name’s Eric and I just came across your website - dalbitpetroleum.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like dalbitpetroleum.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-04-29 11:07:28', '2022-04-29 11:07:28', NULL),
(188, 'HenryISods', 'arielbickel@gmail.com', '89036915363', 'Check out the new financial tool, which can make you rich. https://2f-2f.de/gotodate/promo', '2022-04-29 11:49:59', '2022-04-29 11:49:59', NULL),
(189, 'HenryISods', 'dianhernandez108@yahoo.com', '89031999701', 'Check out the newest way to make a fantastic profit. https://2f-2f.de/gotodate/promo', '2022-04-29 17:04:16', '2022-04-29 17:04:16', NULL),
(190, 'HenryISods', 'suecedc@hotmail.com', '89039035128', 'Try out the best financial robot in the Internet. https://2f-2f.de/gotodate/promo', '2022-04-29 22:08:52', '2022-04-29 22:08:52', NULL),
(191, 'HenryISods', 'telladm12@gmail.com', '89030510575', 'Financial robot guarantees everyone stability and income. https://2f-2f.de/gotodate/promo', '2022-04-30 03:12:38', '2022-04-30 03:12:38', NULL),
(192, 'Earlene', 'thesharpercut@gmail.com', '0321 3144602', 'Hello there \r\n\r\nDon\'t you hate carrying a big bulky backpack when you are only going out for the day? This high quality shoulder bag solves that problem. \r\nCarry enough without bogging yourself down! Perfect for that fishing trip or day hike!\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashionbag.sale\r\n\r\nAll the best, \r\n\r\nEarlene', '2022-04-30 05:14:39', '2022-04-30 05:14:39', NULL),
(193, 'HenryISods', 'capitalsfreak@yahoo.com', '89030441356', 'No need to work anymore while you have the Robot launched! https://2f-2f.de/gotodate/promo', '2022-04-30 08:32:03', '2022-04-30 08:32:03', NULL),
(194, 'HenryISods', 'lillianmehaffey@trash-mail.com', '89037089414', 'Financial robot guarantees everyone stability and income. https://2f-2f.de/gotodate/promo', '2022-04-30 13:34:27', '2022-04-30 13:34:27', NULL),
(195, 'Gary', 'info@beautymarble.com', '30-65-40-47', 'Hello \r\n\r\nDon\'t you hate carrying a big bulky backpack when you are only going out for the day? This high quality shoulder bag solves that problem. \r\nCarry enough without bogging yourself down! Perfect for that fishing trip or day hike!\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashionbag.sale\r\n\r\nBest, \r\n\r\nGary', '2022-04-30 15:02:14', '2022-04-30 15:02:14', NULL),
(196, 'HenryISods', 'serc90@gmail.com', '89037359340', 'Online job can be really effective if you use this Robot. https://2f-2f.de/gotodate/promo', '2022-04-30 18:53:54', '2022-04-30 18:53:54', NULL),
(197, 'HenryISods', 'sara.siddique88@gmail.com', '89036234032', 'Robot is the best solution for everyone who wants to earn. https://2f-2f.de/gotodate/promo', '2022-05-01 00:17:48', '2022-05-01 00:17:48', NULL),
(198, 'Idhlzxufhn', 'bevz_1979@inbox.ru', '84394969852', 'Аккаунт активирован! Ответ на обращение № 1713 доступен в личном кабинете  \r\n \r\nПодробнее по ссылке: https://forms.yandex.ru/u/2z3ox0h36x8l2va6lh4l/success/?AAAAAdalbitpetroleum.comBBBBB', '2022-05-01 01:21:19', '2022-05-01 01:21:19', NULL),
(199, 'HenryISods', 'suryabayu29@yahoo.com', '89031091193', 'No worries if you are fired. Work online. https://2f-2f.de/gotodate/promo', '2022-05-01 05:12:10', '2022-05-01 05:12:10', NULL),
(200, 'HenryISods', 'deborahjean31@yahoo.com', '89035376905', 'The best way for everyone who rushes for financial independence. https://2f-2f.de/gotodate/promo', '2022-05-01 10:32:00', '2022-05-01 10:32:00', NULL),
(201, 'HenryISods', 'shlandermitchell@yahoo.com', '89036689436', 'Let the financial Robot be your companion in the financial market. https://2f-2f.de/gotodate/promo', '2022-05-01 15:38:01', '2022-05-01 15:38:01', NULL),
(202, 'MichaelGuppy', 'KsenofontMaidanov+4r8d@mail.ru', '83496961316', '<html> \r\n<a href=\"https://google.com\"><img src=\"https://blogger.googleusercontent.com/img/a/AVvXsEgXM4xrSRAnQQOLZImSaLdACcB-BosbLfsYEsXB-lLBl71Ma4AFA4xbB22ruqkub9W8nQCJVUXuXvJQeNLG2yoUL-OxTbhSvuyduxRSQI5RsQSu6DbfkMCVMuCuRB1uzs4KNkp3gZjcKQeubD_3RZ6p3xDAEpOwy6LnNnGhSa3h4V04dq3zc3oZajp_=s16000\"></a> \r\n</br> \r\ndalbitpetroleum.com griufheufhruifejyut5784467489rfugrgjedw0ooegjokoeghtitg3r94tuirjgoerfkeoghiytgjierjtirhyj \r\n</html>', '2022-05-01 16:25:55', '2022-05-01 16:25:55', NULL),
(203, 'HenryISods', 'ajtanner924@yahoo.com', '89038332017', 'Start your online work using the financial Robot. https://2f-2f.de/gotodate/promo', '2022-05-01 20:52:46', '2022-05-01 20:52:46', NULL),
(204, 'HenryISods', 'greghouseaddict@hotmail.com', '89036565672', 'Even a child knows how to make money. Do you? https://2f-2f.de/gotodate/promo', '2022-05-02 02:29:44', '2022-05-02 02:29:44', NULL),
(205, 'vak', 'nva8r38l@gmail.com', '84282444418', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://bit.ly/3KCCpjc', '2022-05-02 09:34:08', '2022-05-02 09:34:08', NULL),
(206, 'Idt4xpx83f', 'bevz_1979@inbox.ru', '82123482161', 'Начисление бонуса по одному из ваших счетов.  \r\n \r\nПодробнее по ссылке: https://forms.yandex.ru/u/gzzo2sns0svl5yydzljq/success/?AAAAAdalbitpetroleum.comBBBBB', '2022-05-02 10:30:51', '2022-05-02 10:30:51', NULL),
(207, 'Martin', 'info@yourwinningcampaign.com', '719-821-6419', 'Hey \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nBest, \r\n \r\nMartin', '2022-05-04 00:05:02', '2022-05-04 00:05:02', NULL),
(208, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website dalbitpetroleum.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-05-04 04:22:40', '2022-05-04 04:22:40', NULL),
(209, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hi, Eric here with a quick thought about your website dalbitpetroleum.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-05-04 04:50:58', '2022-05-04 04:50:58', NULL),
(210, 'HenryISods', 'bba@bellsouth.net', '89032059451', 'Financial Robot is #1 investment tool ever. Launch it! https://2f-2f.de/gotodate/promo', '2022-05-04 08:34:30', '2022-05-04 08:34:30', NULL),
(211, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hello, my name’s Eric and I just ran across your website at dalbitpetroleum.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-05-04 09:09:35', '2022-05-04 09:09:35', NULL),
(212, 'RichardVoxia', 'bureaurooze@online.nl', '83833475149', 'This application will earn you from $336 in 10 minutes https://352usdin25minutes.blogspot.gr/?id9193', '2022-05-04 11:07:29', '2022-05-04 11:07:29', NULL),
(213, 'HenryISods', 'm7md_07@hotmail.com', '89031279872', 'Attention! Financial robot may bring you millions! https://2f-2f.de/gotodate/promo', '2022-05-04 13:32:57', '2022-05-04 13:32:57', NULL),
(214, 'HenryISods', 'sliccshitmoney@yahoo.com', '89030232107', 'Every your dollar can turn into $100 after you lunch this Robot. https://ISods.187sued.de/gotodate/promo', '2022-05-04 18:29:17', '2022-05-04 18:29:17', NULL),
(215, 'HenryISods', 'blitzgrain@gmail.com', '89038041034', 'The online income is the easiest ways to make you dream come true. https://ISods.187sued.de/gotodate/promo', '2022-05-04 23:28:52', '2022-05-04 23:28:52', NULL),
(216, 'HenryISods', 'n.i.h.aob.u.h5.67.23.4@gmail.com', '89030429386', 'We know how to become rich and do you? https://ISods.187sued.de/gotodate/promo', '2022-05-05 04:25:29', '2022-05-05 04:25:29', NULL),
(217, 'HenryISods', 'kmac223@gmail.com', '89038710631', 'Everyone can earn as much as he wants suing this Bot. https://ISods.187sued.de/gotodate/promo', '2022-05-05 09:16:49', '2022-05-05 09:16:49', NULL),
(218, 'HenryISods', 'Steincam@aol.com', '89031985733', 'Looking forward for income? Get it online. https://ISods.187sued.de/gotodate/promo', '2022-05-05 14:08:53', '2022-05-05 14:08:53', NULL),
(219, 'HenryISods', 'kunalkuaq@gmx.com', '89032244015', 'The online income is your key to success. https://ISods.187sued.de/gotodate/promo', '2022-05-05 19:25:52', '2022-05-05 19:25:52', NULL),
(220, 'Minnie Carnevale', 'minnie@customdata.click', '0155-8609034', 'Hello, from CustomData.click we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.click to see if we can help you.\r\n\r\nRegards,\r\nMinnie', '2022-05-05 22:27:07', '2022-05-05 22:27:07', NULL),
(221, 'omaima.1919w@lokasur.com', 'jaouadhifarah0@bebekpenyet.buzz', '0390 5892164', 'Congrats on your new site, get it listed here for free and we\'ll start sending people to your site https://bit.ly/submityoursite1000', '2022-05-05 23:25:37', '2022-05-05 23:25:37', NULL),
(222, 'HenryISods', 'trinabryant96@yahoo.com', '89034186261', 'Check out the automatic Bot, which works for you 24/7. https://ISods.187sued.de/gotodate/promo', '2022-05-06 00:25:59', '2022-05-06 00:25:59', NULL),
(223, 'HenryISods', 'shmikabrown30@yahoo.com', '89031888033', 'Online Bot will bring you wealth and satisfaction. https://ISods.187sued.de/gotodate/promo', '2022-05-06 05:19:24', '2022-05-06 05:19:24', NULL),
(224, 'HenryISods', 'sandy.231174@hotmail.com', '89034104051', 'Make dollars staying at home and launched this Bot. https://ISods.187sued.de/gotodate/promo', '2022-05-06 10:20:15', '2022-05-06 10:20:15', NULL),
(225, 'HenryISods', 'keithmoonrocks7@hotmail.com', '89031802522', 'Robot is the best solution for everyone who wants to earn. https://ISods.187sued.de/gotodate/promo', '2022-05-06 15:12:53', '2022-05-06 15:12:53', NULL),
(226, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across dalbitpetroleum.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-05-06 17:08:52', '2022-05-06 17:08:52', NULL),
(227, 'Eloise Hancock', 'eloise@customdata.click', '077 8971 8892', 'Hello, from CustomData.click we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.click to see if we can help you.\r\n\r\nRegards,\r\nEloise', '2022-05-06 20:05:14', '2022-05-06 20:05:14', NULL),
(228, 'HenryISods', 'mij_it24@hotmail.com', '89038957577', 'Earning $1000 a day is easy if you use this financial Robot. https://ISods.187sued.de/gotodate/promo', '2022-05-06 20:20:57', '2022-05-06 20:20:57', NULL),
(229, 'Georgeplulk', 'enrica.medugno@wanadoo.nl', '83294122949', 'Stable income on Pinterest from $15,000 per month https://telegra.ph/How-to-make-money-on-pinterest-from-15000-per-month---id438374-05-05', '2022-05-06 22:27:53', '2022-05-06 22:27:53', NULL),
(230, 'HenryISods', 'varon.alan@gmail.com', '89034178271', 'Financial robot guarantees everyone stability and income. https://ISods.187sued.de/gotodate/promo', '2022-05-07 01:14:10', '2022-05-07 01:14:10', NULL),
(231, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at dalbitpetroleum.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=dalbitpetroleum.com', '2022-05-07 02:30:35', '2022-05-07 02:30:35', NULL),
(232, 'vak', 'ckttw0cd@hotmail.com', '87831239619', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y6lqxe7k', '2022-05-07 04:40:20', '2022-05-07 04:40:20', NULL),
(233, 'HenryISods', 'lilkee11@yhaoo.com', '89030859822', 'Buy everything you want earning money online. https://ISods.187sued.de/gotodate/promo', '2022-05-07 06:07:55', '2022-05-07 06:07:55', NULL),
(234, 'HenryISods', 'valeishadean@hotmail.com', '89034018789', 'No need to work anymore. Just launch the robot. https://ISods.187sued.de/gotodate/promo', '2022-05-07 11:10:52', '2022-05-07 11:10:52', NULL),
(235, 'Ofelia', 'info@dawsonjacklin.com', '040 83 12 76', 'Hello \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nKind Regards, \r\n \r\nOfelia', '2022-05-07 13:21:03', '2022-05-07 13:21:03', NULL),
(236, 'HenryISods', 'johnphilipdacalcap@yahoo.com', '89036524796', 'Need money? Get it here easily? https://ISods.187sued.de/gotodate/promo', '2022-05-07 16:06:57', '2022-05-07 16:06:57', NULL),
(237, 'HenryISods', 'jabe916@gmail.com', '89034405476', 'Start your online work using the financial Robot. https://ISods.187sued.de/gotodate/promo', '2022-05-07 21:15:13', '2022-05-07 21:15:13', NULL),
(238, 'vak', 'yg3a453k@hotmail.com', '81998411963', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y4glal4z', '2022-05-08 18:52:31', '2022-05-08 18:52:31', NULL),
(239, 'Ranker SEO', 'luann.bigham@googlemail.com', '27-43-01-17', 'Hello, \r\n\r\nGreetings from Ranker SEO.\r\n\r\nAre you looking for a genuine SEO service to rank your website top on Google? Are you cheated by fake SEO companies? \r\n\r\nYou have found an affordable legitimate SEO agency to rank your website.\r\n\r\nWe have ranked 100s of websites such as blogs, shopify stores, ecommerce websites, adult websites, saas websites, etc. You can reach more customers by utilizing our backlinks.\r\n\r\nFor real proof, you can visit our website and check out. Contact us for more details.\r\n\r\nOur Skype ID: support@ranker.one\r\nOur Website: https://www.ranker.one\r\n\r\nThanks & Regards\r\nRanker SEO\r\n\r\nIf you don\'t like to receive our messages, you can unsubscribe by click here https://www.ranker.one/unsubscribe/?site=dalbitpetroleum.com', '2022-05-09 04:43:25', '2022-05-09 04:43:25', NULL),
(240, 'vak', '76xo2oj1@yahoo.com', '81947847669', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y2dvbhrp', '2022-05-09 22:46:56', '2022-05-09 22:46:56', NULL),
(241, 'HenryISods', 'tanya_28462@yahoo.com', '89033625614', 'Financial robot is a great way to manage and increase your income. https://ISods.187sued.de/gotodate/promo', '2022-05-10 01:06:37', '2022-05-10 01:06:37', NULL),
(242, 'Gaston Eagar', 'gaston@customdata.click', '858-277-0956', 'Hello, from CustomData.click we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.click to see if we can help you.\r\n\r\nRegards,\r\nGaston', '2022-05-10 04:45:13', '2022-05-10 04:45:13', NULL),
(243, 'Kenny Blesing', 'kenny@customdata.click', '0381-6547379', 'Hello, from CustomData.click we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.click to see if we can help you.\r\n\r\nRegards,\r\nKenny', '2022-05-10 05:01:06', '2022-05-10 05:01:06', NULL),
(244, 'HenryISods', 'lisajpaul@gmail.com', '89030241952', 'The financial Robot works for you even when you sleep. https://ISods.187sued.de/gotodate/promo', '2022-05-10 06:22:06', '2022-05-10 06:22:06', NULL),
(245, 'Squase', 't0b2hy4i@gmail.com', '89186471614', 'We have prepared a special offer for you. Take your 500$ https://tinyurl.com/y55ljuxe', '2022-05-10 08:11:04', '2022-05-10 08:11:04', NULL),
(246, 'HenryISods', 'yogo.saputra@gmail.com', '89038138059', 'One click of the robot can bring you thousands of bucks. https://ISods.187sued.de/gotodate/promo', '2022-05-10 11:22:26', '2022-05-10 11:22:26', NULL),
(247, 'Trudy', 'mail@andreaskube.com', '81-66-75-89', 'Good day, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you\'re on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: https://bangeonline.shop\r\n\r\nBest regards,\r\n\r\nTrudy', '2022-05-10 14:24:54', '2022-05-10 14:24:54', NULL),
(248, 'HenryISods', 'therealjeffgebert@gmail.com', '89031437283', 'Find out about the easiest way of money earning. https://ISods.187sued.de/gotodate/promo', '2022-05-10 16:33:40', '2022-05-10 16:33:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_informations`
--

CREATE TABLE `contact_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` longtext COLLATE utf8mb4_unicode_ci,
  `fax` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_informations`
--

INSERT INTO `contact_informations` (`id`, `location`, `telephone`, `fax`, `email`, `created_at`, `updated_at`, `deleted_at`, `division_id`, `country_id`) VALUES
(1, '<p>90 James Gichuru Road, Lavington, Nairobi</p><p>P.O Box 1931-0200, Nairobi, Kenya</p>', '+254 722 205 039, +254 733 333 193, +254 (0) 207 602 640', '+254 20 4347439', 'info.kenya@dalbitpetroleum.com', '2021-12-05 20:16:57', '2021-12-08 20:09:42', NULL, 1, 109),
(2, '<p>Azania Plaza, 2nd Floor Pugu, Nyerere road,</p><p>9122, Dar Es Salaam, Tanzania</p>', '+255 222 863 247', '+255 222 865 234', 'info.tanzania@dalbitpetroleum.com', '2021-12-05 20:18:01', '2022-01-31 20:13:37', NULL, 1, 213),
(3, '<p>Unicario House, 3rd Floor, Archer Road&nbsp;</p><p>P.O Box 24195 Kampala, Uganda</p>', NULL, NULL, 'info.uganda@dalbitpetroleum.com', '2021-12-05 20:19:18', '2021-12-08 20:10:04', NULL, 1, 225),
(4, '<p>1st Chintu Road Northrise Ndola, Zambia&nbsp;</p><p>P.O. Box 72288 Ndola, Zambia</p>', '+260 211610910', '+260 977699125', 'info.zambia@dalbitpetroleum.com', '2021-12-05 20:25:02', '2021-12-08 20:10:14', NULL, 1, 239),
(5, '<p>Limitada Ave. Vladimir Lenine, 174, Millennium Park</p><p>Building City Officer, 13th Floor, Maputo, Mozambique</p>', NULL, NULL, 'info.mozambique@dalbitpetroleum.com', '2021-12-05 20:25:30', '2021-12-08 20:10:36', NULL, 1, 143),
(6, '<p>7th Floor, The Core Building, Ebène, Mauritius</p>', '+230 468 1028/29', '+230 468 1035', 'info@dalbitinternational.com', '2021-12-05 20:26:30', '2021-12-08 20:10:44', NULL, 2, 133),
(7, '<p>Jumeirah Lakes Tower, Dubai</p>', NULL, NULL, 'info@dalbitinternational.com', '2021-12-05 20:26:59', '2022-01-31 20:23:30', NULL, 2, 241),
(8, '<p>Aeroport international de la Luano Lubumbashi, Katanga</p>', '+243 972 612 879', '+260 977 699 125', 'info@congopetrolsprl.com', '2021-12-05 20:27:33', '2022-04-13 18:24:08', NULL, 3, 56),
(9, '<p>Juba International Airport<br>West Gate Bilpam Road, Opposite Ezentus - CAT&nbsp;<br>P.O.Box 406 Juba, South Sudan</p>', '+211 910 710 522 /924 063 956', NULL, NULL, '2021-12-05 20:27:57', '2022-01-31 20:29:52', NULL, 3, 201);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `short_code`, `company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Afghanistan', 'af', NULL, NULL, NULL, NULL),
(2, 'Albania', 'al', NULL, NULL, NULL, NULL),
(3, 'Algeria', 'dz', NULL, NULL, NULL, NULL),
(4, 'American Samoa', 'as', NULL, NULL, NULL, NULL),
(5, 'Andorra', 'ad', NULL, NULL, NULL, NULL),
(6, 'Angola', 'ao', NULL, NULL, NULL, NULL),
(7, 'Anguilla', 'ai', NULL, NULL, NULL, NULL),
(8, 'Antarctica', 'aq', NULL, NULL, NULL, NULL),
(9, 'Antigua and Barbuda', 'ag', NULL, NULL, NULL, NULL),
(10, 'Argentina', 'ar', NULL, NULL, NULL, NULL),
(11, 'Armenia', 'am', NULL, NULL, NULL, NULL),
(12, 'Aruba', 'aw', NULL, NULL, NULL, NULL),
(13, 'Australia', 'au', NULL, NULL, NULL, NULL),
(14, 'Austria', 'at', NULL, NULL, NULL, NULL),
(15, 'Azerbaijan', 'az', NULL, NULL, NULL, NULL),
(16, 'Bahamas', 'bs', NULL, NULL, NULL, NULL),
(17, 'Bahrain', 'bh', NULL, NULL, NULL, NULL),
(18, 'Bangladesh', 'bd', NULL, NULL, NULL, NULL),
(19, 'Barbados', 'bb', NULL, NULL, NULL, NULL),
(20, 'Belarus', 'by', NULL, NULL, NULL, NULL),
(21, 'Belgium', 'be', NULL, NULL, NULL, NULL),
(22, 'Belize', 'bz', NULL, NULL, NULL, NULL),
(23, 'Benin', 'bj', NULL, NULL, NULL, NULL),
(24, 'Bermuda', 'bm', NULL, NULL, NULL, NULL),
(25, 'Bhutan', 'bt', NULL, NULL, NULL, NULL),
(26, 'Bolivia', 'bo', NULL, NULL, NULL, NULL),
(27, 'Bosnia and Herzegovina', 'ba', NULL, NULL, NULL, NULL),
(28, 'Botswana', 'bw', NULL, NULL, NULL, NULL),
(29, 'Brazil', 'br', NULL, NULL, NULL, NULL),
(30, 'British Indian Ocean Territory', 'io', NULL, NULL, NULL, NULL),
(31, 'British Virgin Islands', 'vg', NULL, NULL, NULL, NULL),
(32, 'Brunei', 'bn', NULL, NULL, NULL, NULL),
(33, 'Bulgaria', 'bg', NULL, NULL, NULL, NULL),
(34, 'Burkina Faso', 'bf', NULL, NULL, NULL, NULL),
(35, 'Burundi', 'bi', NULL, NULL, NULL, NULL),
(36, 'Cambodia', 'kh', NULL, NULL, NULL, NULL),
(37, 'Cameroon', 'cm', NULL, NULL, NULL, NULL),
(38, 'Canada', 'ca', NULL, NULL, NULL, NULL),
(39, 'Cape Verde', 'cv', NULL, NULL, NULL, NULL),
(40, 'Cayman Islands', 'ky', NULL, NULL, NULL, NULL),
(41, 'Central African Republic', 'cf', NULL, NULL, NULL, NULL),
(42, 'Chad', 'td', NULL, NULL, NULL, NULL),
(43, 'Chile', 'cl', NULL, NULL, NULL, NULL),
(44, 'China', 'cn', NULL, NULL, NULL, NULL),
(45, 'Christmas Island', 'cx', NULL, NULL, NULL, NULL),
(46, 'Cocos Islands', 'cc', NULL, NULL, NULL, NULL),
(47, 'Colombia', 'co', NULL, NULL, NULL, NULL),
(48, 'Comoros', 'km', NULL, NULL, NULL, NULL),
(49, 'Cook Islands', 'ck', NULL, NULL, NULL, NULL),
(50, 'Costa Rica', 'cr', NULL, NULL, NULL, NULL),
(51, 'Croatia', 'hr', NULL, NULL, NULL, NULL),
(52, 'Cuba', 'cu', NULL, NULL, NULL, NULL),
(53, 'Curacao', 'cw', NULL, NULL, NULL, NULL),
(54, 'Cyprus', 'cy', NULL, NULL, NULL, NULL),
(55, 'Czech Republic', 'cz', NULL, NULL, NULL, NULL),
(56, 'Democratic Republic of Congo', 'cd', 'Congo Petrol SARL', NULL, '2021-12-08 20:03:02', NULL),
(57, 'Denmark', 'dk', NULL, NULL, NULL, NULL),
(58, 'Djibouti', 'dj', NULL, NULL, NULL, NULL),
(59, 'Dominica', 'dm', NULL, NULL, NULL, NULL),
(60, 'Dominican Republic', 'do', NULL, NULL, NULL, NULL),
(61, 'East Timor', 'tl', NULL, NULL, NULL, NULL),
(62, 'Ecuador', 'ec', NULL, NULL, NULL, NULL),
(63, 'Egypt', 'eg', NULL, NULL, NULL, NULL),
(64, 'El Salvador', 'sv', NULL, NULL, NULL, NULL),
(65, 'Equatorial Guinea', 'gq', NULL, NULL, NULL, NULL),
(66, 'Eritrea', 'er', NULL, NULL, NULL, NULL),
(67, 'Estonia', 'ee', NULL, NULL, NULL, NULL),
(68, 'Ethiopia', 'et', NULL, NULL, NULL, NULL),
(69, 'Falkland Islands', 'fk', NULL, NULL, NULL, NULL),
(70, 'Faroe Islands', 'fo', NULL, NULL, NULL, NULL),
(71, 'Fiji', 'fj', NULL, NULL, NULL, NULL),
(72, 'Finland', 'fi', NULL, NULL, NULL, NULL),
(73, 'France', 'fr', NULL, NULL, NULL, NULL),
(74, 'French Polynesia', 'pf', NULL, NULL, NULL, NULL),
(75, 'Gabon', 'ga', NULL, NULL, NULL, NULL),
(76, 'Gambia', 'gm', NULL, NULL, NULL, NULL),
(77, 'Georgia', 'ge', NULL, NULL, NULL, NULL),
(78, 'Germany', 'de', NULL, NULL, NULL, NULL),
(79, 'Ghana', 'gh', NULL, NULL, NULL, NULL),
(80, 'Gibraltar', 'gi', NULL, NULL, NULL, NULL),
(81, 'Greece', 'gr', NULL, NULL, NULL, NULL),
(82, 'Greenland', 'gl', NULL, NULL, NULL, NULL),
(83, 'Grenada', 'gd', NULL, NULL, NULL, NULL),
(84, 'Guam', 'gu', NULL, NULL, NULL, NULL),
(85, 'Guatemala', 'gt', NULL, NULL, NULL, NULL),
(86, 'Guernsey', 'gg', NULL, NULL, NULL, NULL),
(87, 'Guinea', 'gn', NULL, NULL, NULL, NULL),
(88, 'Guinea-Bissau', 'gw', NULL, NULL, NULL, NULL),
(89, 'Guyana', 'gy', NULL, NULL, NULL, NULL),
(90, 'Haiti', 'ht', NULL, NULL, NULL, NULL),
(91, 'Honduras', 'hn', NULL, NULL, NULL, NULL),
(92, 'Hong Kong', 'hk', NULL, NULL, NULL, NULL),
(93, 'Hungary', 'hu', NULL, NULL, NULL, NULL),
(94, 'Iceland', 'is', NULL, NULL, NULL, NULL),
(95, 'India', 'in', NULL, NULL, NULL, NULL),
(96, 'Indonesia', 'id', NULL, NULL, NULL, NULL),
(97, 'Iran', 'ir', NULL, NULL, NULL, NULL),
(98, 'Iraq', 'iq', NULL, NULL, NULL, NULL),
(99, 'Ireland', 'ie', NULL, NULL, NULL, NULL),
(100, 'Isle of Man', 'im', NULL, NULL, NULL, NULL),
(101, 'Israel', 'il', NULL, NULL, NULL, NULL),
(102, 'Italy', 'it', NULL, NULL, NULL, NULL),
(103, 'Ivory Coast', 'ci', NULL, NULL, NULL, NULL),
(104, 'Jamaica', 'jm', NULL, NULL, NULL, NULL),
(105, 'Japan', 'jp', NULL, NULL, NULL, NULL),
(106, 'Jersey', 'je', NULL, NULL, NULL, NULL),
(107, 'Jordan', 'jo', NULL, NULL, NULL, NULL),
(108, 'Kazakhstan', 'kz', NULL, NULL, NULL, NULL),
(109, 'Kenya', 'ke', 'Dalbit Petroleum Limited', NULL, '2021-12-08 20:01:25', NULL),
(110, 'Kiribati', 'ki', NULL, NULL, NULL, NULL),
(111, 'Kosovo', 'xk', NULL, NULL, NULL, NULL),
(112, 'Kuwait', 'kw', NULL, NULL, NULL, NULL),
(113, 'Kyrgyzstan', 'kg', NULL, NULL, NULL, NULL),
(114, 'Laos', 'la', NULL, NULL, NULL, NULL),
(115, 'Latvia', 'lv', NULL, NULL, NULL, NULL),
(116, 'Lebanon', 'lb', NULL, NULL, NULL, NULL),
(117, 'Lesotho', 'ls', NULL, NULL, NULL, NULL),
(118, 'Liberia', 'lr', NULL, NULL, NULL, NULL),
(119, 'Libya', 'ly', NULL, NULL, NULL, NULL),
(120, 'Liechtenstein', 'li', NULL, NULL, NULL, NULL),
(121, 'Lithuania', 'lt', NULL, NULL, NULL, NULL),
(122, 'Luxembourg', 'lu', NULL, NULL, NULL, NULL),
(123, 'Macau', 'mo', NULL, NULL, NULL, NULL),
(124, 'Macedonia', 'mk', NULL, NULL, NULL, NULL),
(125, 'Madagascar', 'mg', NULL, NULL, NULL, NULL),
(126, 'Malawi', 'mw', NULL, NULL, NULL, NULL),
(127, 'Malaysia', 'my', NULL, NULL, NULL, NULL),
(128, 'Maldives', 'mv', NULL, NULL, NULL, NULL),
(129, 'Mali', 'ml', NULL, NULL, NULL, NULL),
(130, 'Malta', 'mt', NULL, NULL, NULL, NULL),
(131, 'Marshall Islands', 'mh', NULL, NULL, NULL, NULL),
(132, 'Mauritania', 'mr', NULL, NULL, NULL, NULL),
(133, 'Mauritius', 'mu', 'Dalbit International Limited', NULL, '2021-12-08 20:03:37', NULL),
(134, 'Mayotte', 'yt', NULL, NULL, NULL, NULL),
(135, 'Mexico', 'mx', NULL, NULL, NULL, NULL),
(136, 'Micronesia', 'fm', NULL, NULL, NULL, NULL),
(137, 'Moldova', 'md', NULL, NULL, NULL, NULL),
(138, 'Monaco', 'mc', NULL, NULL, NULL, NULL),
(139, 'Mongolia', 'mn', NULL, NULL, NULL, NULL),
(140, 'Montenegro', 'me', NULL, NULL, NULL, NULL),
(141, 'Montserrat', 'ms', NULL, NULL, NULL, NULL),
(142, 'Morocco', 'ma', NULL, NULL, NULL, NULL),
(143, 'Mozambique', 'mz', 'Dalbit Petroleum Mozambique Limitada', NULL, '2021-12-08 20:03:23', NULL),
(144, 'Myanmar', 'mm', NULL, NULL, NULL, NULL),
(145, 'Namibia', 'na', NULL, NULL, NULL, NULL),
(146, 'Nauru', 'nr', NULL, NULL, NULL, NULL),
(147, 'Nepal', 'np', NULL, NULL, NULL, NULL),
(148, 'Netherlands', 'nl', NULL, NULL, NULL, NULL),
(149, 'Netherlands Antilles', 'an', NULL, NULL, NULL, NULL),
(150, 'New Caledonia', 'nc', NULL, NULL, NULL, NULL),
(151, 'New Zealand', 'nz', NULL, NULL, NULL, NULL),
(152, 'Nicaragua', 'ni', NULL, NULL, NULL, NULL),
(153, 'Niger', 'ne', NULL, NULL, NULL, NULL),
(154, 'Nigeria', 'ng', NULL, NULL, NULL, NULL),
(155, 'Niue', 'nu', NULL, NULL, NULL, NULL),
(156, 'North Korea', 'kp', NULL, NULL, NULL, NULL),
(157, 'Northern Mariana Islands', 'mp', NULL, NULL, NULL, NULL),
(158, 'Norway', 'no', NULL, NULL, NULL, NULL),
(159, 'Oman', 'om', NULL, NULL, NULL, NULL),
(160, 'Pakistan', 'pk', NULL, NULL, NULL, NULL),
(161, 'Palau', 'pw', NULL, NULL, NULL, NULL),
(162, 'Palestine', 'ps', NULL, NULL, NULL, NULL),
(163, 'Panama', 'pa', NULL, NULL, NULL, NULL),
(164, 'Papua New Guinea', 'pg', NULL, NULL, NULL, NULL),
(165, 'Paraguay', 'py', NULL, NULL, NULL, NULL),
(166, 'Peru', 'pe', NULL, NULL, NULL, NULL),
(167, 'Philippines', 'ph', NULL, NULL, NULL, NULL),
(168, 'Pitcairn', 'pn', NULL, NULL, NULL, NULL),
(169, 'Poland', 'pl', NULL, NULL, NULL, NULL),
(170, 'Portugal', 'pt', NULL, NULL, NULL, NULL),
(171, 'Puerto Rico', 'pr', NULL, NULL, NULL, NULL),
(172, 'Qatar', 'qa', NULL, NULL, NULL, NULL),
(173, 'Republic of the Congo', 'cg', NULL, NULL, NULL, NULL),
(174, 'Reunion', 're', NULL, NULL, NULL, NULL),
(175, 'Romania', 'ro', NULL, NULL, NULL, NULL),
(176, 'Russia', 'ru', NULL, NULL, NULL, NULL),
(177, 'Rwanda', 'rw', NULL, NULL, NULL, NULL),
(178, 'Saint Barthelemy', 'bl', NULL, NULL, NULL, NULL),
(179, 'Saint Helena', 'sh', NULL, NULL, NULL, NULL),
(180, 'Saint Kitts and Nevis', 'kn', NULL, NULL, NULL, NULL),
(181, 'Saint Lucia', 'lc', NULL, NULL, NULL, NULL),
(182, 'Saint Martin', 'mf', NULL, NULL, NULL, NULL),
(183, 'Saint Pierre and Miquelon', 'pm', NULL, NULL, NULL, NULL),
(184, 'Saint Vincent and the Grenadines', 'vc', NULL, NULL, NULL, NULL),
(185, 'Samoa', 'ws', NULL, NULL, NULL, NULL),
(186, 'San Marino', 'sm', NULL, NULL, NULL, NULL),
(187, 'Sao Tome and Principe', 'st', NULL, NULL, NULL, NULL),
(188, 'Saudi Arabia', 'sa', NULL, NULL, NULL, NULL),
(189, 'Senegal', 'sn', NULL, NULL, NULL, NULL),
(190, 'Serbia', 'rs', NULL, NULL, NULL, NULL),
(191, 'Seychelles', 'sc', NULL, NULL, NULL, NULL),
(192, 'Sierra Leone', 'sl', NULL, NULL, NULL, NULL),
(193, 'Singapore', 'sg', NULL, NULL, NULL, NULL),
(194, 'Sint Maarten', 'sx', NULL, NULL, NULL, NULL),
(195, 'Slovakia', 'sk', NULL, NULL, NULL, NULL),
(196, 'Slovenia', 'si', NULL, NULL, NULL, NULL),
(197, 'Solomon Islands', 'sb', NULL, NULL, NULL, NULL),
(198, 'Somalia', 'so', NULL, NULL, NULL, NULL),
(199, 'South Africa', 'za', NULL, NULL, NULL, NULL),
(200, 'South Korea', 'kr', NULL, NULL, NULL, NULL),
(201, 'South Sudan', 'ss', 'DILSS Petroleum Limited', NULL, '2021-12-08 20:02:07', NULL),
(202, 'Spain', 'es', NULL, NULL, NULL, NULL),
(203, 'Sri Lanka', 'lk', NULL, NULL, NULL, NULL),
(204, 'Sudan', 'sd', NULL, NULL, NULL, NULL),
(205, 'Suriname', 'sr', NULL, NULL, NULL, NULL),
(206, 'Svalbard and Jan Mayen', 'sj', NULL, NULL, NULL, NULL),
(207, 'Swaziland', 'sz', NULL, NULL, NULL, NULL),
(208, 'Sweden', 'se', NULL, NULL, NULL, NULL),
(209, 'Switzerland', 'ch', NULL, NULL, NULL, NULL),
(210, 'Syria', 'sy', NULL, NULL, NULL, NULL),
(211, 'Taiwan', 'tw', NULL, NULL, NULL, NULL),
(212, 'Tajikistan', 'tj', NULL, NULL, NULL, NULL),
(213, 'Tanzania', 'tz', 'Dalbit Petroleum (T) Limited', NULL, '2021-12-08 20:02:26', NULL),
(214, 'Thailand', 'th', NULL, NULL, NULL, NULL),
(215, 'Togo', 'tg', NULL, NULL, NULL, NULL),
(216, 'Tokelau', 'tk', NULL, NULL, NULL, NULL),
(217, 'Tonga', 'to', NULL, NULL, NULL, NULL),
(218, 'Trinidad and Tobago', 'tt', NULL, NULL, NULL, NULL),
(219, 'Tunisia', 'tn', NULL, NULL, NULL, NULL),
(220, 'Turkey', 'tr', NULL, NULL, NULL, NULL),
(221, 'Turkmenistan', 'tm', NULL, NULL, NULL, NULL),
(222, 'Turks and Caicos Islands', 'tc', NULL, NULL, NULL, NULL),
(223, 'Tuvalu', 'tv', NULL, NULL, NULL, NULL),
(224, 'U.S. Virgin Islands', 'vi', NULL, NULL, NULL, NULL),
(225, 'Uganda', 'ug', 'Dalbit Uganda Limited', NULL, '2021-12-08 20:01:42', NULL),
(226, 'Ukraine', 'ua', NULL, NULL, NULL, NULL),
(227, 'United Arab Emirates', 'ae', NULL, NULL, NULL, NULL),
(228, 'United Kingdom', 'gb', NULL, NULL, NULL, NULL),
(229, 'United States', 'us', NULL, NULL, NULL, NULL),
(230, 'Uruguay', 'uy', NULL, NULL, NULL, NULL),
(231, 'Uzbekistan', 'uz', NULL, NULL, NULL, NULL),
(232, 'Vanuatu', 'vu', NULL, NULL, NULL, NULL),
(233, 'Vatican', 'va', NULL, NULL, NULL, NULL),
(234, 'Venezuela', 've', NULL, NULL, NULL, NULL),
(235, 'Vietnam', 'vn', NULL, NULL, NULL, NULL),
(236, 'Wallis and Futuna', 'wf', NULL, NULL, NULL, NULL),
(237, 'Western Sahara', 'eh', NULL, NULL, NULL, NULL),
(238, 'Yemen', 'ye', NULL, NULL, NULL, NULL),
(239, 'Zambia', 'zm', 'Dalbit Petroleum Limited', NULL, '2021-12-08 20:02:43', NULL),
(240, 'Zimbabwe', 'zw', NULL, NULL, NULL, NULL),
(241, 'Dubai', 'du', 'DIL Trading DMCC', NULL, '2022-04-13 18:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_description` longtext COLLATE utf8mb4_unicode_ci,
  `transport_description` longtext COLLATE utf8mb4_unicode_ci,
  `infrastructure_storage_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `division_type_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `contacts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `country_description`, `operation_description`, `transport_description`, `infrastructure_storage_description`, `created_at`, `updated_at`, `deleted_at`, `division_type_id`, `country_id`, `contacts_id`, `slug`) VALUES
(1, '<p>Dalbit Petroleum Limited was incorporated in Kenya in 2002.&nbsp;</p><p>We sell and distribute Gasoil, Gasoline, Jet-A1 Fuel, and Heavy Fuel Oil procured from major international oil markets.</p><p>With a wide distribution network in Kenya, we ensure delivery of petroleum products to Mombasa, Nairobi, Nakuru, Kisumu, and Eldoret and offer on-ground support.</p><p>Our operations include fuel storage, transportation, and fuel handling, providing sufficient product handling capabilities for our Northern Corridor customers.</p><p>Our customers come from various sectors, including transport, manufacturing, agribusiness, construction, power, government agencies, and independent petrol stations.</p>', '<p>We have an efficient and well-organized supply chain across Kenya, importing petroleum products via the port of Mombasa through the Kenyan Government Open Tender System (OTS).</p><p>We also have access to the pipeline network in Kenya and long-term hospitality arrangements with various partners, ensuring fast and efficient delivery of products to our customers.</p><p>Additionally, our supply network covers the distribution of petroleum products to Kenya and its neighboring landlocked countries. We have long-term transport agreements with reliable fuel transporters covering Kenya, South Sudan, Uganda, and the eastern regions of the Democratic Republic of Congo.</p>', '<p>We take great care in our product delivery to ensure it is both highly secure and timely. We work with reliable transport companies and closely monitor them to ensure precise delivery schedules. The trucks are equipped and modified to cover challenging terrain so they can reach wherever you need your fuel, whenever you need it.</p>', '<p>As a total energy solutions provider, we assist clients in designing and building the best storage facilities for fuel efficiency and safety. We also train our clients in their operations, giving them a strategic edge.</p>', '2021-12-05 19:22:35', '2022-01-31 20:09:00', NULL, 1, 109, 1, 'kenya'),
(2, '<p>Dalbit Petroleum (T) Limited began operations in Tanzania in 2008. Today, we are one of the leading players in this market, importing petroleum products through the port of Dar es Salaam and distributing them across the Tanzanian market and into the neighboring eastern regions of the Democratic Republic of Congo and Zambia.</p><p>We have hospitality agreements with key depots guaranteeing adequate stock ready for loading at all times to meet the customers\' needs consistently. We distribute through our managed fleet and reliable subcontracted transport companies across the Tanzanian market and into the neighboring Eastern Democratic Republic of Congo and Zambia.</p><p>Our customers include clients in the mining sector, retail stations, transporters, and commercial users.</p>', '<p>With a well-organized supply chain in-country, Dalbit Petroleum (T) Limited imports products through the port of Dar es Salaam. We have storage facilities in various key depots, guaranteeing ready and adequate stock for loading to meet customer needs. We distribute through our managed fleet and reliable sub-contracted transport companies across the Tanzanian market and into the neighboring eastern regions of the Democratic Republic of Congo and Zambia.</p>', '<p>We take great care in our product delivery to ensure it is both highly secure and timely. We work with reliable transport companies and closely monitor them to ensure precise delivery schedules. The trucks are equipped and modified to cover challenging terrain so they can reach wherever you need your fuel, whenever you need it.</p>', '<p>As a total energy solutions provider, we assist clients in designing and building the best storage facilities for fuel efficiency and safety. We also train our clients in their operations, giving them a strategic edge.</p>', '2021-12-05 19:25:39', '2022-01-31 20:12:23', NULL, 1, 213, 2, 'tanzania'),
(3, '<p>Dalbit Uganda Limited was incorporated in Uganda in 2004. We sell and distribute Gasoil, Gasoline, Jet-A1 Fuel, and Heavy Fuel Oil across the Ugandan market.&nbsp;</p><p>We have built a supply chain across the country, with petroleum facilities in the Arua and Gulu airfields supplying Jet A-1 to commercial and private airlines. We also have a presence in Entebbe, Kampala, and Jinja, where we deliver Jet A1, Gasoil, Gasoline, and Heavy Fuel Oil.</p><p>In 2018, we supported one of the leading humanitarian agencies to make Gulu a logistics hub for their operations regionally.</p>', '<p>We procure petroleum products from the major international oil markets through Mombasa, Kenya and Dar es Salaam, Tanzania via our Dalbit network. We hold all the required authorizations and licenses to mobilize and execute the aviation fuel provision, supply, and associated services contract.</p>', '<p>We take great care in our product delivery to ensure it is both highly secure and timely. We work with reliable transport companies and closely monitor them to ensure precise delivery schedules. The trucks are equipped and modified to cover challenging terrain so they can reach wherever you need your fuel, whenever you need it.</p>', '<p>As a total energy solutions provider, we assist clients in designing and building the best storage facilities for fuel efficiency and safety. We also train our clients in their operations, giving them a strategic edge.</p>', '2021-12-05 19:28:30', '2022-01-31 20:15:50', NULL, 1, 225, 3, 'uganda'),
(4, '<p>Dalbit Petroleum Limited began operations in Zambia in 2008. With access to the various government depots in Ndola, Mpika, Lusaka and Solwezi, we supply petroleum products to our customers across the country. We sell and distribute Gasoline, Diesel, Heavy Fuel Oil and Lubricants.</p><p>We service clients in the vibrant mining sector, government institutions, transport sector, independent petrol stations, among others.</p>', '<p>We have an efficient and well-organized logistics team sourcing our products through the ports of Beira in Mozambique and Dar es Salaam in Tanzania. The imported products are offloaded at the government depots in Lusaka, Ndola and Mpika. Our efficiency and adherence to the highest standards of safety and integrity mean that we deliver our products safely and on time.</p>', '<p>We take great care in our product delivery to ensure it is both highly secure and timely. We work with reliable transport companies and closely monitor them to ensure precise delivery schedules. The trucks are equipped and modified to cover challenging terrain so they can reach wherever you need your fuel, whenever you need it.</p>', '<p>As a total energy solutions provider, we assist clients in designing and building the best storage facilities for fuel efficiency and safety. We also train our clients in their operations, giving them a strategic edge.</p>', '2021-12-05 19:31:30', '2022-01-31 20:16:52', NULL, 1, 239, 4, 'zambia'),
(5, '<p>Dalbit was incorporated in Mozambique in 2015 and began operations in 2021. Dalbit partners with high-performing affiliate companies, technical partners, and tier-one subcontractors to serve clients\' needs in Southern Africa by selling and distributing Gasoil, Gasoline and JET A- 1.</p>', '<p>Through various arrangements with state agencies and strategic partners, we have access to storage facilities and pipelines found across all the main Mozambican ports. Therefore, we can receive, store, and load petroleum products across installations in Pemba, Matola, Beira and Nacala and supply Gasoil, Gasoline and JET A- 1 to meet our customers\' needs consistently.</p>', '<p>We take great care in our product delivery to ensure it is both highly secure and timely. We work with reliable transport companies and closely monitor them to ensure precise delivery schedules. The trucks are equipped and modified to cover challenging terrain so they can reach wherever you need your fuel, whenever you need it.</p>', '<p>As a total energy solutions provider, we assist clients in designing and building the best storage facilities for fuel efficiency and safety. We also train our clients in their operations, giving them a strategic edge.</p>', '2021-12-05 19:33:57', '2022-01-31 20:19:30', NULL, 1, 143, 5, 'mozambique'),
(6, '<p>Dalbit International Limited (DIL), the flagship entity of Dalbit, was incorporated in 2008 in Mauritius. DIL is an end-to-end energy solutions supplier engaging in the distribution of conventional and renewable energy sources.&nbsp;</p><p>We are one of the most reliable suppliers of choice to the aviation, mining, manufacturing, transportation, and humanitarian sectors within the Eastern, Central, and Southern Africa regions.</p>', '<p>We are strategically positioned to boost the proximity to key traders from whom we buy the bulk of our trading products and to the major shipping companies supporting our key markets\' maritime activities.</p><p>We differentiate ourselves by committing to long-term business relations and applying innovative and reliable trading solutions. By combining our regional market knowledge with diverse logistics expertise, we have, over the years, earned a reputation for reliably delivering our customers\' expectations. We bring onboard trading executives with over a decade of experience in its target markets. It continues broadening its structure to build a solid team fit for the sustenance of its target growth in trading.</p>', NULL, NULL, '2021-12-05 19:38:18', '2022-01-31 20:33:11', NULL, 2, 133, 6, 'mauritius'),
(7, '<p>DIL Trading DMCC was registered in Dubai in 2020 and is a subsidiary of Dalbit International Limited.&nbsp;</p><p>DIL Trading DMCC aims to continue expanding the Petroleum trading portfolio by actively delivering end-to-end trading and logistics support for all clean petroleum products, including liquified natural gas, in the long run. We focus on all aspects of the physical trading of gasoline, condensate, naphtha, gas oil, fuel oils, and jet fuel across all grades, sizes, and geographies.</p>', '<p>DIL Trading DMCC is strategically positioned to boost proximity to local refiners in the Arab Gulf, key traders from whom we buy the bulk of our trading products, and major shipping companies that support maritime activities for our key markets.</p><p>We differentiate ourselves by committing to long-term business relations and applying innovative and reliable trading solutions. By combining our regional market knowledge with diverse logistics expertise, we have, over the years, earned a reputation for reliably delivering our customers\' expectations.&nbsp;</p>', NULL, NULL, '2021-12-05 19:39:46', '2022-01-31 20:24:20', NULL, 2, 241, 7, 'dubai'),
(8, '<p>Congo Petrol SARL was incorporated in 1997 and has been a licensee of the Dalbit brand, operating in the Democratic Republic of Congo.</p><p>We have a well-organized supply chain sourcing products through the ports of Dar es Salaam in Tanzania and Beira in Mozambique and distributing them across the Democratic Republic of Congo. Strategically located at the Lubumbashi International Airport and near Aéroport International de Goma, we reliably offer aviation services round the clock. Our high-capacity storage facilities and solid supply-logistics network across the country enable us to efficiently support not only the mining industry but other sectors as well.</p>', NULL, NULL, NULL, '2021-12-05 19:41:22', '2022-01-31 20:25:09', NULL, 3, 56, 8, 'democratic-republic-of-the-congo'),
(9, '<p>DILSS Petroleum Limited (DILSS) is a privately owned company incorporated in South Sudan in 2006. DILSS was started with the aim of enabling the company to offer an unparalleled vertically integrated service from the supply of crude or refined product from the Gulf States and drummed products all the way through to the end-user in Southern Sudan. The company sources a wide range of petroleum products which includes Jet A1, Diesel, Petrol, and Lubricants.</p><p>DILSS is involved in the procurement of petroleum products from the major international oil markets and the import and transit of the products to its customers in the Southern Sudan region through the port of Mombasa. DILSS has a wide distribution network covering a large part of Southern Sudan including Central, East, and Western Equatoria states, Lakes State, Warrap, Western and Northern Bahr El Ghazal States. The products that are imported either from the South or the North can be stored in any of the three company\'s Storage and distribution depots at Rumbek, Wau, or Juba.</p><p>The company serves a diverse customer base that includes various NGO agencies, resellers, and other industrial &amp; commercial sector consumers in Aviation and road transport sectors.</p>', NULL, NULL, NULL, '2021-12-05 19:44:04', '2022-01-31 20:28:14', NULL, 3, 201, 9, 'south-sudan');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\Slider', 2, '8847c5d7-7102-4e5c-b80d-367fcb54454c', 'image', '61ad0977ac2d4_slide-2 (1)', '61ad0977ac2d4_slide-2-(1).jpg', 'image/jpeg', 'public', 'public', 191490, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 2, '2021-12-05 18:48:30', '2021-12-05 18:48:30'),
(10, 'App\\Models\\Division', 1, 'b81f7b0d-119b-454a-a181-3473a836b29f', 'country_image', '61ad101f146d7_unsplash_nairobi_kenya_1200px', '61ad101f146d7_unsplash_nairobi_kenya_1200px.jpg', 'image/jpeg', 'public', 'public', 161403, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 5, '2021-12-05 19:22:35', '2021-12-05 19:22:36'),
(11, 'App\\Models\\Division', 1, '28f58a50-e0d9-4713-958d-f7e92ebe11e6', 'operation_image', '61ad10d782061_operation_1', '61ad10d782061_operation_1.jpg', 'image/jpeg', 'public', 'public', 95827, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 6, '2021-12-05 19:22:36', '2021-12-05 19:22:36'),
(12, 'App\\Models\\Division', 1, '0028b933-3bbb-4bde-bdae-dea72276d68a', 'transport_image', '61ad10f9327dd_operation_2', '61ad10f9327dd_operation_2.jpg', 'image/jpeg', 'public', 'public', 108479, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 7, '2021-12-05 19:22:36', '2021-12-05 19:22:37'),
(13, 'App\\Models\\Division', 1, 'f78c164b-1fdb-4dec-a41b-30918bafdf00', 'infrastructure_storage_image', '61ad11739fc08_operation_3', '61ad11739fc08_operation_3.jpg', 'image/jpeg', 'public', 'public', 91330, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 8, '2021-12-05 19:22:37', '2021-12-05 19:22:37'),
(14, 'App\\Models\\Division', 2, '521b1683-4323-41a3-a2e7-9bc3553b650d', 'country_image', '61ad11c237470_photo-1589177900326-900782f88a55', '61ad11c237470_photo-1589177900326-900782f88a55.jpeg', 'image/jpeg', 'public', 'public', 504353, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 9, '2021-12-05 19:25:39', '2021-12-05 19:25:40'),
(15, 'App\\Models\\Division', 2, 'e4b7c86e-5b2c-4417-80e2-4d30b079b153', 'operation_image', '61ad11e5c990d_operation_1', '61ad11e5c990d_operation_1.jpg', 'image/jpeg', 'public', 'public', 95827, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 10, '2021-12-05 19:25:40', '2021-12-05 19:25:40'),
(16, 'App\\Models\\Division', 2, 'a618b8e8-9ff3-452b-ac53-f04d4c3aae28', 'transport_image', '61ad11ff781c9_operation_2', '61ad11ff781c9_operation_2.jpg', 'image/jpeg', 'public', 'public', 108479, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 11, '2021-12-05 19:25:40', '2021-12-05 19:25:41'),
(17, 'App\\Models\\Division', 2, '1c2ce5ca-b46a-4b91-9088-43a6f25e9778', 'infrastructure_storage_image', '61ad1205e4454_operation_3', '61ad1205e4454_operation_3.jpg', 'image/jpeg', 'public', 'public', 91330, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 12, '2021-12-05 19:25:41', '2021-12-05 19:25:41'),
(18, 'App\\Models\\Division', 3, 'df2fbd07-7e59-4ba4-8615-6bf488890259', 'country_image', '61ad12802b0de_Kampala-City-in-Uganda', '61ad12802b0de_Kampala-City-in-Uganda.jpg', 'image/jpeg', 'public', 'public', 35211, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 13, '2021-12-05 19:28:30', '2021-12-05 19:28:30'),
(19, 'App\\Models\\Division', 3, '6c17c0ac-f9ef-4acb-b6f1-dbeee3347d78', 'operation_image', '61ad129185b04_operation_1', '61ad129185b04_operation_1.jpg', 'image/jpeg', 'public', 'public', 95827, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 14, '2021-12-05 19:28:30', '2021-12-05 19:28:31'),
(20, 'App\\Models\\Division', 3, '5723539e-baf5-4e9a-85f3-27faa6bbed26', 'transport_image', '61ad12a1a72d9_operation_2', '61ad12a1a72d9_operation_2.jpg', 'image/jpeg', 'public', 'public', 108479, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 15, '2021-12-05 19:28:31', '2021-12-05 19:28:31'),
(21, 'App\\Models\\Division', 3, 'de48ac0c-6e18-4eb7-8657-7824729a13e5', 'infrastructure_storage_image', '61ad12c631a77_operation_3', '61ad12c631a77_operation_3.jpg', 'image/jpeg', 'public', 'public', 91330, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 16, '2021-12-05 19:28:31', '2021-12-05 19:28:31'),
(22, 'App\\Models\\Division', 4, 'af70bd2e-e043-4cb5-b19a-9d23a5c847dd', 'country_image', '61ad1334e5103_lusaka-6228562_960_720', '61ad1334e5103_lusaka-6228562_960_720.jpg', 'image/jpeg', 'public', 'public', 202937, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 17, '2021-12-05 19:31:30', '2021-12-05 19:31:31'),
(23, 'App\\Models\\Division', 4, '5c0c5359-b7b8-4a05-8eb8-36a2a6dd040b', 'operation_image', '61ad134f4b909_operation_1', '61ad134f4b909_operation_1.jpg', 'image/jpeg', 'public', 'public', 95827, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 18, '2021-12-05 19:31:31', '2021-12-05 19:31:31'),
(24, 'App\\Models\\Division', 4, '6e92bfe3-8fc8-4d90-8aa1-bef3ee57f1b3', 'transport_image', '61ad1367d477e_operation_2', '61ad1367d477e_operation_2.jpg', 'image/jpeg', 'public', 'public', 108479, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 19, '2021-12-05 19:31:31', '2021-12-05 19:31:32'),
(25, 'App\\Models\\Division', 4, '39b04ede-ab2d-437f-9817-47e277a02f76', 'infrastructure_storage_image', '61ad137733fcd_operation_3', '61ad137733fcd_operation_3.jpg', 'image/jpeg', 'public', 'public', 91330, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 20, '2021-12-05 19:31:32', '2021-12-05 19:31:32'),
(26, 'App\\Models\\Division', 5, '6eb1028d-755b-4e86-b20f-9df41bff03f8', 'country_image', '61ad13dc8ea89_1', '61ad13dc8ea89_1.jpeg', 'image/jpeg', 'public', 'public', 291381, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 21, '2021-12-05 19:33:57', '2021-12-05 19:33:57'),
(27, 'App\\Models\\Division', 5, 'b6145e80-7b23-4615-912d-d6cccafacbd6', 'operation_image', '61ad13f66b708_operation_1', '61ad13f66b708_operation_1.jpg', 'image/jpeg', 'public', 'public', 95827, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 22, '2021-12-05 19:33:58', '2021-12-05 19:33:58'),
(28, 'App\\Models\\Division', 5, '8be1b3b8-d91e-4d14-a884-9a4a9479b880', 'transport_image', '61ad1405d03b9_operation_2', '61ad1405d03b9_operation_2.jpg', 'image/jpeg', 'public', 'public', 108479, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 23, '2021-12-05 19:33:58', '2021-12-05 19:33:58'),
(29, 'App\\Models\\Division', 5, 'ff655792-a035-419a-a6d4-3550f1719cce', 'infrastructure_storage_image', '61ad14149f6f3_operation_3', '61ad14149f6f3_operation_3.jpg', 'image/jpeg', 'public', 'public', 91330, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 24, '2021-12-05 19:33:58', '2021-12-05 19:33:59'),
(30, 'App\\Models\\Division', 6, 'fb18be90-b578-4c37-a77a-0e02e5dbf4b5', 'country_image', '61ad14d37ec12_1200px-Evening_Port_Louis', '61ad14d37ec12_1200px-Evening_Port_Louis.jpg', 'image/jpeg', 'public', 'public', 291604, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 25, '2021-12-05 19:38:18', '2021-12-05 19:38:19'),
(36, 'App\\Models\\Division', 8, '7efd9ace-6023-4e3a-b109-02c11e44ab1b', 'country_image', '61ad15c1c8431_31380037380_a9bf91f671_b', '61ad15c1c8431_31380037380_a9bf91f671_b.jpg', 'image/jpeg', 'public', 'public', 266925, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 31, '2021-12-05 19:41:22', '2021-12-05 19:41:23'),
(37, 'App\\Models\\Division', 9, 'f22d8655-5a30-441b-ad36-c2288a5f2da1', 'country_image', '61ad1635ed447_201291085926296702_8', '61ad1635ed447_201291085926296702_8.jpg', 'image/jpeg', 'public', 'public', 172408, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 32, '2021-12-05 19:44:05', '2021-12-05 19:44:05'),
(38, 'App\\Models\\Division', 7, '1f863722-04fd-45a2-9854-ce097a4a43af', 'country_image', '61ad16ff543d9_fmp-global-dubai_529750231', '61ad16ff543d9_fmp-global-dubai_529750231.jpg', 'image/jpeg', 'public', 'public', 327588, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 33, '2021-12-05 19:46:12', '2021-12-05 19:46:12'),
(39, 'App\\Models\\SocialResponsibility', 1, '2b97abdf-342f-4839-9451-24092a7e2946', 'image', '61ad21d81309e_Dalbit-Kenya-Offers-KSH21.3m-Grant-to-Amref-Health-Africa', '61ad21d81309e_Dalbit-Kenya-Offers-KSH21.3m-Grant-to-Amref-Health-Africa.jpg', 'image/jpeg', 'public', 'public', 64768, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 34, '2021-12-05 20:32:55', '2021-12-05 20:32:56'),
(40, 'App\\Models\\SocialResponsibility', 2, '30aa2177-73f8-4235-9583-916e21071138', 'image', '61ad22b42a0ea_csr_5', '61ad22b42a0ea_csr_5.jpg', 'image/jpeg', 'public', 'public', 78646, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 35, '2021-12-05 20:36:33', '2021-12-05 20:36:33'),
(41, 'App\\Models\\SocialResponsibility', 3, 'fd290cc5-3e91-4186-95e4-89bae1d6a34c', 'image', '61ad23283a7fd_bongo (1)', '61ad23283a7fd_bongo-(1).jpg', 'image/jpeg', 'public', 'public', 1478670, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 36, '2021-12-05 20:38:25', '2021-12-05 20:38:28'),
(42, 'App\\Models\\SocialResponsibility', 4, 'b124767a-0503-4b04-bd2b-2c3dc4bd95d8', 'image', '61ad234d676ba_photo-1599059813005-11265ba4b4ce', '61ad234d676ba_photo-1599059813005-11265ba4b4ce.jpeg', 'image/jpeg', 'public', 'public', 171088, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 37, '2021-12-05 20:38:56', '2021-12-05 20:38:56'),
(43, 'App\\Models\\Resource', 1, 'acf9d0a4-1c2e-4085-ac90-2ef557fe80f2', 'file', '61ad247a273eb_Dalbit Customer Satisfaction Survey', '61ad247a273eb_Dalbit-Customer-Satisfaction-Survey.pdf', 'application/pdf', 'public', 'public', 87181, '[]', '[]', '[]', 38, '2021-12-05 20:43:58', '2021-12-05 20:43:58'),
(44, 'App\\Models\\Newsroom', 1, '76a8e826-db36-46dd-a1c5-3aba0e414cc5', 'image', '61ad2706d266e_unnamed', '61ad2706d266e_unnamed.jpg', 'image/jpeg', 'public', 'public', 51480, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 39, '2021-12-05 21:01:07', '2021-12-05 21:01:08'),
(45, 'App\\Models\\Newsroom', 2, '5eee0edd-d5c2-4008-8659-5a54618d2f16', 'ck-media', 'unnamed', 'unnamed.png', 'image/png', 'public', 'public', 255709, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 40, '2021-12-05 21:04:43', '2021-12-05 21:05:30'),
(46, 'App\\Models\\Newsroom', 2, '49974ff9-3c1b-4087-9763-ae8c01a26766', 'image', '61ad28eee42b3_unnamed (1)', '61ad28eee42b3_unnamed-(1).jpg', 'image/jpeg', 'public', 'public', 79605, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 41, '2021-12-05 21:05:30', '2021-12-05 21:05:30'),
(47, 'App\\Models\\Newsroom', 2, '76858478-2761-48a4-a8cd-49f32c88691e', 'ck-media', 'unnamed (2)', 'unnamed-(2).jpg', 'image/jpeg', 'public', 'public', 89008, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 42, '2021-12-05 21:06:48', '2021-12-05 21:06:49'),
(48, 'App\\Models\\Newsroom', 2, 'f81bfe46-c10e-4426-a847-a3ff24edef71', 'ck-media', 'unnamed', 'unnamed.png', 'image/png', 'public', 'public', 255709, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 43, '2021-12-05 21:07:36', '2021-12-05 21:07:37'),
(49, 'App\\Models\\Newsroom', 2, '66afad58-4bf7-421a-a3b0-9ebce8435628', 'ck-media', 'unnamed (2)', 'unnamed-(2).jpg', 'image/jpeg', 'public', 'public', 89008, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 44, '2021-12-05 21:07:55', '2021-12-05 21:07:55'),
(50, 'App\\Models\\Newsroom', 3, 'ad44afee-0a03-4c39-8ff5-06d9535c0e5a', 'image', '61ad2ab6a073b_Dalbit-Kenya-Offers-KSH21.3m-Grant-to-Amref-Health-Africa', '61ad2ab6a073b_Dalbit-Kenya-Offers-KSH21.3m-Grant-to-Amref-Health-Africa.jpg', 'image/jpeg', 'public', 'public', 64768, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 45, '2021-12-05 21:11:57', '2021-12-05 21:11:58'),
(51, 'App\\Models\\Newsroom', 4, 'fb365b7c-d1a1-40dc-8cfa-0857a61f262e', 'image', '61ad2b727ddcc_image1', '61ad2b727ddcc_image1.jpg', 'image/jpeg', 'public', 'public', 190832, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 46, '2021-12-05 21:13:28', '2021-12-05 21:13:29'),
(52, 'App\\Models\\Newsroom', 5, '8407767d-253b-48cf-8fcf-e83a6132965b', 'image', '61af3c5ae6e68_unnamed', '61af3c5ae6e68_unnamed.jpg', 'image/jpeg', 'public', 'public', 51480, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 47, '2021-12-07 19:50:34', '2021-12-07 19:50:35'),
(53, 'App\\Models\\Slider', 1, 'fbb60d37-40d9-4969-966c-f3b2fa07c0f6', 'image', '61b1f65f3ca3e_ndege', '61b1f65f3ca3e_ndege.jpg', 'image/jpeg', 'public', 'public', 766974, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 48, '2021-12-09 21:28:25', '2021-12-09 21:28:26'),
(54, 'App\\Models\\Slider', 3, '1982ef8f-c152-4b0c-8dd1-fa790909fe98', 'image', '61b1f6a6de6a9_image-new', '61b1f6a6de6a9_image-new.png', 'image/jpeg', 'public', 'public', 603206, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 49, '2021-12-09 21:29:29', '2021-12-09 21:29:29'),
(55, 'App\\Models\\Slider', 4, '2ebc2bec-d112-4eb7-ad2b-cd3485e59400', 'image', '61b1f6c968674_bongo-new', '61b1f6c968674_bongo-new.jpg', 'image/jpeg', 'public', 'public', 960907, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 50, '2021-12-09 21:30:04', '2021-12-09 21:30:05'),
(56, 'App\\Models\\Division', 6, '1d035776-b47c-46fe-835c-5373863ae530', 'operation_image', '61fb76ef3877f_MicrosoftTeams-image (89) (2)', '61fb76ef3877f_MicrosoftTeams-image-(89)-(2).jpg', 'image/jpeg', 'public', 'public', 2399339, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 51, '2022-02-03 15:32:35', '2022-02-03 15:32:36'),
(57, 'App\\Models\\Division', 7, '3cd85b1d-2d34-4fa7-9722-32f6198c0e08', 'operation_image', '61fb772713dff_MicrosoftTeams-image (89) (2)', '61fb772713dff_MicrosoftTeams-image-(89)-(2).jpg', 'image/jpeg', 'public', 'public', 2399339, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 52, '2022-02-03 15:33:21', '2022-02-03 15:33:23'),
(58, 'App\\Models\\Newsroom', 6, '6d79978d-2595-4ffd-9f90-7e0c1c569cca', 'image', '6204c5c5b5899_team-2', '6204c5c5b5899_team-2.jpg', 'image/jpeg', 'public', 'public', 20160, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 53, '2022-02-10 17:59:04', '2022-02-10 17:59:06');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_12_01_000001_create_media_table', 1),
(4, '2021_12_01_000002_create_resources_table', 1),
(5, '2021_12_01_000003_create_searches_table', 1),
(6, '2021_12_01_000004_create_contact_informations_table', 1),
(7, '2021_12_01_000005_create_divisions_table', 1),
(8, '2021_12_01_000006_create_categories_table', 1),
(9, '2021_12_01_000007_create_countries_table', 1),
(10, '2021_12_01_000008_create_contacts_table', 1),
(11, '2021_12_01_000009_create_permissions_table', 1),
(12, '2021_12_01_000010_create_newsrooms_table', 1),
(13, '2021_12_01_000011_create_sliders_table', 1),
(14, '2021_12_01_000012_create_users_table', 1),
(15, '2021_12_01_000013_create_roles_table', 1),
(16, '2021_12_01_000014_create_social_responsibilities_table', 1),
(17, '2021_12_01_000015_create_role_user_pivot_table', 1),
(18, '2021_12_01_000016_create_permission_role_pivot_table', 1),
(19, '2021_12_01_000017_add_relationship_fields_to_divisions_table', 1),
(20, '2021_12_01_000018_add_relationship_fields_to_contact_informations_table', 1),
(21, '2021_12_02_105359_add_slug_to_divisions_table', 1),
(22, '2021_12_02_165226_add_slug_to_social_responsibilities_table', 1),
(23, '2021_12_02_213637_add_slug_to_newsrooms_table', 1),
(24, '2021_12_03_165921_add_photo_caption_and_sentence_on_the_article_to_newsrooms', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsrooms`
--

CREATE TABLE `newsrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci,
  `article_sentence` longtext COLLATE utf8mb4_unicode_ci,
  `photo_caption` longtext COLLATE utf8mb4_unicode_ci,
  `seo_keywords` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsrooms`
--

INSERT INTO `newsrooms` (`id`, `title`, `location`, `description`, `created_at`, `updated_at`, `deleted_at`, `slug`, `article_sentence`, `photo_caption`, `seo_keywords`) VALUES
(1, 'Dalbit Petroleum bags KRA Distinguished Tax Payer Award', 'Kenya', '<p><strong>Nairobi | October 2018:</strong> Local energy trading firm Dalbit Petroleum, has picked the leading oil importer tax payer trophy at the Kenya Revenue Authority (KRA) 2018 Distinguished Taxpayers awards ceremony held on Wednesday.</p><p>At the awards ceremony presided over by President Uhuru Kenyatta, Dalbit Petroleum carried home the Leading Large Oil Importer trophy for its diligence as a large taxpayer in the oil industry category.</p><p>Dalbit Petroleum, picked the overall trophy in the traditionally hotly contested market category featuring leading oil importer and marketers. Other oil importers Ms. Ramji Haribhai Devani and Brain Field Oil and Gas Limited picked the Medium and Small taxpayer category trophies.</p><p>Speaking, moments after the trophy presentation, Dalbit Petroleum Chief Officer- Supply Chain, Esther Ngero said the award is a further validation of the company’s commitment to be tax compliant and contribute to the social and economic development of the nation. The award, she said, had been made possible by the company’s leadership and employees’ continued commitment to uphold best in class operating standards.</p><p>The firm’s adoption of cutting edge information technology systems and global best practice in Health, Safety and Environment (HSE) standards, Ms Ngero added has also served to enhance adherence to tax and related compliance standards.</p><p>“At Dalbit Petroleum, we are excited to receive this award which serves to renew our obligation to maintaining world class standards in all our business fronts,” Ngero said, adding that, “The award is also a tribute to our hardworking workforce which is dedicated to fuelling regional growth and Kenya’s Big Four agenda.”</p><p>Since its inception, Dalbit Petroleum, has through its vast networks and affiliated partners enjoyed steady growth and currently has strong operational foot prints throughout East Africa and the Great lakes regions.&nbsp;</p><p>The firm’s vision is to be the frontrunner in the African Energy Sector and is striving to continuously provide efficient, innovative and responsible energy solutions.</p>', '2021-12-05 21:01:07', '2021-12-07 19:49:21', '2021-12-07 19:49:21', 'dalbit-petroleum-bags-kra-distinguished-tax-payer-award', NULL, 'H.E President Uhuru Kenyatta presents the award for the Leading Oil Importer under the Large Tax Payers category to Dalbit Petroleum Limited, represented by Esther Ngero - Chief Officer- Supply Chain, at the Kenya Revenue Authority (KRA) 2018 Distinguished Taxpayers awards ceremony.', 'Dalbit, Energy Solutions, Petroleum, Award, KRA, Tax Compliant, Leading Oil Importer, Kenya, Africa'),
(2, 'Dalbit International and BSL Infrastructure Signs 120,000m3 Fuel Storage Deal With Tazama Pipelines Limited', 'Tanzania', '<p><strong>Dar es Salaam | 23 June 2021: </strong>Tazama Pipelines Limited (Tazama) will hand over a site to Dalbit International (Dalbit) and BSL Infrastructure (BSL) in an official ceremony to commence construction of Tanzania’s largest fuel depot site.&nbsp;</p><p>The ground-breaking storage facility will transform Zambia’s fuel supply. Currently, petroleum products imported via Tanzania are stored in multiple facilities across Dar es Salaam. No single facility has enough capacity to meet demand. Oil-marketers therefore have to pay multiple companies for storing fuel, increasing costs.</p><p>The new facility in the Kigamboni district of Dar es Salaam will solve these critical issues. The site can hold 80,000m3 of diesel and 40,000m3 of petrol, meaning it will be able to store all petroleum products headed for Zambia and drastically improve time and cost efficiencies for oil-marketers. Crucially, increasing storage capacity will boost the supply of fuel, helping to alleviate fuel shortages, which is vital for the sustainable development of Zambia.</p><p>The consortium will build, finance, and operate the site on behalf of Tazama.</p><p>Construction of the two-year project officially begins this August and will employ over 250 Tanzanians. Ensuring local capacity building, technology and knowledge transfer is central to the project, which complements both the Government of the Republic of Zambia and the United Republic of Tanzania’s efforts to grow their economies.&nbsp;</p><p>Dalbit and BSL have a proud history of delivery in Tanzania and Zambia. They have built 9 fuel depots since 2011, adding nearly over 90 million litres of storage capacity. All projects have been completed on time, on budget and without any workplace injuries. 2,000 local workers were used to assist in construction.&nbsp;</p><p>Dalbit and BSL has always formed close bonds with the local communities in which it operates and supports people even in the most challenging of times. In Tanzania, Dalbit donated medical equipment for people living with disability and hospital beds to equip the children’s ward at Muhimbili Orthopaedic Institute. Dalbit also donated motorcycles to the Tanzanian police to prop up security in the country in 2014.</p><p>Last year in Zambia, $200,000 worth of PPE equipment was delivered to the Ministry of Health and the Beit-CURE hospital in Lusaka to support Covid-19 testing and enhance infection control and protection. BSL also donated paediatric equipment, valued at $145,000, to the Arthur Davidson Children’s Hospital in 2019.&nbsp;</p><p><strong>A spokesperson for Dalbit and BSL said:&nbsp;</strong></p><p>“We are delighted to begin construction on a project that will have such a transformational effect for the Zambian economy, while also providing exciting job opportunities for hundreds of Tanzanians.”</p><p>“Fuel storage is a vital part of any country’s energy network, and we look forward to contributing towards the national development of both countries through the successful completion of this exciting public-private partnership.”</p><p><strong>About Dalbit International Limited</strong></p><p>Dalbit International Limited is an affiliate of <a href=\"https://www.januscontinental.com/\">Janus Continental Group</a>, established in 2002. The firm is a petroleum supply company that offers energy solutions across the continent, with a presence in seven countries.&nbsp;</p><p><strong>About BSL Infrastructure Limited</strong></p><p>BSL Infrastructure Limited is an affiliate of <a href=\"https://www.januscontinental.com/\">Janus Continental Group</a>, established in 2011. The firm is an engineering, procurement and construction company. The company constructs and maintains fuel supply infrastructure in the Eastern, Southern and Central Africa region.&nbsp;&nbsp;</p>', '2021-12-05 21:05:29', '2021-12-07 16:45:36', NULL, 'dalbit-international-and-bsl-infrastructure-signs-120000m3-fuel-storage-deal-with-tazama-pipelines-limited', NULL, 'Tazama Pipelines Limited (Tazama) hands over a site to Dalbit International and BSL Infrastructure in an official ceremony to commence construction of Tanzania’s largest fuel depot site.', 'Dalbit, BSL Infrastructure, Fuel Depot, Sustainable Energy,'),
(3, 'Dalbit Kenya Offers KSH21.3m Grant to Amref Health Africa to Support Government’s COVID-19 Testing Activities', 'Kenya', '<p><strong>Nairobi | 04 June 2020:</strong> Oil marketer Dalbit Kenya has offered a KSH21.3m grant to Amref Health Africa meant to support the Government of Kenya’s efforts to step-up Coronavirus Disease (COVID-19) testing activities.&nbsp;</p><p>The partnership between Dalbit Kenya and Amref follows a call by the Ministry of Health for additional capacity in Coronavirus screening, and will see Amref Central Laboratory (ACL) conduct testing and analysis of samples, easing the existing facilities that are likely to be overwhelmed by growing demand, as the Government works to contain the Coronavirus pandemic in Kenya.&nbsp;</p><p>The first tranche of the grant, KSH10.65m (USD100,000) has been handed over today, while the next round of funds are expected in two months.</p><p>Commenting on the partnership, Timothy Skudi, CEO of Dalbit Kenya said: <i>“WHO has called for a whole-of-government and whole-of-society approach in responding to the COVID-19 pandemic. As patriotic citizens, we all have a key role to play in minimising this pandemic’s impact on Kenyans.’’ He adds that, ‘‘Collaboration is key to tackling this outbreak. I am a firm believer in the power of public-private partnerships, and I know that now, more than ever, purpose, unity and innovation between companies, civil society and government is crucial. Dalbit Kenya is playing its part through this partnership.’’</i></p><p>The Amref Central Laboratory, through funding from Dalbit Kenya has been approved by the Ministry of Health to support its efforts of flattening the COVID-19 curve, and will provide additional testing facilities to help identify and isolate those infected and stop local transmission, which is crucial to reducing infection rates. The Laboratory joins National Influenza Centre at the National Public Health Laboratory (NPHL), Aga Khan University Hospital and three KEMRI laboratory facilities that are have been equipped to conduct Polymerase Chain Reaction (PCR) methods to test for SARS-CoV-2, the virus that causes COVID-19.&nbsp;</p><p>Dr Githinji Gitahi, Group CEO, Amref Health Africa noted, <i>‘‘Amref has built laboratory diagnostic capacity for many years working with WHO and other partners in developing human resources&nbsp; capability and technical skills required for infectious diseases.&nbsp; With the COVID19 pandemic and the resounding call globally to increase testing capacity to allow tracing and isolation in containing the speed of transmission, Amref has responded by increasing its capacity to support the analysis of samples from suspected case§s of COVID 19. Our focus on strengthening Kenya’s testing capacity will play a key role in flattening the curve and is critical to the Ministry’s strategy to contain Coronavirus.’’</i></p><p>In response to the COVID-19 pandemic, Amref Health Africa has been at the forefront of supporting government-led efforts and providing technical support and has over the recent past forged various partnerships aimed at mitigating the spread of Coronavirus in the country.</p><p>Dalbit Kenya, an oil marketing company (OMC) is dedicated to fuelling regional growth through reliable and safe distribution networks and has a track record of finding local solutions to regional challenges. Dalbit Kenya is making a 4-month contribution - through the grant - to Amref to not only increase its testing capabilities, but also to and upscale its technical skills to assist in pandemic relief efforts in Kenya.&nbsp;</p><p>In her comments, Dalbit Kenya Chief Supply Officer, Esther Ngero said:<strong> </strong>“<i>Supporting the communities where we operate in is at the core of Dalbit’s values as a business. Now is not the time to abandon this tradition. The business community has a unique ability - and responsibility - to assist in this crisis. We are determined to do everything we can to provide funds, extra capacity or infrastructure to health institutions and medical professionals in the battle against COVID-19.’’&nbsp;</i></p><p>Ms Ngero further stated: <i>“By partnering with Africa’s leading international health and development organisation, we can play our role in helping to contain the infection rate across Kenya. This represents part of Dalbit’s efforts. We are working with partners on the ground across East and Southern Africa to support their brave efforts, ensuring that we, in the private sector, do our part.”</i></p><p>This announcement shows the huge potential of public and private sector partnership, bolstering the efforts of civil society and healthcare institutions. The grant represents a spirit that Amref and Dalbit Kenya hope will continue with, as public and private organisations rally together in the fight against Coronavirus in Kenya and across the globe.</p><p>To minimise spread of Coronavirus, the Government of Kenya has put in place a raft of measures including the activation of a COVID-19 response mechanism led by a National Taskforce; isolation of suspects and immediate testing; international travel bans and mandatory quarantine of international passengers on arrival; cessation of movement in identified hotspots; call for adoption of prevention actions such as physical distancing, regular handwashing with soap and use of sanitisers. Others are disinfection of affected premises; expanded surveillance and laboratory testing capacity and provision of personal protective equipment for health workers.</p><p><strong>About Dalbit Kenya</strong></p><p>Dalbit Kenya is an oil marketing company dedicated to fuelling regional growth through reliable and safe distribution networks. The company has a long philanthropic history. We believe that our investment in people and communities serves as a catalyst in unlocking the great potential of Kenya. Our key community focus areas include education, health, community development and the conservation of wildlife and the environment. Dalbit Kenya is a member of the Janus Continental Group, a conglomerate comprising of market-leading companies in the petroleum, energy, hospitality and real estate sectors.</p><p><strong>About </strong><a href=\"https://amref.org/home/\"><strong>Amref Health Africa</strong></a></p><p>Amref Health Africa, headquartered in Kenya, is the largest Africa based International Non-Governmental Organisation (INGO) currently running programs in over 35 countries in Africa with lessons learnt over 60 years of engagement with governments, communities and partners to increase sustainable health access in Africa. Amref Health Africa also incorporates programme development, fundraising, partnership, advocacy, monitoring and evaluation, and has offices in Europe and North America as well as subsidiaries: <a href=\"https://flydoc.org/\">Amref Flying Doctors</a>, <a href=\"https://amref.org/enterprises/\">Amref Enterprises </a>and the <a href=\"https://amref.ac.ke/\">Amref International University</a>.</p>', '2021-12-05 21:11:57', '2021-12-07 16:45:59', NULL, 'dalbit-kenya-offers-ksh213m-grant-to-amref-health-africa-to-support-governments-covid-19-testing-activities', 'Grant will enable Amref Central Laboratory to conduct testing and analysis of Coronavirus samples to meet increased demand.', 'The successful completion of the pilot commissioning tests now paves the way for the Kabulasoke Solar Power Park official commissioning on the Ugandan power grid for onward distribution to power consumers in coming days.', 'Dalbit Kenya, Amref Health Africa, Partnership, Petroleum'),
(4, 'Fuelling Solutions are Key to ‘Dispersed Development’', 'Uganda', '<p>Article published on <a href=\"http://www.petroleum.co.ke/images/PetroleumInsightMagazines/2021/PI_Q2_2021_Final.pdf\">Petroleum Insight Magazine</a>.</p><p>In the more remote parts of Uganda, economic growth can be a challenge to stimulate. In the rural north, for example, there is little incentive for communities to receive outside investment, or for neighbouring countries and regions to strike up trade. This can swiftly become a vicious cycle of communities missing out on socio-economic opportunities and thus becoming less viable for the same future opportunities.&nbsp;</p><p>Similar issues can be experienced across many of the continent’s dispersed communities. However, an answer to the problem may lie in fuel, and the many and varied opportunities that new fuelling solutions can bring to underserved areas.&nbsp;</p><p>In 2018, Dalbit Uganda Limited built a petroleum depot with a capacity of 720,000 litres of Jet A-1 at Gulu, a town located some 340 kilometres from Kampala. This was in response to a tender from one of our key clients that needed supplies of jet fuel in the region to support its operations. Gulu Airport did not have sufficient resources on its own to meet the levels of demand from this client, but we were able to work with them to increase capacity on a challenging but rewarding project.&nbsp;</p><p>Planes now touch down to refuel in Gulu, rather than heading to Kampala enroute to South Sudan. By investing in the construction of aviation facilities, we were able to offer employment opportunities for local Ugandan citizens as well as boosting the capabilities of Gulu airfield and all the surrounding catchment areas. Dalbit has brought international standards to local set ups, with our Standard Operating Procedures (SOPs), emphasising effective management in the handling of fuel storage facilities.&nbsp;</p><p>Fuelling solutions have provided a connectivity link with neighbouring countries as well, whose aircraft can now refuel at the depot. This has boosted investor confidence, further opening up the area for business. We have seen similar results since 2019, when Dalbit Uganda Limited moved to Arua, located in the West Nile region, and constructed a petroleum depot with a capacity of 300,000 litres that supplies Jet A-1 to commercial airlines. Airlines have cut costs by refuelling their aircrafts at Arua and this has helped open up opportunities for the business within the community as well as foster long-term relationships with neighbouring countries such as Eastern DRC, South Sudan, and Central African Republic.</p><p>These projects were not without their challenges. In the beginning, the lack of reliable electricity in the areas meant we had to rely on diesel generators and therefore were not able to work around the clock. At times, we had to import resources such as construction material and manpower from Kampala as it was not readily available locally. And it almost goes without saying that we experienced logistics challenges due to border closures because of the government’s Covid-19 lockdown regulations.&nbsp;</p><p>But it is vital that such work continues. To successfully drive social and economic development across areas outside of the continent’s largest cities, especially in traditionally underserved communities, companies in the fuel space need to look for these ‘win-win’ opportunities. We can connect communities, provide jobs, fuel economic growth, and make sure the same prosperity is on offer to all of the population. Not just in Uganda, but across the continent, whose fuel potential is still only just beginning to be realised.</p><p>&nbsp;</p>', '2021-12-05 21:13:28', '2021-12-07 16:36:13', NULL, 'petroleum-insight', NULL, 'Dalbit Bowsers at the loading zone at Arua Depot located in Northern region of Uganda.', 'Dalbit, Fuel Depot, Jet A-1,'),
(5, 'Dalbit Petroleum bags KRA Distinguished Tax Payer Award', 'Kenya', '<p><strong>Nairobi | October 2018:</strong> Local energy trading firm Dalbit Petroleum, has picked the leading oil importer tax payer trophy at the Kenya Revenue Authority (KRA) 2018 Distinguished Taxpayers awards ceremony held on Wednesday.</p><p>At the awards ceremony presided over by President Uhuru Kenyatta, Dalbit Petroleum carried home the Leading Large Oil Importer trophy for its diligence as a large taxpayer in the oil industry category.</p><p>Dalbit Petroleum, picked the overall trophy in the traditionally hotly contested market category featuring leading oil importer and marketers. Other oil importers Ms. Ramji Haribhai Devani and Brain Field Oil and Gas Limited picked the Medium and Small taxpayer category trophies.</p><p>Speaking, moments after the trophy presentation, Dalbit Petroleum Chief Officer- Supply Chain, Esther Ngero said the award is a further validation of the company’s commitment to be tax compliant and contribute to the social and economic development of the nation. The award, she said, had been made possible by the company’s leadership and employees’ continued commitment to uphold best in class operating standards.</p><p>The firm’s adoption of cutting edge information technology systems and global best practice in Health, Safety and Environment (HSE) standards, Ms Ngero added has also served to enhance adherence to tax and related compliance standards.</p><p>“At Dalbit Petroleum, we are excited to receive this award which serves to renew our obligation to maintaining world class standards in all our business fronts,” Ngero said, adding that, “The award is also a tribute to our hardworking workforce which is dedicated to fuelling regional growth and Kenya’s Big Four agenda.”</p><p>Since its inception, Dalbit Petroleum, has through its vast networks and affiliated partners enjoyed steady growth and currently has strong operational foot prints throughout East Africa and the Great lakes regions.&nbsp;</p><p>The firm’s vision is to be the frontrunner in the African Energy Sector and is striving to continuously provide efficient, innovative and responsible energy solutions.</p>', '2021-12-07 19:50:34', '2021-12-07 19:50:34', NULL, 'dalbit-petroleum-bags-kra-distinguished-tax-payer-award', NULL, 'H.E President Uhuru Kenyatta presents the award for the Leading Oil Importer under the Large Tax Payers category to Dalbit Petroleum Limited, represented by Esther Ngero - Chief Officer- Supply Chain, at the Kenya Revenue Authority (KRA) 2018 Distinguished Taxpayers awards ceremony.', 'Dalbit, Energy Solutions, Petroleum, Award, KRA, Tax Compliant, Leading Oil Importer, Kenya, Africa'),
(6, 'ww', NULL, '<p>sdds</p>', '2022-02-10 17:59:04', '2022-02-10 17:59:21', '2022-02-10 17:59:21', 'ww', NULL, NULL, NULL);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'slider_create', NULL, NULL, NULL),
(18, 'slider_edit', NULL, NULL, NULL),
(19, 'slider_show', NULL, NULL, NULL),
(20, 'slider_delete', NULL, NULL, NULL),
(21, 'slider_access', NULL, NULL, NULL),
(22, 'newsroom_create', NULL, NULL, NULL),
(23, 'newsroom_edit', NULL, NULL, NULL),
(24, 'newsroom_show', NULL, NULL, NULL),
(25, 'newsroom_delete', NULL, NULL, NULL),
(26, 'newsroom_access', NULL, NULL, NULL),
(27, 'contact_show', NULL, NULL, NULL),
(28, 'contact_delete', NULL, NULL, NULL),
(29, 'contact_access', NULL, NULL, NULL),
(30, 'resource_create', NULL, NULL, NULL),
(31, 'resource_edit', NULL, NULL, NULL),
(32, 'resource_delete', NULL, NULL, NULL),
(33, 'resource_access', NULL, NULL, NULL),
(34, 'country_create', NULL, NULL, NULL),
(35, 'country_edit', NULL, NULL, NULL),
(36, 'country_show', NULL, NULL, NULL),
(37, 'country_delete', NULL, NULL, NULL),
(38, 'country_access', NULL, NULL, NULL),
(39, 'divisions_management_access', NULL, NULL, NULL),
(40, 'category_create', NULL, NULL, NULL),
(41, 'category_delete', NULL, NULL, NULL),
(42, 'category_access', NULL, NULL, NULL),
(43, 'division_create', NULL, NULL, NULL),
(44, 'division_edit', NULL, NULL, NULL),
(45, 'division_show', NULL, NULL, NULL),
(46, 'division_delete', NULL, NULL, NULL),
(47, 'division_access', NULL, NULL, NULL),
(48, 'contact_information_create', NULL, NULL, NULL),
(49, 'contact_information_edit', NULL, NULL, NULL),
(50, 'contact_information_show', NULL, NULL, NULL),
(51, 'contact_information_delete', NULL, NULL, NULL),
(52, 'contact_information_access', NULL, NULL, NULL),
(53, 'search_delete', NULL, NULL, NULL),
(54, 'search_access', NULL, NULL, NULL),
(55, 'social_responsibility_create', NULL, NULL, NULL),
(56, 'social_responsibility_edit', NULL, NULL, NULL),
(57, 'social_responsibility_show', NULL, NULL, NULL),
(58, 'social_responsibility_delete', NULL, NULL, NULL),
(59, 'social_responsibility_access', NULL, NULL, NULL),
(60, 'profile_password_edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Customer Satisfaction survey', NULL, '2021-12-05 20:43:57', '2021-12-05 20:43:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL),
(3, 'Staff', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'news', '2022-02-02 15:26:34', '2022-02-02 15:26:34', NULL),
(9, 'newsroom', '2022-02-02 15:26:42', '2022-02-02 15:26:42', NULL),
(10, 'congo', '2022-02-02 15:26:49', '2022-02-02 15:26:49', NULL),
(11, 'kenya', '2022-02-03 18:48:30', '2022-02-03 18:48:30', NULL),
(12, 'careers', '2022-02-09 14:33:51', '2022-02-09 14:33:51', NULL),
(13, 'careers', '2022-02-09 16:07:02', '2022-02-09 16:07:02', NULL),
(14, 'division', '2022-02-09 16:07:25', '2022-02-09 16:07:25', NULL),
(15, 'divisions', '2022-02-09 16:07:32', '2022-02-09 16:07:32', NULL),
(16, 'kenya', '2022-02-09 16:07:39', '2022-02-09 16:07:39', NULL),
(17, 'fuel', '2022-02-10 20:06:52', '2022-02-10 20:06:52', NULL),
(18, 'kenya', '2022-02-11 04:50:56', '2022-02-11 04:50:56', NULL),
(19, 'news', '2022-02-11 06:54:09', '2022-02-11 06:54:09', NULL),
(20, 'division', '2022-02-11 06:54:23', '2022-02-11 06:54:23', NULL),
(21, 'news', '2022-02-11 16:40:32', '2022-02-11 16:40:32', NULL),
(22, 'tenders', '2022-02-11 18:31:31', '2022-02-11 18:31:31', NULL),
(23, 'galler', '2022-02-23 22:50:34', '2022-02-23 22:50:34', NULL),
(24, 'clients', '2022-03-03 19:24:51', '2022-03-03 19:24:51', NULL),
(25, 'drc', '2022-03-03 19:25:47', '2022-03-03 19:25:47', NULL),
(26, 'uganda', '2022-03-15 05:00:08', '2022-03-15 05:00:08', NULL),
(27, 'invest', '2022-03-16 02:08:55', '2022-03-16 02:08:55', NULL),
(28, 'Wholesalers', '2022-03-23 05:47:54', '2022-03-23 05:47:54', NULL),
(29, 'Partners', '2022-03-23 05:48:14', '2022-03-23 05:48:14', NULL),
(30, 'fINANCIAL MANAGER', '2022-03-23 19:35:38', '2022-03-23 19:35:38', NULL),
(31, 'Dalbit Kinshasa', '2022-04-02 04:48:17', '2022-04-02 04:48:17', NULL),
(32, 'Mauritius', '2022-04-05 01:41:08', '2022-04-05 01:41:08', NULL),
(33, 'Products', '2022-04-08 06:01:07', '2022-04-08 06:01:07', NULL),
(34, 'Qc welding inspector', '2022-04-17 01:36:39', '2022-04-17 01:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `caption`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fuelling solutions provide connectivity links as aircrafts<span class=\"text-primary\"> refuel at the Gulu and Arua Airfields.</span>', 'https://www.dalbitpetroleum.com/news/petroleum-insight', '2021-12-05 18:25:13', '2022-02-22 19:15:38', NULL),
(3, 'We deliver to our customers wherever they are;<span class=\"text-primary\"> our robust logistics team ensures we go deeper and further.</span>', '/dalbit-affiliates', '2021-12-05 18:50:12', '2021-12-15 00:24:42', NULL),
(4, 'Dalbit is a proud supporter of<br> the Mount Kenya Wildlife Conservancy<br> <span class=\"text-primary\"> Mountain Bongo Breeding program.</span>', '/social-responsibility/conservation', '2021-12-05 19:11:40', '2021-12-15 00:26:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_responsibilities`
--

CREATE TABLE `social_responsibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_responsibilities`
--

INSERT INTO `social_responsibilities` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`, `slug`) VALUES
(1, 'Health', '<p><br><strong>Covid-19 Response</strong></p><p>In 2020, Dalbit Kenya offered a Ksh 21.3m grant to Amref Health Africa to support the Government of Kenya’s efforts to step-up Coronavirus Disease (COVID-19) testing activities at the Amref Central Laboratory (ACL). This involves testing and analyzing samples, easing the existing facilities likely to be overwhelmed by growing demand as the Government works to contain the Coronavirus pandemic in Kenya.</p><p>Dalbit also donated US$200,000 to CURE International and the Zambian Ministry of Health to support their efforts to increase the supply of medical equipment as they look to slow the spread of Covid-19. US$100,000 was allocated directly to Beit-CURE Hospital in Lusaka to procure face masks, face shields, examination gloves, sanitizers, and hygiene soaps. The other half amounting to US$100,000 was used to procure various medical equipment and supplies for onward donation to the people of Zambia through the Ministry of Health. Parts of the funds were also used to support Covid-19 testing among CURE patients and health care workers to enhance infection control and protection.</p><p>CURE International was chosen by Dalbit due to its long history of serving the most vulnerable children in the regions in which it operates. This partnership will allow CURE to carry out their valuable work of tending to children with treatable conditions.</p>', '2021-12-05 20:32:55', '2021-12-05 20:32:55', NULL, 'health'),
(2, 'Education', '<h4><strong>Education</strong></h4><p>Dalbit has been sponsoring needy students through Palm House Foundation in Nairobi, Kenya since 2007. We have so far sponsored a total of 10 students in various schools across the country. Palm House Foundation plays a significant role of conducting a nationwide selection of needy and deserving students. The foundations strategy is to have sufficient financial resources to finance a student through four years of secondary education. They also aim to mentor the students through their secondary education and later in life to produce successful citizens.</p><p>DILSS, the Dalbit Licensee in South Sudan also funded the construction of Bishop Ceaser Mazzolari’s Nursery in Rumbek. It was the only kindergarten in Rumbek town that had only two classrooms and small shared pit latrine. The project was carried out in two phases. In 2014, we constructed two concrete blocks of four (4) classrooms along with one block of two (2) classrooms and abolition block petitioned into two(s) for both boys and girls. In 2018, phase2 was initiated. One big L-Block with six (6) classrooms was constructed, plus finishing of two (2) other classrooms that were constructed with mud blocks by parents. We also purchased and constructed a water tank tower and elevated the borehole.</p><p>This initiative was to address the need to advance water sanitation, education and economic opportunity for children and their communities in Lakes State where Dalbit sold the first litter of JetA-1.</p>', '2021-12-05 20:36:32', '2021-12-05 20:36:33', NULL, 'education'),
(3, 'Conservation', '<h4><strong>Conservation</strong></h4><p>The Group actively supports the programs at the Mount Kenya Wildlife Conservancy such as the animal orphanage, conservation education and the breeding of the critically endangered Mountain Bongo antelope. The funds donated go towards the animal feeds, supplies, veterinary expenses, animal care, orphanage upkeep and animal caretakers.</p><p>In 2018, Dalbit Petroleum sponsored Tinga Tales – The Musical, an edu-tainment initiative, as part of its organizational strategy to support the work at Mount Kenya Wildlife Conservancy and serve as a vehicle to raise awareness on the plight of the critically endangered Mountain Bongo.</p><p>In 2019 and 2020, the Group sponsored the launch of the National Mountain Bongo Recovery and Action Plan 2019 – 2023 and the launch of the Mawingu Mountain Bongo Sanctuary respectively. This was done in partnership with key government agencies and stakeholders such as, Kenya Wildlife Service (KWS), Kenya Forest Service (KFS), Ministry of Tourism and Wildlife, among others, with the aim of conserving the critically endangered species. These initiatives will enable the rewilding of the animals and provide the National Bongo Task Force with individuals for reintroduction into indigenous habitats such as Ragati, Eburu, Mau and Aberdares forests with the aim to achieve a sustainable population.</p><p>The Mountain Bongo is a species whose natural habitat also happens to consist of water towers that nourish our rivers, farms, and homes. Therefore, conserving them is significant not only for the species itself, but also for our communities who will enjoy the added ecological benefits provided by healthier and sustainable habitats and ecosystems.</p><p><a href=\"http://mountkenyawildlifeconservancy.org/\"><strong>Click </strong></a><strong>for more information on the Mount Kenya Wildlife Conservancy and how to support.</strong></p>', '2021-12-05 20:38:24', '2021-12-05 20:38:25', NULL, 'conservation'),
(4, 'Community', '<h4><strong>Community</strong></h4><p>As part of giving back to the community Congo Petrol SARL, the Dalbit Licensee in the Democratic Republic of Congo, put up two waiting shelters at the Lubumbashi International Airport. The shelters are commonly used by taxi operators and people waiting for their guests.</p>', '2021-12-05 20:38:55', '2021-12-05 20:38:56', NULL, 'community');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'John Doe', 'admin@admin.com', NULL, '$2y$10$U03B0zjXBeFdFmIOlS0Ay.aTlRyZLYhg9oFp0EfbGSCCx89/u2iUm', 'bTOfI1XWbreXAVXpOcpHupkaQLLZJYXhoxLtMCZzPvZIHbRClOzg0C6Emi2q', NULL, NULL, NULL),
(2, 'wilson', 'wilsonkinyuam@gmail.com', NULL, '$2y$10$6q00KtGpSFiDeMbVpk/KVOZ80ei/oJpmJlocAUWPJypBimIB0re/K', NULL, '2022-02-10 17:58:08', '2022-02-22 19:28:53', '2022-02-22 19:28:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_informations`
--
ALTER TABLE `contact_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_fk_5473462` (`division_id`),
  ADD KEY `country_fk_5473463` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_type_fk_5473311` (`division_type_id`),
  ADD KEY `country_fk_5473312` (`country_id`),
  ADD KEY `contacts_fk_5473471` (`contacts_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`(191),`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsrooms`
--
ALTER TABLE `newsrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_5212369` (`role_id`),
  ADD KEY `permission_id_fk_5212369` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_5212378` (`user_id`),
  ADD KEY `role_id_fk_5212378` (`role_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_responsibilities`
--
ALTER TABLE `social_responsibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `contact_informations`
--
ALTER TABLE `contact_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsrooms`
--
ALTER TABLE `newsrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_responsibilities`
--
ALTER TABLE `social_responsibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_informations`
--
ALTER TABLE `contact_informations`
  ADD CONSTRAINT `country_fk_5473463` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `division_fk_5473462` FOREIGN KEY (`division_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `contacts_fk_5473471` FOREIGN KEY (`contacts_id`) REFERENCES `contact_informations` (`id`),
  ADD CONSTRAINT `country_fk_5473312` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `division_type_fk_5473311` FOREIGN KEY (`division_type_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_5212369` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_5212369` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_5212378` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_5212378` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
