const pool = require('../routes/db-config')
const {getAllData} = require('./sql')


exports.dataAdmin1 = async(req,res) =>{
    try{
        const [result] = await pool.pool.execute("select * from admin_data1")
        res.status(200).send(result)

    }catch(err){
        console.error("error:",err) 
        res.status(500).send("error")
    }
}


exports.completionRead = async(req,res) => {
    const [user,num] = [req.params.user,req.params.num]
    const data = await getAllData(pool.pool,num,user)
    console.log(user,num)
    res.send(data)
}

exports.editInformation = async(req,res)=>{
    const data = req.body
    const where = Object.keys(data)
  .map(key => `${key} = '${data[key]}'`)
  .join(' AND ');
    const sql = `select * from input_earn where ${where}`
    pool.pool.query(sql)
    .then(result => {
        console.log(result[0])
        res.json(result[0])
    })
    .catch(error => {
        console.error(error)
        res.json({error})
    })
}

exports.getIdInput = async(req,res) => {
    const data = req.body
    try {
      const where = Object.keys(data)
        .map(key => `${key} = '${data[key]}'`)
        .join(' AND ');
      const sql = `SELECT * FROM input_earn WHERE ${where}`;
      const result = await pool.pool.query(sql);
      const newData = result[0][0];
      res.json(newData)
      console.log(newData);
    } catch (error) {
      console.error(error);
      return "error";
    }
  }

exports.getInformationList = async(req,res) =>{
    const sql = "select * from input_earn"
     try{
        const result = await pool.pool.query(sql)
        console.log(result[0])
        res.json(result[0])
     }catch(err){
        console.error(err)
     }
}

exports.getDataDriller = async(req,res) => {
  const sql = "select * from admin_data1"
  try{
    const result = await pool.pool.query(sql)
    res.json(result[0])
  }catch(er){
    res.json(er)
  }
}