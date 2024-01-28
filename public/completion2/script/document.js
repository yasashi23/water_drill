// Mendapatkan URL lengkap
const currentURL = window.location.href;
const splitUrl = currentURL.split('/')[4].split('-')


$(document).ready(function() {
    // URL endpoint
    const apiUrl = `http://localhost:3000/completionRead/${splitUrl[0]}-${splitUrl[1]}`;


    $.ajax({
      url: apiUrl,
      method: 'GET',
      dataType: 'json', // Tipe data yang diharapkan dari respons
      success: function(data) {

        const drill_user = data.driller_user[0]
        changeData(drill_user.customer_name,drill_user.driller_user,drill_user.meters_drilled)
      },
      error: function(error) {

        console.error('Kesalahan dalam permintaan:', error);
      }
    });
  });


  function changeData(name,num,meter){
    $('span.name').text(name)
    $('span.number').text(num)
    $('.total_depth').text(meter)
  }