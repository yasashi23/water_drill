const path = require('path')

let newLink 



const loginDriller = (req,res)=>{
    newLink = path.join(__dirname,'../','index.html')
    res.sendFile(newLink)
}

module.exports = {loginDriller}