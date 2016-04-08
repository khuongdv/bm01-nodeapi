'use strict';
module.exports.isEmpty = function (str) {
    return str != undefined && str != null && str.trim() != '';
}

module.exports.isArrayEmpty = function (arr) {
    if (arr === undefined || arr === null) {
        return true;
    }
    if (!(arr instanceof Array) || arr.length == 0) {
        return true;
    }
    return false;
}