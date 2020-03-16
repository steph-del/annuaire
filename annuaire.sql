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
(1, 'demo-user@example.org', '78838781849b8b78bc97403dfa2a327a', 'demo-user', 'Demo-User', 'Demo', 'User', 'demo-user@example.org', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'demo-user', 'avatar_url_value'),
(2, 'stephane@phytoscopa.fr', '78838781849b8b78bc97403dfa2a327a', 'Stephane', 'Stéphane Delplanque', 'Delplanque', 'Stéphane', 'stephane@phytoscopa.fr', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'Stéphane', 'avatar_url_value'),
(3, 'user@mail.com', '78838781849b8b78bc97403dfa2a327a', 'User 3', 'User 3', 'User', '3', 'user@mail.com', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'user 3', 'avatar_url_value'),
(4, 'admin@veglab.net', '78838781849b8b78bc97403dfa2a327a', 'Admin', 'Admin', 'Admin', '', 'admin@veglab.net', '', '2016-10-17 12:30:45', '1507884852:$P$B8nQgST869NUKyTjxiC9P1sokhi3MY0', 0, 'admin', 'avatar_url_value');

INSERT INTO `usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'avatar_url', 'url_avatar_value'),
(2, 2, 'avatar_url', 'url_avatar_value'),
(3, 3, 'avatar_url', 'url_avatar_value'),
(4, 4, 'avatar_url', 'url_avatar_value')