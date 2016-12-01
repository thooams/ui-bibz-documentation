class ComponentsController < ApplicationController

  controllers = %w(index dropdown jumbotron label_etiquette alert_notify nav navbar progress modal core ux glyph)

  def table
    @users = User.all.limit(3).table_search_pagination(params, session)
  end

  def table_card
    @users = User.all.limit(10).table_search_pagination(params, session)
  end

  def breadcrumb
    @users = User.all.limit(3)
  end

end
