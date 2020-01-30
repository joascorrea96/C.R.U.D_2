-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30-Jan-2020 às 15:44
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cadastro_empresa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `telefone` varchar(220) NOT NULL,
  `cnpj` varchar(220) NOT NULL,
  `cep` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `empresa`, `email`, `telefone`, `cnpj`, `cep`, `created`, `modified`) VALUES
(12, 'Jubileus', 'Jubileustecnologia@gmail.com', '(45) 74614-6516', '01.104.894/0001-22', '89272-046', '2020-01-21 22:52:07', '2020-01-30 11:41:15'),
(11, 'Software2', 'software@hotmail.com', '(45) 74614-6516', '01.104.894/0001-22', '45465-447', '2020-01-21 22:51:07', '2020-01-30 11:40:51'),
(10, 'Software', 'software@hotmail.com', '9940-2229', '87.654.321/3212-31', '45465-447', '2020-01-21 17:25:35', '2020-01-30 11:40:29'),
(9, 'Intelmarc', 'intel@hotmail.com', '47 9977-82627', '32.154.842/1211-85', '48451-313', '2020-01-21 17:25:03', '2020-01-30 11:39:19'),
(8, 'MasterSoft', 'master.software@hotmail.com', '(45) 74614-6516', '01104894000122', '45465-447', '2020-01-21 17:24:40', '2020-01-30 11:39:58'),
(7, 'TecnoCenter', 'tecnocenter@gmail.com', '(45) 74614-6516', '01.104.894/0001-22', '48451-313', '2020-01-21 17:24:18', '2020-01-30 11:39:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
