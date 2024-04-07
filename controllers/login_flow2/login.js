const pool = require('../../routes/db-config')
const jwt = require("jsonwebtoken");

exports.authLogin_admin2 = async (req,res) =>{
    const {user,password} = req.body
    try{
        const [result] = await pool.pool.execute(`SELECT * FROM login_user WHERE user="${user}" AND password="${password}" AND  page="admin2"`)
        if(result.length == 0)res.json({message:"your user or password is wrong"})
        else {
            const{id,user,page} = result[0]
            jwtTokenSet(id,user,page,res,password)
        }

    }catch(err){
        console.error(err)
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

    add_token(user,password,token)

    res.cookie('userSave', token,cookieOptions).json({message:"success",accessToken:token,redirect:'/admin2'})
}

const add_token = async(user,password,token) =>{
    try{
        const [result] = await pool.pool.execute(`update login_user set token=("${token}") WHERE user="${user}" AND password="${password}" AND  page="admin2"`)
    }catch(err){
        console.error(err)
    }
}