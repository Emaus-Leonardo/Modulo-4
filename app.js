import express from "express";
import os from "os";
import dotenv from "dotenv";
import connect from "./conexao.js"; 

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

app.get("/liveness", (req, res) => {
  return res.status(200).json({
    message: "Meu app está vivo!",
    timestamp: new Date().toISOString(),
    version: "1.0.0",
    date: new Date().getTime(),
    status: "UP",
    path: process.cwd(),
    port: port,
    uid: process.getuid(),
    gid: process.getgid(),
  });
});

app.get("/readiness", (req, res) => {
  return res.status(200).json({
    message: "Meu app está pronto!",
    platform: os.platform(),
    freemem: os.freemem(),
    totalmem: os.totalmem(),
    homedir: os.homedir(),
    date: new Date().getTime(),
  });
});

app.get("/consulta-dados", async (req, res) => {
  try {
    const connection = await connect();
    const [results] = await connection.query('SELECT * FROM produto'); 
    return res.status(200).json({
      message: "Dados consultados com sucesso!",
      data: results,
      date: new Date().getTime(),
    });
  } catch (err) {
    console.error('Error querying the database:', err.stack);
    return res.status(500).json({
      message: 'Error querying the database',
      error: err.stack,
    });
  }
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
