'use strict'

const path        = require('path')
const express     = require('express')
const bodyParser  = require('body-parser')

const app = express()

app.set('view engine', 'jade');
app.set('views', path.join(__dirname, '..', 'views'));

app.use(express.static(path.join(__dirname, '..', 'public')))
app.use(bodyParser.json({extended: true}))

app.get('/', function (req, res) {
  res.render('index')
})

var data = []
app.post('/api/content', function (req, res) {
  let content = {
    id:    data.length + 1,
    title: req.body.title,
    text:  req.body.text,
  }
  data.push(content)
  res.json({status: 200, content: content})
})

function start() {
  app.listen(3000)
}

exports.start = start
