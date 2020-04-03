-- Практическое задание по теме “CRUD - операции”
-- Повторить все действия по доработке БД vk.
-- Заполнить новые таблицы.
-- Подобрать сервис который будет служить основой для вашей курсовой работы.
-- (по желанию) Предложить свою реализацию лайков.


#
# TABLE STRUCTURE FOR: communities
#
USE vk;

DROP TABLE IF EXISTS communities;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES (10, 'a');
INSERT INTO `communities` (`id`, `name`) VALUES (19, 'b');
INSERT INTO `communities` (`id`, `name`) VALUES (2, 'c');
INSERT INTO `communities` (`id`, `name`) VALUES (12, 'd');
INSERT INTO `communities` (`id`, `name`) VALUES (13, 'e');
INSERT INTO `communities` (`id`, `name`) VALUES (16, 'g');
INSERT INTO `communities` (`id`, `name`) VALUES (6, 'h');
INSERT INTO `communities` (`id`, `name`) VALUES (9, 'j');
INSERT INTO `communities` (`id`, `name`) VALUES (8, 'k');
INSERT INTO `communities` (`id`, `name`) VALUES (11, 'l');
INSERT INTO `communities` (`id`, `name`) VALUES (17, 'm');
INSERT INTO `communities` (`id`, `name`) VALUES (7, 'n');
INSERT INTO `communities` (`id`, `name`) VALUES (4, 'o');
INSERT INTO `communities` (`id`, `name`) VALUES (3, 'p');
INSERT INTO `communities` (`id`, `name`) VALUES (20, 'r');
INSERT INTO `communities` (`id`, `name`) VALUES (18, 's');
INSERT INTO `communities` (`id`, `name`) VALUES (14, 'u');
INSERT INTO `communities` (`id`, `name`) VALUES (1, 'v');
INSERT INTO `communities` (`id`, `name`) VALUES (15, 'x');
INSERT INTO `communities` (`id`, `name`) VALUES (5, 'y');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 100);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 60, 1, '2019-07-09 19:01:11', '1980-11-24 06:08:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 75, 2, '1986-08-01 21:11:22', '1989-11-29 17:06:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 73, 3, '1970-04-16 06:59:32', '2018-05-20 03:43:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 3, 4, '2006-07-17 23:57:28', '2001-11-04 18:24:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 59, 5, '1979-06-16 14:58:12', '2003-08-23 09:38:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 83, 1, '2016-12-10 11:17:10', '1974-03-03 23:10:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 8, 2, '1971-07-20 17:27:55', '1971-07-31 01:34:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 56, 3, '2013-08-19 19:17:24', '1994-09-21 15:56:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 89, 4, '1994-10-12 02:59:18', '1981-07-28 15:23:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 48, 5, '1977-03-16 08:08:09', '2016-10-15 00:11:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 7, 1, '1989-05-07 12:10:27', '2004-06-06 02:16:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 49, 2, '1987-07-05 12:22:46', '2000-03-04 22:03:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 75, 3, '2005-11-14 18:17:17', '1978-10-01 08:30:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 45, 4, '2011-02-11 18:52:59', '2009-02-18 07:34:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 3, 5, '2016-08-04 11:28:33', '2005-12-07 00:44:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 20, 1, '1971-11-07 06:46:39', '1985-09-14 19:30:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 51, 2, '2018-07-08 15:54:24', '1973-08-21 11:07:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 64, 3, '1990-12-09 08:55:23', '1978-03-26 20:04:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 35, 4, '1983-01-30 09:58:20', '1985-06-30 19:59:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 57, 5, '2009-07-08 07:02:21', '1988-01-21 03:58:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 88, 1, '1979-08-01 06:36:55', '1977-09-01 14:47:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 57, 2, '1990-02-13 15:25:38', '2004-01-25 16:01:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 25, 3, '1975-12-15 01:25:34', '2017-10-04 14:43:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 10, 4, '1990-05-31 00:41:08', '2003-11-13 15:18:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 64, 5, '1983-09-05 02:58:24', '1975-08-22 23:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 94, 1, '1987-03-16 06:29:13', '2018-11-16 23:31:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 43, 2, '1989-09-27 15:47:44', '1980-12-19 11:38:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 79, 3, '1975-02-26 18:02:31', '1997-03-23 01:27:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 76, 4, '1992-04-03 22:55:34', '2002-04-10 23:15:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 37, 5, '2018-07-22 13:53:49', '1992-05-14 04:04:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 94, 1, '1995-08-19 04:17:11', '2018-05-23 07:19:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 88, 2, '1970-03-18 02:13:30', '2003-06-25 01:04:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 27, 3, '2004-04-12 05:51:57', '2009-03-23 01:40:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 36, 4, '1979-08-18 11:17:18', '2019-08-20 21:07:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 92, 5, '2008-06-03 21:07:43', '1990-09-02 13:12:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 99, 1, '1975-07-07 05:15:10', '2010-04-18 00:21:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 74, 2, '1974-08-08 10:39:17', '1971-11-26 01:56:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 48, 3, '2000-01-19 17:06:09', '2001-05-26 15:19:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 56, 4, '1974-11-23 13:11:03', '2015-08-14 06:43:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 74, 5, '2000-03-31 15:39:57', '1972-05-19 07:52:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 45, 1, '2016-01-25 11:52:48', '2008-10-06 13:22:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 85, 2, '1971-12-03 12:44:38', '1978-08-08 12:46:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 78, 3, '2004-08-17 07:21:58', '1975-07-26 20:32:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 7, 4, '2018-11-30 16:30:52', '1988-08-12 13:32:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 16, 5, '2012-07-25 21:39:30', '2014-04-24 05:15:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 34, 1, '1990-01-06 01:28:34', '1995-08-08 02:16:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 90, 2, '2001-07-23 14:58:13', '1987-01-31 17:47:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 61, 3, '2008-12-19 10:04:52', '2001-03-19 07:15:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 25, 4, '1986-01-09 11:32:20', '1994-10-12 03:35:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 12, 5, '1987-06-09 04:57:29', '2008-04-25 10:48:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 94, 1, '1978-10-19 17:01:32', '1972-01-10 07:42:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 78, 2, '2013-10-14 13:20:31', '1979-03-30 06:42:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 15, 3, '2015-12-20 03:25:09', '1993-09-15 03:51:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 39, 4, '2015-03-08 01:27:49', '1982-05-22 05:43:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 80, 5, '1971-03-11 05:25:29', '2012-01-28 21:57:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 24, 1, '2000-10-07 09:55:30', '1984-05-15 13:50:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 28, 2, '2002-11-27 05:18:44', '1978-02-26 14:21:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 87, 3, '1970-05-17 05:56:38', '1974-03-28 07:21:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 38, 4, '2012-08-18 05:50:55', '2008-07-18 12:32:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 13, 5, '2014-11-26 07:25:18', '2000-11-25 04:38:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 53, 1, '1978-07-11 18:10:49', '1983-05-24 16:34:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 69, 2, '2015-01-15 15:51:23', '2017-11-15 09:47:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 26, 3, '1985-09-11 04:38:30', '1989-12-29 09:55:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 22, 4, '1983-12-29 11:02:34', '2006-09-17 17:06:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 31, 5, '2018-02-06 02:33:49', '1984-09-11 22:35:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 20, 1, '2009-09-04 15:41:03', '1974-08-22 09:06:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 17, 2, '2011-04-22 20:26:07', '1978-12-27 10:35:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 10, 3, '1993-12-08 09:14:12', '2001-10-02 10:29:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 88, 4, '1993-11-12 22:31:28', '1970-03-13 05:22:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 78, 5, '1976-07-11 14:46:34', '1993-10-16 11:54:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 86, 1, '1995-01-07 10:14:03', '2001-04-19 11:47:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 64, 2, '1981-06-11 03:40:12', '1984-10-25 04:52:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 51, 3, '2011-07-30 06:47:57', '2018-11-13 02:25:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 24, 4, '2009-06-24 08:50:48', '2000-08-22 03:54:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 78, 5, '1971-07-13 07:51:26', '2001-12-19 04:41:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 47, 1, '1975-06-13 20:46:15', '2015-11-17 15:10:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 31, 2, '2006-03-30 23:19:42', '2005-07-10 18:15:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 11, 3, '1971-11-05 23:10:52', '1983-03-14 11:23:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 27, 4, '2005-03-05 08:12:44', '2014-05-12 02:06:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 48, 5, '1971-12-19 00:30:27', '1973-04-24 23:20:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 24, 1, '1980-07-31 06:19:43', '1975-05-04 11:03:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 93, 2, '2018-06-30 17:27:18', '1994-12-15 12:06:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 51, 3, '2016-10-14 23:32:36', '1986-06-02 18:12:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 53, 4, '1985-01-10 19:04:26', '1986-10-27 04:19:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 60, 5, '1996-03-18 19:06:14', '1997-10-01 22:01:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 84, 1, '2017-11-22 11:39:12', '1985-08-29 05:46:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 89, 2, '2014-04-01 02:32:13', '2005-06-25 18:21:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 4, 3, '1986-08-26 04:26:27', '1993-09-22 10:16:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 40, 4, '1977-12-23 05:01:53', '1979-04-14 04:58:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 82, 5, '2008-06-19 17:07:36', '1973-05-31 23:11:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 11, 1, '1974-04-29 08:39:53', '2008-12-16 02:00:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 11, 2, '2008-08-02 04:58:46', '1975-10-14 20:00:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 82, 3, '1993-03-10 01:52:17', '1992-05-06 13:44:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 88, 4, '1984-05-27 17:42:22', '1974-11-04 23:40:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 6, 5, '1974-03-26 00:16:18', '2013-01-15 08:57:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 28, 1, '2002-10-25 22:26:15', '1988-03-24 19:29:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 36, 2, '1983-06-06 20:30:17', '1998-05-15 01:12:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 84, 3, '2003-01-15 18:40:53', '2002-08-22 07:09:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 28, 4, '1990-01-12 23:03:46', '1979-10-24 11:27:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 62, 5, '2005-10-15 22:21:44', '1978-04-17 11:51:58');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (3, 'друг');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (2, 'жена');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (1, 'муж');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (5, 'одногруппник');
INSERT INTO `friendship_statuses` (`id`, `name`) VALUES (4, 'одноклассник');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'atque', 270172, 'f', '1977-07-24 00:22:32', '1970-06-24 20:30:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'odit', 0, 'y', '2016-06-04 17:59:45', '2019-09-09 16:03:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'eum', 4349183, 'b', '1971-12-25 08:41:54', '1989-05-11 19:06:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 4, 'natus', 688, 'u', '1979-12-01 19:42:33', '1999-11-28 09:38:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 2, 5, 'est', 41373360, 'd', '1993-01-13 23:22:10', '1974-06-12 00:16:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 3, 6, 'et', 720793564, 't', '2019-01-04 05:51:24', '1988-11-17 15:26:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 1, 7, 'perferendis', 9, 'g', '2014-07-23 15:26:01', '1992-03-09 23:56:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 2, 8, 'eum', 212, 'e', '1989-04-15 10:50:03', '2001-04-13 20:15:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 3, 9, 'assumenda', 4448638, 'g', '1993-12-17 02:14:40', '1984-03-02 11:29:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 1, 10, 'consequuntur', 8, 'k', '1998-05-26 22:10:44', '1980-11-22 14:29:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 2, 11, 'omnis', 965, 'y', '2011-08-02 18:28:08', '2014-02-06 18:45:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 3, 12, 'quasi', 353, 'j', '1971-12-26 09:13:24', '2016-09-19 16:45:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 1, 13, 'et', 689773, 'k', '2012-09-15 02:36:12', '2013-01-11 06:34:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 2, 14, 'vel', 0, 'p', '1994-05-22 14:29:28', '1994-07-09 01:45:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 3, 15, 'amet', 2945155, 'j', '2019-04-20 17:15:07', '1984-05-04 09:39:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 16, 'quis', 279267968, 'q', '1971-11-07 11:47:56', '1991-09-17 04:48:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 17, 'fugit', 5, 'n', '1985-10-08 02:11:24', '1986-11-28 11:49:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 18, 'quia', 960971352, 'q', '1992-02-09 15:29:14', '1988-11-15 12:22:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 1, 19, 'architecto', 5, 'v', '2002-08-15 00:31:14', '1970-12-04 09:42:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 2, 20, 'voluptas', 0, 's', '2012-04-15 22:16:58', '1986-02-11 19:32:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 3, 21, 'incidunt', 450, 'd', '1991-07-01 14:47:21', '1994-06-02 21:36:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 22, 'eum', 57794028, 'f', '1979-02-20 21:03:21', '2010-11-25 13:34:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 2, 23, 'id', 9, 'u', '2011-07-30 12:35:13', '1987-12-27 06:16:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 3, 24, 'blanditiis', 75, 'j', '1981-11-16 00:56:26', '1992-05-03 22:40:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 1, 25, 'vel', 627388018, 'c', '2005-08-15 16:02:52', '1996-06-12 17:53:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 2, 26, 'quidem', 557663010, 'w', '2017-09-14 12:08:29', '1995-06-21 09:25:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 3, 27, 'voluptatem', 3138776, 'm', '2014-03-15 06:12:47', '1979-05-29 14:58:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 1, 28, 'id', 2, 'v', '1972-04-17 05:22:28', '2019-01-17 06:46:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 2, 29, 'atque', 67, 'r', '1987-11-23 10:50:55', '1986-07-31 06:40:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 3, 30, 'qui', 0, 'd', '2004-10-15 01:32:33', '2005-04-02 15:28:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 31, 'eum', 93149426, 'd', '1997-12-19 08:14:12', '1993-06-05 16:31:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 32, 'ut', 981126127, 'l', '2012-09-13 02:09:01', '1999-08-05 18:47:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 33, 'voluptatem', 1, 'm', '1998-04-16 10:11:14', '1991-06-02 22:52:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 1, 34, 'beatae', 0, 'p', '2002-02-18 18:31:56', '2012-12-03 19:03:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 2, 35, 'odio', 1432773, 't', '1985-04-23 17:16:04', '2008-08-20 01:45:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 3, 36, 'est', 2373, 'i', '1974-09-07 05:18:35', '1994-11-29 09:43:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 1, 37, 'reiciendis', 8, 'z', '2018-10-18 14:03:50', '2014-11-26 22:33:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 2, 38, 'qui', 735, 'l', '1985-01-01 10:47:53', '2004-11-25 23:23:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 3, 39, 'corporis', 290476511, 'w', '1981-10-05 06:19:31', '1979-10-31 07:32:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 1, 40, 'velit', 12, 'z', '1989-08-29 09:23:49', '2007-08-18 11:40:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 2, 41, 'optio', 3605087, 'f', '1985-05-28 22:21:12', '1974-04-16 06:08:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 3, 42, 'et', 46522, 'd', '1971-03-19 18:29:06', '1985-12-06 23:06:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 43, 'qui', 2427, 'd', '1982-04-12 20:59:49', '2008-05-23 09:32:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 2, 44, 'distinctio', 64, 'h', '1989-02-22 02:48:47', '2001-05-25 15:18:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 3, 45, 'eveniet', 1, 'u', '2005-03-13 10:56:17', '1979-08-09 11:04:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 46, 'eaque', 77173, 'y', '1984-12-10 03:54:56', '2008-05-21 23:57:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 47, 'facere', 807551388, 's', '1985-10-16 17:23:53', '2005-08-14 15:03:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 48, 'sit', 91408417, 'm', '1986-06-11 07:09:22', '1973-10-26 22:43:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 1, 49, 'ut', 6516, 'p', '1971-08-06 09:18:06', '1978-03-18 04:04:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 2, 50, 'sed', 625564415, 'f', '1988-02-10 12:12:04', '1979-05-13 23:37:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 3, 51, 'perspiciatis', 698942081, 'm', '1972-04-27 10:19:46', '2000-11-12 02:35:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 1, 52, 'soluta', 57, 'f', '1971-03-30 08:26:48', '1991-12-07 13:29:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 2, 53, 'eum', 58451, 'e', '1976-09-29 09:39:41', '2001-12-14 04:27:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 3, 54, 'porro', 5939, 'p', '2019-03-18 01:52:30', '2001-08-22 08:11:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 1, 55, 'ut', 7, 'w', '1987-09-09 17:22:07', '2009-02-25 15:35:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 2, 56, 'aut', 647749, 'l', '1994-11-22 05:07:11', '1979-08-29 10:45:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 3, 57, 'delectus', 14785202, 'q', '1991-11-20 16:13:59', '2016-09-15 03:00:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 1, 58, 'nisi', 99365, 'g', '1977-03-04 18:57:48', '2000-02-27 09:15:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 59, 'sapiente', 39, 't', '2014-04-03 11:13:17', '1986-10-10 03:40:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 3, 60, 'exercitationem', 297, 'f', '1996-10-06 07:04:23', '2013-12-03 02:47:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, 'cum', 46344836, 's', '1983-09-27 17:37:51', '1974-10-24 12:11:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 62, 'eligendi', 3516, 'b', '2004-03-21 19:17:15', '2010-02-22 10:20:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 63, 'eaque', 8670, 'c', '2018-03-14 01:31:42', '1983-05-29 21:39:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 1, 64, 'qui', 931, 'q', '1992-09-10 07:10:00', '2002-10-02 18:09:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 65, 'inventore', 0, 'r', '1985-11-27 05:59:58', '1984-08-12 11:13:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 3, 66, 'iusto', 2381, 'n', '2015-10-01 07:29:41', '1993-02-13 13:10:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 1, 67, 'aliquam', 67, 'w', '2018-07-10 23:48:54', '1977-10-31 03:10:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 2, 68, 'itaque', 43477, 'j', '1994-04-07 02:59:36', '1995-07-23 22:08:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 3, 69, 'porro', 1, 'w', '2003-09-06 16:36:37', '1982-09-23 21:34:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 1, 70, 'enim', 298377829, 'k', '1989-08-20 23:49:02', '2009-01-11 00:56:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 71, 'eum', 972898, 'g', '1984-07-21 14:50:25', '1982-12-15 09:00:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 3, 72, 'fuga', 1854280, 'e', '2010-10-13 08:13:10', '1989-02-17 21:49:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 1, 73, 'corporis', 678753515, 'm', '2011-10-01 00:46:45', '2013-09-01 09:20:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 2, 74, 'repudiandae', 468, 'i', '2001-04-09 09:23:49', '1975-07-21 10:47:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 3, 75, 'dolor', 180679661, 'w', '1988-03-30 22:37:13', '1983-08-04 21:14:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 76, 'et', 2544, 'a', '2005-11-18 11:45:44', '1997-11-29 06:39:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 77, 'itaque', 67790599, 'g', '1999-09-18 08:56:33', '1994-01-02 12:06:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 78, 'exercitationem', 265063, 'x', '1992-03-06 14:22:13', '2009-11-22 04:31:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 1, 79, 'itaque', 0, 'm', '1994-06-25 09:09:32', '1980-01-06 01:41:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 2, 80, 'harum', 9, 'n', '1971-09-01 03:29:40', '2003-08-14 11:37:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 3, 81, 'nostrum', 5393, 'f', '1997-03-25 16:11:06', '2002-05-31 07:37:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 1, 82, 'sit', 0, 'y', '1983-03-13 18:07:02', '1995-05-03 15:23:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 2, 83, 'nesciunt', 980843245, 't', '1988-01-28 13:03:30', '2009-01-15 17:44:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 3, 84, 'possimus', 1, 'x', '2008-10-02 12:36:25', '2004-01-27 05:06:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 1, 85, 'illo', 864812986, 'l', '1972-07-07 17:29:27', '2009-06-14 20:55:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 2, 86, 'voluptatum', 52, 'f', '1991-03-06 01:04:18', '2004-04-29 00:08:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 3, 87, 'vero', 3, 'e', '2000-04-16 02:24:15', '1998-12-14 11:27:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 1, 88, 'cupiditate', 31, 'p', '2011-08-31 06:47:32', '2014-04-04 08:13:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 2, 89, 'officia', 4531, 's', '1975-02-06 03:54:32', '1997-11-24 10:24:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 3, 90, 'eum', 0, 'b', '1976-03-24 10:48:53', '1997-07-21 06:28:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 91, 'eveniet', 3981, 'l', '1987-11-20 02:36:53', '1995-11-08 14:50:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 92, 'totam', 9482539, 'c', '1975-03-11 03:53:44', '1984-06-21 16:24:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 93, 'quo', 2321597, 's', '1995-10-09 08:55:09', '2005-06-24 19:39:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 1, 94, 'id', 697552933, 'y', '1973-12-02 02:58:17', '1971-01-05 08:01:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 95, 'quia', 5287840, 'z', '2015-09-02 13:00:32', '1978-01-21 22:17:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 3, 96, 'natus', 143563, 'p', '2016-06-10 08:03:29', '1986-04-02 02:19:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 1, 97, 'sit', 1203464, 'u', '2018-01-01 07:31:27', '2018-09-13 23:37:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 2, 98, 'commodi', 666, 'v', '1998-04-21 05:56:28', '1973-01-21 01:09:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 3, 99, 'neque', 786, 'm', '1979-11-08 13:52:45', '1981-10-27 19:59:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 1, 100, 'similique', 9217, 'k', '1972-07-24 21:25:12', '2008-02-24 07:20:57');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'видео');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'музыка');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'фото');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 63, 65, 'Quos in ea sint ea alias et. Deserunt laudantium voluptas rerum hic. At ut ut iure in adipisci.', 1, 1, '1996-11-17 05:18:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 27, 76, 'Nam rerum hic est. Sequi iste tempore sunt illo. Quisquam dolor reprehenderit et magni sint quidem laudantium.', 0, 0, '2011-11-19 05:27:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 48, 46, 'Id alias suscipit id impedit facilis ducimus. Et hic inventore similique consequatur. Molestiae necessitatibus reprehenderit officiis non.', 0, 0, '1980-08-28 08:19:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 28, 98, 'Autem velit ab similique distinctio culpa fugiat quasi. Voluptatem delectus animi minima quia. Eveniet quia ea quod ipsum veniam saepe.', 0, 1, '1972-01-30 07:59:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 10, 66, 'Eum aperiam nulla consequatur atque fuga rem ut. Nesciunt possimus ex aut ducimus quaerat velit. Vero occaecati nihil qui ea velit quas commodi. Non doloribus minus molestiae voluptas libero facilis delectus.', 1, 0, '1973-02-10 05:57:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 56, 48, 'Rerum et aliquid at. Dolores et qui praesentium ut a. Iste voluptatem et nihil quam sed sed non.', 0, 0, '2019-02-16 02:49:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 56, 91, 'Voluptatem unde in nisi illum qui nesciunt temporibus. Nobis vel vero eaque. Voluptate sit aut debitis occaecati.', 0, 1, '2011-04-26 22:20:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 49, 1, 'Ipsam fugit accusantium fugiat tempore aliquam. Aliquam libero eveniet molestias voluptatem vel eum consequatur eum. Adipisci inventore inventore hic excepturi. Sunt quis assumenda nihil.', 0, 0, '1994-04-20 19:09:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 74, 60, 'Nihil est quod et. Minus sed nam a dolorem blanditiis consequatur. Iure et inventore id sit mollitia esse asperiores. Quod est adipisci aut aspernatur.', 1, 0, '2019-11-23 21:15:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 96, 5, 'Reprehenderit quasi quibusdam dolores. Qui rerum iste architecto enim et officiis. Ea molestias id itaque consequuntur maxime. Voluptates eos qui illum amet quis dolor rem.', 0, 0, '2006-01-19 23:15:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 48, 3, 'Ut corrupti quis quasi quo amet veniam. Mollitia eligendi sed corporis harum. Dolorum explicabo quaerat et et.', 0, 0, '1994-07-24 03:05:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 31, 100, 'Voluptas earum consectetur ut optio. Tempora numquam necessitatibus voluptas ut. Quibusdam sed modi deleniti nihil et nisi eos delectus.', 1, 1, '1975-01-05 22:17:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 34, 64, 'Qui nemo velit quae nostrum amet ab. Qui suscipit maxime et error et. Earum autem autem est accusamus. Officia beatae atque non excepturi quis nulla perspiciatis.', 1, 0, '1988-08-14 12:51:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 13, 67, 'Voluptatum rem maxime necessitatibus totam repudiandae inventore. Est libero beatae vero nihil architecto unde nihil.', 0, 0, '2001-12-12 04:06:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 17, 2, 'Doloribus velit dolor pariatur molestias. Amet hic accusantium nemo ea rerum minima tenetur. Nihil beatae exercitationem repudiandae quasi ab molestiae deleniti.', 1, 0, '1983-12-31 10:31:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 71, 87, 'Veniam provident ad autem. Ipsam tempore non ut quos possimus molestiae reprehenderit quis. Ut perferendis officiis libero totam aut perferendis eaque.', 0, 1, '1979-03-25 14:55:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 16, 63, 'A ea incidunt eos consequuntur expedita modi quo. Dolorem totam cumque quidem aut dolore quia. Maiores vitae ut praesentium suscipit minima est est.', 1, 0, '1995-11-30 07:54:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 39, 81, 'Fugit magnam sint a voluptas qui nihil id et. Rem assumenda dolorem voluptatem consectetur quae eligendi. Aut aliquam consequatur ut placeat. Tenetur officiis non explicabo.', 0, 1, '2017-10-12 10:06:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 83, 19, 'Quis fuga laborum aut quae. Repellendus ipsa molestias facere incidunt mollitia et. Rem accusamus non recusandae impedit consequuntur rem voluptatem.', 0, 1, '1972-06-06 03:45:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 13, 81, 'Nihil ipsam sed nulla dolor aut possimus aut. Tempore a temporibus sit libero voluptatibus culpa molestias. Sed ut eius repellat quibusdam pariatur libero. Iste rem adipisci praesentium odio hic. Quia omnis cupiditate eius rerum.', 1, 0, '2017-03-13 17:34:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 92, 4, 'Dolores ad doloremque aut. Quisquam quaerat itaque error. Consequatur quo corporis ut velit excepturi est quo.', 1, 1, '2016-09-30 21:01:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 12, 31, 'Labore voluptatem provident aliquid et et. Quaerat et ipsam est alias alias. Soluta sequi distinctio nihil qui ea harum. Rerum qui fuga officia excepturi.', 1, 1, '2001-12-13 06:49:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 12, 39, 'Quo animi voluptatem animi libero. Omnis nesciunt optio pariatur sed aspernatur. Aut quam aperiam quos aut et ad et ullam. Ut qui natus occaecati qui reprehenderit iste.', 1, 0, '2005-04-04 20:53:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 95, 25, 'Rerum harum et veniam inventore eligendi numquam est. Eaque corporis illum explicabo voluptatem et. Repellendus iste mollitia dolorem quis sint. Ut pariatur architecto sed vel.', 0, 1, '1978-01-26 21:29:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 56, 21, 'Explicabo praesentium corrupti earum deserunt maxime. Necessitatibus deserunt suscipit ut consequatur exercitationem earum in. Fuga minima velit ipsam enim dolore aliquid enim. Repudiandae numquam repellat vel vel non aut quasi. Itaque quae rerum neque beatae ut qui.', 1, 0, '2009-09-26 00:59:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 21, 2, 'Porro culpa tempore omnis voluptatum omnis. Hic quibusdam nihil consequuntur illum reprehenderit et quod itaque. Esse quia maiores tenetur fugiat commodi. Quasi necessitatibus quasi dolor. Labore fuga et quisquam facilis aut voluptatem.', 1, 0, '1992-06-06 08:42:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 88, 86, 'Omnis qui sit architecto ut soluta. Velit ut nisi non voluptatem sed voluptatem enim. Iure consequatur non odio voluptatem saepe. Minus voluptatem dignissimos beatae perferendis voluptatum.', 1, 0, '1989-08-12 04:40:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 24, 89, 'Voluptatibus molestiae voluptas hic repudiandae. Eligendi illum distinctio itaque dignissimos eaque ut. Impedit laboriosam rerum consequuntur neque consectetur aut quia blanditiis.', 0, 0, '1988-05-15 21:23:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 87, 9, 'Sunt quae laborum dicta. Consequatur consequatur fuga iure repellat voluptas inventore. Illo sed at esse et adipisci officiis quia.', 1, 0, '1994-09-06 14:13:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 50, 88, 'Et voluptatem sint rem. Consequatur accusantium quia neque impedit vel et unde. Aut quia distinctio impedit ut et non voluptatum.', 1, 0, '1982-02-12 22:12:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 75, 68, 'Tenetur et porro consequatur dicta. Reiciendis aspernatur natus quia aut repudiandae quia. Minima sunt minus officia quo. Sint est vel velit eaque.', 0, 1, '1972-07-06 01:10:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 90, 37, 'Hic nam ex eos qui. Corporis odio vel quibusdam aliquid. Tenetur magni rem nulla laudantium est eum. Quae aperiam eligendi quasi dolore est id perspiciatis.', 1, 1, '1976-07-01 01:26:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 67, 40, 'Nihil veniam impedit provident ipsam id. Eos optio et in sapiente ex praesentium maiores. Deserunt cum eaque quas sit quo. Repudiandae aut blanditiis sed.', 1, 0, '1995-06-01 19:55:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 11, 99, 'Et culpa enim nam voluptates ad. Fugit sit rem aperiam praesentium at temporibus ullam.', 1, 0, '2000-03-13 19:35:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 50, 24, 'Iusto voluptates ex ea in et. Cum qui ut fugiat vero quas sunt perspiciatis. Voluptates molestias officiis porro repudiandae repudiandae quibusdam tempora. Consequatur rerum dolores et aperiam illo iure asperiores recusandae.', 1, 1, '2015-01-04 16:09:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 84, 78, 'Sed dolores qui consectetur pariatur. Eligendi provident et laborum rerum quo. Minima dolorem iure quaerat explicabo maiores et. Quam laborum id officia.', 0, 0, '2018-05-14 11:26:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 99, 92, 'Culpa officia aliquam dignissimos. Praesentium quia illo quibusdam aut. Temporibus et a voluptas ullam aut.', 0, 0, '2008-07-13 15:22:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 54, 43, 'Laboriosam repellendus fugit unde beatae dolor et sint sunt. Laudantium quod facilis est voluptatem officia. Accusamus animi sunt omnis deserunt molestias omnis et.', 1, 0, '1983-10-21 12:29:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 98, 79, 'Et quia necessitatibus cupiditate quos eius libero. Ut quas et sunt harum voluptatem eos. Beatae et sit est iure voluptas voluptas dignissimos. Culpa blanditiis sunt animi quaerat vel quasi exercitationem.', 0, 1, '2000-12-09 01:42:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 87, 51, 'Deleniti excepturi asperiores corrupti id placeat dolore inventore tenetur. Nihil laboriosam iure vero eos cumque dolores non. Id facilis assumenda iure velit quia quae soluta. Fugit reiciendis ut vel et nulla nam facilis voluptatem.', 0, 1, '2018-04-22 13:44:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 79, 69, 'Omnis aspernatur ipsa illum quidem consectetur. Voluptatum dignissimos qui velit officia doloribus debitis. Ea sunt fuga blanditiis qui vero ex officia eveniet. Fugit nobis magnam et alias accusantium ipsam asperiores.', 1, 1, '1988-05-09 22:26:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 35, 89, 'Rerum explicabo quae voluptas rerum molestiae quo quas. Facere molestiae expedita at et. Animi expedita assumenda doloribus quo voluptatum. Eos ea corrupti aliquam.', 1, 1, '2016-09-18 12:01:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 62, 6, 'Nihil nisi sint ut dolorem odit aspernatur in. Necessitatibus magni quo aut rerum omnis et et. Odio optio sit adipisci et praesentium.', 1, 0, '2011-02-15 22:58:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 65, 57, 'Non voluptates vel ducimus est voluptatem sit nostrum. Voluptatem totam molestias debitis sint quia iusto. Reiciendis doloremque id quia reiciendis quaerat est.', 1, 0, '2018-08-06 15:19:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 6, 50, 'Modi molestias odio et. Magnam cumque aliquid numquam ad rerum et. Esse voluptatem harum dolorem ratione est mollitia minus. Magni voluptates voluptatem dolorum et.', 1, 1, '1972-04-20 05:08:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 7, 3, 'Illum deleniti facere odio eius delectus. Et accusamus dolor corrupti dolor laboriosam nobis debitis recusandae. Et laudantium nobis ipsum magnam inventore.', 0, 0, '1973-06-01 07:49:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 31, 71, 'Qui omnis vel consequatur id aut eveniet. Porro sit ipsa libero et ea odio et. Quis consequuntur et possimus deleniti. Omnis in quo adipisci harum fuga.', 0, 0, '1988-01-10 07:43:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 92, 59, 'Neque sit ratione nihil id sed sapiente. Corrupti molestiae id exercitationem tempore sint alias voluptatem nisi. Molestiae totam delectus fuga quasi. Harum amet temporibus voluptate voluptatem.', 1, 1, '2017-08-26 23:23:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 26, 75, 'Eum ut libero aut aut maxime accusantium temporibus. Dicta ad maiores necessitatibus sint voluptatem optio. Eos asperiores eveniet et tenetur. Harum rem aspernatur est fugit distinctio modi.', 0, 0, '2010-07-13 01:44:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 38, 8, 'Similique earum quis harum natus consequatur. Sit id nesciunt laudantium fugiat qui. Occaecati quas delectus vitae sed vel dicta et.', 1, 1, '1974-06-29 04:44:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 53, 74, 'Enim magni neque nam consequatur unde qui eveniet. Autem quo consequatur consequuntur expedita sit enim tenetur. Itaque cupiditate unde dicta odit repellat. Ut omnis animi vitae qui aut neque maxime.', 1, 1, '1972-03-10 12:25:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 79, 55, 'Illo sequi magni laboriosam et sit veritatis. Consequuntur dolores eos placeat.', 0, 0, '1995-07-17 02:02:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 69, 25, 'Magnam neque quisquam aliquam harum. Aperiam non exercitationem et quod quia sit saepe ex. A alias aut laborum est. Repellat alias sit cupiditate aut recusandae.', 0, 1, '1980-07-21 10:39:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 8, 49, 'Non veniam rerum minima quo sapiente nobis voluptatem. Magni deserunt autem id dolorem. Ipsa sit consectetur consequatur laborum laudantium.', 0, 0, '1989-03-24 00:49:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 64, 53, 'Quo minima quidem eos voluptas dolore et quaerat. In voluptatem iusto velit aut facilis. Perferendis dignissimos et at iure.', 1, 1, '2019-06-23 03:32:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 48, 58, 'Voluptatem nisi at consequatur ab quas. Consequatur in maxime enim. Qui non consequatur dolorem nostrum in exercitationem. Et tenetur ad ducimus aut aut et.', 1, 0, '1981-02-28 07:23:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 20, 82, 'Praesentium ut quam labore perspiciatis. Dolores est dolorem reiciendis eum. Incidunt nulla nesciunt non quae.', 0, 1, '1970-02-18 14:49:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 15, 89, 'Est asperiores harum id nihil dolores. Voluptas et occaecati reiciendis nesciunt officia est perferendis. Iusto sit enim sit quos. Delectus omnis ipsam consequuntur.', 0, 0, '1988-07-01 05:59:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 2, 93, 'Ut voluptas consequuntur qui. Dolores iusto fugit illo modi suscipit. Totam sit veritatis est voluptas voluptates.', 0, 0, '2001-06-17 15:35:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 62, 23, 'Et assumenda suscipit soluta maxime. Ut aut laudantium quis. Qui fugiat et inventore voluptates quae. Quisquam maiores id laborum qui.', 0, 1, '2009-11-28 17:43:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 75, 40, 'Voluptas error similique sit magnam corporis. Nostrum assumenda fuga expedita itaque ut. Aut sit voluptatibus doloribus.', 1, 0, '1988-06-18 18:35:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 30, 30, 'Nihil in aliquid repellat eos aliquam dolore dicta. Incidunt aperiam sequi minima. Repellat atque voluptatem eos repellendus et et harum. Amet at maiores distinctio cumque neque dolor.', 1, 1, '2002-11-27 15:01:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 68, 79, 'Et id ut iure sunt provident eligendi omnis architecto. Aut necessitatibus vitae adipisci voluptate qui voluptatibus nobis labore. Doloribus ducimus corporis voluptatem excepturi ratione sint est.', 1, 0, '1971-08-14 12:38:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 77, 78, 'Blanditiis tenetur sed esse illo nulla. Ut ut aut reiciendis sit. Quidem nesciunt sed quae ratione.', 0, 0, '2017-02-25 04:32:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 27, 21, 'Facere fuga voluptas eum quo sit. Repellat est quos fugiat. Ullam nihil excepturi occaecati enim velit amet sapiente. Aliquid odit sit quis hic quisquam ut aut praesentium. Laboriosam ut voluptatem facere laudantium eaque fugit odio.', 1, 0, '1996-02-02 21:08:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 93, 49, 'Nihil aliquid cumque quisquam nihil est vero ut. Sint quis ex molestiae itaque. Nobis et sed officiis quia omnis.', 0, 1, '1999-12-02 01:26:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 80, 44, 'Modi natus voluptates ut quaerat provident. Vero aut laboriosam quis quia. Impedit sit culpa et veritatis repellat eveniet. Et atque minima ex et ratione omnis libero.', 1, 0, '1990-03-12 13:11:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 39, 40, 'Ipsum delectus vero ea. Doloremque ut odio adipisci. Omnis vero sed provident quos expedita ut facilis. Deleniti praesentium reprehenderit quaerat tempora reprehenderit asperiores dolor. Fuga nostrum aut saepe est eius sed vel.', 0, 1, '2013-04-26 12:59:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 2, 4, 'Quod eos et rerum aperiam. Autem quo sint cum et quia corporis neque praesentium.', 0, 1, '1992-06-25 06:00:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 73, 20, 'Exercitationem ea expedita voluptas quos aut enim qui. Porro eos soluta quasi voluptas consequatur. Qui autem illo deserunt minus officiis repudiandae. Accusamus minima numquam error occaecati nemo natus laudantium.', 0, 1, '1978-11-01 19:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 12, 13, 'Hic ad occaecati delectus laboriosam doloremque sapiente. Quam rem quas quisquam et laudantium officia repellat. Dolores velit dolor iure.', 0, 1, '2007-06-13 01:06:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 35, 57, 'Aut velit illum praesentium similique soluta. Perspiciatis non quasi velit quia est consequuntur. Ullam temporibus et culpa.', 0, 0, '1976-01-11 19:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 63, 76, 'Expedita atque perspiciatis fugiat sed corrupti nemo sit. Eos ea nam quia. Incidunt sequi et ut eos ea sed. Vitae et est et fuga rem voluptatem et. Porro delectus ut ipsum quos asperiores nihil nobis.', 0, 1, '1995-11-05 21:34:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 20, 80, 'Quo cumque ad et possimus in qui sunt. Doloribus autem voluptates quis.', 0, 0, '1975-03-05 15:56:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 16, 13, 'Enim nihil culpa exercitationem et omnis culpa ex. Voluptas et velit eius sed necessitatibus. Qui veritatis quos assumenda incidunt quia nam distinctio.', 0, 1, '1980-03-24 21:24:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 93, 84, 'Totam modi delectus velit. Quod laboriosam sit voluptate accusamus. Consequatur ut nihil reprehenderit accusamus.', 1, 1, '2018-01-25 09:22:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 57, 7, 'Est architecto alias aut sunt porro vitae. Quia et recusandae atque voluptatem sit ea. Et cum beatae esse ipsum.', 1, 1, '1995-01-18 19:54:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 36, 15, 'Fugiat blanditiis molestiae voluptatum illum est voluptatem. Nesciunt nostrum voluptatibus quis.', 1, 0, '2003-02-01 00:49:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 77, 29, 'Atque ut est occaecati aut alias. Voluptatem ea et vel deleniti sint omnis accusantium. Officiis quo cum esse et perferendis nisi qui. Sed sunt numquam aut.', 1, 1, '1999-08-20 15:21:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 95, 58, 'Dolor voluptas ipsam quam veniam voluptatem quibusdam nostrum. Voluptate facere est sit suscipit id quis. Ut omnis rerum sed perspiciatis. Qui nulla praesentium odit.', 1, 1, '2010-06-02 08:08:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 12, 36, 'Rem harum deleniti vero quisquam qui distinctio. Magni est facilis nostrum consequatur. Eum labore mollitia ea doloribus.', 0, 1, '2011-08-04 15:37:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 96, 61, 'Qui odio atque quia dolore est beatae dolore. Voluptas delectus quia nam fuga quia. Deleniti ea et dolor dicta sed voluptates sed. Adipisci dicta iure commodi vel.', 1, 0, '2018-06-01 11:23:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 93, 32, 'Sit eaque impedit voluptas dolorum quod nostrum. Impedit assumenda reiciendis adipisci ut. Asperiores id aut quia nam quis.', 0, 1, '1973-07-31 19:31:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 65, 17, 'Id ipsam distinctio dolor ad. In cupiditate laborum eveniet sequi quia. Reiciendis eveniet nam qui numquam.', 0, 1, '2013-03-20 10:30:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 7, 43, 'Et pariatur aperiam aliquid culpa. Similique rerum esse impedit fuga illo ut ut. Voluptate iusto non ipsum.', 0, 0, '2007-06-02 13:22:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 8, 98, 'Qui nobis illo sunt quae voluptatem totam cupiditate ea. Iure et aut dolor. Incidunt fugiat perferendis voluptatibus quae.', 1, 0, '1996-07-08 04:52:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 72, 95, 'Ipsam ab voluptatem qui sed. Sint et impedit ea dolores illo fugit hic neque. Et aliquam explicabo corporis voluptatem placeat fugit. Possimus consequatur dolor doloremque autem. Quos rem alias voluptas nobis.', 1, 1, '2003-03-10 05:08:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 76, 31, 'In molestias non ea deleniti qui architecto. Assumenda consectetur ullam omnis nostrum distinctio. Sit similique dolore ut omnis architecto cumque. Numquam cumque delectus voluptatem ipsa recusandae quibusdam amet.', 1, 0, '1985-06-04 17:30:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 35, 46, 'Et magnam necessitatibus consequatur cum commodi. Incidunt quas ut ex voluptatem dolore et occaecati. Ducimus nisi ipsum doloremque recusandae molestiae. Minus velit ullam magni illo earum eum.', 1, 0, '2010-08-28 22:01:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 70, 55, 'Eum aut ut harum ut enim assumenda et. Repellendus nemo vero quam et ratione. Esse labore eum repudiandae animi voluptas reprehenderit.', 1, 1, '2008-03-01 02:58:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 81, 78, 'Aliquam consequuntur quas vitae fuga praesentium autem nam. Qui sed illum eos sit eveniet quidem quidem. Expedita iusto est sunt. Ipsa numquam odio et velit odit. Atque corrupti sed nemo nihil magni voluptatibus sapiente.', 1, 1, '2011-11-04 20:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 91, 38, 'Quos laborum qui impedit sit. Sit ab non perferendis eius et ut.', 1, 1, '2013-05-16 21:19:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 12, 69, 'Vel voluptatem ullam occaecati accusantium ducimus. Id fugiat possimus ipsam fugit quia vel minus. Eaque doloremque adipisci iste et vel quia aut.', 0, 1, '2014-08-10 12:04:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 32, 91, 'Modi dolorem quaerat sed omnis sed neque. Corrupti perferendis dolores et id neque exercitationem.', 0, 1, '2006-03-29 03:56:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 39, 15, 'Est ut ut dolor quo. Hic quia qui qui velit omnis. Eum cumque aut qui ipsam ipsa eos sint qui. Exercitationem dicta deleniti sint ipsam quaerat sapiente voluptatem amet.', 1, 0, '1991-04-03 17:44:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 5, 10, 'Voluptatibus dicta aliquam doloremque id. Nulla sunt velit dignissimos tenetur fugit aspernatur consectetur. Perspiciatis odio alias reprehenderit dolor rem assumenda placeat delectus.', 1, 1, '1981-01-18 22:32:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 8, 85, 'Maiores culpa ad quia a quidem commodi. Velit autem voluptatem voluptatibus sed asperiores. Et repudiandae asperiores tempora blanditiis doloribus. Est ipsa illum accusamus qui quisquam corrupti nobis nam. Voluptas aut molestias provident nihil sit modi illo maxime.', 0, 1, '2004-04-29 04:59:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 80, 99, 'Quisquam itaque ex cupiditate atque quaerat voluptatem id. Nam iste quasi enim a iure. Quisquam fuga tenetur corrupti impedit qui officiis eveniet soluta.', 0, 0, '1990-05-14 18:18:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 43, 25, 'Ipsam perspiciatis rerum et ea ut ipsa eos. Dolores quisquam cupiditate facilis nihil quam sequi et. Illum quaerat quia consequatur. Officia vitae dicta atque in.', 0, 0, '2016-02-17 03:02:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 3, 86, 'Et ullam nulla labore quos. Molestiae quod quam sit error hic fuga velit. Aut necessitatibus est necessitatibus dolorem voluptate.', 0, 0, '2012-07-01 13:39:41');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (1, 'f', '1986-01-07', 'New Adriannahaven', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (2, 'm', '1982-01-28', 'Lemkehaven', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (3, 'f', '1996-12-29', 'South Michelchester', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (4, 'f', '1998-10-04', 'West Newell', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (5, 'm', '2011-02-19', 'Rosenbaumland', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (6, 'm', '1997-03-13', 'DuBuqueville', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (7, 'm', '2004-06-12', 'Lake Lindsayburgh', 26);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (8, 'f', '2009-08-23', 'Willmsside', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (9, 'm', '1974-01-15', 'West Keara', 18);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (10, 'm', '2000-06-13', 'Treutelburgh', 55);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (11, 'f', '1989-02-04', 'Flavieshire', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (12, 'm', '1982-05-23', 'Sophiechester', 79);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (13, 'm', '1990-12-19', 'Fordfort', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (14, 'm', '1978-08-22', 'Lake Enola', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (15, 'm', '1975-12-14', 'Jannieberg', 89);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (16, 'f', '1979-09-23', 'Hirtheland', 39);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (17, 'f', '2001-07-23', 'Moenchester', 66);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (18, 'm', '1973-02-04', 'North Jimmy', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (19, 'm', '1975-05-03', 'East Noble', 10);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (20, 'f', '1995-04-10', 'Layneville', 86);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (21, 'm', '2014-11-18', 'Port Demondfort', 94);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (22, 'f', '1984-11-24', 'Schmelerberg', 79);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (23, 'f', '1992-08-18', 'Immanuelmouth', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (24, 'f', '1971-12-23', 'Dickinsonhaven', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (25, 'f', '1975-07-05', 'East Barrettborough', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (26, 'f', '2010-01-14', 'New Eliborough', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (27, 'f', '1996-05-02', 'West Ayla', 99);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (28, 'm', '1995-09-26', 'Robbberg', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (29, 'f', '1977-05-29', 'Skileschester', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (30, 'f', '1979-11-29', 'East Allanbury', 16);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (31, 'm', '2010-06-20', 'Lake Cathy', 56);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (32, 'f', '1987-10-29', 'East Doris', 36);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (33, 'f', '1979-09-10', 'Emardhaven', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (34, 'f', '1988-11-21', 'West Vida', 39);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (35, 'm', '2004-05-21', 'Charityview', 31);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (36, 'f', '2018-07-11', 'Lake Alfredaborough', 49);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (37, 'm', '1976-01-23', 'Vivaberg', 57);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (38, 'f', '1991-12-29', 'Deckowfort', 16);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (39, 'f', '2015-07-09', 'O\'Connershire', 98);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (40, 'f', '1997-01-08', 'Barrowsfurt', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (41, 'f', '2009-07-28', 'Bridietown', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (42, 'f', '2010-08-07', 'Lake Altaside', 78);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (43, 'f', '1979-06-27', 'Nienowland', 40);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (44, 'f', '1980-12-20', 'West Lavonside', 73);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (45, 'm', '2006-08-18', 'West Nayeliville', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (46, 'm', '1975-05-31', 'Reillyside', 7);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (47, 'f', '2010-12-27', 'North Savanah', 90);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (48, 'f', '2010-07-26', 'Jamarport', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (49, 'm', '1971-12-01', 'South Louie', 64);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (50, 'm', '2016-07-18', 'Jamisonstad', 56);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (51, 'm', '1987-05-13', 'South Lucinda', 46);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (52, 'f', '1975-10-15', 'Hershelburgh', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (53, 'f', '2012-06-07', 'North Jadyn', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (54, 'm', '1987-09-24', 'Strackeport', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (55, 'f', '1983-03-22', 'Veumtown', 87);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (56, 'm', '1970-02-23', 'Abbymouth', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (57, 'm', '1977-04-04', 'Jasmintown', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (58, 'f', '1985-04-10', 'Claudport', 90);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (59, 'm', '1976-05-25', 'Port Ellisborough', 96);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (60, 'f', '1992-05-02', 'Gorczanyborough', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (61, 'm', '2014-11-19', 'Lake Jarrett', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (62, 'f', '1995-08-28', 'North Flavieside', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (63, 'f', '2018-10-15', 'Rudyside', 67);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (64, 'f', '1974-10-09', 'Elroyfort', 50);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (65, 'm', '2002-05-06', 'Lake Janaport', 92);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (66, 'f', '1983-11-07', 'East Lorainehaven', 74);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (67, 'f', '1991-03-16', 'North Bart', 51);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (68, 'm', '2010-05-21', 'Schustertown', 43);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (69, 'm', '2001-07-26', 'New Reecetown', 98);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (70, 'f', '1995-10-10', 'Emoryside', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (71, 'm', '1980-05-09', 'Port Norwood', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (72, 'm', '2009-12-10', 'Lake Kaceytown', 41);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (73, 'm', '2008-10-27', 'New Jeromyville', 11);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (74, 'f', '1988-06-17', 'Adrianville', 27);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (75, 'f', '1991-03-01', 'Roobville', 94);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (76, 'f', '1985-06-10', 'Nadermouth', 36);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (77, 'f', '1996-06-14', 'New Felicita', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (78, 'm', '2010-05-22', 'North Josefa', 35);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (79, 'm', '1992-05-25', 'East Afton', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (80, 'f', '2007-12-24', 'West Baron', 12);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (81, 'm', '1990-09-27', 'Jamarcusmouth', 80);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (82, 'm', '2011-11-02', 'Lake Naomie', 97);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (83, 'm', '2012-08-20', 'Runolfssonbury', 42);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (84, 'm', '2010-01-23', 'West Oswald', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (85, 'f', '1975-10-18', 'Port Kaden', 75);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (86, 'm', '2008-08-26', 'Isaiasburgh', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (87, 'f', '1993-10-26', 'Barbaraland', 64);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (88, 'f', '2013-08-03', 'Eloisaton', 86);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (89, 'f', '1981-01-13', 'East Alizemouth', 52);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (90, 'm', '1976-11-04', 'Roobview', 30);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (91, 'f', '2005-06-16', 'Lake Murl', 87);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (92, 'm', '2007-03-15', 'Augustaberg', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (93, 'f', '2007-07-15', 'Laurinebury', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (94, 'm', '1978-06-27', 'Ameliaport', 43);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (95, 'm', '1981-11-03', 'North Carissastad', 95);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (96, 'f', '1987-03-15', 'West Savanahland', 94);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (97, 'f', '2008-12-16', 'Hyattfurt', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (98, 'f', '1972-08-31', 'South Meredithfort', 28);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (99, 'f', '1991-10-05', 'Dwightshire', 1);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (100, 'm', '2005-12-26', 'New Marcelo', 49);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Jailyn', 'Miller', 'tkoepp@example.org', '309-917-5450x2444', '1974-09-17 06:38:42', '1984-02-14 23:33:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Timothy', 'Collier', 'antonia25@example.net', '1-232-389-9368x6514', '1996-07-18 20:13:25', '1991-05-16 02:23:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Elna', 'King', 'gorczany.carmen@example.net', '1-040-256-3588x603', '1990-05-02 10:01:26', '2000-09-15 23:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Ottilie', 'Hermann', 'ivonrueden@example.org', '01440740816', '1997-03-24 03:08:01', '2008-03-07 07:06:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Keanu', 'Feest', 'wyman.sabina@example.org', '01850840866', '2000-06-04 16:37:26', '2006-12-12 04:27:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Rodger', 'Schiller', 'parker.hubert@example.org', '244.148.9891', '2010-10-20 18:18:07', '2009-10-20 14:15:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Randi', 'Krajcik', 'mohr.orland@example.com', '(457)546-2319', '2017-07-01 17:13:30', '2004-02-25 03:22:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Joesph', 'Olson', 'acrona@example.net', '(945)727-3043x9189', '1971-01-18 10:10:07', '2014-12-02 12:51:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Shayna', 'Turcotte', 'tbayer@example.com', '(425)278-7836', '2002-07-19 01:36:33', '2007-02-01 02:39:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Julio', 'Schneider', 'novella58@example.org', '925-907-4796x989', '2011-07-27 07:17:34', '1984-10-18 04:14:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Chris', 'Schoen', 'devonte27@example.com', '(956)165-6547x90924', '1997-05-25 13:14:33', '2012-04-13 04:49:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Wilson', 'White', 'ushanahan@example.org', '451.406.9372x1101', '1977-04-13 01:08:45', '1981-02-12 05:07:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Elian', 'Morar', 'violet04@example.net', '1-588-634-3497', '2009-09-12 04:22:36', '1983-02-27 03:15:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Christophe', 'Williamson', 'hyatt.major@example.net', '589.741.1489x38045', '1997-04-19 04:04:38', '1998-08-27 19:35:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Brook', 'Bradtke', 'sawayn.herminio@example.org', '1-734-605-0556', '2004-02-29 16:03:52', '1993-09-19 17:19:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Marquise', 'Osinski', 'sierra.leffler@example.com', '096.816.5971x08801', '1994-02-15 16:21:27', '1977-12-03 07:02:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Quincy', 'Kunze', 'rzieme@example.org', '07662408713', '1984-11-07 19:34:05', '1978-10-08 10:51:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Elliot', 'Howe', 'garrison.schroeder@example.org', '1-781-118-9082', '1982-03-21 14:06:30', '1994-07-17 05:23:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Bobbie', 'Lesch', 'nanderson@example.com', '1-936-183-7598x128', '1980-08-10 19:25:23', '2019-09-03 17:57:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Irma', 'Reichel', 'gspencer@example.org', '1-323-145-4498x9043', '1972-12-21 18:33:42', '1983-01-30 05:05:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Joelle', 'Connelly', 'grant.dolly@example.com', '07979832985', '1972-07-24 06:40:55', '2002-08-28 01:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Palma', 'Murphy', 'ashleigh.beer@example.net', '1-105-862-7987x1050', '2005-12-19 22:18:12', '2005-06-23 00:56:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Kiley', 'Leffler', 'rau.talon@example.org', '1-416-970-7870', '1974-04-15 20:46:40', '1984-10-14 00:51:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Yessenia', 'Wolff', 'herman54@example.com', '933-983-9948x4020', '1984-06-10 04:08:35', '1998-12-16 05:29:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Ramona', 'Luettgen', 'wkoepp@example.com', '(848)927-9625x959', '1993-07-25 20:58:09', '1973-12-03 00:29:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Marcos', 'Morar', 'pouros.aaliyah@example.com', '620.802.5355x97615', '2017-01-28 23:38:06', '1978-07-19 11:23:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Gonzalo', 'Koepp', 'gilberto.ward@example.org', '305-848-4627', '1978-04-04 16:28:13', '1977-07-21 16:55:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Raheem', 'Monahan', 'maria53@example.net', '757.915.9826', '1988-08-15 03:00:38', '2003-01-20 06:35:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Nico', 'Bailey', 'wiley06@example.com', '1-038-620-8430x61882', '2002-12-28 09:47:57', '1980-05-07 18:15:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Torey', 'Lehner', 'clarabelle43@example.com', '788.298.0476', '1982-07-04 21:19:26', '2011-11-04 22:28:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Omari', 'Hansen', 'ycarter@example.net', '1-397-768-0086', '2010-10-07 02:28:05', '1987-10-10 13:54:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Tyrique', 'Yost', 'leannon.jeanette@example.com', '(407)557-9197', '1970-09-24 07:04:25', '2016-07-11 12:40:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Isaiah', 'O\'Conner', 'dolly11@example.net', '609-497-6491', '1982-06-26 17:03:58', '1988-03-09 15:51:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kari', 'Rodriguez', 'ubeahan@example.com', '(795)916-3093x08514', '2003-02-06 07:58:03', '1973-06-16 08:30:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Lily', 'Bins', 'amira.klein@example.com', '851-015-3705', '1985-09-11 17:56:42', '2006-01-02 09:50:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Drake', 'Frami', 'jconnelly@example.com', '(267)152-6967x4111', '2008-06-22 12:10:27', '1974-10-19 00:10:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Madaline', 'Sawayn', 'edd03@example.net', '1-318-552-3252x5981', '1973-03-23 12:42:57', '1984-11-02 07:13:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jonathon', 'Weissnat', 'brandon40@example.com', '1-883-937-0763x38179', '1988-11-18 02:49:16', '2006-10-22 02:15:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Darrel', 'Koelpin', 'ufunk@example.org', '866.852.9227x81416', '2008-08-25 05:44:42', '2001-08-23 17:30:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Dino', 'Breitenberg', 'gottlieb.holden@example.net', '501.944.7643x804', '1982-08-22 12:16:38', '2002-12-11 01:39:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Brody', 'Ryan', 'wiley70@example.com', '(542)254-8804', '2009-08-17 01:29:11', '1997-02-18 21:38:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Kris', 'Labadie', 'moen.bryana@example.net', '1-343-989-0236x80622', '2001-06-05 00:02:15', '1991-01-28 20:42:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Avery', 'Wintheiser', 'zschroeder@example.org', '208.961.9933', '1995-04-09 14:27:22', '2002-02-26 05:45:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Preston', 'Goodwin', 'lturner@example.org', '04745991655', '1982-10-30 11:38:19', '2009-09-11 19:29:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Carroll', 'Welch', 'schuppe.rebeka@example.com', '(269)761-2223x55211', '1977-11-12 07:47:53', '2002-09-05 17:41:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Kali', 'Kovacek', 'jan.bayer@example.net', '852.464.1164x22266', '2012-11-03 03:50:39', '2012-04-11 16:12:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Fredrick', 'Hagenes', 'stiedemann.dena@example.net', '958-606-1617x03679', '2003-09-21 00:46:44', '2009-07-31 06:02:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Clay', 'Collier', 'wfeeney@example.org', '02096530158', '2016-03-10 21:19:08', '2008-01-23 07:32:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Octavia', 'Bahringer', 'lisette.mann@example.org', '095-278-1895', '1976-10-23 06:54:30', '2009-01-27 20:05:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Kathryne', 'Schamberger', 'zrunte@example.net', '1-465-319-3955x522', '2005-02-14 17:55:42', '2017-04-17 08:03:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Morris', 'Christiansen', 'ymcdermott@example.org', '446.477.5622', '2010-10-02 05:42:39', '1994-02-11 12:23:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Jarod', 'Schowalter', 'beier.athena@example.org', '(699)873-8554x230', '2014-02-26 02:54:27', '2010-08-04 20:33:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Seamus', 'Turcotte', 'aletha67@example.org', '1-959-940-3533', '1976-11-27 07:17:26', '1983-01-27 01:58:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Cleve', 'Schultz', 'adelia.walsh@example.org', '+80(3)4526329526', '1986-08-23 14:23:11', '2011-07-19 20:54:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Darrell', 'Braun', 'champlin.lourdes@example.com', '(273)294-3347x2032', '1990-08-24 09:11:19', '2017-11-19 00:59:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Zachery', 'Jast', 'marquardt.rosendo@example.org', '360.147.5108x426', '2007-03-07 07:21:02', '2000-12-25 06:47:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Christina', 'Spencer', 'jovan86@example.net', '327-694-6206', '2002-02-03 18:04:35', '1993-06-29 15:30:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Yasmine', 'Jacobi', 'xupton@example.com', '(419)883-1197x964', '1973-03-03 01:46:56', '1991-08-21 16:56:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Arne', 'Mitchell', 'rosemary.keeling@example.net', '(247)466-5016', '2004-07-09 01:45:12', '2009-08-20 15:37:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Gilda', 'Paucek', 'phamill@example.com', '1-551-357-3312', '1988-07-16 01:15:53', '2005-12-16 16:00:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Keagan', 'Dietrich', 'pbarton@example.net', '(207)754-9467x858', '1994-12-05 22:30:45', '1996-03-03 19:15:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Abe', 'Graham', 'orn.favian@example.net', '1-815-112-3528', '2008-01-05 22:20:30', '2019-03-02 01:45:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Branson', 'Christiansen', 'jweimann@example.com', '(508)360-4902', '1987-03-12 09:12:34', '2006-04-14 21:22:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Antonetta', 'Parisian', 'owen33@example.com', '(493)449-9760x758', '1978-11-28 22:15:04', '1996-09-23 00:26:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Arlie', 'Langosh', 'kfriesen@example.net', '899.170.1188x4901', '2005-04-01 00:25:16', '2013-12-07 15:56:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Letha', 'Mosciski', 'zboehm@example.net', '05222760679', '1975-05-07 18:40:37', '2009-03-22 15:37:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Sister', 'Hammes', 'chaya03@example.net', '1-825-739-6800', '1994-01-21 00:15:17', '1986-07-16 10:06:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Lilyan', 'Trantow', 'hartmann.erwin@example.org', '328-156-3991x801', '2017-05-18 10:04:33', '2016-05-09 02:40:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Tierra', 'Reichel', 'gsanford@example.com', '053-441-3598x5903', '1986-09-29 02:25:52', '2005-08-28 20:58:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Vivienne', 'Homenick', 'amina34@example.com', '299.397.0570x64265', '2014-07-31 03:08:30', '2012-09-21 20:54:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Duane', 'Gottlieb', 'deron02@example.com', '(723)944-8423', '1994-01-08 13:08:50', '2003-12-12 12:31:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Bailey', 'Beier', 'ngaylord@example.net', '1-588-538-1934', '1973-02-18 22:00:28', '2016-08-25 12:58:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Lela', 'Hodkiewicz', 'alene43@example.net', '617-502-2791', '2004-01-11 22:26:04', '1993-09-06 13:41:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Alayna', 'Roberts', 'rath.kacie@example.org', '(969)070-5568x092', '2010-01-20 16:01:56', '1979-01-21 21:09:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Joan', 'Corkery', 'clarkin@example.com', '(206)760-8832x96849', '2006-02-03 09:58:43', '2003-04-17 14:40:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Joey', 'Murphy', 'milo55@example.net', '1-619-388-4767x34730', '2002-05-15 14:42:51', '2017-06-26 03:49:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Rogelio', 'Thiel', 'wiza.ethel@example.net', '035-739-8162x9007', '2007-05-06 15:10:54', '2010-08-08 14:18:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Gregoria', 'Metz', 'rrosenbaum@example.net', '00001421401', '2008-12-16 16:37:41', '1992-03-27 10:23:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Dee', 'Wilkinson', 'whettinger@example.net', '(851)164-2611', '2000-02-05 12:10:14', '1975-11-20 04:22:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Mohammed', 'Rau', 'fhayes@example.com', '143.017.1733', '2003-01-30 19:12:28', '2016-11-15 20:21:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'May', 'Larkin', 'shane71@example.org', '053-150-7724', '1997-12-23 10:32:45', '2008-12-05 18:36:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Jessika', 'Emmerich', 'ebba.gutkowski@example.com', '599-341-8631x652', '2000-02-26 18:05:12', '2013-03-28 15:07:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Alene', 'Hickle', 'reanna.bednar@example.com', '(641)003-5152', '1994-10-29 15:57:11', '1974-01-12 08:16:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Enid', 'Gutkowski', 'natalie89@example.com', '03495258475', '1978-10-16 22:35:10', '2013-05-17 21:48:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Mark', 'Bernier', 'aschumm@example.net', '486-858-7207x4770', '1999-08-25 11:41:56', '1993-07-26 08:18:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Cecile', 'Greenholt', 'mohr.kane@example.net', '1-289-364-9556', '2012-08-07 04:27:43', '2014-04-16 19:16:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Kyler', 'Strosin', 'von.bailey@example.org', '714.603.9420', '1990-04-10 11:56:59', '1988-12-27 18:25:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Bobbie', 'Cremin', 'jrutherford@example.org', '+11(3)7013330007', '1992-01-24 14:59:05', '1984-09-20 06:08:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Kristina', 'Koepp', 'sblock@example.com', '640-520-4573x33783', '2013-03-03 16:40:47', '2001-10-18 03:44:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Rhianna', 'Fisher', 'krajcik.nicola@example.com', '249-969-4163x445', '2018-07-23 10:25:32', '2005-07-11 15:50:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Stanley', 'White', 'aiyana.feeney@example.net', '(033)841-0574x9975', '2018-01-15 07:49:46', '1972-01-12 17:53:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Vidal', 'Rolfson', 'rgottlieb@example.org', '396.269.0297x306', '2000-10-02 13:22:28', '1991-08-10 23:38:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Leila', 'Doyle', 'larkin.vernice@example.org', '322-337-4919x89202', '2017-10-28 17:04:12', '2013-04-02 01:17:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Brice', 'O\'Conner', 'brett.homenick@example.net', '981-381-9767', '1999-02-22 23:41:37', '1992-06-07 12:23:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Ezequiel', 'Haley', 'crohan@example.net', '350-686-2101', '1994-07-21 18:43:05', '1992-05-07 05:56:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Justyn', 'Hirthe', 'bnitzsche@example.com', '(727)705-4923', '1998-11-27 01:23:02', '1990-02-19 02:34:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Maryse', 'Cruickshank', 'nolan.hegmann@example.net', '1-562-486-6946x277', '2008-08-30 20:57:11', '1972-03-17 16:41:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Gussie', 'Lindgren', 'markus83@example.org', '1-993-857-5667', '2011-10-09 01:49:43', '1984-05-28 16:14:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Leon', 'O\'Kon', 'jaylen.corwin@example.net', '124-920-3187x4848', '2011-08-20 12:03:58', '2010-05-31 22:14:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Brandy', 'Klein', 'abbigail.witting@example.net', '629-102-5238x36663', '1988-11-15 23:50:20', '1983-10-04 08:28:56');


-- Доработка 

UPDATE friendship SET user_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1);

UPDATE media SET user_id = (SELECT id FROM users ORDER BY RAND() LIMIT 1);
UPDATE media SET filename = (SELECT id FROM users ORDER BY RAND() LIMIT 1);

SELECT * FROM friendship;

CREATE TABLE meetings (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE,
scheduled_at DATETIME
);

CREATE TABLE posts(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
header VARCHAR(255),
body TEXT NOT NULL,
media_id INT UNSIGNED,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (1, 'in', '2005-10-18 10:25:43');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (2, 'minima', '1987-09-14 18:50:59');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (3, 'vitae', '2017-08-12 01:42:36');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (4, 'necessitatibus', '1995-02-21 20:48:59');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (5, 'aliquid', '2014-06-01 22:14:30');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (6, 'et', '1982-12-13 03:23:54');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (7, 'sit', '2010-09-07 06:14:29');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (8, 'vel', '2011-10-06 10:18:53');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (9, 'non', '1971-08-21 15:02:34');
INSERT INTO `meetings` (`id`, `name`, `scheduled_at`) VALUES (10, 'atque', '2017-10-11 07:07:55');


#
# TABLE STRUCTURE FOR: posts
#


INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (1, 2, 'ea', 'Natus ex error doloribus est expedita. Dolores libero ut expedita minima incidunt ut sed. Doloribus repellendus est autem saepe.', 27, '1976-06-11 02:14:04', '1983-09-02 08:30:46');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (2, 37, 'minima', 'Quod numquam repellat voluptatem eius cumque beatae laboriosam. Voluptas veritatis iste optio quasi sit magni distinctio.', 48, '1985-07-29 09:25:50', '1998-04-14 02:53:03');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (3, 15, 'tenetur', 'Sequi porro est quo quidem. Quam rem fuga dolorum aliquam necessitatibus voluptatem.', 38, '1986-08-16 05:54:26', '1982-11-06 17:49:57');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (4, 27, 'nihil', 'Possimus recusandae autem porro et dolorem. Non aut aut animi numquam aut. Iusto praesentium placeat cumque exercitationem doloremque ut possimus.', 18, '1996-05-24 09:52:44', '2017-05-15 12:27:45');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (5, 37, 'autem', 'Vero quis aut soluta incidunt. Quo aut est minima alias.', 34, '1979-04-15 21:13:18', '2005-11-27 07:21:58');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (6, 17, 'asperiores', 'Eum nihil veritatis magnam inventore neque voluptas. Error consequuntur optio ipsa quia voluptas aut est numquam. Ut esse et vero culpa et rerum.', 8, '1984-09-22 10:43:10', '1998-06-15 15:41:32');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (7, 25, 'magnam', 'Iusto harum doloremque praesentium ad non. Ut cupiditate explicabo praesentium sapiente. Unde dolor incidunt voluptas beatae velit sint aut.', 15, '1986-11-03 05:20:10', '1975-05-01 05:01:37');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (8, 14, 'mollitia', 'Sint et expedita explicabo dolor cum repellendus vel enim. Repellat deleniti sed corrupti aut. Beatae asperiores odio pariatur accusamus.', 88, '2004-05-12 19:53:21', '1970-03-27 23:23:46');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (9, 21, 'distinctio', 'Nulla tenetur laudantium sint accusamus quisquam non. Et eum voluptatem doloribus ut vitae aliquam sequi. Quaerat itaque assumenda praesentium. Exercitationem nobis a rerum aut pariatur eaque facilis.', 69, '2004-09-29 01:33:23', '1996-05-17 16:38:12');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (10, 14, 'blanditiis', 'Fuga neque tenetur voluptates voluptates. Est dolores quasi cumque et est impedit. Recusandae numquam ea est rem sint nemo dolore ut.', 47, '2004-10-11 19:22:16', '2005-08-30 23:43:31');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (11, 20, 'odit', 'Provident quibusdam aut ex magni porro quidem et. Consectetur quasi vel enim beatae id sed et.', 42, '1978-08-31 14:21:04', '1992-11-27 04:40:21');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (12, 12, 'ut', 'Sunt officia ut ratione earum quos soluta at. Veritatis dolorem beatae iste non non consequatur. Asperiores in qui optio et fugiat.', 65, '2015-01-30 15:20:27', '2018-07-18 17:32:42');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (13, 7, 'rem', 'Porro id voluptatem deserunt eum. Enim ducimus enim laboriosam. Eligendi dolor amet facilis tempora.', 19, '2019-07-04 05:38:12', '1999-10-31 05:02:45');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (14, 20, 'et', 'Atque vero quibusdam ad laudantium a explicabo velit. Quas laboriosam reiciendis nisi sit odit iusto. A illo quisquam qui in accusamus non sint.', 84, '2008-10-25 00:48:13', '1987-06-23 03:54:47');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (15, 35, 'repudiandae', 'Quae repudiandae non et in enim. Facere dolorum ratione laborum ut.', 88, '1980-11-08 14:54:59', '1979-05-06 01:27:56');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (16, 26, 'sunt', 'Optio et numquam voluptas. Non laboriosam sit exercitationem qui sapiente velit et sunt. Accusantium et quasi error. Consequatur et aspernatur laudantium praesentium voluptatem.', 2, '2002-12-21 19:20:11', '1997-12-17 20:07:43');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (17, 29, 'commodi', 'Voluptatibus adipisci ut facilis in voluptates nulla voluptas. Quia eveniet ad facilis rerum. Vero voluptas non odit nesciunt.', 52, '2007-11-18 08:44:51', '2019-02-01 21:35:04');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (18, 33, 'vero', 'Porro aut voluptates voluptatem. Dolorem tenetur mollitia ex odio et debitis ut nam. Aperiam dolorem illum quasi voluptatem iure iste quis incidunt.', 77, '2014-11-09 23:43:48', '2008-01-14 16:17:42');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (19, 3, 'fuga', 'Sint velit tempora quis excepturi autem voluptatem ipsum harum. Rerum quas delectus facilis aspernatur laudantium debitis culpa. Repudiandae consequatur qui assumenda tempora et sed.', 92, '1999-03-15 00:12:27', '2003-06-10 21:40:00');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (20, 37, 'eum', 'Ad exercitationem velit corrupti vel sint doloremque eligendi ducimus. Facere itaque consequatur quia molestiae natus saepe. Consequatur consequuntur neque quo earum animi odio.', 31, '2008-07-21 16:25:50', '1990-07-20 22:03:03');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (21, 32, 'necessitatibus', 'Similique officiis et id. Consequatur sit sed optio voluptatem eius assumenda. Aliquid quia provident aut qui repellendus tenetur dolor. Sequi aperiam dolore veniam voluptatem numquam ut.', 7, '2010-11-01 01:22:03', '1997-11-23 12:17:10');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (22, 14, 'dolorem', 'Quod doloremque deserunt et consectetur nam quis aut. Unde officiis dolor aut amet cum commodi molestiae aspernatur. Minima quis id et tenetur aperiam.', 5, '1992-09-01 09:30:01', '2012-06-10 19:30:17');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (23, 19, 'quasi', 'Magnam quae rerum dolores eveniet aut officia aut. Consectetur id non aut quia. Et atque nulla aut autem. Occaecati consequatur quod at voluptate eos id mollitia et. Explicabo eos aut odit aperiam.', 52, '2011-10-14 10:11:22', '2015-09-12 15:24:45');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (24, 29, 'aut', 'Inventore aperiam suscipit quae porro voluptatem quia. Dolorem ut delectus distinctio tempora. Natus omnis consequatur ullam corrupti. Voluptas aliquam quia quos ipsam.', 8, '2004-12-07 23:13:22', '1980-07-12 09:09:00');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (25, 7, 'ex', 'Sequi corrupti dicta quia et et. Quia nobis mollitia unde temporibus beatae. Tenetur quisquam officia vero perferendis eum provident. Repudiandae maxime voluptatum et aut non minus.', 72, '1979-02-15 20:34:06', '1977-06-10 00:38:12');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (26, 3, 'eligendi', 'Molestiae aliquam veniam velit magni vero numquam voluptatem. Soluta aliquam consequuntur aut quo. Molestias et minus cum aut. Facere quidem dignissimos ut provident voluptas.', 96, '1989-03-09 06:04:21', '1973-06-27 19:36:46');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (27, 13, 'non', 'Nesciunt rem consequatur aperiam est vitae. Quibusdam saepe numquam sunt eos. Et debitis tempore qui nobis et consequatur officia consectetur. Perspiciatis qui ea suscipit itaque doloremque deserunt. Quasi et necessitatibus dolores ut modi fugit nostrum.', 38, '1988-01-13 17:08:23', '1990-08-18 23:49:36');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (28, 23, 'quisquam', 'Quia aut accusamus impedit officia optio totam. Ut deleniti voluptatum et nulla reprehenderit. In nesciunt excepturi distinctio alias facere. Qui et incidunt commodi rerum.', 73, '1987-05-30 17:47:24', '1990-08-31 20:11:01');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (29, 15, 'eaque', 'Quidem sunt error aut rem libero. Dolore voluptatem quasi reiciendis quis omnis. Non nostrum enim et adipisci. Quo eius beatae reprehenderit iste.', 61, '1972-01-05 08:05:26', '1976-02-18 19:04:59');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (30, 8, 'et', 'Praesentium corporis reprehenderit voluptatem non quidem. Corrupti voluptatem dolores et vel fuga sit. Amet qui neque odit est harum. Rerum nihil provident totam et atque quia qui. Officiis et quia consequatur voluptatem.', 5, '1982-10-21 16:03:52', '2015-11-03 06:11:10');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (31, 28, 'asperiores', 'Distinctio quibusdam rerum qui omnis. Sed ea dicta laudantium velit atque. Repellat minima numquam aspernatur esse. Enim laboriosam quidem quis quisquam natus.', 10, '1975-08-14 14:54:01', '1973-05-11 07:58:02');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (32, 11, 'nemo', 'Rerum dolorum consequatur et similique odit. Hic enim veniam impedit optio quos voluptatem. Sequi nihil ducimus sunt quia dolorem reiciendis voluptatem sit. Voluptate aut quia et accusantium.', 2, '2008-01-27 07:46:17', '2002-12-24 10:19:49');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (33, 37, 'quidem', 'Sit aut veniam et ut. Qui aut molestiae minima ipsa ipsam veniam molestiae. Corporis dignissimos sunt consequatur aut.', 13, '1980-01-16 05:28:18', '2008-07-30 23:30:26');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (34, 4, 'voluptas', 'Temporibus nostrum perferendis fugiat laborum ea illo reprehenderit aspernatur. Nesciunt fuga voluptatem porro asperiores.', 1, '1988-07-09 16:32:24', '1987-02-15 22:17:19');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (35, 40, 'autem', 'Quaerat soluta enim eos sed et dignissimos ut. Aut sequi architecto soluta libero. Accusantium iure velit accusantium repellendus. Esse error cum labore ex sequi et soluta in. Mollitia ut molestiae atque atque consectetur dignissimos.', 97, '1971-08-15 05:14:05', '2011-08-20 21:07:55');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (36, 17, 'qui', 'Nihil eos repellat libero suscipit. Sint quia quos praesentium culpa. Ea ducimus eligendi voluptatibus modi.', 23, '2016-06-07 06:15:39', '2009-07-27 04:59:45');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (37, 9, 'nesciunt', 'Quo est asperiores non odio voluptas. Dolores alias distinctio sapiente similique corporis accusantium nihil magni. Nesciunt eos ut omnis. Quaerat quod illo quas incidunt. Sapiente nulla necessitatibus adipisci officiis et reiciendis veritatis.', 10, '1975-06-08 12:02:29', '2001-09-07 03:47:50');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (38, 20, 'excepturi', 'Suscipit et consequatur possimus ut. Accusantium sit in ad excepturi quibusdam sit debitis. Placeat sunt fugiat repellat fuga cumque.', 18, '1989-12-30 02:22:16', '2010-12-03 01:07:00');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (39, 14, 'est', 'Esse velit iste facere natus maiores. Asperiores ut voluptatem quisquam fugit incidunt. Sed debitis suscipit ut ducimus id.', 13, '2014-12-12 01:45:15', '2011-01-28 19:02:36');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (40, 5, 'sed', 'Ut cum aliquam praesentium perspiciatis suscipit eum. Error beatae ex voluptatem sunt possimus aut fugit.', 66, '1993-03-03 12:25:22', '2009-10-28 09:56:40');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (41, 36, 'veritatis', 'Ducimus enim possimus ipsa reprehenderit voluptas. Possimus magnam et illum voluptatem eum. Ratione ipsam enim provident non a. Sit harum consequatur animi animi.', 70, '1974-06-11 07:13:42', '1970-06-05 17:59:04');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (42, 13, 'neque', 'Architecto esse quis ducimus. Quod ut ut facere rerum quia culpa. Est esse earum delectus harum.', 53, '2018-10-02 01:48:57', '2012-11-28 00:55:22');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (43, 36, 'ex', 'Quia quod totam aliquam quo. Rerum asperiores sit ab quae totam sapiente. Aut dolore unde quia laborum est officia ut. Accusantium perspiciatis sunt illum impedit architecto. Neque repudiandae aliquid et consequatur consequuntur a necessitatibus.', 96, '2012-09-18 18:14:34', '1977-12-24 21:17:26');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (44, 6, 'fuga', 'Minus iste dolor expedita. Ipsa commodi eum harum rem quasi nihil minus.', 66, '1978-02-25 18:27:01', '1983-03-22 01:31:56');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (45, 14, 'voluptatem', 'In illum et iste eos. Rerum amet amet ea amet qui voluptatem natus. Non enim aliquam porro.', 36, '1988-08-07 09:57:44', '2004-03-07 13:39:28');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (46, 6, 'omnis', 'Perferendis culpa amet ipsum et architecto eaque voluptatem voluptas. In ut labore dolores repellendus excepturi possimus quidem. Excepturi fugit id corporis optio est. Non pariatur aspernatur hic aliquid.', 30, '2011-02-24 14:13:57', '2010-03-03 08:00:44');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (47, 37, 'qui', 'Nostrum aut eum omnis rerum est natus aut. Incidunt minus dignissimos in sit itaque quo. Repudiandae omnis fuga eos ipsum et ipsa. Earum exercitationem veniam quos quam.', 69, '1970-07-22 00:43:02', '1999-02-03 15:16:34');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (48, 18, 'ratione', 'Quas est tempore suscipit sed. Mollitia dolor rerum id provident veniam. Rem aut accusamus qui qui et dolores aliquid nisi.', 85, '2015-06-11 19:38:24', '2015-04-02 11:16:38');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (49, 13, 'labore', 'Nobis incidunt dignissimos voluptate. A reiciendis magni asperiores et inventore soluta. Dicta expedita est et repellat impedit non. Officia harum doloribus optio tempore saepe quod. Nam totam rerum eos ea est.', 61, '1993-05-22 00:17:17', '2009-12-10 09:01:39');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (50, 18, 'quia', 'Ad modi inventore corrupti nobis placeat hic aut porro. Adipisci quo blanditiis sapiente voluptatem tempore.', 49, '1998-11-30 18:52:15', '2005-08-08 16:46:37');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (51, 6, 'aut', 'A eligendi odit consequuntur dolorem repellendus. Reprehenderit sed architecto sunt error modi dolorem consequatur dolorem. Et hic incidunt praesentium alias. Et fugiat dolorum at molestias.', 74, '1971-12-21 11:45:09', '1994-01-22 09:25:05');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (52, 21, 'repudiandae', 'Autem iusto neque exercitationem et molestiae ex. Reprehenderit consequatur illum tempora qui perspiciatis laborum.', 45, '1975-07-01 01:02:30', '1973-11-04 01:20:27');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (53, 21, 'fuga', 'Et dolores rerum quaerat qui. Id quia autem dicta officiis. Dicta voluptatem et quis vero.', 86, '2012-02-29 08:40:25', '1976-08-10 17:39:41');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (54, 30, 'enim', 'Quia quo ut quidem nulla culpa asperiores consequatur. In enim officia aliquam omnis. Laudantium vero est ut odit quia. Itaque qui quos eos sed ea id.', 79, '1988-04-06 20:54:46', '1993-03-13 18:01:00');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (55, 31, 'aspernatur', 'Et sit ad sint sed repellendus dolores et. Labore quo explicabo natus non reiciendis. Quia voluptas similique et quaerat. In officia veniam ea qui odit.', 77, '2002-08-08 19:12:13', '2001-12-21 15:19:04');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (56, 8, 'dolorum', 'Aliquid ipsa laboriosam neque. Aut facilis quo sed qui quis. Nemo ut et placeat qui nemo eveniet culpa.', 65, '1990-05-28 19:05:23', '2006-02-10 22:10:21');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (57, 23, 'voluptas', 'Alias quam officiis itaque. Non dignissimos pariatur aliquid inventore tempore sapiente. Harum et excepturi fuga suscipit ducimus. Non eum eos voluptatem assumenda eum.', 74, '1996-08-16 04:45:03', '1970-12-08 07:22:03');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (58, 7, 'ex', 'Sit ratione perferendis tenetur incidunt. Impedit ex aut omnis facilis. Dolores nesciunt officiis quam sequi sit facilis magni.', 63, '2001-12-30 23:11:40', '1974-01-19 10:41:57');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (59, 28, 'optio', 'Alias ut saepe eos laudantium. Nobis non qui dolor rem voluptas fuga. Consectetur enim pariatur iste error quidem. Nihil eos optio autem quasi tempore sit.', 61, '1993-04-14 23:26:59', '1972-01-02 06:59:39');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (60, 36, 'quis', 'Nihil saepe placeat earum sed iusto et earum. Rerum aut dicta laudantium animi quo necessitatibus. Repellat error ullam soluta cum. Tenetur incidunt eos eum aut ratione sit.', 35, '2005-10-02 13:19:35', '1977-09-17 18:50:38');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (61, 37, 'facere', 'Adipisci in itaque et eius sit. Fugit nihil aut et fugit cum. Architecto consequuntur enim fugit quis ad reiciendis reprehenderit. Voluptates velit minima rerum facere quae.', 47, '1986-01-19 04:38:57', '1998-12-05 16:30:30');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (62, 13, 'enim', 'Quia commodi sed laborum quo sed. Nihil eos ut reiciendis voluptas exercitationem et. Id blanditiis nesciunt tempora sed officiis est.', 11, '2002-11-07 22:48:38', '2006-04-29 19:22:41');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (63, 21, 'illum', 'Placeat odio vel repellat rerum cumque vitae. Sunt ut est alias dolor possimus iusto. Vel dolorem recusandae consequatur.', 50, '2017-04-13 20:52:07', '1973-04-20 18:57:09');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (64, 8, 'laboriosam', 'Non voluptatem quis in quod sint repellat. Veniam quia saepe omnis doloremque recusandae ipsam sint. Ipsam aliquid provident natus non. Non voluptatum quas earum qui ipsa beatae.', 90, '1972-03-18 00:12:11', '1982-03-09 00:07:27');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (65, 35, 'minima', 'Error quidem commodi aliquid quia autem cum. Voluptatum velit qui eligendi at sint. Possimus corrupti consequatur dolor aut.', 63, '1991-01-09 05:43:21', '1973-02-19 17:28:10');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (66, 22, 'est', 'Esse minima architecto nostrum dolores. Vel sit nobis aut earum accusantium nihil. Enim sit eligendi aperiam vel voluptatem adipisci. Maxime id delectus odio veniam. Maxime libero quaerat saepe quaerat autem sit sint.', 69, '1981-12-05 10:40:17', '1984-09-02 18:39:49');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (67, 19, 'quo', 'Quam sed architecto qui in iusto. Fuga unde dicta rerum qui. Aut ipsa eum non consequuntur.', 21, '1978-09-27 23:10:31', '1984-05-05 21:45:53');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (68, 7, 'exercitationem', 'Maxime perferendis repellat vel aut vero distinctio itaque. Nihil porro nesciunt quam iusto voluptatem sit omnis. Consequatur ipsum atque libero tempore quia ut cumque officiis.', 33, '1982-08-21 15:49:59', '2011-05-04 10:57:34');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (69, 27, 'magni', 'Sapiente perspiciatis dolores quae numquam eligendi. Expedita accusantium quasi eveniet minima ullam consequatur. Ea voluptatem maxime atque in possimus perferendis et quod. Modi iusto corrupti quidem ullam dicta delectus. Inventore cum sequi officia dolorem.', 91, '1987-12-24 08:11:05', '1986-09-01 06:06:24');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (70, 30, 'illum', 'Quis expedita inventore molestias atque itaque tenetur sed. Velit voluptatibus quae fugiat qui necessitatibus.', 76, '1988-02-12 14:59:35', '1971-07-23 15:26:28');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (71, 12, 'corrupti', 'Sed magnam quibusdam rerum officia voluptas doloremque quas. Cupiditate nobis voluptates similique est consequatur sint saepe. Qui esse ut placeat qui. Quia et est voluptatem minus illo ut. Corporis est ut aut facilis.', 9, '2007-07-29 12:53:46', '2001-09-23 19:58:23');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (72, 21, 'asperiores', 'Cumque commodi adipisci soluta maiores at. Quod dicta nam quasi et magni iure sed. Libero voluptate iusto voluptates consequuntur iure.', 26, '1984-12-07 12:34:21', '1994-06-13 17:38:17');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (73, 28, 'repellat', 'Eius odit incidunt quae sit aut. Repellat ut fuga ut occaecati. Doloribus provident quo placeat doloremque porro tenetur. Quisquam deleniti dolor pariatur molestiae voluptatem omnis quos officiis.', 84, '1992-09-07 01:12:16', '1985-03-25 15:24:58');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (74, 38, 'occaecati', 'Dicta error autem molestiae. Pariatur et atque assumenda nihil perferendis. Non alias itaque praesentium excepturi dolorum repudiandae.', 9, '1989-01-19 07:27:51', '1979-03-10 10:04:58');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (75, 36, 'non', 'Rerum quae rem incidunt corporis nihil est ut odio. Ut sapiente dolor qui accusamus saepe architecto architecto. In quidem quam doloribus vero. Rerum aliquam repudiandae temporibus iusto perspiciatis.', 27, '1997-01-04 19:53:47', '2005-01-10 17:30:38');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (76, 4, 'nesciunt', 'Eligendi quis corporis occaecati qui. Ut mollitia in eos sint praesentium. Fugiat a accusamus voluptatem itaque repudiandae. Quia unde deserunt voluptas voluptas.', 11, '1978-07-20 17:38:04', '1973-09-02 01:46:29');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (77, 35, 'voluptatem', 'Ut deserunt nemo sapiente. Reiciendis dignissimos quia atque accusamus ipsum et voluptatem. Eius architecto odit quae sed excepturi ut. Ut voluptatibus enim accusantium sint.', 76, '2006-03-14 21:44:09', '2006-10-20 18:00:16');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (78, 29, 'assumenda', 'Qui eaque ratione qui aperiam. Et atque quibusdam voluptatem. Neque illo voluptatibus sunt magnam animi exercitationem et.', 83, '1998-09-29 16:36:21', '1977-11-14 13:09:47');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (79, 27, 'repellat', 'Porro accusantium eaque quia voluptatem quia minima. Maiores ut aperiam suscipit et itaque. Repellat dolorem nemo laboriosam maxime laborum error ut. Aspernatur magnam voluptate et harum et est quam.', 31, '2004-10-05 16:40:23', '2004-03-09 19:13:30');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (80, 40, 'corrupti', 'Et placeat ad beatae quis aperiam doloremque perferendis. Maiores nesciunt necessitatibus et nihil. Facilis sed nisi magnam expedita aut earum.', 49, '2002-10-27 01:41:35', '1987-01-29 23:18:33');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (81, 24, 'error', 'Cum quia aliquid voluptas quia optio voluptas molestiae. Et similique commodi iusto molestiae sapiente excepturi reprehenderit minima. Ratione libero unde nam velit non aut numquam.', 22, '1977-07-30 05:16:34', '1980-08-29 19:11:45');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (82, 35, 'voluptates', 'Error ex perferendis omnis modi aliquid ipsa quis. Quod eveniet ipsum libero beatae.', 81, '1977-11-13 19:41:26', '1975-08-03 08:30:18');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (83, 22, 'omnis', 'At neque sed aut et unde quaerat consequuntur animi. Cum sed dolorum perspiciatis in ut in. Magni nihil earum neque. Molestiae blanditiis alias assumenda ducimus similique.', 48, '2010-07-12 20:14:27', '2001-03-03 00:05:26');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (84, 6, 'aut', 'Exercitationem sunt est minima enim. Est aperiam molestias sit qui non ea. Provident est et blanditiis libero possimus dolorem ut. Officia dolores in et excepturi dolore quaerat enim.', 56, '2019-04-21 05:26:45', '2006-10-03 17:43:44');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (85, 25, 'a', 'Aliquid sequi quia iusto minus alias error. Officiis aperiam totam accusamus qui qui numquam. Cum debitis eos dolorum ut sit. Et ut in ea qui veritatis nihil aperiam.', 59, '2015-04-07 00:19:43', '1988-01-12 08:39:44');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (86, 29, 'et', 'Ullam omnis quos laborum animi nihil alias. Repellendus earum harum assumenda qui iure qui voluptatum. Animi maxime consequatur dolorum. Id aut dolor voluptatibus quos eos praesentium.', 32, '1971-07-05 02:19:25', '2002-06-30 03:21:43');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (87, 15, 'tempora', 'Facere quam aperiam nisi voluptas eaque. Velit non sint maxime ad quas eius. Fugiat tempore saepe nesciunt voluptas. Alias laborum sint quo assumenda voluptas.', 25, '1981-05-05 16:42:33', '2006-12-11 00:20:38');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (88, 3, 'perspiciatis', 'Quis vel eaque nihil aut nulla necessitatibus. Optio aut libero aspernatur rerum qui aut at. Est voluptate fugiat inventore dolorem non hic. Voluptatum repellat beatae consectetur.', 68, '1993-01-29 02:39:20', '1976-02-23 20:37:37');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (89, 1, 'saepe', 'Voluptas magni voluptatem inventore aut reprehenderit. Qui omnis maiores numquam non eius natus impedit.', 9, '2008-11-26 09:17:26', '2004-04-28 17:02:33');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (90, 38, 'quaerat', 'Vitae et et laborum non sunt aperiam. Quisquam sint in laudantium voluptates recusandae explicabo. Necessitatibus omnis et eos maiores voluptas ut.', 41, '1978-06-29 08:45:07', '2008-03-29 14:15:41');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (91, 25, 'culpa', 'Vel consequatur nihil totam consequatur. Velit iure rem quis recusandae adipisci. Dolorem itaque voluptates sit ut voluptas doloremque.', 40, '2012-05-20 03:59:22', '2014-08-01 22:14:09');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (92, 37, 'natus', 'Commodi quis nihil culpa quasi molestiae dolorem. Id beatae placeat dolor quo. Et et et numquam esse ut. Quis omnis blanditiis fugiat omnis ut velit ut.', 83, '1983-09-06 23:55:42', '2009-05-31 03:28:21');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (93, 21, 'aut', 'Eligendi accusantium tempore qui quas iusto. Odit ipsam aut nisi aut sequi sunt sit. Fugit consequatur animi eos debitis voluptate. Sequi fuga sed nulla sunt.', 70, '1985-09-20 03:40:12', '2011-09-17 08:53:38');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (94, 11, 'aut', 'Accusamus debitis error minima voluptas omnis voluptatem velit mollitia. Accusantium accusamus culpa et est ut quis corrupti sit. Ratione aut qui perferendis provident totam natus alias. Ab culpa quos corporis.', 50, '1996-11-08 05:22:36', '1980-09-06 07:46:05');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (95, 28, 'pariatur', 'Temporibus rem sunt illo sunt. Enim itaque inventore cupiditate. Perferendis sapiente beatae perspiciatis quis.', 59, '2013-11-22 15:28:13', '1981-08-30 05:31:20');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (96, 2, 'sit', 'Distinctio cum numquam autem ipsa voluptas. Cum atque sit et. Voluptatem suscipit omnis quod aut vel quisquam repudiandae.', 97, '1972-02-19 17:57:38', '1987-12-08 07:40:46');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (97, 38, 'quia', 'Aliquid enim aut est sit rerum omnis ab. Non dolor voluptas deserunt autem. Nemo sunt consectetur in ut sunt aliquid et ut. Perspiciatis maxime dolorum deserunt non natus itaque libero.', 97, '2003-07-10 17:14:44', '1982-10-02 23:33:47');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (98, 6, 'odit', 'Ullam itaque voluptatibus qui aut ipsum dolor. Itaque maiores voluptatem ea quia consequatur ut magni. Sit et quam placeat ratione. Iure explicabo doloribus quis possimus voluptatum ut sunt.', 23, '2005-08-26 17:48:54', '1986-12-07 20:09:22');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (99, 2, 'numquam', 'Aspernatur esse excepturi qui atque. Nobis inventore sapiente quia mollitia harum et. Veritatis voluptate praesentium dolores qui recusandae aut autem eum.', 88, '1975-02-21 09:40:01', '1971-01-15 00:31:17');
INSERT INTO `posts` (`id`, `user_id`, `header`, `body`, `media_id`, `created_at`, `updated_at`) VALUES (100, 9, 'quia', 'Sit pariatur vitae illum saepe. Est aut asperiores nisi. Quia eum sed voluptas consequatur modi.', 63, '2005-07-14 12:48:45', '1976-11-24 17:17:02');

-- Создаем таблицу с лайками, для этого нужно знать кто оставил лайк, к какому именно объекту и к какому классу этот объект относится
-- для того, чтобы реализовать категоризацию лайков (аудио, фото, видео и т.п.)
-- тип медиа добавил ниже через Alter TABLE
CREATE TABLE likes(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
link VARCHAR(255) NOT NULL
);

ALTER TABLE likes ADD media_type INT NOT NULL;
ALTER TABLE media ADD link VARCHAR(255) NOT NULL;
-- Поле link в таблице likes должно соотноситься с полем link в таблице media, чтобы количество лайков не обновлялось постоянно
-- для каждого медиа в таблице, а формировалось через запрос
SELECT count(link) FROM likes GROUP BY link HAVING link = ...


-- Для курсового проекта хочу взять свою идею. Схожа с Литресом, но по художественной литературе предлагаются дополнительные параметры
-- для поиска книг. В общем база - Литрес + свои дополнения.