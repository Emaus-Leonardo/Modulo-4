import mysql from "mysql2/promise";

export default async function connect() {
    if (global.conexao && global.conexao.status != "disconected") {
        return global.conexao;
    }

    const conexao = await mysql.createConnection({
        host: "mysql",
        user: "user",
        password: "9825",
        database: "dockertestedb",
    });

    global.conexao = conexao;
    return conexao;
}
