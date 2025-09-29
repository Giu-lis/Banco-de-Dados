-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 17:07
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `empresa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinamento`
--

CREATE TABLE `treinamento` (
  `id_treinamento` int(11) NOT NULL,
  `titulo` varchar(20) DEFAULT NULL,
  `data_treinamento` date DEFAULT NULL,
  `carga_horaria` varchar(10) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinamento`
--

INSERT INTO `treinamento` (`id_treinamento`, `titulo`, `data_treinamento`, `carga_horaria`, `id_departamento`, `id_funcionario`) VALUES
(1, 'treinamento de admin', '2025-11-10', '40 horas', 1, 5),
(2, 'treinamento de geren', '2025-11-15', '45 horas', 2, 4),
(3, 'treinamento de admin', '2025-11-20', '30 horas', 4, 3),
(4, 'treinamento de Power', '2025-11-25', '10 horas', 5, 2),
(5, 'treinamento de SQL', '2025-11-30', '35 horas', 3, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `treinamento`
--
ALTER TABLE `treinamento`
  ADD PRIMARY KEY (`id_treinamento`),
  ADD KEY `id_departamento` (`id_departamento`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `treinamento`
--
ALTER TABLE `treinamento`
  MODIFY `id_treinamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `treinamento`
--
ALTER TABLE `treinamento`
  ADD CONSTRAINT `treinamento_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`),
  ADD CONSTRAINT `treinamento_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
