module UiBibz::Ui::Ux
  class MyComplexComponent < UiBibz::Ui::Core::Component

    # initialize component
    def initialize content = {}, options = {}, html_options = {}, &block
      super
      @items = []
    end

    # Render html
    def render
      content_tag :div, @items.map(&:render).join.html_safe, html_options
    end

    # add links
    def link content = nil, options = nil, html_options = nil, &block
      @items << UiBibz::Ui::Core::Navigations::Link.new(content, options, html_options, &block)
    end

    private

    def component_html_classes
      "my-complex-component"
    end

  end
end
