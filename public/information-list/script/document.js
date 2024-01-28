const close = document.querySelector(".close")
const modalEdit = document.querySelector(".edit-data-modal")
const processScreen = document.querySelector(".edit-process")
const editListData = document.querySelectorAll(".edit-data")
const buttonUpdate = document.querySelector(".btn-update")
const updateForm = document.querySelector("#updateForm")
let numberOfDataList
// get data from list data
const driller = document.querySelectorAll(".body-data .data-list tr:nth-child(n+2) td:first-child")
const  assistans = document.querySelectorAll(".body-data .data-list tr:nth-child(n+2) td:nth-child(2)")
const  earn = document.querySelectorAll(".body-data .data-list tr:nth-child(n+2) td:nth-child(3)")
// single listener
close.addEventListener("click",()=>clickToClose("off"))
buttonUpdate.addEventListener("click",clickToUpdate)
// multiple listener
editListData.forEach(loopEditListData)
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
