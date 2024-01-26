const mysql = require('mysql2')
const host = "localhost"

const connection = {
    host:host,
    user:'root',
    password:'',
    database:'water_drill'
}

const pool = mysql.createPool(connection)
module.exports = {pool:pool.promise()}