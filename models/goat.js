module.exports = (sequelize, DataTypes) => {
    const Goat = sequelize.define('Goat', {
        noTag: {
            type: DataTypes.STRING,
            unique: true,
            allowNull: false,
        },
        tanggalLahir: DataTypes.DATE,
        nama: DataTypes.STRING,
        bobot: DataTypes.FLOAT,
        kelamin: DataTypes.STRING,
        jenis: DataTypes.STRING,
        induk: DataTypes.STRING,
        pejantan: DataTypes.STRING,
        posisiKandang: DataTypes.STRING,
        asal: DataTypes.STRING,
        harga: DataTypes.FLOAT,
        status: DataTypes.STRING,
    });

    return Goat;
};
