var mongoose;
var app,router;
var Schema, CateSchema, Category;
var Q = require("q");

exports.init = function(app,router,mongoose){
	console.log("[CategoryService] - Initialization");
	this.app = app;
	this.router = router;
	this.mongoose = mongoose;
	Schema = mongoose.Schema;
	CateSchema = new Schema({
		"name": String,
		"code": String,
		"update_datetime": Date,
		"status": String
	},{ collection : 'category' });	
	Category = mongoose.model('CateSchema', CateSchema);
	
	router.get('/cate/list', function(req, res) {
		console.log("[CategoryService] - List out all categories");
		Category.find({}, function(err, users) {		
			res.json(users);  
		});		  
	});
	
	router.put('/cate', function(req, res) {	
		console.log("[CategoryService] - Create new category");
		saveNewCategory(req).then(
			function (data) { 
				res.json(data);
			},
			function (err) { 
				res.json(err);
			}
		);
	});
	
	router.post("/cate", function (req, res) {
		console.log("[CategoryService] - Update category");
		updateCategory(req).then(
			function (data) {
				res.json(data);
			},
			function (err) {
				res.json(err);
			}
		);
	});
	router.delete("/cate", function (req, res) {
		console.log("[CategoryService] - Delete category");
		deleteCategory(req).then(
			function (data) {
				res.json(data);
			},
			function (err) {
				res.json(err);
			}
		);
	});
}

// Delete category from DB
function deleteCategory(req) {
	var data = req.body.data;
	var defer = Q.defer();	
	if (data.code == undefined || data.code == null || data.code == '') {
		defer.reject(getNotExistObjectMessage("No category code found"));
	} else {
		Category.find({ "code": req.body.data.code }, function (err, data) {
			if (err) {
				defer.reject(err);
			} else {
				if (data == undefined || data == null || data.length == 0) {
					defer.reject(getNotExistObjectMessage("Category " + data.code + " does not exist"));
				}
				else {
					Category.remove({ "code": req.body.data.code }, function (err) {
						if (err) {
							defer.reject(getNotExistObjectMessage("Delete category " + data.code + " not successful"));
						} else {
							defer.resolve({ message: 'Category ' + data.code + ' deleted!', Status: true });
						}
					});					
				}
			}
		});
	}
	return defer.promise;
}

// Update existing category
function updateCategory(req){	
	var defer = Q.defer();		
	var updateData = {
		"update_datetime": new Date(),
		"name": req.body.data.name,
		"code": req.body.data.code,
		"status": req.body.data.status
	};
	Category.find({ "code": req.body.data.code }, function (err, data) {		
		if (err) {
			defer.reject(err);
		} else {
			if (data == undefined || data == null || data.length == 0) { 
				defer.reject(getNotExistObjectMessage("Category " + req.body.data.code+ " does not exist"));
			}
			else{
				Category.update({ "code": req.body.data.code }, { "$set": updateData }, { multi: false }, function (err, raw) {
					if (err) {
						console.log("[CategoryService][E]: Error updating category ");
						defer.reject(err);
					} else {
						console.log("[CategoryService] Update category " + req.body.data.name + " successfully");
						defer.resolve({ message: 'Category ' + req.body.data.name + ' updated!', Status: true });
					}
				});
			}
		}
	});
	
	return defer.promise;
}

/**
 * Save category to DB
 * @author KhuongDV
 *
 */
function saveNewCategory (req){
	
	var defer = Q.defer();		
	var cate = new Category(req.body.data);	
	cate.update_datetime = new Date();	
	cate.save(function(err) {
		if (err)
			defer.reject(err);
		else 
		        defer.resolve({ message: 'Category ' + req.body.name + ' created!', Status: true });
	});
	return defer.promise;
}

function getNotExistObjectMessage(msg) {
	return { message: msg, Status: false }
}
