const axios = require('axios');

const sql2 = async(a,b,c)=>{
    const [result1] = await a.execute("insert into bits (quantity ,measurement) values (?,?)",[b.body[c[13]],b.body[c[14]]])
    const [result2] = await a.execute("insert into casing (casing) values (?)",[b.body[c[15]]])
    const [result3] = await a.execute("insert into daily_consumption (diesel_liters, engine_oil ,grease_kg,engine_hours ,bentonite_kg,cmc_kg,hammer_oil) values (?,?,?,?,?,?,?)",[b.body[c[17]],b.body[c[18]],b.body[c[19]],b.body[c[20]],b.body[c[21]],b.body[c[22]],b.body[c[23]]])
    const [result4] = await a.execute("insert into driller_user (driller_user,customer_name ,rotary_num,address,date,meters_drilled,terain_description,water_tables) values (?,?,?,?,?,?,?,?)",[b.body[c[0]],b.body[c[1]],b.body[c[2]],b.body[c[3]],b.body[c[4]],b.body[c[5]],b.body[c[6]],b.body[c[7]]])
    const [result5] = await a.execute("insert into drill_bits (type,usage_hours) values (?,?)",[b.body[c[8]],b.body[c[9]]])
    const [result6] = await a.execute("insert into hammers (type,usage_hours) values (?,?)",[b.body[c[24]],b.body[c[25]]])
    const [result7] = await a.execute("insert into inches (inches) values (?)",[b.body[c[34]]])
    const [result8] = await a.execute("insert into inventory (diesel_liters,grease_kg,bentonite_kg,engine_oil,hammer_oil,hydraulic_oil) values (?,?,?,?,?,?)",[b.body[c[26]],b.body[c[27]],b.body[c[28]],b.body[c[29]],b.body[c[30]],b.body[c[31]]])
    const [result9] = await a.execute("insert into reamer (quantity ,measurement) values (?,?)",[b.body[c[32]],b.body[c[33]]])
    const [result10] = await a.execute("insert into tricone_bits (quantity,measurement,type) values (?,?,?)",[b.body[c[10]],b.body[c[11]],b.body[c[12]]])
    const [result11] = await a.execute("insert into various (various) values (?)",[b.body[c[16]]])
}

const add_data_user = async(a,b,c)=>{
    const [result1] = await a.execute("insert into bits(customer_name, driller_user)values (?,?)",[b,c]);
    const [result2] = await a.execute("insert into casing(customer_name, driller_user)values (?,?)",[b,c]);
    const [result3] = await a.execute("insert into daily_consumption(customer_name, driller_user)values (?,?)",[b,c]);
    const [result4] = await a.execute("insert into driller_user(customer_name, driller_user)values (?,?)",[b,c]);
    const [result5] = await a.execute("insert into drill_bits(customer_name, driller_user)values (?,?)",[b,c]);
    const [result6] = await a.execute("insert into hammers(customer_name, driller_user)values (?,?)",[b,c]);
    const [result7] = await a.execute("insert into inches(customer_name, driller_user)values (?,?)",[b,c]);
    const [result8] = await a.execute("insert into inventory(customer_name, driller_user)values (?,?)",[b,c]);
    const [result9] = await a.execute("insert into reamer(customer_name, driller_user)values (?,?)",[b,c]);
    const [result10] = await a.execute("insert into tricone_bits(customer_name, driller_user)values (?,?)",[b,c]);
    const [result11] = await a.execute("insert into various(customer_name, driller_user)values (?,?)",[b,c]);
}

const update_data_user = async(a,b,c,d,e,f)=>{
    const [result1] = await a.execute(`update bits set quantity  = "${b.body[c[13]]}",measurement = "${b.body[c[14]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result2] = await a.execute(`update casing set casing = "${b.body[c[15]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result3] = await a.execute(`update daily_consumption set diesel_liters = "${b.body[c[17]]}",engine_oil  = "${b.body[c[18]]}",grease_kg  = "${b.body[c[19]]}",engine_hours  = "${b.body[c[20]]}",bentonite_kg = "${b.body[c[21]]}",cmc_kg = "${b.body[c[22]]}",hammer_oil = "${b.body[c[23]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result4] = await a.execute(`update driller_user set rotary_num = "${b.body[c[2]]}",address = "${b.body[c[3]]}",date = "${b.body[c[4]]}",meters_drilled = "${f}",terain_description = "${b.body[c[6]]}",water_tables = "${b.body[c[7]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result5] = await a.execute(`update drill_bits set type = "${b.body[c[8]]}",usage_hours = "${b.body[c[9]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result6] = await a.execute(`update hammers set type = "${b.body[c[24]]}",usage_hours = "${b.body[c[25]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result7] = await a.execute(`update inches set inches = "${b.body[c[34]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result8] = await a.execute(`update inventory set diesel_liters = "${b.body[c[26]]}",grease_kg = "${b.body[c[27]]}",bentonite_kg = "${b.body[c[28]]}",engine_oil = "${b.body[c[29]]}",hammer_oil = "${b.body[c[30]]}",hydraulic_oil = "${b.body[c[31]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result9] = await a.execute(`update reamer set quantity  = "${b.body[c[32]]}",measurement = "${b.body[c[33]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result10] = await a.execute(`update tricone_bits set quantity = "${b.body[c[10]]}",measurement = "${b.body[c[11]]}",type = "${b.body[c[12]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result11] = await a.execute(`update various set various = "${b.body[c[16]]}" where driller_user="${d}" AND customer_name="${e}"`)
    const [result12] = await a.execute(`select meters_drilled from driller_user where driller_user="${d}" AND customer_name="${e}"`)

    return result12[0]
}

const getAllData = async(a,b,c)=>{
    const [bits] = await a.execute(`select * from bits where driller_user="${b}" AND customer_name="${c}"`)
    const [casing] = await a.execute(`select * from casing where driller_user="${b}" AND customer_name="${c}"`)
    const [daily_consumption] = await a.execute(`select * from daily_consumption where driller_user="${b}" AND customer_name="${c}"`)
    const [driller_user] = await a.execute(`select * from driller_user where driller_user="${b}" AND customer_name="${c}"`)
    const [drill_bits] = await a.execute(`select * from drill_bits where driller_user="${b}" AND customer_name="${c}"`)
    const [hammers] = await a.execute(`select * from hammers where driller_user="${b}" AND customer_name="${c}"`)
    const [inches] = await a.execute(`select * from inches where driller_user="${b}" AND customer_name="${c}"`)
    const [inventory] = await a.execute(`select * from inventory where driller_user="${b}" AND customer_name="${c}"`)
    const [reamer] = await a.execute(`select * from reamer where driller_user="${b}" AND customer_name="${c}"`)
    const [tricone_bits] = await a.execute(`select * from tricone_bits where driller_user="${b}" AND customer_name="${c}"`)
    const [various] = await a.execute(`select * from various where driller_user="${b}" AND customer_name="${c}"`)

    return{bits,casing,daily_consumption,driller_user,drill_bits,hammers,inches,inventory,hammers,tricone_bits,reamer,various}
}

const getDataMeter = async(a,meter,name,num) => {
    const [oldMeter] = await a.execute(`select meters_drilled from driller_user where driller_user="${num}" AND customer_name="${name}"`)

    const [numNew,numDb] = [Number(meter),Number(oldMeter[0].meters_drilled)]
    
    const newMeter =  String(numNew + numDb)
    return newMeter
}


module.exports={sql2,add_data_user,update_data_user,getAllData,getDataMeter}