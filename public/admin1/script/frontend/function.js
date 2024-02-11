

const submitBtn= async() => {
    const url = `${host}/db/admin1Post`
    const data = JSON.stringify(serializeFormData(submitForm))
    console.log(data)

    try{
      const submitData = await postData(url,data)
      const responseData = await submitData.json()
      console.log(responseData)
    }catch(er){
      console.error(er)
    }
  }

  function appendElem(span1,span2,opt){
    // create Element
    const newDiv = cE("div")
    const newSpan1 = cE("span")
    const newSpan2 = cE("span")
    const select = cE("select")
    const option1 = cE("option")
    const option2 = cE("option")
    newDiv.classList.add("container__data")
    newSpan1.textContent = span1;//this
    newSpan2.textContent = span2;//this
    select.setAttribute("id","driller-user-rotary-number-input")
    select.setAttribute("name","driller-user-rotary-number")
    select.setAttribute("onchange","onSubmit(this)")
    newSpan1.setAttribute("onclick","onClick(this)")
    newSpan1.setAttribute("dataName",span2)
    newSpan1.setAttribute("dataNum",span1)
    select.setAttribute("data",span1)

    if(opt == "in progress"){
        option1.textContent = "In Progress"; 
        option2.textContent = "Completed"; 

    }else{
        option1.textContent = "Completed"; 
        option2.textContent = "In Progress"; 
    }
    select.appendChild(option1);


    select.appendChild(option2);
    newDiv.appendChild(newSpan1);
    newDiv.appendChild(newSpan2);
    newDiv.appendChild(select);
    container.appendChild(newDiv)
  }
  function onClick(e){
    const [dataName,dataNum] = [e.getAttribute("dataName"),e.getAttribute("dataNum")]
    const url = `${host}/completion1/${dataName}-${dataNum}`
    // const url = `${host}/completion1`


    window.open(url,'_blank')


}

function cE(str){
    return document.createElement(str)
}

