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

    
    
    // Completion
    const meterRes = driller.reduce((n,{du_meters_drilled})=> Number(n)+Number(du_meters_drilled),0)
    container_user.textContent = user
    container_number.textContent = num
    changeContent("started",started_day.split("T")[0])
    changeContent("total-depth",meterRes)
    if(completion_day !== null)changeContent("completion-day",completion_day.split("T")[0])

}

function changeContent(cl,val){
    const hh = document.querySelectorAll(`.container .container__completion tr:nth-child(n+2) td:last-child`)

    hh.forEach(el => {
        if(el.className.includes(cl)){
            document.querySelector(`.container .container__completion tr:nth-child(n+2) .${el.className}`).textContent = val
        }
    })
}