
// 导入express框架
const express = require('express')
// 创建express实例
const app = express()

const path = require('path');


// 导入cors  解决跨域问题
const cors = require('cors')
// 全局挂载
app.use(cors())


// Multer 是一个 node.js 中间件，用于处理 multipart/form-data 类型的表单数据，它主要用于上传文件。
const multer = require("multer");
// 在server服务端下新建一个public文件，在public文件下新建upload文件用于存放图片
const upload = multer({
	dest: './public/upload'
})
app.use(upload.any())
// 静态托管
app.use(express.static(path.join(__dirname, 'dist')));
app.use(express.static("./public"));
app.get('/', function (req, res) {
  res.sendFile(path.join(__dirname + '/dist/index.html'));
});


// 导入body-parser
const bodyParser = require('body-parser')
// parse application/x-www-form-urlencoded
// 当extended为false时，值为数组或者字符串，当为ture时，值可以为任意类型
app.use(bodyParser.urlencoded({
	extended: false
}))
// parse application/json
app.use(bodyParser.json())


app.use((req, res, next) => {
	// status=0为成功,=1为失败,默认设为1,方便处理失败的情况
	res.cc = (err, status = 1) => {
		res.send({
			status,
			// 判断这个error是错误对象还是字符串
			message: err instanceof Error ? err.message : err,
		})
	}
	next()
})

const jwtConfig = require('./jwt_config/index.js')
const {
	expressJwt: jwt
} = require('express-jwt')
// app.use(jwt({
// 	secret:jwtConfig.jwtSecretKey,algorithms:['HS256']
// }).unless({
// 	path:[/^\/api\//]
// }))

const loginRouter = require('./router/login')
const Joi = require('joi')
app.use('/api', loginRouter)
const userRouter = require('./router/userinfo.js')
app.use('/user', userRouter)
const setRouter = require('./router/setting.js')
app.use('/set', setRouter)
const productRouter = require('./router/product.js')
app.use('/pro', productRouter)
const messageRouter = require('./router/message.js')
app.use('/msg', messageRouter)
const fileRouter = require('./router/file.js')
app.use('/file', fileRouter)
const loginLogRouter = require('./router/login_log.js')
app.use('/llog', loginLogRouter)
const operationLogRouter = require('./router/operation_log.js')
app.use('/olog', operationLogRouter)
const overviewLogRouter = require('./router/overview.js')
app.use('/ov', overviewLogRouter)
const depMsgRouter = require('./router/department_msg.js')
app.use('/dm', depMsgRouter)

// 对不符合joi规则的情况进行报错
app.use((err,req, res, next) => {
	if (err instanceof Joi.ValidationError){
		return res.send({
			status: 1,
			message:'输入的数据不符合验证规则'
		})
	}
})

//全局中间件
app.use(function (err, req, res, next) {
	if (err.name === "UnauthorizedError") {
		res.send({
			status:401,
			message:'无效的Token',

		})
	}
	res.send({
			status:500,
			message:'未知的错误',
		}
	)
});

// 绑定和侦听指定的主机和端口
app.listen(3007, () => {
	console.log('http://127.0.0.1:3007')
})