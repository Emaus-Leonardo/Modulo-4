# Projeto de API com Express e MySQL

Este projeto é uma API simples construída com Node.js, Express e MySQL. A API inclui rotas para verificar a "liveness" (vivacidade) e "readiness" (prontidão) do aplicativo, além de uma rota para consultar dados em um banco de dados MySQL.

## Requisitos

- Node.js v12 ou superior
- MySQL
- npm (gerenciador de pacotes do Node.js)

## Instalação

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
Instale as dependências:

bash
Copiar código
npm install
Script para criar a tabela no banco de dados:

sql
Copiar código
CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(1000) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
Script para inserir dados na tabela:

sql
Copiar código
INSERT INTO `produto` (`codigo`, `nome`, `preco`, `descricao`) VALUES
(1, 'ração de gato', '1', 'ração especial para gatos');
Uso
Inicie o servidor:

bash
Copiar código
npm start
Rotas da API:

Liveness: Verifica se o aplicativo está vivo.

bash
Copiar código
GET /liveness
Readiness: Verifica se o aplicativo está pronto para receber tráfego.

bash
Copiar código
GET /readiness
Consulta de Dados: Consulta dados da tabela produto no banco de dados MySQL.

bash
Copiar código
GET /consulta-dados
Estrutura do Projeto
go
Copiar código
.
├── conexao.js
├── app.js
├── package.json
└── README.md
conexao.js: Configuração da conexão com o banco de dados MySQL.
app.js: Configuração das rotas e inicialização do servidor Express.
package.json: Arquivo de configuração do npm com as dependências do projeto.
README.md: Documentação do projeto.
