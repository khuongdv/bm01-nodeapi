// These variables will be set/instantiated in init() method
var mongoose, encryptUtil;
var app,router;
var Schema, StaffSchema, StaffModel;

function init($app, $router, $mongoose, $encryptUtil){
	mongoose = $mongoose;
	app = $app;
	router = $router;
	encryptUtil = $encryptUtil;	
	Schema = mongoose.Schema;
	StaffSchema = new Schema({
		"name": String,
		"code": String,
		"birth": Date,
		"gender": String,
		"password": String,
		"date_start": Date,
		"status": String
	},{ collection : 'staff' });	
	StaffModel = mongoose.model('StaffSchema', StaffSchema);
	
	// Login
	router.post('/login',function(req,res){
		if(isEmpty(req.body.staffCode) || isEmpty(req.body.pass)){
			return {
				'Status':false,
				'Message': 'Username or password is empty'
			}
		}
		var staffCode = req.body.staffCode;
		var md5Pass = encryptUtil.getMD5Hash(req.body.pass);
		console.log("MD5 of input password: " + md5Pass);		
		StaffModel.findOne({'code':staffCode, 'password':md5Pass},
						'name code status birth date_start',
						function(err,staff){
							console.log("Staff: " + staff);
							if(err)
								res.json(err);
							else{
								var token = encryptUtil.generateToken(staffCode);
								res.json({
									'Success':true,
									'token':token
								});
							}
						}
		);		
	});
	
}

// Check if value is empty
function isEmpty(value){
	if(value == undefined || value == null || value == '' || value.trim() == '')
		return true;
	return false;
}

// Exports:
exports.init = init;
