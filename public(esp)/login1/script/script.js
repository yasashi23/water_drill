const path = require('path')

let newLink 

const loginAdmin1 = (req,res)=>{
    newLink = path.join(__dirname,'../','index.html')
    res.sendFile(newLink)
}


module.exports = {loginAdmin1}