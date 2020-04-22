-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: אפריל 22, 2020 בזמן 04:05 PM
-- גרסת שרת: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mefath5_mefathim`
--

--
-- הוצאת מידע עבור טבלה `friends`
--

INSERT INTO `friends` (`friend1`, `friend2`, `data_friendship`, `status`) VALUES
(1, 66, '2020-04-22 14:37:14', 2),
(2, 66, '2020-04-22 14:39:19', 2),
(66, 4, '2020-04-22 14:42:19', 1),
(66, 6, '2020-04-22 14:42:20', 1);

--
-- הוצאת מידע עבור טבלה `hidden_posts`
--

INSERT INTO `hidden_posts` (`pid`, `uid`) VALUES
(155, 66),
(151, 66);

--
-- הוצאת מידע עבור טבלה `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_text`, `write_time`, `status`) VALUES
(112, 20, 'hgvhgvhj', '2020-02-24 17:59:18', 0),
(113, 20, 'uygvhjb', '2020-02-24 17:59:22', 0),
(114, 20, '114', '2020-02-24 17:59:45', 0),
(115, 20, '3', '2020-02-24 18:35:41', 0),
(116, 20, '333333333333333333333333333333333333333333333', '2020-02-24 18:36:08', 0),
(117, 20, 'gjfdglifdj\ndfgdfgl\ndgfdkg;\ndfglkdjnglkfdgvx\nf;lm;fdg,\ndsf\nsfdmjgord', '2020-02-24 18:36:20', 0),
(118, 20, '234324322', '2020-02-24 20:09:50', 0),
(119, 20, '123', '2020-02-24 20:52:21', 0),
(120, 20, '1234', '2020-02-24 20:54:12', 0),
(121, 20, '117', '2020-02-24 22:23:40', 0),
(122, 20, 'cfchctj', '2020-02-25 19:31:10', 0),
(123, 20, 'fkytgy iuhkuhk', '2020-02-25 19:31:38', 0),
(124, 20, 'fdsfs', '2020-02-25 19:42:49', 0),
(125, 20, 'fffvyvm', '2020-02-25 21:21:35', 0),
(126, 20, 'giuiuiu', '2020-02-25 22:05:40', 0),
(127, 20, 'ssskj145', '2020-02-25 22:15:22', 0),
(128, 20, '2', '2020-02-25 22:15:30', 0),
(129, 20, '3', '2020-02-25 22:15:42', 0),
(130, 20, '123', '2020-02-26 09:29:52', 0),
(131, 20, ' .לוקחיםמחרוזת טקסט (כמו בדוגמה:passworD)ומשתמשי\nםבמתודהtest,שקיימת באופן אוטומטי בכל ביטוי רגולרי,על מחרוזת הטקסט הזו . המתודה מחזירהtrueאם המחרוזת', '2020-02-26 09:31:05', 0),
(132, 6, 'rstrdtrszhft', '2020-02-26 10:06:01', 1),
(133, 20, 'רגאררג567', '2020-02-26 10:38:41', 0),
(134, 20, 'jj', '2020-03-08 10:50:50', 0),
(135, 20, 'er', '2020-03-08 11:24:23', 0),
(136, 20, 'ww', '2020-03-08 12:44:15', 0),
(137, 20, 'asdsa', '2020-03-08 12:44:29', 0),
(138, 20, 'dassd', '2020-03-08 12:44:40', 0),
(139, 20, 'dafsf', '2020-03-08 12:45:38', 0),
(140, 20, 'sfsf', '2020-03-08 12:45:41', 0),
(141, 20, 'rdlhfdoghiufdsoid', '2020-03-08 12:46:24', 0),
(142, 20, 'd', '2020-03-08 12:46:59', 0),
(143, 20, 's', '2020-03-08 12:47:21', 0),
(144, 20, 'sdds', '2020-03-08 12:47:58', 0),
(145, 20, 'fddsgadfdsgs', '2020-03-08 12:48:02', 0),
(146, 20, 'sd', '2020-03-08 12:50:07', 0),
(147, 20, 'כגדכגדכד', '2020-03-08 12:54:10', 0),
(148, 20, 'גדש', '2020-03-08 12:54:49', 0),
(149, 20, '12', '2020-03-15 13:55:53', 0),
(150, 20, '21213213213', '2020-03-15 13:56:08', 1),
(151, 20, '132132131', '2020-03-15 13:56:14', 1),
(152, 20, '23222', '2020-03-15 13:56:19', 0),
(153, 20, '123f4563', '2020-03-15 13:56:31', 0),
(154, 20, 'ימחק לאלתר', '2020-03-17 21:50:23', 0),
(155, 20, '12', '2020-03-18 00:43:31', 1),
(156, 66, 'דדד', '2020-03-18 16:54:38', 1),
(157, 66, 'קורונה', '2020-03-18 16:59:11', 0),
(158, 66, 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/QgrcJHshZXBCnhfMnmWVDtfndNnxtWlmKZQ', '2020-03-18 17:02:52', 0),
(159, 66, 'http://localhost/mefathim/home_page.html', '2020-03-18 22:21:57', 0),
(160, 66, 'https://google.com\nhttp://localhost/mefathim/home_page.html', '2020-03-18 22:22:27', 0),
(164, 66, '<b>vv<b>\ns*dgfsd*', '2020-03-22 14:02:30', 0),
(165, 66, 'ewefgc<  <\n&gt', '2020-03-22 14:03:17', 0),
(166, 66, '<h1>\nadsfsf\n</h1>', '2020-03-23 23:15:51', 0),
(167, 66, '<h1>cfccf</h1>\nhttps://regexr.com/\nhttps://www.google.com/search?newwindow=1&safe=active&sxsrf=ALeKk03r1XgUT-fgG3aLdwhR0nNFH0scRA%3A1584916448144&ei=4Od3XuetCInTsAepkrPIAw&q=how+to+replace+char+in+string+java+by+regex&oq=how+to+replace+char+in+string+java+by+regex&gs_l=psy-ab.3..33i22i29i30l2.80603763.80634035..80634699...3.2..4.222.5487.0j34j1......0....1..gws-wiz.....10..0i71j35i39j0i22i30j35i362i39j0i131j0j35i39i19j0i131i67j0i3j0i203.8NcJKJl-jvY&ved=0ahUKEwjnnY_vka_oAhWJKewKHSnJDDkQ4dUDCAs&uact=5ג', '2020-03-23 23:19:46', 0),
(168, 66, 'http://localhost/mefathim/home_page.html', '2020-03-24 22:10:08', 0),
(169, 66, '12', '2020-03-25 21:32:25', 0),
(170, 66, '3', '2020-03-25 21:33:10', 0),
(171, 66, '45', '2020-03-25 21:34:31', 0),
(172, 66, '12', '2020-03-26 20:46:29', 0),
(173, 66, '3', '2020-03-26 21:06:48', 0),
(174, 66, 'weewrewre', '2020-04-06 12:22:45', 1),
(175, 66, 'yy', '2020-04-06 12:47:02', 1),
(176, 66, 'cdft', '2020-04-13 00:13:21', 1),
(177, 66, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2020-04-13 01:05:04', 1),
(178, 66, 'עלתה לשידור ב-3 במרץ 2013 בארצות הברית ובקנדה.\n\nהסדרה צולמה באירלנד בהשראת הסיפורים על הויקינג רגנאר לודברוק, אחד מגיבורי התרבות הנורדית הנודעים ביותר. הסדרה מציגה את רגנאר כח', '2020-04-13 02:19:18', 0),
(179, 66, '1283we', '2020-04-13 08:49:52', 1),
(180, 66, '123', '2020-04-13 09:04:07', 0),
(181, 66, '12', '2020-04-13 09:54:55', 0),
(182, 66, '12', '2020-04-13 09:57:24', 1),
(183, 66, 'אאכגג', '2020-04-13 12:07:54', 0);

--
-- הוצאת מידע עבור טבלה `sessions`
--

INSERT INTO `sessions` (`sid`, `uid`, `create_time`, `update_time`, `ip_address`, `user_agent`, `logged_out`, `logout_time`) VALUES
('HhMmf4KG1K', 20, '2020-02-06 12:50:30', '2020-02-06 22:35:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('uGvktsDHQU', 20, '2020-02-06 13:11:25', '2020-02-06 22:35:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('aWufeIC7NZ', 20, '2020-02-09 14:14:20', '2020-02-09 16:06:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('2qVs0pEY6n', 20, '2020-02-09 14:14:51', '2020-02-09 16:06:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('RSY8Kuspco', 20, '2020-02-10 10:10:38', '2020-02-10 18:08:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('qy29kMQ3X8', 20, '2020-02-10 10:20:09', '2020-02-10 11:50:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('pHfViLdKcn', 20, '2020-02-10 13:29:54', '2020-02-10 18:08:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('vnwJB7ge1A', 20, '2020-02-10 20:57:25', '2020-02-10 21:02:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('4XYehuK2lf', 20, '2020-02-10 21:02:49', '2020-02-10 22:46:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('VlsDgzv4L6', 20, '2020-02-10 22:50:11', '2020-02-10 23:25:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36', 0, NULL),
('N0cEZA0Jml', 20, '2020-02-11 12:03:42', '2020-02-11 13:31:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('Gu9CijgQq3', 20, '2020-02-12 09:35:59', '2020-02-12 11:14:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-12 11:15:00'),
('9o6tLYlVlL', 4, '2020-02-12 09:39:44', '2020-02-12 12:18:16', '10.0.0.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 0, NULL),
('tWstMwk87D', 20, '2020-02-12 11:15:02', '2020-02-12 12:18:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('VYgMzqw5yF', 20, '2020-02-12 11:15:20', '2020-02-12 11:30:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', 1, '2020-02-12 11:30:35'),
('HpzCbRu1Rr', 20, '2020-02-12 11:30:40', '2020-02-12 11:35:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', 1, '2020-02-12 11:35:05'),
('WWOQwKSA2y', 20, '2020-02-12 11:35:07', '2020-02-12 12:18:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', 0, NULL),
('9Dm0aidrV2', 20, '2020-02-12 12:34:18', '2020-02-12 14:01:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', 0, NULL),
('tDiYVQjmY4', 6, '2020-02-12 13:35:40', '2020-02-12 14:15:31', '10.0.0.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 0, NULL),
('tKvIVPixpv', 4, '2020-02-12 13:36:38', '2020-02-12 13:38:38', '10.0.0.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 0, NULL),
('FubLJe2amA', 20, '2020-02-12 14:21:54', '2020-02-12 17:57:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('23iGCFVDAo', 20, '2020-02-12 14:22:25', '2020-02-12 17:57:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', 0, NULL),
('KiQuTb4iBU', 20, '2020-02-13 14:36:42', '2020-02-13 15:02:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.100 Safari/537.36', 0, NULL),
('1C5kR2O9bq', 4, '2020-02-13 14:39:29', '2020-02-13 14:40:30', '10.0.0.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 0, NULL),
('aDodKRKiZb', 20, '2020-02-16 19:18:38', '2020-02-16 21:42:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('xzuMA7Fd9m', 20, '2020-02-16 19:34:11', '2020-02-16 19:44:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('aZGVdVA0Rd', 20, '2020-02-16 19:54:58', '2020-02-16 21:06:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('RRLlNjLRrb', 20, '2020-02-17 09:37:42', '2020-02-17 11:43:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-17 11:43:40'),
('YxihQ9lmeP', 20, '2020-02-17 10:29:41', '2020-02-17 12:19:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('6wQKMNrZ10', 20, '2020-02-17 11:43:55', '2020-02-17 11:43:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-17 11:44:01'),
('JnpOMBdkVX', 20, '2020-02-17 12:31:06', '2020-02-17 13:12:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('xSXtQ341kI', 20, '2020-02-17 12:41:52', '2020-02-17 12:43:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-17 12:43:46'),
('KzPCH03yL8', 20, '2020-02-17 13:04:49', '2020-02-17 13:12:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('ye2qXZSvhO', 20, '2020-02-17 15:53:18', '2020-02-17 15:53:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-17 15:53:34'),
('kVrirkxRFF', 20, '2020-02-17 15:54:14', '2020-02-17 17:35:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('0xwwuFtqiX', 20, '2020-02-17 17:30:08', '2020-02-17 17:36:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('vkoTUD80vz', 20, '2020-02-17 17:58:19', '2020-02-17 18:00:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('F0H3XzFgEv', 20, '2020-02-17 18:01:11', '2020-02-17 18:01:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('3DIPeVEo2n', 20, '2020-02-17 18:04:21', '2020-02-17 18:15:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-17 18:15:58'),
('Dv7MadLlfe', 20, '2020-02-17 18:16:01', '2020-02-17 18:16:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-17 18:16:04'),
('bbS36CBH56', 20, '2020-02-17 18:16:07', '2020-02-17 18:18:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('JPrRIRLdP6', 20, '2020-02-17 18:18:55', '2020-02-17 18:19:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('XV7lfD2Zzy', 20, '2020-02-17 18:20:48', '2020-02-17 18:26:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('Aciunfckdl', 20, '2020-02-17 18:26:48', '2020-02-17 18:29:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('qHfYlQCDLu', 20, '2020-02-17 18:32:22', '2020-02-17 18:32:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('JUtviqzKsN', 20, '2020-02-17 18:32:55', '2020-02-17 18:35:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('gXnbv2XMB1', 20, '2020-02-17 18:52:59', '2020-02-17 18:53:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-17 18:53:26'),
('vCSpiM1Myv', 20, '2020-02-17 18:56:46', '2020-02-17 19:27:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('lWzuwATUDB', 20, '2020-02-19 12:48:30', '2020-02-19 12:55:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-19 12:55:45'),
('TyMUSZ5LoZ', 20, '2020-02-19 12:57:36', '2020-02-19 12:58:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-19 12:58:21'),
('3j7tFgyr44', 20, '2020-02-19 13:13:42', '2020-02-19 13:14:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-19 13:14:35'),
('b2BQergh2v', 20, '2020-02-19 13:15:24', '2020-02-19 14:12:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-19 14:12:31'),
('gBDTb3jsIV', 20, '2020-02-19 13:28:18', '2020-02-19 14:35:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-19 14:35:20'),
('zUGalQTtXp', 20, '2020-02-19 14:12:40', '2020-02-19 16:02:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('htkKtm6Yht', 20, '2020-02-19 14:36:31', '2020-02-19 16:02:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('gDX1S2F2UF', 20, '2020-02-19 20:11:18', '2020-02-19 20:22:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('KV9Ms3IvB3', 64, '2020-02-19 20:22:08', '2020-02-20 00:53:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('G6nJYgq3BJ', 20, '2020-02-19 20:38:52', '2020-02-19 21:34:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('9DL5w2QH9Z', 20, '2020-02-19 21:47:24', '2020-02-19 21:51:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('ppWUJCr47E', 20, '2020-02-19 21:52:01', '2020-02-19 23:31:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('wVFAVyntq4', 20, '2020-02-19 23:32:33', '2020-02-20 00:53:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('EIql3vSLEi', 20, '2020-02-20 10:26:50', '2020-02-20 10:32:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 10:32:44'),
('5UZDlqDEj3', 20, '2020-02-20 10:33:24', '2020-02-20 10:33:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('4zVQDWyS87', 20, '2020-02-20 10:42:21', '2020-02-20 10:43:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 10:43:23'),
('UkRvgRtuk6', 20, '2020-02-20 10:43:26', '2020-02-20 10:45:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('o7bS7Bp3ff', 20, '2020-02-20 12:48:01', '2020-02-20 12:49:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 12:49:07'),
('YomDsjhuNQ', 20, '2020-02-20 12:54:00', '2020-02-20 12:54:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 12:54:09'),
('1dBFEpJSfR', 20, '2020-02-20 13:02:23', '2020-02-20 13:21:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 13:21:48'),
('j22wmm4Qch', 20, '2020-02-20 13:24:35', '2020-02-20 13:26:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 13:26:47'),
('IqXsZLJ1Oy', 20, '2020-02-20 13:30:33', '2020-02-20 14:37:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('q19aLlblGk', 20, '2020-02-20 16:07:59', '2020-02-20 16:11:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 16:11:37'),
('xqJowmg5TX', 20, '2020-02-20 16:11:40', '2020-02-20 16:33:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 16:33:55'),
('PnOYYQV2OQ', 20, '2020-02-20 16:33:58', '2020-02-20 16:33:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 16:34:01'),
('K0AsPHGWmP', 20, '2020-02-20 16:34:07', '2020-02-20 16:34:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 16:34:25'),
('6mHBNRJSG3', 20, '2020-02-20 16:34:27', '2020-02-20 16:51:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 1, '2020-02-20 16:52:51'),
('1dfPWvGB6W', 20, '2020-02-20 16:52:59', '2020-02-20 17:05:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('KbGBB03CgP', 20, '2020-02-21 14:50:10', '2020-02-21 15:10:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('3twPe793Ah', 20, '2020-02-23 09:29:45', '2020-02-23 09:48:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 0, NULL),
('5xRGlhS5HE', 20, '2020-02-23 10:11:26', '2020-02-23 11:37:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('Ku4h3EA5ca', 20, '2020-02-23 12:27:56', '2020-02-23 12:33:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('k5Ft80khnG', 20, '2020-02-23 12:33:39', '2020-02-23 13:33:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('j5DCFE41Tf', 20, '2020-02-24 09:25:07', '2020-02-24 10:35:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 1, '2020-02-24 10:36:02'),
('4WG5DuEDJL', 20, '2020-02-24 10:36:44', '2020-02-24 10:43:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('CEtPvdmRUZ', 20, '2020-02-24 10:52:20', '2020-02-24 11:02:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('KqeIoq51Tu', 20, '2020-02-24 17:26:00', '2020-02-24 17:28:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('cuqPBHVF9X', 20, '2020-02-24 17:34:59', '2020-02-24 17:35:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-24 17:35:50'),
('TXXiParl2q', 20, '2020-02-24 17:35:53', '2020-02-24 21:24:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('6BpkUsxYZX', 20, '2020-02-24 20:09:44', '2020-02-24 21:25:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('f1PEQSiGAX', 20, '2020-02-24 21:44:59', '2020-02-24 22:56:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('aQEwG2vRtF', 20, '2020-02-25 09:58:51', '2020-02-25 10:09:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('0s45d3YCHQ', 20, '2020-02-25 10:32:24', '2020-02-25 11:13:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('RerxeiQyf8', 20, '2020-02-25 19:03:45', '2020-02-25 22:28:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('WUHowtWlzL', 20, '2020-02-25 19:42:36', '2020-02-25 22:59:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('FN0tA4szRp', 20, '2020-02-26 00:41:21', '2020-02-26 01:15:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36', 0, NULL),
('iPe6al5rFZ', 20, '2020-02-26 01:27:01', '2020-02-26 01:29:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 1, '2020-02-26 01:29:01'),
('eLryUclHSc', 20, '2020-02-26 01:29:29', '2020-02-26 01:38:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('seCaBJYyL9', 20, '2020-02-26 01:31:03', '2020-02-26 01:35:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 1, '2020-02-26 01:36:01'),
('RBBya0Ba4G', 20, '2020-02-26 01:36:14', '2020-02-26 01:38:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 0, NULL),
('bIM1HvlKTw', 20, '2020-02-26 09:28:58', '2020-02-26 09:31:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('7StLdA3Eus', 20, '2020-02-26 09:46:54', '2020-02-26 11:22:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', 0, NULL),
('LFqcuXPiOG', 6, '2020-02-26 10:05:48', '2020-02-26 10:55:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 0, NULL),
('rC2UKy6qx7', 20, '2020-03-08 10:31:45', '2020-03-08 11:17:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 1, '2020-03-08 11:17:33'),
('Z3PazWfWag', 20, '2020-03-08 10:50:24', '2020-03-08 11:54:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('o1HpQYJuvU', 20, '2020-03-08 11:17:45', '2020-03-08 12:16:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 0, NULL),
('xzd8kCqOSP', 20, '2020-03-08 12:17:39', '2020-03-08 13:21:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('ejkRoV05uK', 20, '2020-03-08 12:54:07', '2020-03-08 12:54:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0', 0, NULL),
('8zehTEqHtr', 20, '2020-03-12 12:10:50', '2020-03-12 12:10:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('pqqz02kujI', 20, '2020-03-12 13:31:31', '2020-03-12 13:32:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('UE92nsDV19', 20, '2020-03-12 13:46:49', '2020-03-12 13:46:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('kEKitcCXIe', 20, '2020-03-15 13:55:43', '2020-03-15 13:56:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('rmPqMhMUa8', 20, '2020-03-15 14:55:33', '2020-03-15 14:55:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('wHfa9ZZKZN', 20, '2020-03-15 14:56:24', '2020-03-15 15:22:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('mRs0VaSX91', 20, '2020-03-15 15:45:14', '2020-03-15 16:03:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('84jwJ22vRd', 20, '2020-03-17 09:10:14', '2020-03-17 09:16:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('ZC8R0xfJyC', 20, '2020-03-17 21:02:11', '2020-03-17 21:09:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('0oPpfIk100', 20, '2020-03-17 21:31:52', '2020-03-17 21:39:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('bKxXBAOBXX', 20, '2020-03-17 21:40:35', '2020-03-17 22:53:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('gF5pfkLFMM', 20, '2020-03-17 23:05:17', '2020-03-18 00:21:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('rGBoFHPqbJ', 20, '2020-03-18 00:42:40', '2020-03-18 01:26:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('NSVXPxq2XW', 20, '2020-03-18 16:43:04', '2020-03-18 16:43:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('JoMwZAARmH', 20, '2020-03-18 16:43:07', '2020-03-18 16:43:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('ajqv5MQNyK', 66, '2020-03-18 16:54:12', '2020-03-18 18:11:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('UkWPA4bK6m', 66, '2020-03-18 21:49:53', '2020-03-18 22:25:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('J4gzOvqTaB', 66, '2020-03-18 22:25:04', '2020-03-18 22:25:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 1, '2020-03-18 22:25:29'),
('oqjVXXinFD', 66, '2020-03-19 19:37:50', '2020-03-19 20:48:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('IImUb6MvFJ', 66, '2020-03-22 13:29:05', '2020-03-22 13:32:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('wcRWxoIi9C', 66, '2020-03-22 13:32:56', '2020-03-22 13:50:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('nByNpedNyl', 66, '2020-03-22 13:50:26', '2020-03-22 16:37:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('FMLvfEj9kB', 66, '2020-03-23 23:15:34', '2020-03-23 23:29:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('1d73URNsxB', 66, '2020-03-23 23:15:34', '2020-03-23 23:15:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('bAnnk18BPq', 66, '2020-03-23 23:41:32', '2020-03-24 00:22:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('s7AoCRzJqP', 66, '2020-03-24 05:08:34', '2020-03-24 05:14:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('UNURUeUved', 66, '2020-03-24 05:14:19', '2020-03-24 05:18:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('mCmsGwmeT5', 66, '2020-03-24 10:57:36', '2020-03-24 11:03:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('U0VCLTinyF', 66, '2020-03-24 11:27:41', '2020-03-24 11:46:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('PlnyKXhecp', 66, '2020-03-24 21:58:43', '2020-03-24 22:08:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('HHll92IwY5', 66, '2020-03-24 22:08:29', '2020-03-24 23:30:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 0, NULL),
('zw6zF8WaS6', 66, '2020-03-25 17:07:38', '2020-03-25 18:30:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('A5anmIlAbB', 66, '2020-03-25 21:32:14', '2020-03-25 21:34:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, '2020-03-25 21:37:29'),
('BtTXUqTYbw', 66, '2020-03-25 21:37:37', '2020-03-25 21:37:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('ACOj2ZbU6R', 66, '2020-03-25 21:37:53', '2020-03-25 22:57:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('yZ7CZt3eJK', 66, '2020-03-25 22:04:08', '2020-03-25 22:56:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('DkLcyefoAQ', 66, '2020-03-26 20:46:20', '2020-03-26 21:06:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('1bR91BhpDm', 66, '2020-03-28 21:32:12', '2020-03-28 22:09:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('Wzku7RX5Tl', 66, '2020-03-29 10:13:38', '2020-03-29 10:14:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('kaalhvswRM', 66, '2020-03-29 10:26:24', '2020-03-29 10:26:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('2RA7D1aRSy', 66, '2020-03-29 12:20:39', '2020-03-29 14:02:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('DsWU71dLhS', 66, '2020-03-30 21:33:50', '2020-03-30 23:32:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('9lMJXzxKMM', 66, '2020-03-31 15:26:48', '2020-03-31 16:47:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('LlFnvxa4be', 66, '2020-04-01 00:08:43', '2020-04-01 02:22:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('5088mRLN9o', 66, '2020-04-01 10:23:21', '2020-04-01 10:24:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, '2020-04-01 10:24:20'),
('1tIrpCkZb1', 20, '2020-04-01 10:25:05', '2020-04-01 10:25:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, '2020-04-01 10:25:25'),
('0WV0IU5COO', 66, '2020-04-01 10:25:35', '2020-04-01 10:26:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('8M0CLqNbSQ', 20, '2020-04-01 10:26:28', '2020-04-01 10:28:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, '2020-04-01 10:28:06'),
('9wDCI6FObI', 20, '2020-04-01 10:28:01', '2020-04-01 16:30:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 0, NULL),
('3T1xf7IptH', 66, '2020-04-01 10:28:08', '2020-04-01 10:29:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('fYJH42chRm', 66, '2020-04-01 15:20:34', '2020-04-01 16:30:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('zOQKZgpizj', 66, '2020-04-06 12:22:33', '2020-04-06 12:25:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, '2020-04-06 12:25:29'),
('7kzucdKRzq', 66, '2020-04-06 12:25:39', '2020-04-06 13:40:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 0, NULL),
('clJkf2a4m8', 66, '2020-04-12 23:05:38', '2020-04-12 23:07:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('kQD5fTEonM', 66, '2020-04-12 23:07:03', '2020-04-13 01:52:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('mZArx0LFje', 66, '2020-04-13 01:52:49', '2020-04-13 03:09:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('20qHsCY0jK', 66, '2020-04-13 08:51:47', '2020-04-13 08:51:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('nTjBZUgQXJ', 66, '2020-04-13 08:52:24', '2020-04-13 09:38:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('zJXFysnL5M', 66, '2020-04-13 10:22:09', '2020-04-13 10:22:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('TkZpLgZJVw', 66, '2020-04-13 10:38:25', '2020-04-13 11:09:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('W54F2zG5zk', 66, '2020-04-13 11:40:50', '2020-04-13 12:08:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('jawxglP1hH', 66, '2020-04-13 12:44:39', '2020-04-13 14:28:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('vqTrMNiJLF', 66, '2020-04-13 15:07:40', '2020-04-13 15:58:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('c2Sh2SAaoP', 66, '2020-04-13 18:07:26', '2020-04-13 18:39:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('OaRIphmYL7', 66, '2020-04-13 20:22:20', '2020-04-13 22:55:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('p6NpP5qHsH', 66, '2020-04-16 16:32:41', '2020-04-16 19:10:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('qP36H90y6o', 66, '2020-04-17 00:17:32', '2020-04-17 01:34:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('kYg2JFnw29', 66, '2020-04-18 21:22:38', '2020-04-18 22:06:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('RgmWZJpEEt', 66, '2020-04-18 22:45:12', '2020-04-19 00:23:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('TK4fEKWVMY', 66, '2020-04-19 15:07:37', '2020-04-19 15:56:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('vOwnBgjeLt', 66, '2020-04-19 16:18:07', '2020-04-19 17:45:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('8AT5FS5Pmi', 66, '2020-04-19 18:00:09', '2020-04-19 18:30:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('AmEQKdTxa6', 66, '2020-04-19 20:26:38', '2020-04-19 20:35:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('VmjxfvWNKq', 66, '2020-04-19 20:48:30', '2020-04-20 03:37:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('ZxiGpVXWwB', 66, '2020-04-20 14:19:27', '2020-04-20 14:26:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('Wm24iZpIe3', 66, '2020-04-20 14:37:16', '2020-04-20 14:37:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('EjAaNnWIs5', 66, '2020-04-20 14:37:46', '2020-04-20 14:49:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('21eCs1eRMU', 66, '2020-04-20 14:50:51', '2020-04-20 15:59:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('DrVHNdfsPE', 66, '2020-04-20 15:59:58', '2020-04-20 16:16:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('snC4NcEBQn', 66, '2020-04-20 19:38:24', '2020-04-20 19:38:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('1pbp2k8JqJ', 66, '2020-04-20 19:59:42', '2020-04-20 20:01:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('eTAm5kRQZT', 66, '2020-04-20 20:20:56', '2020-04-20 20:56:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('n3xtb8jhkm', 66, '2020-04-20 20:58:48', '2020-04-20 21:34:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('q39GUcRBuk', 20, '2020-04-20 21:29:01', '2020-04-20 21:32:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 0, NULL),
('XSolEXzpOj', 20, '2020-04-22 14:00:50', '2020-04-22 14:04:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 1, '2020-04-22 14:04:11'),
('qN6HMHfuMf', 20, '2020-04-22 14:04:15', '2020-04-22 14:11:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 0, NULL),
('lRVGBcv5IC', 66, '2020-04-22 14:04:56', '2020-04-22 14:56:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 0, NULL),
('9Nk8gYRCDH', 20, '2020-04-22 14:27:12', '2020-04-22 14:30:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 0, NULL);

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(64) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `middle_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) NOT NULL,
  `status` int(3) NOT NULL DEFAULT 1,
  `nickname` varchar(64) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `gender` int(3) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `country` varchar(3) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `picture_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- הוצאת מידע עבור טבלה `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `middle_name`, `last_name`, `status`, `nickname`, `password_hash`, `salt`, `creation_date`, `gender`, `date_of_birth`, `city`, `country`, `phone_number`, `picture_number`) VALUES
