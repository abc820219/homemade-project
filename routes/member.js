const express = require('express');
const router = express.Router();
const memberController = require('../controllers/memberController')
/* GET users listing. */
router.get('/getMember', memberController.getMember)
router.get('/logoutMember', memberController.logoutMember)
router.post('/insertMember', memberController.insertMember)
router.post('/updateMember', memberController.updateMember)
router.post('/loginMember', memberController.loginMember)

module.exports = router;
