const express = require('express');
require('dotenv').config();
const port = process.env.port || 3000;
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');
const mongoose = require('mongoose');
const ChannelModel = require('./models/channel')
const dbUrl = process.env.url;

// mongo
const connectionParams = {
  useNewUrlParser: true,
  useUnifiedTopology: true
}

mongoose
  .connect(dbUrl, connectionParams)
  .then(()=>{
    console.info("connected")
})
  .catch((e) => {
    console.log("error:",e);
  });

var path = require('path');

const app = express();



app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));


// form
app.get("/contact", function(req,res){
  console.log("get");
  res.sendFile('public/contact.html' , { root : __dirname});
  

  

  
});

app.post('/contact', (req, res) => {
  console.log("post");
  const name = req.body.name;
  const email = req.body.email;
  const message = req.body.message;

  
  
  const channelModel = new ChannelModel();

  channelModel instanceof ChannelModel;
  channelModel instanceof mongoose.Model;
  channelModel instanceof mongoose.Document;

  channelModel.name = name;
  channelModel.email = email;
  channelModel.message = message;



console.log(channelModel.name);


var output;
(async () => {
   output = await channelModel.save();
  //  console.log(output);
})


channelModel.save().then(savedDoc => {
  savedDoc === channelModel;
  console.log(savedDoc);
});


  



let transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'ananyajain866@gmail.com',
    pass: `${process.env.pass}`
  }
});



let mailOptions = {
  
  to: 'ananyajain866@gmail.com',
  subject: "Contact page response",
  text: email +" " + message
  
};

transporter.sendMail(mailOptions,(error, info) => {
  if(error){
    console.log("error"+ error)
  }
  else{
    console.log("email send to:"+ mailOptions.to, info.response)
  }
})





});



app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
  // console.log("HEY")
});