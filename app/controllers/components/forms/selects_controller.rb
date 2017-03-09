class Components::Forms::SelectsController < ApplicationController

  before_action :get_countries
  before_action :get_new_user

  def multi_select_field
  end

  def multi_column_field
    if request.xhr?
      data = (params[:ids] || []).map do |i|
        [{ value: 1+i.to_i, text: "New option 1.#{ i }"}, { value: 6+i.to_i, text: "New option 2.#{ i }"}]
      end.flatten
      render json: data
    end
  end

  def dropdown_select_field
  end

  def select_field
    #render json: { "Europe" => [{ value: 1, text: 'New option 1'}, { value: 3, text: 'New option 3'}], "America" => [{ value: 2, text: 'New option 2'}]} if request.xhr?
    render json: [{ value: 1, text: 'New option 1'}, { value: 2, text: 'New option 2'}] if request.xhr?
  end

  private

  def get_countries
    @countries  = Country.all
    @continents = Continent.all
  end

  def get_new_user
    @user = User.new
  end

end
