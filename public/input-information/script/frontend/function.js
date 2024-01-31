// function Listener
function clickToClose(a){
    addOffClass(a)
}
function clickToEdit(i){
    addOffClass("")
    listData = i.parentNode.parentNode.querySelectorAll("td")
    console.log(listData)
  }
  
function clickToUpdate(a){
    addOffClass("off")
    const i = numberOfDataList
    const dataform = serializeFormData(updateForm)
    listData[0].innerHTML = dataform.driller
    listData[1].innerHTML = dataform.assistants
    listData[2].innerHTML = '$'+dataform.earn
    console.log(driller[i],assistans[i],earn[i])
    console.log(dataform)
  }
  
// functions
function addOffClass(a){
    let newClassModal = modalEdit.getAttribute("class")+` ${a}`
    let newClassProcess = processScreen.getAttribute("class")+` ${a}`
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
    if(a=="input"){
      title.textContent = "Input"
      navbar_information.setAttribute("class","container__information-navbar off")
      navbar_input.setAttribute("class","container__input-navbar")

      body_information.setAttribute("class","container__body-information off")
      body_input.setAttribute("class","container__body-input")


    }else{
      title.textContent = "Information"
      navbar_information.setAttribute("class","container__information-navbar")
      navbar_input.setAttribute("class","container__input-navbar off")

      body_information.setAttribute("class","container__body-information")
      body_input.setAttribute("class","container__body-input off")
    }
  }
  function addNewDataList(){
    const dataFormInput = serializeFormData(input_form)
    const element = `            
    <tr>
    <td>${dataFormInput.driller}</td>
    <td>${dataFormInput.assistants}</td>
    <td>$${dataFormInput.earn}</td>
    <td><u class="container__edit-data" onclick="clickToEdit(this)">edit</u></td>
  </tr>`
    data_list.innerHTML += element
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

