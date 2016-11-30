module ComponentsHelper

  def example content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::Example.new(content, options, html_options).tap(&block).render
  end

  def section content = nil, options = nil, html_options = nil, &block
    ::UiBibz::Ui::Ux::Section.new(content, options, html_options, &block).render
  end

  def subnav content = nil, options = nil, html_options = nil, &block
    ::UiBibz::Ui::Ux::SubNav.new(content, options, html_options).tap(&block).render
  end

  def sections content = nil, options = nil, html_options = nil, &block
    ::UiBibz::Ui::Ux::Sections.new(content, options, html_options).tap(&block)
  end

  def code content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::Code.new(content, options, html_options, &block).render
  end

  def component_options content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::ComponentOption.new(content, options, html_options).tap(&block).render
  end
end
