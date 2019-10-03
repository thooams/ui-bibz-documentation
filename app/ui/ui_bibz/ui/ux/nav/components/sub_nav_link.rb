module UiBibz::Ui::Ux::Nav::Components
  class SubNavLink < UiBibz::Ui::Core::Component

    # See UiBibz::Ui::Core::Component.initialize
    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    # Render html tag
    def render
      content_tag :li, link_to(@content, "##{ @content.parameterize }"), html_options
    end

  private

    def component_html_classes
      'nav-item'
    end
  end
end




