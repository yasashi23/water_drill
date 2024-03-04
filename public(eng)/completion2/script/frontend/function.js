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
    elementNumber(driller_user[0].meters_drilled,total_depth)

}

function elementNumber(a,elem){
    if(a === null){
        elem.textContent = 0
        // console.log(a)
    }else{
        elem.textContent = 0
    }
}
