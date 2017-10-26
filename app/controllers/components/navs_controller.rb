class Components::NavsController < ApplicationController

  def nav
  end

  def navbar
    @user = User.new params[:user].nil? ? {} : inputs_params
  end

  private

  def inputs_params
    params.require(:user).permit(:name, :country_id, :price, :company, :price_formula, email: [])
  end

end
