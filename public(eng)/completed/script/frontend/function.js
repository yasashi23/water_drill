function appendElem(id,well_number,customer_name,well_group){
    const html = `
        <tr data-id=${id}>
            <td class="container__well-number">${well_number}</td>
            <td class="container__customer-name">${customer_name}</td>            
            <td class="container__well-group">${well_group}</td>  
        </tr>
    `
    tableTr.innerHTML += html
}
function backButton(){
    window.location.href = '/admin1'; 
  }