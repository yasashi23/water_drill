const express = require('express')
const router = express.Router()
const {admin1Post} = require('../controllers/create')
const {dataAdmin1,completionRead,checkData} = require('../controllers/read')
const {authLogin} = require('../controllers/login')


// Login Flow 1
router.post('/login',authLogin)


// get
router.get('/admin1Read',dataAdmin1)
router.get('/completionRead/:user-:num',completionRead)

// post
router.post('/admin1Post',admin1Post)
router.post('/checkData',checkData)

module.exports = router