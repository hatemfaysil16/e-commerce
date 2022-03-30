-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2022 at 01:25 AM
-- Server version: 5.7.23-23
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
-- Database: `bradaacc_training`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@yahoo.com', '2021-12-29 12:42:18', '$2y$10$Gsz1RqsuhDXcRQ1K8/PHyOU52esbTMvVhQcLZeFPLgnmCxzhLqXgO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `slug`, `updated_at`) VALUES
(1, 'اللغات', '1726193441106055.jpg', '2021-12-30 16:46:26', 'اللغات', '2022-03-22 14:09:38'),
(2, 'إدارة الاعمال', '1726193494820913.jpg', '2022-01-03 19:35:10', 'إدارة-الاعمال', '2022-03-22 14:13:04'),
(3, 'الحاسب الالي', '1726193567798834.jpg', '2022-01-03 19:36:37', 'الحاسب-الالي', '2022-03-22 14:13:18'),
(4, 'الفنون والتصاميم', '1726193602097315.jpg', '2022-01-03 19:37:38', 'الفنون-والتصاميم', '2022-03-22 14:13:35'),
(5, 'التأهيل الوظيفي', '1726193662068383.jpg', '2022-01-03 19:38:08', 'التأهيل-الوظيفي', '2022-03-22 14:13:48'),
(6, 'علوم التسويق', '1726193698461622.jpeg', '2022-01-03 19:38:48', 'علوم-التسويق', '2022-03-22 14:14:06'),
(7, 'الورش التدريبية', '1726193746439733.jpeg', '2022-01-03 19:39:36', 'الورش-التدريبية', '2022-03-22 14:14:20'),
(8, 'السلامة المهنية', '1726193785886460.jpg', '2022-01-03 19:40:07', 'السلامة-المهنية', '2022-03-22 14:14:33'),
(9, 'الصحافة والاعلام', '1726193871484138.jpg', '2022-01-03 19:41:18', 'الصحافة-والاعلام', '2022-03-22 14:14:46'),
(10, 'المحاسبة المالية', '1726193925056212.jpg', '2022-01-03 19:42:21', 'المحاسبة-المالية', '2022-03-22 14:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `grade` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `serial`, `from_date`, `to_date`, `grade`, `image`, `courses_id`, `created_at`, `updated_at`) VALUES
(3, '123', '2022-02-10', '2022-02-18', 122, '1724816922048057.jpg', 6, '2022-02-15 15:26:39', '2022-02-15 15:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'sadsa', '2021-12-30 17:49:16', '2021-12-30 17:49:16'),
(2, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'Gu', '2022-01-03 04:01:21', '2022-01-03 04:01:21'),
(3, 'hfdgfhd', 'fdsfd@gfdgfdg.hgf', '6546546546565', 'hjgj gkj jhg jk gjh \r\nljkhk j hkj', '2022-01-04 21:35:56', '2022-01-04 21:35:56'),
(4, 'Nathanjoype', 'no-replyImmorne@gmail.com', '89912564333', 'Hi!  brada-ac.com \r\n \r\nWe make available \r\n \r\nSending your business proposition through the Contact us form which can be found on the sites in the Communication partition. Contact form are filled in by our program and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique improve the chances that your message will be open. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis message is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2022-01-06 21:38:59', '2022-01-06 21:38:59'),
(5, 'Mike White', 'no-replyOrimi@gmail.com', '86298792836', 'Greetings \r\n \r\nI have just took a look on your sd sa s dsfor  brada-ac.com for its SEO metrics and saw that your website could use a boost. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike White\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2022-01-11 03:10:23', '2022-01-11 07:01:51'),
(6, 'Express Documents', 'perismogarn471@gmail.com', '83179779534', 'We are a Team of IT Experts specialized in the production of Real and authentic Documents such as Passport, Driving License, Covid19 Vaccine Cards, CSCS Cards, Diploma Certificates, PhD\'s, IELTS Certificate, Bachelor  degrees, NCLEX Certificate, MBA, ID Cards, SS Cards, Associate Certificate, University Certificates, Green Cards, Death Certificate, Master Degree, PMP Certificate, Working Permits, Visa\'s etc. Contact us on WhatsApp for more information +49 1590 2969018. or Email us at documentsservicesexperts@gmail.com', '2022-01-17 04:02:29', '2022-01-17 04:02:29'),
(7, 'Mike Daniels', 'no-replyOrimi@gmail.com', '89492194925', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Daniels\r\n \r\nsupport@digital-x-press.com', '2022-01-17 14:31:49', '2022-01-17 14:31:49'),
(8, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'wqe wqe', '2022-01-19 20:20:19', '2022-01-19 20:20:19'),
(9, 'Mike Wilson', 'no-replyOrimi@gmail.com', '88871842523', 'Hello, \r\n \r\nThere is a new Boss in town. Semrush started dominating the SEO tools for some time already. So, why not get yourself backlinks that Semrush says are good, right? \r\n \r\nIn this plan, get backlinks that Semrush says are coming from quality domains, Domains which are having 5000+ ranking keywords \r\n \r\nMore info: \r\nhttps://www.seo-treff.de/product/semrush-backlinks/ \r\n \r\n \r\nThank you \r\nMike Wilson\r\n \r\nsupport@seo-treff.de', '2022-01-20 10:15:52', '2022-01-20 10:15:52'),
(10, 'Mike Palmer', 'no-replyOrimi@gmail.com', '88882617335', 'Good Day \r\n \r\nIf you\'ll ever need a permanent increase in your website\'s Domain Authority score, We can help. \r\n \r\nMore info: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\n \r\nNEW: Ahrefs DR70 plan: \r\nhttps://www.strictlydigital.net/product/ahrefs-seo-plan/ \r\n \r\n \r\nThank you \r\nMike Palmer\r\n \r\nmike@strictlydigital.net', '2022-01-25 11:24:56', '2022-01-25 11:24:56'),
(11, 'Donald Cole', 'lanj7962@gmail.com', '83175719788', 'Good day \r\n \r\nI contacted you some days back seeking your cooperation in a matter regarding funds worth $24 Million, I urge you to get back to me through this email coledd11@cloedcolela.com if you\'re still interested. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nDonald Cole', '2022-01-27 04:22:53', '2022-01-27 04:22:53'),
(12, 'Mike Sherlock', 'no-replyOrimi@gmail.com', '81827564838', 'Greetings \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Sherlock\r\n \r\nSpeed SEO Digital Agency', '2022-02-01 14:20:15', '2022-02-01 14:20:15'),
(13, 'Kevin Johnson', 'tbformleads@gmail.com', '83398975914', 'Hello \r\n \r\nMy main objective here, is to help increase revenue for you by producing an animated video that will generate leads and sales for your business 24/7, for just $97. \r\n \r\nBut this offer is only good this week, so get your video before the deadline. \r\n \r\nWatch Our Video Now!   https://bit.ly/Xpress97offer \r\n \r\nFor less than you spend on coffee each month you get an American Owned Video company that can write your script, create your story board, lay-in a good soundtrack and produce an awesome video that brings home the bacon. \r\n \r\nAgain, this $97 promotion is for this week only. Don’t miss out!!! \r\n \r\nI’m in, show me what you got.   https://bit.ly/Xpress97offer \r\n \r\nBest, \r\n \r\nKevin Johnson \r\nBusiness Development Manager', '2022-02-03 19:14:52', '2022-02-03 19:14:52'),
(14, 'Diane Angelori', 'g.a.7.652.71.9@gmail.com', '83525373543', 'Hello \r\n \r\nI\'m Diane Angelori, online trading expert. I want you to know that Online trading (Crypto, Forex and Binary option) is a good thing if you have a good trading strategy, I use to loose a lot of funds in online trading before I got to where I am today. If you need assistance on how to trade and recover back all the money you have lost to your broker and want to be a successful online trader like me, write to me via email below to get an amazing strategy. \r\n \r\nIf you are having problems withdrawing your profit from your Crypt, Forex or Binary option trading account even when you were given a bonus, just contact me, I have worked with some Trade, Regulatory Agencies for 9years, and I have helped a lot of people get back their lost funds from their stubborn brokers successfully and I won\'t stop until I have helped as many as possible. For more info you can contact me via my email address: dangelori@protonmail.com', '2022-02-07 13:17:36', '2022-02-07 13:17:36'),
(15, 'Thomas Kraynik', 'autoreply@ddmmarketing.ro', '85682634615', 'Hi there, \r\nAfter analyzing your business\'s online presence, we identified some key growth opportunities. \r\nWe can develop these points and provide you our data and market intelligence report analysis on your specific niche. \r\nMy company helps businesses like yours to grow and disrupt the market. \r\nBest of all, we handle all the IT and marketing implementations, making it extremely simple for you. \r\nSo, if you are interested in learning more about how we can help you get more clients and grow your brand let me know what your calendar looks like. \r\nBest, \r\nThomas Kraynik | SVP \r\nDigital Disruptive Marketing \r\nThe new way of outsourced marketing \r\nEmail: thomas@ddm.marketing \r\nhttps://ddm.marketing', '2022-02-07 14:12:25', '2022-02-07 14:12:25'),
(16, 'Mike Elmers', 'no-replyOrimi@gmail.com', '88535288137', 'Good Day \r\n \r\nI have just took an in depth look on your  brada-ac.com for the ranking keywords and saw that your website could use a push. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Elmers\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2022-02-08 01:05:00', '2022-02-08 01:05:00'),
(17, 'Mike Anderson', 'no-replyOrimi@gmail.com', '84451684888', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Anderson\r\n \r\nsupport@digital-x-press.com', '2022-02-14 14:13:11', '2022-02-14 14:13:11'),
(18, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'weerre re e', '2022-02-14 19:22:15', '2022-02-14 19:22:15'),
(19, 'Ahmed', 'a.mekkawy@mggroup-eg.com', '01061377153', 'this is a test', '2022-02-15 20:19:36', '2022-02-15 20:19:36'),
(20, 'Mike MacDonald', 'no-replyOrimi@gmail.com', '87533374959', 'Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video, blog, product or service. \r\nhttps://www.seo-treff.de/product/derank-seo-service/', '2022-02-17 00:55:42', '2022-02-17 00:55:42'),
(21, 'Kevin Johnson', 'tbformleads@gmail.com', '89414196755', 'Hello \r\n \r\nI just wanted to reach out to you and see if you would be open to getting an animated explainer video that can generate leads and sales for your business 24/7, for just $97. \r\n \r\nBut this offer is only good this week, for the first 20 clients, so you need to order now, before you miss out.  Our normal cost for this video is $497 so get your video before the deadline. \r\n \r\nWatch Our Video Now That Explains Our Great Offer  (  https://bit.ly/Xpress97offer  ). \r\n \r\nFor less than you spend on coffee each month, you get an American Owned Video company that can write your script, create your story board, lay-in a good soundtrack and produce an awesome video that brings home the bacon. \r\n \r\nAgain, this $97 promotion is for this week only. Don’t miss out!!! The normal price is $497, so today you are saving $400. \r\n \r\n \r\nI’m in, show me how I can increase sales  (  https://bit.ly/Xpress97offer  ) \r\n \r\nBest, \r\n \r\nKevin Johnson \r\nBusiness Development Manager', '2022-02-17 12:27:15', '2022-02-17 12:27:15'),
(22, 'Mike Jackson', 'no-replyOrimi@gmail.com', '89468246945', 'Hi \r\n \r\nIf you\'ll ever need a permanent increase in your website\'s Domain Authority score, We can help. \r\n \r\nMore info: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\n \r\nNEW: Ahrefs DR70 plan: \r\nhttps://www.strictlydigital.net/product/ahrefs-seo-plan/ \r\n \r\n \r\nThank you \r\nMike Jackson\r\n \r\nmike@strictlydigital.net', '2022-02-21 18:17:00', '2022-02-21 18:17:00'),
(23, 'Mike Leman', 'no-replyOrimi@gmail.com', '89636238154', 'Hello \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Leman\r\n \r\nSpeed SEO Digital Agency', '2022-03-02 00:35:06', '2022-03-02 00:35:06'),
(24, 'Kevin Johnson', 'tbformleads@gmail.com', '82688794293', 'Hello \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nThen you might want to get an Animated Explainer Video that you can put on your website, post on social media and send out to potential clients in an email. \r\n \r\nAnd today we have slashed our price from $497 to just $97. So, you are saving $400 when you order this week. \r\n \r\nBut this offer is only good this week, for the first 20 clients, so you need to order now, before you miss out. \r\n \r\nClick Here Now To Watch Our Video About Our Great Offer (  https://bit.ly/Xpress97offer  ) \r\n \r\nFor less than you spend on coffee each month, you get an American Owned Video company that can write your script, create your story board, lay-in a good soundtrack and produce an awesome video that brings home the bacon. \r\n \r\nDid you know: \r\n \r\n•	64% of customers are more likely to buy a product online after watching a video about it... \r\n•	Putting videos on landing pages and websites can increase conversion rates by 80%... \r\n•	92% of people who watch videos share them with other people... \r\nAgain, this $97 promotion is for this week only. Don’t miss out!!! The normal price is $497, so today you are saving $400. Get your video today before the 20 discounted video slots are gone. \r\n \r\nClick Here Now And Claim Your $97 Video  (  https://bit.ly/Xpress97offer  ) \r\n \r\nBest, \r\n \r\nKevin Johnson \r\nBusiness Development Manager', '2022-03-05 19:45:49', '2022-03-05 19:45:49'),
(25, 'Paco  Martinez', 'martinezpaco625@gmail.com', '81359183447', 'I am  a solicitor at law. I am the personal attorney to the late Mrs. Anna  who used to work with Shell - development company . Hereafter shall be  referred to as my client. \r\n \r\nOn the 29th  December  2009, my client, his husband and their three  children were involved in a car accident. All occupants of the vehicle unfortunately lost their lives. Since then I have made several enquiries to your embassy to locate any of my clients extended  relatives. \r\n \r\nAfter these several unsuccessful attempts, I decided to track his last  name over the Internet, to locate any member of his family hence I  contacted you. \r\n \r\nThe finance company where the deceased had an account valued at about  9.5 million euros has issued me a notice to provide the next of kin or have the account confiscated within the next ten  official working days. \r\n \r\nSincerely, \r\nBarrister   Paco  Martinez (Esq) \r\nTel/Fax:  0034-604-197-938 \r\nReply To:  Pacomartinezconsultant@gmail.com', '2022-03-09 01:02:35', '2022-03-09 01:02:35'),
(26, 'Mike Sherlock', 'no-replyOrimi@gmail.com', '86263964986', 'Hi there \r\n \r\nI have just checked  brada-ac.com for  the current search visibility and saw that your website could use a push. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Sherlock\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2022-03-09 16:34:34', '2022-03-09 16:34:34'),
(27, 'Michaeltwelo', 'bakhrashkandaurov1988861gib+2601@inbox.ru', '82721475682', 'brada-ac.com uriefeodeighrkfldjiijofofjmvkdnsisdiehiusfiajfhweiuioidjsjsbfiadjasifaijdfifijsaaiwghifadja', '2022-03-13 19:35:36', '2022-03-13 19:35:36'),
(28, 'Anonymous Pharmacy', 'legitanonymousfada@gmail.com', '87612723699', 'Buy GHB and GBL online - GHB (gamma hydroxybutyrate) for sale online \r\n4-mmc \r\n5-meo dmt \r\nTramadol 50mg online \r\nDMT, \r\nCrystal Meth \r\nA-pvp \r\nKetamine \r\nLSD \r\necstasy/molly \r\nMDPV \r\nU-47700 \r\nAdderall \r\nCrack/uncrack cocaine \r\nMethylone \r\nOxycodone \r\nNembutal powder/solution and pills \r\nPotassium cyanide \r\nMephedrone (4-MMC) \r\nXanax 2 mg \r\nDiazepam \r\nAdderall \r\nAll inquiries are welcome 24/7. \r\nwebsite:https://anonymousalphapharmacy.com/ \r\nWhatsApp Number +1(469) 431-3201 \r\nWickR \r\nID(anonymousfada) \r\nE-mail:anonymousalphapharmacy@gmail.com', '2022-03-15 07:08:28', '2022-03-15 07:08:28'),
(29, 'Michaeltwelo', 'bakhrashkandaurov1988861gib+4761@inbox.ru', '82756716119', 'brada-ac.com uriefeodeighrkfldjiijofofjmvkdnsisdiehiusfiajfhweiuioidjsjsbfiadjasifaijdfifijsaaiwghifadja', '2022-03-15 07:36:58', '2022-03-15 07:36:58'),
(30, 'Mike Fisher', 'no-replyOrimi@gmail.com', '84518825486', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your brada-ac.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Fisher', '2022-03-16 14:43:13', '2022-03-16 14:43:13'),
(31, 'Mike Blare', 'no-replyOrimi@gmail.com', '88281674697', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Blare\r\n \r\nsupport@digital-x-press.com', '2022-03-17 13:24:58', '2022-03-17 13:24:58'),
(32, 'blabesa', 'blabesa@gmail.com', '01111111111', 'fgjhdfgdgldfg krokawef\'kdz', '2022-03-20 20:26:07', '2022-03-20 20:26:07'),
(33, 'w qewqe', 'wqwq@weqwqe.wqe', '12321', 'wqweqwqewq', '2022-03-20 20:54:52', '2022-03-20 20:54:52'),
(34, 'Mike James', 'no-replyOrimi@gmail.com', '84479477464', 'Howdy \r\n \r\nThis is Mike James\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your brada-ac.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike James\r\n \r\nmike@strictlydigital.net', '2022-03-21 21:35:19', '2022-03-21 21:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `contactwith_courses`
--

CREATE TABLE `contactwith_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `courses_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactwith_courses`
--

INSERT INTO `contactwith_courses` (`id`, `name`, `email`, `mobile`, `message`, `category_id`, `courses_id`, `created_at`, `updated_at`) VALUES
(4, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'eqw eqw', 2, 6, '2022-02-03 19:05:55', '2022-02-03 19:05:55'),
(5, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'wqe wqewqewe wqe wqe wqe', 2, 6, '2022-02-13 16:59:52', '2022-02-13 16:59:52'),
(6, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', '32243', 1, 21, '2022-03-01 19:14:14', '2022-03-01 19:14:14'),
(7, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', '21443 4 4 4 4', 1, 21, '2022-03-01 19:14:36', '2022-03-01 19:14:36'),
(8, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'dd2121d2', 1, 21, '2022-03-01 19:15:04', '2022-03-01 19:15:04'),
(9, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'qwqew w  q', 1, 22, '2022-03-01 19:22:04', '2022-03-01 19:22:04'),
(10, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'wqe wqe  wqe', 1, 22, '2022-03-01 19:22:43', '2022-03-01 19:22:43'),
(11, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'wqewqe weqwqe', 1, 22, '2022-03-01 19:23:01', '2022-03-01 19:23:01'),
(12, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'wqewqe', 1, 22, '2022-03-01 19:23:22', '2022-03-01 19:23:22'),
(13, 'Hatem', 'hatemfaysil16@gmail.com', '+201123694440', 'wewqe wqewqe we', 2, 6, '2022-03-01 19:23:48', '2022-03-01 19:23:48'),
(14, 'sadasdad', 'dasdad@fsfs', '021115616', 'adasdaaddad', 1, 21, '2022-03-20 20:40:13', '2022-03-20 20:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lectures` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessments` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `certification` text COLLATE utf8mb4_unicode_ci,
  `fullDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `price` double NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `image`, `lectures`, `duration`, `level`, `language`, `assessments`, `description`, `certification`, `fullDescription`, `active`, `price`, `instructor_id`, `categories_id`, `created_at`, `updated_at`, `slug`) VALUES
(6, 'دبلوم الموارد البشرية', '1724731863050117.jpg', 15, 35, 1, 'ar', 1, 'بلش الآن وتعلم أهم مسئوليات ادارة الموارد البشرية مع برادا. فى هذا الدبلوم انت بصدد التعرف على مهام إدارة الموارد بشرية خطوة بخطوة بدئاً من تجنيد واختيار وتوظيف \r\nالموظفين بالشركة مرورا بإدارة علاقتهم ببعضهم البعض وأرباب العمل. بالإضافة الى تدريب وتقييم الموظفين وحساب الحوافز الخاصة بهم والترقيات وحساب نسبة التغيير والتقدم المطلوب للوصول إليهم على المدى القريب أو البعيد.', '<p>.</p>', '<p>صُمم الدبلوم التدريبى لاكساب المشاركين المفاهيم والاتجاهات الحديثة فى مجال ادارة الموارد البشرية كما يهدف الى تعزيز الخبرات&nbsp;<span style=\"font-size: 0.95rem;\">والمهارات للموظفين بإدارة الموارد البشرية وتزويد المتدربين بالخبرات التخصصية اللازمة للنجاح في مجال إدارة الموارد البشرية.</span></p><p>الفئة المستهدفة:</p><p>-كل من يريد ان يعمل في مجال إدارة الموارد البشرية.</p><p>-أصحاب الشركات والمشاريع الناشئة.</p><p>كيف يستفيد المُشارك من الدورة:</p><p>تساعد منهجية الموارد البشرية على اكتساب مهارات التنظيم والتفاوض والاتصال بالإضافة إلى حل المشكلات وإدارة الصراع.</p><p>محتوى البرنامج التدريبي:</p><ul><li>ماهية الموارد البشرية.</li><li>تحليل وتصميم الوظائف بالمنظمة.</li><li>تخطيط المسار الوظيفي.</li><li>إدارة الصراع وديناميكية العمل الجماعي.</li><li>تخطيط القوى العاملة (سياسات العمل والترقية في المنظمة – إدارة العمالة المؤقتة – إدارة معدل دوران العمل).</li><li>مهارات الإتصال الفعال في إدارة الموارد البشرية.</li><li>كيفية استقطاب الأفراد.</li><li>عمليات إختيار ومقابلات التعيين.</li><li>توجيه الموظفين وعمليات التكيف مع المؤسسة.</li><li>تطبيق الجودة في مجالات التنمية البشرية.</li><li>الإدارة الإستراتيجية وإدارة الموارد البشرية.</li><li>تقييم أداء العاملين وتمكينهم بالمنظمات.</li><li>إدارة الأجور والحوافز بالمنظمة. .</li><li>القيادة الفعالة ودورها في إدارة الموارد البشرية وتحسين أخلاقيات العاملين. .</li><li>الصياغات القانونية للقرارات.</li><li>دور التدريب في تنمية الموارد البشرية.</li><li>إستخدام تكنولوجيا المعلومات في إدارة الموارد البشرية.</li><li>إعادة هندسة الموارد البشرية وتحسين الإنتاجية.</li></ul>', 1, 1400, 1, 2, '2022-01-25 20:39:29', '2022-03-22 14:16:07', 'دبلوم-الموارد-البشرية'),
(7, 'دبلومة ادارة اعمال', '1724731888230796.jpg', 20, 40, 1, 'ar', 1, 'دريتا كَيَف تَدير عملك؟ \r\nالمستقبل يبدأ هنا..احصل على شهادتك الآن في إدارة الأعمال وتعرف على مهارات ومبادئ إدارة الأعمال باشتراكك في أهم دبلومة تفاعلية معتمدة لإدارة الأعمال؛ وتمّكن من حلمك.', '.', '<p>يُؤهلك الدبلوم التدريبي المُتقدم في إدارة الأعمال على فهم واستيعاب التطبيقات الحديثة في إدارة الأعمال ومساعدتك في الوصول إلى الوظائف القيادية في الشركات الكُبرى، وإذ كنت راغب في تطوير مسارك المهني الى مجال إدارة الأعمال صُممت هذه الدورة لتُلبي جميع احتياجاتك.</p><p>تم التصميم وفقا لأحدث المعايير الدولية وذلك بهدف حصول كافة المشاركين فى كافة التخصصات على شهادات مهنية معتمدة فى مجال إدارة الأعمال تعمل على تنمية معارفهم ومهاراتهم في مجالات إدارة الأعمال وسد الفجوة العملية والمهارية التى يعانى منها غالبية المشتغلين في إدارة الأعمال.</p><p>الفئة المستهدفة:</p><p>-الراغبين في تأهيل أنفسهم للوظائف القيادية العليا بالشركات.</p><p>-العاملين في إدارة الأعمال في الشركات.&nbsp;</p><p>-الراغبين في التحول الى مجال ادارة الاعمال.</p><p>-العاملين في القطاع العام والخاص.</p><p>كيف يستفيد المُشارك من الدورة:</p><p>فتح المزيد من المجالات للمتدرب للتعرف على مفاتيح نجاح الأعمال. كما تُكسب المتدرب مهارات ادارية وعملية لتطوير حياته بشكل عام. وتساعد هذه الدورة المشاركين على إدارة المشاريع الكبرى بأحدث الوسائل والعلوم الإدارية.</p><p>محتوى البرنامج التدريبي:</p><ul><li>مبادئ الإدارة والقيادة.&nbsp;</li><li>مهام المدير وأنماط المُديرين.&nbsp;</li><li>التخطيط الاستراتيجي وإعداد خطة العمل.</li><li>&nbsp;التنظيم والرقابة.&nbsp;</li><li>&nbsp;الإدارة المالية.&nbsp;</li><li>&nbsp;إدارة المشروعات.</li><li>إدارة التسويق والمبيعات والعلاقات العامة.&nbsp;</li><li>إدارة الموارد البشرية.</li></ul>', 1, 1600, 1, 2, '2022-01-25 20:42:58', '2022-03-22 14:16:22', 'دبلومة-ادارة-اعمال'),
(8, 'دورة ادارة الجودة', '1724731983381348.jpg', 8, 20, 1, 'ar', 1, 'تبي تعرف أسس ومبادئ إدارة الجودة والجودة الشاملة وأدوات التطبيق فى جميع المجالات، وارتباط ذلك بتوفير بيئة عمل تهدف للتميز وتطوير الأعمال، وكذلك عرض مفاهيم التحسين المستمر وتوضيح مدى إرتباط تطبيق إدارة الجودة الشاملة بتحقيق متطلبات التميز في العمليات والتنافسية في أي منظومة عمل.', '<p>.</p>', '<p>صُممت دبلومة إدارة الجودة لتّقدم برنامج تدريبي يؤهل المتدربين على إدارة الجودة، حيث تتناول الدبلومة موضوعات ضمان ورقابة الجودة ونظم الإدارة ومفهوم العمليات والمواصفات الدولية ومنهجيات تحسين الجودة ودراسة العلاقة بين إدارة الجودة وتخفيض التكاليف الإنتاجية بالإضافة لزيادة الأرباح وتحقيق مستويات عالية من رضا العملاء.</p><p>الفئة المستهدفة:</p><p>-العاملين في مجال الجودة بالمصانع والوحدات الإنتاجية والمرشحين لهذه الوظائف.</p><p>-جميع العاملين بالمشروعات ومراكز البحث والتطوير.</p><p>-جميع المختصين بشئون الجودة وامتياز الأداء.</p><p>-جميع المختصين بشئون السلامة والصحة المهنية والبيئة.</p><p>-جميع المهتمين والدارسين بمجال الجودة.</p><p>كيف يستفيد المُشارك من الدورة:</p><p>تزود هذه الدورة المشاركين بالمعرفة الشاملة حول تاريخ الجودة وتطورها ورواد وأدوات الجودة. من خلال مختلف ورشات العمل وتمارين لعب الأدوار، ستركز هذه الدورة على تطبيقات نظم الجودة والنماذج والمنهجيات. وتساعد هذه الدورة التفاعلية المشاركين على تطبيق أدوات الجودة الفعالة والمُستخدمة في المؤسسات الرائدة.&nbsp;</p><p>محتوى البرنامج التدريبي:</p><ul><li>تعريف إدارة الجودة الشاملة.</li><li>الفروق الأساسية بين الإدارة التقليدية إدارة الجودة الشاملة.</li><li>أهمية نظام إدارة الجودة.</li><li>التطور التاريخي لإدارة الجودة الشاملة.</li><li>العلاقة بين إدارة الجودة الشاملة والمفاهيم الإدارية الأخرى.</li><li>تطبيق إدارة الجودة وأدوات تحسين الجودة والتقويم الذاتي ونماذج تقويم الجودة.</li><li>المراحل الأربعة لتطور بناء فريق الجودة.</li><li>عمليات الجودة الشاملة.</li><li>مفهوم المواصفات.</li><li>مفهوم مراقبة الجودة.</li><li>متطلبات التأهيل.</li></ul>', 1, 700, 1, 2, '2022-01-25 20:46:00', '2022-03-22 14:16:36', 'دورة-ادارة-الجودة'),
(9, 'دورة ادارة مشروعات', '1724732035794212.jpg', 15, 35, 1, 'ar', 1, 'في صدد العمل كمدير لمشروع ما؟ \r\nازهل وابدأ دبلوم إدارة المشروعات مع برادا. نعم. لابد أنك بحاجة إلى تنمية وتطوير مهاراتك في إدارة المشاريع، والتأكد من أنك تستطيع الصعود بمشروعك سلم النجاح في كل مرحلة من مراحل العمل على المشروع.', '<p>.</p>', '<p>إدارة المشروعات تعد من الموضوعات الأساسية لكل من يريد مواصلة تقدمه في مساره الوظيفي. حيث تضمن لك الوصول إلى المستوى المطلوب من المهارات والاستراتيجيات الاحترافية في مجال إدارة المشاريع خاصة من هم في مناصب قيادية أو يخططون لذلك.</p><p>يقدم الدبلوم منهجًا علميًا يمكن تطبيقه في مجال عملك، للوصول لنتائج أفضل، عن طريق تحليل نقاط القوة والضعف، والعمل على التغلب عليها.</p><p>يتناول دبلوم برادا بشكل عملي وبشرح مبسط وواضح جوانب إدارة المشاريع بداية من فهم المشاريع وأنظمة إدارة المشاريع، والتعرف على عمليات إدارة المشاريع، وإدارة كلفة المشروع، والمخطط الزمني، وإدارة جودة المشروع وغيرها من الجوانب اللازمة لاحتراف إدارة المشاريع.&nbsp;</p><p>الفئة المستهدفة:</p><p>-مدراء مكاتب التخطيط والإعداد للمشاريع الخاصة بالشركات.&nbsp;</p><p>-مطوري نظم الإدارة.&nbsp;</p><p>-مدراء مكاتب مراقبة الجودة في النظام الإداري.&nbsp;</p><p>-جميع العاملين ضمن الشركات بمختلف الأقسام الإدارية والتنفيذية.&nbsp;</p><p>-جميع العاملين في مجال إدارة المشاريع.&nbsp;</p><p>كيف يستفيد المُشارك من الدورة:</p><p>تُكسبك الدبلوم مجموعة من المهارات الهامة لإدارة المشروع منها إدارة نطاق العمل والوقت والتكاليف والجودة. إضافة إلى إدارة الموارد البشرية والتواصل والمعنيين. كما أنك سوف تتميز بـ إدارة المشتريات وإدارة المخاطر.</p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة عن ادارة المشروعات.&nbsp;</li><li>العناصر الأساسية لإدارة المشروعات ودور مدير المشروع.</li><li>بدء المشروع وإدارة المعنيين.</li><li>إدارة نطاق المشروع.</li><li>إدارة الجدول الزمني للمشروع.</li><li>إدارة تكلفة المشروع.</li><li>إدارة جودة المشروع.</li><li>إدارة موارد المشروع.</li><li>إدارة التواصل بالمشروع.</li><li>إدارة مخاطر المشروع.</li><li>إدارة مشتريات المشروع.</li><li>إدارة التوريدات و التعاقدات فى المشروع.</li><li>إدارة تكامل المشروع.</li></ul>', 1, 1600, 1, 2, '2022-01-25 20:49:11', '2022-03-22 14:16:54', 'دورة-ادارة-مشروعات'),
(10, 'دورة TOT', '1724732731369204.jpg', 15, 30, 1, 'ar', 1, 'أحصل على شهادة مُدرب معتمد مع برادا بعد حصولك على دورة تدريب المدربين TOT.', '<p>.</p>', '<p>دبلوم تدريبي معتمد تم تصميمه بهدف إعداد مدربين ومحاضرين محترفين وتدريبهم على إعداد الحقائب التدريبية وتنمية مهارات الالقاء والتدريس لكي يصبحوا محاضرين ومدربين محترفين.</p><p>الفئة المستهدفة:</p><p>كل شخص يرغب بالعمل فى مجال التدريب.</p><p>كيف يستفيد المُشارك من الدورة:</p><p>يهدف هاد الدبلوم إلى إعداد مدربين قادرين على إعداد وإدارة العمليات والبرامج التدريبية بكفاءة.&nbsp;</p><p>محتوى البرنامج التدريبي:</p><ul><li>مدخل لمفهوم التدريب.&nbsp;</li><li>أنماط شخصيات المتدربين.</li><li>مبادئ تدريب الكبار.</li><li>مراحل العملية التدريبية.</li><li>تحليل الاحتياجات التدريبية.</li><li>نموذج تحليل الاحتياجات التدريبية.</li><li>تصميم الحقيبة التدريبية.</li><li>أنواع المواد التدريبية ومواصفاتها.</li><li>اختيار أساليب التدريب.</li><li>وسائل الإيضاح والتشبيهات.</li><li>مهارات العرض والإلقاء والتعامل مع مختلف أنواع المتدربين.</li><li>تقييم البرنامج التدريبي.</li></ul>', 1, 1500, 1, 5, '2022-01-25 20:53:03', '2022-03-22 14:17:17', 'دورة-TOT'),
(11, 'دبلوم ريادة الأعمال', '1724732833958806.jpg', 12, 25, 1, 'ar', 1, 'تبي تأسس نشاطك التجاري؟ \r\nدورة ريادة الأعمال تُمكنك من احترافية بناء نشاطك التجارى بشكل مميز حيث يتم تعليم المتدربين اساسيات مجال ريادة الأعمال ونشأتها.', '<p>.</p>', '<p>صُممت الدورة لإلقاء الضوء على أهمية التخطيط والتنظيم للمشروعات وكيفية إدارتها. سيتمكن المتدرب من خلال الدورة من معرفة كيفية وضع خطة عمل متكاملة وكيفية الرقابة والتوجيه من خلالها.&nbsp; كما سيتعلم المتدرب ثقافة العمل الريادي التجارى والخدمى لاستثمار الفرص وتحويل الأفكار إلى مشاريع عمل ناجحة&nbsp; وتحقيق أفضل النتائج.</p><p>الفئة المستهدفة:</p><p>كل شخص يرغب ببدء مشروعه الريادي الخاص.</p><p>كيف يستفيد المُشارك من الدورة:</p><p>يهدف هادي الدبلوم إلى تأهيل المشاركين للإلمام بمفاهيم وأساسيات ريادة الأعمال. بالإضافة إلى تنمية مهارات ريادة الأعمال لدى المشاركين.</p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة عن ريادة الأعمال.</li><li>نشأة ريادة الأعمال.</li><li>مقومات ريادة الأعمال.</li><li>أهمية ريادة الأعمال.</li><li>ما هي صفات رائد الأعمال الناجح.</li><li>أهمية التخطيط والتنظيم.</li><li>طرق تمويل المشروع.</li><li>التسويق والمبيعات.</li><li>اساسيات التخطيط المالى.&nbsp;</li><li>تعريف التوجيه والرقابة.</li><li>كيفية تصنيف المشروع.</li><li>أهمية الأفكار الإبداعية للمشاريع.</li><li>كيف يتم توليد الأفكار.</li><li>الميزة التنافسية.</li><li>نماذج الأعمال.&nbsp;</li><li>تصميم نموذج العمل.&nbsp;</li><li>دورة حياة المشروع.</li></ul>', 1, 950, 1, 5, '2022-01-25 20:55:09', '2022-03-22 14:17:32', 'دبلوم-ريادة-الأعمال'),
(12, 'دورة سكرتارية تنفيذية', '1724732873673925.jpg', 5, 10, 1, 'ar', 1, 'دبلوم تدريبي في السكرتارية التنفيذية وادارة المكاتب بكفاءة وفعالية يهدف الى تأهيل المشاركين على اكتساب المهارات الفنية والشخصية للنجاح في مجال السكرتارية التنفيذية وإدارة المكاتب.', '<p>.</p>', '<p>صُمم دبلوم السكرتارية التنفيذية بغرض اكساب المتدربين المهارات اللازمة لتمكينهم من أداء الواجبات والمسئوليات الوظيفية في مجال السكرتارية وادارة المكاتب بكفاءة.&nbsp;</p><p>كما تمكن المتدرب من التواصل الفعال وإدارة الوقت وحفظ المعلومات بطريقة منظمة لسهولة الرجوع اليها عند الحاجة. بالإضافة إلى اكساب المتدربين المهارات الشخصية التى تؤدى إلى النجاح فى مجال السكرتارية و إدارة المهام المكتبية.&nbsp;</p><p>الفئة المستهدفة:</p><p>-الخريجين الجدد الراغبين في العمل في وظيفة السكرتارية التنفيذية.</p><p>-جميع المؤهلين للحصول على ترقية وظيفية للحصول على وظيفة مدير مكتب.&nbsp;</p><p>-جميع الراغبين في التأهيل لوظيفة سكرتير تنفيذي او سكرتيرة تنفيذية.</p><p>كيف يستفيد المُشارك من الدورة:</p><p>يهدف هادي الدبلوم إلى تمكين المتدربين من الالمام من مهارات اعمال السكرتارية التنفيذية وإدارة المكاتب باستخدام احدث الاساليب والتقنيات المكتبية.&nbsp;</p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة عن السكرتارية.</li><li>معالجة الاتصالات الهاتفية بمهارة.</li><li>تنظيم اجتماعات ومقابلات وسفريات المدير.</li><li>كتابة المراسلات وفقاً للشروط الشكلية والموضوعية وتداولها بكفاءة.</li><li>تداول وسائل الاتصال الكتابي بكفاءة.</li><li>تنظيم محفوظات مكتب المدير.</li><li>اختصاصات وواجبات ومسئوليات مدراء المكاتب.</li><li>المهارات السلوكية لوظيفة مدير المكتب و فن التعامل مع الرؤساء والمرؤوسين.</li></ul>', 1, 350, 1, 5, '2022-01-25 20:56:52', '2022-03-22 14:17:47', 'دورة-سكرتارية-تنفيذية'),
(13, 'دورة الحاسب الآلي', '1724732387218103.jpg', 8, 18, 1, 'ar', 1, 'سجّل في دورة الحاسب الآلي من برادا لتحترف أساسيات الحاسوب وتدرك أساسيات تكنولوجيا المعلومات وشبكة الإنترنت.', '<p>.</p>', '<p>صُممت الدورة لتنمية مهارات وتعزيز قدرات المتدربين المشاركين فى التعامل مع اجهزة الحاسب الالي وتطبيقات مايكروسوفت أوفيس وتأهيل المتدربين للتعامل مع البيانات وجداول البيانات حيث تتناول الدورة كافة المبادئ والأدوات المستخدمة فى حقيبة تطبيقات مايكروسوفت أوفيس.&nbsp;&nbsp;</p><p><br></p><p>الفئة المستهدفة:</p><p>كافة الفئات وكل شخص ليس لديه اية خلفية في استخدام الحاسوب يرغب بتطوير مهارات الكمبيوتر الأساسية واساسيات الطباعة وإدخال البيانات.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تهدف الدورة الى اكساب المتدربين المشاركين بالمهارات الأساسية لاستخدامات الحاسب الالى وتعريفهم على اهم المصطلحات الخاصة بالحاسب الألى وتدريبه على استخدام تطبيقات مايكروسوفت أوفيس وأنظمة التشغيل.&nbsp;</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة فى الحاسب الالى.&nbsp;&nbsp;</li><li>انظمة التشغيل windows &amp; IT.</li><li>اساسيات ادارة الوقت والبريد الالكتروني&nbsp; outlook.&nbsp;&nbsp;</li><li>معالجة النصوص Microsoft Word.</li><li>الجداول الإلكترونية&nbsp; Microsoft Excel .</li><li>&nbsp;العروض التقديمية&nbsp; Microsoft PowerPoint.</li><li>قواعد البيانات&nbsp; Microsoft Access.</li></ul><p><br></p><p>&nbsp; مدة الدورة:</p><p>25 ساعة تدريبية لمدة ثلاث أسابيع.</p><p><br></p><p>&nbsp;التكلفة:</p><p>450 ريال سعودى.</p><div><br></div>', 1, 400, 1, 3, '2022-01-25 20:58:22', '2022-03-22 14:18:01', 'دورة-الحاسب-الآلي'),
(14, 'دورة أمن سيبراني', '1724732411562311.jpg', 7, 15, 1, 'ar', 1, 'بِتريد تتعرف على الأمن السيبراني لحماية عملك؟\r\nبلش الان وانضم إلينا في برادا وتعرف على المبادئ الأساسية لأمن المعلومات والجرائم المعلوماتية بسهولة. \r\nكذلك اكتشاف مختلف نقاط الضعف فى الشبكات والخدمات الإلكترونية المقدمة مع التعرف على المخاطر المرتبطة بنقل المعلومات ومعالجتها وتطبيق تقنيات الدفاع عن الشبكات والخدمات المقدمة بكفاءة وفاعلية.', '<p>.</p>', '<p>صُممت الدورة لإكساب المتدربين المعارف والمهارات اللازمة في مجال أمن المعلومات لحماية بيانات المؤسسات من خطر الجرائم المعلوماتية. وذلك بالتعرف على المبادئ الأساسية لأمن المعلومات والجرائم المعلوماتية بسهولة.&nbsp;</p><p><br></p><p>الفئة المستهدفة:</p><p>-ضباط الشرطة العاملين في مجال البحث الجنائي وتحليل المعلومات.</p><p>-أعضاء النيابة العامة والقضاة.</p><p>-موظفي القطاع الحكومي والخاص.</p><p>-ضباط أمن المعلومات في القطاع الشرطي والعسكري والمحامين.</p><p>-مسؤولي الأمن في المؤسسات والشركات.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تساعد الدورة المشاركين على تطوير قدراتهم في الإلمام بقواعد وأسس الأمن السيبراني للبنية التحتية الحرجة و الحماية القانونية له. بالإضافة إلى تطوير قدرات المشاركين على فهم المخاطر السيبرانية وكيفية الوقاية منها.</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة في&nbsp; الأمن السيبراني ومدى أهميته.</li><li>أنواع الأمن السيبراني.</li><li>الفضاء السيبراني.</li><li>عناصر أمن المعلومات وكيفية امن المعلومات وكيفية تحقيقها.</li><li>الفرق بين أمن المعلومات والأمن السيبراني.</li><li>تقنيات وبرامج الحماية السيبرانية.&nbsp;</li><li>تصنيف المعلومات وأهميته في مجال أمن المعلومات.&nbsp;</li><li>إدارة الأمن السيبراني والمخاطر.&nbsp;</li><li>الجرائم واشكال الهجمات الإلكترونية.</li><li>كيف تحمي نفسك من الهجمات الإلكترونية.&nbsp;</li></ul><p><br></p><p>&nbsp; مدة الدورة:</p><p>20 ساعة تدريبية لمدة أسبوع.</p><p><br></p><p>&nbsp;التكلفة:</p><p>500 ريال سعودى.</p><div><br></div>', 1, 700, 1, 3, '2022-01-25 20:59:33', '2022-03-22 14:18:17', 'دورة-أمن-سيبراني'),
(15, 'دورة السلامة والصحة المهنية', '1724733609768538.jpg', 5, 15, 1, 'ar', 1, 'بتريد تَدُخل إلى مجال السلامة -من أعلى المجالات أجرا- هذه الدورة هي الخطوة الأولى. حيث يتم طلب شهادة الأوشا فى جميع الوظائف الخاصة بالسلامة، وتعتبر أساسية لمن يريد العمل فى المجال للمرة الأولى.', '<p>.</p>', '<p>صُممت هذه الدورة التدريبية بهدف تعريف المتدربين المشاركين على احدث برامج السلامة والصحة المهنية طبقا لمعايير( الاوشا ) وذلك لإكساب المتدربين الخبرة&nbsp; للتعرف على الإجراءات والإرشادات اللازمة في العديد من الأنشطة داخل منشآتهم و تطبيق معايير وسياسات وإجراءات السلامة والصحة المهنية الأمريكية.</p><p><br></p><ul><li>الفئة المستهدفة:</li></ul><p>-مدراء الصحة والسلامة المهنية.</p><p>-العاملون في الأقسام الخاصة بالسلامة المهنية.</p><p>-مدراء الطوارئ والعاملون فيها.</p><p><br></p><ul><li>كيف يستفيد المُشارك من الدورة:</li></ul><p>في نهاية دورة السلامة والصحة المهنية طبقا لمواصفات ( الأوشا - OSHA ) يكون المُشارك قد تعلم كيفية التخطيط وتحديد المخاطر وتقييمها والعمل على حلها بطرق وأساليب حديثة من خلال عمل إدارة برامج الأوشا، مع التمرين على عمليات قياس الأداء والرصد لتحسين مواصفات نظم السلامة المتبعة وأهمية السلامة والصحة المهنية لتحسين منظومة العمل وطبيعتها.</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة عامة للأوشا ومقاييس الإنشاءات.</li><li>تعريف الأوشا.</li><li>تشريعات الصحة والسلامة المهنية طبقا للأوشا.</li><li>معايير السلامة المهنية القياسية والقوانين واللوائح المنظمة لها.</li><li>منظومة إدارة المخاطر.</li><li>السلامة والصحة المهنية في مواقع العمل.</li><li>مفهوم السلامة والصحة المهنية.</li><li>الأهداف العامة التي تسعى الصحة والسلامة المهنية إلى تحقيقها.</li><li>تقسيم وتصنيف المناطق الخطرة.</li><li>أنواع المخاطر.</li><li>تجنب مخاطر الكهرباء ووسائل الهروب.</li><li>إغلاق مصادر الطاقة ووضع لافتات عليها.</li><li>المواقع المصنفة خطرة – وحواجز الوقاية الحماية للمعدات.</li><li>الصحة المهنية – الأمراض المتعلقة بالدم.</li><li>الوقاية والحماية من خطر السقوط – السقالات والسلالم.</li><li>مهمات الوقاية الشخصية – برنامج حماية الجهاز التنفسي.</li><li>آلات ومعدات الحفر اليدوية– أعمال الحفر.</li><li>استخدام المواد المتفجرة في عمليات الإنشاءات.</li><li>أنظمة مكافحة الحريق – الطفايات – التصنيف.</li><li>المواد المستعملة في اطفاء الحريق.</li><li>أنظمة إنذار الحريق الحديثة.</li><li>أنظمة إطفاء الحريق الآلي.</li><li>توصيل المعلومات عن المواد الكيمائية الخطرة.</li><li>الإيرجنومكس Ergonomics – السلامة في أعمال اللحام والقطع.</li><li>السلامة من الإشعاعات – المواد سريعة الاشتعال والمواد القابلة للاشتعال.</li><li>الأوناش والحفارات والرافعات والمصاعد وسيور النقل.</li></ul><p><br></p><p>مدة الدورة:</p><p>20 ساعة تدريبية لمدة أسبوعين.</p><div><br></div><div><br></div>', 1, 750, 1, 8, '2022-01-25 21:01:11', '2022-03-22 14:18:32', 'دورة-السلامة-والصحة-المهنية'),
(16, 'دورة تصميم جرافيك', '1724732551469494.jpg', 10, 20, 1, 'ar', 1, 'تقدم أكاديمية برادا للتدريب المهني دورة تدريبية لتعلم كيفية تصميم الجرافيك من البداية و حتى الاحتراف و اكساب المتدربين الخبرات اللازمة و التى تؤهلهم لكي يصبحوا مصممى جرافيك ناجحين وتقديم كافة المعلومات لاكسابهم مهارات التصميم ونظريات الألوان من خلال دراسة برامج التصميم   photoshop  و برنامج  illustrator  و برنامج  InDesign', '<p>.</p>', '<p>أهداف الدورة:&nbsp;</p><p>تهدف الدورة الى اعداد مصممين جرافيك محترفين&nbsp; و اكساب&nbsp; و تعريف المتدربين على المهارات الخاصة ببرامج التصميم الجرافيكي ( Photoshop – illustrator – InDesign&nbsp; )&nbsp; وذلك لاكساب المتدربين المهارات اللازمة لكى يصبحوا مصممين محترفين و ان يكون لديهم القدرة على تنفيذ كافة التصميمات باحترافية.&nbsp;</p><p><br></p><p>محاور الدورة:&nbsp;</p><ul><li>برنامج الفوتوشوب Photoshop</li><li>برنامج Illustrator</li><li>برنامج InDesign</li><li>إعداد مشروع تخرج و مناقشته&nbsp;</li></ul><p><br></p><p>المميزات التى يحصل عليها الطالب:&nbsp;</p><p>شهادة مهنية من أكاديمية برادا للتدريب المهنى.</p><p>شهادة عالمية معتمدة من كلية واتفورد للأعمال.</p><p><br></p><p>شروط التقديم:&nbsp;</p><p>&nbsp;لا تقل نسبة حضور المتدربة عن 80 % من عدد ساعات الدبلوم بالكامل.</p><p><br></p><p>ملحوظة:</p><p>بعد التسجيل سوف يتم التواصل معك من خلال خدمة العملاء علي رقم الواتس اب لمعرفة طريقة الدفع المناسبة لك.</p><div><br></div>', 1, 1200, 1, 4, '2022-01-25 21:02:26', '2022-03-22 14:18:51', 'دورة-تصميم-جرافيك'),
(17, 'دبلوم التسويق والمبيعات', '1724733397699852.jpg', 12, 30, 1, 'ar', 1, 'بتريد الوصول إلى عملاء جدد وتنمي الحصة السوقية لديك؟\r\nسجل الآن في دبلوم برادا للتسويق والمبيعات وحقق أهدافك التسويقية والبيعية. \r\nوإذ تريد العمل في مجال التسويق حيث أنه من أهم الأنشطة التي تهتم بها الشركات لزيادة حصتها السوقية. وفي عالم شديد التغير يعتمد على الإنتاج الكثيف للمنتجات والخدمات لا يمكن للشركات الوصول الى عملاء جدد بدون أن تطور وتحسن عمليات المبيعات وبالتالي يزداد الاحتياج إلى متخصصين بالمجال.', '<p>.</p>', '<p>أعدت أكاديمية برادا الدبلوم&nbsp; لكل الراغبين بالعمل فى مجال التسويق والمبيعات من خلال تقديم أحدث الأساليب العلمية والعملية فى مجال التسويق والمبيعات وصناعة الأسواق و استهدافها كما يوفر المعلومات الضرورية للنجاح فى وظائف التسويق والمبيعات.</p><p><br></p><p>الفئة المستهدفة:</p><p>-المدراء ورجال الأعمال.&nbsp;</p><p>–ممثلي خدمات العملاء والعلاقات العامة.&nbsp;</p><p>-موظفو المبيعات.</p><p>-الراغبين بالعمل بمجال التسويق والمبيعات.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>يهدف هادي الدبلوم إلى تأهيل المتدربين المشاركين للعمل في وظائف التسويق والمبيعات واكسابهم المهارات والخبرات العلمية اللازمة لسوق العمل واكسابهم مهارات العرض والاقناع والتفاوض.</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة في التسويق الاستراتيجي.&nbsp;</li><li>مراحل تطور التسويق.</li><li>أهمية التسويق والفرق بين التسويق والمبيعات.&nbsp;</li><li>خصائص التسويق الاستراتيجي.&nbsp;</li><li>خطة التسويق الاستراتيجي.</li><li>تقسيم السوق والشرائح المستهدفة.&nbsp;</li><li>القوى الخمسة وتحليل السوق.&nbsp;</li><li>المزيج التسويقي.&nbsp;</li><li>أبحاث التسويق.</li><li>التخطيط والخطة التسويقية.&nbsp;</li><li>نموذج الخطة التسويقية.&nbsp;</li><li>مفهوم البيع.</li><li>كيفية ايجاد العملاء.</li><li>خطوات العملية البيعية.&nbsp;</li><li>أنواع الوظائف البيعية.&nbsp;</li><li>خصائص رجل البيع.</li><li>كيفية عرض المنتج.&nbsp;</li><li>وسائل الترويج المختلفة للمبيعات.&nbsp;</li><li>أنواع العملاء وكيفية التعامل معهم.&nbsp;</li><li>أساليب الإقناع والتأثير في عملية البيع.</li></ul><p><br></p><p>&nbsp; مدة الدورة:</p><p>35 ساعة تدريبية لمدة ثلاث أسابيع.</p><p><br></p><p>&nbsp;التكلفة:</p><p>750 ريال سعودى.</p><div><br></div>', 1, 1200, 1, 6, '2022-01-25 21:05:52', '2022-03-22 14:19:07', 'دبلوم-التسويق-والمبيعات'),
(18, 'دورة التسويق الكتروني', '1724733416106908.jpg', 7, 15, 1, 'ar', 1, 'تقدم أكاديمية برادا للتدريب المهنى دورة تدريبية فى مجال التسويق الالكتروني حيث تم إعداد الدورة للمتدربين الراغبين بالعمل فى مجال التسويق الالكترونى  بطريقة تناسب جميع المستويات من المبتدئين و حتى الاحتراف. الدورة تغطي أهم المحاور المرتبطة بمجال التسويق الالكترونى وأشهر المواقع  واكساب المتدربين استراتيجات التسويق المختلفة.', '<p>.</p>', '<p>أهداف الدورة:</p><p>تهدف الدورة اكساب المتدربين الطرق وأدوات واستراتيجيات التسويق الالكترونى وكيفية استخدامها فى تسويق السلع و الخدمات و تمكينهم من عمل خطط تسويقية تتناسب مع المنتجات و الخدمات و التعرف على المشكلات وكيفية حلها وإيجاد البدائل المناسبة.</p><p><br></p><p>محاور الدورة :&nbsp;</p><ul><li>مفهوم التسويق الالكتروني</li></ul><p>(أهداف - مميزات - عيوب التسويق الالكترونى الاستراتيجي)</p><ul><li>مراحل التسويق الالكترونى</li></ul><p>(الخطة التسويقية تفصيلا - منصات السوشيال ميديا تفصيلا)</p><ul><li>التسويق الاحترافى بالمحتوى</li></ul><p>(خطة التسويق بالمحتوى - استراتيجيات المحتوى )</p><ul><li>منصات الاعلانات الممولة</li></ul><p>(اعلانات جوجل - إعلانات فيسبوك)</p><ul><li>طرق التسويق الالكتروني</li></ul><p>(التسويق فى تويتر - التسويق على يوتيوب - التسويق بالبريد الالكترونى - التسويق عبر الهاتف - التسويق على انستغرام - التسويق على لينكدان - التسويق و بناء الهوية و الصورة الذهنية - استراتيجيات&nbsp; seo&nbsp; للمواقع - استراتيجيات&nbsp; google ads - استراتيجيات فيسبوك).</p><p><br></p><p>المميزات التى يحصل عليها الطالب:&nbsp;</p><p>شهادة مهنية من أكاديمية برادا للتدريب المهنى.</p><p>شهادة عالمية معتمدة من كلية واتفورد للأعمال.</p><p><br></p><p>شروط التقديم:&nbsp;</p><p>&nbsp;لا تقل نسبة حضور المتدربة عن 80 % من عدد ساعات الدبلوم بالكامل.</p><p><br></p><p>ملحوظة:</p><p>بعد التسجيل سوف يتم التواصل معك من خلال خدمة العملاء علي رقم الواتس اب لمعرفة طريقة الدفع المناسبة لك.</p><div><br></div>', 1, 750, 1, 6, '2022-01-25 21:07:16', '2022-03-22 14:19:22', 'دورة-التسويق-الكتروني'),
(19, 'المحاسبة لغير المحاسبين', '1726281639365585.jpg', 5, 10, 1, 'ar', 1, 'صُمّم هذا الدبلوم بهدف تزويد المتعلمين من غير المحاسبين والماليين المتخصصين بالمعرفة اللازمة لقراءة وفهم القوائم المالية.', '<p>.</p>', '<p>أعدت برادا هذا الدبلوم لإعداد الغير محاسبين الراغبين بالعمل في مجال المحاسبة، لإكسابهم المبادىء والتعريفات الاساسية في مجال المحاسبة المالية.</p><p><br></p><p>الفئة المستهدفة:</p><p>-المدراء ورؤساء القسام غير الماليين الذين يرغبون في زيادة أو تعميق فهمهم بالمفاهيم والأساليب المحاسبية.&nbsp;</p><p>-المدراء ورؤساء الأقسام غير الماليين وغيرهم من الأشخاص الذين يستخدمون المعلومات المالية في اتخاذ القرارات أو يقدمون تقارير عن أدائهم للادارات العليا.&nbsp;</p><p>-المحاسبون المبتدئون والمحللون الماليون.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تهدف الدورة الى اكساب المتدربين المشاركين المهارات اللازمة في فهم الأساليب والمفاهيم الأساسية في تحليل وتفسير البيانات المالية والمحاسبية والالمام بالدورة المستندية لتسجيل البيانات المحاسبية&nbsp; والتعرف على أهم المصطلحات المحاسبية والقدرة على تحديد كيفية الحصول على المعلومات وإعداد القوائم المالية.</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مدخل الى المحاسبة وأهدافها.&nbsp;</li><li>النظام المحاسبى.&nbsp;</li><li>المبادئ المحاسبية.&nbsp;</li><li>العمليات المحاسبية.&nbsp;</li><li>الدورة المستندية.&nbsp;</li><li>القوائم المالية.&nbsp;</li><li>المراجعة والتدقيق.&nbsp;</li><li>التكاليف المحاسبية وانواعها.&nbsp;</li><li>عناصر التكاليف المحاسبية.&nbsp;</li><li>الموازنات المحاسبية التقديرية.&nbsp;</li><li>التحليل المالى.&nbsp;</li><li>الأصول وانواعها وطرق الإهلاك.&nbsp;</li><li>الإدارة المالية والهيكل التنظيمي لها.&nbsp;</li><li>التحليل المالي والنسب المالية.</li><li>الضرائب وحسابها.</li><li>التسويات والقيود اليومية.&nbsp;</li><li>دراسة الجدوى الاقتصادية.</li></ul><p><br></p><p>&nbsp;مدة الدورة:</p><p>15 ساعة لمدة 5 ايام.</p><p><br></p><p>&nbsp;التكلفة:</p><p>500 ريال سعودى.</p><div><br></div>', 1, 1100, 1, 10, '2022-02-24 20:17:04', '2022-03-22 14:19:36', 'المحاسبة-لغير-المحاسبين'),
(20, 'دورة المدير المالي المحترف', '1726281988647853.jpg', 20, 35, 1, 'ar', 1, 'دورة تدريبية تساعد المدراء الماليون الراغبون في الحصول على تأهيل مهني يوثق خبرتهم العملية، وكسب المعرفة التي تمكنهم من أداء مهامهم الوظيفية بأسلوب ومنهج علمي متطور.', '.', '<p>صُممت الدورة للمدراء الماليين الراغبين فى تأهيل خبراتهم العملية مما يساعدهم على اكتساب المعرفة التي تمكن العاملين بالادارة المالية من أداء مهامهم الوظيفية بأحدث الأساليب والمناهج العلمية.</p><p><br></p><p>&nbsp;الفئة المستهدفة:</p><p>-شاغلي وظيفة المدير المالي الراغبين في اكتساب معرفة متخصصة في المجال.</p><p>-الأفراد الراغبين في تأهيل أنفسهم لشغل وظيفة المدير المالي.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>يكتسب المشاركين المعرفة الكاملة والموضوعات الهامة بالنسبة للمدير المالى واعداد القوائم المالية وفقا للمعايير الدولية وتنمية معارف المتدربين بأدوات التحليل المالى لتقييم القرارات الاستثمارية واكسابهم القدرة على اعداد القوائم المالية المتوقعة.&nbsp;</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مفهوم الإدارة المالية.&nbsp;</li><li>إعداد القوائم المالية وفقا للمعايير الدولية.&nbsp;</li><li>أساليب وطرق التحليل المالى وتقييم القرارات الاستثمارية والتمويلية.&nbsp;</li><li>المعايير المحاسبية.&nbsp;</li><li>القرارات الاستثمارية&nbsp; المالية.&nbsp;</li><li>قرارات التمويل طويل الأجل.&nbsp;</li><li>قرارات التمويل قصير الأجل.&nbsp;</li><li>أدوات وأساليب التخطيط المالي.&nbsp;</li><li>الموازنة العامة و إعداد القوائم المالية المتوقعة.&nbsp;</li><li>أدوات وأساليب التحليل المالى وتقييم القرارات والنتائج الاستثمارية والتمويلية.&nbsp;</li><li>تحليل الانحرافات بين الموازنات التخطيطية والأداء الفعلى.&nbsp;</li><li>ادارة الازمات المالية.</li></ul><p><br></p><p>&nbsp; مدة الدورة:</p><p>30 ساعة بواقع 15 يوم.</p><p><br></p><p>&nbsp;التكلفة:</p><p>1200 ريال.</p><div><br></div>', 1, 1500, 1, 10, '2022-02-24 20:19:09', '2022-03-22 14:19:57', 'دورة-المدير-المالي-المحترف'),
(21, 'دورة لغة انجليزية للمبتدئين الى الإحتراف', '1726282306666968.jpg', 12, 25, 1, 'ar', 1, 'تكلم الإنجليزية بثقة. وانضم إلى برادا في دورة اللغة الانجليزية للمبتدئين الى الإحتراف.', '<p>.</p>', '<p>صُممت هادي الدورة للراغبين في تحسين وإتقان الانجليزية الشفهية والتحريرية، حيث تحتوي الدورة على ستة مستويات ويتناول كل مستوى جزء تخصصي في قواعد وأسرار اللغة الانجليزية.</p><p><br></p><p>الفئة المستهدفة:</p><p>كافة الفئات وكل شخص ليس لديه اية خلفية في استخدام اللغة ويرغب بتطوير مهارات اللغة الأساسية.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تساعد الدورة المشاركين على تطوير مهاراتهم العامة بأساسيات وقواعد اللغة الانجليزية وصوتياتها والقدرة على استخدام اللغة بطلاقة.</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>قواعد النطق الصحيح.</li><li>أخطاء شائعة بالنطق للغة الانجليزية.</li><li>قواعد اللغة (النحو).</li><li>صوتيات اللغة.</li><li>كيفية النطق الصحيح.</li><li>محادثات اللغة الانجليزية</li><li>التنغيم والإدغام في اللغة الانجليزية.&nbsp;</li><li>الكلمات معقدة النطق.&nbsp;</li><li>إدارة الحوار والتعبيرات المستخدمة.</li><li>كيفية كتابة المواضيع والمقالات.&nbsp;</li><li>انواع الجمل والبلاغة في الانجليزية.</li></ul><p><br></p><p>&nbsp; مدة الدورة:</p><p>35 ساعة تدريبية لمدة 4 أسابيع.</p><p><br></p><p>&nbsp;التكلفة:</p><p>1100 ريال سعودى.</p><div><br></div>', 1, 950, 1, 1, '2022-02-24 20:24:17', '2022-03-22 14:20:16', 'دورة-لغة-انجليزية-للمبتدئين-الى-الإحتراف'),
(22, 'دورة اللغة الإنجليزية للأعمال', '1726281698216936.jpg', 10, 20, 1, 'ar', 1, 'تكلم الإنجليزية بثقة. وانضم إلى برادا في دورة اللغة الانجليزية للمبتدئين الى الإحتراف.', '<p>.</p>', '<p>صُممت هادي الدورة للراغبين في تحسين وإتقان الانجليزية الشفهية والتحريرية، حيث تحتوي الدورة على ستة مستويات ويتناول كل مستوى جزء تخصصي في قواعد وأسرار اللغة الانجليزية.</p><p><br></p><p>الفئة المستهدفة:</p><p>كافة الفئات وكل شخص ليس لديه اية خلفية في استخدام اللغة ويرغب بتطوير مهارات اللغة الأساسية.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تساعد الدورة المشاركين على تطوير مهاراتهم العامة بأساسيات وقواعد اللغة الانجليزية وصوتياتها والقدرة على استخدام اللغة بطلاقة.</p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>قواعد النطق الصحيح.</p><p>أخطاء شائعة بالنطق للغة الانجليزية.</p><p>قواعد اللغة (النحو).</p><p>صوتيات اللغة.</p><p>كيفية النطق الصحيح.</p><p>محادثات اللغة الانجليزية</p><p>التنغيم والإدغام في اللغة الانجليزية.&nbsp;</p><p>الكلمات معقدة النطق.&nbsp;</p><p>إدارة الحوار والتعبيرات المستخدمة.</p><p>كيفية كتابة المواضيع والمقالات.&nbsp;</p><p>انواع الجمل والبلاغة في الانجليزية.</p><p><br></p><p>&nbsp; مدة الدورة:</p><p>35 ساعة تدريبية لمدة 4 أسابيع.</p><p><br></p><p>&nbsp;التكلفة:</p><p>1100 ريال سعودى.</p><div><br></div>', 1, 800, 1, 1, '2022-02-24 20:31:40', '2022-03-22 14:20:30', 'دورة-اللغة-الإنجليزية-للأعمال'),
(24, 'دورة المحادثة باللغة الانجليزية', '1726281566235293.jpg', 8, 15, 1, 'ar', 1, 'حّسن لغتك الانجليزية على أيدي مجموعة من خبراء التدريس مع أكاديمية برادا.', '<p>.</p>', '<p>صُممت برادا هاد الدورة لتمكين المشاركين من احترافية التحدث باللغة الانجليزية بطلاقة، حيث يتم تناول أهم الموضوعات لاحتراف التواصل مع الناطقين باللغة الانجليزية.</p><p><br></p><p>الفئة المستهدفة:</p><p>كافة الفئات وكل شخص ليس لديه القدرة على التحدث باللغة.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تهدف الدورة الى اكساب المتدربين مهارة الطلاقة اللغوية والتحدث باللغة الانجليزية بطلاقة.&nbsp;</p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>أساسيات المحادثة.</p><p>المواقف الحياتية العادية ( الدعوات – التعرف على الآخرين – الخ ).&nbsp;</p><p>المحادثات الخاصة&nbsp; بالمواقف فى&nbsp; ( المطاعم – المقاهي - الخ ).</p><p>دروس اللغة الإنجليزية للسفر.</p><p>التعابير والعبارات.</p><p>مواضيع خاصة.</p><p>دروس إضافية في اللغة الإنجليزية.</p><p>تكوين الأسئلة.&nbsp;</p><p>أدوات المحادثة.</p><p>مهارات التواصل.</p><p>الشعور في تعلم اللغة.</p><p>التركيز على اللغة المستهدفة.</p><p>قواعد لتعلم اللغة المنطوقة.</p><p>قواعد اللغة والكتابة في دراسة اللغة المنطوقة.</p><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p>20 ساعة لمدة اسبوعين.</p><p><br></p><p>&nbsp;التكلفة:</p><p>500 ريال سعودى.</p><div><br></div>', 1, 850, 1, 1, '2022-02-24 20:36:31', '2022-03-22 14:20:47', 'دورة-المحادثة-باللغة-الانجليزية'),
(25, 'دورة خدمة العملاء', '1726282228323582.jpg', 8, 20, 1, 'ar', 1, 'للتعامل مع العملاء يحتاج إلى نوع من مهارات التواصل بشكل خاص. بالإضافة إلى نسبة من الموهبة المكتسبة والقبول الذاتي. أسس جسور التواصل مع عملائك، وانضم الآن لدورات برادا المعتمدة.', '<p>.</p>', '<p>اُعدت خصيصا لتنمية وتطوير مهارات العاملين فى مجال خدمة العملاء والراغبين فى العمل بالمجال.&nbsp;</p><p>سوف يتمكن المشاركين من ممارسة المهارات اللازمة لموظفي خدمة العملاء ومعرفة مهامها والمعايير التي تحكم مجال خدمة العملاء وكيفية بناء علاقة ناجحة مع العملاء المستهدفين للمنشأة.</p><p><br></p><p>الفئة المستهدفة:</p><p>-المدراء ورجال الأعمال.&nbsp;</p><p>–ممثلي خدمات العملاء والعلاقات العامة.&nbsp;</p><p>-موظفو الاستقبال.</p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>يهدف هادي الدبلوم إلى تعريف المشاركين بأهمية خدمة العملاء واكسابهم المهارات اللازمة للتواصل الفعال مع العملاء ومهارات التعامل مع انماط العملاء المختلفة.&nbsp;</p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مقدمة عن خدمة العملاء.</li><li>أهمية خدمة العملاء.&nbsp;</li><li>أنواع العملاء وأنماطهم.&nbsp;</li><li>إدارة توقعات العملاء.&nbsp;</li><li>مفهوم الخدمة وخصائصها.&nbsp;</li><li>مهارات التواصل الفعال مع العملاء.&nbsp;</li><li>السلوك اللائق مع العملاء.&nbsp;</li><li>فن الرد على اتصالات العملاء.&nbsp;</li><li>التعامل مع شكاوى واستفسارات العملاء.</li><li>التعامل مع العملاء ذوي الطباع الحادة.&nbsp;</li></ul><p><br></p><p>&nbsp; مدة الدورة:</p><p>25 ساعة تدريبية لمدة أسبوعين.</p><p><br></p><p>&nbsp;التكلفة:</p><p>350 ريال سعودى.</p><div><br></div>', 1, 650, 1, 5, '2022-02-24 20:43:44', '2022-03-22 14:21:01', 'دورة-خدمة-العملاء'),
(27, 'دورة التسويق الالكتروني الاحترافي', '1725911550741124.jpg', 8, 15, 1, 'ar', 1, 'الدليل الشامل 2022 في التسويق الإلكتروني والتجارة الإلكترونية لبناء أعمال تجارية ناجحة على الانترنت.', '.', '<p>أعدت أكاديمية برادا الدبلوم&nbsp; لكل الراغبين بالعمل فى مجال التسويق الالكترونى بطريقة تناسب جميع المستويات من المبتدئين حتى الاحتراف. حيث ان الدورة تغطي أهم المحاور المرتبطة بمجال التسويق الالكترونى واكثر&nbsp; مواقع التواصل الاجتماعي شهرة. بالإضافة إلى استراتيجيات التسويق الالكترونى وصولا الى الاحتراف فى هذا المجال.</p><p><br></p><p>الفئة المستهدفة:</p><p>-مسوقي وبائعي المنتجات والخدمات عبر الإنترنت ومواقع التواصل الاجتماعي.</p><p>-رواد الأعمال الراغبين في نمو أعمالهم سواء كانوا أصحاب شركات او مشاريع تجاريه.</p><p>-المستقلين الراغبين في العمل تحت مسمى وظيفي مسوق الكتروني.</p><p>-جميع الأشخاص الراغبين في إطلاق مشروع تجاري ناجح على الإنترنت وتحقيق أرباح شهرية عبر الدروب شيبنج على منصات تجارة الكترونية عربية.</p><p><br></p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>يهدف هادي الدبلوم إلى اكساب المتدربين الطرق وأدوات واستراتيجيات التسويق الالكترونى، وكيفية استخدامها فى تسويق السلع والخدمات. كما تمكنهم من عمل خطط تسويقية تتناسب مع المنتجات والخدمات.</p><p><br></p><p><br></p><p>محتوى البرنامج التدريبي:</p><ul><li>مفهوم التسويق الالكتروني.</li><li>أهداف ومميزات وعيوب التسويق الالكترونى.&nbsp;</li><li>استراتيجيات، مراحل التسويق الالكترونى.&nbsp;</li><li>منصات الاعلانات الممولة.</li><li>التسويق الاحترافى بالمحتوى.&nbsp;</li><li>خطة التسويق بالمحتوى.&nbsp;</li><li>التسويق بالبريد الالكترونى.&nbsp;</li><li>التسويق عبر الهاتف.&nbsp;</li><li>التسويق وبناء الهوية والصورة الذهنية.</li><li>استراتيجيات&nbsp; seo&nbsp; للمواقع.&nbsp;</li><li>استراتيجيات&nbsp; sem - google ad.&nbsp;</li><li>تسريع النمو.</li></ul><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p>20 ساعة تدريبية لمدة أسبوعين.</p><p><br></p><p><br></p><p>&nbsp;التكلفة:</p><p>600 ريال سعودى.</p><div><br></div>', 1, 1200, 1, 6, '2022-02-27 17:25:18', '2022-03-22 14:21:15', 'دورة-التسويق-الالكتروني-الاحترافي'),
(28, 'دورة ادارة الغضب', '1726281302862530.jpg', 3, 10, 1, 'ar', 1, 'مساق تدريبي لتعلم فن إدارة الغضب. كيفية التحكم في الغضب وفهم الأسباب النفسية وكيفية التعامل معه لتقليل آثاره. وكيفية استخدام تقنيات تأمل الاسترخاء للتعامل مع حالات الغضب والسيطرة عليها.', '<p>.</p>', '<p>دورة تدريبية تم اعدادها للمشاركين لاكسابهم القدرة على التحكم الانفعالي لديهم حيث يتم اكساب المتدربين مهارات ادارة الغضب والتحكم فيه بنجاح.&nbsp;</p><p><br></p><p>الفئة المستهدفة:</p><p>-موظفي السكرتارية والعلاقات العامة ومدراء المكاتب.</p><p>-كل من يتطلب عمله إدارة الوقت جيدا والتعامل مع عملاء.</p><p>-الوظائف التي لها احتكاك مستمر مع المدراء والمشرفين.&nbsp;</p><p><br></p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>اكساب المتدربين المشاركين على فهم الغضب ومراحله وأسبابه النفسية، والطرق الحديثة للتعامل معه.</p><p><br></p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>مفهوم الغضب ودرجاته.</p><p>أسباب الغضب ومظاهره.&nbsp;</p><p>أسباب الغضب فى الحوار وكيفية اجتنابه.</p><p>مهارات الحوار البناء والتفاوض.&nbsp;</p><p>طرق امتصاص غضب الآخرين.&nbsp;</p><p>الأساليب الحكيمة للسيطرة على الغضب.&nbsp;</p><p>فوائد السيطرة على الغضب.</p><p><br></p><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p>5 ساعات بواقع يومين.</p><p><br></p><p><br></p><p>&nbsp;التكلفة:</p><p>200 ريال سعودى.</p><p><br></p>', 1, 350, 1, 7, '2022-02-27 17:26:41', '2022-03-22 14:21:31', 'دورة-ادارة-الغضب'),
(29, 'دورة إدارة الوقت', '1726281345307268.jpg', 5, 10, 1, 'ar', 1, 'استغلال الوقت وتنظيمه وكيفية القيام بمهام أكثر في وقت أقل مما سيوفر وقت للراحة أو الجلوس مع العائلة.', '<p>.</p>', '<p>دورة تدريبية تم اعدادها لاكساب المتدربين أدوات إدارية فعالة فى مجال إدارة الوقت بكفاءة وفاعلية.</p><p><br></p><p><br></p><p>الفئة المستهدفة:</p><p>-الراغبين في التطوير الذاتي واكتساب مهارات جديدة.</p><p>-الراغبين في النجاح وتحقيق أفضل استفادة لوقتهم.</p><p><br></p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>تهدف الدورة الى تحديد وصياغة الأهداف الشخصية وتحديد الأولويات وإنجازها و التركيز عليها&gt;</p><p><br></p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>مفهوم إدارة الوقت وأهمية إدارته.&nbsp;</p><p>طرق ووسائل تنظيم الوقت.</p><p>تحديد الأولويات.&nbsp;</p><p>المهارات اللازمة التي تساعد في إدارة الوقت.&nbsp;</p><p>معوقات تنظيم الوقت.</p><p><br></p><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p>6 ساعات لمدة ثلاث ايام.</p><p><br></p><p><br></p><p>&nbsp;التكلفة:</p><p>400 ريال سعودى.</p>', 1, 350, 1, 7, '2022-02-27 17:28:05', '2022-03-22 14:21:45', 'دورة-إدارة-الوقت'),
(30, 'دورة كتابة المقال', '1726282977084428.jpg', 5, 10, 1, 'ar', 1, 'تعليم أساسيات كتابة فن المقال الصحفي وكيفية التقاط الأفكار وتحويل الأحداث والوقائع من مستوى التصور الذهني والمشاهدة البصرية إلى لغة مكتوبة.', '<p>.</p>', '<p>تمكين المتدرب وتنمية مهاراته في كتابة المقال والتعرف على الأسس الصحيحة في الكتابة.</p><p><br></p><p><br></p><p>الفئة المستهدفة:</p><p>-&nbsp; الكتّاب.</p><p>-&nbsp; الكتّاب الجدد.</p><p>-&nbsp; طلاب الإعلام .</p><p>-&nbsp; المهتمين بالكتابة في الصحف من منسوبي أقسام وإدارات الإعلام في الجهات المختلفة.</p><p>-&nbsp; كل من لديه الرغبة لتعلم هذا الفن.</p><p><br></p><p><br></p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>-التعرف على القواعد الأساسية لكتابة المقال الصحفي.</p><p>-كيفية انتقاء المصادر وكيفية الاستفادة منهم.</p><p>-الكشف عن النقاط الخفية لإعداد مقالات صحفية حولها.</p><p><br></p><p><br></p><p><br></p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>أن يدرك المتدرب قيمة المقال بين الفنون الصحفية وأهميته بالنسبة للكاتب والوسيلة والقارئ.</p><p>&nbsp;وظائف المقال وعناصره.</p><p>&nbsp;أقسام وأنواع المقال.</p><p>&nbsp;هيكل المقال.</p><p>تنظيم الأفكار وترتيب المفردات وتجويد الكتابة وصناعة المقال بدقة وتكامل.</p><p>&nbsp;اكتساب المتدرب قدرات ومهارات كتابة المقال وجعله كاتبا مؤثرا في المتلقي.</p><p>&nbsp;تطبيق عملي لكتابة المقال وتصحيح الأخطاء.</p><p><br></p><p><br></p><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p><br></p><p><br></p><p><br></p><p>&nbsp;التكلفة:</p><div><br></div>', 1, 400, 1, 9, '2022-02-27 17:29:18', '2022-03-22 14:21:59', 'دورة-كتابة-المقال'),
(31, 'دورة الصحافة والإعلام', '1726282511187587.jpg', 10, 25, 1, 'ar', 1, 'دبلوم مهني يهدف إلى تدريب المشاركين على اكتساب المهارات اللازمة للعمل في مجال الصحافة والإعلام.', '<p>.</p>', '<p>تطوير القدرات المهارية والمعرفية المتخصصة لممثلي الجهات الرسمية والخاصة وقادتها الذين يواجهون وسائل الإعلام مباشرة، وتأهيلهم ليكونوا متحدثين رسميين محترفين.&nbsp;</p><p>&nbsp;</p><p><br></p><p>الفئة المستهدفة:</p><p>-القيادات في القطاع الخاص و العام .</p><p>- مدراء المؤسسات الذين يتعرضون لمواجهة وسائل الإعلام.</p><p>- المتحدثون الرسميون .</p><p>- مدراء العلاقات العامة والإعلام .</p><p>- كافة المرشحين لشغل المناصب السابقة.&nbsp;</p><p><br></p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>اكتساب مهارات العمل في مجال الصحافة والإعلام، وتوفير المعرفة والمهارات اللازمة للطلاب المشاركين وتدريبهم على إعداد التقارير الصحفية وتصوير التقارير الإخبارية وإعداد محتوى البرامج التلفزيونية.</p><p><br></p><p><br></p><p><br></p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>-<span style=\"white-space:pre\">	</span>المهارات الشخصية للمتحدث الإعلامي.</p><p>-<span style=\"white-space:pre\">	</span>مهارات الإعداد للظهور الإعلامي.</p><p>-<span style=\"white-space:pre\">	</span>مهارات الحوار مع الإعلام (الصحافة، الإذاعة، التلفزيون).</p><p>-<span style=\"white-space:pre\">	</span>.مهارات التعامل مع مقدمي البرامج في المقابلات الشخصية.</p><p>-<span style=\"white-space:pre\">	</span>.مهارات المداخلات الهاتفية وفن إيصال الرسالة.</p><p>-<span style=\"white-space:pre\">	</span>كيف تقود المؤتمرات الصحفية وتنجح في كسب الإعلام؟</p><p>-<span style=\"white-space:pre\">	</span>مهارات لغة الجسد وتأثيرها في الظهور الإعلامي.</p><p>-<span style=\"white-space:pre\">	</span>مهارات إعداد البيان الإعلامي.</p><p>-<span style=\"white-space:pre\">	</span>مهارات التعامل مع الأزمات الإعلامية.</p><p>-<span style=\"white-space:pre\">	</span>مهارات تسويق الإنجازات.</p><p><br></p><p><br></p><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p><br></p><p><br></p><p><br></p><p>&nbsp;التكلفة:</p><p><br></p><p><br></p>', 1, 1100, 1, 9, '2022-02-27 17:30:29', '2022-03-22 14:22:14', 'دورة-الصحافة-والإعلام'),
(32, 'دورة الإعلام الجديد', '1726281386343925.jpg', 5, 15, 1, 'ar', 1, 'تنمية مهارات المشاركين في استخدام وسائل الإعلام الجديد الاستخدام الإيجابي الذي يخدم التوجهات المنشودة على مستوى الدولة أو المؤسسات، والتفاعل معه ومعرفة دوره في نشر الوعي المنظم', '<p>.</p>', '<p>تسليط الضوء على مفاهيم الإعلام الجديد وتنمية مهارات وقدرات المتدرب على كيفية إدارة القنوات الإلكترونية وصناعة المحتوى في الإعلام الجديد.</p><p>&nbsp;</p><p><br></p><p>الفئة المستهدفة:</p><p>- العاملون في إدارات النشر الإعلامي أو إدارات الإعلام الجديد في المنظمات الحكومية والخاصة.</p><p>- الراغبين بالالتحاق في هذا المجال وتطوير مهاراتهم.</p><p><br></p><p><br></p><p>كيف يستفيد المُشارك من الدورة:</p><p>-التعرف على مفهوم الإعلام الجديد وأهم أشكاله وأنواعه.</p><p>-تحديد أسس ومنطلقات تواجد المنظمة في الإعلام الجديد.</p><p>-التعرف على الخطوات الأساسية لبناء إدارة الإعلام الجديد.</p><p><br></p><p><br></p><p><br></p><p><br></p><p>محتوى البرنامج التدريبي:</p><p>- ما الإعلام الجديد؟</p><p>- ما الجديد في الإعلام الجديد؟</p><p>- الإعلام الجديد أسلوب حياة.</p><p>-استراتيجية التطبيق في المنظمات.</p><p>- كيف تدير شبكات التواصل الاجتماعي.</p><p>- التسويق في الإعلام الجديد.</p><p>- صناعة المحتوى في الإعلام الجديد.</p><p>- تقنيات ووسائل طرق الانتشار.</p><p><br></p><p><br></p><p>&nbsp; مدة الدورة:</p><p><br></p><p><br></p><p><br></p><p>&nbsp;التكلفة:</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>الأقسام:</p><p><br></p><p>-الشهادات:</p><p><br></p><p>-الخبراء:</p><div><br></div><div><br></div>', 1, 700, 1, 9, '2022-02-27 17:32:01', '2022-03-22 14:22:30', 'دورة-الإعلام-الجديد');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialty` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `cert_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `title`, `description`, `image`, `specialty`, `education`, `experience`, `birthday`, `cert_no`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'محمد ايمن', 'hatemfaysil16@gmail.com', 'مدرب انجليزي', 'مدرب انجليزي&nbsp;مدرب انجليزي&nbsp;مدرب انجليزي', '1724741700352852.jpg', '<span style=\"font-size: 13.3px;\">مدرب انجليزي&nbsp;مدرب انجليزي&nbsp;مدرب انجليزي</span>', '<span style=\"font-size: 13.3px;\">مدرب انجليزي&nbsp;مدرب انجليزي&nbsp;مدرب انجليزي</span>', '<span style=\"font-size: 13.3px;\">مدرب انجليزي&nbsp;مدرب انجليزي&nbsp;مدرب انجليزي</span>', '2021-12-30', '<span style=\"font-size: 13.3px;\">مدرب انجليزي&nbsp;مدرب انجليزي&nbsp;مدرب انجليزي</span>', NULL, '2021-12-30 16:47:22', '2022-02-14 19:31:02'),
(2, 'صضث صضث', 'hatemfay22sil16@gmail.com', 'ضص صضث', 'صضث صض ث', '1725992610642583.png', 'صضث&nbsp; صضث', 'صضث&nbsp; صضث', '&nbsp;صضثصض&nbsp; صضثصض ث', '2022-02-02', '<p>رب</p>', NULL, '2022-02-28 14:53:43', '2022-02-28 14:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `mail_creates`
--

CREATE TABLE `mail_creates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mail_creates`
--

INSERT INTO `mail_creates` (`id`, `users`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'hello is world', 'hello is worldhello is worldhello is worldhello is worldhello is worldhello is worldhello is worldhello is world', '2022-02-06 18:31:53', '2022-02-06 18:31:53'),
(2, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqe', '2022-02-06 18:32:52', '2022-02-06 18:32:52'),
(3, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqe wqe', '2022-02-06 18:33:42', '2022-02-06 18:33:42'),
(4, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'bad 12345678910', 'wq ewqe', '2022-02-06 18:34:32', '2022-02-06 18:34:32'),
(5, '[\"hatemfaysil16@gmail.com\"]', 'Tamen quem nulla quae legam', 'ewq wqe', '2022-02-06 18:35:21', '2022-02-06 18:35:21'),
(6, '[\"hatemfaysil16@gmail.com\"]', 'Tamen quem nulla quae legam', 'ewq wqe', '2022-02-06 18:39:23', '2022-02-06 18:39:23'),
(7, '[\"hatemfaysil16@gmail.com\"]', 'Tamen quem nulla quae legam', 'ewq wqe', '2022-02-06 18:39:54', '2022-02-06 18:39:54'),
(8, '[\"hatemfaysil16@gmail.com\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wew q', '2022-02-06 18:40:51', '2022-02-06 18:40:51'),
(9, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'we qwe', '2022-02-06 18:43:43', '2022-02-06 18:43:43'),
(10, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wewe', '2022-02-06 18:45:53', '2022-02-06 18:45:53'),
(11, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'bad 12345678910', 'wewqe', '2022-02-06 18:47:18', '2022-02-06 18:47:18'),
(12, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'w eew', '2022-02-06 18:48:35', '2022-02-06 18:48:35'),
(13, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wewe', '2022-02-06 18:48:58', '2022-02-06 18:48:58'),
(14, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'w qewq', '2022-02-06 18:51:18', '2022-02-06 18:51:18'),
(15, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wewe', '2022-02-06 18:52:23', '2022-02-06 18:52:23'),
(16, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqe wqe', '2022-02-06 18:54:40', '2022-02-06 18:54:40'),
(17, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqe', '2022-02-06 18:55:54', '2022-02-06 18:55:54'),
(18, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqwq we', '2022-02-06 18:56:39', '2022-02-06 18:56:39'),
(19, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqewqewqe wqe', '2022-02-06 18:58:36', '2022-02-06 18:58:36'),
(20, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqe  wqe', '2022-02-06 19:01:36', '2022-02-06 19:01:36'),
(21, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'we wqe wqe', '2022-02-06 19:02:34', '2022-02-06 19:02:34'),
(22, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe weq', '2022-02-06 19:03:45', '2022-02-06 19:03:45'),
(23, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\"]', 'is brada is good', 'is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good is brada is good', '2022-02-06 19:46:37', '2022-02-06 19:46:37'),
(24, '[\"hatemfaysil16@gmail.com\",\"hatemfaysil16@yahoo.com\"]', 'Tamen quem nulla quae legam', 'wqe wqewq ee wqwqe', '2022-02-28 18:54:04', '2022-02-28 18:54:04'),
(25, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\",\"everodo2@mail.ru\",\"ka.e.em.c.coy1.997@gmail.com\",\"aymna16@gmail.com\",\"a.mekkawy@mggroup-eg.com\",\"officialahmadrayess@gmail.com\",\"hatemfa213213ysil16@gmail.com\",\"hatemf213213aysil16@gmail.com\"]', 'wewqe  we we wqewqe e wqe', 'wqe wqeweq ewqewqe', '2022-02-28 18:54:35', '2022-02-28 18:54:35'),
(26, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\",\"everodo2@mail.ru\",\"ka.e.em.c.coy1.997@gmail.com\",\"aymna16@gmail.com\",\"a.mekkawy@mggroup-eg.com\",\"officialahmadrayess@gmail.com\",\"hatemfa213213ysil16@gmail.com\",\"hatemf213213aysil16@gmail.com\"]', 'Tamen quem nulla quae legam', 'ص ض صضث222', '2022-02-28 18:55:46', '2022-02-28 18:55:46'),
(27, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\",\"everodo2@mail.ru\",\"ka.e.em.c.coy1.997@gmail.com\",\"aymna16@gmail.com\",\"a.mekkawy@mggroup-eg.com\",\"officialahmadrayess@gmail.com\",\"hatemfa213213ysil16@gmail.com\",\"hatemf213213aysil16@gmail.com\"]', 'Tamen quem nulla quae legam', 'ص ث صث', '2022-02-28 18:55:59', '2022-02-28 18:55:59'),
(28, '[\"admin@gmail.com\",\"hatemfaysil16@gmail.com\",\"sadsa@sadsa.saddsasda\",\"hatemfaysil16@yahoo.com\",\"everodo2@mail.ru\",\"ka.e.em.c.coy1.997@gmail.com\",\"aymna16@gmail.com\",\"a.mekkawy@mggroup-eg.com\",\"officialahmadrayess@gmail.com\",\"hatemfa213213ysil16@gmail.com\",\"hatemf213213aysil16@gmail.com\",\"hate2323mfaysil16@gmail.com\",\"hatemfay4434sil16@gmail.com\",\"hatem2132faysil16@gmail.com\",\"hatewewmfaysil16@gmail.com\",\"hatemfaysil2322116@gmail.com\"]', 'wqewe', 'wqe w wq', '2022-03-17 16:44:39', '2022-03-17 16:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `media_centers`
--

CREATE TABLE `media_centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_home` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_centers`
--

INSERT INTO `media_centers` (`id`, `title`, `description`, `body`, `image`, `youtube`, `video`, `in_home`, `active`, `created_at`, `updated_at`) VALUES
(2, 'المركز الإعلامي', 'نبذة مختصرة عن القناة', '<p><span style=\"color: rgb(33, 37, 41); font-family: Tajawal, Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">نبذة مختصرة عن القناة<span> <br></span></span></p>', NULL, 'https://www.youtube.com/embed/pKyN_d3jngQ', NULL, 1, 1, '2022-02-14 20:38:48', '2022-02-14 20:38:48');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_07_081820_create_admins_table', 1),
(6, '2021_12_11_084716_create_permission_tables', 1),
(7, '2021_12_11_180050_create_albums_table', 1),
(10, '2021_12_13_083848_create_instructors_table', 1),
(11, '2021_12_16_123626_create_categories_table', 1),
(12, '2021_12_16_134515_create_courses_table', 1),
(13, '2021_12_17_082926_create_certificates_table', 1),
(14, '2021_12_21_095512_create_contacts_table', 1),
(15, '2021_12_26_100442_create_settings_table', 1),
(16, '2022_01_09_091427_create_serves_table', 2),
(17, '2022_01_11_111308_create_media_centers_table', 2),
(18, '2022_01_13_083055_create_users_favorites_table', 2),
(19, '2022_01_13_145540_create_users_courses_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `online_zooms`
--

CREATE TABLE `online_zooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'minutes',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meeting password',
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_id` bigint(20) UNSIGNED NOT NULL,
  `integration` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_zooms`
--

INSERT INTO `online_zooms` (`id`, `user_id`, `meeting_id`, `topic`, `start_at`, `duration`, `password`, `start_url`, `join_url`, `courses_id`, `integration`, `created_at`, `updated_at`) VALUES
(1, 1, '87892956307', 'wefewe', '2022-03-05 14:17:00', 22, '4CpMqk', 'https://us05web.zoom.us/s/87892956307?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6ImIyakFXbTdUU05tR01FNlVJd01jeWciLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4Nzg5Mjk1NjMwNyIsImV4cCI6MTY0NjYxMjEwMSwiaWF0IjoxNjQ2NjA0OTAxLCJhaWQiOiI2U0NlNVpJeFRUT1pLdE1VdmxhdnpRIiwiY2lkIjoiIn0.GzDJ3PAkCEKEEBrrR1ayVLeBvsU_OYicDfi3JlP2GdI', 'https://us05web.zoom.us/j/87892956307?pwd=WmtJei9ZdTA1b1gwS2dEeW5WT2c4Zz09', 6, 1, '2022-03-07 05:15:01', '2022-03-07 05:15:01'),
(2, 1, '81436224974', '22', '2022-03-01 14:19:00', 22, '04m4WM', 'https://us05web.zoom.us/s/81436224974?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6ImIyakFXbTdUU05tR01FNlVJd01jeWciLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MTQzNjIyNDk3NCIsImV4cCI6MTY0NjYxMjM3MSwiaWF0IjoxNjQ2NjA1MTcxLCJhaWQiOiI2U0NlNVpJeFRUT1pLdE1VdmxhdnpRIiwiY2lkIjoiIn0.CWd00-3qt_w1WYN_F3dW1JADlcxQUwrZLi2wGcVFZ08', 'https://us05web.zoom.us/j/81436224974?pwd=OU9PZHhBUW1sdWE1UjR3VWFlU1R5dz09', 7, 1, '2022-03-07 05:19:32', '2022-03-07 05:19:32');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2021-12-29 12:42:16', '2021-12-29 12:42:16'),
(2, 'role-create', 'web', '2021-12-29 12:42:16', '2021-12-29 12:42:16'),
(3, 'role-edit', 'web', '2021-12-29 12:42:16', '2021-12-29 12:42:16'),
(4, 'role-delete', 'web', '2021-12-29 12:42:16', '2021-12-29 12:42:16'),
(5, 'اضافة صلاحية', 'web', '2021-12-29 12:42:16', '2021-12-29 12:42:16'),
(6, 'عرض صلاحية', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(7, 'تعديل صلاحية', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(8, 'حذف صلاحية', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(9, 'قائمة الفواتير', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(10, 'عرض الفواتير', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(11, 'اضافة فاتورة جديدة', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(12, 'الإعدادات', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(13, 'الاقسام', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(14, 'المنتجات', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(15, 'المستخدمين', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(16, 'صلاحيات المستخدمين', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(17, 'قائمة المستخدمين', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(18, 'اضافة مستخدم', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(19, 'تعديل مستخدم', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(20, 'حذف مستخدم', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(21, 'buy', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(22, 'sell', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17'),
(23, 'expenses', 'web', '2021-12-29 12:42:17', '2021-12-29 12:42:17');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Instructor', 'web', '2021-12-29 12:42:18', '2022-02-20 15:19:45'),
(2, 'Student', 'web', '2022-01-03 21:57:15', '2022-02-20 15:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(10, 2),
(17, 2),
(18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `serves`
--

CREATE TABLE `serves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'contact_phone', '966582258581+', '2021-12-29 12:42:44', '2022-03-22 20:59:51'),
(2, 'email', 'info@brada-ac.com', '2021-12-29 12:42:44', '2022-01-18 17:38:34'),
(3, 'location', 'الرياض - حى السليمانية - شارع الكتاب - المملكة العربية السعودية', '2021-12-29 12:42:44', '2022-03-09 16:19:49'),
(4, 'facebook', 'https://www.facebook.com/Brada.training', '2021-12-29 12:42:44', '2022-03-09 19:51:56'),
(5, 'instagram', 'https://www.instagram.com/bradatraining/', '2021-12-29 12:42:44', '2022-02-17 22:00:16'),
(6, 'twitter', 'https://twitter.com/BradaTraining', '2021-12-29 12:42:44', '2022-02-17 21:52:46'),
(7, 'youtube', 'https://www.youtube.com/channel/UCyykFRbRDnPS3p8GpWouaxg', '2021-12-29 12:42:44', '2022-02-17 22:03:58'),
(8, 'snapchat', 'https://www.snapchat.com/add/bradatraining', '2021-12-29 12:42:44', '2022-02-17 22:07:21'),
(9, 'linkedin', 'https://www.linkedin.com/in/brada-training-168069232', '2022-02-17 22:20:29', '2022-02-17 22:21:43'),
(10, 'whatsapp', '966582258581', '2022-02-17 22:41:02', '2022-02-17 22:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$10$A5JsaLxmn4hUSslJVsVwXuQLbmULAloJmsqfq6qP52Rw3bH/fKnby', NULL, '2021-12-29 12:42:18', '2021-12-29 12:42:18'),
(2, 'hatem', 'hatemfaysil16@gmail.com', NULL, NULL, '$2y$10$nnXoGGuupWbQlgpuPozAE./J4tAcKacD6gvibktn7KwjLQ3E9wQlu', NULL, '2022-01-03 21:58:11', '2022-02-06 18:30:50'),
(3, 'as s adsa', 'sadsa@sadsa.saddsasda', NULL, NULL, '$2y$10$c6SXIaXUejFWdbk7DyLro.iVdN3cbrawskIo2Xb92bgLusvobpcIq', NULL, '2022-01-11 07:03:19', '2022-01-11 07:03:19'),
(4, 'hatem', 'hatemfaysil16@yahoo.com', NULL, NULL, '$2y$10$P.qV1xZ6md39Sf9i1oPNG.AVQu2iWp5RThFqz/Asm0Zamq3ZnxXpW', NULL, '2022-02-06 18:31:19', '2022-02-06 18:31:19'),
(5, 'Wir empfehlen Ihnen Wem:brada-ac.com https://audi.com', 'everodo2@mail.ru', NULL, NULL, '$2y$10$r6.1LaXB4/ESQUIpuGEC.OWzsNLG5r5gulfLKlPrGp108DbFltp7O', NULL, '2022-02-09 22:37:29', '2022-02-09 22:37:29'),
(6, 'RickySok', 'ka.e.em.c.coy1.997@gmail.com', NULL, NULL, '$2y$10$bmM00c6iHbX/WRqdc0Bwb.XHhE6eIqLEbmyiE6uWIUFA9RMGBrjqG', NULL, '2022-02-12 13:30:51', '2022-02-12 13:30:51'),
(7, 'hatem', 'aymna16@gmail.com', NULL, NULL, '$2y$10$/pG2v7Qu3QYvaCQ60Z46/OHUVEHbAPeBjvykBGHclKWwlkdNaeAh6', NULL, '2022-02-14 21:22:31', '2022-02-14 21:22:31'),
(8, 'Ahmed Mikkawe', 'a.mekkawy@mggroup-eg.com', NULL, NULL, '$2y$10$sumtwhpjTfQXQHFJy4Sa3Of1sgvACduJ/SuVvINePsM/47dMo/Ory', NULL, '2022-02-15 20:21:27', '2022-02-15 20:21:27'),
(9, 'Ahmad Rayess', 'officialahmadrayess@gmail.com', NULL, NULL, '$2y$10$rVnIP66/WMy7N/ml.VGWqOaO3UYdAX6PDCePidfkQyGbUCoGbmx3W', NULL, '2022-02-24 15:19:45', '2022-02-24 15:19:45'),
(10, 'wq rwqwqe wqe', 'hatemfa213213ysil16@gmail.com', NULL, NULL, '$2y$10$fONxwCto/Opybt2FoFfJW.cg8jc9xZxhYI6ZnCwgUtlSlKVkQJTZ2', NULL, '2022-02-28 14:13:30', '2022-02-28 14:15:04'),
(11, 'adm234234in@yahoo.com', 'hatemf213213aysil16@gmail.com', NULL, NULL, '$2y$10$JeLy//kTmXFrzPVuwziYdOFifrGpO2rkJ9MYxoF0X3a8dgheZYh4m', NULL, '2022-02-28 14:15:24', '2022-02-28 14:23:37'),
(12, 'Hatem', 'hate2323mfaysil16@gmail.com', NULL, NULL, '$2y$10$9kC0i3fm5Q3n7F.G6e0mleCo5dGc6jurDlknjeh1GKAAVqdjnA3Zm', NULL, '2022-03-01 19:15:34', '2022-03-01 19:15:34'),
(13, 'Hatem', 'hatemfay4434sil16@gmail.com', '+201123694440', NULL, '$2y$10$aH5haajxnWnFrStMvHAJ/.qF1HPlBBgdo3fCuchEuwAfmuL8j/5WG', NULL, '2022-03-01 19:25:03', '2022-03-01 19:25:03'),
(14, 'Hatem', 'hatem2132faysil16@gmail.com', '+201123694440', NULL, '$2y$10$UInT9YgjQsrNilAZ.bGzpOzHKR6JOiz.pvZ.2lwvwg84er8Rc4pR2', NULL, '2022-03-01 19:30:40', '2022-03-01 19:30:40'),
(15, 'Hatem', 'hatewewmfaysil16@gmail.com', NULL, NULL, '$2y$10$hKBtflfej2UHy383D2eytOtC6zCcga3y2.igu2zc4tpRQsMWYEIPG', NULL, '2022-03-10 18:48:04', '2022-03-10 18:48:04'),
(16, 'Hatem', 'hatemfaysil2322116@gmail.com', '+201123694440', NULL, '$2y$10$IZ6SsYypVDVmk00heHO.DOpXjNchjlQQawtn/BpV6jUBi5s1aDTxm', NULL, '2022-03-10 18:48:29', '2022-03-10 18:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `users_courses`
--

CREATE TABLE `users_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `courses_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_courses`
--

INSERT INTO `users_courses` (`id`, `user_id`, `courses_id`, `active`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(7, 12, 22, 0, '2022-03-01', '2022-03-01', NULL, NULL),
(8, 12, 6, 0, '2022-03-01', '2022-03-01', NULL, NULL),
(9, 2, 6, 1, '2022-03-09', '2022-04-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_favorites`
--

CREATE TABLE `users_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `courses_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_courses_id_foreign` (`courses_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactwith_courses`
--
ALTER TABLE `contactwith_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`),
  ADD KEY `courses_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_user_id_foreign` (`user_id`);

--
-- Indexes for table `mail_creates`
--
ALTER TABLE `mail_creates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_centers`
--
ALTER TABLE `media_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `online_zooms`
--
ALTER TABLE `online_zooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_zooms_user_id_foreign` (`user_id`),
  ADD KEY `online_zooms_courses_id_foreign` (`courses_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `serves`
--
ALTER TABLE `serves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_courses`
--
ALTER TABLE `users_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_favorites`
--
ALTER TABLE `users_favorites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contactwith_courses`
--
ALTER TABLE `contactwith_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mail_creates`
--
ALTER TABLE `mail_creates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `media_centers`
--
ALTER TABLE `media_centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `online_zooms`
--
ALTER TABLE `online_zooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `serves`
--
ALTER TABLE `serves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_courses`
--
ALTER TABLE `users_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_favorites`
--
ALTER TABLE `users_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_courses_id_foreign` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_zooms`
--
ALTER TABLE `online_zooms`
  ADD CONSTRAINT `online_zooms_courses_id_foreign` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_zooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
