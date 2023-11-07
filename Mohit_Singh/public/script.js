const contactForm = document.querySelector('.contact-form');
let name = document.getElementById('name');
let email = document.getElementById('email');
let subject = document.getElementById('subject');
let message = document.getElementById('message');

contactForm.addEventListener('submit', (e) => {
    e.preventDefault();
    let formData = {
        name: name.value,
        email: email.value,
        subject: subject.value,
        txt: message.value,
    };
    fetch('/api/contact', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(formData),
    })
        .then((response) => response.json())
        .then((data) => {
            if (data.success) {
                alert('Message sent successfully');
            } else {
                alert('Error sending the message');
            }
        })
        .catch((error) => {
            alert('Error sending the message');
        });
});