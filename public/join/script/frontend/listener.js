// single listener
close.addEventListener("click",()=>clickToClose("off"))
buttonUpdate.addEventListener("click",clickToUpdate)
navbar_input.addEventListener("click",()=>navbarsClick("input"))
navbar_information.addEventListener("click",()=>navbarsClick("information"))

// multiple listener
editListData.forEach(loopEditListData)