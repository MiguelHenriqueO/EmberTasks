import pkg from 'pg';
const { Client } = pkg;

const client = new Client({
  user: 'postgres',
  host: '127.0.0.1',
  database: 'EmberTasks',
  password: 'Ml3006',
  port: 5432,
});

async function testar() {
  try {
    console.log("Tentando conectar ao PostgreSQL...");
    await client.connect();
    console.log(" Sucesso absoluto! O Node.js conseguiu conectar.");
    
    const res = await client.query('SELECT current_user, current_database();');
    console.log("Dados da sessão atual:", res.rows);
    
    await client.end();
  } catch (err) {
    console.error("\n Falha na conexão!");
    console.error("Mensagem real do PostgreSQL:", err.message);
    console.error("Código do erro:", err.code);
  }
}

testar();
