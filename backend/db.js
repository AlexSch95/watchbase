const mysql2 = require('mysql2/promise');
require('dotenv').config();

const dbConfig = {
    host: process.env.HOST_NAME,
    user: process.env.DB_USER,
    password: process.env.DB_PWD,
    database: process.env.DB_NAME
}

async function connectToDatabase(){
    try {
        const connection = await mysql2.createConnection(dbConfig);
        console.log('Connection to DB was successful!');
        return connection;
    } catch (error) {
        console.error('Connection to DB failed:', error.message);
    }
}

async function testConnection(){
    try {
        const connection = await connectToDatabase();
        const [rows] = await connection.execute('SELECT * FROM movies;');
        console.log('Todos aus der DB', rows);
        await connection.end();
    } catch (error) {
        console.error('Fehler', error.message);
    }
}

//testConnection();

//macht die Funktion importierbar aus anderen .js Dateien
module.exports = { connectToDatabase }; 