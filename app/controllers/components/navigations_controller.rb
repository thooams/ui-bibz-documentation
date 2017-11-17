class Components::NavigationsController < ApplicationController

  def nav
  end

  def navbar
    @user = User.new params[:user].nil? ? {} : inputs_params
  end

  def toolbar
  end

  def pagination
  end

  def tab_group
  end

  def breadcrumb
    @users = User.all.limit(3)
  end

  private

  def inputs_params
    params.require(:user).permit(:name, :country_id, :price, :company, :price_formula, email: [])
  end

end
