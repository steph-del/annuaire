CREATE TABLE `users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pseudo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NULL,
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `usermeta` (
 `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
 `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 `meta_value` longtext COLLATE utf8mb4_unicode_ci,
 PRIMARY KEY (`umeta_id`),
 KEY `user_id` (`user_id`),
 KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=891313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_pseudo`, `user_nom`, `user_prenom`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `avatar_url`) VALUES
(1, 'demo-user@example.org', '5b7998ce32d84abe6dac087e33cd07a9', 'demo-user', 'Demo-User', 'Demo', 'User', 'demo-user@example.org', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'demo-user', 'avatar_url_value'),
(2, 'stephane@phytoscopa.fr', '084de89f5548dc286881da64f89e3d80', 'Stephane', 'Stéphane Delplanque', 'Delplanque', 'Stéphane', 'stephane@phytoscopa.fr', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'Stéphane', 'avatar_url_value'),
(3, 'user1@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 1', 'User 1', 'User', '1', 'user1@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 1', 'avatar_url_value'),
(4, 'user2@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 2', 'User 2', 'User', '2', 'user2@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 2', 'avatar_url_value'),
(5, 'user3@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 3', 'User 3', 'User', '3', 'user3@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 3', 'avatar_url_value'),
(6, 'user4@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 4', 'User 4', 'User', '4', 'user4@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 4', 'avatar_url_value'),
(7, 'user5@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 5', 'User 5', 'User', '5', 'user5@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 5', 'avatar_url_value'),
(8, 'user6@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 6', 'User 6', 'User', '6', 'user6@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 6', 'avatar_url_value'),
(9, 'user7@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 7', 'User 7', 'User', '7', 'user7@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 7', 'avatar_url_value'),
(10, 'user8@mail.com', '5b7998ce32d84abe6dac087e33cd07a9', 'User 8', 'User 8', 'User', '8', 'user8@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 8', 'avatar_url_value'),
(11, 'admin@veglab.net', '5b7998ce32d84abe6dac087e33cd07a9', 'Admin', 'Admin', 'Admin', '', 'admin@veglab.net', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'admin', 'avatar_url_value');

INSERT INTO `usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'avatar_url', 'url_avatar_value'),
(2, 2, 'avatar_url', 'url_avatar_value'),
(3, 3, 'avatar_url', 'url_avatar_value'),
(4, 4, 'avatar_url', 'url_avatar_value')