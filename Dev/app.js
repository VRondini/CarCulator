const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const { Client } = require('pg');

const app = express();
const port = 3000;

app.use(cors({
  origin: '*',
  credentials: true,
  allowedHeaders: 'Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale',
  methods: 'POST, OPTIONS, GET',
}));

app.use(bodyParser.json());

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'login_carculator',
  password: 'Gatoumdois10',
  port: 5432,
});

client.connect();

app.post('/inserir_usuario', async (req, res) => {
  console.log('Recebendo solicitação para /inserir_usuario');
  const { nome, sobrenome, email, senha } = req.body;

  try {
    const result = await client.query(`
      INSERT INTO tabela_usuarios (nome, sobrenome, email, senha)
      VALUES ($1, $2, $3, $4)
    `, [nome, sobrenome, email, senha]);

    res.status(200).json({ message: 'Dados inseridos com sucesso!' });
  } catch (error) {
    console.error('Erro ao inserir dados:', error);
    res.status(500).json({ error: 'Erro ao inserir dados.', details: error.message });
  }
});

app.get('/login', async (req, res) => {
  const { email, senha } = req.query;

  try {
    const result = await client.query(
      'SELECT * FROM tabela_usuarios WHERE email = $1 AND senha = $2',
      [email, senha]
    );

    if (result.rows.length > 0) {
      res.status(200).json({ message: 'Login bem-sucedido!' });
    } else {
      res.status(401).json({ error: 'E-mail ou senha incorretos.' });
    }
  } catch (error) {
    console.error('Erro ao realizar login:', error);
    res.status(500).json({ error: 'Erro ao realizar login.', details: error.message });
  }
});

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
