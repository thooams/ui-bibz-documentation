// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require ui_bibz
//= require turbolinks

var scrollBottom = $(window).scrollTop() + $(window).height(); // Valeur de retour absurde => inutilisable
// Test height
//alert($(window).height());
// methode top() not found ...
//alert($('footer').offset().top);

//var offset = $("footer").offset().left;

// Fonction pour fixer le menu de droite lors du scrolling
$(window).scroll(function() {
	if ($(this).scrollTop() > 370) {
    //$('.left-nav').addClass('fix-left-nav');
		$('.secondary-nav').addClass('fix-secondary-nav');
		$('.content').addClass('fix-content');
  } else {
    //$('.left-nav').removeClass('fix-left-nav');
		$('.secondary-nav').removeClass('fix-secondary-nav');
		$('.content').removeClass('fix-content');
  }

	// Non fonctionnel
	// Trouver la hauteur du footer pour fixer le menu de gauche (left-nav) lorsque le scroll arrive au footer
	/*if ($(this).scrollBottom > 0) {
		$('.left-nav').removeClass('fix-left-nav');
	}*/
});
