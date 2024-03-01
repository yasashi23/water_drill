// single listener
close.addEventListener("click",()=>clickToClose("off"))
buttonUpdate.addEventListener("click",clickToUpdate)
navbar_input.addEventListener("click",()=>navbarsClick("input"))
navbar_information.addEventListener("click",()=>navbarsClick("information"))
back_btn.addEventListener("click",backButton)

// multiple listener
// editListData.forEach(loopEditListData)
input_post_btn.addEventListener("click",postDataList)

// document.addEventListener('DOMContentLoaded',listenerLoad)

// fetch api
permissionToken()
informationData()
