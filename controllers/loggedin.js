const pool = require('../routes/db-config')
const jwt = require("jsonwebtoken");
const { promisify } = require("util");

// exports.isLoggedIn = async (req,res,next) => {
//     console.log(req.cookie.userSave)
//     if(req.cookie.userSave){
//         try{

//             const {id} = await promisify(jwt.verify)(req.cookies.userSave,process.env.JWT_SECRET);
//             console.log(id)

//             const [result] = pool.pool.execute(`SELECT * FROM login_user where id="${id}"`)
//             console.log(id,result)
//             if(result.length == 0) return next()
//             req.user = result
//             return next()


//         }catch(err){
//             console.log(err)
//             return next()
//         }
//     }else{
//         next()
//     }
// }

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
        // console.log(decode)
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