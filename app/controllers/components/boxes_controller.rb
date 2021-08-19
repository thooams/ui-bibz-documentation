class Components::BoxesController < ApplicationController

  def card
    @users = User.all.limit(3).table_search_pagination(params, session, per_page: 5)
  end

  def index
  end

  def card_column
  end

  def card_deck
  end

  def card_group
  end

  def jumbotron
  end

end
