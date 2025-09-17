-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 13:24
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id_carro` int(11) NOT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `descrição` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id_carro`, `modelo`, `placa`, `marca`, `cor`, `descrição`) VALUES
(1, 'Ford Fiesta', 'XYZ-123', 'Ford', 'prata', 'Carro manual, semi-novo, quatro portas'),
(2, 'Chevrolet Onix', 'ABC-567', 'Chevrolet', 'branco', 'Carro branco, quatro portas'),
(3, 'Toyota Corolla', 'DEF-910', 'Toyota', 'preto', 'Carro preto, quatro portas'),
(4, 'Volkswagen Gol', 'GHI-112', 'Volkswagen', 'preto', 'Carro preto, quatro portas'),
(5, 'Fiat Palio', 'JKL-314', 'Fiat', 'vermelho', 'Carro vermelho, quatro portas'),
(6, 'Honda Civic', 'MNO-516', 'Honda', 'branco', 'Carro branco, quatro portas'),
(7, 'Renault Duster', 'PQR-718', 'Renault', 'cinza', 'Carro cinza, quatro portas'),
(8, 'Hyundai HB20', 'STU-920', 'Hyundai', 'azul', 'Carro azul, quatro portas'),
(9, 'Peugeot 208', ' VWX-22', ' Peugeot', 'cinza', 'Carro cinza, quatro portas'),
(10, 'Nissan Sentra', 'YZT-324', 'Nissan', 'preto', 'Carro preto, quatro portas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `rg` varchar(11) DEFAULT NULL,
  `cnh` varchar(9) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `telefone`, `rg`, `cnh`, `data_nascimento`) VALUES
(1, 'João Silva', '(11) 98765-4321', '12.345.678-', '012345678', '0000-00-00'),
(2, 'Maria Oliveiraa', ' (21) 91234-5678', '23.456.789-', '123456789', '0000-00-00'),
(3, 'Carlos Pereira', '(11) 95555-6666', ' 34.567.890', '234567890', '0000-00-00'),
(4, 'Ana Souza', '(15) 97777-8888', '45.678.901-', '345678901', '0000-00-00'),
(5, 'Pedro Lima', '(15) 96666-7777', '56.789.012-', '456789012', '0000-00-00'),
(6, 'Laura Costa', '(15) 93333-4444', '67.890.123-', '567890123', '0000-00-00'),
(7, 'Lucas Almeida', '(11) 94444-5555', '78.901.234-', '678901234', '0000-00-00'),
(8, 'Beatriz Santos', '(21) 92222-3333', '89.012.345-', '789012345', '0000-00-00'),
(9, 'Rafael Rocha', ' (21) 93333-4444', '90.123.456-', '890123456', '0000-00-00'),
(10, 'Fernanda Gomes', '(15) 95555-6666', '01.234.567-', '901234567', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_carro`, `id_cliente`, `data_reserva`, `data_devolucao`, `observacoes`) VALUES
(1, 1, 1, '2025-01-05', '2025-02-19', 'cliente básico'),
(2, 2, 2, '2025-03-11', '2025-04-27', 'cliente básico plus'),
(3, 3, 3, '2025-05-06', '0000-00-00', 'cliente premium'),
(4, 4, 4, '2025-07-29', '2025-08-14', 'cliente prata'),
(5, 5, 5, '2025-09-01', '2025-10-22', 'cliente premium');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_carro`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_carro` (`id_carro`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
