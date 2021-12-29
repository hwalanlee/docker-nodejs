var express = require('express');
var app = express();
var port = 3000; 

app.get('/', function (req, res) { 
    res.send('I am inside the docker!')
});

app.listen(port, function () { 
    console.log("Port:", port);
});