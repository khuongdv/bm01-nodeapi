const SHA_SEED = "!@#FASFSA#DAGD$ADGAxzc_(*FA";
var crypto = null;
/**
Create MD5 hash from the input
Use this method to encode password before storing to DB
*/
function getMD5Hash(pass){
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
function generateToken(staffCode){
	if(crypto == null){
		 crypto = require('crypto');
	}
	var algorithm = 'aes256';	
	var text = "{'staffCode':'" +staffCode +"','loginat'='"+new Date().getTime() + "'}";
	var cipher = crypto.createCipher(algorithm, SHA_SEED);
	var token = cipher.update(text, 'utf8', 'hex') + cipher.final('hex');
	return token;
}
/**
Decrypt token to check its validity
*/
function decryptToken(token){
	if(crypto == null){
		 crypto = require('crypto');
	}
	var algorithm = 'aes256';		
	var decipher = crypto.createDecipher(algorithm, key);
	var decryptedText = decipher.update(token, 'hex', 'utf8') + decipher.final('utf8');
	try{
		var loginObject = JSON.parse(decryptedText);
		if(loginObject.staffCode != undefined && loginObject.staffCode != null){
			return loginObject;
		}
		else{
			throw 1;
		}
	}catch(e){
		return {
				'Status':false,
				'Message':'Invalid token. Cannot parse it.'
		}
	}
}

// Exports
exports.getMD5Hash = getMD5Hash;
exports.generateToken = generateToken;
exports.decryptToken = decryptToken;