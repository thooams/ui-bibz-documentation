module ComponentsHelper

  def example content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::Example.new(content, options, html_options).tap(&block).render
  end

  def section content = nil, options = nil, html_options = nil, &block
    ::UiBibz::Ui::Ux::Section.new(content, options, html_options, &block).render
  end

end
