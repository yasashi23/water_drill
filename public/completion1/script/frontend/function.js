async function getDataCompletion(){
    const url = `${host}/db/completionRead/${user}-${num}`
    try{
        const {admin,driller,cost} = await getData(url)
        changeElement(admin[0],driller,cost[0])
    }catch(err){
        console.error(err)
    }
}

function changeElement(admin,driller,cost){
    const {started_day,completion_day} = admin
    const {diesel_liters,engine_oil,grease_kg} = cost

    container_user.textContent = user
    container_number.textContent = num
    changeContent("started",started_day.split("T")[0])

    if(driller.length === 0){
    if(completion_day !== null)changeContent("completion-day",completion_day.split("T")[0])
    }else{
    const {t_helpers,t_drillers} = driller[driller.length-1]
    if(completion_day !== null)changeContent("completion-day",completion_day.split("T")[0])

    const meterRes = driller.reduce((n,{du_drills_day})=> Number(n)+Number(du_drills_day),0)
    const staticLevelMtr = driller.reduce((n,{t_static_level})=> Number(n)+Number(t_static_level),0)
    const flowRate = driller.reduce((n,{t_flow})=> Number(n)+Number(t_flow),0)
    const dynamicMtr = driller.reduce((n,{t_dynamic})=> Number(n)+Number(t_dynamic),0)
    const filter = driller.reduce((n,{t_filtres})=> Number(n)+Number(t_filtres),0)
        // console.log(filter)
   
    // Completion
    changeContent("total-depth",meterRes)
    changeContent("driller",t_drillers)
    changeContent("assistant",t_helpers)



    changeContent("static-level-meters",staticLevelMtr || 0)
    changeContent("flow-rate",flowRate || 0)
    // changeContent("total-depth",meterRes)
    changeContent("dynamic-meters",dynamicMtr || 0)
    changeContent("filters",filter || 0)


    // COSTO
    const dieselLitersTotal = driller.reduce((n,{dc_gasoil_lts})=> Number(n)+Number(dc_gasoil_lts),0)
    const engineOilTotal = driller.reduce((n,{dc_engine_oils})=> Number(n)+Number(dc_engine_oils),0)
    const greaseKgTotal = driller.reduce((n,{dc_grease_kgs})=> Number(n)+Number(dc_grease_kgs),0)

    const totalDieselLiters = Number(diesel_liters*dieselLitersTotal)
    const totalengineOils = Number(engine_oil*engineOilTotal)
    const totalGreaseKg = Number(grease_kg*greaseKgTotal)

    perliter_diesel.textContent = diesel_liters
    perliter_engine.textContent = engine_oil
    perliter_grease.textContent = grease_kg

    total_liter_diesel.textContent = dieselLitersTotal
    total_liter_engine.textContent = engineOilTotal
    total_liter_grease.textContent = greaseKgTotal

    total_cost_diesel.textContent = totalDieselLiters
    total_cost_engine.textContent = totalengineOils
    total_cost_grease.textContent = totalGreaseKg

    // Beneficio
    const earningsTotal = 50000
    const costTotal = (totalDieselLiters+totalGreaseKg+totalengineOils)
    const profitTotal = (earningsTotal-costTotal)


    profit_earnings.textContent = earningsTotal
    profit_total_cost.textContent = costTotal

    profit_profit.textContent = profitTotal
    }

}


function chargedClick(){
    const numberCharged = Number(serializeFormData(formCharged).charged)
    profit_price.textContent = numberCharged
    const profitTotal = Number(profit_earnings.textContent-profit_total_cost.textContent)+numberCharged
    profit_profit.textContent = profitTotal
}


function changeContent(cl,val){
    const hh = document.querySelectorAll(`.container .container__completion tr:nth-child(n+2) td:last-child`)

    hh.forEach(el => {
        if(el.className.includes(cl)){
            document.querySelector(`.container .container__completion tr:nth-child(n+2) .${el.className}`).textContent = val
        }
    })
}

function reduceNumber(a){
    const result = driller.reduce((n,{a})=> Number(n)+Number(a),0)
    return result
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

function serializeFormData(form) {
    var formData = new FormData(form);
    var serializedData = {};
    for (var [name, value] of formData) {
      if (serializedData[name]) {
        if (!Array.isArray(serializedData[name])) {
          serializedData[name] = [serializedData[name]];
        }
        serializedData[name].push(value);
      } else {
        serializedData[name] = value;
      }
    }
    return serializedData;
  }