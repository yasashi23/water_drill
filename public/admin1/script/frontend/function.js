const submitBtn= async() => {
    const url = `${host}/db/admin1Post`
    const data = serializeFormData(submitForm)
    const today = new Date().toISOString().split('T')[0];
    data.started_day = today
    const dataString = JSON.stringify(data)
    try{
      const submitData = await postData(url,dataString)
      const responseData = await submitData.json()
      console.log(responseData)
    }catch(er){
      console.error(er)
    }
  }

  function appendElem(num, name, progress,id){
    const toBeDone = "Por Hacer"
    const progressText = "En Progreso"
    const completedText = "Completado"
    let option
    let lowerCaseName = name.toLowerCase()

    if(progress === "in progress"){
      option = `
      <option data-input="in progress">${progressText}</option>
      <option data-input="to be done">${toBeDone}</option>
      <option data-input="completed">${completedText}</option>
      `

    }else if(progress === "completed"){
      option = `
      <option data-input="completed">${completedText}</option>
      <option data-input="in progress">${progressText}</option>
      <option data-input="to be done">${toBeDone}</option>
      `
    } else{
      option = `
      <option data-input="to be done">${toBeDone}</option>
      <option data-input="completed">${completedText}</option>
      <option data-input="in progress">${progressText}</option>
      `
    }



    const elem = `
      <span onclick="onClick(this)" dataname="${name}" datanum="${num}">${num}</span>
      <span>${name}</span>
      <select 
        id="driller-user-rotary-number-input" 
        data-id="${id}" 
        name="driller-user-rotary-number" 
        onchange="onChange(this)" 
        data="${num}">
          ${option}
      </select>
`

    const newDiv = cE('div');
    newDiv.className = "container__data"
    newDiv.setAttribute("dataname", lowerCaseName);
    newDiv.innerHTML = elem


container.appendChild(newDiv)
  }





  function onClick(e){
    const [dataName,dataNum] = [e.getAttribute("dataname"),e.getAttribute("datanum")]
    const url = `${host}/completion1/?user=${dataName}&num=${dataNum}`
    window.open(url,'_blank')
}

function cE(str){
    return document.createElement(str)
}

async function onChange(a){
  const dataProgress = a.options[a.selectedIndex].getAttribute("data-input")
  const dataId = a.getAttribute("data-id")
  const url = `${host}/db/adminUpdate?id=${dataId}`
  const response = await postData(url,JSON.stringify({data:dataProgress}))
  console.log(response)
  const containerElem = a.parentElement
  if(dataProgress==="completed"){
  const url = `${host}/db/adminUpdateDate?id=${dataId}`
    const today = new Date().toISOString().split('T')[0];
    const resDate = await postData(url,JSON.stringify({data:today}))
    console.log(resDate)
    containerElem.remove()
  }
}

async function searchFinding(e){
    const searchWord = e.value.trim().toLowerCase()
    const getData = container.querySelectorAll('.container__data')
    if(searchWord === ""){
        // processData()
        getData.forEach(item=>{
            item.style.display = "flex"
        })
    }else{
        getData.forEach(item=>{
            const dataName = item.getAttribute("dataname")
            if(searchWord === "" ||dataName.startsWith(searchWord)){
                item.style.display = "flex"
            }else{
                item.style.display = "none"
            }

        })
    }
}