
console.clear();
const app = (() =>{
    let body;
    let menu;
    let menuItems;

    const init = () => {
        body = document.querySelector('body');
        menu = document.querySelector('.menu-icon');
        menuItems = document.querySelectorAll('.nav__list-item');

        applyListeners();
    }

const applyListeners = () => {
    menu.addEventListeners('click', () => toggleClass(body, 'nav-active'));
}

const  toggleClass = (element, stringClass) => {
    if(element.classList.contains(stringClass));
    else
    element.classList.add(stringClass);
}
init();

})();









