const express = require('express')
const router = express.Router()

const json_response = require('./controllers/json_response')
const items = require('./datasource/items')


router.get('/ping', (req, res) => {
    res.send('pong')
})

router.get('/warframes', (req, res) => json_response(res, items('Warframes')))

module.exports = router