-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: beko
-- Время создания: Апр 19 2020 г., 10:29
-- Версия сервера: 10.1.26-MariaDB-0+deb9u1
-- Версия PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `netmap`
--
CREATE DATABASE IF NOT EXISTS `netmap` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `netmap`;

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `router_id` int(11) DEFAULT NULL,
  `dept_cat` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pos_lat` float DEFAULT NULL,
  `pos_lon` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `departments__history`
--

CREATE TABLE `departments__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_cat` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `router_id` int(11) DEFAULT NULL,
  `pos_lat` float DEFAULT NULL,
  `pos_lon` float DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dogovors`
--

CREATE TABLE `dogovors` (
  `id` int(11) NOT NULL,
  `prov_id` int(11) DEFAULT NULL,
  `prov_code` varchar(50) NOT NULL,
  `uwc_code` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dogovors__history`
--

CREATE TABLE `dogovors__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `prov_code` varchar(50) DEFAULT NULL,
  `prov_id` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `uwc_code` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `dop_sogl`
--

CREATE TABLE `dop_sogl` (
  `id` int(11) NOT NULL,
  `dogovor_id` int(11) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `sogltext` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lans`
--

CREATE TABLE `lans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `router_id` int(11) DEFAULT NULL,
  `ip` varchar(20) NOT NULL,
  `mask` varchar(20) NOT NULL,
  `routes` varchar(10000) NOT NULL,
  `dns_list` varchar(1000) NOT NULL,
  `dhcp_on` tinyint(1) NOT NULL,
  `dhcp_start_ip` varchar(20) NOT NULL,
  `dhcp_limit` int(10) UNSIGNED NOT NULL,
  `dhcp_wins` varchar(20) NOT NULL,
  `dhcp_dns_suffix` varchar(100) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lans__history`
--

CREATE TABLE `lans__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `router_id` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mask` varchar(20) DEFAULT NULL,
  `routes` varchar(10000) DEFAULT NULL,
  `dns_list` varchar(1000) DEFAULT NULL,
  `dhcp_on` tinyint(1) DEFAULT NULL,
  `dhcp_start_ip` varchar(20) DEFAULT NULL,
  `dhcp_limit` int(10) UNSIGNED DEFAULT NULL,
  `dhcp_wins` varchar(20) DEFAULT NULL,
  `dhcp_dns_suffix` varchar(100) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `os_types`
--

CREATE TABLE `os_types` (
  `id` int(11) NOT NULL,
  `os_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `prov_name` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `support` varchar(255) NOT NULL,
  `rekv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `providers__history`
--

CREATE TABLE `providers__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `prov_name` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `support` varchar(255) DEFAULT NULL,
  `rekv` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `repo`
--

CREATE TABLE `repo` (
  `id` int(11) NOT NULL,
  `w` int(11) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `links_html` text NOT NULL,
  `highlighted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `repo__history`
--

CREATE TABLE `repo__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `w` int(11) DEFAULT NULL,
  `text` text,
  `links_html` text,
  `highlighted` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `routers`
--

CREATE TABLE `routers` (
  `id` int(11) NOT NULL,
  `host_name` varchar(100) NOT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `placement_dept_id` int(11) DEFAULT NULL,
  `log_ip` varchar(20) NOT NULL,
  `ntp_ip` varchar(20) NOT NULL,
  `ssh_icmp_from_wans_ips` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `routers__history`
--

CREATE TABLE `routers__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `host_name` varchar(100) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `placement_dept_id` int(11) DEFAULT NULL,
  `log_ip` varchar(20) DEFAULT NULL,
  `ntp_ip` varchar(20) DEFAULT NULL,
  `ssh_icmp_from_wans_ips` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `router_equipment`
--

CREATE TABLE `router_equipment` (
  `id` int(11) NOT NULL,
  `eq_name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `os_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `taskid` int(11) NOT NULL,
  `w` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `action` varchar(30) NOT NULL,
  `project` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tunnels`
--

CREATE TABLE `tunnels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vpn_from_id` int(11) DEFAULT NULL,
  `vpn_to_id` int(11) DEFAULT NULL,
  `vpn_type_id` int(11) NOT NULL,
  `ipsec_psk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tunnels__history`
--

CREATE TABLE `tunnels__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vpn_from_id` int(11) DEFAULT NULL,
  `vpn_to_id` int(11) DEFAULT NULL,
  `vpn_type_id` int(11) DEFAULT NULL,
  `ipsec_psk` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vpns`
--

CREATE TABLE `vpns` (
  `id` int(11) NOT NULL,
  `router_id` int(11) DEFAULT NULL,
  `node_ip` varchar(20) NOT NULL,
  `subnet` varchar(40) NOT NULL,
  `tun_ip` varchar(20) NOT NULL,
  `tun_netmask` varchar(20) NOT NULL,
  `pub_key` text NOT NULL,
  `priv_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vpns__history`
--

CREATE TABLE `vpns__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `router_id` int(11) DEFAULT NULL,
  `node_ip` varchar(20) DEFAULT NULL,
  `subnet` varchar(40) DEFAULT NULL,
  `tun_ip` varchar(20) DEFAULT NULL,
  `tun_netmask` varchar(20) DEFAULT NULL,
  `pub_key` text,
  `priv_key` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vpn_types`
--

CREATE TABLE `vpn_types` (
  `id` int(11) NOT NULL,
  `vpn_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wans`
--

CREATE TABLE `wans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dogovor_id` int(11) DEFAULT NULL,
  `dop_sogl_id` int(11) DEFAULT NULL,
  `ip` varchar(20) NOT NULL,
  `mask` varchar(20) NOT NULL,
  `gw` varchar(20) NOT NULL,
  `dns_list` varchar(1000) NOT NULL,
  `vlan` int(10) UNSIGNED DEFAULT NULL,
  `router_id` int(11) DEFAULT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wans__history`
--

CREATE TABLE `wans__history` (
  `history__id` int(11) NOT NULL,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `router_id` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mask` varchar(20) DEFAULT NULL,
  `gw` varchar(20) DEFAULT NULL,
  `dns_list` varchar(1000) DEFAULT NULL,
  `dogovor_id` int(11) DEFAULT NULL,
  `dop_sogl_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `vlan` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `xfnetmap_users`
--

CREATE TABLE `xfnetmap_users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('NO ACCESS','READ ONLY','EDIT','DELETE','ADMIN') NOT NULL DEFAULT 'NO ACCESS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dept_name` (`dept_name`);

--
-- Индексы таблицы `departments__history`
--
ALTER TABLE `departments__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `dogovors`
--
ALTER TABLE `dogovors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dogovors__history`
--
ALTER TABLE `dogovors__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `dop_sogl`
--
ALTER TABLE `dop_sogl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lans`
--
ALTER TABLE `lans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `router_id` (`router_id`);

--
-- Индексы таблицы `lans__history`
--
ALTER TABLE `lans__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `os_types`
--
ALTER TABLE `os_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `providers__history`
--
ALTER TABLE `providers__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `repo`
--
ALTER TABLE `repo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `w` (`w`);

--
-- Индексы таблицы `repo__history`
--
ALTER TABLE `repo__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `routers`
--
ALTER TABLE `routers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `host_name` (`host_name`);

--
-- Индексы таблицы `routers__history`
--
ALTER TABLE `routers__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `router_equipment`
--
ALTER TABLE `router_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`taskid`);

--
-- Индексы таблицы `tunnels`
--
ALTER TABLE `tunnels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tunnels__history`
--
ALTER TABLE `tunnels__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `vpns`
--
ALTER TABLE `vpns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `router_id` (`router_id`);

--
-- Индексы таблицы `vpns__history`
--
ALTER TABLE `vpns__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `vpn_types`
--
ALTER TABLE `vpn_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wans`
--
ALTER TABLE `wans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `router_id` (`router_id`);

--
-- Индексы таблицы `wans__history`
--
ALTER TABLE `wans__history`
  ADD PRIMARY KEY (`history__id`),
  ADD KEY `prikeys` (`id`) USING HASH,
  ADD KEY `datekeys` (`history__modified`) USING BTREE;

--
-- Индексы таблицы `xfnetmap_users`
--
ALTER TABLE `xfnetmap_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `departments__history`
--
ALTER TABLE `departments__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dogovors`
--
ALTER TABLE `dogovors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dogovors__history`
--
ALTER TABLE `dogovors__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dop_sogl`
--
ALTER TABLE `dop_sogl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lans`
--
ALTER TABLE `lans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lans__history`
--
ALTER TABLE `lans__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `os_types`
--
ALTER TABLE `os_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `providers__history`
--
ALTER TABLE `providers__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `repo`
--
ALTER TABLE `repo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `repo__history`
--
ALTER TABLE `repo__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `routers`
--
ALTER TABLE `routers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `routers__history`
--
ALTER TABLE `routers__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `router_equipment`
--
ALTER TABLE `router_equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `taskid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tunnels`
--
ALTER TABLE `tunnels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tunnels__history`
--
ALTER TABLE `tunnels__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vpns`
--
ALTER TABLE `vpns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vpns__history`
--
ALTER TABLE `vpns__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `vpn_types`
--
ALTER TABLE `vpn_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wans`
--
ALTER TABLE `wans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wans__history`
--
ALTER TABLE `wans__history`
  MODIFY `history__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `xfnetmap_users`
--
ALTER TABLE `xfnetmap_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
