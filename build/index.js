"use strict";

var _typeof = require("@babel/runtime/helpers/typeof");
var _express = _interopRequireWildcard(require("express"));
function _getRequireWildcardCache(e) { if ("function" != typeof WeakMap) return null; var r = new WeakMap(), t = new WeakMap(); return (_getRequireWildcardCache = function _getRequireWildcardCache(e) { return e ? t : r; })(e); }
function _interopRequireWildcard(e, r) { if (!r && e && e.__esModule) return e; if (null === e || "object" != _typeof(e) && "function" != typeof e) return { "default": e }; var t = _getRequireWildcardCache(r); if (t && t.has(e)) return t.get(e); var n = { __proto__: null }, a = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var u in e) if ("default" !== u && {}.hasOwnProperty.call(e, u)) { var i = a ? Object.getOwnPropertyDescriptor(e, u) : null; i && (i.get || i.set) ? Object.defineProperty(n, u, i) : n[u] = e[u]; } return n["default"] = e, t && t.set(e, n), n; }
//express http istekleri yönetmemizi sağlar
var dbGetir = require("./model/DatabaseModel"); //dataBase'i getirdik

var db = new dbGetir(); //constructoru çağırdık 
db.connect(); //bağlantı oluşturuldu

var app = (0, _express["default"])();
app.listen(3000, function () {});
app.use(_express["default"].urlencoded({
  extended: true
}));
app.use(_express["default"].json()); //gelen responlar için

app.get("/UrunGetir", function (req, res) {
  var con = db.getConnection(); //bağlantiyi getirdik
  var urunAdi = req.query.urunAdi;
  console.log(urunAdi);
  con.query("SELECT * FROM urunler.urunler WHERE urunAdi LIKE ?", [urunAdi + "%"], function (err, result) {
    if (err) {
      throw err;
    }
    console.log(result);
    res.json({
      message: result
    });
  });
});
app.post("/UrunEkle", function (req, res) {
  var con = db.getConnection(); //bağlantıyı getirdik

  var urunAdi = req.body.urunAdi;
  var urunAciklamasi = req.body.urunAciklamasi;
  console.log(urunAdi);
  con.query("INSERT into urunler (urunAdi,urunAciklamasi) Values(?,?)", [urunAdi, urunAciklamasi], function (err, result) {
    if (err) {
      throw err;
    }
    res.json({
      message: "Başarıyla Ekledin"
    });
  });
});
app["delete"]("/UrunSil", function (req, res) {
  var con = db.getConnection(); //bağlantıyı getirdik

  var idUrunler = req.query.idUrunler;
  con.query("DELETE FROM urunler WHERE idUrunler = ?", idUrunler, function (err, result) {
    if (err) {
      throw err;
    }
    res.json({
      message: "Başarıyla silindi"
    });
  });
});