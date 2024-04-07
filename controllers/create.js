const pool = require('../routes/db-config')

exports.admin1Post = async(req,res)=>{
    const data = req.body
    try {    
        const insert = await pool.pool.query("INSERT INTO admin_data1 SET ?", data);

        const drillerData = changeKey(data,data.well_number,data.customer_name)
        console.log(drillerData)
        // const insert2 = await pool.pool.query("INSERT INTO  driller_data SET ?", drillerData);
        res.json({msg:"success"})

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
  const data = req.body
  const{du_driller_user,du_customer_name} = data
  try{  
      const insert = await pool.pool.query("INSERT INTO  driller_data SET ?",data);
      const insert2 = await pool.pool.query(`select du_drills_day,t_drillers,t_helpers from driller_data where du_driller_user="${du_driller_user}" and du_customer_name="${du_customer_name}"`);
      console.log(insert2[0])
      res.status(200).send({data:insert2[0],msg:"success"})
  }
  catch(err){
      console.error("error",err)
      res.status(500).send({msg:"date form required"})
  }
}



function changeKey(obj,num,name){
  delete obj.well_number
  delete obj.progress
  delete obj.customer_name
  const newData = {...obj,du_driller_user:num,du_customer_name:name}
  return newData
}