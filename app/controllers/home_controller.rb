class HomeController < ApplicationController
  layout "application", except: [:index]

  def index
  end

  def get_started
    layout 'application'
  end

end
