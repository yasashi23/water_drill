async function onSubmit(){
    const dataForm = serializeFormData(form)
    const url = `${host}/db/postDriller`
    try{

        const {data,msg}= await postData(url,dataForm)
        if(msg !== "success"){
            alert(msg)
        }else{
            const meterRes = (data.reduce((n,{du_meters_drilled})=> Number(n)+Number(du_meters_drilled),0))
            console.log(data,meterRes)
            
            //just example
            completion_td.forEach((el,ind) =>{
                const {du_driller,du_assistant} = data[data.length-1]
                console.log(el,ind,du_driller,du_assistant)
                if(ind <= 4){
                    el.textContent = meterRes
                }else if(ind === 5){
                    el.textContent = du_driller
                }else{
                    el.textContent = du_assistant
                }
            })
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

function cE(str){
    return document.createElement(str)
}

function drillerNumber(a){
    const data = a.options[a.selectedIndex].getAttribute("data-customer")
    customer_name.value = data
}
