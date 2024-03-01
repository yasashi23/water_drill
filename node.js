const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const path = require('path');
const cookieParser = require('cookie-parser');
const app = express()
const port = 3000


// https://github.com/elderny/mysql_Login/blob/main/MySQL_Login_Page/controllers/auth.js

app.use(bodyParser.urlencoded({extended:false}))
app.use(cookieParser())
app.use(express.json());
app.use(cors())

app.use(express.static(path.join(__dirname, 'public')));
// app.use(express.static(path.join(__dirname, 'public/loginPage')));


app.use('/login/admin1', express.static(path.join(__dirname, 'public', 'login1')));
app.use('/login/admin2', express.static(path.join(__dirname, 'public', 'login2')));
app.use('/login/driller', express.static(path.join(__dirname, 'public', 'login3')));
app.use('/dataCompleted', express.static(path.join(__dirname, 'public', 'completed')));



// app.use('/admin1', express.static(path.join(__dirname, 'public', 'admin1')));

// app.use('/admin2', express.static(path.join(__dirname, 'public', 'admin2')));

// app.use('/completion', express.static(path.join(__dirname, 'public', 'completion')));

app.use('/',require('./routes/pages'))
app.use('/auth',require('./routes/auth'))
app.use('/db',require('./routes/crud'))





app.listen(port,()=>{
    console.log('server Running',port)
})

