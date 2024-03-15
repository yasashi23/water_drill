const pool = require('../routes/db-config')

exports.deleteInformation = async(req,res)=>{
    const {id} = req.params
      const sql = `DELETE FROM input_earn WHERE id = ${id}`
      pool.pool.query(sql)
      .then(response =>{
            // console.log(respone)
          res.json({msg:"success"})
      })
      .catch(err=>{
          res.json({err})
      })
}