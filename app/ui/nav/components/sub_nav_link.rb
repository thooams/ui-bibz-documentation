module UiBibz::Ui::Ux
  class SubNavLink < UiBibz::Ui::Core::Component

    # See UiBibz::Ui::Core::Component.initialize
    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    # Render html tag
    def render
      content_tag :li, link_to(@content, "##{ @content.parameterize }"), class_and_html_options('nav-item')
    end
  end
end




