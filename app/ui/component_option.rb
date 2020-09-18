class ComponentOption < ComponentListOption
  def render
    content_tag :div, class: 'component-options', id: 'component-options' do
      concat content_tag :h2, UiBibz::Ui::Core::Icons::Glyph.new('sliders-h', label: 'Options').render
      concat "The specific options for this component are:"
      concat content_tag :ul, @items.join.html_safe, class: 'list-options'
    end
  end
end
