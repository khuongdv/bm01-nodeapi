
var mongoose, encryptUtil;
var app, router;
var Schema, BookSchema, BookModel;
var dataUtil = require("../utils/dataUtil.js");
var MongoModel = require("../utils/mongoModels.js");
var Q = require("q");


const ITEM_PER_PAGE = 10;
const STATUS = {
    STATUS_DELETE: 0,
    STATUS_ACTIVE: 1
}

module.exports.init = function ($app, $router, $mongoose, $encryptUtil) {
    console.log("[BookService] - Initialization");
    mongoose = $mongoose;
    app = $app;
    router = $router;
    encryptUtil = $encryptUtil;
    Schema = mongoose.Schema;
    BookSchema = MongoModel.getSchema(Schema, "Book");
    BookModel = MongoModel.getModel(mongoose, BookSchema, 'BookSchema');
    
    app.route('/book')
    .post(function (req, res) {
        console.log("[BookService] - Update book");
        // TODO: check existence first, and then update
    })
    .put(function (req, res) {
        console.log("[BookService] - Create new book");
        // Check if bookcode exists?
        var code = req.body.data.code;
        if (checkIfCodeExist(code)) {
            console.log("[BookService]addNewBook - Book code " + code + " does exist" );
            res.json({
                Status: false,
                Message : "Book with code = [" + code + "] is now existing in DB" 
            });
        };
        // Save to db
        saveNewBook(req.body.data).then(
            function (data) {
                res.json(data);
            },
			function (err) {
                res.json(err);
            }
        );
    })
    .delete(function (res, req) {
        console.log("[BookService] - Delete book");
        var code = req.body.data.code;
        deleteBook(code).then(
            function (data) {
                res.json(data);
            },
			function (err) {
                res.json(err);
            }
        );
    });
    
    router.get("/book/list/:page", function (req, res) {
        var page = req.params.page;
        var cate = req.body.data.cateCode
        getListBookByPage(page, cateCode).then(
            function (data) {
                res.json(data);
            },
			function (err) {
                res.json(err);
            }
        );
    })
    router.get("/book/view/:code", function (req, res) {
        var code = req.params.code;
        BookModel.findOne({
            "code": code
        }, function (err, data) {
            if (err) {
                err.Status = false;
                res.json(err);
            } else {
                if (data == undefined || data == null) {
                    req.json({
                        Status : true,
                        Data: data
                    });
                } else {
                    req.json(
                        { Status: false, Message: "No book found with code = " + code }
                    );
                }
            }
        })
    });
    router.post("/book/addtoorder/:code/:quantity", function (err, res) { 
        
    })
}

// Private methods
// Get list book of a cate, in specific page
function getListBookByPage(page, cate) {
    var defer = Q.defer();
    BookModel.find({ cate_code : cate },
        null,
        { skip: (page - 1) * ITEM_PER_PAGE, limit: ITEM_PER_PAGE },
        function (err, results) {
        if (err) {
            defer.reject(err);
        } else {
            defer.resolve(results);
        }
    }    
    );
    return defer.promise;
}

// Delete book
function deleteBook(code) {
    var defer = Q.defer();
    updateBookProperty(code, "Status", STATUS.STATUS_DELETE).then(
        function (data) {
            defer.resolve(data);
        },
		function (err) {
            defer.reject(err);
        }
    );
    return defer.promise;
}
// Update specific field of a book 
function updateBookProperty(code, fieldName, value) {
    var defer = Q.defer();
    BookModel.update({ "code": code }, { "$set": { fieldName: value } }, null, function (err, rs) {
        if (err) {
            defer.reject(err);
        }
        else
            defer.resolve(data);
    });
    return defer.promise;
}

// Add new book to DB
function addNewBook(data){
    var defer = Q.defer();
    var book = new BookModel(data);
    book.CreateAt = new Date();
    book.Status = STATUS.STATUS_ACTIVE;
    book.save(function (err) {
        if (err)
            defer.reject(err);
        else
            defer.resolve({ message: 'Book ' + data.name + ' created!', Status: true });
    });
    return defer.promise;
}