const express = require('express');
const { sequelize } = require('./models');
const authRoutes = require('./routes/auth');
const goatRoutes = require('./routes/goats');
const careRoutes = require('./routes/cares');
const app = express();

app.use(express.json());
app.use('/api/auth', authRoutes);
app.use('/api/goats', goatRoutes);
app.use('/api/cares', careRoutes);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
    sequelize.sync({ alter: true });
});
