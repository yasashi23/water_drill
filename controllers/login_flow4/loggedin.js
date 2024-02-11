const pool = require('../../routes/db-config')
const jwt = require("jsonwebtoken");
const { promisify } = require("util");



exports.isLoggedIn = async (req,res,next)=>{
    const authHeader = req.headers['authorization']
    const token = authHeader && authHeader.split(' ')[1]
    if(token == null) {
        console.log("HELLO ERROR TOKEN NULL",authHeader)

        // return res.sendStatus(401)
        return res.json({permission:"401"})
    }
    jwt.verify(token, process.env.JWT_SECRET,(err,decode)=>{
        if(err) {
            // console.log("JWT FAILED",decode)
            // return res.sendStatus(403)}
            console.log("FORBIDDEN ERROR",err)
            // console.log("FORBIDDEN DECODE",decode)

            return res.json({permission:"403",msg:"unverified"})

        }
            next()
    })
}

exports.getUsers = async(req,res)=>{
    try{
        const[users] = await pool.pool.execute(`select * from login_user`)
        const {id,user} = users[0]
        // console.log("error BROH NIH",users)

        res.json({id,user,msg:"verified"})
    }catch(err){
        console.error("errors nih",err)
    }
}

exports.refreshToken = async (req,res) =>{
    const token = req.cookies.userSave
    // console.log(token)
    res.json({token})
}