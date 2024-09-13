-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2024 a las 01:35:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paymaster`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add independiente', 1, 'add_independiente'),
(2, 'Can change independiente', 1, 'change_independiente'),
(3, 'Can delete independiente', 1, 'delete_independiente'),
(4, 'Can view independiente', 1, 'view_independiente'),
(5, 'Can add usuarios', 2, 'add_usuarios'),
(6, 'Can change usuarios', 2, 'change_usuarios'),
(7, 'Can delete usuarios', 2, 'delete_usuarios'),
(8, 'Can view usuarios', 2, 'view_usuarios'),
(9, 'Can add calculos', 3, 'add_calculos'),
(10, 'Can change calculos', 3, 'change_calculos'),
(11, 'Can delete calculos', 3, 'delete_calculos'),
(12, 'Can view calculos', 3, 'view_calculos'),
(13, 'Can add password reset request', 4, 'add_passwordresetrequest'),
(14, 'Can change password reset request', 4, 'change_passwordresetrequest'),
(15, 'Can delete password reset request', 4, 'delete_passwordresetrequest'),
(16, 'Can view password reset request', 4, 'view_passwordresetrequest'),
(17, 'Can add datos calculos', 5, 'add_datoscalculos'),
(18, 'Can change datos calculos', 5, 'change_datoscalculos'),
(19, 'Can delete datos calculos', 5, 'delete_datoscalculos'),
(20, 'Can view datos calculos', 5, 'view_datoscalculos'),
(21, 'Can add cargo', 6, 'add_cargo'),
(22, 'Can change cargo', 6, 'change_cargo'),
(23, 'Can delete cargo', 6, 'delete_cargo'),
(24, 'Can view cargo', 6, 'view_cargo'),
(25, 'Can add departamento', 7, 'add_departamento'),
(26, 'Can change departamento', 7, 'change_departamento'),
(27, 'Can delete departamento', 7, 'delete_departamento'),
(28, 'Can view departamento', 7, 'view_departamento'),
(29, 'Can add empleado', 8, 'add_empleado'),
(30, 'Can change empleado', 8, 'change_empleado'),
(31, 'Can delete empleado', 8, 'delete_empleado'),
(32, 'Can view empleado', 8, 'view_empleado'),
(33, 'Can add empresa', 9, 'add_empresa'),
(34, 'Can change empresa', 9, 'change_empresa'),
(35, 'Can delete empresa', 9, 'delete_empresa'),
(36, 'Can view empresa', 9, 'view_empresa'),
(37, 'Can add nivel estudio', 10, 'add_nivelestudio'),
(38, 'Can change nivel estudio', 10, 'change_nivelestudio'),
(39, 'Can delete nivel estudio', 10, 'delete_nivelestudio'),
(40, 'Can view nivel estudio', 10, 'view_nivelestudio'),
(41, 'Can add tipo novedad', 11, 'add_tiponovedad'),
(42, 'Can change tipo novedad', 11, 'change_tiponovedad'),
(43, 'Can delete tipo novedad', 11, 'delete_tiponovedad'),
(44, 'Can view tipo novedad', 11, 'view_tiponovedad'),
(45, 'Can add ciudad', 12, 'add_ciudad'),
(46, 'Can change ciudad', 12, 'change_ciudad'),
(47, 'Can delete ciudad', 12, 'delete_ciudad'),
(48, 'Can view ciudad', 12, 'view_ciudad'),
(49, 'Can add contrato', 13, 'add_contrato'),
(50, 'Can change contrato', 13, 'change_contrato'),
(51, 'Can delete contrato', 13, 'delete_contrato'),
(52, 'Can view contrato', 13, 'view_contrato'),
(53, 'Can add horas extras recargos', 14, 'add_horasextrasrecargos'),
(54, 'Can change horas extras recargos', 14, 'change_horasextrasrecargos'),
(55, 'Can delete horas extras recargos', 14, 'delete_horasextrasrecargos'),
(56, 'Can view horas extras recargos', 14, 'view_horasextrasrecargos'),
(57, 'Can add liquidacion', 15, 'add_liquidacion'),
(58, 'Can change liquidacion', 15, 'change_liquidacion'),
(59, 'Can delete liquidacion', 15, 'delete_liquidacion'),
(60, 'Can view liquidacion', 15, 'view_liquidacion'),
(61, 'Can add nivel grado', 16, 'add_nivelgrado'),
(62, 'Can change nivel grado', 16, 'change_nivelgrado'),
(63, 'Can delete nivel grado', 16, 'delete_nivelgrado'),
(64, 'Can view nivel grado', 16, 'view_nivelgrado'),
(65, 'Can add password reset request', 17, 'add_passwordresetrequest'),
(66, 'Can change password reset request', 17, 'change_passwordresetrequest'),
(67, 'Can delete password reset request', 17, 'delete_passwordresetrequest'),
(68, 'Can view password reset request', 17, 'view_passwordresetrequest'),
(69, 'Can add sede', 18, 'add_sede'),
(70, 'Can change sede', 18, 'change_sede'),
(71, 'Can delete sede', 18, 'delete_sede'),
(72, 'Can view sede', 18, 'view_sede'),
(73, 'Can add novedades', 19, 'add_novedades'),
(74, 'Can change novedades', 19, 'change_novedades'),
(75, 'Can delete novedades', 19, 'delete_novedades'),
(76, 'Can view novedades', 19, 'view_novedades'),
(77, 'Can add usuarios', 20, 'add_usuarios'),
(78, 'Can change usuarios', 20, 'change_usuarios'),
(79, 'Can delete usuarios', 20, 'delete_usuarios'),
(80, 'Can view usuarios', 20, 'view_usuarios'),
(81, 'Can add vacaciones cesantias', 21, 'add_vacacionescesantias'),
(82, 'Can change vacaciones cesantias', 21, 'change_vacacionescesantias'),
(83, 'Can delete vacaciones cesantias', 21, 'delete_vacacionescesantias'),
(84, 'Can view vacaciones cesantias', 21, 'view_vacacionescesantias'),
(85, 'Can add log entry', 22, 'add_logentry'),
(86, 'Can change log entry', 22, 'change_logentry'),
(87, 'Can delete log entry', 22, 'delete_logentry'),
(88, 'Can view log entry', 22, 'view_logentry'),
(89, 'Can add permission', 23, 'add_permission'),
(90, 'Can change permission', 23, 'change_permission'),
(91, 'Can delete permission', 23, 'delete_permission'),
(92, 'Can view permission', 23, 'view_permission'),
(93, 'Can add group', 24, 'add_group'),
(94, 'Can change group', 24, 'change_group'),
(95, 'Can delete group', 24, 'delete_group'),
(96, 'Can view group', 24, 'view_group'),
(97, 'Can add user', 25, 'add_user'),
(98, 'Can change user', 25, 'change_user'),
(99, 'Can delete user', 25, 'delete_user'),
(100, 'Can view user', 25, 'view_user'),
(101, 'Can add content type', 26, 'add_contenttype'),
(102, 'Can change content type', 26, 'change_contenttype'),
(103, 'Can delete content type', 26, 'delete_contenttype'),
(104, 'Can view content type', 26, 'view_contenttype'),
(105, 'Can add session', 27, 'add_session'),
(106, 'Can change session', 27, 'change_session'),
(107, 'Can delete session', 27, 'delete_session'),
(108, 'Can view session', 27, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(22, 'admin', 'logentry'),
(24, 'auth', 'group'),
(23, 'auth', 'permission'),
(25, 'auth', 'user'),
(26, 'contenttypes', 'contenttype'),
(6, 'Empresarial', 'cargo'),
(12, 'Empresarial', 'ciudad'),
(13, 'Empresarial', 'contrato'),
(7, 'Empresarial', 'departamento'),
(8, 'Empresarial', 'empleado'),
(9, 'Empresarial', 'empresa'),
(14, 'Empresarial', 'horasextrasrecargos'),
(15, 'Empresarial', 'liquidacion'),
(10, 'Empresarial', 'nivelestudio'),
(16, 'Empresarial', 'nivelgrado'),
(19, 'Empresarial', 'novedades'),
(17, 'Empresarial', 'passwordresetrequest'),
(18, 'Empresarial', 'sede'),
(11, 'Empresarial', 'tiponovedad'),
(20, 'Empresarial', 'usuarios'),
(21, 'Empresarial', 'vacacionescesantias'),
(3, 'Independientes', 'calculos'),
(5, 'Independientes', 'datoscalculos'),
(1, 'Independientes', 'independiente'),
(4, 'Independientes', 'passwordresetrequest'),
(2, 'Independientes', 'usuarios'),
(27, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Empresarial', '0001_initial', '2024-08-13 11:32:47.690753'),
(2, 'Independientes', '0001_initial', '2024-08-13 11:32:47.713549'),
(3, 'Independientes', '0002_usuarios', '2024-08-13 11:32:47.753069'),
(4, 'Independientes', '0003_alter_independiente_numero_identificacion', '2024-08-13 11:32:48.200170'),
(5, 'Independientes', '0004_alter_usuarios_options', '2024-08-13 11:32:48.203190'),
(6, 'Independientes', '0005_usuarios_documento', '2024-08-13 11:32:48.209146'),
(7, 'Independientes', '0006_alter_usuarios_options_usuarios_is_active_and_more', '2024-08-13 11:32:48.225760'),
(8, 'Independientes', '0007_remove_usuarios_documento_remove_usuarios_is_active_and_more', '2024-08-13 11:32:48.241597'),
(9, 'Independientes', '0008_independiente_fecha_ingreso_calculos_novedades', '2024-08-13 11:32:48.334391'),
(10, 'Independientes', '0009_passwordresetrequest', '2024-08-13 11:32:48.374648'),
(11, 'Independientes', '0010_passwordresetrequest_expires_at', '2024-08-13 11:32:48.383864'),
(12, 'Independientes', '0011_alter_usuarios_contrasena', '2024-08-13 11:32:48.419543'),
(13, 'Independientes', '0012_alter_usuarios_contrasena', '2024-08-13 11:32:48.428518'),
(14, 'Independientes', '0013_remove_independiente_fecha_ingreso', '2024-08-13 11:32:48.437284'),
(15, 'Independientes', '0014_datoscalculos', '2024-08-13 11:32:48.476749'),
(16, 'Independientes', '0015_rename_cesantias_calculos_fsp_and_more', '2024-08-13 11:32:48.507622'),
(17, 'Independientes', '0016_alter_datoscalculos_ibc', '2024-08-13 11:32:48.513202'),
(18, 'Independientes', '0017_alter_datoscalculos_ibc_alter_datoscalculos_pension_and_more', '2024-08-13 11:32:48.569382'),
(19, 'Independientes', '0018_alter_independiente_numero_identificacion', '2024-08-13 11:32:49.382485'),
(20, 'Independientes', '0019_datoscalculos_caja_comprensacion_and_more', '2024-08-13 11:32:49.488405'),
(21, 'Independientes', '0020_alter_datoscalculos_ibc_and_more', '2024-08-13 11:32:49.526237'),
(22, 'Independientes', '0021_alter_datoscalculos_ccf_alter_datoscalculos_arl_and_more', '2024-08-13 11:32:49.562700'),
(23, 'contenttypes', '0001_initial', '2024-08-13 11:32:49.581168'),
(24, 'auth', '0001_initial', '2024-08-13 11:32:49.860171'),
(25, 'admin', '0001_initial', '2024-08-13 11:32:49.914561'),
(26, 'admin', '0002_logentry_remove_auto_add', '2024-08-13 11:32:49.920576'),
(27, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-13 11:32:49.927644'),
(28, 'contenttypes', '0002_remove_content_type_name', '2024-08-13 11:32:49.977698'),
(29, 'auth', '0002_alter_permission_name_max_length', '2024-08-13 11:32:50.008949'),
(30, 'auth', '0003_alter_user_email_max_length', '2024-08-13 11:32:50.017951'),
(31, 'auth', '0004_alter_user_username_opts', '2024-08-13 11:32:50.023738'),
(32, 'auth', '0005_alter_user_last_login_null', '2024-08-13 11:32:50.066670'),
(33, 'auth', '0006_require_contenttypes_0002', '2024-08-13 11:32:50.068746'),
(34, 'auth', '0007_alter_validators_add_error_messages', '2024-08-13 11:32:50.075740'),
(35, 'auth', '0008_alter_user_username_max_length', '2024-08-13 11:32:50.086162'),
(36, 'auth', '0009_alter_user_last_name_max_length', '2024-08-13 11:32:50.094942'),
(37, 'auth', '0010_alter_group_name_max_length', '2024-08-13 11:32:50.103915'),
(38, 'auth', '0011_update_proxy_permissions', '2024-08-13 11:32:50.116994'),
(39, 'auth', '0012_alter_user_first_name_max_length', '2024-08-13 11:32:50.126497'),
(40, 'sessions', '0001_initial', '2024-08-13 11:32:50.145349'),
(41, 'Empresarial', '0002_rename_imagen_empleado_imagen_empleado_and_more', '2024-08-13 13:08:23.246716');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ozutz8vbphgibe8sv71mww643jeuzb7', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1shazg:-Lul7t4FTwvZZ5l5YcZXaAwEZ7XBHvhqrngl5v-eeFs', '2024-08-23 20:44:48.069521'),
('1qwofk8w32tump3m56nfz4op0fhfy0te', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sdt2B:VklyfzZkkpFSKYbTfrRk7bnw12QOFiA6SAi21D8_rEc', '2024-08-13 15:12:03.682892'),
('4oan0lczs21wws8h2o609s6kwvtv0ev2', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1shapV:lc-5hobXWfhMr2lCmKapckrpegN_m0Jnr3UmU_ldSiY', '2024-08-23 20:34:17.353987'),
('58zf57d453ukutxxpuzljtjfm91j1ei2', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sdso4:_AdMkqfPqDy70-ZuzeTYBi4T2qsBifnguVG3tu0ViuU', '2024-08-13 14:57:28.557627'),
('5y8x7f0wvxl8ejnx3m4yfnv1vfacm9ge', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1so9Zs:0vx0rdThSuu_spDz7AXrjOxKceHU0JBtg1f21MZ7bXE', '2024-09-10 22:53:16.350535'),
('624kg3r1040z904nhxkl9nfronxfqvza', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj1cJ:DE_I-aAEhVYORapJK-BXzsq8rvaoAw2HsLRVmKoT12Y', '2024-08-27 19:22:35.615029'),
('7j0p0qf8ular10lldt5y35732h5x4iuc', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1soAoC:fif8ar2ZZg8vhVWXal5dd01y7RFKGYFLnQTXReaFS7w', '2024-09-11 00:12:08.944219'),
('96eksx6afy0dy3uoky5adkwxcqrnwkah', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1shbDn:bGMMedDXBX_-quhXuaZ6ZM0pfoGQFwOqgKYJRmvUhXA', '2024-08-23 20:59:23.390649'),
('9w5r9r149k2xyviir7gnbme9prxdejv0', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1shbNk:kZ9H6MkEos9utHKdlL1rA0awUTel7A11BA2FHTqtm1Q', '2024-08-23 21:09:40.437381'),
('a4fk3hdeo7te94v9qtsz93k3clekv8qw', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1shbYH:V4yMMYGvJ_B0VyUDguYzLi7BVoKcAaoRYXxBf0_DhQY', '2024-08-23 21:20:33.712386'),
('a9qwp3uj2y15rwjsu9alzkg1j2495dkp', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj1mR:SRgjE0e3mQGI3IKdMjA5K8tiApIhV2kFfytenQajbx4', '2024-08-27 19:33:03.758521'),
('aghcjcdpe9gbcpq5uw80g6nc63p2pnqq', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1soB1q:jardODR7PqQxAaUqmeOoSoy3HU57q3qQES4x3d26vm0', '2024-09-11 00:26:14.572792'),
('bjk8pe0v27oe8g4hl0l04pjz64for3v9', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj2ep:aazEQlrgi9OPngYUVhEmw6yzKR0nbXXLnSDDI4XXffk', '2024-08-27 20:29:15.869532'),
('bqd6tlc4t4z2m6730ms9mjpzrbjehtb5', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj3e6:LO6ldkhTOh9YCgKUmiZnvo6orvoEroyeY_RRS84OJ9E', '2024-08-27 21:32:34.419514'),
('cceunylwgpgetykshuilk0yvr83xmq34', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1so8uz:P2zaeOY5Q90Bu8Dx0wLNi4l-RzhMiHlLrFJSmdvZ0Kg', '2024-09-10 22:11:01.591893'),
('cun4auturssxqoxjtnbnlyw6rdjotg6z', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj2UL:1MzEC4KS7UVl_9pfltyUfqdjveZcze2hO0EKv5TLXqI', '2024-08-27 20:18:25.287553'),
('gm0c00rcfdxs9tfvop6rxml2wczdljvy', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sdsLZ:KOXH9j_Y_5fly6Xp1eSCtv4b6d2IAg_tkKKCsDRCuYQ', '2024-08-13 14:28:01.481354'),
('gmy1gck6fjw0sm51p6cu3io0lmck35jp', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1so6nn:GZqMm41ehmZbAXDtml7JpNSodkIVQ2N4nKxvPMoMpVw', '2024-09-10 19:55:27.765916'),
('gp0irz8x3ctcxjt0qg3zk1qy4mqvhgt8', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1shZpj:cYIuTyycGd7fno85IOBmCWnWxiwnU7iOSGp5ug0f9RA', '2024-08-23 19:30:27.566763'),
('hdhh10w7r9g0068e6o9c9oejs345a715', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1soA5x:osh1_0SeVi9fShPwevLgl-wQEUCH7b3TAhEg0pkaDDo', '2024-09-10 23:26:25.805361'),
('hq84x9fno6rbvdcq51yaxetk0qxg2i70', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1soATL:04Jt-8bPZQn-3ujAquqhpU64BKC5JSddKyTBWMZ3eoI', '2024-09-10 23:50:35.550133'),
('i81o5w9h1yldckfxszke3klvjwdq1fe0', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sdrMT:WnWv8NNK8BpOTsfG6xL5X6mZ57Y1eHygmhsLVjanO10', '2024-08-13 13:24:53.375053'),
('jj2dx5kdw0em0v4ynhbfrf113aza5cvx', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sgpQA:qhc6TaFBQXfO5PGegX3oQWPKn7mxSevn_3j9KliCsC0', '2024-08-21 17:56:58.089700'),
('kxjxmujw42z4xhk78x723nnhht7lras5', '.eJxNyTEOgCAMBdC7_JkB48bqETwAIVCTDrSmhcl4d3Vzfe-CzE6mmRvJ4INrqaySCWmJcQ0gH6XpTv4q0rBJASdZZ1dHwqbyvSFgOtlf7gcG-CCJ:1sj35p:dAt6D6d-ZhcLnv3nUJSrFG_JcWQzoZEs40D08wfLeco', '2024-08-27 20:57:09.368667'),
('l8byttq53ll9n20og6fxc55sitdza4jg', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sdt2B:VklyfzZkkpFSKYbTfrRk7bnw12QOFiA6SAi21D8_rEc', '2024-08-13 15:12:03.715774'),
('mmovgz6wg3hal7v2mtxs95fgqlg2adoq', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1soAeR:GSbLLUjfhIPsCKRvhuuboSBILdFKi_w-fAjo-Dq4Qgo', '2024-09-11 00:02:03.158908'),
('ne2tpor7rhjjsz5s3jnj2k9bw932hipf', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1soAGB:ekAZcZ80BYFFddWV14fMlB3XkXhy6pjgrsTR56il5zo', '2024-09-10 23:36:59.478700'),
('net8u2n85yvjdj0fyrnrgrifcl5naxvm', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1so9vM:vLUcI5BXFC_Y-uSmDWacdCovyraW1a9FKbuo-VECw7c', '2024-09-10 23:15:28.538470'),
('oag5d71dqedhkpmkaidzcaubojbgptjx', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj2ss:wrjQDHt0OiDlOt1LmHazoMLNPNcK0Tx2whS_HVx-_us', '2024-08-27 20:43:46.288943'),
('oz2tkp2shs4dqzxrh1s2x39k6ay41uqn', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMSwiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiTWFyY29zIn0:1sds9p:jncrWY1WWaXK6HobMwiZVkhit38Zxkna-VXT0UCK6DY', '2024-08-13 14:15:53.630173'),
('sh9tejlln3ni3tmtonkj2xtrmkcsrwpu', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj1wS:cwCFx2hNENM0BisBCfNUifXqR8tgxbG4KxomBHHy25Q', '2024-08-27 19:43:24.407813'),
('v76540ng60zm1j2nffni1677qigyt4hv', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1so963:-mmc6r6aHhXHXsqqUcSBAAn0KZe07H3ShrAjVVBuZTE', '2024-09-10 22:22:27.368445'),
('vw1606ndpebq7n7kx9dyjfmrrqlw0tk8', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1sj2Bn:7H0CSGS93dRiZjNK1_GuMt4Xzzx0Xb1NnuRLoWRrW_E', '2024-08-27 19:59:15.749137'),
('x16qybycdlctslmk04etklq1ic4dekep', '.eJxNyTEOgCAMBdC7_JkB48bqETwAIVCTDrSmhcl4d3Vzfe-CzE6mmRvJ4INrqaySCWmJcQ0gH6XpTv4q0rBJASdZZ1dHwqbyvSFgOtlf7gcG-CCJ:1shc8M:J2jeg0YBX26fTk4wzVOQ7OS_D_JUttipfCvz7raukcI', '2024-08-23 21:57:50.353188'),
('xs81kxb6pz61akcibd1y1cxa4cscnbkt', '.eJxNyTEOgCAMBdC7_JkB48bqETwAIVCTDrSmhcl4d3Vzfe-CzE6mmRvJ4INrqaySCWmJcQ0gH6XpTv4q0rBJASdZZ1dHwqbyvSFgOtlf7gcG-CCJ:1so7eX:X9cLSVwNhEHTZWlmYQwRiIMRC5Mqy97q7BUS00t2Fj4', '2024-09-10 20:49:57.981813'),
('zngirmkidszkvnrxw352w1rzi5jc1444', 'eyJudW1lcm9faWRlbnRpZmljYWNpb25fZSI6MTAwMywiZXN0YWRvU2VzaW9uIjp0cnVlLCJwZXJtaXNvcyI6IlJSSEgiLCJ1c2VyIjoiQ29udGFkb3IifQ:1shaXL:enTDvQyX7e1RXc1pw2ga5kfZm4T0wh4_HGhaBN4xvdo', '2024-08-23 20:15:31.055583');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_cargo`
--

