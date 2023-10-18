const express=require('express');
const appRoute = require('./route/route.js')
const PORT = process.env.PORT || 5000;
const bodyParser = require('body-parser');
const mongodb = require('mongodb');

var dbConn = mongodb.MongoClient.connect('mongodb+srv://mohit:<PAAASSSSWOOORDDD>@cluster0.b2eekyh.mongodb.net/?retryWrites=true&w=majority');

const app=express();

app.use(express.static('public'));
app.use(express.json())

app.get('/',(req,res)=>{
    res.sendFile(__dirname+'/public/index.html')
})
app.use('/api', appRoute);

app.post('/api/contact',(req, res) =>{
    dbConn.then(function(db) {
        delete req.body._id;
        db.collection('data').insertOne(req.body);
    });    
    res.send('Data received:\n' + JSON.stringify(req.body));
});


app.listen(PORT,()=>{
    console.log("server running at port",PORT)
})

