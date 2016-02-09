require 'sections'
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
      content_tag :div, @items.join.html_safe, html_options
    end

  end
end
