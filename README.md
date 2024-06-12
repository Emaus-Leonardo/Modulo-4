# Passos para utilização 

## puxar o container do DockerHub

docker pull emaus9825/atv-4:0.0.1

## criar o network e o banco

docker run -d -p 3306:3306 --name mysql --net banco -e MYSQL_ROOT_PASSWORD=root -e MYSQL_USER=user -e MYSQL_PASSWORD=9825 -e MYSQL_DATABASE=dockertestedb mysql/mysql-server:latest

docker network create banco

## Para criar o banco de dados, rode os scripts a baixo:

CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(1000) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

## Para inserir dados na tabela

INSERT INTO `produto` (`codigo`, `nome`, `preco`, `descricao`) VALUES
(1, 'racao de gato', '1', 'racao especial para gatos');

# Para executar a aplicação, rode o comando abaixo:

docker run -p 3000:3000 --name modulo4 --net banco -d emaus9825/atv-4:0.0.1

#Acesse http://localhost:3000/consulta-dados

A aplicação possui os seguintes end-points:
/consulta-dados,
/readiness,
/liveness

Repositório da aplicação: <br/>
https://github.com/Emaus-Leonardo/Modulo-4.git

DockerHub da Aplicação: <br/>
https://hub.docker.com/repository/docker/emaus9825/atv-4


