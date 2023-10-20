//------------------------------------------------hamburger start-------------------------------------------------------//

const hamburger = document.querySelector("#menu");
const navmenu = document.querySelector(".nav-menu");


hamburger.addEventListener("click", () =>{
    hamburger.classList.toggle("active");
    navmenu.classList.toggle("active");
})

document.querySelectorAll(".nav-link").forEach(n => n.addEventListener("click" , () => {
    hamburger.classList.remove("active");
    navmenu.classList.remove("active");
}))

//---------------------------------------------hamburger end-------------------------------------------------------------//

//--------------------------------------------email valadition----------------------------------------------------------//

const nameinput = document.querySelector("#name");
const email = document.querySelector("#email");
const message = document.querySelector("#message");
const success = document.querySelector("#success");
const errornodes = document.querySelectorAll(".error");

function validateform(){

    clearmessages();

    if(nameinput.value.length < 1){
        errornodes[0].innerText = "*Name cannot be blank ";
        nameinput.classList.add("error-border");
    }

    if(!emailisvalid(email.value)){
        errornodes[1].innerText = "*Invalid email address ";
        email.classList.add("error-border");
    }

    if(message.value.length < 1){
        errornodes[2].innerText = "*Please enter message";
        message.classList.add("error-border");
    }
}
//-----------------------------------------------------clear error / success message ----------------------------------------//


function clearmessages(){
    for(let i=0 ; i< errornodes.length;i++){
        errornodes[i].innerText="";
    }
    nameinput.classList.remove("error-border");
    email.classList.remove("error-border");
    message.classList.remove("error-border");
}

//------------------------------------------------------check if email is valid---------------------------------------------//

function emailisvalid(email){
    let pattern =/\S+@\S+\.\S+/;
    return pattern.test(email);
}