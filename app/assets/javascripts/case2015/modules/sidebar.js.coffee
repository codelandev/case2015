Case2015.Sidebar =
  init: ->
    button      = document.querySelector('.js-nav-button')
    siteWrapper = document.querySelector('.js-site-wrapper')

    button.addEventListener 'click', (e) ->
      e.preventDefault()
      this.classList.toggle('menu-close')
      siteWrapper.classList.toggle('open')
