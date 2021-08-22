const dbConfig = require('../util/dbconfig.js')

const getBooking = (req, res) => {
    const month = req.body.month
    console.log(month)
    const sql = "select * from booking inner join course on booking.booking_course_id = course.course_sid inner join teacher on booking.booking_teacher_id = teacher.teacher_sid where booking.booking_month = ?"
    const placeholders = [month]
    const callback = (err, data) => {
        if (err) {
            res.send({
                status: 400,
                err: err
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

const getOneBooking = (req, res) => {
    const sid = req.body.sid
    const sql = "select * from booking inner join course on booking.booking_course_id = course.course_sid inner join teacher on booking.booking_teacher_id = teacher.teacher_sid Where booking.booking_sid = ?"
    const placeholders = [sid]
    const callback = (err, data) => {
        if (err) {
            res.send({
                status: 400,
                err: err
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

const insertBooking = (req, res) => {
    console.log(req.body)
    const prime = req.body.prime
    const people = req.body.people
    const book_sid = req.body.sid
    const { memberId } = req.session
    const sql = "insert into booked (member_sid, booking_sid, prime,people) values (?,?,?,?)"
    const placeholders = [memberId, book_sid, prime, people]
    const callback = (err, data) => {
        if (err) {
            res.send({
                status: 400,
                err: err
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




module.exports = {
    getBooking,
    getOneBooking,
    insertBooking
}