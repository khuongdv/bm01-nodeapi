// These variables will be set/instantiated in init() method
var mongoose, encryptUtil;
var app,router;
var Schema, StaffSchema, StaffModel;
var dataUtil = require("../utils/dataUtil.js");
var MongoModel = require("../utils/mongoModels.js");

module.exports.init = function ($app, $router, $mongoose, $encryptUtil){
	console.log("[StaffService] - Initialization");
	mongoose = $mongoose;
	app = $app;
	router = $router;
	encryptUtil = $encryptUtil;	
	Schema = mongoose.Schema;
	StaffSchema = MongoModel.getSchema(Schema, "Staff");
	StaffModel = MongoModel.getModel(mongoose, StaffSchema,'StaffSchema');

	// Login
	router.post('/login', function (req, res){
		console.log("[StaffService] - Attemmpt to login");
		if(dataUtil.isEmpty(req.body.staffCode) || dataUtil.isEmpty(req.body.pass)){
			return {
				'Status':false,
				'Message': 'Username or password is empty'
			}
		}
		var staffCode = req.body.staffCode;
		var md5Pass = encryptUtil.getMD5Hash(req.body.pass);
		console.log("MD5 of input password: " + md5Pass);		
        StaffModel.findOne({
                'code': staffCode, 'password': md5Pass
            },
            'name code status birth date_start',
            function (err, staff){
                console.log("Staff: " + staff);
				if(err)
					res.json(err);
                else {
                    // Generate token
                    var token = encryptUtil.generateToken(staffCode);
                    // Save token to the staff in DB
                    staff.token = token;
                    staff.token_created_at = new Date();
                    StaffModel.update({ 'code': staffCode },
                        {"$set": {"token":token,"token_created_at":new Date()}},
                        {multi: false},
                        function (err, raw){
                        if (err) {
                            err.Status = false;
                                res.json(err)
                            }
                        })
                    // Return
					res.json({
						'Success':true,
						'token':token
					});
                }
            }
		);		
	});
	
    router.get('/logout', function (req, res) {
        var token = req.get('token');
        StaffModel.update({ 'token': token }, { '$set': { 'token': null } }, { 'multi': false }, function (err, raw) { 
            
        });
    });
}

// Get list staff having expired password
module.exports.getListStaffExpiredPsw = function() {
    var ret = [];

    return ret;
}

module.exports.StaffModel = StaffModel;
