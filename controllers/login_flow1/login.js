const pool = require('../../routes/db-config')
const jwt = require("jsonwebtoken");

exports.authLogin_admin1 = async (req,res) =>{
    const {user,password} = req.body
    try{
        const [result] = await pool.pool.execute(`SELECT * FROM login_user WHERE user="${user}" AND password="${password}" AND  page="admin1"`)
        if(result.length == 0)res.json({message:"your user or password is wrong"})
        else {
            const{id,user,page} = result[0]
            jwtTokenSet(id,user,page,res,password)
        }

    }catch(err){
        console.log(err)
        res.json({message:"your user or password is wrong"})
    }
}

const cookieOptions = {
    httpOnly:true,
    maxAge: 24*60*60*1000
}

const jwtTokenSet = async (id,user,page,res,password) => {
    const token = jwt.sign({id,user,page}, process.env.JWT_SECRET,{
        expiresIn:process.env.JWT_ACCESS_TOKEN
    })
    // console.log("the token is flow1",token)

    add_token(user,password,token)

    res.cookie('userSave', token,cookieOptions).json({message:"success",accessToken:token,redirect:'/admin1'})
}

const add_token = async(user,password,token) =>{
    try{
        const [result] = await pool.pool.execute(`update login_user set token=("${token}") WHERE user="${user}" AND password="${password}" AND  page="admin1"`)
    }catch(error){
        // console.log("47",error)
    }
}