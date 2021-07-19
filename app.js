const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const session = require('express-session')
const cors = require('cors')
const app = express();
const indexRouter = require('./routes/index');
const memberRouter = require('./routes/member');
const teacherRouter = require('./routes/teacher');
const courseRouter = require('./routes/course');
const likeRouter = require('./routes/like');
const bookRouter = require('./routes/book');
app.use(cors())
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session({
    secret: 'keyboard cat', //id
    resave: true, //是否生效
    saveUninitialized: true,
    cookie: {
        maxAge: 1000 * 60 * 60
    }
}))
app.use(express.static(path.join(__dirname, 'public')));
app.use('/', indexRouter);
app.use('/member', memberRouter);
app.use('/teacher', teacherRouter);
app.use('/course', courseRouter);
app.use('/like', likeRouter);
app.use('/book', bookRouter);
// 404
// app.use((req, res)=>{
//     res.status(404).send('404')
// })
// 錯誤處理
// app.use((err, req, res,next) => {
//     console.error(err.stack)
//     res.status(500).send('程式問題')
// })

app.get('*', (req,res) => res.sendFile(path.join(__dirname+'/public/index.html'))).listen(3000,'0.0.0.0')