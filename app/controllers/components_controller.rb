class ComponentsController < ApplicationController
  def index
  end

  def dropdowns
  end

  def jumbotron
  end

  def labels_etiquettes
  end

  def alerts_notify
  end

  def navs
  end

  def navbars
  end

  def progresses
  end

  def modals
  end

  def tables
    @users = User.all.limit(3).table_search_pagination(params, session)
  end

  def tables_cards
    @users = User.all.limit(10).table_search_pagination(params, session)
  end

  def core
  end

  def ux
  end

  def glyph
  end

  def breadcrumbs
    @users = User.all.limit(3)
  end

end
