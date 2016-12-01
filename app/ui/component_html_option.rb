module UiBibz::Ui::Ux
  class ComponentHtmlOption < ComponentListOption

    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    def render
      content_tag :div, class: 'component-options' do
        concat content_tag :h2, UiBibz::Ui::Core::Glyph.new('code', text: 'Html Options').render
        concat "The specific html options for this component are:"
        concat content_tag :ul, @items.join.html_safe
      end
    end

  end
end
