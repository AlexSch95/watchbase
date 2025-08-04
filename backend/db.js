const mysql2 = require('mysql2/promise');

const dbConfig = {
    host: 'localhost',
    user: 'watchbase_user',
    password: 'bla1234',
    database: 'watchbase'
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