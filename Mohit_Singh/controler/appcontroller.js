const nodemailer = require('nodemailer');
const Mailgen = require('mailgen');

const contact = (req, res) => {
    const { email, name, subject, txt } = req.body;
    let config = {
        service: 'Gmail',
        auth: {
            user: 'gauss10056@gmail.com',
            pass: '<PAAASSSSWOOORDDD>',
        },
    };

    let transporter = nodemailer.createTransport(config);
    let MailGenerator = new Mailgen({
        theme: 'default',
        product: {
            name: 'Mailgen',
            link: 'https://mailgen.js/',
        },
    });

    let response = {
        body: {
            name: name,
            intro: 'We have received your query, and our team will be in touch with you. We will do our best to help you. Thanks for choosing us.',
            table: {
                data: [
                    {
                        description: '⚡May the force be with you!⚡',
                    },
                ],
            },
            outro: 'Happy surfing!',
        },
    };

    let mail = MailGenerator.generate(response);
    let message = {
        from: 'gauss10056@gmail.com',
        to: email,
        subject: 'Customer Support Enquiry',
        html: mail,
    };

    transporter.sendMail(message, (error, info) => {
        if (error) {
            console.error('Error sending email: ', error);
            res.status(500).json({ success: false });
        } else {
            console.log('Email sent successfully' + info.response);
            res.status(200).json({ success: true });
        }
    });
};

module.exports = contact;
