const path = require('path')

let newLink 

const dataCompleted = (req,res)=>{
    newLink = path.join(__dirname,'../','index.html')
    res.sendFile(newLink)
}




module.exports = {dataCompleted}