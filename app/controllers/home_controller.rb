class HomeController < ApplicationController
  layout "application", except: [:index]

  def index
  end

  def get_started
    layout 'application'
  end

  def theme
    @users = User.all.table_search_pagination(params, session)
  end

end
