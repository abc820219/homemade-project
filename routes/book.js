const express = require('express');
const router = express.Router();
const bookController = require('../controllers/bookController.js')
/* GET users listing. */
router.post('/getBooking', bookController.getBooking)

module.exports = router;