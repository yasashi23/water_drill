
function verifiedPage(status) {
    if (status === 'unverified') {
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

async function downloadCsvMethod(url, dt) {
    try {
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(dt)
        });
        
        if (!response.ok) {
            throw new Error('Failed to download CSV');
        }

        const csvData = await response.text()
        return csvData;
    } catch (error) {
        console.error("Error fetching data:", error);
        throw error;
    }
}

async function auth() {
    try {
        // const { token } = await getData(`${host}/auth/token_admin12/${splitUrl[0]}-${splitUrl[1]}`);
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
        console.log(token)
        console.log({ id, user, msg });
    } catch (error) {
        console.error("Error fetching permission token:", error);
    }
}
