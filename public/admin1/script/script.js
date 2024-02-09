const path = require('path')

let newLink 

const admin1 = (req,res)=>{
    console.log(req.user)
    if(req.user){
        newLink = path.join(__dirname,'../','index.html')
        res.sendFile(newLink)
    }else{
        res.redirect('/login/admin1')
    }
}




module.exports = {admin1}