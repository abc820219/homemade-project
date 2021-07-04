var dbConfig = require('../util/dbconfig.js')
// demo 台灣縣市
demo = (req, res) => {
    var sql = "select * from area"
    var sqlArr = []
    var callback = (err, data) => {
        if (err) {
            console.log("conn err")
            return
        }
        res.send({
            "list": data
        })
    }
    dbConfig.sqlConnect(sql, sqlArr, callback);
}

// 獲取指定sid縣市
getOneDemo = (req, res) => {
    let { id } = req.query
    var sql = `select * from area where area_sid=?`
    var sqlArr = [id,3]
    var callback = (err, data,field) => {
        if (err) {
            console.log("conn err",err)
            return
        }
        res.send({
            "list": data
        })
    }
    dbConfig.sqlConnect(sql, sqlArr, callback);
}

module.exports = {
    demo,
    getOneDemo
}