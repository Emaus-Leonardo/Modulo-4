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
   
2. Instale as dependências:

  ```bash
  npm install
  ```
3. Script para tabela do banco de dados

   ```bash
   CREATE TABLE `produto` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(1000) NOT NULL,
  `descricao` text NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
  ```

