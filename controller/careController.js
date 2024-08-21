const { Care } = require('../models');

// Create a new care record
exports.createCare = async (req, res) => {
    try {
        const care = await Care.create(req.body);
        res.status(201).json(care);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Get all care records
exports.getCares = async (req, res) => {
    try {
        const cares = await Care.findAll();
        res.json(cares);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Get a single care record by ID
exports.getCare = async (req, res) => {
    try {
        const care = await Care.findByPk(req.params.id);
        if (!care) return res.status(404).json({ error: 'Care not found' });
        res.json(care);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Update a care record by ID
exports.updateCare = async (req, res) => {
    try {
        const care = await Care.findByPk(req.params.id);
        if (!care) return res.status(404).json({ error: 'Care not found' });
        await care.update(req.body);
        res.json(care);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Delete a care record by ID
exports.deleteCare = async (req, res) => {
    try {
        const care = await Care.findByPk(req.params.id);
        if (!care) return res.status(404).json({ error: 'Care not found' });
        await care.destroy();
        res.status(204).end();
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};
