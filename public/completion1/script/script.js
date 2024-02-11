const path = require('path')


let newLink 


const completion1 = (req,res)=>{
    newLink = path.join(__dirname,'../','index.html')
    res.sendFile(newLink)
}


module.exports = {completion1}