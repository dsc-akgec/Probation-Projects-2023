document.getElementById('contactForm').addEventListener('submit', function (e) {
    e.preventDefault(); 

    
    var emailInput = document.getElementById('email');
    var emailValue = emailInput.value.trim();

  
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;


    if (!emailPattern.test(emailValue)) {
        document.getElementById('error-message').textContent = 'Invalid email address';
        emailInput.focus(); 
    } else {
        document.getElementById('error-message').textContent = ''; 
    
    document.getElementById('confirmation-message').style.display = 'block';

    document.getElementById('error-message').textContent = '';

    document.getElementById('name').value = '';
    document.getElementById('email').value = '';
    document.getElementById('subject').value = '';
    document.getElementById('message').value = '';

    document.getElementById('name').focus();
    }
});
document.querySelector('.buyNowButton').addEventListener('click', function () {
    
    var thankingMessage = 'Thank you for your purchase! Your order has been placed.';
    var newTab = window.open('', '_blank');
    
    newTab.document.write('<h1>' + thankingMessage + '</h1>');
    
    newTab.document.close();
});
function openNewTabWithMessage() {
    var thankingMessage = 'Thank you for your Response! Your will be Acknowledge soon.';
    var newTab = window.open('', '_blank');
    
    newTab.document.write('<h1>' + thankingMessage + '</h1>');
   
    newTab.document.close();
}

var buyNowButtons = document.querySelectorAll('.Know');
buyNowButtons.forEach(function (button) {
    button.addEventListener('click', openNewTabWithMessage);
});
