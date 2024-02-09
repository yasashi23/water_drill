const mysql = require('mysql2')
const host = "localhost"
const dotenv = require("dotenv").config();

const connection = {
    host:process.env.DATABASE_HOST,
    user:process.env.DATABASE_USER,
    password:process.env.DATABASE_PASSWORD,
    database:process.env.DATABASE
}

const pool = mysql.createPool(connection)
module.exports = {pool:pool.promise()}