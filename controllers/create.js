const pool = require('../routes/db-config')
const {updateUser,getDataMeter,addDataUser} = require('./sql')




exports.admin1Post = async(req,res)=>{
    const lengthObj = Object.keys(req.body)
    const number = req.body[lengthObj[0]]
    const [well_number,customer_name,well_group,progress] = [number,req.body[lengthObj[1]],req.body[lengthObj[2]],req.body[lengthObj[3]]]
    try {    
        const [result]= await pool.pool.execute("insert into admin_data1 (well_number,customer_name,well_group,progress) values (?,?,?,?)",[well_number,customer_name,well_group,progress])

        addDataUser(pool.pool,customer_name,well_number)

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

exports.postDriller = async(req,res) => {
  const obj = Object.keys(req.body)
  const [drill_user,customer_name,meter] = [String(req.body[obj[0]]),String(req.body[obj[1]]),String(req.body[obj[5]])]
  try{
      const [result] = await pool.pool.execute(`select driller_user, customer_name from driller_user where driller_user="${drill_user}" AND customer_name="${customer_name}"`)
  
      
      if(result.length != 0) {
          const newMeter = await getDataMeter(pool.pool,meter,customer_name,drill_user)
          const meterDrill = await updateUser(pool.pool,req,obj,drill_user,customer_name,newMeter)
          res.status(200).send({msg:"sukses",meters:meter})        
      }else{
          res.status(200).send({msg:"not found"})
      }
  }
  catch(err){
      console.error("error",err)
      res.status(500).send("terjadi kesalahan")
  }
}