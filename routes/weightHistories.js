const express = require('express');
const router = express.Router();
const weightHistoryController = require('../controller/weightHistoryController');
const authMiddleware = require('../middleware/authMiddleware');

router.use(authMiddleware);

router.post('/', weightHistoryController.createWeightHistory);
router.get('/goat/:GoatId', weightHistoryController.getWeightHistories);
// Route to get weight history for a chart
router.get('/chart/:GoatId', weightHistoryController.getWeightHistoryForChart);


module.exports = router;
