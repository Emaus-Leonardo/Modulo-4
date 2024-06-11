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

3. inicie o servidor

   ```bash
      npm start
   
5. Rotas da API:

   ```bash
      GET /liveness
   ```
   
   ```bash
      GET /readiness
   ```
   
   ```bash
      GET /consulta-dados
   ```

6. Estrutura do Projeto

   ```bash
   ├── node_modules
   │   └── ...
   ├── .dockerignore
   ├── .gitignore
   ├── app.js
   ├── conexao.js
   ├── Dockerfile
   ├── package-lock.json
   ├── package.json
   └── produto.sql
   ```
