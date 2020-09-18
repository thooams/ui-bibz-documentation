class ComponentHtmlOption < ComponentListOption
  def render
    content_tag :div, class: 'component-html-options', id: 'component-html-options' do
      concat content_tag :h2, UiBibz::Ui::Core::Icons::Glyph.new('code', label: 'Html Options').render
      concat "The specific html options for this component are:"
      concat content_tag :ul, @items.join.html_safe, class: 'list-options'
    end
  end
end
