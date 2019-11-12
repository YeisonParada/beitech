-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2019 a las 18:38:35
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `beitech`
--
CREATE DATABASE IF NOT EXISTS `beitech` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `beitech`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`) VALUES
(1, 'juan soto', 'juan_soto@testbeitech.com'),
(2, 'laura acosta', 'laura_acosta@testbeitech.com'),
(3, 'maria medrano', 'maria_medrano@testbeitech.com'),
(4, 'daniela martinez', 'daniela_martinez@testbeitech.com'),
(5, 'stefany florez', 'stefany_florez@testbeitech.com'),
(6, 'jose ruiz', 'jose_ruiz@testbeitech.com'),
(7, 'leticia aguirre', 'leticia_aguirre@testbeitech.com'),
(8, 'lida pineda', 'lida_pineda@testbeitech.com'),
(9, 'alicia llorente', 'alicia_llorente@testbeitech.com'),
(10, 'samuel rojas', 'samuel_rojas@testbeitech.com'),
(11, 'luis ortiz', 'luis_ortiz@testbeitech.com'),
(12, 'pablo castro', 'pablo_castro@testbeitech.com'),
(13, 'lina molina', 'lina_molina@testbeitech.com'),
(14, 'dana moreno', 'dana_moreno@testbeitech.com'),
(15, 'jesus luna', 'jesus_luna@testbeitech.com'),
(16, 'david morales', 'david_morales@testbeitech.com'),
(17, 'diana castillo', 'diana_castillo@testbeitech.com'),
(18, 'sandra silva', 'sandra_silva@testbeitech.com'),
(19, 'oscar arias', 'oscar_arias@testbeitech.com'),
(20, 'tomas vargas', 'tomas_vargas@testbeitech.com'),
(21, 'andrea ramos', 'andrea_ramos@testbeitech.com'),
(22, 'vanessa bravo', 'vanessa_bravo@testbeitech.com'),
(23, 'vilma duarte', 'vilma_duarte@testbeitech.com'),
(24, 'fernanda escobar', 'fernanda_escobar@testbeitech.com'),
(25, 'maria herrera', 'maria_herrera@testbeitech.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_product`
--

CREATE TABLE `customer_product` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `customer_product`
--

INSERT INTO `customer_product` (`customer_id`, `product_id`) VALUES
(1, 10),
(1, 15),
(1, 16),
(1, 18),
(2, 3),
(2, 13),
(2, 17),
(3, 2),
(3, 7),
(3, 9),
(3, 19),
(4, 5),
(4, 13),
(4, 15),
(5, 1),
(5, 7),
(5, 11),
(5, 17),
(5, 20),
(6, 3),
(6, 4),
(6, 7),
(7, 7),
(7, 10),
(7, 15),
(8, 2),
(8, 11),
(8, 12),
(8, 20),
(9, 4),
(9, 7),
(9, 13),
(10, 3),
(10, 7),
(10, 15),
(11, 1),
(11, 5),
(11, 9),
(11, 15),
(11, 19),
(12, 5),
(12, 16),
(12, 20),
(13, 2),
(13, 15),
(13, 20),
(14, 1),
(14, 3),
(14, 7),
(14, 14),
(15, 7),
(15, 11),
(15, 17),
(16, 5),
(16, 9),
(16, 12),
(16, 17),
(17, 2),
(17, 16),
(17, 17),
(18, 14),
(18, 20),
(19, 5),
(19, 7),
(19, 9),
(19, 15),
(19, 19),
(20, 12),
(20, 15),
(20, 17),
(21, 1),
(21, 4),
(21, 6),
(22, 2),
(22, 6),
(22, 12),
(22, 16),
(23, 2),
(23, 7),
(23, 18),
(24, 8),
(24, 10),
(24, 16),
(24, 18),
(25, 2),
(25, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `creation_date` date NOT NULL,
  `delivery_address` varchar(191) COLLATE utf8_spanish2_ci NOT NULL,
  `total` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `creation_date`, `delivery_address`, `total`) VALUES
