const express = require('express')
const app = express()

app.get('/', function(req, res) {
    res.json({
        version: "1.1.0",
        description: "Container nginx",
        maintainer: "Thiago Cruz<thagocruz@gmail.com>"
    })
})

const port = process.env.PORT || 3000;

app.listen(port, function(){
    console.log(`App runnning at port: ${port}`)
})