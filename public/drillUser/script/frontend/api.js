
function verifiedPage(status) {
    if (status === 'unverified') {
        window.location.href = "/login/driller";
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


async function auth() {
    try {
        const { token } = await getData(`${host}/auth/token_driller`);
        return `Bearer ${token}`;
    } catch (error) {
        console.error("Error fetching token:", error);
        throw error;
    }
}

async function permissionToken() {
    try {
        const token = await auth();
        const { id, user, msg } = await authToken(`${host}/auth/user_driller`, token);
        verifiedPage(msg);
        console.log({ id, user, msg });
    } catch (error) {
        console.error("Error fetching permission token:", error);
    }
}
