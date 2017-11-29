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

  def component_items content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::ComponentItems.new(content, options, html_options).tap(&block).render
  end

  def component_html_options content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::ComponentHtmlOption.new(content, options, html_options).tap(&block).render
  end

  def component_list_options content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::ComponentListOption.new(content, options, html_options).tap(&block).render
  end

  def my_complex_component content = nil, options = nil, html_options = nil, &block
    UiBibz::Ui::Ux::MyComplexComponent.new(content, options, html_options).tap(&block).render
  end
end
