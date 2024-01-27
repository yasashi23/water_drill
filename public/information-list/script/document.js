const close = document.querySelector(".close")

const modalEdit = document.querySelector(".edit-data-modal")

const processScreen = document.querySelector(".edit-process")

const editListData = document.querySelectorAll(".edit-data")

close.addEventListener("click",clickToClose)





// function Listener
function clickToClose(a){
    const newClassModal = modalEdit.getAttribute("class")+" off"

    const newClassProcess = 
    processScreen.getAttribute("class")+" off"

    modalEdit.setAttribute("class",newClassModal)

    processScreen.setAttribute("class",newClassProcess)

}