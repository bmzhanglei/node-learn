const fs = require('fs')
const zlib = require('zlib')

const gzip = zlib.createGzip()

const readStream = fs.createReadStream('./logs.txt')
// const writeStream = fs.createWriteStream('./logs2.txt')
const writeStream = fs.createWriteStream('./logsx.gzip')

// readStream
//   .pipe(writeStream)

readStream
.pipe(gzip)
.pipe(writeStream)
  
