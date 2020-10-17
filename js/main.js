(() => {
//burger menu
var button = document.querySelector("#button");
var burgerCon = document.querySelector("#c-burgerCon");

function hamburgerMenu(){
    burgerCon.classList.toggle("slideToggle");
    button.classList.toggle("expanded");
}
        button.addEventListener("click", hamburgerMenu);

})();
