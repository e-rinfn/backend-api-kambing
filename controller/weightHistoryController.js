const { WeightHistory } = require('../models');

// Create a new weight history entry
exports.createWeightHistory = async (req, res) => {
    try {
        const weightHistory = await WeightHistory.create(req.body);
        res.status(201).json(weightHistory);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Get all weight histories for a specific goat
exports.getWeightHistories = async (req, res) => {
    try {
        const weightHistories = await WeightHistory.findAll({
            where: { goatId: req.params.goatId },
            order: [['tanggal', 'ASC']]
        });
        res.json(weightHistories);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Get weight history for a specific goat in a format suitable for charts
exports.getWeightHistoryForChart = async (req, res) => {
    try {
        const weightHistories = await WeightHistory.findAll({
            where: { goatId: req.params.goatId },
            order: [['tanggal', 'ASC']]
        });

        const data = weightHistories.map(history => ({
            date: history.tanggal,
            weight: history.bobot
        }));

        res.json(data);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

