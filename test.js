let fs = require('fs')
var zlib = require('zlib')
const url = require("url")
const http=require("http")
const https=require("https")
const querystring = require('querystring')

const {event} = require("./event.js")
const { on } = require('events')
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


const arr = [
    {name:"1-",id:1,pid:"0"},
    {name:"11-",id:11,pid:"1"},
    {name:"111-",id:111,pid:"11"},
    {name:"111xx-",id:1110,pid:"111"},
    {name:"1111-",id:1111,pid:"111"},
    {name:"11112-",id:1112,pid:"1111"},
    {name:"2-",id:2,pid:""},
    {name:"22-",id:22,pid:"2"},
    {name:"22xx",id:222,pid:"22"},
    {name:"22xxy",id:223,pid:"22"},
]



let obj = {}
arr.forEach(item=>{     
    obj[item.id] = item
    if(obj.pid === ""){
        obj[item.id].pid = "0"
    }  
})

function getParentData(ids=[],item){
    let {_,pid} = item
    const val =  obj[pid]
    if(val && pid){        
        ids.unshift(pid)      
        getParentData(ids,val)
    }       
    return ids
}

//arr 添加 pids
arr.forEach(item=>{
    if(item.pid === ""){
        item.pid = "0"
    }  
    item.pids = getParentData([],item)       
})

//objs 添加 pids
for(let i in obj){
    obj[i].pids = getParentData([],obj[i])     
}


function getChild(pids,index){
    if(pids.length){
       let one = trees[index].filter(res=>res.id===pids[0]) 

       
       if(pids[1]){
          const two = one.children.filter(res=>res.id===pids[1])
           if(pids[2]){
              const three = two.children.filter(res=>res.id===pids[2])
           }else{
               return two.children
           }
       }else{
           return one.children
       }



    }else{
       return trees[index].children
    }
}


function getChilds(pids,one){
    let child = one.children
    for(let i=1;i<pids.length;i++){       
        if(pids[i]){
           one = child.filter(res=>res.id===pids[i])
        }else{
            return one.children
        }
    }
}



trees.filter(res=>res.pids.length)

