import mysql from "mysql";

module.exports = class DataBase {

    constructor() {  //classı çağırınca db'ye bağlantı yaratıyor
        this.con = mysql.createConnection({
            host: "localhost",
            user: "root",
            password: "nurihan38",
            database: "urunler"
        })
    }

    connect() {
        this.con.connect((err) => {  //bu metodu çağırınca bağlanıyo
            if (err) { throw err }
        })
    }
    getConnection() {   //bu metodu çağırınca bağlantıyı getiriyor
        return this.con
    }
}
