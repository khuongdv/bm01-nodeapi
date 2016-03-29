var mongoose;
var app,router;
var Schema, CateSchema, Category;
exports.init = function(app,router,mongoose){
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
		res.json(getListCategory());   
	});
	
	router.put('/cate', function(req, res) {saveNewCategory(req,res)});
}
/**
 * Save category to DB
 * @author KhuongDV
 *
 */
function saveNewCategory (req, res){
	var cate = new Category;
	cate.name = req.body.name;
	cate.code = req.body.code;
	cate.update_datetime = new Date();
	cate.status = req.body.status;
	cate.save(function(err) {
		if (err)
			res.send(err);
		res.json({ message: 'Category ' + req.body.name + ' created!' });
	});
}

/**
 * Retrieve all categories in db
 * @author KhuongDV
 *
 */
function getListCategory(){
	// FIXME: implement code to get data from real database
	return [
		{
			"id":1,"name":"cate01"
		},
		{
			"id":2,"name":"cate02"
		}
	];
}

