const pool = require('../../routes/db-config')
const jwt = require("jsonwebtoken");
const { promisify } = require("util");



exports.isLoggedIn_admin2 = async (req,res,next)=>{
    const authHeader = req.headers['authorization']
    const token = authHeader && authHeader.split(' ')[1]
    if(token == null) {
        console.log("HELLO ERROR TOKEN NULL",authHeader)
        return res.json({permission:"401"})
    }
    jwt.verify(token, process.env.JWT_SECRET,(err,decode)=>{
        if(err) {
            console.log("FORBIDDEN ERROR flow1",err)
            return res.json({permission:"403",msg:"unverified"})
        }
            req.id = decode.id
            req.user = decode.user
            next()
    })
}

exports.getUsers_admin2 = async(req,res)=>{
    try{
        const {user,id} = req
        console.log("lihat ini",req.id,req.user)
        res.json({id,user,msg:"verified"})
    }catch(err){
        console.error("errors nih",err)
    }
}

exports.refreshToken_admin2 = async (req,res) =>{
    try{
        const token = req.cookies.userSave
        const[users] = await pool.pool.execute(`select * from login_user where token=("${token}") AND page="admin2"`)
        if(users.length==0){
            return res.json({msg:"error"})
        }
        else{
            const {id,user,page} = users[0]
            jwt.verify(token,process.env.JWT_SECRET,(err,decode)=>{
                if(err) return res.json({msg:"error"})
                const accessToken = jwt.sign({id,user,page},process.env.JWT_SECRET,{
                    expiresIn:process.env.JWT_ACCESS_TOKEN
                })
                if(decode.id!==id){
                    console.log("BEDA CUYY")
                }else{
    
                    console.log("new Token",decode)
                }
                res.json({token:accessToken})
            })

        }


    }catch(er){
        console.log(er)
    }

}