async function getDataCompletion(){
    const url = `${host}/db/completionRead/${user}-${num}`
    try{
        const {admin,driller,cost} = await getData(url)
        changeElement(admin[0],driller,cost[0])
    }catch(err){
        console.error(err)
    }
}

// function changeElement(admin,driller,cost){
//     const {started_day,completion_day} = admin
//     const {du_assistant,du_driller} = driller[driller.length-1]
    
    
//     // Completion
//     const meterRes = driller.reduce((n,{du_meters_drilled})=> Number(n)+Number(du_meters_drilled),0)
//     container_user.textContent = user
//     container_number.textContent = num
//     changeContent("started",started_day.split("T")[0])
//     changeContent("total-depth",meterRes)
//     changeContent("driller",du_driller)
//     changeContent("assistant",du_assistant)
//     if(completion_day !== null)changeContent("completion-day",completion_day.split("T")[0])
//     changeContent("static-level-meters",meterRes)
//     changeContent("flow-rate",meterRes)
//     changeContent("total-depth",meterRes)
//     changeContent("dynamic-meters",meterRes)
//     changeContent("filters",meterRes)

// }


function changeElement(admin,driller,cost){
    const {started_day,completion_day} = admin
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

    const flowRate = driller.reduce((n,{dc_engine_hours})=> Number(n)+Number(dc_engine_hours),0) + driller.reduce((n,{dc_gasoil_lts})=> Number(n)+Number(dc_gasoil_lts),0)

    const dynamicMtr = driller.reduce((n,{t_dynamic})=> Number(n)+Number(t_dynamic),0)

    const filter = driller.reduce((n,{t_filtres})=> Number(n)+Number(t_filtres),0)
        // console.log(filter)
   
    // Completion
    changeContent("total-depth",meterRes)
    changeContent("driller",t_drillers)
    changeContent("assistant",t_helpers)
    changeContent("static-level-meters",staticLevelMtr || 0)
    changeContent("flow-rate",flowRate || 0)
    changeContent("dynamic-meters",dynamicMtr || 0)
    changeContent("filters",filter || 0)
    }

}




function changeContent(cl,val){
    const hh = document.querySelectorAll(`.container .container__completion tr:nth-child(n+2) td:last-child`)

    hh.forEach(el => {
        if(el.className.includes(cl)){
            document.querySelector(`.container .container__completion tr:nth-child(n+2) .${el.className}`).textContent = val
        }
    })
}