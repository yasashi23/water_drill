// function Listener
function clickToClose(a){
    addOffClass(a)
}
function clickToEdit(i){
    addOffClass("")
    listData = i.parentNode.parentNode.querySelectorAll("td")
  }
  
function clickToUpdate(a){
    addOffClass("off")
    const i = numberOfDataList
    const dataform = serializeFormData(updateForm)
    listData[0].querySelector("span:first-child").innerHTML = dataform.driller
    listData[0].querySelector("span:last-child").innerHTML = dataform.assistants
    listData[1].querySelector("span:first-child").innerHTML = '$'+dataform.earn_driller
    listData[1].querySelector("span:last-child").innerHTML = '$'+dataform.earn_assistant
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
    console.log(dataFormInput)
    const element = `            
    <tr>
      <td>
        <span>${dataFormInput.driller}</span><br>
        <span>${dataFormInput.assistants}</span>
      </td>
      <td>
        <span>$${dataFormInput.earn_driller}</span><br>
        <span>$${dataFormInput.earn_assistan}</span>
      </td>
      <td><u class="container__edit-data" onclick="clickToEdit(this)">edit</u></td>
  </tr>`
    data_list.innerHTML += element
  }

  function isLoggedIn() {
    const token = localStorage.getItem('userSave');
    console.log(token)
    return token !== null;
}

function authCheck() {
  if (!isLoggedIn()) {
      window.location.href = '/login/admin1'; 
  }
}

function listenerLoad() {
  if (window.location.pathname === '/input') {
      cekAutentikasiInput();
  }
}

// fetch


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

