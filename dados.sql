-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.1.73-community - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para financeiro
CREATE DATABASE IF NOT EXISTS `financeiro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `financeiro`;


-- Copiando estrutura para tabela financeiro.caixa
CREATE TABLE IF NOT EXISTS `caixa` (
  `id` int(11) NOT NULL,
  `numero_doc` char(10) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `valor` decimal(18,2) NOT NULL,
  `tipo` char(1) NOT NULL,
  `dt_cadastro` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.


-- Copiando estrutura para tabela financeiro.contas_pagar
CREATE TABLE IF NOT EXISTS `contas_pagar` (
  `id` int(11) NOT NULL,
  `numero_doc` varchar(20) NOT NULL,
  `decricao` varchar(200) DEFAULT NULL,
  `parcela` int(11) NOT NULL,
  `vlr_parcela` decimal(18,2) NOT NULL,
  `vlr_compra` decimal(18,2) NOT NULL,
  `vlr_abatido` decimal(18,2) NOT NULL,
  `dt_compra` char(10) NOT NULL,
  `dt_cadastro` char(10) NOT NULL,
  `dt_vencimento` char(10) NOT NULL,
  `dt_pagamento` char(10) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.


-- Copiando estrutura para tabela financeiro.contas_receber
CREATE TABLE IF NOT EXISTS `contas_receber` (
  `id` int(11) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `parcela` int(11) NOT NULL,
  `vlr_parcela` decimal(18,2) NOT NULL,
  `vlr_compra` decimal(18,2) NOT NULL,
  `vlr_abatido` decimal(18,2) NOT NULL,
  `dt_compra` date NOT NULL,
  `dt_vencimento` date NOT NULL,
  `dt_cadastro` date NOT NULL,
  `status` char(10) NOT NULL,
  `dt_pagamento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.


-- Copiando estrutura para tabela financeiro.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `startus` char(1) NOT NULL,
  `dt_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
