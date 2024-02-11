const pool = require('../../routes/db-config')
const jwt = require("jsonwebtoken");

exports.authLogin = async (req,res) =>{
    const {user,password} = req.body
    console.log(user,password)
    try{
        const [result] = await pool.pool.execute(`SELECT * FROM login_user WHERE user="${user}" AND password="${password}"`)
        if(result.length == 0)res.json({message:"your user or password is wrong"})
        else {
            jwtTokenSet(result[0].id,res)
        }

    }catch(err){
        console.log(err)
        res.json({message:"your user or password is wrong"})
    }
}

const cookieOptions = {
    // expires: new Date(Date.now() + process.env.JWT_COOKIE_EXPIRES * 60),
    httpOnly:true,
    maxAge: 24*60*60*1000
}

const jwtTokenSet = async (id,res) => {
    const token = jwt.sign({id}, process.env.JWT_SECRET,{
        expiresIn:process.env.JWT_ACCESS_TOKEN
    })
    const tokenRefresh = jwt.sign({id}, process.env.JWT_SECRET,{
        expiresIn:process.env.JWT_REFRESH_TOKEN
    })
    console.log("the token is",token)

    res.cookie('userSave', token,cookieOptions).json({message:"success",accessToken:token,redirect:'/admin1'})
}