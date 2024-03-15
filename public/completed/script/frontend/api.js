function verifiedPage(a) {
    if (a === 'unverified') {
        window.location.href = "/login/admin1";
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

async function processData() {
    try {
        const result = await getData(`${host}/db/admin1Read`);
        console.log({result})
        result.forEach(item => {
            const {id,well_number,customer_name,well_group,progress} = item;
            if(progress === 'completed') {
                appendElem(id,well_number,customer_name,progress,well_group);

                console.log({item})
            }
        });
    } catch (error) {
        console.error("Error processing data:", error);
    }
}

async function authToken(hs, token) {
    try {
        const res = await fetch(hs, {
            method: 'GET',
            headers: {
                "Authorization": token
            }
        });
        const data = await res.json();
        return data;
    } catch (error) {
        console.error("Error fetching data:", error);
        throw error;
    }
}

async function auth() {
    try {
        const { token } = await getData(`${host}/auth/token_admin1`);
        const tokenCode = `Bearer ${token}`;
        return tokenCode;
    } catch (error) {
        console.error(error);
    }
}

async function permissionToken() {
    try {
        const token = await auth();
        const { id, user, msg } = await authToken(`${host}/auth/user_admin1`, token);
        verifiedPage(msg);
        console.log({ id, user, msg });
    } catch (error) {
        console.error(error);
    }
}
