module.exports = (sequelize, DataTypes) => {
    const Care = sequelize.define('Care', {
        tanggal: DataTypes.DATE,
        tipePerawatan: DataTypes.STRING,
        catatan: DataTypes.TEXT,
    });

    return Care;
};
