import mysql from "mysql2/promise";

export default async function connect() {
    if (global.conexao && global.conexao.status != "disconected") {
        return global.conexao;
    }

    const conexao = await mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "dockertestedb",
    });

    global.conexao = conexao;
    return conexao;
}
