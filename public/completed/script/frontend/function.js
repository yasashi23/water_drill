function appendElem(id,well_number,customer_name,progress){
    let progressText 
    if(progress === "completed"){
        progressText = "Completado"
    }
    const html = `
        <tr data-id=${id}>
            <td class="container__well-number">${well_number}</td>
            <td class="container__customer-name">${customer_name}</td>            
            <td class="container__well-group">${progressText}</td>  
        </tr>
    `
    tableTr.innerHTML += html
}
function backButton(){
    window.location.href = '/admin1'; 
  }