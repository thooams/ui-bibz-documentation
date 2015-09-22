module UiBibz::Ui::Ux
  class Example < UiBibz::Ui::Core::Card

    def initialize content = nil, options = nil, html_options = nil, &block
      super
      @items = [@content]
    end

    def code content = nil, options = nil, html_options = nil, &block
      @code = UiBibz::Ui::Core::Component.new(content, options, html_options, &block)
      @items << content_tag(:div, code_html, class: "card-footer")
    end

    private

    def code_html
      content_tag :pre do
        content_tag :code, @code.content
      end
    end

  end
end
