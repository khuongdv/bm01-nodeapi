'use strict';
// Constants
const SERVER_PORT = 8910;
// call the packages we need
var express    = require('express');        // call express
var app        = express();                 // define our app using express
var bodyParser = require('body-parser');
var mongoose = require("mongoose");
mongoose.connect('mongodb://localhost:27017/demoapp');
//---- Include custom dao
var cateService = require("./services/categoryService.js");
var bookService = require("./services/bookService.js");
var staffService = require("./services/staffService.js");
var promotionService = require("./services/promotionService.js");
var offerService = require("./services/orderService.js");
var encryptUtils = require("./utils/encryptUtils.js");
var dataUtils = require("./utils/dataUtil.js");



// configure app to use bodyParser()
// this will let us get the data from a POST
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
var router = express.Router();              // get an instance of the express Router

// Inject existing object to services
cateService.init(app,router,mongoose);
staffService.init(app,router,mongoose,encryptUtils);

// Start some job
var taskScheduler = require("./scheduler/taskScheduler.js");
taskScheduler.init(staffService, dataUtils);
taskScheduler.getPasswordExpirationScheduler().start();

// Filter request
app.all('*',function(req,res,next){	 
	if (req.url === '/' || req.url === '/api/login') return next();
    if(encryptUtils.isAuthenticated(req, staffService.StaffModel)){
        next();
    }else{
        next("Error: 401 - Not Authorized"); // 401 Not Authorized
    }
});
app.use('/api', router);
// Start the server
app.listen(SERVER_PORT);
console.log('Book management starting at port ' + SERVER_PORT);
