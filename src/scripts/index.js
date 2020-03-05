const menuButton = document.querySelector('.js-menu-button');
const overlay = document.querySelector('.js-overlay');

// Open and close menu
menuButton.addEventListener('click', () => {
    menuButton.classList.toggle('is-active');
    overlay.classList.toggle('overlay--is-active');

    document.body.classList.toggle('no-scroll');
})
