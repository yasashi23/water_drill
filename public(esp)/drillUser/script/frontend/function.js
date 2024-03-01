async function onSubmit(){
    const dataForm = serializeFormData(form)
    const url = `${host}/db/postDriller`
    try{

        const {msg,meters} = await postData(url,dataForm)
        if(msg === "not found"){
            alert("Driller User or Customer name not found")
        }else{
            total_depth.textContent = meters
        }

    }catch(err){
        console.error(err)
    }

}

async function getDataDriller(){
    const url = `${host}/db/getDataDriller`
    try{
        const data = await getData(url)
        // console.log(data)
        loopData(data)
    }catch(er){
        console.error(er)
    }
}

function loopData(dt){
    dt.forEach(data => {
        const {well_number,customer_name} = data
        console.log(well_number,customer_name)
        const newOption = cE("option")
        newOption.textContent = well_number
        newOption.setAttribute("data-customer",customer_name)
        driller_user.appendChild(newOption)
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
