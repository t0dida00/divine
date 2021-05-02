const express = require('express');
const exphbs = require('express-handlebars');
let mysql = require('mysql');
const PORT = 3000;
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "auto_sell"
});
const app = express();

app.use(express.urlencoded({
    extended: true
  }));
  app.engine('handlebars', exphbs());
  app.set('view engine', 'handlebars');
app.use('/public', express.static('./public'))

  app.get('/index', function (req, res) {
    res.render('index',{layout:false});
  })
  
  app.get('/car', function (req, res) {
    res.render('car',{layout:false});
  })
  
    

  app.get('/productdetails1', function (req, res) {
    res.render('productdetails1',{layout:false});
  })
  app.get('/productdetails2', function (req, res) {
    res.render('productdetails2',{layout:false});
  })
  
  app.get('/productdetails3', function (req, res) {
    res.render('productdetails3',{layout:false});
  })
  
  app.get('/productdetails4', function (req, res) {
    res.render('productdetails4',{layout:false});
  })
  
  app.get('/productdetails5', function (req, res) {
    res.render('productdetails5',{layout:false});
  })
  
  app.get('/productdetails6', function (req, res) {
    res.render('productdetails6',{layout:false});
  })
  
  app.get('/productdetails7', function (req, res) {
    res.render('productdetails7',{layout:false});
  })
  
  app.get('/productdetails8', function (req, res) {
    res.render('productdetails8',{layout:false});
  })
  
  app.get('/productdetails9', function (req, res) {
    res.render('productdetails9',{layout:false});
  })
  
  app.get('/productdetails10', function (req, res) {
    res.render('productdetails10',{layout:false});
  })
  
  app.get('/productdetails11', function (req, res) {
    res.render('productdetails11',{layout:false});
  })
  
  app.get('/productdetails12', function (req, res) {
    res.render('productdetails12',{layout:false});
  })
  

  
  app.get('/order', function (req, res) {
    res.render('order',{layout:false});
  })
  
  app.post('/order', function (req, res) {
  console.log(req.body)

  var sql = `INSERT INTO customer_information 
            (
              first_name, last_name, email, phone, address1, address2,code,country,nameCar,priceCar
            )
            VALUES
            (
                ?, ?, ?, ?, ?, ?,?,?, ?,?
            )`;
con.query(sql, [req.body.first_name , req.body.last_name, req.body.email, req.body.phone, req.body.address1 , req.body.address2, req.body.code, req.body.country, req.body.nameCar, req.body.priceCar], function (err, data) {
    if (err) {
        throw err;
    } else {
       res.render('success',{layout:false})
    }
});
  })
  


app.listen( PORT, function () {
    console.log(`Server running at port `+PORT);
  })