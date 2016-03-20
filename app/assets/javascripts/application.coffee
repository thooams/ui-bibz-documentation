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
#= require turbolinks

# Fonction pour fixer le menu de droite lors du scrolling
$(window).scroll ->
  if $(this).scrollTop() > 370
    $('.secondary-nav').addClass 'fix-secondary-nav'
    $('.content').addClass 'fix-content'
  else
    $('.secondary-nav').removeClass 'fix-secondary-nav'
    $('.content').removeClass 'fix-content'
  return

# Smooth Scroll
$(document).on 'page:change', ->
  $('a[href*="#"]').on 'click', ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html, body').animate { scrollTop: target.offset().top }, 1000
        return false
    return
  return
