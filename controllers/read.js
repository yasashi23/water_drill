const pool = require('../routes/db-config')
const {getAllData} = require('./sql')


exports.dataAdmin1 = async(req,res) =>{
  const {sort} = req.query
    try{
        if(sort === "desc"){
          const [result] = await pool.pool.execute("select * from admin_data1 order by id desc")
          res.status(200).send(result)
        }else{
          const [result] = await pool.pool.execute("select * from admin_data1")
          res.status(200).send(result)
        }

    }catch(err){
        console.error("error:",err) 
        res.status(500).send("error")
    }
}


exports.completionRead = async(req,res) => {
    const [user,num] = [req.params.user,req.params.num]
    const getDrillerData = await pool.pool.query(`select * from driller_data where du_driller_user="${num}" and du_customer_name="${user}"`);

    const getAdminData = await pool.pool.query(`select * from admin_data1 where well_number="${num}" and customer_name="${user}"`);

    const getCostData = await pool.pool.query(`select * from input_cost`);

    // console.log(user,num)
    res.send({driller:getDrillerData[0],admin:getAdminData[0],cost:getCostData[0]})
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

exports.inputCostRead=async(req,res)=>{
  const sql = "select * from input_cost"
  try{
    const result = await pool.pool.query(sql)
    res.json(result[0][0])
  }catch(er){
    res.json(er)
  }
}

exports.searchDataCompleted = async(req,res) =>{
  const {name} = req.params
  const sql = `select * from admin_data1 where customer_name like "%${name}%"`
    try{
          const [result] = await pool.pool.execute(sql)
          res.status(200).send(result)


    }catch(err){
        console.error("error:",err) 
        res.status(500).send("error")
    }
}