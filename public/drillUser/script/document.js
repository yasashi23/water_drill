
function onSubmit(){
    const form = $("#form").serializeArray()  
    $.post({
        url:'http://localhost:3000/checkData',
        data: form,
        success: function(data){
            const meter = data.meters
            if(data.pesan == 'not found') alert('drill user or name wrong')
            else $(".total_depth").text(meter)
        
        },
        error:function(err){
            console.error(err)
        }
    })

   
}