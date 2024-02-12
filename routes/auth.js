const express = require('express')
const router = express.Router()

// variable auth flow1
const {authLogin_admin1} = require('../controllers/login_flow1/login')
const {isLoggedIn_admin1, getUsers_admin1,refreshToken_admin1} = require('../controllers/login_flow1/loggedin_2')

const {authLogin_admin2} = require('../controllers/login_flow2/login')
const {isLoggedIn_admin2, getUsers_admin2,refreshToken_admin2} = require('../controllers/login_flow2/loggedin')

const {authLogin_driller} = require('../controllers/login_flow3/login')
const {isLoggedIn_driller, getUsers_driller,refreshToken_driller} = require('../controllers/login_flow3/loggedin')



const testing = async(req,res)=>{
    console.log("masuk")
}


// Login Flow 1
router.post('/login_admin1',authLogin_admin1)
router.get('/token_admin1',refreshToken_admin1)
router.get('/user_admin1',isLoggedIn_admin1,getUsers_admin1)
// Testing
router.get('/testing',testing)



// Login Flow 2
router.post('/login_admin2',authLogin_admin2)
router.get('/token_admin2',refreshToken_admin2)
router.get('/user_admin2',isLoggedIn_admin2,getUsers_admin2)

// Login Flow 3
router.post('/login_driller',authLogin_driller)
router.get('/token_driller',refreshToken_driller)
router.get('/user_driller',isLoggedIn_driller,getUsers_driller)




module.exports = router