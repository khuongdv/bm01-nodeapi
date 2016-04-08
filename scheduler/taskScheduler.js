'use strict';
var staffService, dataUtils;
/**
 * arg0: staffService
 * arg1: dataUtils 
 * 
 */
module.exports.init = function(arg0, arg1) {
    staffService = arg0;
    dataUtils = arg1;
}



module.exports.getPasswordExpirationScheduler = function() {
    var CronJob = require('cron').CronJob;
    var job = new CronJob({
        cronTime: '00 30 11 * * *',
        onTick: function () {
            doCheckAndSendEmail();
        },
        start: false       
    });
    return job;
}

//  Browse all staffs to check if his password is gonna be expired. If so, send email to ask him to change psw
function doCheckAndSendEmail(){
    var listExpired = staffService.getListStaffExpiredPsw();
    if (dataUtils.isArrayEmpty(listExpired)) {
        return;
    }
    // bat dau gui mail
    for (var obj in arr) {
        if (obj != undefined && obj != null && typeof obj == 'object') {
            var staffName = obj.name;
            var email = obj.email;
            requestChangePassword(staffName, email);
        }
    }
}
// Send email for requesting change passowrd of staffName
function requestChangePassword(staffName, email){
    // Send email to staffName
}
