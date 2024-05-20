/**
 * 引入Joi模块
 * Joi是一个用于验证的对象关系映射（ORM）库，它允许你定义数据的模式，并对输入数据进行验证和清理。
 * 它在验证API请求、表单数据等方面非常有用。
 *
 * @param 无
 * @return 无
 */
const joi = require('joi')

// string值只能为字符串
// alphanum值为a-z A-Z 0-9
// min是最小长度 max是最大长度
// required是必填项
// pattern是正则

// 账号的验证
const account = joi.string().alphanum().min(6).max(12).required()
// 密码的验证
const password = joi.string().pattern(/^(?![0-9]+$)[a-z0-9]{1,50}$/).min(6).max(12).required()

exports.login_limit ={
	// 表示对req.body里面的数据进行验证
	body:{
		account,
		password
	}
}