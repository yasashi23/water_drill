const pool = require('../routes/db-config')
const {addDataUser}= require("./sql")

const host = "http://localhost:3000/admin1"


const admin1Post = async(req,res)=>{
    const lengthObj = Object.keys(req.body)
    const number = req.body[lengthObj[0]]
    const [well_number,customer_name,well_group,progress] = [number,req.body[lengthObj[1]],req.body[lengthObj[2]],req.body[lengthObj[3]]]
    try {    
        const [result]= await pool.pool.execute("insert into admin_data1 (well_number,customer_name,well_group,progress) values (?,?,?,?)",[well_number,customer_name,well_group,progress])

        addDataUser(pool.pool,customer_name,well_number)
        res.redirect(host)

      } catch (error) {
        console.error('Error:', error);
        res.status(500).send('Terjadi kesalahan server.');
      }


}


module.exports={admin1Post}