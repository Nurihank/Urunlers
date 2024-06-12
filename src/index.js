import express, { urlencoded } from "express"; //express http istekleri yönetmemizi sağlar
var dbGetir = require("./model/DatabaseModel"); //dataBase'i getirdik

var db = new dbGetir() //constructoru çağırdık 
db.connect() //bağlantı oluşturuldu

var app = express();

app.listen(3000, () => {

})

app.use(express.urlencoded({ extended: true }))
app.use(express.json()) //gelen responlar için

app.get("/UrunGetir",(req,res)=>{
    var con = db.getConnection() //bağlantiyi getirdik
    var urunAdi = req.query.urunAdi
    console.log(urunAdi)
    con.query("SELECT * FROM urunler.urunler WHERE urunAdi LIKE ?" , [urunAdi+"%"],(err,result)=>{
        if(err){throw err}
        console.log(result)
        res.json({message:result})
    })
})

app.post("/UrunEkle", (req, res) => {
    var con = db.getConnection() //bağlantıyı getirdik

    const urunAdi = req.body.urunAdi
    const urunAciklamasi = req.body.urunAciklamasi
    console.log(urunAdi)
    con.query("INSERT into urunler (urunAdi,urunAciklamasi) Values(?,?)", [urunAdi, urunAciklamasi], (err, result) => {
        if (err) { throw err }

        res.json({ message: "Başarıyla Ekledin" })
    })
})

app.delete("/UrunSil", (req, res) => {
    var con = db.getConnection() //bağlantıyı getirdik

    const idUrunler = req.query.idUrunler

    con.query("DELETE FROM urunler WHERE idUrunler = ?", idUrunler, (err, result) => {
        if (err) { throw err }
        res.json({ message: "Başarıyla silindi" })
    })
})