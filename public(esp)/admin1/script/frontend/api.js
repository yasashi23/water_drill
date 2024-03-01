
function verifiedPage(status) {
    if (status === 'unverified') {
        window.location.href = "/login/admin1";
    }
}


async function postData(url,dt){
    try {
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                "Content-Type": 'application/json'
            },
            body:dt
        });
        const data = await response.json();
        return data;
    } catch (error) {
        console.error("Error fetching data:", error);
        throw error;
    }
}

async function getData(url) {
    try {
        const response = await fetch(url);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error("Error fetching data:", error);
        throw error;
    }
}

async function authToken(url, token) {
    try {
        const response = await fetch(url, {
            method: 'GET',
            headers: {
                "Authorization": token
            }
        });
        const data = await response.json();
        return data;
    } catch (error) {
        console.error("Error fetching data:", error);
        throw error;
    }
}

async function processData() {
    try {
        const result = await getData(`${host}/db/admin1Read`);
        console.log({result})
        result.forEach(item => {
            const { customer_name: name, well_number: num, well_group,id, progress } = item;
            if(progress === 'in progress' || progress === 'to be done') {
                appendElem(num, name, progress,id);
                console.log({item})
            }
        });
    } catch (error) {
        console.error("Error processing data:", error);
    }
}

async function auth() {
    try {
        const { token } = await getData(`${host}/auth/token_admin1`);
        return `Bearer ${token}`;
    } catch (error) {
        console.error("Error fetching token:", error);
        throw error;
    }
}

async function permissionToken() {
    try {
        const token = await auth();
        const { id, user, msg } = await authToken(`${host}/auth/user_admin1`, token);
        verifiedPage(msg);
        console.log({ id, user, msg });
    } catch (error) {
        console.error("Error fetching permission token:", error);
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
  