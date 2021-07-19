const express = require('express');
const router = express.Router();
const likeController = require('../controllers/likeController')
/* GET users listing. */
router.post('/getLikeTeachers', likeController.getLikeTeachers)
router.post('/insertLikeTeacher', likeController.insertLikeTeacher)
router.post('/removeLikeTeacher', likeController.removeLikeTeacher)
router.post('/getLikeCourses', likeController.getLikeCourses)
router.post('/insertLikeCourse', likeController.insertLikeCourse)
router.post('/removeLikeCourse', likeController.removeLikeCourse)

module.exports = router;
