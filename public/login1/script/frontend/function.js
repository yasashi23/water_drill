function clickToSubmit(){
    const dataFrom = serializeFormData(loginForm)
    // console.log(JSON.stringify(dataFrom))
    postData(dataFrom)
}

async function postData(data) {
    try {
      const response = await fetch(urlLoginAdm1, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      });
  
      const {message,redirect} = await response.json();
      if(message!=="success") alert(message)
      else {
        console.log("success",redirect)
        window.location.href = redirect
    }
      
    } catch (error) {
      console.error("Error:", error);
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
