# Aplicação em docker

## Requisitos

- Node.js v12 ou superior
- MySQL
- npm (gerenciador de pacotes do Node.js)

## Instalação

1. **Clone o repositório**:

   ```bash
   https://github.com/Emaus-Leonardo/Modulo-4.git

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
