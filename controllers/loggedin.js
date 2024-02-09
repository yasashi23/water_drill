const pool = require('../routes/db-config')
const jwt = require("jsonwebtoken");
const { promisify } = require("util");

exports.isLoggedIn = async (req,res,next) => {
    if(req.cookie.userSave){
        try{

            const {id} = await promisify(jwt.verify)(req.cookies.userSave,process.env.JWT_SECRET);
            console.log(id)


        }catch(err){

        }
    }
}