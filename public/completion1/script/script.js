const path = require('path')


let newLink 


const completion1 = (req,res)=>{
    const{user,num}=req.params
    newLink = path.join(__dirname,'../','index.html')
    console.log(user,num)
    res.sendFile(newLink)
}


module.exports = {completion1}