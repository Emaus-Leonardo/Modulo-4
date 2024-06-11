-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/06/2024 às 18:15
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dockertestedb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(1000) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`codigo`, `nome`, `preco`, `descricao`) VALUES
(1, 'ração de gato', '1', 'ração especial para gatos');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
