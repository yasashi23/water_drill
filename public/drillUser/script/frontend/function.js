async function onSubmit(){
    const dataForm = serializeFormData(form)
    const url = `${host}/db/postDriller`

    try{

        const {data,msg}= await postData(url,dataForm)
        if(msg !== "success"){
            alert(msg)
        }else{
            const meterRes = (data.reduce((n,{du_meters_drilled})=> Number(n)+Number(du_meters_drilled),0))
            
            allInputs.forEach(input => {
            input.value = "";
            });
            alert(msg)
        }
    }catch(err){
        console.error(err)
    }

}

async function getDataDriller(){
    const url = `${host}/db/getDataDriller`
    try{
        const data = await getData(url)
            loopData(data)
    }catch(er){
        console.error(er)
    }
}

function loopData(dt){
    dt.forEach(data => {
        const {well_number,customer_name,progress} = data
        if(progress === "in progress"){
            const newOption = cE("option")
            newOption.textContent = well_number
            newOption.setAttribute("data-customer",customer_name)
            driller_user.appendChild(newOption)
        }
    });
    
}

function loopNameDrillers(dt){
    dt.forEach(data => {
        const {assistant,driller} = data
            const newOption = cE("option")
            newOption.textContent = driller
            newOption.setAttribute("data-assistant",assistant)
            drillers_name.appendChild(newOption)
    });
    
}

function cE(str){
    return document.createElement(str)
}


function getMtsDrill(a){
    let totalDepth = `${Number(totalDepthFromDb) + Number(a.value)}`
    total_depth_value.value = totalDepth
}


async function getDataCompletion(user,num){
    const url = `${host}/db/completionRead/${user}-${num}`
    try{
        const {admin,driller,cost} = await getData(url)
        const meterRes = driller.reduce((n,{du_drills_day})=> Number(n)+Number(du_drills_day),0)
        total_depth_value.value = meterRes
        totalDepthFromDb = meterRes
        const {t_drillers,t_helpers} = driller[driller.length-1] || "nothing"
        var selectElement = document.getElementById('t_drillers');

        if(!t_drillers || !t_helpers){
            assistant_name.value = ""
            selectElement.value = ""
        }else{
            assistant_name.value = t_helpers
            selectElement.value = t_drillers            
        }
    }catch(err){
        console.error(err)
    }
}


async function getDataDrillersAssistants(){
    const url = `${host}/db/earnInput`
    try{
        const data = await getData(url)
        loopNameDrillers(data)
        console.log(data)
        
    }catch(err){
        console.error(err)
    }
}



function drillerNumber(a){
    const data = a.options[a.selectedIndex].getAttribute("data-customer")
    const num = a.options[a.selectedIndex].textContent
    customer_name.value = data
    getDataCompletion(data,num)
}

function selectDrillers(a){
    const data = a.options[a.selectedIndex].getAttribute("data-assistant")
    assistant_name.value = data
    console.log(data,a)
    // bagaimana caranya agar jika ada tampil yang sebelumnya dan jika belum ada disuruh pilih dulu ok!!!
    

}
