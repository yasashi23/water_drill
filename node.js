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
app.use('/dataCompleted2', express.static(path.join(__dirname, 'public', 'completed2')));


app.use('/',require('./routes/pages'))
app.use('/auth',require('./routes/auth'))
app.use('/db',require('./routes/crud'))


const data = {
    "Filters":"20",
    "Driller":"John",
    "Assistans":"dani",
    "Charged":"$20",
    "Diesel_liters":"30",
    "Engine_Oil":"90",
    "Grease_Kg":"90",
    "Earnings":"$200",
    "Total_Cost":"$150",
    "Profit":"$350"

}
delete data.Charged
const newData = {...data,"Profit":"MAHALLL"}

// console.log(newData)


app.listen(port,()=>{
    console.log('server Running',port)
})

