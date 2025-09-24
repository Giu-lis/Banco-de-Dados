-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 17:02
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
-- Banco de dados: `markenting`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campanha`
--

CREATE TABLE `campanha` (
  `id_campanha` int(10) NOT NULL,
  `nome_campanha` varchar(50) NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `orcamento` float DEFAULT NULL,
  `id_midia` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campanha`
--

INSERT INTO `campanha` (`id_campanha`, `nome_campanha`, `data_inicio`, `data_fim`, `orcamento`, `id_midia`, `id_cliente`) VALUES
(1, 'Construtora Autobots', '2025-09-10', '2025-09-20', 1600, 1, 1),
(2, 'Doceria Doces Sonhos', '2025-09-03', '2025-09-07', 200, 2, 2),
(3, 'Alfaiataria', '2025-09-09', '2025-09-12', 400, 3, 3),
(4, 'Mecânica Do Alemão', '2025-09-15', '2025-09-19', 1050, 4, 4),
(5, 'Investimentos Kaulitz', '2025-09-22', '2025-09-24', 180, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(10) NOT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `segmento` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `email`, `segmento`, `telefone`) VALUES
(1, 'Carlos Eduardo Viera', 'carloseduviera@gmail.com', 'Construtora', '(15) 99326-1087'),
(2, 'Helena Maria da Costa', 'helenamaria10@gmail.com', 'Doceria', '(11) 99143-2020'),
(3, 'Caroline Almeida de Jesus', 'carolinealmeida@gmail.com', 'Costura', '(15) 99686-4202'),
(4, 'Junior Santos', 'juniorsantos@gmail.com', 'Mecânica', '(15) 99798-5233'),
(5, 'Vitória Oliveira', 'vitoriaoliv42@gmail.com', 'Investimento', '(11) 99271-6422');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id_midia` int(10) NOT NULL,
  `tipo_midia` varchar(50) DEFAULT NULL,
  `custo_unitario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`id_midia`, `tipo_midia`, `custo_unitario`) VALUES
(1, 'foto e vídeo', 200),
(2, 'foto', 20),
(3, 'vídeo', 100),
(4, 'foto e vídeo', 150),
(5, 'foto', 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `campanha`
--
ALTER TABLE `campanha`
  ADD PRIMARY KEY (`id_campanha`),
  ADD KEY `id_midia` (`id_midia`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`id_midia`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campanha`
--
ALTER TABLE `campanha`
  MODIFY `id_campanha` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `id_midia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `campanha`
--
ALTER TABLE `campanha`
  ADD CONSTRAINT `campanha_ibfk_1` FOREIGN KEY (`id_midia`) REFERENCES `midia` (`id_midia`),
  ADD CONSTRAINT `campanha_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
