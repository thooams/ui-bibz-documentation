## This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
##

#= require ui_bibz
#= require anchor.min

uiBibz = new UiBibz()
uiBibz.ready()

# Fonction pour fixer le menu de droite lors du scrolling
$(window).scroll ->

  header = $('header').outerHeight(true) # taille <header>
  pageheader = $('body > .pageheader').outerHeight(true) # taille <div class="pageheader">

  startContainer = header + pageheader # début du .container

  if $(this).scrollTop() > startContainer
    $('.secondary-nav').addClass 'fix-secondary-nav'
  else
    $('.secondary-nav').removeClass 'fix-secondary-nav'
  return

# Smooth Scroll secondary nav
$(document).on 'ready page:change', ->
  scrollTop = localStorage.getItem('scrollTop') || 0
  $('.sidebar').animate { scrollTop: scrollTop }, 0
  $('.sidebar').scroll ->
    localStorage.setItem('scrollTop', $(this).scrollTop())

  anchors.options = { icon: "#", visible: 'always' }
  anchors.add('.section > h3')
  $('.section > h3').wrapInner("<div></div>")
  $('.secondary-nav>.nav>.nav-item>a[href*="#"]').on 'click', ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html, body').animate { scrollTop: target.offset().top }, 1000
        return false
    return
  return

jQuery(document).on 'ready page:change page:load turbolinks:load', ->
  offset = 220
  duration = 500
  jQuery(window).scroll ->
    if jQuery(this).scrollTop() > offset
      jQuery('.back-top').fadeIn duration
    else
      jQuery('.back-top').fadeOut duration
    return
  jQuery('.back-top').click (event) ->
    event.preventDefault()
    jQuery('html, body').animate { scrollTop: 0 }, duration
    false
  return
