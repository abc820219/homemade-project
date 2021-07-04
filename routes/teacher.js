const express = require('express');
const router = express.Router();
const teacherController = require('../controllers/teacherController')
/* GET users listing. */
router.get('/getTeachers', teacherController.getTeachers)

module.exports = router;
