-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:56
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
-- Banco de dados: `carrinho`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(10) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `email`, `senha`, `cpf`, `endereco`, `cidade`, `estado`, `cep`, `data_cadastro`) VALUES
(1, 'João Silva', 'joao.silva@gmail.com', '12345', '123.456.789-00', 'Rua das Flores, 123', ' São Paulo', 'SP', '01001-000', '1990-01-01 00:00:00'),
(2, 'Maria Oliveira', ' maria.oliveira@gmail.com', '54321', '987.654.321-00', ' Avenida Paulista, 456', 'São Paulo', 'SP', '01310-100', '1985-05-15 00:00:00'),
(3, 'Carlos Pereira', ' carlos.pereira@gmail.com', '09346', '111.222.333-44', 'Rua do Sol, 789', 'Rio de Janeiro', 'RJ', '20001-000', '1978-03-22 00:00:00'),
(4, 'Ana Souza', 'ana.souza@gmail.com', '01243', '555.666.777-88', 'Rua das Palmeiras, 101', 'Belo Horizonte', 'MG', '30130-141', '1992-09-07 00:00:00'),
(5, 'Pedro Lima', 'pedro.lima@gmail.com', '89354', '222.333.444-55', 'Rua da Lua, 202', 'Curitiba', 'PR', '80001-000', '1988-11-12 00:00:00'),
(6, 'Laura Costa', 'laura.costa@gmail.com', '19778', '333.444.555-66', 'Rua do Mar, 303', 'Salvador', 'BA', '40001-000', '1995-08-29 00:00:00'),
(7, 'Lucas Santos', 'lucas.santos@gmail.com', '69542', '444.555.666-77', 'Rua das Estrelas, 404', 'Fortaleza', 'CE', '60001-000', '1983-06-04 00:00:00'),
(8, 'Beatriz Almeida', 'beatriz.almeida@gmail.com', '50855', '666.777.888-99', 'Rua do Vento, 505', 'Recife', 'PE', '50001-000', '1999-02-18 00:00:00'),
(9, 'Rafael Rocha', 'rafael.rocha@gmail.com', '72920', '777.888.999-00', 'Rua do Tempo, 606', 'Porto Alegre', 'RS', '90001-000', '1980-04-30 00:00:00'),
(10, 'Fernanda Gomes', 'fernanda.gomes@gmail.com', '00954', '888.999.000-11', 'Rua da Paz, 707', 'Brasília', 'DF', '70001-000', '1987-12-21 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens`
--

CREATE TABLE `itens` (
  `id_item` int(10) NOT NULL,
  `id_pedido` int(10) DEFAULT NULL,
  `id_produto` int(10) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itens`
--

INSERT INTO `itens` (`id_item`, `id_pedido`, `id_produto`, `quantidade`, `precoUnitario`) VALUES
(1, 1, 1, 1, 59),
(2, 2, 2, 1, 89),
(3, 3, 3, 1, 129),
(4, 4, 4, 1, 49),
(5, 5, 5, 1, 69),
(6, 6, 6, 1, 39),
(7, 7, 7, 1, 79),
(8, 8, 8, 1, 29),
(9, 9, 9, 1, 199),
(10, 10, 10, 1, 99);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(10) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `data_pedido` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `endereco_entrega` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `data_pedido`, `status`, `valor_total`, `endereco_entrega`) VALUES
(1, 1, '2025-02-17 00:00:00', 'Em andamento', 59, 'Rua das Flores, 123'),
(2, 2, '2025-02-21 00:00:00', 'Processando pedido', 89, 'Avenida Paulista, 456'),
(3, 3, '2025-03-05 00:00:00', 'A caminho', 129, 'Rua do Sol, 789'),
(4, 4, '2025-03-09 00:00:00', 'Processando pedido', 49, 'Rua das Palmeiras, 101'),
(5, 5, '2025-03-11 00:00:00', 'Entregue', 69, 'Rua da Lua, 202'),
(6, 6, '2025-03-13 00:00:00', 'A caminho', 99, 'Rua do Mar, 303'),
(7, 7, '2025-03-19 00:00:00', 'Em andamento', 39, 'Rua das Estrelas, 404'),
(8, 8, '2025-03-20 00:00:00', 'Em andamento', 79, 'Rua do Vento, 505'),
(9, 9, '2025-03-22 00:00:00', 'A caminho', 29, 'Rua do Tempo, 606'),
(10, 10, '2025-03-25 00:00:00', 'Processando', 199, 'Rua da Paz, 707');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(10) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `sku` varchar(11) DEFAULT NULL,
  `estoque` int(4) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `descricao`, `preco`, `sku`, `estoque`, `data_criacao`) VALUES
(1, 'Vestido Floral de Verão', 'Vestido leve com estampa floral, ideal para dias quentes. Possui alças ajustáveis e cintura marcada', 0, 'SHEIN-VFV-0', 150, '2023-01-15 00:00:00'),
(2, 'Jaqueta Jeans Feminina', 'Jaqueta jeans clássica com botões de metal e bolsos frontais. Perfeita para compor looks casuais', 0, 'SHEIN-JJF-0', 200, '2023-02-20 00:00:00'),
(3, 'Tênis Esportivo Branco', 'Tênis confortável e estiloso, ideal para atividades físicas ou uso diário. Solado emborrachado e acolchoamento no calcanhar', 0, 'SHEIN-TEB-0', 300, '2023-03-25 00:00:00'),
(4, 'Blusa de Seda Preta', 'Blusa elegante em seda, com mangas longas e corte reto. Ideal para eventos formais', 0, 'SHEIN-BSP-0', 100, '2023-04-30 00:00:00'),
(5, 'Calça Legging de Yoga', 'Calça legging feita de tecido elástico e respirável, perfeita para yoga e exercícios. Cintura alta e modelagem slim', 0, 'SHEIN-CLY-0', 250, '2023-05-05 00:00:00'),
(6, 'Saia Lápis de Couro', 'Saia lápis em couro sintético, com zíper na lateral. Estilo moderno e sofisticado', 0, 'SHEIN-SLC-0', 80, '2023-06-10 00:00:00'),
(7, 'Óculos de Sol Aviador', 'Óculos de sol no estilo aviador, com lentes escuras e armação metálica. Ideal para proteção e estilo', 0, 'SHEIN-OSA-0', 120, '2023-07-15 00:00:00'),
(8, 'Bolsa Tote de Lona', 'Bolsa espaçosa em lona resistente, com alças longas e fecho de botão magnético. Perfeita para o dia a dia', 0, 'SHEIN-BTL-0', 180, '2023-08-20 00:00:00'),
(9, 'Camiseta Básica Branca', 'Camiseta de algodão com corte básico e gola redonda. Ideal para combinar com diversas peças', 0, 'SHEIN-CBB-0', 500, '2023-09-25 00:00:00'),
(10, 'Jaqueta de Couro Masculina', 'Jaqueta de couro com design clássico, bolsos frontais e forro interno. Estilo e proteção para o inverno', 0, 'SHEIN-JCM-0', 100, '2023-10-30 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `itens`
--
ALTER TABLE `itens`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `itens`
--
ALTER TABLE `itens`
  MODIFY `id_item` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itens`
--
ALTER TABLE `itens`
  ADD CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  ADD CONSTRAINT `itens_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
