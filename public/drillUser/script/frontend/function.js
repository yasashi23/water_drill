async function onSubmit(){
    const dataForm = serializeFormData(form)
    const url = `${host}/db/postDriller`
    try{

        const {meters}= await postData(url,dataForm)
        const meterRes = meters.reduce((n,{du_meters_drilled})=> Number(n)+Number(du_meters_drilled),0)

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
    // console.log(data)
    customer_name.value = data
}
