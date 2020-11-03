class ComponentItems < ComponentOption
  def render
    content_tag :div, class: 'component-options', id: 'component-items' do
      concat content_tag :h2, UiBibz::Ui::Core::Icons::Glyph.new('list', label: 'Items').render
      concat "The allowed items for this component are:"
      concat content_tag :ul, @items.sort.join.html_safe, class: 'list-options'
    end
  end
end
