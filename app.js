const express = require('express'),
      createError = require('http-errors'),
      path = require('path'),
      logger = require('morgan'),
      cors = require('cors'),
      apiRouter = require('./routes/api'),
      dashboardRouter = require('./routes/dashboard'),
      productsRouter = require('./routes/products'),
      storesRouter = require('./routes/stores'),
      customersRouter = require('./routes/customers')

// Initialize application
const app = express()

// Basic express-pug setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
app.use(logger('dev'));
app.use(express.json());
app.use(cors())
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

// Basic routing
app.get('/', (req, res) => { res.redirect('/dashboard'); });
app.use('/dashboard', dashboardRouter)
app.use('/products', productsRouter)
app.use('/stores', storesRouter)
app.use('/customers', customersRouter)

// Only json responses for charts etc
app.use('/api', apiRouter)

// catch 404 and forward to error handler
app.use( (req, res, next) => {
  next(createError(404));
});

// error handler for development mode
app.use( (err, req, res, next) => {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  res.status(err.status || 500).render('error')
});

module.exports = app;
