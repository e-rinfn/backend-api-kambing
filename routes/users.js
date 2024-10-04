// routes/users.js
const express = require('express');
const router = express.Router();
const userController = require('../controller/userController');
const authenticate = require('../middleware/authMiddleware'); // Jika diperlukan

// Use authentication middleware if necessary
router.use(authenticate);

router.get('/', userController.getUsers);
router.get('/:id', userController.getUserById);
router.post('/', userController.createUser);
router.put('/:id', userController.updateUser);
router.delete('/:id', userController.deleteUser);

module.exports = router;
