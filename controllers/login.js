const pool = require('../routes/db-config')
const jwt = require("jsonwebtoken");

exports.authLogin = async (req,res) =>{
    const {user,password} = req.body
    console.log(user,password)
    // res.status(400).redirect("/admin1")
    // res.status(200).redirect("/admin1")
    try{
        const [result] = await pool.pool.execute(`SELECT * FROM login_user WHERE user="${user}" AND password="${password}"`)
        if(result.length == 0)res.json({message:"your user or password is wrong"})
        else {
            jwtTokenSet(result[0].id,res)

            
            // res.status(200).redirect("/admin1")
        }

    }catch(err){
        console.log(err)
        res.json({message:"your user or password is wrong"})
    }
}


const jwtTokenSet = async (id,res) => {
    const token = jwt.sign({id}, process.env.JWT_SECRET,{
        expiresIn:process.env.JWT_EXPIRES_IN
    })
    console.log("the token is",token)
    const cookieOptions = {
        expires: new Date(Date.now() + process.env.JWT_COOKIE_EXPIRES * 60),
        httpOnly:true
    }
    res.cookie('userSave', token,cookieOptions).json({message:"success",redirect:"/admin1"})
}