const express = require('express')
const router = express.Router()

const {admin1Post,inputEarn,postDriller} = require('../controllers/create')

const {dataAdmin1,completionRead,getIdInput,getInformationList,getDataDriller} = require('../controllers/read')

const {editInformation,adminUpdate} = require('../controllers/update')
const {downloadCsv,downloadCsvGet} = require('../controllers/download')



// CRUD DB system
router.get('/admin1Read',dataAdmin1)
router.post('/admin1Post',admin1Post)
router.post('/adminUpdate',adminUpdate)

router.get('/completionRead/:user-:num',completionRead)
router.post('/postDriller',postDriller)

// DRILLER GET driller Number and customer name
router.get('/getDataDriller',getDataDriller)

// input Page
router.post('/earnInput',inputEarn,getIdInput)
router.get('/earnInput',getInformationList)
router.post('/earnEdit:id',editInformation)

// download
router.post('/download',downloadCsv)
router.get('/download2',downloadCsvGet)




module.exports = router