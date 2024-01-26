const express = require('express')
const router = express.Router()

// page static
const drillUser = require('./public/drillUser/script/script')
const admin1 = require('./public/admin1/script/script')
const admin2 = require('./public/admin2/script/script')
const completion = require('./public/completion/script/script')

const dbCreate = require('./db/create')
const dbRead = require('./db/read')



// drill user
router.get('/drillUser',drillUser.drillerUser )


// admin1
router.get('/admin1',admin1.admin1)
router.get('/admin1',admin2.admin2)


// completion
router.get('/completion/:user-:num',completion.completion)



// get
router.get('/admin1Read',dbRead.dataAdmin1)
router.get('/completionRead/:user-:num',dbRead.completionRead)

// post
router.post('/admin1Post',dbCreate.admin1Post)
router.post('/checkData',dbRead.checkData)


module.exports = router