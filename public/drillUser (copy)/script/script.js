const path = require('path')


let newLink 

const drillerUser = (req,res) => {
    newLink = path.join(__dirname,'../','index.html')
    res.sendFile(newLink)}


module.exports={drillerUser}