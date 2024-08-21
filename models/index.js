const { Sequelize } = require('sequelize');
const config = require('../config/config');

const env = process.env.NODE_ENV || 'development';
const sequelize = new Sequelize(config[env]);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

// Import models
db.User = require('./user')(sequelize, Sequelize);
db.Goat = require('./goat')(sequelize, Sequelize);
db.Care = require('./care')(sequelize, Sequelize);

// Define relationships
db.User.hasMany(db.Goat);
db.Goat.belongsTo(db.User);

db.Goat.hasMany(db.Care);
db.Care.belongsTo(db.Goat);

module.exports = db;
