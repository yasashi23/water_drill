const pool = require('../routes/db-config')
const {addDataUser}= require("./sql")

const host = "http://localhost:3000/admin1"


exports.admin1Post = async(req,res)=>{
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
exports.inputEarn = async(req, res,next) => {
  try {
    const data = req.body;
    const {driller,assistant,earn_driller,earn_assistant}=data 
    const insert = await pool.pool.query("INSERT INTO input_earn SET ?", data);
    req.driller = driller
    req.assistant = assistant
    req.earn_assistant = earn_assistant
    req.earn_driller = earn_driller
    next()
  } catch (error) {
    console.error(error);
    res.json({ error: "Internal server error" });
  }
}

