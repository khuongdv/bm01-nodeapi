const SHA_SEED = "!@#FASFSA#DAGD$ADGAxzc_(*FA";
var crypto = null;
var Q = require("q");
/**
Create MD5 hash from the input
Use this method to encode password before storing to DB
*/
module.exports.getMD5Hash = function (pass){
	if(crypto == null){
		 crypto = require('crypto');
	}
	var hashPass = crypto.createHash('md5').update(pass).digest('hex');
	return hashPass;
}
/*
Use this method to generate token to send back to client. Beside, save this token to DB
Every request from client that have valid token will be accepted.
*/
module.exports.generateToken = function (staffCode){
	console.log("[EncryptUtil] - generateToken for " + staffCode);
	if(crypto == null){
		 crypto = require('crypto');
	}
	var algorithm = 'aes256';	
	var text = '{"staffCode":"' +staffCode +'","loginat":"'+new Date().getTime() + '"}';
	var cipher = crypto.createCipher(algorithm, SHA_SEED);
	var token = cipher.update(text, 'utf8', 'hex') + cipher.final('hex');
	return token;
}
/**
Decrypt token to check its validity
*/
module.exports.decryptToken = function (token){
	console.log("[EncryptUtil] - Decrypt token : " + token);
	if(crypto == null){
		 crypto = require('crypto');
	}
	var algorithm = 'aes256';		
	var decipher = crypto.createDecipher(algorithm, SHA_SEED);	
	var decryptedText = decipher.update(token, 'hex', 'utf8') + decipher.final('utf8');
	console.log("Decrypted text: " + decryptedText);
	try{
		var loginObject = JSON.parse(decryptedText);		
		if(loginObject.staffCode != undefined && loginObject.staffCode != null){
			loginObject.Status = true;
			return loginObject;
		}
		else{
			console.log("Fake data");
			throw 1;
		}
	}catch(e){
		return {
				'Status':false,
				'Message':'Invalid token. Cannot parse it.'
		}
	}
}
//--- Check if request has valid token
module.exports.isAuthenticated = function (req, StaffModel){
	console.log("[EncryptUtil] - Check if the request is authenticated");
	var token = req.get('token');
	if(token == undefined || token == null) {
		return false;
	}
	var extractedData = decryptToken(token);	
    if (typeof (extractedData) == "object" && extractedData.Status == true) {
        // Now check the token and staffCode if co-exist together
        var staffCode = extractedData.staffCode;
        StaffModel.findOne({ 'token': token, 'code': staffCode }, function (err, data) {
            // PENDING
        })
		return true;
	}
	return false;
}
