window.addEventListener('DOMContentLoaded', function (e) {
  var button      = document.querySelector('.js-nav-button'),
      nav         = document.querySelector('.js-side-nav'),
      siteWrapper = document.querySelector('.js-site-wrapper');


      button.addEventListener('click', function (e) {
        e.preventDefault();
        this.classList.toggle('menu-close');
        siteWrapper.classList.toggle('open');
      });
});
