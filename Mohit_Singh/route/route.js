const router = require('express').Router();
const contact = require('../controler/appcontroller.js')
const send = require('../controler/appcontroller.js')

router.post('/contact', contact);

module.exports = router;