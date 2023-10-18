// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Rails from '@rails/ujs'
import UiBibz from 'ui_bibz_js'

Rails.start();

let uiBibzJs = new UiBibz
uiBibzJs.start()
