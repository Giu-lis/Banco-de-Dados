-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:48
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 1, 1, '2025-09-21 10:00:00', 'Consulta de rotina'),
(2, 2, 2, '2025-09-30 14:30:00', 'Consulta de rotina'),
(3, 3, 3, '2025-10-07 13:00:00', 'Consulta de rotina'),
(4, 4, 4, '2025-10-15 08:00:00', 'Consulta de rotina'),
(5, 5, 5, '2025-10-20 13:30:00', 'Consulta de rotina');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Jacinto pinto', 'Urologista', '0800-7790', 'CRM3666'),
(2, 'Dra. Simone Mendes', 'Demartologista', '4448-7600', 'CRM54321'),
(3, 'Dra. Amanda Lima', 'Cardiologista', '4545-0909', 'CRM6789'),
(4, 'Dr. Calanguinho', 'Psiquiatra', '2020-7777', 'CRM9876'),
(5, 'Dra. Beca lango', 'Geriatra', '0000-0001', 'CRM32671'),
(6, 'Dra. Tibúrcia', 'Pediatra', '6666-007', 'CRM50837'),
(7, 'Dr. Fudencio', 'Traumatologista', '8888-7427', 'CRM92647'),
(8, 'Dra. Annal Raul', 'Ginecologista', '6060-0002', 'CRM77980'),
(9, 'Dr. Takarasha Nosaco', 'Oncologista', '0606-0606', 'CRM31324'),
(10, 'Dr. Cicero dos Santos', 'Oftalmologista', '0099-8765', 'CRM54776');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'Gabriela Bagagem Jardim', '2008-10-15', '9991-0101', 'Rua do Lago, 03', '123.456.78', 'Nukbag@gmail.com'),
(2, 'Raul Annal Guidão', '2008-10-18', '0666-0666', 'Rua do Au Tismo, 02', '911.876.54', 'Annalguido@gmail.com'),
(3, 'Vinicius Pera Azeda', '2008-09-13', '2611-0501', 'Rua Fear and Hanger', '000.909.00', 'Vinicius13@gmail.com'),
(4, 'Felipe Augosta Gonzar do Bueiro', '2008-10-12', '0976-2547', 'Rua Lakers, 07', '769.209.87', 'felps@gmail.com'),
(5, 'Pedro Amargo detona', '2008-07-09', '2990-1023', 'Rua Portuguesa, 05', '028.766.12', 'pedroca@gmail.com'),
(6, 'Ana Clara Souza', '2005-06-23', '98765-4321', 'Rua das Flores, 123,', '987.654.32', 'ana.clara.souza@example.com'),
(7, 'Bruno Mendes Lima', '1992-04-12', '99888-7777', 'Avenida dos Oceanos, 456,', '876.543.21', 'bruno.mendes.lima@example.com'),
(8, 'Camila Oliveira Santos', '1985-11-29', '8899-5566', 'Travessa dos Ventos, 789', '765.432.10', 'camila.oliveira.santos@example.com'),
(9, 'Diego Costa Rocha', '1978-07-14', '7755-3344', 'Praça das Estrelas, 101,', '654.321.09', 'diego.costa.rocha@example.com'),
(10, 'Eduarda Ferreira Gomes', '2001-01-30', '9911-2233', 'Rua do Arco-Íris, 202,', '543.210.98', 'eduarda.ferreira.gomes@example.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
