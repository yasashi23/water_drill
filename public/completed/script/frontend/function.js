function appendElem(id, well_number, customer_name, progress, well_group) {
    let progressText;
    let lowerCaseName = customer_name.toLowerCase()
    let lowerCaseWellGroup = well_group.toLowerCase()

    if (progress === "completed") {
        progressText = "Completado";
    }
    const newTr = document.createElement('tr');
    newTr.setAttribute("data-id", id);
    newTr.setAttribute("onclick", "clickToCompletion(this)");
    newTr.setAttribute("dataname", lowerCaseName);
    newTr.setAttribute("datanum", well_number);
    newTr.setAttribute("datagroup", lowerCaseWellGroup);


    const html = `
        <td class="container__well-number">${well_number}</td>
        <td class="container__customer-name">${customer_name}</td>
        <td class="container__well-group">${well_group}</td>
        <td class="container__status">${progressText}</td>
        <td class="container__open"><span dataname="${customer_name}" datanum="${well_number}" onclick="clickToCompletion(this)">ABRIR</span></td>
    `;
    newTr.innerHTML = html;
    tableTr.appendChild(newTr);
}

function backButton(){
    window.location.href = '/admin1'; 
  }

function clickToCompletion(e){
    const [dataName,dataNum] = [e.getAttribute("dataname"),e.getAttribute("datanum")]
    // console.log(dataName,dataNum)
    const url = `${host}/completion1/?user=${dataName}&num=${dataNum}`
    console.log(url)
    window.open(url,'_blank')
}

async function searchFinding(e){
    const searchWord = e.value.trim().toLowerCase()
    const getData = tableTr.querySelectorAll('tr')
    if(searchWord === ""){
        // processData()
        getData.forEach(item=>{
            item.style.display = "table-row"
        })
    }else{
        getData.forEach(item=>{
            const dataName = item.getAttribute("dataname")
            const dataNum = item.getAttribute("datanum")
            const datagroup = item.getAttribute("datagroup")

            if(searchWord === "" ||dataName.startsWith(searchWord)||dataNum.startsWith(searchWord)||datagroup.startsWith(searchWord)){
                item.style.display = "table-row"
            }
            else{
                item.style.display = "none"
            }

        })
    }
}