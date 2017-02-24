class Components::Forms::SelectsController < ApplicationController

  def multi_select_field
  end

  def multi_column_field
  end

  def dropdown_select_field
  end

  def select_field
    render json: [{ value: 1, text: 'New option 1'}, { value: 2, text: 'New option 2'}] if request.xhr?
  end

end
