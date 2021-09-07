const crypto = require('crypto')

const password = '1'

const hash = crypto
  .createHash('md5')
  .update(password,'utf8') //有中文加 utf8
  .digest('hex')  //以16进制方式加密

console.log(hash)