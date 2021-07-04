const mysql = require('mysql');
const connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',    
    password : 'z27089433',    //你的密碼（就是這個該死的密碼坑死我了）
    database : 'reactproject'    //你的資料庫
  });
connection.connect();
module.exports = {
    //連接db mysql的連接池
    sqlConnect: (sql, placeholders, callback) => {
        var pool = mysql.createPool({
            host: 'localhost',
            port: 3306,
            user: 'root',
            password: 'z27089433',
            database: 'reactproject'
        })
        pool.getConnection((err, conn) => {
            if(err){
                console.log('conn fail')
                return;
            }
            conn.query(sql,placeholders,callback); //請求
            conn.release() //斷開
        })
    }
}