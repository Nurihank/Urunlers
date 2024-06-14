"use strict";

var _interopRequireDefault = require("@babel/runtime/helpers/interopRequireDefault");
var _classCallCheck2 = _interopRequireDefault(require("@babel/runtime/helpers/classCallCheck"));
var _createClass2 = _interopRequireDefault(require("@babel/runtime/helpers/createClass"));
var _mysql = _interopRequireDefault(require("mysql"));
module.exports = /*#__PURE__*/function () {
  function DataBase() {
    (0, _classCallCheck2["default"])(this, DataBase);
    //classı çağırınca db'ye bağlantı yaratıyor
    this.con = _mysql["default"].createConnection({
      host: "localhost",
      user: "root",
      password: "15935738a",
      database: "urunler"
    });
  }
  return (0, _createClass2["default"])(DataBase, [{
    key: "connect",
    value: function connect() {
      this.con.connect(function (err) {
        //bu metodu çağırınca bağlanıyo
        if (err) {
          throw err;
        }
      });
    }
  }, {
    key: "getConnection",
    value: function getConnection() {
      //bu metodu çağırınca bağlantıyı getiriyor
      return this.con;
    }
  }]);
}();