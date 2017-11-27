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

  def custom_component
  end

  def simple_form
    @user = User.new params[:user].nil? ? {} : inputs_params
  end

  private

  def inputs_params
    params.require(:user).permit(:name, :country_id, :price, :company, :price_formula, email: [])
  end

end