CREATE TABLE `empresarial_cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(30) NOT NULL,
  `descripcion_cargo` longtext NOT NULL,
  `nivel_riesgo` varchar(10) NOT NULL,
  `id_nivel_grado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_cargo`
--

INSERT INTO `empresarial_cargo` (`id_cargo`, `nombre_cargo`, `descripcion_cargo`, `nivel_riesgo`, `id_nivel_grado_id`) VALUES
(1, 'fhg', 'ghfdg', '2', 9),
(2, 'fhg', 'ghfdg', '2', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_ciudad`
--

CREATE TABLE `empresarial_ciudad` (
  `codigo_ciudad` varchar(10) NOT NULL,
  `nombre_ciudad` varchar(80) NOT NULL,
  `codigo_departamento_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_ciudad`
--

INSERT INTO `empresarial_ciudad` (`codigo_ciudad`, `nombre_ciudad`, `codigo_departamento_id`) VALUES
('1', 'Abriaquí', '5'),
('10', 'Aguadas', '17'),
('100', 'Betania', '5'),
('1000', 'Tona', '68'),
('1001', 'Topagá', '15'),
('1002', 'Topaipí', '25'),
('1003', 'Toribío', '19'),
('1004', 'Toro', '76'),
('1005', 'Tota', '15'),
('1006', 'Totoró', '19'),
('1007', 'Trinidad', '85'),
('1008', 'Trujillo', '76'),
('1009', 'Tubará', '8'),
('101', 'Beteitiva', '15'),
('1010', 'Tuchín', '23'),
('1011', 'Tulúa', '76'),
('1012', 'Tumaco', '52'),
('1013', 'Tunja', '15'),
('1014', 'Tunungua', '15'),
('1015', 'Turbaco', '13'),
('1016', 'Turbaná', '13'),
('1017', 'Turbo', '5'),
('1018', 'Turmequé', '15'),
('1019', 'Tuta', '15'),
('102', 'Betulia', '5'),
('1020', 'Tutasá', '15'),
('1021', 'Támara', '85'),
('1022', 'Támesis', '5'),
('1023', 'Túquerres', '52'),
('1024', 'Ubalá', '25'),
('1025', 'Ubaque', '25'),
('1026', 'Ubaté', '25'),
('1027', 'Ulloa', '76'),
('1028', 'Une', '25'),
('1029', 'Unguía', '27'),
('103', 'Betulia', '68'),
('1030', 'Unión Panamericana (ÁNIMAS)', '27'),
('1031', 'Uramita', '5'),
('1032', 'Uribe', '50'),
('1033', 'Uribia', '44'),
('1034', 'Urrao', '5'),
('1035', 'Urumita', '44'),
('1036', 'Usiacuri', '8'),
('1037', 'Valdivia', '5'),
('1038', 'Valencia', '23'),
('1039', 'Valle de San José', '68'),
('104', 'Bituima', '25'),
('1040', 'Valle de San Juan', '73'),
('1041', 'Valle del Guamuez', '86'),
('1042', 'Valledupar', '20'),
('1043', 'Valparaiso', '5'),
('1044', 'Valparaiso', '18'),
('1045', 'Vegachí', '5'),
('1046', 'Venadillo', '73'),
('1047', 'Venecia', '5'),
('1048', 'Venecia (Ospina Pérez)', '25'),
('1049', 'Ventaquemada', '15'),
('105', 'Boavita', '15'),
('1050', 'Vergara', '25'),
('1051', 'Versalles', '76'),
('1052', 'Vetas', '68'),
('1053', 'Viani', '25'),
('1054', 'Vigía del Fuerte', '5'),
('1055', 'Vijes', '76'),
('1056', 'Villa Caro', '54'),
('1057', 'Villa Rica', '19'),
('1058', 'Villa de Leiva', '15'),
('1059', 'Villa del Rosario', '54'),
('106', 'Bochalema', '54'),
('1060', 'Villagarzón', '86'),
('1061', 'Villagómez', '25'),
('1062', 'Villahermosa', '73'),
('1063', 'Villamaría', '17'),
('1064', 'Villanueva', '13'),
('1065', 'Villanueva', '44'),
('1066', 'Villanueva', '68'),
('1067', 'Villanueva', '85'),
('1068', 'Villapinzón', '25'),
('1069', 'Villarrica', '73'),
('107', 'Bogotá D.C.', '11'),
('1070', 'Villavicencio', '50'),
('1071', 'Villavieja', '41'),
('1072', 'Villeta', '25'),
('1073', 'Viotá', '25'),
('1074', 'Viracachá', '15'),
('1075', 'Vista Hermosa', '50'),
('1076', 'Viterbo', '17'),
('1077', 'Vélez', '68'),
('1078', 'Yacopí', '25'),
('1079', 'Yacuanquer', '52'),
('108', 'Bojacá', '25'),
('1080', 'Yaguará', '41'),
('1081', 'Yalí', '5'),
('1082', 'Yarumal', '5'),
('1083', 'Yolombó', '5'),
('1084', 'Yondó (Casabe)', '5'),
('1085', 'Yopal', '85'),
('1086', 'Yotoco', '76'),
('1087', 'Yumbo', '76'),
('1088', 'Zambrano', '13'),
('1089', 'Zapatoca', '68'),
('109', 'Bojayá (Bellavista)', '27'),
('1090', 'Zapayán (PUNTA DE PIEDRAS)', '47'),
('1091', 'Zaragoza', '5'),
('1092', 'Zarzal', '76'),
('1093', 'Zetaquirá', '15'),
('1094', 'Zipacón', '25'),
('1095', 'Zipaquirá', '25'),
('1096', 'Zona Bananera (PRADO - SEVILLA)', '47'),
('1097', 'Ábrego', '54'),
('1098', 'Íquira', '41'),
('1099', 'Úmbita', '15'),
('11', 'Aguazul', '85'),
('110', 'Bolívar', '5'),
('1100', 'Útica', '25'),
('111', 'Bolívar', '19'),
('112', 'Bolívar', '68'),
('113', 'Bolívar', '76'),
('114', 'Bosconia', '20'),
('115', 'Boyacá', '15'),
('116', 'Briceño', '5'),
('117', 'Briceño', '15'),
('118', 'Bucaramanga', '68'),
('119', 'Bucarasica', '54'),
('12', 'Agustín Codazzi', '20'),
('120', 'Buenaventura', '76'),
('121', 'Buenavista', '15'),
('122', 'Buenavista', '23'),
('123', 'Buenavista', '63'),
('124', 'Buenavista', '70'),
('125', 'Buenos Aires', '19'),
('126', 'Buesaco', '52'),
('127', 'Buga', '76'),
('128', 'Bugalagrande', '76'),
('129', 'Burítica', '5'),
('13', 'Aipe', '41'),
('130', 'Busbanza', '15'),
('131', 'Cabrera', '25'),
('132', 'Cabrera', '68'),
('133', 'Cabuyaro', '50'),
('134', 'Cachipay', '25'),
('135', 'Caicedo', '5'),
('136', 'Caicedonia', '76'),
('137', 'Caimito', '70'),
('138', 'Cajamarca', '73'),
('139', 'Cajibío', '19'),
('14', 'Albania', '18'),
('140', 'Cajicá', '25'),
('141', 'Calamar', '13'),
('142', 'Calamar', '95'),
('143', 'Calarcá', '63'),
('144', 'Caldas', '5'),
('145', 'Caldas', '15'),
('146', 'Caldono', '19'),
('147', 'California', '68'),
('148', 'Calima (Darién)', '76'),
('149', 'Caloto', '19'),
('15', 'Albania', '44'),
('150', 'Calí', '76'),
('151', 'Campamento', '5'),
('152', 'Campo de la Cruz', '8'),
('153', 'Campoalegre', '41'),
('154', 'Campohermoso', '15'),
('155', 'Canalete', '23'),
('156', 'Candelaria', '8'),
('157', 'Candelaria', '76'),
('158', 'Cantagallo', '13'),
('159', 'Cantón de San Pablo', '27'),
('16', 'Albania', '68'),
('160', 'Caparrapí', '25'),
('161', 'Capitanejo', '68'),
('162', 'Caracolí', '5'),
('163', 'Caramanta', '5'),
('164', 'Carcasí', '68'),
('165', 'Carepa', '5'),
('166', 'Carmen de Apicalá', '73'),
('167', 'Carmen de Carupa', '25'),
('168', 'Carmen de Viboral', '5'),
('169', 'Carmen del Darién (CURBARADÓ)', '27'),
('17', 'Albán', '25'),
('170', 'Carolina', '5'),
('171', 'Cartagena', '13'),
('172', 'Cartagena del Chairá', '18'),
('173', 'Cartago', '76'),
('174', 'Carurú', '97'),
('175', 'Casabianca', '73'),
('176', 'Castilla la Nueva', '50'),
('177', 'Caucasia', '5'),
('178', 'Cañasgordas', '5'),
('179', 'Cepita', '68'),
('18', 'Albán (San José)', '52'),
('180', 'Cereté', '23'),
('181', 'Cerinza', '15'),
('182', 'Cerrito', '68'),
('183', 'Cerro San Antonio', '47'),
('184', 'Chachaguí', '52'),
('185', 'Chaguaní', '25'),
('186', 'Chalán', '70'),
('187', 'Chaparral', '73'),
('188', 'Charalá', '68'),
('189', 'Charta', '68'),
('19', 'Alcalá', '76'),
('190', 'Chigorodó', '5'),
('191', 'Chima', '68'),
('192', 'Chimichagua', '20'),
('193', 'Chimá', '23'),
('194', 'Chinavita', '15'),
('195', 'Chinchiná', '17'),
('196', 'Chinácota', '54'),
('197', 'Chinú', '23'),
('198', 'Chipaque', '25'),
('199', 'Chipatá', '68'),
('2', 'Acacías', '50'),
('20', 'Alejandria', '5'),
('200', 'Chiquinquirá', '15'),
('201', 'Chiriguaná', '20'),
('202', 'Chiscas', '15'),
('203', 'Chita', '15'),
('204', 'Chitagá', '54'),
('205', 'Chitaraque', '15'),
('206', 'Chivatá', '15'),
('207', 'Chivolo', '47'),
('208', 'Choachí', '25'),
('209', 'Chocontá', '25'),
('21', 'Algarrobo', '47'),
('210', 'Chámeza', '85'),
('211', 'Chía', '25'),
('212', 'Chíquiza', '15'),
('213', 'Chívor', '15'),
('214', 'Cicuco', '13'),
('215', 'Cimitarra', '68'),
('216', 'Circasia', '63'),
('217', 'Cisneros', '5'),
('218', 'Ciénaga', '15'),
('219', 'Ciénaga', '47'),
('22', 'Algeciras', '41'),
('220', 'Ciénaga de Oro', '23'),
('221', 'Clemencia', '13'),
('222', 'Cocorná', '5'),
('223', 'Coello', '73'),
('224', 'Cogua', '25'),
('225', 'Colombia', '41'),
('226', 'Colosó (Ricaurte)', '70'),
('227', 'Colón', '86'),
('228', 'Colón (Génova)', '52'),
('229', 'Concepción', '5'),
('23', 'Almaguer', '19'),
('230', 'Concepción', '68'),
('231', 'Concordia', '5'),
('232', 'Concordia', '47'),
('233', 'Condoto', '27'),
('234', 'Confines', '68'),
('235', 'Consaca', '52'),
('236', 'Contadero', '52'),
('237', 'Contratación', '68'),
('238', 'Convención', '54'),
('239', 'Copacabana', '5'),
('24', 'Almeida', '15'),
('240', 'Coper', '15'),
('241', 'Cordobá', '63'),
('242', 'Corinto', '19'),
('243', 'Coromoro', '68'),
('244', 'Corozal', '70'),
('245', 'Corrales', '15'),
('246', 'Cota', '25'),
('247', 'Cotorra', '23'),
('248', 'Covarachía', '15'),
('249', 'Coveñas', '70'),
('25', 'Alpujarra', '73'),
('250', 'Coyaima', '73'),
('251', 'Cravo Norte', '81'),
('252', 'Cuaspud (Carlosama)', '52'),
('253', 'Cubarral', '50'),
('254', 'Cubará', '15'),
('255', 'Cucaita', '15'),
('256', 'Cucunubá', '25'),
('257', 'Cucutilla', '54'),
('258', 'Cuitiva', '15'),
('259', 'Cumaral', '50'),
('26', 'Altamira', '41'),
('260', 'Cumaribo', '99'),
('261', 'Cumbal', '52'),
('262', 'Cumbitara', '52'),
('263', 'Cunday', '73'),
('264', 'Curillo', '18'),
('265', 'Curití', '68'),
('266', 'Curumaní', '20'),
('267', 'Cáceres', '5'),
('268', 'Cáchira', '54'),
('269', 'Cácota', '54'),
('27', 'Alto Baudó (Pie de Pato)', '27'),
('270', 'Cáqueza', '25'),
('271', 'Cértegui', '27'),
('272', 'Cómbita', '15'),
('273', 'Córdoba', '13'),
('274', 'Córdoba', '52'),
('275', 'Cúcuta', '54'),
('276', 'Dabeiba', '5'),
('277', 'Dagua', '76'),
('278', 'Dibulla', '44'),
('279', 'Distracción', '44'),
('28', 'Altos del Rosario', '13'),
('280', 'Dolores', '73'),
('281', 'Don Matías', '5'),
('282', 'Dos Quebradas', '66'),
('283', 'Duitama', '15'),
('284', 'Durania', '54'),
('285', 'Ebéjico', '5'),
('286', 'El Bagre', '5'),
('287', 'El Banco', '47'),
('288', 'El Cairo', '76'),
('289', 'El Calvario', '50'),
('29', 'Alvarado', '73'),
('290', 'El Carmen', '54'),
('291', 'El Carmen', '68'),
('292', 'El Carmen de Atrato', '27'),
('293', 'El Carmen de Bolívar', '13'),
('294', 'El Castillo', '50'),
('295', 'El Cerrito', '76'),
('296', 'El Charco', '52'),
('297', 'El Cocuy', '15'),
('298', 'El Colegio', '25'),
('299', 'El Copey', '20'),
('3', 'Acandí', '27'),
('30', 'Amagá', '5'),
('300', 'El Doncello', '18'),
('301', 'El Dorado', '50'),
('302', 'El Dovio', '76'),
('303', 'El Espino', '15'),
('304', 'El Guacamayo', '68'),
('305', 'El Guamo', '13'),
('306', 'El Molino', '44'),
('307', 'El Paso', '20'),
('308', 'El Paujil', '18'),
('309', 'El Peñol', '52'),
('31', 'Amalfi', '5'),
('310', 'El Peñon', '13'),
('311', 'El Peñon', '68'),
('312', 'El Peñón', '25'),
('313', 'El Piñon', '47'),
('314', 'El Playón', '68'),
('315', 'El Retorno', '95'),
('316', 'El Retén', '47'),
('317', 'El Roble', '70'),
('318', 'El Rosal', '25'),
('319', 'El Rosario', '52'),
('32', 'Ambalema', '73'),
('320', 'El Tablón de Gómez', '52'),
('321', 'El Tambo', '19'),
('322', 'El Tambo', '52'),
('323', 'El Tarra', '54'),
('324', 'El Zulia', '54'),
('325', 'El Águila', '76'),
('326', 'Elías', '41'),
('327', 'Encino', '68'),
('328', 'Enciso', '68'),
('329', 'Entrerríos', '5'),
('33', 'Anapoima', '25'),
('330', 'Envigado', '5'),
('331', 'Espinal', '73'),
('332', 'Facatativá', '25'),
('333', 'Falan', '73'),
('334', 'Filadelfia', '17'),
('335', 'Filandia', '63'),
('336', 'Firavitoba', '15'),
('337', 'Flandes', '73'),
('338', 'Florencia', '18'),
('339', 'Florencia', '19'),
('34', 'Ancuya', '52'),
('340', 'Floresta', '15'),
('341', 'Florida', '76'),
('342', 'Floridablanca', '68'),
('343', 'Florián', '68'),
('344', 'Fonseca', '44'),
('345', 'Fortúl', '81'),
('346', 'Fosca', '25'),
('347', 'Francisco Pizarro', '52'),
('348', 'Fredonia', '5'),
('349', 'Fresno', '73'),
('35', 'Andalucía', '76'),
('350', 'Frontino', '5'),
('351', 'Fuente de Oro', '50'),
('352', 'Fundación', '47'),
('353', 'Funes', '52'),
('354', 'Funza', '25'),
('355', 'Fusagasugá', '25'),
('356', 'Fómeque', '25'),
('357', 'Fúquene', '25'),
('358', 'Gachalá', '25'),
('359', 'Gachancipá', '25'),
('36', 'Andes', '5'),
('360', 'Gachantivá', '15'),
('361', 'Gachetá', '25'),
('362', 'Galapa', '8'),
('363', 'Galeras (Nueva Granada)', '70'),
('364', 'Galán', '68'),
('365', 'Gama', '25'),
('366', 'Gamarra', '20'),
('367', 'Garagoa', '15'),
('368', 'Garzón', '41'),
('369', 'Gigante', '41'),
('37', 'Angelópolis', '5'),
('370', 'Ginebra', '76'),
('371', 'Giraldo', '5'),
('372', 'Girardot', '25'),
('373', 'Girardota', '5'),
('374', 'Girón', '68'),
('375', 'Gonzalez', '20'),
('376', 'Gramalote', '54'),
('377', 'Granada', '5'),
('378', 'Granada', '25'),
('379', 'Granada', '50'),
('38', 'Angostura', '5'),
('380', 'Guaca', '68'),
('381', 'Guacamayas', '15'),
('382', 'Guacarí', '76'),
('383', 'Guachavés', '52'),
('384', 'Guachené', '19'),
('385', 'Guachetá', '25'),
('386', 'Guachucal', '52'),
('387', 'Guadalupe', '5'),
('388', 'Guadalupe', '41'),
('389', 'Guadalupe', '68'),
('39', 'Anolaima', '25'),
('390', 'Guaduas', '25'),
('391', 'Guaitarilla', '52'),
('392', 'Gualmatán', '52'),
('393', 'Guamal', '47'),
('394', 'Guamal', '50'),
('395', 'Guamo', '73'),
('396', 'Guapota', '68'),
('397', 'Guapí', '19'),
('398', 'Guaranda', '70'),
('399', 'Guarne', '5'),
('4', 'Acevedo', '41'),
('40', 'Anorí', '5'),
('400', 'Guasca', '25'),
('401', 'Guatapé', '5'),
('402', 'Guataquí', '25'),
('403', 'Guatavita', '25'),
('404', 'Guateque', '15'),
('405', 'Guavatá', '68'),
('406', 'Guayabal de Siquima', '25'),
('407', 'Guayabetal', '25'),
('408', 'Guayatá', '15'),
('409', 'Guepsa', '68'),
('41', 'Anserma', '17'),
('410', 'Guicán', '15'),
('411', 'Gutiérrez', '25'),
('412', 'Guática', '66'),
('413', 'Gámbita', '68'),
('414', 'Gámeza', '15'),
('415', 'Génova', '63'),
('416', 'Gómez Plata', '5'),
('417', 'Hacarí', '54'),
('418', 'Hatillo de Loba', '13'),
('419', 'Hato', '68'),
('42', 'Ansermanuevo', '76'),
('420', 'Hato Corozal', '85'),
('421', 'Hatonuevo', '44'),
('422', 'Heliconia', '5'),
('423', 'Herrán', '54'),
('424', 'Herveo', '73'),
('425', 'Hispania', '5'),
('426', 'Hobo', '41'),
('427', 'Honda', '73'),
('428', 'Ibagué', '73'),
('429', 'Icononzo', '73'),
('43', 'Anzoátegui', '73'),
('430', 'Iles', '52'),
('431', 'Imúes', '52'),
('432', 'Inzá', '19'),
('433', 'Inírida', '94'),
('434', 'Ipiales', '52'),
('435', 'Isnos', '41'),
('436', 'Istmina', '27'),
('437', 'Itagüí', '5'),
('438', 'Ituango', '5'),
('439', 'Izá', '15'),
('44', 'Anzá', '5'),
('440', 'Jambaló', '19'),
('441', 'Jamundí', '76'),
('442', 'Jardín', '5'),
('443', 'Jenesano', '15'),
('444', 'Jericó', '5'),
('445', 'Jericó', '15'),
('446', 'Jerusalén', '25'),
('447', 'Jesús María', '68'),
('448', 'Jordán', '68'),
('449', 'Juan de Acosta', '8'),
('45', 'Apartadó', '5'),
('450', 'Junín', '25'),
('451', 'Juradó', '27'),
('452', 'La Apartada y La Frontera', '23'),
('453', 'La Argentina', '41'),
('454', 'La Belleza', '68'),
('455', 'La Calera', '25'),
('456', 'La Capilla', '15'),
('457', 'La Ceja', '5'),
('458', 'La Celia', '66'),
('459', 'La Cruz', '52'),
('46', 'Apulo', '25'),
('460', 'La Cumbre', '76'),
('461', 'La Dorada', '17'),
('462', 'La Esperanza', '54'),
('463', 'La Estrella', '5'),
('464', 'La Florida', '52'),
('465', 'La Gloria', '20'),
('466', 'La Jagua de Ibirico', '20'),
('467', 'La Jagua del Pilar', '44'),
('468', 'La Llanada', '52'),
('469', 'La Macarena', '50'),
('47', 'Apía', '66'),
('470', 'La Merced', '17'),
('471', 'La Mesa', '25'),
('472', 'La Montañita', '18'),
('473', 'La Palma', '25'),
('474', 'La Paz', '68'),
('475', 'La Paz (Robles)', '20'),
('476', 'La Peña', '25'),
('477', 'La Pintada', '5'),
('478', 'La Plata', '41'),
('479', 'La Playa', '54'),
('48', 'Aquitania', '15'),
('480', 'La Primavera', '99'),
('481', 'La Salina', '85'),
('482', 'La Sierra', '19'),
('483', 'La Tebaida', '63'),
('484', 'La Tola', '52'),
('485', 'La Unión', '5'),
('486', 'La Unión', '52'),
('487', 'La Unión', '70'),
('488', 'La Unión', '76'),
('489', 'La Uvita', '15'),
('49', 'Aracataca', '47'),
('490', 'La Vega', '19'),
('491', 'La Vega', '25'),
('492', 'La Victoria', '15'),
('493', 'La Victoria', '17'),
('494', 'La Victoria', '76'),
('495', 'La Virginia', '66'),
('496', 'Labateca', '54'),
('497', 'Labranzagrande', '15'),
('498', 'Landázuri', '68'),
('499', 'Lebrija', '68'),
('5', 'Achí', '13'),
('50', 'Aranzazu', '17'),
('500', 'Leiva', '52'),
('501', 'Lejanías', '50'),
('502', 'Lenguazaque', '25'),
('503', 'Leticia', '91'),
('504', 'Liborina', '5'),
('505', 'Linares', '52'),
('506', 'Lloró', '27'),
('507', 'Lorica', '23'),
('508', 'Los Córdobas', '23'),
('509', 'Los Palmitos', '70'),
('51', 'Aratoca', '68'),
('510', 'Los Patios', '54'),
('511', 'Los Santos', '68'),
('512', 'Lourdes', '54'),
('513', 'Luruaco', '8'),
('514', 'Lérida', '73'),
('515', 'Líbano', '73'),
('516', 'López (Micay)', '19'),
('517', 'Macanal', '15'),
('518', 'Macaravita', '68'),
('519', 'Maceo', '5'),
('52', 'Arauca', '81'),
('520', 'Machetá', '25'),
('521', 'Madrid', '25'),
('522', 'Magangué', '13'),
('523', 'Magüi (Payán)', '52'),
('524', 'Mahates', '13'),
('525', 'Maicao', '44'),
('526', 'Majagual', '70'),
('527', 'Malambo', '8'),
('528', 'Mallama (Piedrancha)', '52'),
('529', 'Manatí', '8'),
('53', 'Arauquita', '81'),
('530', 'Manaure', '44'),
('531', 'Manaure Balcón del Cesar', '20'),
('532', 'Manizales', '17'),
('533', 'Manta', '25'),
('534', 'Manzanares', '17'),
('535', 'Maní', '85'),
('536', 'Mapiripan', '50'),
('537', 'Margarita', '13'),
('538', 'Marinilla', '5'),
('539', 'Maripí', '15'),
('54', 'Arbeláez', '25'),
('540', 'Mariquita', '73'),
('541', 'Marmato', '17'),
('542', 'Marquetalia', '17'),
('543', 'Marsella', '66'),
('544', 'Marulanda', '17'),
('545', 'María la Baja', '13'),
('546', 'Matanza', '68'),
('547', 'Medellín', '5'),
('548', 'Medina', '25'),
('549', 'Medio Atrato', '27'),
('55', 'Arboleda (Berruecos)', '52'),
('550', 'Medio Baudó', '27'),
('551', 'Medio San Juan (ANDAGOYA)', '27'),
('552', 'Melgar', '73'),
('553', 'Mercaderes', '19'),
('554', 'Mesetas', '50'),
('555', 'Milán', '18'),
('556', 'Miraflores', '15'),
('557', 'Miraflores', '95'),
('558', 'Miranda', '19'),
('559', 'Mistrató', '66'),
('56', 'Arboledas', '54'),
('560', 'Mitú', '97'),
('561', 'Mocoa', '86'),
('562', 'Mogotes', '68'),
('563', 'Molagavita', '68'),
('564', 'Momil', '23'),
('565', 'Mompós', '13'),
('566', 'Mongua', '15'),
('567', 'Monguí', '15'),
('568', 'Moniquirá', '15'),
('569', 'Montebello', '5'),
('57', 'Arboletes', '5'),
('570', 'Montecristo', '13'),
('571', 'Montelíbano', '23'),
('572', 'Montenegro', '63'),
('573', 'Monteria', '23'),
('574', 'Monterrey', '85'),
('575', 'Morales', '13'),
('576', 'Morales', '19'),
('577', 'Morelia', '18'),
('578', 'Morroa', '70'),
('579', 'Mosquera', '25'),
('58', 'Arcabuco', '15'),
('580', 'Mosquera', '52'),
('581', 'Motavita', '15'),
('582', 'Moñitos', '23'),
('583', 'Murillo', '73'),
('584', 'Murindó', '5'),
('585', 'Mutatá', '5'),
('586', 'Mutiscua', '54'),
('587', 'Muzo', '15'),
('588', 'Málaga', '68'),
('589', 'Nariño', '5'),
('59', 'Arenal', '13'),
('590', 'Nariño', '25'),
('591', 'Nariño', '52'),
('592', 'Natagaima', '73'),
('593', 'Nechí', '5'),
('594', 'Necoclí', '5'),
('595', 'Neira', '17'),
('596', 'Neiva', '41'),
('597', 'Nemocón', '25'),
('598', 'Nilo', '25'),
('599', 'Nimaima', '25'),
('6', 'Agrado', '41'),
('60', 'Argelia', '5'),
('600', 'Nobsa', '15'),
('601', 'Nocaima', '25'),
('602', 'Norcasia', '17'),
('603', 'Norosí', '13'),
('604', 'Novita', '27'),
('605', 'Nueva Granada', '47'),
('606', 'Nuevo Colón', '15'),
('607', 'Nunchía', '85'),
('608', 'Nuquí', '27'),
('609', 'Nátaga', '41'),
('61', 'Argelia', '19'),
('610', 'Obando', '76'),
('611', 'Ocamonte', '68'),
('612', 'Ocaña', '54'),
('613', 'Oiba', '68'),
('614', 'Oicatá', '15'),
('615', 'Olaya', '5'),
('616', 'Olaya Herrera', '52'),
('617', 'Onzaga', '68'),
('618', 'Oporapa', '41'),
('619', 'Orito', '86'),
('62', 'Argelia', '76'),
('620', 'Orocué', '85'),
('621', 'Ortega', '73'),
('622', 'Ospina', '52'),
('623', 'Otanche', '15'),
('624', 'Ovejas', '70'),
('625', 'Pachavita', '15'),
('626', 'Pacho', '25'),
('627', 'Padilla', '19'),
('628', 'Paicol', '41'),
('629', 'Pailitas', '20'),
('63', 'Ariguaní (El Difícil)', '47'),
('630', 'Paime', '25'),
('631', 'Paipa', '15'),
('632', 'Pajarito', '15'),
('633', 'Palermo', '41'),
('634', 'Palestina', '17'),
('635', 'Palestina', '41'),
('636', 'Palmar', '68'),
('637', 'Palmar de Varela', '8'),
('638', 'Palmas del Socorro', '68'),
('639', 'Palmira', '76'),
('64', 'Arjona', '13'),
('640', 'Palmito', '70'),
('641', 'Palocabildo', '73'),
('642', 'Pamplona', '54'),
('643', 'Pamplonita', '54'),
('644', 'Pandi', '25'),
('645', 'Panqueba', '15'),
('646', 'Paratebueno', '25'),
('647', 'Pasca', '25'),
('648', 'Patía (El Bordo)', '19'),
('649', 'Pauna', '15'),
('65', 'Armenia', '5'),
('650', 'Paya', '15'),
('651', 'Paz de Ariporo', '85'),
('652', 'Paz de Río', '15'),
('653', 'Pedraza', '47'),
('654', 'Pelaya', '20'),
('655', 'Pensilvania', '17'),
('656', 'Peque', '5'),
('657', 'Pereira', '66'),
('658', 'Pesca', '15'),
('659', 'Peñol', '5'),
('66', 'Armenia', '63'),
('660', 'Piamonte', '19'),
('661', 'Pie de Cuesta', '68'),
('662', 'Piedras', '73'),
('663', 'Piendamó', '19'),
('664', 'Pijao', '63'),
('665', 'Pijiño', '47'),
('666', 'Pinchote', '68'),
('667', 'Pinillos', '13'),
('668', 'Piojo', '8'),
('669', 'Pisva', '15'),
('67', 'Armero (Guayabal)', '73'),
('670', 'Pital', '41'),
('671', 'Pitalito', '41'),
('672', 'Pivijay', '47'),
('673', 'Planadas', '73'),
('674', 'Planeta Rica', '23'),
('675', 'Plato', '47'),
('676', 'Policarpa', '52'),
('677', 'Polonuevo', '8'),
('678', 'Ponedera', '8'),
('679', 'Popayán', '19'),
('68', 'Arroyohondo', '13'),
('680', 'Pore', '85'),
('681', 'Potosí', '52'),
('682', 'Pradera', '76'),
('683', 'Prado', '73'),
('684', 'Providencia', '52'),
('685', 'Providencia', '88'),
('686', 'Pueblo Bello', '20'),
('687', 'Pueblo Nuevo', '23'),
('688', 'Pueblo Rico', '66'),
('689', 'Pueblorrico', '5'),
('69', 'Astrea', '20'),
('690', 'Puebloviejo', '47'),
('691', 'Puente Nacional', '68'),
('692', 'Puerres', '52'),
('693', 'Puerto Asís', '86'),
('694', 'Puerto Berrío', '5'),
('695', 'Puerto Boyacá', '15'),
('696', 'Puerto Caicedo', '86'),
('697', 'Puerto Carreño', '99'),
('698', 'Puerto Colombia', '8'),
('699', 'Puerto Concordia', '50'),
('7', 'Agua de Dios', '25'),
('70', 'Ataco', '73'),
('700', 'Puerto Escondido', '23'),
('701', 'Puerto Gaitán', '50'),
('702', 'Puerto Guzmán', '86'),
('703', 'Puerto Leguízamo', '86'),
('704', 'Puerto Libertador', '23'),
('705', 'Puerto Lleras', '50'),
('706', 'Puerto López', '50'),
('707', 'Puerto Nare', '5'),
('708', 'Puerto Nariño', '91'),
('709', 'Puerto Parra', '68'),
('71', 'Atrato (Yuto)', '27'),
('710', 'Puerto Rico', '18'),
('711', 'Puerto Rico', '50'),
('712', 'Puerto Rondón', '81'),
('713', 'Puerto Salgar', '25'),
('714', 'Puerto Santander', '54'),
('715', 'Puerto Tejada', '19'),
('716', 'Puerto Triunfo', '5'),
('717', 'Puerto Wilches', '68'),
('718', 'Pulí', '25'),
('719', 'Pupiales', '52'),
('72', 'Ayapel', '23'),
('720', 'Puracé (Coconuco)', '19'),
('721', 'Purificación', '73'),
('722', 'Purísima', '23'),
('723', 'Pácora', '17'),
('724', 'Páez', '15'),
('725', 'Páez (Belalcazar)', '19'),
('726', 'Páramo', '68'),
('727', 'Quebradanegra', '25'),
('728', 'Quetame', '25'),
('729', 'Quibdó', '27'),
('73', 'Bagadó', '27'),
('730', 'Quimbaya', '63'),
('731', 'Quinchía', '66'),
('732', 'Quipama', '15'),
('733', 'Quipile', '25'),
('734', 'Ragonvalia', '54'),
('735', 'Ramiriquí', '15'),
('736', 'Recetor', '85'),
('737', 'Regidor', '13'),
('738', 'Remedios', '5'),
('739', 'Remolino', '47'),
('74', 'Bahía Solano (Mútis)', '27'),
('740', 'Repelón', '8'),
('741', 'Restrepo', '50'),
('742', 'Restrepo', '76'),
('743', 'Retiro', '5'),
('744', 'Ricaurte', '25'),
('745', 'Ricaurte', '52'),
('746', 'Rio Negro', '68'),
('747', 'Rioblanco', '73'),
('748', 'Riofrío', '76'),
('749', 'Riohacha', '44'),
('75', 'Bajo Baudó (Pizarro)', '27'),
('750', 'Risaralda', '17'),
('751', 'Rivera', '41'),
('752', 'Roberto Payán (San José)', '52'),
('753', 'Roldanillo', '76'),
('754', 'Roncesvalles', '73'),
('755', 'Rondón', '15'),
('756', 'Rosas', '19'),
('757', 'Rovira', '73'),
('758', 'Ráquira', '15'),
('759', 'Río Iró', '27'),
('76', 'Balboa', '19'),
('760', 'Río Quito', '27'),
('761', 'Río Sucio', '17'),
('762', 'Río Viejo', '13'),
('763', 'Río de oro', '20'),
('764', 'Ríonegro', '5'),
('765', 'Ríosucio', '27'),
('766', 'Sabana de Torres', '68'),
('767', 'Sabanagrande', '8'),
('768', 'Sabanalarga', '5'),
('769', 'Sabanalarga', '8'),
('77', 'Balboa', '66'),
('770', 'Sabanalarga', '85'),
('771', 'Sabanas de San Angel (SAN ANGEL)', '47'),
('772', 'Sabaneta', '5'),
('773', 'Saboyá', '15'),
('774', 'Sahagún', '23'),
('775', 'Saladoblanco', '41'),
('776', 'Salamina', '17'),
('777', 'Salamina', '47'),
('778', 'Salazar', '54'),
('779', 'Saldaña', '73'),
('78', 'Baranoa', '8'),
('780', 'Salento', '63'),
('781', 'Salgar', '5'),
('782', 'Samacá', '15'),
('783', 'Samaniego', '52'),
('784', 'Samaná', '17'),
('785', 'Sampués', '70'),
('786', 'San Agustín', '41'),
('787', 'San Alberto', '20'),
('788', 'San Andrés', '68'),
('789', 'San Andrés Sotavento', '23'),
('79', 'Baraya', '41'),
('790', 'San Andrés de Cuerquía', '5'),
('791', 'San Antero', '23'),
('792', 'San Antonio', '73'),
('793', 'San Antonio de Tequendama', '25'),
('794', 'San Benito', '68'),
('795', 'San Benito Abad', '70'),
('796', 'San Bernardo', '25'),
('797', 'San Bernardo', '52'),
('798', 'San Bernardo del Viento', '23'),
('799', 'San Calixto', '54'),
('8', 'Aguachica', '20'),
('80', 'Barbacoas', '52'),
('800', 'San Carlos', '5'),
('801', 'San Carlos', '23'),
('802', 'San Carlos de Guaroa', '50'),
('803', 'San Cayetano', '25'),
('804', 'San Cayetano', '54'),
('805', 'San Cristobal', '13'),
('806', 'San Diego', '20'),
('807', 'San Eduardo', '15'),
('808', 'San Estanislao', '13'),
('809', 'San Fernando', '13'),
('81', 'Barbosa', '5'),
('810', 'San Francisco', '5'),
('811', 'San Francisco', '25'),
('812', 'San Francisco', '86'),
('813', 'San Gíl', '68'),
('814', 'San Jacinto', '13'),
('815', 'San Jacinto del Cauca', '13'),
('816', 'San Jerónimo', '5'),
('817', 'San Joaquín', '68'),
('818', 'San José', '17'),
('819', 'San José de Miranda', '68'),
('82', 'Barbosa', '68'),
('820', 'San José de Montaña', '5'),
('821', 'San José de Pare', '15'),
('822', 'San José de Uré', '23'),
('823', 'San José del Fragua', '18'),
('824', 'San José del Guaviare', '95'),
('825', 'San José del Palmar', '27'),
('826', 'San Juan de Arama', '50'),
('827', 'San Juan de Betulia', '70'),
('828', 'San Juan de Nepomuceno', '13'),
('829', 'San Juan de Pasto', '52'),
('83', 'Barichara', '68'),
('830', 'San Juan de Río Seco', '25'),
('831', 'San Juan de Urabá', '5'),
('832', 'San Juan del Cesar', '44'),
('833', 'San Juanito', '50'),
('834', 'San Lorenzo', '52'),
('835', 'San Luis', '73'),
('836', 'San Luís', '5'),
('837', 'San Luís de Gaceno', '15'),
('838', 'San Luís de Palenque', '85'),
('839', 'San Marcos', '70'),
('84', 'Barranca de Upía', '50'),
('840', 'San Martín', '20'),
('841', 'San Martín', '50'),
('842', 'San Martín de Loba', '13'),
('843', 'San Mateo', '15'),
('844', 'San Miguel', '68'),
('845', 'San Miguel', '86'),
('846', 'San Miguel de Sema', '15'),
('847', 'San Onofre', '70'),
('848', 'San Pablo', '13'),
('849', 'San Pablo', '52'),
('85', 'Barrancabermeja', '68'),
('850', 'San Pablo de Borbur', '15'),
('851', 'San Pedro', '5'),
('852', 'San Pedro', '70'),
('853', 'San Pedro', '76'),
('854', 'San Pedro de Cartago', '52'),
('855', 'San Pedro de Urabá', '5'),
('856', 'San Pelayo', '23'),
('857', 'San Rafael', '5'),
('858', 'San Roque', '5'),
('859', 'San Sebastián', '19'),
('86', 'Barrancas', '44'),
('860', 'San Sebastián de Buenavista', '47'),
('861', 'San Vicente', '5'),
('862', 'San Vicente del Caguán', '18'),
('863', 'San Vicente del Chucurí', '68'),
('864', 'San Zenón', '47'),
('865', 'Sandoná', '52'),
('866', 'Santa Ana', '47'),
('867', 'Santa Bárbara', '5'),
('868', 'Santa Bárbara', '68'),
('869', 'Santa Bárbara (Iscuandé)', '52'),
('87', 'Barranco de Loba', '13'),
('870', 'Santa Bárbara de Pinto', '47'),
('871', 'Santa Catalina', '13'),
('872', 'Santa Fé de Antioquia', '5'),
('873', 'Santa Genoveva de Docorodó', '27'),
('874', 'Santa Helena del Opón', '68'),
('875', 'Santa Isabel', '73'),
('876', 'Santa Lucía', '8'),
('877', 'Santa Marta', '47'),
('878', 'Santa María', '15'),
('879', 'Santa María', '41'),
('88', 'Barranquilla', '8'),
('880', 'Santa Rosa', '13'),
('881', 'Santa Rosa', '19'),
('882', 'Santa Rosa de Cabal', '66'),
('883', 'Santa Rosa de Osos', '5'),
('884', 'Santa Rosa de Viterbo', '15'),
('885', 'Santa Rosa del Sur', '13'),
('886', 'Santa Rosalía', '99'),
('887', 'Santa Sofía', '15'),
('888', 'Santana', '15'),
('889', 'Santander de Quilichao', '19'),
('89', 'Becerríl', '20'),
('890', 'Santiago', '54'),
('891', 'Santiago', '86'),
('892', 'Santo Domingo', '5'),
('893', 'Santo Tomás', '8'),
('894', 'Santuario', '5'),
('895', 'Santuario', '66'),
('896', 'Sapuyes', '52'),
('897', 'Saravena', '81'),
('898', 'Sardinata', '54'),
('899', 'Sasaima', '25'),
('9', 'Aguada', '68'),
('90', 'Belalcázar', '17'),
('900', 'Sativanorte', '15'),
('901', 'Sativasur', '15'),
('902', 'Segovia', '5'),
('903', 'Sesquilé', '25'),
('904', 'Sevilla', '76'),
('905', 'Siachoque', '15'),
('906', 'Sibaté', '25'),
('907', 'Sibundoy', '86'),
('908', 'Silos', '54'),
('909', 'Silvania', '25'),
('91', 'Bello', '5'),
('910', 'Silvia', '19'),
('911', 'Simacota', '68'),
('912', 'Simijaca', '25'),
('913', 'Simití', '13'),
('914', 'Sincelejo', '70'),
('915', 'Sincé', '70'),
('916', 'Sipí', '27'),
('917', 'Sitionuevo', '47'),
('918', 'Soacha', '25'),
('919', 'Soatá', '15'),
('92', 'Belmira', '5'),
('920', 'Socha', '15'),
('921', 'Socorro', '68'),
('922', 'Socotá', '15'),
('923', 'Sogamoso', '15'),
('924', 'Solano', '18'),
('925', 'Soledad', '8'),
('926', 'Solita', '18'),
('927', 'Somondoco', '15'),
('928', 'Sonsón', '5'),
('929', 'Sopetrán', '5'),
('93', 'Beltrán', '25'),
('930', 'Soplaviento', '13'),
('931', 'Sopó', '25'),
('932', 'Sora', '15'),
('933', 'Soracá', '15'),
('934', 'Sotaquirá', '15'),
('935', 'Sotara (Paispamba)', '19'),
('936', 'Sotomayor (Los Andes)', '52'),
('937', 'Suaita', '68'),
('938', 'Suan', '8'),
('939', 'Suaza', '41'),
('94', 'Belén', '15'),
('940', 'Subachoque', '25'),
('941', 'Sucre', '19'),
('942', 'Sucre', '68'),
('943', 'Sucre', '70'),
('944', 'Suesca', '25'),
('945', 'Supatá', '25'),
('946', 'Supía', '17'),
('947', 'Suratá', '68'),
('948', 'Susa', '25'),
('949', 'Susacón', '15'),
('95', 'Belén', '52'),
('950', 'Sutamarchán', '15'),
('951', 'Sutatausa', '25'),
('952', 'Sutatenza', '15'),
('953', 'Suárez', '19'),
('954', 'Suárez', '73'),
('955', 'Sácama', '85'),
('956', 'Sáchica', '15'),
('957', 'Tabio', '25'),
('958', 'Tadó', '27'),
('959', 'Talaigua Nuevo', '13'),
('96', 'Belén de Bajirá', '27'),
('960', 'Tamalameque', '20'),
('961', 'Tame', '81'),
('962', 'Taminango', '52'),
('963', 'Tangua', '52'),
('964', 'Taraira', '97'),
('965', 'Tarazá', '5'),
('966', 'Tarqui', '41'),
('967', 'Tarso', '5'),
('968', 'Tasco', '15'),
('969', 'Tauramena', '85'),
('97', 'Belén de Umbría', '66'),
('970', 'Tausa', '25'),
('971', 'Tello', '41'),
('972', 'Tena', '25'),
('973', 'Tenerife', '47'),
('974', 'Tenjo', '25'),
('975', 'Tenza', '15'),
('976', 'Teorama', '54'),
('977', 'Teruel', '41'),
('978', 'Tesalia', '41'),
('979', 'Tibacuy', '25'),
('98', 'Belén de los Andaquíes', '18'),
('980', 'Tibaná', '15'),
('981', 'Tibasosa', '15'),
('982', 'Tibirita', '25'),
('983', 'Tibú', '54'),
('984', 'Tierralta', '23'),
('985', 'Timaná', '41'),
('986', 'Timbiquí', '19'),
('987', 'Timbío', '19'),
('988', 'Tinjacá', '15'),
('989', 'Tipacoque', '15'),
('99', 'Berbeo', '15'),
('990', 'Tiquisio (Puerto Rico)', '13'),
('991', 'Titiribí', '5'),
('992', 'Toca', '15'),
('993', 'Tocaima', '25'),
('994', 'Tocancipá', '25'),
('995', 'Toguí', '15'),
('996', 'Toledo', '5'),
('997', 'Toledo', '54'),
('998', 'Tolú', '70'),
('999', 'Tolú Viejo', '70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_contrato`
--

CREATE TABLE `empresarial_contrato` (
  `id_contrato` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `horas_semanales` int(11) NOT NULL,
  `salario_asignado` double NOT NULL,
  `estado` varchar(10) NOT NULL,
  `tipo_contrato` varchar(20) NOT NULL,
  `id_cargo_id` int(11) NOT NULL,
  `numero_identificacion_e_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_contrato`
--

INSERT INTO `empresarial_contrato` (`id_contrato`, `fecha_inicio`, `fecha_fin`, `horas_semanales`, `salario_asignado`, `estado`, `tipo_contrato`, `id_cargo_id`, `numero_identificacion_e_id`) VALUES
(2, '2024-08-01', NULL, 48, 1300000, 'activo', 'Termino fijo', 1, '1003'),
(4, '2024-08-07', NULL, 48, 1300000, 'activo', 'Termino fijo', 1, '1000002'),
(5, '2024-08-07', NULL, 48, 1300000, 'activo', 'Termino fijo', 2, '1000021212'),
(12, '2024-05-14', NULL, 48, 1300000, 'activo', 'Termino fijo', 1, '4444444'),
(13, '2024-09-04', NULL, 42, 1300000, 'Activo', 'Termino Fijo', 1, '1212000554'),
(14, '2024-06-03', NULL, 48, 1300000, 'Activo', 'Termino Fijo', 1, '1212777877'),
(15, '2024-09-04', NULL, 45, 1300000, 'Activo', 'Termino Fijo', 1, '121277774');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_departamento`
--

CREATE TABLE `empresarial_departamento` (
  `codigo_departamento` varchar(10) NOT NULL,
  `nombre_departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_departamento`
--

INSERT INTO `empresarial_departamento` (`codigo_departamento`, `nombre_departamento`) VALUES
('11', 'BOGOTÁ, D.C.'),
('13', 'BOLÍVAR'),
('15', 'BOYACÁ'),
('17', 'CALDAS'),
('18', 'CAQUETÁ'),
('19', 'CAUCA'),
('20', 'CESAR'),
('23', 'CÓRDOBA'),
('25', 'CUNDINAMARCA'),
('27', 'CHOCÓ'),
('41', 'HUILA'),
('44', 'LA GUAJIRA'),
('47', 'MAGDALENA'),
('5', 'ANTIOQUIA'),
('50', 'META'),
('52', 'NARIÑO'),
('54', 'NORTE DE SANTANDER'),
('63', 'QUINDIO'),
('66', 'RISARALDA'),
('68', 'SANTANDER'),
('70', 'SUCRE'),
('73', 'TOLIMA'),
('76', 'VALLE DEL CAUCA'),
('8', 'ATLÁNTICO'),
('81', 'ARAUCA'),
('85', 'CASANARE'),
('86', 'PUTUMAYO'),
('88', 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA'),
('91', 'AMAZONAS'),
('94', 'GUAINÍA'),
('95', 'GUAVIARE'),
('97', 'VAUPÉS'),
('99', 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_empleado`
--

CREATE TABLE `empresarial_empleado` (
  `numero_identificacion_e` varchar(10) NOT NULL,
  `primer_nombre` varchar(30) NOT NULL,
  `segundo_nombre` varchar(30) DEFAULT NULL,
  `primer_apellido` varchar(30) NOT NULL,
  `segundo_apellido` varchar(30) DEFAULT NULL,
  `estado_civil` varchar(10) NOT NULL,
  `tipo_documento` varchar(25) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_exp_documento` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `numero_cuenta_bancaria` varchar(20) NOT NULL,
  `banco` varchar(30) NOT NULL,
  `imagen_empleado` varchar(100) NOT NULL,
  `nit_id` varchar(11) DEFAULT NULL,
  `id_nivel_estudio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_empleado`
--

INSERT INTO `empresarial_empleado` (`numero_identificacion_e`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `estado_civil`, `tipo_documento`, `correo`, `celular`, `genero`, `fecha_nacimiento`, `fecha_exp_documento`, `direccion`, `numero_cuenta_bancaria`, `banco`, `imagen_empleado`, `nit_id`, `id_nivel_estudio_id`) VALUES
('1000002', 'Helmut', NULL, 'Romero', NULL, 'Soltero', 'Cédula', 'helmutramirez@gmail.com', '312121', 'Masculino', '2020-08-07', '2024-08-07', 'jhjjj', 'dfhgfhfg', 'dfhhhg', 'photos/descarga_2.jpg', '18223', 1),
('1000021212', 'Vanessa', NULL, 'Garcia', NULL, 'Soltero', 'Cédula', 'beligrofhel@gmail.com', '3025601200', 'Masculino', '2000-10-01', '2018-10-10', 'Av Call 45 N 100', '00000', '00', 'photos/descarga_1.jpg', '18223', 1),
('1003', 'Contador', NULL, 'jefe', NULL, 'No indica', 'Cédula', 'helmutramirez8@gmail.com', '0000000', 'Otro', '2000-01-01', '2020-01-01', '00', '00000', '00', 'photos/descarga_2.jpg', NULL, 1),
('1212000554', 'Felipe', 'Enrique', 'TOrres', 'Carloe', 'Casado', 'Cédula', 'vanesa@gmail.com', '3158074034', 'Masculino', '2000-02-10', '2023-12-12', 'Cra. 18 #45-21', '10000', 'Bogota', 'photos/images_1.jpg', '546546512', 1),
('121277774', 'Felipe', 'Enrique', 'TOrres', 'Carloe', 'Casado', 'Cédula', 'vanesstretdsa@gmail.com', '3158074504', 'Masculino', '2000-02-10', '2023-12-12', 'Cra. 18 #45-21', '10000', 'Bogota', 'photos/hubble.gif', '546546512', 1),
('1212777777', 'Felipe', 'Enrique', 'TOrres', 'Carloe', 'Casado', 'Cédula', 'vanessdsa@gmail.com', '315807404', 'Masculino', '2000-02-10', '2023-12-12', 'Cra. 18 #45-21', '10000', 'Bogota', 'photos/images_1_o1T97QN.jpg', '18223', 1),
('1212777877', 'Felipe', 'Enrique', 'TOrres', 'Carloe', 'Casado', 'Cédula', 'vaneqwqwsa@gmail.com', '3158074073', 'Masculino', '2000-10-10', '2024-09-06', 'Cra. 18 #45-21', '10000', '12121', 'photos/set-brown-binoculars-cartoon-style-260nw-2208129719.webp', '18223', 1),
('1414141', 'Felipe', 'Enrique', 'TOrres', 'Carloe', 'Casado', 'Cédula', 'vanessdeffsa@gmail.com', '3158074074', 'Masculino', '2000-02-10', '2023-12-12', 'Cra. 18 #45-21', '10000', 'Bogota', 'photos/images.jpg', NULL, 1),
('4444444', 'Felipe', NULL, 'TOrres', NULL, 'Casado', 'Cédula', 'ghtrytry@gmail.com', 'hhhh', 'Masculino', '2020-08-08', '2024-07-07', 'hhrrr', 'hhh', 'hhh', 'photos/images.jpg', '546546512', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_empresa`
--

CREATE TABLE `empresarial_empresa` (
  `nit` varchar(11) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `telefono_entidad` varchar(10) NOT NULL,
  `correo_entidad` varchar(255) NOT NULL,
  `imagen_empresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_empresa`
--

INSERT INTO `empresarial_empresa` (`nit`, `razon_social`, `telefono_entidad`, `correo_entidad`, `imagen_empresa`) VALUES
('18223', 'Cocacola', '3177290760', '45645@gmail.com', 'photos/1_galileo-2.jpg'),
('546546512', 'Sena', '311', 'asdf@gmail.com', 'photos/descarga.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_horasextrasrecargos`
--

CREATE TABLE `empresarial_horasextrasrecargos` (
  `id` bigint(20) NOT NULL,
  `fecha_registro` date NOT NULL,
  `HorasExDiu` int(11) DEFAULT NULL,
  `HorasExNoc` int(11) DEFAULT NULL,
  `HorasExFestivaDiu` int(11) DEFAULT NULL,
  `HorasExFestivaNoc` int(11) DEFAULT NULL,
  `recargoDiuFes` int(11) DEFAULT NULL,
  `recargoNoc` int(11) DEFAULT NULL,
  `recargoNocFest` int(11) DEFAULT NULL,
  `empleado_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_liquidacion`
--

CREATE TABLE `empresarial_liquidacion` (
  `id_liquidacion` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `fecha_calculo` date DEFAULT NULL,
  `salud_empleado` decimal(10,2) NOT NULL,
  `pension_empleado` decimal(10,2) NOT NULL,
  `salud_empresa` decimal(10,2) NOT NULL,
  `pension_empresa` decimal(10,2) NOT NULL,
  `arl` decimal(10,2) NOT NULL,
  `caja_compensacion` decimal(10,2) NOT NULL,
  `vacaciones` int(11) DEFAULT NULL,
  `cesantias` int(11) DEFAULT NULL,
  `intereses_cesantias` int(11) DEFAULT NULL,
  `total_antes_deducciones` decimal(10,2) NOT NULL,
  `total_final` decimal(10,2) NOT NULL,
  `numero_identificacion_e_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_liquidacion`
--

INSERT INTO `empresarial_liquidacion` (`id_liquidacion`, `fecha_inicio`, `fecha_fin`, `fecha_calculo`, `salud_empleado`, `pension_empleado`, `salud_empresa`, `pension_empresa`, `arl`, `caja_compensacion`, `vacaciones`, `cesantias`, `intereses_cesantias`, `total_antes_deducciones`, `total_final`, `numero_identificacion_e_id`) VALUES
(29, '2024-09-01', '2024-09-30', '2024-09-13', 52000.00, 52000.00, 110500.00, 156000.00, 13572.00, 52000.00, 65000, 130000, 1560, 1462000.00, 1358000.00, '1000002'),
(30, '2024-09-01', '2024-09-30', '2024-09-13', 52000.00, 52000.00, 110500.00, 156000.00, 13572.00, 52000.00, 65000, 130000, 1560, 1300000.00, 1358000.00, '1000002'),
(32, '2024-09-01', '2024-09-30', '2024-09-13', 52000.00, 52000.00, 110500.00, 156000.00, 13572.00, 52000.00, 218472, 436944, 17623, 1300000.00, 1358000.00, '4444444');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_nivelestudio`
--

CREATE TABLE `empresarial_nivelestudio` (
  `id_nivel_estudio` int(11) NOT NULL,
  `descripcion_nivel_estudio` varchar(30) NOT NULL,
  `estado_estudio` varchar(20) NOT NULL,
  `nivel_academico` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_nivelestudio`
--

INSERT INTO `empresarial_nivelestudio` (`id_nivel_estudio`, `descripcion_nivel_estudio`, `estado_estudio`, `nivel_academico`) VALUES
(1, 'Contaduria publica', 'Culminado', 'Pregrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_nivelgrado`
--

CREATE TABLE `empresarial_nivelgrado` (
  `id_nivel_grado` int(11) NOT NULL,
  `tipo_nivel_grado` varchar(10) NOT NULL,
  `salario_minimo` decimal(10,2) NOT NULL,
  `salario_maximo` decimal(10,2) NOT NULL,
  `min_meses_expe` int(11) NOT NULL,
  `id_nivel_estudio_requerido_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_nivelgrado`
--

INSERT INTO `empresarial_nivelgrado` (`id_nivel_grado`, `tipo_nivel_grado`, `salario_minimo`, `salario_maximo`, `min_meses_expe`, `id_nivel_estudio_requerido_id`) VALUES
(9, '1', 1.00, 1.00, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_novedades`
--

CREATE TABLE `empresarial_novedades` (
  `id_novedad` int(11) NOT NULL,
  `fecha_novedad` date NOT NULL,
  `descripcion_novedad` longtext NOT NULL,
  `numero_identificacion_e_id` varchar(10) NOT NULL,
  `id_tipo_novedad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_passwordresetrequest`
--

CREATE TABLE `empresarial_passwordresetrequest` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `used` tinyint(1) NOT NULL,
  `usuario_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_passwordresetrequest`
--

INSERT INTO `empresarial_passwordresetrequest` (`id`, `token`, `created_at`, `expires_at`, `used`, `usuario_id`) VALUES
(4, 'ffLNA_HRYICIuvEZ_q8vG43vuRc', '2024-09-10 19:18:32.406177', '2024-09-10 19:33:32.406177', 1, '1003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_sede`
--

CREATE TABLE `empresarial_sede` (
  `id_sede` int(11) NOT NULL,
  `nombre_sede` varchar(100) NOT NULL,
  `direccion_sede` varchar(255) NOT NULL,
  `codigo_ciudad_id` varchar(10) NOT NULL,
  `nit_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_tiponovedad`
--

CREATE TABLE `empresarial_tiponovedad` (
  `id_tipo_novedad` int(11) NOT NULL,
  `descripcion_tipo_novedad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_usuarios`
--

CREATE TABLE `empresarial_usuarios` (
  `id` bigint(20) NOT NULL,
  `intentos` int(11) NOT NULL,
  `estado_u` tinyint(1) NOT NULL,
  `contrasena` varchar(88) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `usuario_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_usuarios`
--

INSERT INTO `empresarial_usuarios` (`id`, `intentos`, `estado_u`, `contrasena`, `rol`, `usuario_id`) VALUES
(1, 0, 1, 'pbkdf2_sha256$720000$uafZ3SkDrleIVh7yYw5ceP$tYApgz/vhT2mgL8UduRqN7YyxRSOxmPOdsctueEswEY=', 'Empleado General', '1000002'),
(1004, 0, 1, 'pbkdf2_sha256$720000$uafZ3SkDrleIVh7yYw5ceP$tYApgz/vhT2mgL8UduRqN7YyxRSOxmPOdsctueEswEY=', 'Contador', '1003'),
(1005, 0, 0, 'pbkdf2_sha256$720000$uafZ3SkDrleIVh7yYw5ceP$tYApgz/vhT2mgL8UduRqN7YyxRSOxmPOdsctueEswEY=', 'Empleado General', '1000021212'),
(1006, 0, 0, 'pbkdf2_sha256$720000$jjXMNybru0kGcUabZt5t9I$DjayeMe2DHK6cfDH9z5BEM1TqipC1HahfwJZ+nGgYvw=', 'Empleado General', '1212000554'),
(1007, 0, 0, 'pbkdf2_sha256$720000$g1wzqRjhLPVpMTXGtQxP8v$fpZ5JOpvYBc6udCvZGscv1G0tAMTWkaKvJyqfJjozOc=', 'Empleado General', '1212777777'),
(1008, 0, 0, 'pbkdf2_sha256$720000$XOlcXGbYKnBUyUQjZ0yauI$sB7ZyVFvCfZpZYdbHVkIaWJPrD8MLOYYNabGRV04Lvs=', 'Empleado General', '1414141'),
(1009, 0, 0, 'pbkdf2_sha256$720000$Kd4vaewdTULJOxr7yppIFn$ewPD5E4JkZCBU7lVX8jXW+xh3vcftY51yBw4T7AkPXk=', 'Empleado General', '121277774'),
(1010, 0, 0, 'pbkdf2_sha256$720000$z52BhGJExPqsPioCsCVIss$UsHCHKtT8z+nPATRzQfxRW0/zK1wM/bMwzvG1ZlN1ng=', 'Empleado General', '1212777877');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresarial_vacacionescesantias`
--

CREATE TABLE `empresarial_vacacionescesantias` (
  `id` bigint(20) NOT NULL,
  `vacaciones_acumulado` decimal(10,2) DEFAULT NULL,
  `cesantias_acumuladas` decimal(10,2) DEFAULT NULL,
  `intereses_cesantias` decimal(10,2) DEFAULT NULL,
  `antiguedad` int(11) DEFAULT NULL,
  `dias_vacaciones` int(11) DEFAULT NULL,
  `numero_identificacion_e_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresarial_vacacionescesantias`
--

INSERT INTO `empresarial_vacacionescesantias` (`id`, `vacaciones_acumulado`, `cesantias_acumuladas`, `intereses_cesantias`, `antiguedad`, `dias_vacaciones`, `numero_identificacion_e_id`) VALUES
(8, 130000.00, 260000.00, 3120.00, 72, 2, '1000002'),
(10, 218472.22, 436944.44, 17623.43, 121, 5, '4444444');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `independientes_calculos`
--

CREATE TABLE `independientes_calculos` (
  `id` bigint(20) NOT NULL,
  `salud` double DEFAULT NULL,
  `pension` double DEFAULT NULL,
  `arl` double DEFAULT NULL,
  `salarioBase` double DEFAULT NULL,
  `cajaCompensacion` double DEFAULT NULL,
  `FSP` double DEFAULT NULL,
  `documento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `independientes_datoscalculos`
--

CREATE TABLE `independientes_datoscalculos` (
  `id` bigint(20) NOT NULL,
  `salarioBase` double NOT NULL,
  `ibc` double NOT NULL,
  `salud` double NOT NULL,
  `pension` double NOT NULL,
  `arl` varchar(20) DEFAULT NULL,
  `CCF` varchar(20) DEFAULT NULL,
  `FSP` double DEFAULT NULL,
  `documento_id` int(11) NOT NULL,
  `caja_comprensacion` varchar(100) DEFAULT NULL,
  `riesgos_laborales` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `independientes_independiente`
--

CREATE TABLE `independientes_independiente` (
  `numero_identificacion` int(11) NOT NULL,
  `primer_nombre` varchar(30) NOT NULL,
  `segundo_nombre` varchar(30) DEFAULT NULL,
  `primer_apellido` varchar(30) NOT NULL,
  `segundo_apellido` varchar(30) DEFAULT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `tipo_documento` varchar(50) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_exp_documento` date NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `caja_comprensacion` varchar(80) DEFAULT NULL,
  `riesgos_laborales` varchar(80) DEFAULT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `independientes_passwordresetrequest`
--

CREATE TABLE `independientes_passwordresetrequest` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `independientes_usuarios`
--

CREATE TABLE `independientes_usuarios` (
  `id` bigint(20) NOT NULL,
  `intentos` int(11) NOT NULL,
  `estado_u` tinyint(1) NOT NULL,
  `contrasena` varchar(120) DEFAULT NULL,
  `id_rol` varchar(30) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empresarial_cargo`
--
ALTER TABLE `empresarial_cargo`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `Empresarial_cargo_id_nivel_grado_id_e28439a9_fk_Empresari` (`id_nivel_grado_id`);

--
-- Indices de la tabla `empresarial_ciudad`
--
ALTER TABLE `empresarial_ciudad`
  ADD PRIMARY KEY (`codigo_ciudad`),
  ADD KEY `Empresarial_ciudad_codigo_departamento__4e5e90ae_fk_Empresari` (`codigo_departamento_id`);

--
-- Indices de la tabla `empresarial_contrato`
--
ALTER TABLE `empresarial_contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `Empresarial_contrato_id_cargo_id_80f05b5f_fk_Empresari` (`id_cargo_id`),
  ADD KEY `Empresarial_contrato_numero_identificacio_905132c5_fk_Empresari` (`numero_identificacion_e_id`);

--
-- Indices de la tabla `empresarial_departamento`
--
ALTER TABLE `empresarial_departamento`
  ADD PRIMARY KEY (`codigo_departamento`);

--
-- Indices de la tabla `empresarial_empleado`
--
ALTER TABLE `empresarial_empleado`
  ADD PRIMARY KEY (`numero_identificacion_e`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `celular` (`celular`),
  ADD KEY `Empresarial_empleado_nit_id_2546394b_fk_Empresarial_empresa_nit` (`nit_id`),
  ADD KEY `Empresarial_empleado_id_nivel_estudio_id_80a4b3bd_fk_Empresari` (`id_nivel_estudio_id`);

--
-- Indices de la tabla `empresarial_empresa`
--
ALTER TABLE `empresarial_empresa`
  ADD PRIMARY KEY (`nit`),
  ADD UNIQUE KEY `correo_entidad` (`correo_entidad`);

--
-- Indices de la tabla `empresarial_horasextrasrecargos`
--
ALTER TABLE `empresarial_horasextrasrecargos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empresarial_horasext_empleado_id_d4ad04a0_fk_Empresari` (`empleado_id`);

--
-- Indices de la tabla `empresarial_liquidacion`
--
ALTER TABLE `empresarial_liquidacion`
  ADD PRIMARY KEY (`id_liquidacion`),
  ADD KEY `Empresarial_liquidac_numero_identificacio_0d245aaf_fk_Empresari` (`numero_identificacion_e_id`);

--
-- Indices de la tabla `empresarial_nivelestudio`
--
ALTER TABLE `empresarial_nivelestudio`
  ADD PRIMARY KEY (`id_nivel_estudio`);

--
-- Indices de la tabla `empresarial_nivelgrado`
--
ALTER TABLE `empresarial_nivelgrado`
  ADD PRIMARY KEY (`id_nivel_grado`),
  ADD KEY `Empresarial_nivelgra_id_nivel_estudio_req_fab85f6d_fk_Empresari` (`id_nivel_estudio_requerido_id`);

--
-- Indices de la tabla `empresarial_novedades`
--
ALTER TABLE `empresarial_novedades`
  ADD PRIMARY KEY (`id_novedad`),
  ADD KEY `Empresarial_novedade_numero_identificacio_bfbc0f31_fk_Empresari` (`numero_identificacion_e_id`),
  ADD KEY `Empresarial_novedade_id_tipo_novedad_id_ee8dc45f_fk_Empresari` (`id_tipo_novedad_id`);

--
-- Indices de la tabla `empresarial_passwordresetrequest`
--
ALTER TABLE `empresarial_passwordresetrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empresarial_password_usuario_id_b0810459_fk_Empresari` (`usuario_id`);

--
-- Indices de la tabla `empresarial_sede`
--
ALTER TABLE `empresarial_sede`
  ADD PRIMARY KEY (`id_sede`),
  ADD KEY `Empresarial_sede_codigo_ciudad_id_f23c010f_fk_Empresari` (`codigo_ciudad_id`),
  ADD KEY `Empresarial_sede_nit_id_8aba1de0_fk_Empresarial_empresa_nit` (`nit_id`);

--
-- Indices de la tabla `empresarial_tiponovedad`
--
ALTER TABLE `empresarial_tiponovedad`
  ADD PRIMARY KEY (`id_tipo_novedad`);

--
-- Indices de la tabla `empresarial_usuarios`
--
ALTER TABLE `empresarial_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empresarial_usuarios_usuario_id_a8e512cd_fk_Empresari` (`usuario_id`);

--
-- Indices de la tabla `empresarial_vacacionescesantias`
--
ALTER TABLE `empresarial_vacacionescesantias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Empresarial_vacacion_numero_identificacio_dee54d32_fk_Empresari` (`numero_identificacion_e_id`);

--
-- Indices de la tabla `independientes_calculos`
--
ALTER TABLE `independientes_calculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Independientes_calculos_documento_id_6e7fe83a_fk` (`documento_id`);

--
-- Indices de la tabla `independientes_datoscalculos`
--
ALTER TABLE `independientes_datoscalculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Independientes_datoscalculos_documento_id_f03c1758_fk` (`documento_id`);

--
-- Indices de la tabla `independientes_independiente`
--
ALTER TABLE `independientes_independiente`
  ADD PRIMARY KEY (`numero_identificacion`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `independientes_passwordresetrequest`
--
ALTER TABLE `independientes_passwordresetrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Independientes_passwordresetrequest_usuario_id_43e7994c_fk` (`usuario_id`);

--
-- Indices de la tabla `independientes_usuarios`
--
ALTER TABLE `independientes_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Independientes_usuarios_usuario_id_0a88d212_fk` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `empresarial_cargo`
--
ALTER TABLE `empresarial_cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empresarial_contrato`
--
ALTER TABLE `empresarial_contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `empresarial_horasextrasrecargos`
--
ALTER TABLE `empresarial_horasextrasrecargos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresarial_liquidacion`
--
ALTER TABLE `empresarial_liquidacion`
  MODIFY `id_liquidacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `empresarial_nivelestudio`
--
ALTER TABLE `empresarial_nivelestudio`
  MODIFY `id_nivel_estudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresarial_nivelgrado`
--
ALTER TABLE `empresarial_nivelgrado`
  MODIFY `id_nivel_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empresarial_novedades`
--
ALTER TABLE `empresarial_novedades`
  MODIFY `id_novedad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresarial_passwordresetrequest`
--
ALTER TABLE `empresarial_passwordresetrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresarial_sede`
--
ALTER TABLE `empresarial_sede`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empresarial_tiponovedad`
--
ALTER TABLE `empresarial_tiponovedad`
  MODIFY `id_tipo_novedad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresarial_usuarios`
--
ALTER TABLE `empresarial_usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT de la tabla `empresarial_vacacionescesantias`
--
ALTER TABLE `empresarial_vacacionescesantias`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `independientes_calculos`
--
ALTER TABLE `independientes_calculos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `independientes_datoscalculos`
--
ALTER TABLE `independientes_datoscalculos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `independientes_passwordresetrequest`
--
ALTER TABLE `independientes_passwordresetrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `independientes_usuarios`
--
ALTER TABLE `independientes_usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `empresarial_cargo`
--
ALTER TABLE `empresarial_cargo`
  ADD CONSTRAINT `Empresarial_cargo_id_nivel_grado_id_e28439a9_fk_Empresari` FOREIGN KEY (`id_nivel_grado_id`) REFERENCES `empresarial_nivelgrado` (`id_nivel_grado`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_ciudad`
--
ALTER TABLE `empresarial_ciudad`
  ADD CONSTRAINT `Empresarial_ciudad_codigo_departamento__4e5e90ae_fk_Empresari` FOREIGN KEY (`codigo_departamento_id`) REFERENCES `empresarial_departamento` (`codigo_departamento`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_contrato`
--
ALTER TABLE `empresarial_contrato`
  ADD CONSTRAINT `Empresarial_contrato_id_cargo_id_80f05b5f_fk_Empresari` FOREIGN KEY (`id_cargo_id`) REFERENCES `empresarial_cargo` (`id_cargo`),
  ADD CONSTRAINT `Empresarial_contrato_numero_identificacio_905132c5_fk_Empresari` FOREIGN KEY (`numero_identificacion_e_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_empleado`
--
ALTER TABLE `empresarial_empleado`
  ADD CONSTRAINT `Empresarial_empleado_id_nivel_estudio_id_80a4b3bd_fk_Empresari` FOREIGN KEY (`id_nivel_estudio_id`) REFERENCES `empresarial_nivelestudio` (`id_nivel_estudio`),
  ADD CONSTRAINT `Empresarial_empleado_nit_id_2546394b_fk_Empresarial_empresa_nit` FOREIGN KEY (`nit_id`) REFERENCES `empresarial_empresa` (`nit`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_horasextrasrecargos`
--
ALTER TABLE `empresarial_horasextrasrecargos`
  ADD CONSTRAINT `Empresarial_horasext_empleado_id_d4ad04a0_fk_Empresari` FOREIGN KEY (`empleado_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_liquidacion`
--
ALTER TABLE `empresarial_liquidacion`
  ADD CONSTRAINT `Empresarial_liquidac_numero_identificacio_0d245aaf_fk_Empresari` FOREIGN KEY (`numero_identificacion_e_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_nivelgrado`
--
ALTER TABLE `empresarial_nivelgrado`
  ADD CONSTRAINT `Empresarial_nivelgra_id_nivel_estudio_req_fab85f6d_fk_Empresari` FOREIGN KEY (`id_nivel_estudio_requerido_id`) REFERENCES `empresarial_nivelestudio` (`id_nivel_estudio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_novedades`
--
ALTER TABLE `empresarial_novedades`
  ADD CONSTRAINT `Empresarial_novedade_id_tipo_novedad_id_ee8dc45f_fk_Empresari` FOREIGN KEY (`id_tipo_novedad_id`) REFERENCES `empresarial_tiponovedad` (`id_tipo_novedad`),
  ADD CONSTRAINT `Empresarial_novedade_numero_identificacio_bfbc0f31_fk_Empresari` FOREIGN KEY (`numero_identificacion_e_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_passwordresetrequest`
--
ALTER TABLE `empresarial_passwordresetrequest`
  ADD CONSTRAINT `Empresarial_password_usuario_id_b0810459_fk_Empresari` FOREIGN KEY (`usuario_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_sede`
--
ALTER TABLE `empresarial_sede`
  ADD CONSTRAINT `Empresarial_sede_codigo_ciudad_id_f23c010f_fk_Empresari` FOREIGN KEY (`codigo_ciudad_id`) REFERENCES `empresarial_ciudad` (`codigo_ciudad`) ON DELETE CASCADE,
  ADD CONSTRAINT `Empresarial_sede_nit_id_8aba1de0_fk_Empresarial_empresa_nit` FOREIGN KEY (`nit_id`) REFERENCES `empresarial_empresa` (`nit`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_usuarios`
--
ALTER TABLE `empresarial_usuarios`
  ADD CONSTRAINT `Empresarial_usuarios_usuario_id_a8e512cd_fk_Empresari` FOREIGN KEY (`usuario_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresarial_vacacionescesantias`
--
ALTER TABLE `empresarial_vacacionescesantias`
  ADD CONSTRAINT `Empresarial_vacacion_numero_identificacio_dee54d32_fk_Empresari` FOREIGN KEY (`numero_identificacion_e_id`) REFERENCES `empresarial_empleado` (`numero_identificacion_e`) ON DELETE CASCADE;

--
-- Filtros para la tabla `independientes_calculos`
--
ALTER TABLE `independientes_calculos`
  ADD CONSTRAINT `Independientes_calculos_documento_id_6e7fe83a_fk` FOREIGN KEY (`documento_id`) REFERENCES `independientes_independiente` (`numero_identificacion`) ON DELETE CASCADE;

--
-- Filtros para la tabla `independientes_datoscalculos`
--
ALTER TABLE `independientes_datoscalculos`
  ADD CONSTRAINT `Independientes_datoscalculos_documento_id_f03c1758_fk` FOREIGN KEY (`documento_id`) REFERENCES `independientes_independiente` (`numero_identificacion`) ON DELETE CASCADE;

--
-- Filtros para la tabla `independientes_passwordresetrequest`
--
ALTER TABLE `independientes_passwordresetrequest`
  ADD CONSTRAINT `Independientes_passwordresetrequest_usuario_id_43e7994c_fk` FOREIGN KEY (`usuario_id`) REFERENCES `independientes_independiente` (`numero_identificacion`) ON DELETE CASCADE;

--
-- Filtros para la tabla `independientes_usuarios`
--
ALTER TABLE `independientes_usuarios`
  ADD CONSTRAINT `Independientes_usuarios_usuario_id_0a88d212_fk` FOREIGN KEY (`usuario_id`) REFERENCES `independientes_independiente` (`numero_identificacion`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
