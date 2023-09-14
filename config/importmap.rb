# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin 'ui_bibz_js', to: 'ui_bibz_js.js', preload: true
pin '@rails/ujs', to: 'https://ga.jspm.io/npm:@rails/ujs@7.0.1/lib/assets/compiled/rails-ujs.js'
