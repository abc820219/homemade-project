const dbConfig = require('../util/dbconfig.js')
const getMember = (req, res) => {
    const { memberId } = req.session
    if(!memberId){
        res.send({
            status: 400,
            err: "尚未登入"
        })
        return
    }
    const sql = "select * from member where member_sid = ?"
    const placeholders = [memberId]
    const callback = (err, userData) => {
        if (err) {
            res.send({
                status: 400,
                err: err
            })
            return
        }
        if (err || !userData.length) {
            res.send({
                status: 400,
                err: '登入失敗'
            })
            return
        }
        const sql = "SELECT * FROM teacher_like tl inner join teacher t on tl.teacher_sid = t.teacher_sid where member_sid = ?"
        const placeholders = [memberId]
        const callback = (err, userLikeTeacher) => {
            if (err) {
                res.send({
                    status: 400,
                    err: err
                })
                return
            }
            if (err || !userData.length) {
                res.send({
                    status: 400,
                    err: '登入失敗'
                })
                return
            }
            const sql = "SELECT * FROM course_like cl inner join course c on cl.course_sid = c.course_sid where member_sid = ?"
            const placeholders = [memberId]
            const callback = (err, userLikeCourse) => {
                if (err) {
                    res.send({
                        status: 400,
                        err: err
                    })
                    return
                }
                res.send({
                    status: 200,
                    data: {
                        userInfo:userData[0],
                        teacher_like:userLikeTeacher,
                        course_like:userLikeCourse
                    },
                })
            }
            dbConfig.sqlConnect(sql, placeholders, callback)
        }
        dbConfig.sqlConnect(sql, placeholders, callback)
    }
    dbConfig.sqlConnect(sql, placeholders, callback)
}

const checkEmail = (email) => {
    return new Promise((resolve, rej) => {
        const sql = "select * from member where member_email = ?"
        const placeholders = [email]
        const callback = (err, data) => {
            if (err) {
                rej(err)
                return
            }
            resolve(data.length)
        }
        dbConfig.sqlConnect(sql, placeholders, callback)
    }).catch(err => {
        console.log(err)
    })
}

const loginMember = (req, res) => {
    const { email, password } = req.body
    const sql = "select * from member where member_email = ? and member_password = ?"
    const placeholders = [email, password]
    const callback = (err, data) => {
        if (err || !data.length) {
            res.send({
                status: 400,
                err: '登入失敗'
            })
            return
        }
        req.session.memberId = data[0].member_sid
        console.log(req.session)
        res.send({
            status: 200,
            data: data
        })
    }
    dbConfig.sqlConnect(sql, placeholders, callback)
}

const insertMember = async (req, res) => {
    const { email, name, password } = req.body
    const emailReg = /^[^[\]()\\<>:;,@.]+[^[\]()\\<>:;,@]*@[a-z0-9A-Z]+(([.]?[a-z0-9A-Z]+)*[-]*)*[.]([a-z0-9A-Z]+[-]*)+$/g
    if (emailReg.test(email) == false) {
        res.send({
            status: 400,
            err: 'Email格式錯誤'
        })
        return
    }
    if (!name || !password) {
        res.send({
            status: 400,
            err: '資訊未填寫'
        })
        return
    }
    const sql = "insert into member(member_email, member_password, member_name) values (?,?,?)"
    const placeholders = [email, name, password]
    const hasEmail = await checkEmail(email)
    if (hasEmail > 0) {
        res.send({
            status: 400,
            err: 'Email已註冊'
        })
        return
    }
    const callback = (err, data) => {
        if (err) {
            res.send({
                status: 400,
                err: '註冊失敗'
            })
            return
        }
        res.send({
            status: 200,
            data: data
        })
    }
    dbConfig.sqlConnect(sql, placeholders, callback)
}

const updateMember = (req, res) => {
    const id = req.session.memberId
    const { name, password, phone } = req.body
    const sql = "update member set member_password = ? , member_name = ?, member_phone = ? where  member_sid = ?"
    const placeholders = [password, name, phone, id]
    const callback = (err, data) => {
        if (err) {
            res.send({
                status: 400,
                err: '修改失敗'
            })
            return
        }
        res.send({
            status: 200,
            data: data
        })
    }
    dbConfig.sqlConnect(sql, placeholders, callback)
}

const logoutMember = (req, res) => {
    res.clearCookie('connect.sid');
    req.session.destroy((err) => {
        if (err) {
            res.send({
                status: 400,
                err: '登出失敗'
            })
            return
        }
        res.send({
            status: 200,
            data: '登出成功'
        })
    });
}

module.exports = {
    getMember,
    insertMember,
    updateMember,
    loginMember,
    logoutMember
}