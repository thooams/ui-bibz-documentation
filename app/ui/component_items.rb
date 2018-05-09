#require File.join(Rails.root,'app', 'ui', 'component_option')
module UiBibz::Ui::Ux
  class ComponentItems < ComponentOption

    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    def render
      content_tag :div, class: 'component-options', id: 'component-items' do
        concat content_tag :h2, UiBibz::Ui::Core::Icons::Glyph.new('list', label: 'Items').render
        concat "The allowed items for this component are:"
        concat content_tag :ul, @items.join.html_safe, class: 'list-options'
      end
    end

  end
end
