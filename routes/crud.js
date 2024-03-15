const express = require('express')
const router = express.Router()

const {admin1Post,inputEarn,postDriller} = require('../controllers/create')

const {dataAdmin1,completionRead,getIdInput,getInformationList,getDataDriller,inputCostRead,searchDataCompleted} = require('../controllers/read')

const {editInformation,adminUpdate,inputCost} = require('../controllers/update')
const {deleteInformation} = require('../controllers/delete')

const {downloadCsv,downloadCsvGet} = require('../controllers/download')



// CRUD DB system
router.get('/admin1Read',dataAdmin1)
router.post('/admin1Post',admin1Post)
router.post('/adminUpdate',adminUpdate)

router.get('/completionRead/:user-:num',completionRead)
router.post('/postDriller',postDriller)

// DRILLER GET driller Number and customer name
router.get('/getDataDriller',getDataDriller)

// supplies page
router.post('/inputCost', inputCost)
router.get('/inputCost', inputCostRead)


// drillers Page
router.post('/earnInput',inputEarn,getIdInput)
router.get('/earnInput',getInformationList)
router.post('/earnEdit:id',editInformation)
router.delete('/earnDelete:id',deleteInformation)


// download
router.post('/download',downloadCsv)
router.get('/download2',downloadCsvGet)

// completed page search
router.get('/searchdata:name',searchDataCompleted)






module.exports = router