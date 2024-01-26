const express = require('express')
const bodyParser = require('body-parser')
const webRoute = require('./webRouter')
const cors = require('cors')
const path = require('path');
const app = express()
const port = 3000




app.use(bodyParser.urlencoded({extended:true}))
app.use(cors())

app.use(express.static(path.join(__dirname, 'public')));

app.use('/drillUser', express.static(path.join(__dirname, 'public', 'drillUser')));

app.use('/admin1', express.static(path.join(__dirname, 'public', 'admin1')));

app.use('/admin2', express.static(path.join(__dirname, 'public', 'admin2')));

app.use('/completion', express.static(path.join(__dirname, 'public', 'completion')));

app.use('/',webRoute)



app.listen(port,()=>{
    console.log('server Running')
})