(1, 'ofni.fresh@gmail.com', 'יצחק', '', '', 0, 'סאטמער', '4f5cb4845d27637f1fc5e8b6426a087f4e271546', '7381', '2019-12-16', 1, '0000-00-00', '', '', '', 7),
(2, '7142205@gmail.com', '', '', '', 0, 'אברמי', 'c2df941b7325f62890541018c79fb86d8acce4a2', '7G1rl', '2019-12-16', 1, '0000-00-00', '', 'isr', '', 11),
(4, 'nbasa02@gmail.com', 'נהוראי', '', 'בסה', 0, 'גישמק', 'd4697da3230bde9788e3efbc2dc35b1f0097019d', '1231', '2019-12-17', 1, '2019-12-17', 'אלקנה', 'isr', '0526201011', 7),
(6, 'chsh32340@gmail.com', 'חנוך', '', 'שיינר', 0, 'חנוך', 'd075603c07dceec08b097ac09a297e84e155b99c', '5502', '2019-12-17', 1, '1994-11-11', 'בני ברק', 'isr', '1234567890', 2),
(8, 'ronavital999@gmail.com', 'ron', '', 'avital', 0, 'ron', '5cab87774b0425251c23d8c887a0fd74ad9d2017', '2184', '2019-12-17', 1, '2019-12-17', 'Bnei Brak', 'ישר', '0549983018', NULL),
(10, 'eichlermosh@gmail.com', 'משה', 'יוסף', 'אייכלר', 0, 'מושקה', 'e88f1d53d36112c835e25284ff2dd2e27f6239e8', '8081', '2019-12-17', 1, '2019-12-17', 'ירושלים', 'isr', '0548597760', NULL),
(11, 'meirbr88@gmail.com', 'מאיר', 'מאיר', 'ברסלואר', 0, 'מאיר', '73fb5f8d7cfd2120cd1c95df8807df8da42a4f44', '4547', '2019-12-17', 1, '2019-12-17', 'פתח תקווה', 'isr', '0587160468', NULL),
(12, 'yp131323@gmail.com', 'יעקב', '', 'פרייזלר', 0, 'יענקי', '8e93c3adef25a74542018f6e7a45581038e61bc1', '9ERgp', '2019-12-17', 1, '1997-08-26', 'בני ברק', 'isr', '', 4),
(14, 'yishayish@gmail.com', 'ישי', 'משה', 'שטרסלר', 0, 'ישי', '5e6e681d465c8b2d4bdfec8e095276e38e4a2b54', '8808', '2019-12-18', 1, '1987-01-16', 'בית שמש', 'ישר', '0548416385', NULL),
(17, 'ben8652800@gmail.com', 'ben', 'zion', 'katz', 0, 'בנצי', 'cbce00b1b1ace7e21bf77ed9457bb950b3628cf7', '8099', '2019-12-23', 1, '1989-05-31', 'ashdod', 'ישר', '0504166992', NULL),
(19, 'ilan@zisser.com', 'אילן', '', 'זיסר', 0, 'אילן אלכס', 'd7e93030c6452ca7951ed75eca1151a77fdb0f89', '5699', '2019-12-25', 1, '1964-07-25', 'תל אביב', 'isr', '0544985726', 11),
(20, 'bentsikalat@gmail.com', 'בנצי', '', 'חלאט', 0, 'קוצו של יוד', '0202432008d4a9992949d8f531c62af19ebf77b6', '2655', '2019-12-25', 1, '1800-01-22', 'פתח תקווה', 'isr', '0537138979', 7),
(21, 'ytzyk550@gmail.com', '', '', '', 0, 'المطورون', 'aa642e6df802a6586aeb05a7371a8c60c66ec051', 'KRcN2', '2019-12-25', 1, '0000-00-00', '', 'isr', '', 12),
(24, 'pituchimh@gmail.com', 'akiva', '', 'ashtamker', 0, 'akiva', 'd0cc804a7170aafedda93dd68c1fcadb90be98cf', '5959', '2019-12-25', 1, '1990-09-11', 'baitar', 'isr', '0548460963', NULL),
(25, 'y131323@gmail.com', 'None', NULL, 'None', 0, 'יוסי', 'bef38bb31531404fcb18b67f64be6dd5eb724fef', '2363', '2019-12-25', 1, '2019-12-11', 'None', 'isr', 'None', NULL),
(28, 'batelcohen123@gmail.com', 'יוסי', 'שלום', 'וינשטוק', 0, 'nbasa', '7a479588377c843fd4957ba02bf050842c77b8bf', '6213', '2019-12-30', 1, '2019-12-30', 'bet shemesh', 'ישר', '0548187150', NULL),
(32, 'example@gmail.com', 'דוגמה', NULL, 'None', 0, 'דוגמה', 'd3988e677e8663d56d534838f4e48205e71b6e23', '5775', '2019-12-30', 1, '2019-12-30', 'None', 'isr', 'None', NULL),
(33, 'yosi.vaynshtok@gmail.com', 'יוסי', '', 'וינשטוק', 0, 'yossi', 'e83f4d52d0053acb5d80766224e943582a4ab9aa', '8872', '2019-12-31', 1, '1987-02-27', 'None', 'isr', 'None', 3),
(35, 'yossi.vaynshtok@gmail.com', 'יוסי', NULL, 'וינשטוק', 0, 'yossi', '1ae4b3cbdb9a8b8f1de82aee25b41e20bdcdb94f', '2076', '2019-12-31', 1, '1987-02-27', 'בית שמש', 'isr', '0527161609', NULL),
(38, 'melijurko@gmail.com', 'avraham', '', 'jurkowicz', 0, 'אלקי אברהם', 'ca91f797ed0bf6bc620dcce8c839497c47960b3a', '9749', '2019-12-31', 1, '2020-01-01', 'בני ברק', 'isr', 'None', 4),
(41, 'eichler@gmail.com', 'משה', 'יוסף', 'אייכלר', 0, 'מושקה', 'c4cd86f2626326bbe58dedce77e27504051f4cfd', '6191', '2020-01-01', 1, '1111-11-11', 'ירושלים', 'isr', '0548597760', NULL),
(42, 'benzimraaa@gmail.com', 'אברהם', '', 'בן זימרא', 0, 'אברהם', 'fb949364f04e0b32ea4e3c546e484c45a8eb6999', '4143', '2020-01-01', 1, '1995-10-27', 'ירושלים', 'isr', '0527644632', NULL),
(43, 'sshtern@gmail.com', 'שמואל', '', 'שטרן', 0, 'אברמי', 'ad3261a25fd344cb49a818a6be5c871a2e5e0bd1', '7988', '2020-01-01', 1, '2020-01-03', 'בני ברק', 'isr', '0533258888', NULL),
(45, 'eichlermoshe@gmail.com', 'משה', '', '', 0, 'Donald Trump', '84fb40309324cfb7ce81f8bf92e0c5f64b39fae7', '1055', '2020-01-01', 1, '0000-00-00', '', 'isr', '', NULL),
(46, 'meirb88@gmail.com', 'מאיר', NULL, 'ברסלואר', 0, 'מאירקה', 'c62d4d28c11174e9154f891a1d30d35c2551bcd4', '8150', '2020-01-01', 3, '1998-01-20', 'פתח תקוה', 'isr', '0587160468', NULL),
(47, 'ytr@ytr', 'try', NULL, 'None', 0, 'None', '590ea50c126876d16f0389159c58f8f306431324', '7105', '2020-01-05', 1, '1111-11-11', 'None', 'isr', 'None', NULL),
(49, 'poiu@poiu', 'יעקב', NULL, 'None', 0, 'None', '5049015b212d095c02a0750ee88ab4dfa7d226d2', '4875', '2020-01-05', 1, '2000-02-02', 'None', 'isr', 'None', NULL),
(50, '123@123', 'יענקי', '', '', 0, 'חמוצים', 'cc3f2f14ea31cc7d97318059c7ee547772a10f2f', '7106', '2020-01-06', 3, '0000-00-00', 'ירושלים', 'isr', '12345678', 7),
(51, '1234@1234', 'nav', '', 'None', 0, 'None', 'fa1585ff383963ac0a0f8aadf502bdd85b51475f', '3168', '2020-01-06', 1, '1111-11-11', 'None', 'isr', 'None', NULL),
(54, '12345@12345', 'nav', '', 'None', 0, 'nav', '0230407c035835472c92a8a34031ebff621406d7', '1796', '2020-01-06', 1, '1111-11-11', 'None', 'isr', 'None', NULL),
(55, 'alert@a', 'haker', '', 'None', 0, 'דוגמה', 'f614c384cedc5bf3256c574155584839c3a607c7', '2385', '2020-01-06', 1, '1111-11-11', 'None', 'isr', 'None', NULL),
(56, 'ytzyk@gmail.com', 'u', '', 'y', 0, 'האקר', '712523b6b8c4010d1cb6c6cfd22d0801590e8265', '6149', '2020-01-08', 1, '0005-05-05', 'ירושלים', 'isr', '0533258888', NULL),
(57, 'a0525608687@gmail.com', 'adiel', NULL, 'barzel', 0, 'AdielBarzel', '7cbf10cead975d152b6e46c538b1aa8d0c8023d4', '7341', '2020-01-11', 1, '1987-02-22', 'imanuel', 'Isr', '0534215437', NULL),
(58, '1@1', 'נחמן', NULL, 'מאומן', 0, 'נח נח', 'd2464b59a6acaa561961a4ad72ae63fb13b8adaa', '3286', '2020-01-11', 1, '1111-11-11', 'אומן', 'ukr', '111111111', NULL),
(59, '123@12', 'בנימין', '', 'נתניהו', 0, 'יענקי', '24a523abc64bb2e2684a5c4a7e0961791efa4b80', '8698', '2020-01-11', 1, '1111-11-11', 'ירושלים', 'isr', '123456789', NULL),
(60, 'urko@gmail.com', 'חנהלה', NULL, 'None', 0, 'חנהלה', '401127fc67636d207de492d086c74c85aad2ac0a', '4326', '2020-01-13', 1, '1567-03-01', 'bet shemesh', 'Isr', '0548187150', NULL),
(61, '7242205@gmail.com', 'אברהם', NULL, 'לוינגר', 0, 'שלום 1', 'b2239447bf69707dd60a064bf7c94c3f7af5c031', '4037', '2020-01-13', 1, '0000-00-00', 'None', 'isr', 'None', NULL),
(62, 'oz91342@gmail.com', 'עוז', NULL, 'כהן', 0, 'עוז', 'ffba02b2a74dee388a3bbb34626e9e8f0028b55b', '8606', '2020-01-21', 1, '1992-10-24', 'ירושלים', 'isr', '0525716313', NULL),
(63, 'bentsikhalat@gmail.com', '1', NULL, 'None', 0, '1', '8655e6639a4dcd20cd76d5b4035a068add9f36ae', '3150', '2020-01-26', 1, '0111-11-11', 'תל אביב', 'isr', '1111111111', NULL),
(64, 'a@a.a', 'a', '', 'None', 0, 'a', '56cf5b88723ee41323c46e98ff64800a6f2b1b7c', '5450', '2020-02-19', 1, '0000-00-00', 'None', 'isr', 'None', NULL),
(65, 'benlimudim27@gmail.com', '1', NULL, 'None', 0, '1', 'c8089c90b3df924c0e88145934094daa55d374d9', '6828', '2020-02-24', 1, '0011-11-11', 'None', 'isr', 'None', NULL),
(66, 'bentsikalat@gmail.co', 'בנצי', NULL, 'None', 0, 'בנצי', 'e6f37ce07731a942596d63cde99f1e23ac5183a1', '4563', '2020-03-18', 1, '0011-11-11', 'None', 'isr', 'None', NULL);

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
