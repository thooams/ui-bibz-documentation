class Components::Forms::SelectsController < ApplicationController

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
    render json: [{ value: 1, text: 'New option 1'}, { value: 2, text: 'New option 2'}] if request.xhr?
  end

end
