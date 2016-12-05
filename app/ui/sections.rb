module UiBibz::Ui::Ux
  class Sections < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
      @items = []
      @names = []
    end

    def section content = nil, options = nil, html_options = nil, &block
      s = UiBibz::Ui::Ux::Section.new(content, options, html_options = nil, &block)
      @names << s.title
      @items << s.render
    end

    def names
      @names
    end

    def render
      content_tag :div, html_options do
        concat content_tag :h2, UiBibz::Ui::Core::Glyph.new('indent', label: 'Examples').render
        concat sentence
        concat @items.join.html_safe
      end
    end

  private

    def sentence
      "Some examples explain how to use the options present in the component."
    end

  end
end
