-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jun-2020 às 23:21
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trabalhophp_itens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `detalhes` text NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `destaque` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `categoria`, `detalhes`, `imagem`, `destaque`) VALUES
(18, 'Kong Fu Panda', '199.00', 'playstation', 'Kong Fu Panda para playstation2.', 'imagem/509886003642f45bdb.jpg', 1),
(19, 'Assassins Creed Revelations', '159.00', 'xbox', 'Assassins Creed para Xbox.', 'imagem/AssassinsCreed.jpg', 0),
(20, 'Atari', '799.00', 'classicos', 'Console Atari classico.', 'imagem/atari.jpg', 0),
(21, 'Battlefield 5', '199.00', 'playstation', 'Battlefield 5 para playstation 4.', 'imagem/battlefieldV.jpg', 0),
(31, 'FarCry5', '99.00', 'xbox', 'Farcry 5 para xbox.', 'imagem/FarCry5.jpg', 0),
(32, 'God of War', '399.00', 'playstation', 'God of War para playstation 4.', 'imagem/GodW.jpg', 0),
(33, 'Fifa20', '59.00', 'xbox', 'Fifa 2020 para Xbox One.', 'imagem/fifa20.jpg', 0),
(34, 'Grand Theft Auto V', '299.00', 'playstation', 'Grand Theft Auto V para Playstation 4.', 'imagem/Gta5-playstation.jpg', 0),
(35, 'Grand Theft Auto V', '199.00', 'xbox', 'Grand Theft Auto V para Xbox One.', 'imagem/Gta5-xbox.jpg', 0),
(36, 'Luigis Mansion 3', '99.00', 'Nintendo', 'Luigis Mansion 3 para Nintendo switch.', 'imagem/LuigisMansion-nintendo.jpg', 0),
(37, 'Sega Genesis Console', '550.00', 'classicos', 'Sega Genesis Console classico.', 'imagem/mastersys.jpg', 0),
(38, 'Mortal Kombat 11', '139.00', 'playstation', 'Mortal Kombat 11 para Playstation 4.', 'imagem/MortalKombat-playstation.jpg', 0),
(39, 'Nintendo Switch Lite', '1399.00', 'Nintendo', 'Nintendo Switch Lite', 'imagem/nintendosw.jpg', 0),
(40, 'Ori and the Blid Forest', '79.00', 'xbox', 'Ori and the Blid Forest para Xbox One.', 'imagem/ori.jpg', 0),
(41, 'Pokemom Sword', '69.00', 'Nintendo', 'Pokemom Sword para nintendo Switch', 'imagem/pokemon-sw.png', 0),
(42, 'Red Dead Redemption 2', '169.00', 'playstation', 'Red Dead Redemption 2 para Playstation 4.', 'imagem/red2.jpg', 0),
(43, 'Resident Evil 2', '129.00', 'xbox', 'Resident Evil 2 para Xbox One.', 'imagem/resdent2.jpg', 0),
(44, 'Super Nintendo', '399.00', 'classicos', 'Super Nintendo console classico.', 'imagem/snes.jpg', 0),
(45, 'Street Figther', '59.00', 'Nintendo', 'Street Fighter para nintendo Switch', 'imagem/StreetFigther-nintendo.jpg', 0),
(46, 'Super Mario World', '89.00', 'classicos', 'Super Mario World para console Super Nintendo.', 'imagem/supermarios.jpg', 0),
(47, 'The Last of Us Part 2 Special Edition', '499.00', 'playstation', 'The Last of Us Part 2 Special Edition para Playstation 4.', 'imagem/thelas2special.jpg', 0),
(48, 'Uncharted 4', '199.00', 'playstation', 'Uncharted 4 para Playstation 4.', 'imagem/uncharted-4-ps4.jpg', 0),
(49, 'Zelda', '99.00', 'Nintendo', 'Zelda para nintendo Switch.', 'imagem/Zelda-nintendo.jpg', 0),
(50, 'Dualshock 4', '189.00', 'playstation', 'Controle dualskock 4 para ps4.', 'imagem/dualshock4.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `iduser` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `primeironome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `telefone` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`iduser`, `email`, `senha`, `primeironome`, `sobrenome`, `telefone`, `admin`) VALUES
(1, 'teste@gmail.com', '123', 'desss', 'qwww', 123456789, 0),
(2, 'teste@gmail.com', '213', 'gttt', 'ere', 213456789, 0),
(3, 'teste@gmail.com', '', 'gttt', 'ere', 213456789, 0),
(4, 'teste2@gmail.com', '321', 'matheus', 'ba', 919293845, 0),
(5, 'teste3@gmail.com', '12', 'mat', 'ba', 212132121, 0),
(8, 'admin@admin.com', 'admin', 'admin', 'admin', 123456789, 1),
(9, 'teste4@gmail.com', '1234', 'teste', 'teste', 123456789, 0),
(10, '', '', 'matheus', 'ba', 919293845, 0),
(11, '', '', 'matheus', 'ba', 919293845, 0),
(12, '', '', '', '', 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
