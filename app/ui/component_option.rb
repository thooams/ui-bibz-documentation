#require File.join(Rails.root,'app', 'ui', 'component_list_option')
module UiBibz::Ui::Ux
  class ComponentOption < ComponentListOption

    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    def render
      content_tag :div, class: 'component-options', id: 'component-options' do
        concat content_tag :h2, UiBibz::Ui::Core::Icons::Glyph.new('sliders-h', label: 'Options').render
        concat "The specific options for this component are:"
        concat content_tag :ul, @items.join.html_safe, class: 'list-options'
      end
    end

  end
end
