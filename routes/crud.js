const express = require('express')
const router = express.Router()

const {admin1Post,inputEarn,postDriller} = require('../controllers/create')

const {dataAdmin1,completionRead,getIdInput,getInformationList} = require('../controllers/read')

const {editInformation} = require('../controllers/update')




// CRUD DB system
router.get('/admin1Read',dataAdmin1)
router.post('/admin1Post',admin1Post)

router.get('/completionRead/:user-:num',completionRead)
router.post('/postDriller',postDriller)


// input Page
router.post('/earnInput',inputEarn,getIdInput)
router.get('/earnInput',getInformationList)
router.post('/earnEdit:id',editInformation)

module.exports = router