const express = require('express');
const router = express.Router();
const { createCare, getCares, getCare, updateCare, deleteCare } = require('../controller/careController');
const authenticate = require('../middleware/authMiddleware');

router.use(authenticate);

router.post('/', createCare);
router.get('/', getCares);
router.get('/:id', getCare);
router.put('/:id', updateCare);
router.delete('/:id', deleteCare);

module.exports = router;
