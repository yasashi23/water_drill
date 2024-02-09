const express = require('express')
const router = express.Router()

// page static
const {drillerUser} = require('../public/drillUser/script/script')
const {admin1} = require('../public/admin1/script/script')
const {admin2} = require('../public/admin2/script/script')
const {completion} = require('../public/completion/script/script')
const {loginAdmin1} = require('../public/login/script/script')

const {admin1Post} = require('../controllers/create')
const {dataAdmin1,completionRead,checkData} = require('../controllers/read')



// drill user
router.get('/drillUser',drillerUser)


// admin1
router.get('/admin1',admin1)
// router.get('/admin1',admin2)


// completion
router.get('/completion/:user-:num',completion)

// Login
router.get('/login/admin1',loginAdmin1)



module.exports = router