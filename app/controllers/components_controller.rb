class ComponentsController < ApplicationController

  def index
  end

  def dropdown
  end

  def jumbotron
  end

  def label_etiquette
  end

  def alert_notify
  end

  def progress
  end

  def table
    @users = User.all.limit(3).table_search_pagination(params, session)
  end

  def table_card
    @users = User.all.limit(10).table_search_pagination(params, session)
  end

  def core
  end

  def ux
  end

  def glyph
  end

  def breadcrumb
    @users = User.all.limit(3)
  end

end
