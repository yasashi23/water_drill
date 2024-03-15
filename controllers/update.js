const pool = require('../routes/db-config')

exports.editInformation = async(req,res)=>{
    const {id} = req.params
    const data = req.body
    const set = Object.keys(data)
    .map(key => `${key} = '${data[key]}'`)
    .join(' , ');
  
      const sql = `update input_earn set ${set} where id=${id}`
      pool.pool.query(sql)
      .then(response =>{
            // console.log(respone)
          res.json({msg:"success"})
      })
      .catch(err=>{
          res.json({err})
      })
}

exports.adminUpdate = async(req,res)=>{
    const {id} = req.query
    const {data} = req.body
    const sql = `update admin_data1 set progress = "${data}" where id=${id}`;
    pool.pool.query(sql)
    .then(resp =>{

        res.json({id,data})
    }).catch(err=>{
        res.json({err})
    })
}

exports.adminUpdateDate = async(req,res)=>{
    const {id} = req.query
    const {data} = req.body
    const sql = `update admin_data1 set completion_day = "${data}" where id=${id}`;
    pool.pool.query(sql)
    .then(resp =>{

        res.json({id,data})
    }).catch(err=>{
        res.json({err})
    })
}

exports.inputCost = async(req,res)=>{
    const data = req.body
    const set = Object.keys(data)
    .map(key => `${key} = '${data[key]}'`)
    .join(' , ');
  
      const sql = `update input_cost set ${set} where id=1`
      pool.pool.query(sql)
      .then(response =>{
            // console.log(respone)
          res.json({msg:"success"})
      })
      .catch(err=>{
          res.json({err})
      })

}