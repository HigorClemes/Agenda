-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26-Jun-2022 às 16:16
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

DROP TABLE IF EXISTS `contatos`;
CREATE TABLE IF NOT EXISTS `contatos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  `numero` varchar(12) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `numero`, `cep`, `user`) VALUES
(1, 'teste', '48991135842', '88240-000', NULL),
(2, 'testecontato', '12345678910', '123456789', NULL),
(3, 'ol�', '12345667891', '123456789', 'higor@localhost'),
(4, 'KHard', 'gremista', '123456789', 'higor@localhost');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
CREATE TABLE IF NOT EXISTS `favoritos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` int DEFAULT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `numero` varchar(12) DEFAULT NULL,
  `dt_favoritou` date DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_contato` (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `favoritos`
--

INSERT INTO `favoritos` (`id`, `codigo`, `nome`, `numero`, `dt_favoritou`, `user`) VALUES
(1, 3, 'ol�', '12345667891', '2022-06-26', 'higor@localhost'),
(2, 4, 'ol�', '12345667891', '2022-06-26', 'higor@localhost');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `dt_inclusao` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `nome`, `senha`, `dt_inclusao`) VALUES
(6, 'ale', '123456', '2022-06-26'),
(5, 'higor', 'clemes2001', '2022-06-26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
