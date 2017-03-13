class Components::FormsController < ApplicationController

  before_action :get_new_user

  private

  def get_new_user
    @user = User.new
  end

end
