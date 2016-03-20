module UiBibz::Ui::Ux
  class Example < UiBibz::Ui::Core::Card

    def initialize content = nil, options = nil, html_options = nil, &block
      super
      @options = @options.merge({ tap: true})
      @items = [@content]
    end

    def code content = nil, options = nil, html_options = nil, &block
      @code = UiBibz::Ui::Core::Component.new(content, options, html_options, &block)
      @items << content_tag(:div, code_html, class: "card-block highlight")
    end

    def html content = nil, options = nil, html_options = nil, &block
      @html  = UiBibz::Ui::Core::Component.new(content, options, html_options, &block)
      @items << content_tag(:div, html_preview, class: "card-block highlight")
    end

  private

    def component_html_classes
      %w(card-code card)
    end

    def code_html
      formatter = Rouge::Formatters::HTML.new(css_class: 'highlight', wrap: false)
      lexer = Rouge::Lexers::Ruby.new
      content_tag :pre, ("\n" + formatter.format(lexer.lex(@code.content))).html_safe
    end

    def html_preview
      formatter = Rouge::Formatters::HTML.new(css_class: 'highlight', wrap: false)
      lexer = Rouge::Lexers::HTML.new
      content_tag :pre, ("\n" + formatter.format(lexer.lex(@html.content))).html_safe
    end

  end
end
