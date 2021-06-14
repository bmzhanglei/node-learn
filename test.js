// let fs = require('fs')
// var zlib = require('zlib')
// const url = require("url")
// const http=require("http")
// const https=require("https")
// const querystring = require('querystring')

// const {event} = require("./event.js")
// const { on } = require('events')
// fs.createReadStream('./package-lock.json').pipe(zlib.createGzip()).pipe(fs.createWriteStream('test1.zip'));

// const val = process.env.npm_package_config_author

// console.log(process.env.NODE_ENV)

// const www = "http://www.baidu.com/a"

// // console.log(url.resolve(www,"../") )

// const server = http.createServer((request,response)=>{

// })

// const postData = querystring.stringify([{},{"catId":"5fe309e096ee9288ed504dd1"}])


// const options = {
//   protocol: 'https:',
//   hostname: 'www.xiaomiyoupin.com',
//   method: 'POST',
//   port: 443,
//   path: '/mtop/market/cat/detail',
//   headers: {
//     'Content-Type': 'application/json',  
//     'Content-Length': Buffer.byteLength(postData)  
//   }
// }
// function doPost(){
//   let data
//   let req = https.request(options, (res) => {
//     res.on('data', chunk => data += chunk)
//     res.on('end', () => {
//       console.log(data)
//     })
//   })
//   req.write(postData)
//   req.end()
// }
// setInterval(() => {
//   doPost()
// }, 1000)


//chrome://inspect/#devices  浏览器地址输入
//node --inspect --inspect-brk test.js
// server.listen(8088,()=>{
//     console.log("localhost:8088")
// })

// event.emit('play', '我和我的祖国')