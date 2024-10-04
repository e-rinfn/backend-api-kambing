const express = require('express');
const router = express.Router();
const { register, login } = require('../controller/authController');
const { getUsers } = require('../controller/userController');
const { getCurrentUser } = require('../controller/authController');
const authenticate = require('../middleware/authMiddleware'); // Impor middleware

// Register user
router.post('/register', register);

// Login user
router.post('/login', login);

// Get all users
router.get('/users', getUsers);

// Route untuk mendapatkan informasi pengguna saat ini
router.get('/me', authenticate, getCurrentUser);

module.exports = router;

