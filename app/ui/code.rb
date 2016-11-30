module UiBibz::Ui::Ux
  class Code < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
      @is_not_block = block.nil?
    end

    def render
      ("<h2>Usage</h2>" + UiBibz::Ui::Core::Cards::Card.new(code_html, nil, class: 'highlight code').render).html_safe
    end

  private

    def formatter
      Rouge::Formatters::HTML.new
    end

    def lexer
      Rouge::Lexers::Ruby.new
    end

    def code_html
      Rouge::Formatters::HTMLPygments.new(formatter).format(lexer.lex(template))
    end

    def template
      if @is_not_block
        component_name = options[:component_name] || "content"
        "\n #{ content } #{ component_name }, options = {}, html_options = {} \n # or \n #{ content } options = {}, html_options = {} do \n   #{ component_name } \n end"
      else
        "\n#{ content }"
      end
    end

  end
end
