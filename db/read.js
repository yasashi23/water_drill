const pool = require('./db')
const functionDB = require('./function/function')
const [updateUser,getAllData,getDataMeter] = [functionDB.update_data_user,functionDB.getAllData,functionDB.getDataMeter]

const dataAdmin1 = async(req,res) =>{
    try{
        const [result] = await pool.pool.execute("select * from admin_data1")
        res.status(200).send(result)

    }catch(err){
        console.error("error:",err) 
        res.status(500).send("terjadi kesalahan")
    }
}

const checkData = async(req,res) => {
    const obj = Object.keys(req.body)
    const [drill_user,customer_name,meter] = [String(req.body[obj[0]]),String(req.body[obj[1]]),String(req.body[obj[5]])]
    try{
        const [result] = await pool.pool.execute(`select driller_user, customer_name from driller_user where driller_user="${drill_user}" AND customer_name="${customer_name}"`)
    
        
        if(result.length != 0) {
            const newMeter = await getDataMeter(pool.pool,meter,customer_name,drill_user)
            const meterDrill = await updateUser(pool.pool,req,obj,drill_user,customer_name,newMeter)
            res.status(200).send({pesan:"sukses",meters:meter})        
        }else{
            res.status(200).send({pesan:"not found"})
        }
    }
    catch(err){
        console.error("error",err)
        res.status(500).send("terjadi kesalahan")
    }
}

const completionRead = async(req,res) => {
    const [user,num] = [req.params.user,req.params.num]
    const data = await getAllData(pool.pool,num,user)
    res.send(data)
}

module.exports = {dataAdmin1,checkData,completionRead}