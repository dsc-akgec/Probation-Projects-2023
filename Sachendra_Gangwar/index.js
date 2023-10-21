function clearErrors() {
    var errors = document.getElementsByClassName('formerror');
    for (var i = 0; i < errors.length; i++) {
        errors[i].innerHTML = "";
    }
  }
  
  function seterror(id, error) {
    document.getElementById(id).nextElementSibling.innerHTML = error;
  }
  
  function validateForm() {
    var returnval = true;
    clearErrors();
    var name = document.forms['myForm']["fname"].value;
    if (name.length < 5) {
        seterror("name", "*Length is too small");
        returnval = false;
    }
  
    if (name.length === 0) {
        seterror("name", "*Length Can't be Zero");
        returnval = false;
    }
  
    var email = document.forms['myForm']["femail"].value;
    if (email.length > 30 || email.length < 4) {
        seterror("mail", "*Invalid email length");
        returnval = false;
    }
  
    var subject = document.forms['myForm']["fsubject"].value;
    if (subject.length === 0) {
        seterror("subject", "*Subject is required");
        returnval = false;
    }
  
    var comment = document.forms['myForm']["fcomment"].value;
    if (comment.length === 0) {
        seterror("comment", "*Comment is required");
        returnval = false;
    }
  
    if (returnval) {
        alert('Your message has been received');
        document.forms['myForm'].reset();
    }
   
  }
 





