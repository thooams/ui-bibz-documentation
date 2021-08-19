class Components::TablesController < ApplicationController
  def table
    @users = User.all.limit(3).table_search_pagination(params, session, per_page: 5)
  end

  def table_card
    @users = User.all.limit(10).table_search_pagination(params, session, per_page: 5)
  end
end
