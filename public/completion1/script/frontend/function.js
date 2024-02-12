async function getDataCompletion(){
    const url = `${host}/db/completionRead/${user}-${num}`
    try{
        const data = await getData(url)
        changeElement(data)
    }catch(err){
        console.error(err)
    }
}

function changeElement(data){
    container_user.textContent = user
    container_number.textContent = num
    
    const{bits,casing,daily_consumption,drill_bits,driller_user,hammers,inches,inventory,reamer,tricone_bits,various} = data




    // meter driller
    elementNumber(driller_user[0].meters_drilled,total_depth)

    // Cost Table

    const {diesel_liters,engine_oil,grease_kg} = spreateData(daily_consumption) //for daily Consumption
    totalCost(nullToNumber(diesel_liters),nullToNumber(engine_oil),nullToNumber(grease_kg))
}


function spreateData(b){
    const {...data} = b[0]
    return data
}

function elementNumber(a,elem){
    if(a === null){
        elem.textContent = 0
        // console.log(a)
    }else{
        elem.textContent = 0
    }
}

function totalCost(diesel,engine,grease){
    sumCost(diesel,perliter_diesel,total_liter_diesel,total_cost_diesel)
    sumCost(engine,perliter_engine,total_liter_engine,total_cost_engine)
    sumCost(grease,perliter_grease,total_liter_grease,total_cost_grease)

}

function sumCost(liter,perliter,total_liter,total_cost){
    const total = Number(liter)*Number(perliter.textContent)
    total_liter.textContent = liter
    total_cost.textContent = total
}

function nullToNumber(a){
    if(a === null){
        return 0
    }else{
        return Number(a)
    }
}