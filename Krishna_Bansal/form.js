let nm;
let m;
let msg;
let subject;
function sendEmail() {
    nm = document.getElementById("fname").value;
    m = document.getElementById("lname").value;
    msg = document.getElementById("Message").value;
    subject = document.getElementById("subject").value;
    Email.send({
        Host: "smtp.elasticemail.com",
        Username: "dhrruvsharma@outlook.com",
        Password: "C7ADC34324CC8E2BB3E50849DA3A3322128F",
        To: 'krishnabansal583@gmail.com',
        From: "dhrruvsharma@outlook.com",
        Subject: "Someone contacted you",
        Body: "Name: " + nm + "<br> Email: " + m + "<br> subject: " + subject + "<br> Message: " + msg,
    })
        .then(function (message) {
            alert("mail sent successfully")
        })
}