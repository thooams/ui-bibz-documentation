module ComponentsHelper

  def example content = nil, options = nil, html_options = nil, &block
    Example.new(content, options, html_options).tap(&block).render
  end

  def section content = nil, options = nil, html_options = nil, &block
    Section.new(content, options, html_options, &block).render
  end

  def subnav content = nil, options = nil, html_options = nil, &block
    SubNav.new(content, options, html_options).tap(&block).render
  end

  def sections content = nil, options = nil, html_options = nil, &block
    Sections.new(content, options, html_options).tap(&block)
  end

  def code content = nil, options = nil, html_options = nil, &block
    Code.new(content, options, html_options, &block).render
  end

  def component_options content = nil, options = nil, html_options = nil, &block
    ComponentOption.new(content, options, html_options).tap(&block).render
  end

  def component_items content = nil, options = nil, html_options = nil, &block
    ComponentItems.new(content, options, html_options).tap(&block).render
  end

  def component_html_options content = nil, options = nil, html_options = nil, &block
    ComponentHtmlOption.new(content, options, html_options).tap(&block).render
  end

  def component_list_options content = nil, options = nil, html_options = nil, &block
    ComponentListOption.new(content, options, html_options).tap(&block).render
  end

  def my_complex_component content = nil, options = nil, html_options = nil, &block
    MyComplexComponent.new(content, options, html_options).tap(&block).render
  end
end
