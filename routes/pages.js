const express = require('express')
const router = express.Router()

// page static from public folder
const {drillerUser} = require('../public/drillUser/script/script')
const {admin1} = require('../public/admin1/script/script')
const {admin2} = require('../public/admin2/script/script')
const {completion1} = require('../public/completion1/script/script')
const {completion2} = require('../public/completion2/script/script')
const {loginAdmin1} = require('../public/login1/script/script')
const {dataCompleted} = require('../public/completed/script/script')

const {loginAdmin2} = require('../public/login2/script/script')
const {loginDriller} = require('../public/login3/script/script')
const {inputInformation} = require('../public/input-information/script/script')


// controllers
const {isLoggedIn_admin1} = require("../controllers/login_flow1/loggedin")
const {isLoggedIn_admin2} = require("../controllers/login_flow2/loggedin")
const {isLoggedIn_driller} = require("../controllers/login_flow3/loggedin")
const {editHost} = require('../controllers/editHost')



// Login flow 1
router.get('/login/admin1',loginAdmin1)
router.get('/admin1',isLoggedIn_admin1,admin1)
router.get('/input-information',isLoggedIn_admin1,inputInformation)
router.get('/completion1/',isLoggedIn_admin1,completion1)
router.get('/dataCompleted',isLoggedIn_admin1,dataCompleted)


// Login FLow 2
router.get('/login/admin2',loginAdmin2)
router.get('/admin2',isLoggedIn_admin2,admin2)
router.get('/completion2/',isLoggedIn_admin2,completion2)
router.get('/dataCompleted2',isLoggedIn_admin2,dataCompleted)



// Login flow 3
router.get('/login/driller',loginDriller)
router.get('/driller',isLoggedIn_driller,drillerUser)


// edit variable host in every folder
router.post('/editHost',editHost)


module.exports = router