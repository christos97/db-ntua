var createError = require('http-errors');
var express = require('express');
const session = ('cookie-session');
var path = require('path');
var cookieParser = require('cookie-parser');
var cookieSession = require('cookie-session')
var logger = require('morgan');
var flash        = require('req-flash');
var cors = require('cors')
var pug = require('pug')
var indexRouter = require('./routes/index');
var dashboardRouter = require('./routes/dashboard')
var productsRouter = require('./routes/products')
var storesRouter = require('./routes/stores')
var customersRouter = require('./routes/customers')
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

app.use(cookieSession({ secret: 'shh' }))

app.use(logger('dev'));
app.use(express.json());
app.use(cors())
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(flash())
// Static files
app.use('/', indexRouter);
app.use('/dashboard', dashboardRouter)
app.use('/products', productsRouter)
app.use('/stores', storesRouter)
app.use('/customers', customersRouter)
// API for axios 

var apiRouter = require('./routes/api')
app.use('/api', apiRouter)

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
