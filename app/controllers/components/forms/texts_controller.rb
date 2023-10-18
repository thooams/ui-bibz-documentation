class Components::Forms::TextsController < Components::FormsController

  def text_field
  end

  def auto_complete_field
  end

  def combobox_field
  end

  def combobox_list
    respond_to do |format|
      results = 5.times.map { |a| "Option #{a}" }.select{ |e| e.match(/#{params[:query]}/i) }
      format.html { render partial: 'components/forms/texts/combobox_list', locals: { autocomplete_results: results } }
    end
  end
end
