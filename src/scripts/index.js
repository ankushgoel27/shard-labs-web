const menuButton = document.querySelector('.js-menu-button');

// Open and close menu
menuButton.addEventListener('click', () => {
    menuButton.classList.toggle('is-active');
})
