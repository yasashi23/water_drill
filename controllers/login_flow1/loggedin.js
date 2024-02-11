const pool = require('../../routes/db-config')
const jwt = require("jsonwebtoken");
const { promisify } = require("util");



exports.isLoggedIn_admin1 = async (req,res,next)=>{
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
    // console.log("isLoggedIn 1")

            next()
    })
}


exports.getUsers_admin1 = async(req,res)=>{
    console.log("getUseradmin1")
    try{
        const {user,id} = req
        console.log("lihat ini",req.id,req.user)
        res.json({id,user,msg:"verified"})
    }catch(err){
        console.error("errors nih",err)
    }
}

exports.refreshToken_admin1 = async (req,res) =>{
    console.log("refreshTOken 1 ")
    try{
        const token = req.cookies.userSave
        const[users] = await pool.pool.execute(`select * from login_user where token=("${token}") AND page="admin1"`)
        console.log("refresh Token",token)
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
                    // console.log("BEDA CUYY")
                }else{
    
                    // console.log("new Token",decode)
                }
                res.json({token:accessToken})
            })

        }


    }catch(er){
        console.log(er)
    }

}





exports.isLoggedIn_admin1_completion = async (req,res,next)=>{
    const authHeader = req.headers['authorization']
    // const {user,num} = req.params
    console.log("isLoggedIn 1")
    const token = authHeader && authHeader.split(' ')[1]
    if(token == null) {
        // console.log("HELLO ERROR TOKEN NULL",authHeader)
        return res.json({permission:"401"})
    }
    jwt.verify(token, process.env.JWT_SECRET,(err,decode)=>{
        if(err) {
            // console.log("FORBIDDEN ERROR flow1",err)
            return res.json({permission:"403",msg:"unverified"})
        }
            req.id = decode.id
            req.user = decode.user
    // console.log("isLoggedIn 1")
            next()
    })
}


exports.refreshToken_admin1_cmpl1 = async (req,res) =>{
    const {user,num} = req.params
    // console.log({user,num})
    console.log("refresh token 1")
    try{
        const token = req.cookies.userSave
        console.log({user,num,token})
        const[users] = await pool.pool.execute(`select * from login_user where token=("${token}") AND page="admin1"`)
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
