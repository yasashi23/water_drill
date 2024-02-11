const pool = require('../routes/db-config')

exports.editInformation = async(req,res)=>{
    const {id} = req.params
    const data = req.body
    const set = Object.keys(data)
    .map(key => `${key} = '${data[key]}'`)
    .join(' , ');
  
      const sql = `update input_earn set ${set} where id=${id}`
      pool.pool.query(sql)
      .then(res =>{
          res.json({msg:"success"})
      })
      .catch(err=>{
          res.json({err})
      })
}

const update = async(data,id)=>{
    const set = Object.keys(data)
  .map(key => `${key} = '${data[key]}'`)
  .join(' AND ');

    const sql = `update input_earn set ${set} where "${id}"`
    pool.pool.query(sql)
    .then(res =>{
        res.json({msg:"success"})
    })
    .catch(err=>{
        res.json({err})
    })
}