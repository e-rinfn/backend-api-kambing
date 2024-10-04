// app.js
const express = require('express');
const { sequelize } = require('./models');
const authRoutes = require('./routes/auth');
const goatRoutes = require('./routes/goats');
const careRoutes = require('./routes/cares');
const userRoutes = require('./routes/users'); // Pastikan ini sesuai dengan path yang benar
const bodyParser = require('body-parser');
const app = express();

app.use(express.json());

app.use(bodyParser.json());

app.use('/api/auth', authRoutes);
app.use('/api/goats', goatRoutes);
app.use('/api/cares', careRoutes);
app.use('/api/users', userRoutes); // Pastikan ini sesuai dengan path yang benar

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
    sequelize.sync({ alter: true });
});
