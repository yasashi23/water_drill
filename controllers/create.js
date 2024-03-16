const pool = require('../routes/db-config')
const {updateUser,getDataMeter,addDataUser} = require('./sql')




// exports.admin1Post = async(req,res)=>{
//     const lengthObj = Object.keys(req.body)
//     const number = req.body[lengthObj[0]]
//     const [well_number,customer_name,well_group,progress] = [number,req.body[lengthObj[1]],req.body[lengthObj[2]],req.body[lengthObj[3]]]
//     try {    
//         const [result]= await pool.pool.execute("insert into admin_data1 (well_number,customer_name,well_group,progress) values (?,?,?,?)",[well_number,customer_name,well_group,progress])

//         addDataUser(pool.pool,customer_name,well_number)

//       } catch (error) {
//         console.error('Error:', error);
//         res.status(500).send('Terjadi kesalahan server.');
//       }
// }

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

// exports.postDriller = async(req,res) => {
//   const obj = Object.keys(req.body)
//   const [drill_user,customer_name,meter] = [String(req.body[obj[0]]),String(req.body[obj[1]]),String(req.body[obj[5]])]
//   try{
//       const [result] = await pool.pool.execute(`select driller_user, customer_name from driller_user where driller_user="${drill_user}" AND customer_name="${customer_name}"`)
  
      
//       if(result.length != 0) {
//           const newMeter = await getDataMeter(pool.pool,meter,customer_name,drill_user)
//           const meterDrill = await updateUser(pool.pool,req,obj,drill_user,customer_name,newMeter)
//           res.status(200).send({msg:"sukses",meters:meter})        
//       }else{
//           res.status(200).send({msg:"not found"})
//       }
//   }
//   catch(err){
//       console.error("error",err)
//       res.status(500).send("terjadi kesalahan")
//   }
// }

exports.postDriller = async(req,res) => {
  const data = req.body
  const{du_driller_user,du_customer_name} = data
  // console.log({dataDrill:data})

  try{  
      const insert = await pool.pool.query("INSERT INTO  driller_data SET ?",data);
      const insert2 = await pool.pool.query(`select du_meters_drilled from driller_data where du_driller_user="${du_driller_user}" and du_customer_name="${du_customer_name}"`);
      res.status(200).send({meters:insert2[0]})
  }
  catch(err){
      console.error("error",err)
      res.status(500).send("terjadi kesalahan")
  }
}



function changeKey(obj,num,name){
  delete obj.well_number
  delete obj.progress
  delete obj.customer_name
  const newData = {...obj,du_driller_user:num,du_customer_name:name}
  return newData
}