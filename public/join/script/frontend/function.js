// function Listener
function clickToClose(a){
    addOffClass(a)
}
function clickToEdit(i){
    addOffClass("")
    numberOfDataList = i
  }
  
function clickToUpdate(a){
    addOffClass("off")
    const i = numberOfDataList
    const dataform = serializeFormData(updateForm)
    driller[i].innerHTML = dataform.driller
    assistans[i].innerHTML = dataform.assistants
    earn[i].innerHTML = '$'+dataform.earn
    console.log(driller[i],assistans[i],earn[i])
    console.log(dataform)
  }
  
// functions
function loopEditListData(item,index){
    item.addEventListener("click",()=>clickToEdit(index))
}
function addOffClass(a){
    let newClassModal = modalEdit.getAttribute("class")+` ${a}`
    let newClassProcess = 
    processScreen.getAttribute("class")+` ${a}`
    if(a==="off"){
        modalEdit.setAttribute("class",newClassModal)
        processScreen.setAttribute("class",newClassProcess) 
    }else{
        newClassModal = newClassModal.split(" ")[0]
        newClassProcess = newClassProcess.split(" ")[0]
        modalEdit.setAttribute("class",newClassModal)
        processScreen.setAttribute("class",newClassProcess)
    }
}
  
  function navbarsClick(a){
    const atInput = body_input.getAttribute("class")
    const atInformation = body_information.getAttribute("class")
    console.log(serializeFormData(input_form))
    if(a=="input"){
      navbar_information.setAttribute("class","container__information-navbar off")
      navbar_input.setAttribute("class","container__input-navbar")

      body_information.setAttribute("class","container__body-information off")
      body_input.setAttribute("class","container__body-input")


    }else{
      navbar_information.setAttribute("class","container__information-navbar")
      navbar_input.setAttribute("class","container__input-navbar off")

      body_information.setAttribute("class","container__body-information")
      body_input.setAttribute("class","container__body-input off")
    }
  }


function serializeFormData(form) {
    var formData = new FormData(form);
    var serializedData = {};
    for (var [name, value] of formData) {
      if (serializedData[name]) {
        if (!Array.isArray(serializedData[name])) {
          serializedData[name] = [serializedData[name]];
        }
        serializedData[name].push(value);
      } else {
        serializedData[name] = value;
      }
    }
    return serializedData;
  }
