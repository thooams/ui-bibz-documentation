class Example < UiBibz::Ui::Core::Boxes::Card

  def initialize content = nil, options = nil, html_options = nil, &block
    super
    @options = @options.merge({ tap: true})
    @pre_items = []
    @ruby_id = "ruby-#{ SecureRandom.uuid }"
    @html_id = "html-#{ SecureRandom.uuid }"
  end

  def code content = nil, options = nil, html_options = nil, &block
    @code = UiBibz::Ui::Core::Component.new(content, options, html_options, &block)
    @pre_items << content_tag(:div, code_html, class: "active card-body highlight tab-pane", id: @ruby_id)
  end

  def html content = nil, options = nil, html_options = nil, &block
    @html  = UiBibz::Ui::Core::Component.new(content, options, html_options, &block)
    @pre_items << content_tag(:div, html_preview, class: "card-body highlight tab-pane", id: @html_id)
  end

  def render
    # With footer block
    #@items.insert(@items.size - 1, content_tag(:div, code_nav, class: "card-block highlight"))
    #@items.insert(@items.size - 1, content_tag(:div, @pre_items.join.html_safe, class: 'tab-content'))
    @items << content_tag(:div, code_nav, class: "card-block highlight")
    @items << content_tag(:div, @pre_items.join.html_safe, class: 'tab-content')
    content_tag :div, html_structure, html_options
  end

private

  def html_structure
    [@header, @items.join, @footer].compact.join.html_safe
  end

  def code_nav
    UiBibz::Ui::Core::Navigations::Nav.new(type: :tabs).tap do |n|
      n.link @code.options[:title] || 'Ruby', url: "##{ @ruby_id }", state: :active
      n.link 'Html', url: "##{ @html_id }"  unless @html.nil?
    end.render
  end

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
