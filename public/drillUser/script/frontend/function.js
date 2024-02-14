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