(1, 1, '2019-01-01', 'Calle Maria 63 Oficina 702', 197800.00),
(2, 25, '2019-01-10', 'Calle 59 N. 12-8787', 13500.00),
(51, 1, '2019-01-01', 'asdasd', 100000.00),
(52, 1, '2019-01-10', 'Calle', 11250.00),
(53, 1, '2019-06-09', 'Calle3', 13333.00),
(76, 1, '2019-06-10', 'Calle Maria 63 Oficina 702', 156000.00),
(77, 1, '2010-01-03', 'Calle 82 #11-37 Piso', 1234567.00),
(78, 1, '2010-01-03', 'Calle 82 #11-37 Piso', 1234567.00),
(80, 1, '2010-01-05', 'Calle 82 #11-37 Piso', 0.00),
(81, 1, '2010-01-25', 'Calle 82 #11-37 Piso', 375400.00),
(82, 1, '2019-06-10', 'Calle 82 #11-37 Piso', 283600.00),
(100, 1, '2010-01-03', 'Calle 99 No 10 – 99 Piso 6', 500.00),
(103, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(104, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(105, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(106, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(107, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(108, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(109, 1, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(110, 2, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(111, 2, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(112, 2, '2019-07-28', 'Cra 16 # 183-43', 185000.00),
(113, 6, '2019-07-31', 'Calle 137A', 4.00),
(114, 8, '2019-07-31', 'calle falsa 123', 6300.00),
(115, 8, '2019-07-31', 'calle falsa 123', 6300.00),
(116, 9, '2019-07-31', 'casa quinta', 10300.00),
(117, 10, '2019-07-31', 'casa quinta', 45000.00),
(118, 11, '2019-07-31', 'r', 60000.00),
(119, 12, '2019-07-31', 'r', 359500.00),
(120, 17, '2019-07-31', 'aaa', 6300.00),
(121, 1, '2019-07-31', 'aaa', 156300.00),
(122, 13, '2019-07-31', 'casa de lina', 10500.00),
(123, 15, '2019-07-31', 'casa de Luna', 11600.00),
(124, 1, '2019-07-31', 'Cra 16', 200000.00),
(125, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(126, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(127, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(128, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(129, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(130, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(131, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(132, 1, '2019-07-31', 'Cra 16 #183', 150000.00),
(133, 2, '2019-07-31', 'Cra 16 # 183-43', 185000.00),
(134, 1, '2019-08-03', 'Add1', 203300.00),
(135, 3, '2019-08-03', 'Address 1', 23200.00),
(136, 1, '2019-08-08', '11', 3000.00),
(137, 1, '2019-08-08', '11', 3000.00),
(138, 1, '2019-08-08', '11', 3000.00),
(139, 1, '2019-08-08', '11', 3000.00),
(140, 1, '2019-08-08', '11', 3000.00),
(141, 1, '2019-08-08', '11', 3000.00),
(142, 1, '2019-08-08', '11', 3000.00),
(143, 1, '2019-08-08', '11', 3000.00),
(144, 1, '2019-08-08', '11', 3000.00),
(145, 1, '2019-08-08', '11', 3000.00),
(146, 1, '2019-08-08', '11', 3000.00),
(147, 1, '2019-08-08', '11', 3000.00),
(148, 1, '2019-08-08', '11', 3000.00),
(149, 1, '2019-08-08', '11', 3000.00),
(150, 1, '2019-08-08', '11', 3000.00),
(151, 1, '2019-08-18', 'cra 15 no. 15', 10000.00),
(152, 1, '2019-08-18', 'cra 15 no. 15', 10000.00),
(153, 1, '2019-08-18', 'description', 2000.00),
(154, 1, '2019-08-18', 'cra con calle', 1000.00),
(155, 1, '2019-08-18', 'carrera 15', 200000.00),
(156, 1, '2019-08-19', 'carrera 15', 200000.00),
(157, 2, '2019-08-19', 'carrera 15', 200000.00),
(158, 2, '2019-08-19', 'carrera 15', 200000.00),
(159, 2, '2019-08-19', 'carrera 15', 200000.00),
(160, 2, '2019-08-19', 'carrera 21', 200000.00),
(161, 2, '2019-08-19', 'carrera 21', 200000.00),
(162, 2, '2019-08-19', 'carrera 21', 200000.00),
(163, 3, '2019-08-19', 'carrera 21', 200000.00),
(180, 1, '2019-01-01', 'Calle Maria 63 Oficina 702', 91800.00),
(181, 1, '2019-01-01', 'Calle Maria 63 Oficina 702', 91800.00),
(182, 21, '2019-01-01', 'Calle Maria 63 Oficina 702', 197800.00),
(185, 21, '2019-08-20', 'Calle Maria 63 Oficina 702', 197800.00),
(187, 21, '2019-08-20', 'Calle Maria 63 Oficina 702', 206000.00),
(190, 21, '2019-08-20', 'Calle Maria 63 Oficina 702', 206000.00),
(192, 21, '2019-08-20', 'Calle AABB', 206000.00),
(193, 21, '2019-08-20', 'Calle AABB', 206000.00),
(196, 1, '2019-08-24', 'Calle Maria 63 Oficina 702', 50000.00),
(199, 2, '2019-08-24', 'calle falsa 123', 4500.00),
(200, 2, '2019-08-24', 'calle falsa 123', 4500.00),
(201, 2, '2023-03-24', 'calle falsa 123', 15000.00),
(202, 1, '2023-06-24', 'calle falsa 123', 20500.00),
(203, 1, '2019-08-24', 'calle falsa 123', 50000.00),
(204, 2, '2019-08-24', 'calle falsa 123', 15000.00),
(210, 25, '2019-08-26', '61 Wellfield Road', 46000.00),
(211, 25, '2019-08-27', '61 Wellfield Road', 20000.00),
(212, 25, '2019-08-24', 'Calle Maria 63 Oficina 702', 91800.00),
(213, 25, '2019-08-27', '61 Wellfield Road', 6600.00),
(214, 1, '2019-08-30', 'DIRECCIÓN PRUEBA', 0.00),
(215, 1, '2019-08-30', 'Calle 47', 212000.00),
(216, 1, '2019-08-31', 'Calle 47', 268000.00),
(217, 2, '2019-09-01', 'Carrera 9 No 47-52', 0.00),
(218, 2, '2019-09-01', 'Carrera 9 No 47-52', 19500.00),
(219, 25, '2019-09-01', 'casa 23', 2400.00),
(220, 25, '2019-09-02', 'casa 23', 2500.00),
(221, 25, '2019-09-02', 'casa 42', 8500.00),
(222, 25, '2019-09-02', 'casa 24', 3400.00),
(223, 25, '2019-09-02', 'camino real', 12500.00),
(224, 25, '2019-09-02', '', 0.00),
(225, 25, '2019-09-02', 'Casa 22', 0.00),
(226, 1, '2019-09-02', 'Av 100 El dorado', 50000.00),
(227, 1, '2019-09-02', 'Calle 123', 147800.00),
(228, 25, '2019-09-02', 'Casa 2', 0.00),
(229, 25, '2019-09-02', 'Casa 2', 0.00),
(230, 25, '2019-09-02', '', 0.00),
(231, 25, '2019-09-02', 'casita', 0.00),
(232, 1, '2019-09-02', 'Calle falsa 5466', 310100.00),
(233, 1, '2019-09-02', 'AV 26', 56000.00),
(234, 1, '2019-09-02', 'Av Boyaca', 91800.00),
(235, 1, '2019-09-02', '61 Wellfield Road', 70500.00),
(236, 1, '2019-09-02', '61 Wellfield Road', 70500.00),
(237, 7, '2019-09-02', 'Calle 99 ', 200274000.00),
(238, 1, '2019-09-02', '61 Wellfield Road', 70500.00),
(239, 2, '2019-09-03', 'Dirección de entrada....', 34500.00),
(240, 1, '2019-09-02', '61 Wellfield Road', 70500.00),
(241, 1, '2019-09-02', '61 Wellfield Road', 70500.00),
(242, 25, '2019-09-02', '61 Wellfield Road', 70500.00),
(244, 25, '2019-10-08', 'Super Barrio', 17700.00),
(245, 25, '2019-10-08', '', 12000.00),
(246, 25, '2019-10-07', 'Calle 23 # 4-12', 12000.00),
(247, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(248, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(249, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(250, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(251, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(252, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(253, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(254, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(255, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(256, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(257, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(258, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(259, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(260, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(261, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(262, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(263, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(264, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(265, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(266, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(267, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(268, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(269, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(270, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(271, 1, '2019-10-10', 'Carrera 24 4-65', 8700.00),
(272, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(273, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(274, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(275, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(276, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(277, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(278, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(279, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(280, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(281, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(282, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(283, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(284, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(285, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(286, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(287, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(288, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(289, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(290, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(291, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(292, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(293, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(294, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(295, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(296, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(297, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(298, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(299, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(300, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(301, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(302, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(303, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(304, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(305, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(306, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(307, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(308, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(309, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(310, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(311, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(312, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(313, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(314, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(315, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(316, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(317, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(318, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(319, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(320, 25, '2019-10-11', 'Super Barrio', 19800.00),
(321, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(322, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(323, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(324, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(325, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(326, 1, '2019-10-11', 'Carrera 24 4-65', 8700.00),
(327, 1, '2019-10-12', 'Carrera 24 4-65', 8700.00),
(328, 1, '2019-10-12', 'Carrera 24 4-65', 8700.00),
(329, 1, '2019-10-12', 'Carrera 24 4-65', 13200.00),
(330, 1, '2019-10-12', 'Carrera 24 4-65', 40200.00),
(331, 1, '2019-10-12', 'Carrera 24 4-65', 130200.00),
(332, 1, '2019-10-12', 'Carrera 24 4-65', 193200.00),
(333, 1, '2019-10-12', 'Carrera 24 4-65', 11100.00),
(334, 1, '2019-10-12', 'Carrera 24 4-65', 229200.00),
(335, 1, '2019-10-12', 'Carrera 24 4-65', 118200.00),
(336, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(337, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(338, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(339, 6, '2019-10-12', 'Carrera 24 4-65', 34000.00),
(340, 8, '2019-10-12', 'Carrera 24 4-65', 130200.00),
(341, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(342, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(343, 4, '2019-10-12', 'Carrera 24 4-65', 124300.00),
(344, 1, '2019-10-12', 'Carrera 24 4-65', 268000.00),
(345, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(346, 1, '2019-10-12', 'Casa', 156000.00),
(347, 3, '2019-10-12', 'Carrera 24 4-65', 62200.00),
(348, 3, '2019-10-12', 'Carrera 24 4-65', 15800.00),
(349, 1, '2019-10-12', 'Carrera 24 4-65', 8480000.00),
(350, 1, '2019-10-12', 'Carrera 24 4-65', 8480000.00),
(351, 1, '2019-10-12', 'Carrera 24 4-65', 8480000.00),
(352, 1, '2019-10-12', 'Carrera 24 4-65', 660000.00),
(353, 7, '2019-10-12', 'Carrera 24 4-65', 2505800.00),
(354, 1, '2019-10-12', 'Carrera 24 4-65', 1620000.00),
(355, 1, '2019-10-12', 'Carrera 24 4-65', 5505000.00),
(356, 3, '2019-10-12', 'Carrera 24 4-65', 1980000.00),
(357, 9, '2019-10-12', 'Carrera 24 4-65', 1854000.00),
(358, 1, '2019-10-12', 'Casa', 22460000.00),
(359, 1, '2019-10-12', 'Carrera 24 4-65', 17625000.00),
(360, 1, '2019-10-12', 'Carrera 24 4-65', 21150000.00),
(361, 1, '2019-10-12', 'Portal norte', 37100000.00),
(362, 1, '2019-10-12', 'Portal norte3', 37100000.00),
(363, 1, '2019-10-12', 'Portal norte 4', 81150000.00),
(364, 1, '2019-10-12', 'Portal norte3', 37100000.00),
(365, 1, '2019-10-12', 'Portal norte3', 37100000.00),
(366, 1, '2019-10-12', 'Portal norte3', 37100000.00),
(367, 6, '2019-10-18', 'Carrera 24 4-65', 45000.00),
(368, 1, '2019-11-03', 'Portal norte_2019/11/03', 37100000.00),
(369, 2, '2019-11-04', 'Magdalena8', 186000.00),
(370, 1, '2019-11-04', 'Carrera 24 4-65', 100000.00),
(371, 1, '2019-11-04', 'Carrera 24 4-65', 100000.00),
(372, 2, '2019-11-04', 'Carrera 24 4-65-3', 370500.00),
(373, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(374, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(375, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(376, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(377, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(378, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(379, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(380, 1, '2019-11-05', 'Portal codeigniter', 37100000.00),
(381, 2, '2019-11-05', 'MAGDALENA 9 CODEIGNITER 3', 75000.00),
(382, 4, '2019-11-05', 'MAGDALENA 9 CODEIGNITER 4', 1334800.00),
(383, 5, '2019-11-05', 'Carrera 24 4-65 codeigniter 8', 15080000.00),
(384, 6, '2019-11-05', 'Carrera 24 4-65 codeigniter 10', 88000.00),
(385, 6, '2019-11-05', 'Carrera 24 4-65 MAGDA1LENA 1', 166000.00),
(386, 7, '2019-11-05', 'Carrera 24 4-65 codeigniter 12', 511600.00),
(387, 7, '2019-11-05', 'Carrera 24 4-65 codeigniter 12', 511600.00),
(388, 8, '2019-11-05', 'Carrera 24 4-65 MAGDALENA 13', 46200.00),
(389, 8, '2019-11-05', 'CODEIGNITER 14', 252000.00),
(390, 9, '2019-11-05', 'CODEIGNITER 15', 294000.00),
(391, 1, '2019-11-05', 'Carrera 24 4-65 MAGDALEN 17', 660000.00),
(392, 12, '2019-11-05', 'Carrera 24 4-65 MAGDALENA 21', 140300.00),
(393, 12, '2019-11-05', 'MAGDALENA 8', 324800.00),
(394, 16, '2019-11-05', 'CASA CLUB 20', 661000.00),
(395, 13, '2019-11-05', 'SANTANDER', 1124200.00),
(396, 6, '2019-11-05', 'Carrera 24 4-65', 11600.00),
(397, 6, '2019-11-06', 'Calle 68 # 77a-65', 50000.00),
(398, 1, '2019-11-09', 'Calle 68 # 77a-65', 457900.00),
(399, 1, '2019-11-09', 'Calle 68 # 77a-65', 457900.00),
(400, 2, '2019-11-09', 'Calle 68 # 77a-65', 79500.00),
(401, 1, '2019-11-29', 'Calle 68 # 77a-65', 262000.00),
(402, 5, '2019-11-12', 'calle 2 1 5', 180000.00),
(403, 1, '2019-11-12', 'calle 2 1 5', 126500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_description` varchar(191) COLLATE utf8_spanish2_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_description`, `price`, `quantity`) VALUES
(1, 1, 10, 'descripcion del producto j', 50000.00, 1),
(2, 1, 15, 'descripcion del producto z', 56000.00, 1),
(3, 1, 18, 'descripcion del producto q', 91800.00, 1),
(4, 2, 13, 'descripcion del producto m', 4500.00, 3),
(160, 76, 10, 'asdasd', 100000.00, 2),
(161, 76, 15, 'asdasd', 56000.00, 1),
(162, 77, 10, 'Mi producto 1', 123.00, 1),
(163, 77, 18, 'Mi producto 2', 123.00, 1),
(164, 77, 18, 'Mi producto 3', 123.00, 1),
(165, 77, 18, 'Mi producto 4', 123.00, 1),
(166, 77, 10, 'Mi producto 5', 123.00, 1),
(167, 78, 10, 'Mi producto 1', 123.00, 1),
(168, 78, 18, 'Mi producto 2', 123.00, 1),
(169, 78, 18, 'Mi producto 3', 123.00, 1),
(170, 78, 18, 'Mi producto 4', 123.00, 1),
(171, 78, 18, 'Mi producto 5', 123.00, 1),
(172, 80, 10, 'descripcion del producto j', 50000.00, 2),
(173, 80, 18, 'descripcion del producto q', 91800.00, 3),
(174, 81, 10, 'descripcion del producto j', 50000.00, 2),
(175, 81, 18, 'descripcion del producto q', 91800.00, 3),
(176, 82, 10, 'descripcion del producto j', 50000.00, 2),
(177, 82, 18, 'descripcion del producto q', 91800.00, 2),
(180, 100, 10, 'Producto 10', 250.00, 1),
(181, 100, 11, 'Producto 11', 250.00, 1),
(182, 110, 3, 'producto c', 150000.00, 2),
(183, 110, 17, 'producto p', 35000.00, 3),
(184, 112, 3, 'producto c', 150000.00, 2),
(185, 112, 17, 'producto p', 35000.00, 3),
(186, 115, 2, 'descripcion del producto b', 2100.00, 3),
(187, 116, 2, 'descripcion del producto b', 2100.00, 3),
(188, 116, 4, 'descripcion del producto d', 2000.00, 2),
(189, 123, 7, 'descripcion del producto g', 5800.00, 2),
(190, 124, 10, 'descripcion del producto j', 50000.00, 4),
(191, 132, 10, 'descripcion del producto j', 50000.00, 3),
(192, 133, 3, 'producto c', 150000.00, 2),
(193, 133, 17, 'producto p', 35000.00, 3),
(194, 134, 16, 'descripcion del producto o', 20500.00, 3),
(195, 134, 10, 'descripcion del producto j', 50000.00, 1),
(196, 134, 18, 'descripcion del producto q', 91800.00, 1),
(197, 135, 7, 'descripcion del producto g', 5800.00, 4),
(200, 144, 12, 'Test', 1000.00, 1),
(201, 146, 12, 'Test', 1000.00, 1),
(202, 147, 12, 'Test', 1000.00, 1),
(203, 148, 12, 'Test', 1000.00, 1),
(204, 148, 13, 'Test 2', 1000.00, 2),
(205, 149, 12, 'Test', 1000.00, 1),
(206, 149, 13, 'Test 2', 1000.00, 2),
(207, 150, 10, 'Test', 1000.00, 1),
(208, 150, 15, 'Test 2', 1000.00, 2),
(209, 151, 10, 'cualquier cosa', 2.30, 10),
(210, 152, 10, 'cualquier cosa', 2.30, 10),
(211, 153, 10, 'this product', 1000.00, 10),
(212, 154, 10, 'algo', 100.00, 2),
(213, 154, 15, 'algo', 100.00, 3),
(214, 155, 10, 'cualquier cosa', 10000.00, 4),
(215, 156, 10, 'cualquier cosa', 10000.00, 4),
(216, 157, 13, 'cualquier cosa', 10000.00, 5),
(217, 158, 13, 'cualquier cosa', 10000.00, 1),
(218, 159, 13, 'cualquier cosa', 10000.00, 4),
(219, 160, 13, 'cualquier cosa', 10000.00, 4),
(220, 161, 13, 'cualquier cosa', 10000.00, 4),
(221, 162, 13, 'cualquier cosa', 10000.00, 4),
(222, 163, 9, 'cualquier cosa', 10000.00, 4),
(224, 180, 18, 'descripcion del producto q', 91800.00, 1),
(225, 181, 18, 'descripcion del producto q', 91800.00, 1),
(226, 185, 4, 'descripcion del producto j', 50000.00, 1),
(227, 185, 6, 'descripcion del producto z', 56000.00, 1),
(228, 187, 4, 'descripcion del producto j', 50000.00, 3),
(229, 187, 6, 'descripcion del producto z', 56000.00, 1),
(230, 190, 4, 'descripcion del producto j', 50000.00, 3),
(231, 190, 6, 'descripcion del producto z', 56000.00, 1),
(232, 192, 4, 'descripcion del producto j', 50000.00, 3),
(233, 192, 6, 'descripcion del producto z', 56000.00, 1),
(234, 193, 1, 'descripcion del producto j', 50000.00, 3),
(235, 193, 6, 'descripcion del producto z', 56000.00, 1),
(236, 196, 10, 'descripcion del producto j', 50000.00, 1),
(239, 199, 13, 'descripcion del producto m', 4500.00, 1),
(240, 200, 13, 'descripcion del producto m', 4500.00, 1),
(241, 201, 3, 'descripcion del producto c', 15000.00, 1),
(242, 202, 16, 'descripcion del producto o', 20500.00, 1),
(243, 203, 10, 'descripcion del producto j', 50000.00, 1),
(244, 204, 3, 'descripcion del producto c', 15000.00, 1),
(247, 210, 2, 'producto 2', 10000.00, 3),
(248, 210, 13, 'producto 13', 8000.00, 2),
(249, 211, 2, 'producto 2', 10000.00, 3),
(250, 211, 13, 'producto 13', 8000.00, 2),
(251, 212, 2, 'descripcion del producto 2', 91800.00, 3),
(252, 212, 13, 'descripcion del producto 2', 91800.00, 3),
(253, 213, 2, 'producto 2', 2100.00, 1),
(254, 213, 13, 'producto 13', 4500.00, 1),
(255, 215, 10, 'descripcion del producto j', 50000.00, 2),
(256, 215, 15, 'descripcion del producto z', 56000.00, 2),
(257, 216, 10, 'descripcion del producto j', 50000.00, 2),
(258, 216, 15, 'descripcion del producto z', 56000.00, 3),
(259, 218, 3, 'descripcion del producto c', 15000.00, 1),
(260, 218, 13, 'descripcion del producto m', 4500.00, 1),
(261, 222, 2, 'descripción de producto b', 2100.00, 2),
(262, 223, 2, 'descripción de producto b', 2100.00, 2),
(263, 223, 10, 'descripcion del producto j', 50000.00, 2),
(264, 223, 16, 'descripcion del producto o', 20500.00, 2),
(265, 227, 15, 'descripcion del producto z', 56000.00, 1),
(266, 227, 18, 'descripcion del producto q', 91800.00, 1),
(267, 232, 10, 'descripcion del producto j', 50000.00, 1),
(268, 232, 15, 'descripcion del producto z', 56000.00, 1),
(269, 232, 16, 'descripcion del producto o', 20500.00, 1),
(270, 232, 18, 'descripcion del producto q', 91800.00, 1),
(271, 232, 18, 'descripcion del producto q', 91800.00, 1),
(272, 233, 15, 'descripcion del producto z', 56000.00, 1),
(273, 234, 18, 'descripcion del producto q', 91800.00, 1),
(274, 223, 10, 'descripcion del producto j', 50000.00, 2),
(275, 223, 16, 'descripcion del producto o', 20500.00, 2),
(276, 236, 10, 'descripcion del producto j', 50000.00, 2),
(277, 236, 16, 'descripcion del producto o', 20500.00, 2),
(278, 237, 10, 'descripcion del producto j', 50000.00, 1),
(279, 238, 10, 'descripcion del producto j', 50000.00, 2),
(280, 238, 16, 'descripcion del producto o', 20500.00, 2),
(281, 239, 3, 'descripcion del producto c', 15000.00, 2),
(282, 239, 13, 'descripcion del producto m', 4500.00, 1),
(283, 240, 10, 'descripcion del producto j', 50000.00, 2),
(284, 240, 16, 'descripcion del producto o', 20500.00, 2),
(285, 241, 10, 'descripcion del producto j', 50000.00, 2),
(286, 241, 16, 'descripcion del producto o', 20500.00, 2),
(287, 242, 2, 'descripcion del producto j', 50000.00, 3),
(288, 242, 13, 'descripcion del producto o', 20500.00, 3),
(289, 244, 2, 'descripcion del producto b', 2100.00, 2),
(290, 244, 13, 'descripcion del producto m', 4500.00, 3),
(291, 320, 2, 'descripcion del producto b', 2100.00, 3),
(292, 320, 13, 'descripcion del producto m', 4500.00, 3),
(293, 328, 2, 'descripcion del producto b', 2100.00, 2),
(294, 328, 13, 'descripcion del producto m', 4500.00, 2),
(295, 329, 2, 'descripcion del producto b', 2100.00, 2),
(296, 329, 13, 'descripcion del producto m', 4500.00, 2),
(297, 330, 2, 'descripcion del producto b', 2100.00, 2),
(298, 330, 13, 'descripcion del producto m', 4500.00, 8),
(299, 331, 2, 'descripcion del producto b', 2100.00, 2),
(300, 331, 13, 'descripcion del producto m', 4500.00, 28),
(301, 332, 2, 'descripcion del producto b', 2100.00, 2),
(302, 332, 13, 'descripcion del producto m', 4500.00, 42),
(303, 333, 13, 'descripcion del producto m', 4500.00, 2),
(304, 333, 2, 'descripcion del producto b', 2100.00, 1),
(305, 334, 2, 'descripcion del producto b', 2100.00, 2),
(306, 334, 13, 'descripcion del producto m', 4500.00, 50),
(307, 335, 2, 'descripcion del producto b', 2100.00, 52),
(308, 335, 13, 'descripcion del producto m', 4500.00, 2),
(309, 336, 10, 'descripcion del producto j', 50000.00, 2),
(310, 336, 15, 'descripcion del producto z', 56000.00, 10),
(311, 337, 10, 'descripcion del producto j', 50000.00, 2),
(312, 337, 15, 'descripcion del producto z', 56000.00, 10),
(313, 338, 10, 'descripcion del producto j', 50000.00, 2),
(314, 338, 15, 'descripcion del producto z', 56000.00, 10),
(315, 339, 3, 'descripcion del producto c', 15000.00, 2),
(316, 339, 4, 'descripcion del producto d', 2000.00, 2),
(317, 340, 2, 'descripcion del producto b', 2100.00, 2),
(318, 340, 11, 'descripcion del producto k', 42000.00, 3),
(319, 341, 10, 'descripcion del producto j', 50000.00, 2),
(320, 341, 15, 'descripcion del producto z', 56000.00, 10),
(321, 342, 10, 'descripcion del producto j', 50000.00, 2),
(322, 342, 15, 'descripcion del producto z', 56000.00, 10),
(323, 343, 5, 'descripcion del producto e', 59900.00, 2),
(324, 343, 13, 'descripcion del producto m', 4500.00, 1),
(325, 344, 10, 'descripcion del producto j', 50000.00, 2),
(326, 344, 15, 'descripcion del producto z', 56000.00, 3),
(327, 345, 10, 'descripcion del producto j', 50000.00, 2),
(328, 345, 15, 'descripcion del producto z', 56000.00, 10),
(329, 346, 10, 'descripcion del producto j', 50000.00, 2),
(330, 346, 15, 'descripcion del producto z', 56000.00, 1),
(331, 347, 2, 'descripcion del producto b', 2100.00, 2),
(332, 347, 7, 'descripcion del producto g', 5800.00, 10),
(333, 348, 2, 'descripcion del producto b', 2100.00, 2),
(334, 348, 7, 'descripcion del producto g', 5800.00, 2),
(335, 349, 10, 'descripcion del producto j', 50000.00, 80),
(336, 349, 15, 'descripcion del producto z', 56000.00, 80),
(337, 350, 10, 'descripcion del producto j', 50000.00, 80),
(338, 350, 15, 'descripcion del producto z', 56000.00, 80),
(339, 351, 10, 'descripcion del producto j', 50000.00, 80),
(340, 351, 15, 'descripcion del producto z', 56000.00, 80),
(341, 352, 10, 'descripcion del producto j', 50000.00, 2),
(342, 352, 15, 'descripcion del producto z', 56000.00, 10),
(343, 353, 7, 'descripcion del producto g', 5800.00, 1),
(344, 353, 10, 'descripcion del producto j', 50000.00, 50),
(345, 354, 10, 'descripcion del producto j', 50000.00, 10),
(346, 354, 15, 'descripcion del producto z', 56000.00, 20),
(347, 355, 15, 'descripcion del producto z', 56000.00, 80),
(348, 355, 16, 'descripcion del producto o', 20500.00, 50),
(349, 356, 9, 'descripcion del producto i', 8000.00, 120),
(350, 356, 19, 'descripcion del producto r', 34000.00, 30),
(351, 357, 7, 'descripcion del producto g', 5800.00, 180),
(352, 357, 13, 'descripcion del producto m', 4500.00, 180),
(353, 358, 16, 'descripcion del producto o', 20500.00, 200),
(354, 358, 18, 'descripcion del producto q', 91800.00, 200),
(355, 359, 10, 'descripcion del producto j', 50000.00, 250),
(356, 359, 16, 'descripcion del producto o', 20500.00, 250),
(357, 360, 16, 'descripcion del producto o', 20500.00, 300),
(358, 360, 10, 'descripcion del producto j', 50000.00, 300),
(359, 361, 10, 'descripcion del producto j', 50000.00, 350),
(360, 361, 15, 'descripcion del producto z', 56000.00, 350),
(361, 362, 10, 'descripcion del producto j', 50000.00, 350),
(362, 362, 15, 'descripcion del producto z', 56000.00, 350),
(363, 363, 10, 'descripcion del producto j', 50000.00, 500),
(364, 363, 16, 'descripcion del producto o', 20500.00, 500),
(365, 363, 18, 'descripcion del producto q', 91800.00, 500),
(366, 364, 10, 'descripcion del producto j', 50000.00, 350),
(367, 364, 15, 'descripcion del producto z', 56000.00, 350),
(368, 365, 10, 'descripcion del producto j', 50000.00, 350),
(369, 365, 15, 'descripcion del producto z', 56000.00, 350),
(370, 366, 10, 'descripcion del producto j', 50000.00, 350),
(371, 366, 15, 'descripcion del producto z', 56000.00, 350),
(372, 367, 3, 'descripcion del producto c', 15000.00, 3),
(373, 368, 10, 'descripcion del producto j', 50000.00, 350),
(374, 368, 15, 'descripcion del producto z', 56000.00, 350),
(375, 369, 3, 'descripcion del producto c', 15000.00, 10),
(376, 369, 13, 'descripcion del producto m', 4500.00, 8),
(377, 370, 10, 'descripcion del producto j', 50000.00, 2),
(378, 371, 10, 'descripcion del producto j', 50000.00, 2),
(379, 372, 3, 'descripcion del producto c', 15000.00, 19),
(380, 372, 13, 'descripcion del producto m', 4500.00, 19),
(381, 380, 10, 'descripcion del producto j', 50000.00, 350),
(382, 380, 15, 'descripcion del producto z', 56000.00, 350),
(383, 381, 3, 'descripcion del producto c', 15000.00, 2),
(384, 381, 13, 'descripcion del producto m', 4500.00, 10),
(385, 382, 5, 'descripcion del producto e', 59900.00, 12),
(386, 382, 15, 'descripcion del producto z', 56000.00, 11),
(387, 383, 1, 'descripcion del producto a', 12000.00, 80),
(388, 383, 11, 'descripcion del producto k', 42000.00, 50),
(389, 383, 17, 'descripcion del producto p', 60100.00, 200),
(390, 384, 3, 'descripcion del producto c', 15000.00, 2),
(391, 384, 7, 'descripcion del producto g', 5800.00, 10),
(392, 385, 3, 'descripcion del producto c', 15000.00, 2),
(393, 385, 4, 'descripcion del producto d', 2000.00, 10),
(394, 385, 7, 'descripcion del producto g', 5800.00, 20),
(395, 386, 7, 'descripcion del producto g', 5800.00, 2),
(396, 386, 10, 'descripcion del producto j', 50000.00, 10),
(397, 387, 7, 'descripcion del producto g', 5800.00, 2),
(398, 387, 10, 'descripcion del producto j', 50000.00, 10),
(399, 388, 2, 'descripcion del producto b', 2100.00, 2),
(400, 388, 11, 'descripcion del producto k', 42000.00, 1),
(401, 389, 2, 'descripcion del producto b', 2100.00, 80),
(402, 389, 11, 'descripcion del producto k', 42000.00, 2),
(403, 390, 4, 'descripcion del producto d', 2000.00, 2),
(404, 390, 7, 'descripcion del producto g', 5800.00, 50),
(405, 391, 10, 'descripcion del producto j', 50000.00, 2),
(406, 391, 15, 'descripcion del producto z', 56000.00, 10),
(407, 392, 5, 'descripcion del producto e', 59900.00, 2),
(408, 392, 16, 'descripcion del producto o', 20500.00, 1),
(409, 393, 5, 'descripcion del producto e', 59900.00, 2),
(410, 393, 16, 'descripcion del producto o', 20500.00, 10),
(411, 394, 12, 'descripcion del producto l', 30000.00, 2),
(412, 394, 17, 'descripcion del producto p', 60100.00, 10),
(413, 395, 2, 'descripcion del producto b', 2100.00, 2),
(414, 395, 15, 'descripcion del producto z', 56000.00, 20),
(415, 396, 7, 'descripcion del producto g', 5800.00, 2),
(416, 399, 10, 'descripcion del producto j', 50000.00, 1),
(417, 399, 15, 'descripcion del producto z', 56000.00, 2),
(418, 399, 16, 'descripcion del producto o', 20500.00, 1),
(419, 399, 18, 'descripcion del producto q', 91800.00, 3),
(420, 400, 3, 'descripcion del producto c', 15000.00, 5),
(421, 400, 13, 'descripcion del producto m', 4500.00, 1),
(422, 401, 10, 'descripcion del producto j', 50000.00, 3),
(423, 401, 15, 'descripcion del producto z', 56000.00, 2),
(424, 402, 1, 'descripcion del producto a', 12000.00, 1),
(425, 402, 7, 'descripcion del producto g', 5800.00, 1),
(426, 402, 11, 'descripcion del producto k', 42000.00, 1),
(427, 402, 17, 'descripcion del producto p', 60100.00, 2),
(428, 403, 10, 'descripcion del producto j', 50000.00, 1),
(429, 403, 15, 'descripcion del producto z', 56000.00, 1),
(430, 403, 16, 'descripcion del producto o', 20500.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_spanish2_ci NOT NULL,
  `product_description` varchar(191) COLLATE utf8_spanish2_ci NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`product_id`, `name`, `product_description`, `price`) VALUES
(1, 'producto a', 'descripcion del producto a', 12000.00),
(2, 'producto b', 'descripcion del producto b', 2100.00),
(3, 'producto c', 'descripcion del producto c', 15000.00),
(4, 'producto d', 'descripcion del producto d', 2000.00),
(5, 'producto e', 'descripcion del producto e', 59900.00),
(6, 'producto f', 'descripcion del producto f', 3000.00),
(7, 'producto g', 'descripcion del producto g', 5800.00),
(8, 'producto h', 'descripcion del producto h', 6900.00),
(9, 'producto i', 'descripcion del producto i', 8000.00),
(10, 'producto j', 'descripcion del producto j', 50000.00),
(11, 'producto k', 'descripcion del producto k', 42000.00),
(12, 'producto l', 'descripcion del producto l', 30000.00),
(13, 'producto m', 'descripcion del producto m', 4500.00),
(14, 'producto n', 'descripcion del producto n', 47500.00),
(15, 'producto z', 'descripcion del producto z', 56000.00),
(16, 'producto o', 'descripcion del producto o', 20500.00),
(17, 'producto p', 'descripcion del producto p', 60100.00),
(18, 'producto q', 'descripcion del producto q', 91800.00),
(19, 'producto r', 'descripcion del producto r', 34000.00),
(20, 'producto s', 'descripcion del producto s', 78900.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`);

--
-- Indices de la tabla `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indices de la tabla `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT de la tabla `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
