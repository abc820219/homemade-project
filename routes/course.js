const express = require('express');
const router = express.Router();
const courseController = require('../controllers/courseController')
/* GET users listing. */
router.get('/getCourses', courseController.getCourses)

module.exports = router;
