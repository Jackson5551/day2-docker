const { urlencoded } = require('express')
const express = require('express')
const pug = require('pug')
const hostname = require('os').hostname()
const app = express()
const PORT = 8080

app.set('views', './views')
app.set('view engine', 'pug')
app.use(express.static('./public'))
app.use(urlencoded({ extended: false }))

app.get('/', (req,res)=>{
    res.render('index', {
        hostname: hostname
    })
})

app.listen(PORT, '0.0.0.0', ()=>{
    console.log('Listening on port',PORT)
})