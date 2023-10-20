const products = document.querySelector(".products");
const submit = document.querySelector(".submitted");
const productsList = ['Chairs', 'Tables', 'Couches', 'Beds', 'Almirahs', 'Sofas'];
const emailInput = document.querySelector(".email");
const contactForm = document.querySelector(".contact_form");
const Form = document.querySelector(".form");
const Close=document.querySelector(".close")
const Close1=document.querySelector("#close1");
const Close2=document.querySelector("#close2");
const Close3=document.querySelector("#close3");
const PriceChair=document.querySelector(".pricechair");
const PriceTable=document.querySelector(".pricetable");
const PriceSofa=document.querySelector(".pricesofa");
const PriceBed=document.querySelector(".pricebed");
const Chair=document.querySelector("#chair");
const Table=document.querySelector("#table");
const Sofa=document.querySelector("#sofa");

function updateProductList(index) {
  setTimeout(() => {
    products.innerHTML = productsList[index];
    updateProductList((index + 1) % productsList.length);
  }, 1000);
}
updateProductList(0);


contactForm.addEventListener('submit', function (event) {
    event.preventDefault(); 
    if (isValidEmail(emailInput.value)) {
        submit.style.display="flex";
        contactForm.reset(); 
    } else {
        alert("Wrong Email.....")
        
    }
});

function isValidEmail(email) {
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    return emailPattern.test(email);
}
Close.addEventListener('click',function(){
  submit.style.display="none";
});
Close1.addEventListener('click',function(){
  PriceChair.style.display="none";
});
Close2.addEventListener('click',function(){
  PriceTable.style.display="none";
});
Close3.addEventListener('click',function(){
  PriceSofa.style.display="none";
});

Chair.addEventListener('click',function(){
  PriceChair.style.display="block";
  PriceTable.style.display="none";
  PriceSofa.style.display="none";
});
Table.addEventListener('click',function(){
  PriceTable.style.display="block";
  PriceChair.style.display="none";
  PriceSofa.style.display="none";
});
Sofa.addEventListener('click',function(){
  PriceChair.style.display="none";
  PriceTable.style.display="none";
  PriceSofa.style.display="block";
});
Bed.addEventListener('click',function(){
  PriceChair.style.display="none";
  PriceTable.style.display="none";
  PriceSofa.style.display="none";
  PriceBed.style.display="block"
});
