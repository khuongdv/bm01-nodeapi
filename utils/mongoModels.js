module.exports.getSchema = function (Schema, collection){
    switch (collection) {
        case "Staff":
            return new Schema({
                "name": String,
                "code": String,
                "birth": Date,
                "gender": String,
                "password": String,
                "date_start": Date,
                "status": String,
                "token": String,
                "token_created_at": Date
            }, { collection : 'staff' });
            break;
        case "Category":
            return new Schema({
                "name": String,
                "code": String,
                "update_datetime": Date,
                "status": String
            }, { collection : 'category' });
            break;
        // and so on
    }
}

module.exports.getModel = function (mongoose, objSchema, customName) {
       return mongoose.model(customName, objSchema);
}