var express = require('express');
var router = express.Router();
var demoController = require('../controllers/demoController')
/* GET home page. */
router.get('/',demoController.demo);
router.get('/one',demoController.getOneDemo)

module.exports = router;
