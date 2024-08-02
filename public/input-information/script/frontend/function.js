// function Listener
function clickToClose(a){
    addOffClass(a)
}
function clickToEdit(i){
    addOffClass("")
    listData = i.parentNode.parentNode.querySelectorAll("td")
    const updateModal = modalEdit.querySelector(".container__modal-edit h2")
    updateModal.textContent = "Editar Datos"  
    const buttonEdit = modalEdit.querySelectorAll(".container__modal-edit button")
    buttonEdit[0].style.display = "block"
    buttonEdit[1].style.display = "none"
    // listData[0].getAttribute("data-id")
  }
  
async function clickToUpdate(a){
    addOffClass("off")
    const i = listData[0].getAttribute("data-id")
    const link = `${host}/db/earnEdit${i}`
    const dataform = serializeFormData(updateForm)

    try{
      const data = await postData(link,JSON.stringify(dataform))
      listData[0].querySelector("span:first-child").innerHTML = dataform.driller
      listData[0].querySelector("span:last-child").innerHTML = dataform.assistant
      listData[1].querySelector("span:first-child").innerHTML = '$'+dataform.earn_driller
      listData[1].querySelector("span:last-child").innerHTML = '$'+dataform.earn_assistant
      console.log(data)
    }catch(er){
      console.error(er)
    }
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
      title.textContent = "Entrada"
      navbar_information.setAttribute("class","container__information-navbar off")
      navbar_input.setAttribute("class","container__input-navbar")

      body_information.setAttribute("class","container__body-information off")
      body_input.setAttribute("class","container__body-input")


    }else{
      title.textContent = "Información"
      navbar_information.setAttribute("class","container__information-navbar")
      navbar_input.setAttribute("class","container__input-navbar off")

      body_information.setAttribute("class","container__body-information")
      body_input.setAttribute("class","container__body-input off")
    }
  }

async function postDataList(){
  const dataFormInput = serializeFormData(input_form)
  const link = `${host}/db/inputCost`
  try{
    const data = await postData(link,JSON.stringify(dataFormInput))
    console.log(data)
  }catch(err){
    console.error(err)
  }
}

async function setValueForCostForm(val){
  const inputValueForm = input_form.querySelectorAll('.container__section-cost .container__content div input')
  const link = `${host}/db/inputCost`
  try{
    const data = await getData(link)
    inputValueForm.forEach((el,ind)=>{
      const newValueInput = `${el.name}`
      el.setAttribute("value",data[el.name])     
    })
  }catch(err){
    console.error(err)
  }

}

async function informationData(){
  const buttonEdit = modalEdit.querySelectorAll(".container__modal-edit button")
  buttonEdit[0].style.display = "block"
  buttonEdit[1].style.display = "none"

  try{
    const data = await getData(`${host}/db/earnInput`)
    data.forEach(el => {
      const{id,driller,assistant,earn_assistant,earn_driller}=el
      newDataList(id,driller,assistant,earn_assistant,earn_driller)
    });
  }catch(err){
    console.error(err)
  }
}

  // /db/earnInput
  function newDataList(id,driller,assistant,earn_assistant,earn_driller){
    const element = `            
    <tr>
      <td data-id="${id}">
        <span>${driller}</span><br>
        <span>${assistant}</span>
      </td>
      <td data-id="${id}">
        <span>$${earn_driller}</span><br>
        <span>$${earn_assistant}</span>
      </td>
      <td><u class="container__edit-data" onclick="clickToEdit(this)">editar</u></td>
      <td><u class="container__delete-data" onclick="clickToDelete(this)">ELIMINAR</u></td>
  </tr>`
    data_list.innerHTML += element
  }

  async function clickToDelete(del){
    const parentNode = del.parentNode.parentNode.querySelectorAll("td")
    const id = parentNode[0].getAttribute("data-id")
    const dataElement = del.parentNode.parentNode

    const link = `${host}/db/earnDelete${id}`
    try{
      const data = await deleteData(link)
      console.log(data)
    }catch(err){
      console.error(err)
    }
    dataElement.remove()

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


function backButton(){
  window.location.href = '/admin1'; 
}

function clickToOpenModalGrup(){
  addOffClass("")
  const updateModal = modalEdit.querySelector(".container__modal-edit h2")
  updateModal.textContent = "New Group"
  const buttonEdit = modalEdit.querySelectorAll(".container__modal-edit button")
  buttonEdit[0].style.display = "none"
  buttonEdit[1].style.display = "block"

}
async function clickToAddNewGroup(){
  const dataform = serializeFormData(updateForm)
  const {driller,assistant,earn_assistant,earn_driller} = dataform
  const link = `${host}/db/earnInput`
  try{
    const data = await postData(link,JSON.stringify(dataform))
    console.log(data)
  }catch(err){
    console.error(err)
  }
  addOffClass("off")
  newDataList("0",driller,assistant,earn_assistant,earn_driller)
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

