const path = require('path')

let newLink 

const loginAdmin2 = (req,res)=>{
    newLink = path.join(__dirname,'../','index.html')
    res.sendFile(newLink)
}



module.exports = {loginAdmin2}