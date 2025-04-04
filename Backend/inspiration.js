const bodyParser = require('body-parser');
const express = require('express');
const cors = require('cors');
const fs = require('fs');
const historyApiFallback = require('connect-history-api-fallback');

const sql = require('mssql');

const path = require('path');
const webpack = require('webpack');
const webpackDevMiddleware = require('webpack-dev-middleware');
const webpackHotMiddleware = require('webpack-hot-middleware');
const webpackConfig = require('../webpack.config');

const isDev = process.env.NODE_ENV !== 'production';
const port  = process.env.PORT || 3017;


// Configuration
// ================================================================================================


//Function to connect to database and execute query

const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(cors());

const config = {
  user: 'sa',
  password: '$-iOsApple',
  server: 'localhost',
  database: 'Cinepax'
};


// API routes
app.get('/api/moviesFetch/', cors(), (req, res) => {
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT * FROM MOVIES')
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});
app.get('/api/showtimeFetch/', cors(), (req, res) => {
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT SCREENNUMBER, M.MOVIEID, MOVIENAME, MOVIETYPE, RATING, RUNTIME, TIMING FROM SHOWTIME INNER JOIN MOVIES M ON M.MOVIEID = SHOWTIME.MOVIEID')
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});
app.get('/api/cinemaFetch/', cors(), (req, res) => {
  const { query } = req;
  const { cinema } = query
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT * FROM CINEMA INNER JOIN CINEMATIMINGS C ON CINEMA.SCREENNUMBER = C.SCREENNUMBER WHERE C.SCREENNUMBER = '+cinema)
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});
app.get('/api/showselection/', cors(), (req, res) => {
  const { query } = req;
  const { cinema, showtime } = query
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT SCREENNUMBER, M.MOVIEID, MOVIENAME, MOVIETYPE, RATING, RUNTIME, TIMING FROM SHOWTIME INNER JOIN MOVIES M ON M.MOVIEID = SHOWTIME.MOVIEID WHERE TIMING='+showtime+' AND SCREENNUMBER='+cinema)
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});

app.get('/api/showselection/gold', cors(), (req, res) => {
  const { query } = req;
  const { cinema, movie } = query
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT G.SEATNUMBER, SEATTYPE, PRICE FROM MOVIESEATS INNER JOIN MOVIES ON MOVIESEATS.MOVIEID = MOVIES.MOVIEID INNER JOIN SEATCATEGORY S2 ON MOVIESEATS.SEATNUMBER = S2.SEATNUMBER INNER JOIN GOLDCATEGORY G ON S2.SEATNUMBER = G.SEATNUMBER WHERE MOVIENAME = '+movie)
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});


app.get('/api/showselection/silver', cors(), (req, res) => {
  const { query } = req;
  const { cinema, movie } = query
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT G.SEATNUMBER, SEATTYPE, PRICE FROM MOVIESEATS INNER JOIN MOVIES ON MOVIESEATS.MOVIEID = MOVIES.MOVIEID INNER JOIN SEATCATEGORY S2 ON MOVIESEATS.SEATNUMBER = S2.SEATNUMBER INNER JOIN SILVERCATEGORY G ON S2.SEATNUMBER = G.SEATNUMBER WHERE MOVIENAME = '+movie)
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});

app.get('/api/showselection/regular', cors(), (req, res) => {
  const { query } = req;
  const { cinema, movie } = query
  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('SELECT G.SEATNUMBER, SEATTYPE, PRICE FROM MOVIESEATS INNER JOIN MOVIES ON MOVIESEATS.MOVIEID = MOVIES.MOVIEID INNER JOIN SEATCATEGORY S2 ON MOVIESEATS.SEATNUMBER = S2.SEATNUMBER INNER JOIN REGUCATEGORY G ON S2.SEATNUMBER = G.SEATNUMBER WHERE MOVIENAME = '+movie)
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});

app.get('/api/seatsFetch/', cors(), (req, res) => {

  var conn = new sql.Connection(config);
  conn.connect()
  .then(function(){
    var req = new sql.Request(conn);
    req.query('')
    .then(function(recordSet){
      const resposnsed = {
        success: true,
        data: recordSet
      }
      return res.send(resposnsed);
    }).catch(function(err){
      console.log(err);
    })
  });
});


if (isDev) {
  const compiler = webpack(webpackConfig);

  app.use(historyApiFallback({
    verbose: false
  }));

  app.use(webpackDevMiddleware(compiler, {
    publicPath: webpackConfig.output.publicPath,
    contentBase: path.resolve(__dirname, '../client/public'),
    stats: {
      colors: true,
      hash: false,
      timings: true,
      chunks: false,
      chunkModules: false,
      modules: false
    }
  }));

  app.use(webpackHotMiddleware(compiler));
  app.use(express.static(path.resolve(__dirname, '../dist')));
} else {
  app.use(express.static(path.resolve(__dirname, '../dist')));
  app.get('*', function (req, res) {
    res.sendFile(path.resolve(__dirname, '../dist/index.html'));
    res.end();
  });
}

app.listen(port, '0.0.0.0', (err) => {
  if (err) {
    console.log(err);
  }
  console.info('CORS enabled web server running at port ', port);
  console.info('>>> 🌎 Open http://0.0.0.0:%s/ in your browser.', port);
});

module.exports = app;