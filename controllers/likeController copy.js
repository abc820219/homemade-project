// // SELECT * FROM teacher_like tl inner join course t on tl.teacher_sid = t.teacher_sid where member_sid = 80
const dbConfig = require('../util/dbconfig.js')
const getLikeTeachers = (req, res) => {
    const { memberId } = req.session
    const sql = "SELECT * FROM teacher_like tl inner join teacher t on tl.teacher_sid = t.teacher_sid where member_sid = ?"
    const placeholders = [memberId]
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
const getLikeCourses = (req, res) => {
    const { memberId } = req.session
    const sql = "SELECT * FROM course_like cl inner join course c on cl.course_sid = t.course_sid where member_sid = ?"
    const placeholders = [memberId]
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
const isTeacherLikeHandler = (memberId, teacherId) => {
    return new Promise((resolve, reject) => {

        const sql = "SELECT * FROM teacher_like WHERE member_sid = ? AND teacher_sid = ?"
        const placeholders = [memberId, teacherId]
        const callback = (err, data) => {
            if (err) {
                res.send({
                    status: 400,
                    err: err
                })
                reject(err)
                return
            }
            if (data.length) {
                return resolve(true)
            }
            return resolve(false)
        }
        dbConfig.sqlConnect(sql, placeholders, callback)
    })
}
const isCourseLikeHandler = (memberId, courseId) => {
    return new Promise((resolve, reject) => {

        const sql = "SELECT * FROM course_like WHERE member_sid = ? AND course_sid = ?"
        const placeholders = [memberId, courseId]
        const callback = (err, data) => {
            if (err) {
                res.send({
                    status: 400,
                    err: err
                })
                reject(err)
                return
            }
            if (data.length) {
                return resolve(true)
            }
            return resolve(false)
        }
        dbConfig.sqlConnect(sql, placeholders, callback)
    })
}
const insertLikeTeacher = async (req, res) => {
    const { memberId } = req.session
    const { teacherId } = req.body
    let sql = null
    let flag = await isTeacherLikeHandler(memberId, teacherId)
    if (!flag) {
        sql = "insert into teacher_like (member_sid, teacher_sid, status) value (?,?,1)"
    } else {
        sql = "update teacher_like set status = 1 where member_sid = ? and teacher_sid = ?"
    }
    const placeholders = [memberId, teacherId]
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
const insertLikeCourse = async (req, res) => {
    const { memberId } = req.session
    const { courseId } = req.body
    let sql = null
    let flag = await isCourseLikeHandler(memberId, courseId)
    if (!flag) {
        sql = "insert into course_like (member_sid, course_sid, status) value (?,?,1)"
    } else {
        sql = "update course_like set status = 1 where member_sid = ? and course_sid = ?"
    }
    const placeholders = [memberId, courseId]
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

const removeLikeTeacher = (req, res) => {
    const { memberId } = req.session
    const { teacherId } = req.body
    const sql = "update teacher_like set status = 0 where member_sid = ? and teacher_sid = ?"
    const placeholders = [memberId, teacherId]
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
const removeLikeCourse = (req, res) => {
    const { memberId } = req.session
    const { courseId } = req.body
    const sql = "update teacher_like set status = 0 where member_sid = ? and course_sid = ?"
    const placeholders = [memberId, courseId]
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
    getLikeTeachers, insertLikeTeacher, removeLikeTeacher, getLikeCourses,
    removeLikeCourse, insertLikeCourse
}