const express = require("express")

// 常量
const PORT = 8088
const HOST = '127.0.0.1'

// App
const app = express()
app.get('/', (req,res)=>{
  res.send('Hello Robbie YOYOYO~')
})

app.listen(PORT,HOST)

console.log(`Server Running on http://${HOST}:${PORT}`)