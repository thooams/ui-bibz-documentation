class Nav::SubNavLink < UiBibz::Ui::Core::Component
  # Render html tag
  def render
    content_tag :li, link_to(@content, "##{ @content.parameterize }"), html_options
  end

  private

  def component_html_classes
    'nav-item'
  end
end
