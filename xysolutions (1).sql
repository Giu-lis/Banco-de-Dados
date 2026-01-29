-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/01/2026 às 16:20
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `xysolutions`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidato`
--

CREATE TABLE `candidato` (
  `id_candidato` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(18) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `nivel_escolaridade` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contratacao`
--

CREATE TABLE `contratacao` (
  `id_contratacao` int(11) NOT NULL,
  `data_contratacao` date DEFAULT NULL,
  `id_candidato` int(11) DEFAULT NULL,
  `id_vaga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_cliente`
--

CREATE TABLE `empresa_cliente` (
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `entrevista`
--

CREATE TABLE `entrevista` (
  `id_entrevista` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `resultado` text DEFAULT NULL,
  `id_processo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario_rh`
--

CREATE TABLE `funcionario_rh` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `processo_seletivo`
--

CREATE TABLE `processo_seletivo` (
  `id_processo` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `id_candidato` int(11) DEFAULT NULL,
  `id_vaga` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vaga`
--

CREATE TABLE `vaga` (
  `id_vaga` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `salario` decimal(6,0) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Índices de tabela `contratacao`
--
ALTER TABLE `contratacao`
  ADD PRIMARY KEY (`id_contratacao`),
  ADD KEY `id_candidato` (`id_candidato`),
  ADD KEY `id_vaga` (`id_vaga`);

--
-- Índices de tabela `empresa_cliente`
--
ALTER TABLE `empresa_cliente`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices de tabela `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`id_entrevista`),
  ADD KEY `id_processo` (`id_processo`);

--
-- Índices de tabela `funcionario_rh`
--
ALTER TABLE `funcionario_rh`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `processo_seletivo`
--
ALTER TABLE `processo_seletivo`
  ADD PRIMARY KEY (`id_processo`),
  ADD KEY `id_candidato` (`id_candidato`),
  ADD KEY `id_vaga` (`id_vaga`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `vaga`
--
ALTER TABLE `vaga`
  ADD PRIMARY KEY (`id_vaga`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contratacao`
--
ALTER TABLE `contratacao`
  ADD CONSTRAINT `contratacao_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`),
  ADD CONSTRAINT `contratacao_ibfk_2` FOREIGN KEY (`id_vaga`) REFERENCES `vaga` (`id_vaga`);

--
-- Restrições para tabelas `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `entrevista_ibfk_1` FOREIGN KEY (`id_processo`) REFERENCES `processo_seletivo` (`id_processo`);

--
-- Restrições para tabelas `processo_seletivo`
--
ALTER TABLE `processo_seletivo`
  ADD CONSTRAINT `processo_seletivo_ibfk_1` FOREIGN KEY (`id_candidato`) REFERENCES `candidato` (`id_candidato`),
  ADD CONSTRAINT `processo_seletivo_ibfk_2` FOREIGN KEY (`id_vaga`) REFERENCES `vaga` (`id_vaga`),
  ADD CONSTRAINT `processo_seletivo_ibfk_3` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario_rh` (`id_funcionario`);

--
-- Restrições para tabelas `vaga`
--
ALTER TABLE `vaga`
  ADD CONSTRAINT `vaga_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa_cliente` (`id_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
