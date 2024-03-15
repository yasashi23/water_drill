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
    profit()
    console.log(profit_earnings,profit_total_cost,profit_profit)
}


function spreateData(b){
    const {...data} = b[0]
    return data
}

function elementNumber(a,elem){
    console.log(a,elem)
    if(a === null){
        elem.textContent = 0
        // console.log(a)
    }else{
        elem.textContent = a
    }
}

function totalCost(diesel,engine,grease){
    sumCost(diesel,perliter_diesel,total_liter_diesel,total_cost_diesel)
    sumCost(engine,perliter_engine,total_liter_engine,total_cost_engine)
    sumCost(grease,perliter_grease,total_liter_grease,total_cost_grease)
}


function profit(){
    profit_total_cost.textContent = `${Number(total_cost_diesel.textContent)+Number(total_cost_engine.textContent)+Number(total_cost_grease.textContent)}`
    profit_profit.textContent = `${Number(profit_earnings.textContent)-Number(profit_total_cost.textContent)}`

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

async function downloadCsv(){
    const url = `${host}/db/download`
    const data = {
        Filters:returnText('.container__filters'),
        Driller:returnText('.container__user .container__name'),
        Assistans:returnText('.container__assistans'),
        Charged:"$20",
        "Diesel liters":total_liter_diesel.textContent,
        "Engine Oil":total_liter_engine.textContent,
        "Grease Kg":total_liter_grease.textContent,
        Earnings:profit_earnings.textContent,
        "Total Cost":profit_total_cost.textContent,
        Profit:profit_profit.textContent
    }

    try {
        const res = await downloadCsvMethod(url, data);
        console.log(res);         
        const blob = new Blob([res], { type: 'text/csv' });
        const link = document.createElement('a');
        link.href = window.URL.createObjectURL(blob);
        link.download = `data-${data.Driller}.csv`;
        link.click();
    } catch (err) {
        console.log(err);
    }

}

function returnText(a){
    const data = document.querySelector(a)
    return `${data.textContent}`
}