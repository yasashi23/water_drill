function verifiedPage(a){
    if(a === 'unverified') window.location.href = "/login/admin1"
    }
async function getData(hs) {
    try {
        const res = await fetch(hs);
        const data = await res.json();
        
        return data;
    } catch (error) {
        console.error("Error fetching data:", error);
        throw error; 
    }
    }
    
    async function authToken(hs,token) {
    try {
        const res = await fetch(hs,{
        method:'GET',
        headers:{
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

    async function auth(){
    try{
        const {token} = await getData(`${host}/auth/token_admin1`)
        tokenCode = `Bearer ${token}`
        return tokenCode
    }catch(error){
        
    }
    }
    async function permissionToken(){
    
    try{
        const token = await auth()
        const {id,user,msg} = await authToken(`${host}/auth/user_admin1`,token)
        verifiedPage(msg)
        console.log({id,user,msg})
    }catch(error){
        console.error(error)
    }
    }