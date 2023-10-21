SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `CLIENTES` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `CLIENTES` (`id`, `nome`, `endereco`, `telefone`) VALUES
(1, 'biriba', 'rua das antas,21', '80028922'),
(2, 'lico', 'rua dos valeis,22', '800289581');

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `dataDoPedido` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valorUnico` decimal(10,2) DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `pedidos` (`id`, `dataDoPedido`, `quantidade`, `valorUnico`, `valorTotal`) VALUES
(1, '2023-10-19', 2, 25.20, 50.00),
(2, '2023-10-19', 1, 48.45, 100.25);

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `produtos` (`id`, `nome`, `categoria`, `preco`) VALUES
(1, 'jurubeba', 'plantas', 20.50),
(2, 'amora', 'plantas', 50.00);


ALTER TABLE `CLIENTES`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `CLIENTES`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
