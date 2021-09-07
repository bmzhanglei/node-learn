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

// const url = require('url')
// const querystring = require('querystring')
// const urlString = 'https://www.baidu.com:443/ad/index.html?id=8&name=mouse#tag=110'
// const parsedStr = url.parse(urlString)
// console.log(parsedStr.query)
// const q = querystring.parse(parsedStr.query) 
// console.log(querystring.stringify(q))
// const https = require('https')
// https.get('https://maoyan.com/films/644174', (res) => {
//   let str = ''
//   res.on('data', (chunk) => {
//     str += chunk
//   })
//   res.on('end', () => {
//     console.log(str)
//   })
// })

// const logger = require('../../utils/log')
const querystring = require('querystring')

const http = require('http')
const https = require('https')

const server = http.createServer((request, response) => {
  // const url = request.url
  // logger.debug(response)
  // debugger;
  // let data = ''
  // request.on('data', (chunk) => {
  //   data += chunk
  // })
  // request.on('end', () => {
    
  // })

  https.get('https://maoyan.com/films/644174', (result) => {
    let data = ''
    result.on('data', (chunk) => {
      data += chunk
    })
    result.on('end', () => {
      response.writeHead(200, {
        // 'content-type': 'application/json;charset=utf-8'
        'content-type': 'html/plain'
      })
      response.write(data)
      response.end()
    })
  })

})

server.listen(8080, () => {
  console.log('localhost:8080')
})