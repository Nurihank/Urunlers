import express, { json, urlencoded } from "express"; //express http istekleri yönetmemizi sağlar
var dbGetir = require("./model/DatabaseModel"); //dataBase'i getirdik

var db = new dbGetir() //constructoru çağırdık 
db.connect() //bağlantı oluşturuldu

var app = express();

app.listen(3000, () => {

})

app.use(express.urlencoded({ extended: true }))
app.use(express.json()) //gelen responlar için
app.use
app.get("/UrunGetir", (req, res) => {
    var con = db.getConnection() //bağlantiyi getirdik
    var urunAdi = req.query.urunAdi
  
    con.query("SELECT * FROM urunler.urunler WHERE urunAdi LIKE ?", ["%" + urunAdi + "%"], (err, result) => {
        if (err) { throw err }
        res.json({ message: result })
    })
})

app.post("/UrunEkle", (req, res) => {
    var con = db.getConnection() //bağlantıyı getirdik

    const urunAdi = req.body.urunAdi
    const urunAciklamasi = req.body.urunAciklamasi
    const urunlerUzunAciklama = req.body.urunlerUzunAciklama
    const urunlerResmi = req.body.urunlerResmi

    con.query("INSERT into urunler (urunAdi,urunAciklamasi,urunlerResmi,urunlerUzunAciklama) Values(?,?,?,?)", [urunAdi, urunAciklamasi, urunlerResmi, urunlerUzunAciklama], (err, result) => {
        if (err) { throw err }
        res.json({ status: 200 })
    })
})

app.delete("/UrunSil", (req, res) => {
    var con = db.getConnection() //bağlantıyı getirdik

    const idUrunler = req.query.idUrunler
    con.query("DELETE FROM urunler WHERE idUrunler = ?", idUrunler, (err, result) => {
        if (err) { throw err }
        res.json({ status: 200 })
    })
})

app.get("/KategoriGetir",(req,res)=>{
    var con = db.getConnection() //bağlantiyi getirdik
    var kategoriAdi = req.query.kategoriAdi
    console.log(kategoriAdi)
    con.query("SELECT * FROM kategori WHERE kategoriAdi LIKE ?", ["%" + kategoriAdi + "%"], (err, result) => {
        if (err) { throw err }
        console.log(result)
        res.json({ message: result })
    })
})


app.post("/KategoriEkle", (req, res) => {
    var con = db.getConnection() //bağlantıyı getirdik

    const kategoriAdi = req.body.kategoriAdi
   

    con.query("INSERT into kategori (kategoriAdi) Values(?)", [kategoriAdi], (err, result) => {
        if (err) { throw err }
        res.json({ status: 200 })
    })
})

app.delete("/KategoriSil", (req, res) => {
    var con = db.getConnection() //bağlantıyı getirdik

    const idKategori = req.query.idKategori
    con.query("DELETE FROM kategori WHERE idkategori = ?", idKategori, (err, result) => {
        if (err) { throw err }
        res.json({ status: 200 })
    })
})

app.get("/KategoriyeGoreUrun",(req,res)=>{
    var con = db.getConnection()

    const id = req.query.id
    con.query("SELECT * FROM urunler WHERE IDKategori=?",[id],(err,result)=>{
        if(err) throw err
        res.json({message:result})
    })
})

app.get("/UcuzdanPahaliya",(req,res)=>{
    var con = db.getConnection()

    con.query("SELECT * FROM urunler.urunler ORDER BY fiyat ASC",(err,result)=>{
        if(err){throw err}

        res.json({message:result})
    })
})

app.get("/PahalidanUcuza",(req,res)=>{
    var con = db.getConnection()

    con.query("SELECT * FROM urunler.urunler ORDER BY fiyat DESC",(err,result)=>{
        if(err){throw err}

        res.json({message:result})
    })
})

app.get("/AdanZye",(req,res)=>{
    var con = db.getConnection()

    con.query("SELECT * FROM urunler.urunler ORDER BY urunAdi ASC",(err,result)=>{
        if(err){throw err}

        res.json({message:result})
    })
})