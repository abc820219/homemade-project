const dbConfig = require('../util/dbconfig.js')

const getTeachers = (req, res) => {
    const sql = "select * from teacher"
    const placeholders = []
    const callback = (err, data) => {
        if (err) {
            res.send({
                status:400,
                err: err
            })
            return
        }
        res.send({
            status:200,
            data: data
        })
    }
    dbConfig.sqlConnect(sql, placeholders, callback)
}


module.exports = {
    getTeachers,
}