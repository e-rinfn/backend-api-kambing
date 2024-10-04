module.exports = (sequelize, DataTypes) => {
    const WeightHistory = sequelize.define('WeightHistory', {
        GoatId: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        bobot: {
            type: DataTypes.FLOAT,
            allowNull: false,
        },
        tanggal: {
            type: DataTypes.DATE,
            allowNull: false,
        }
    });

    return WeightHistory;
};
