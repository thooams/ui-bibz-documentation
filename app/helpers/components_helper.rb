module ComponentsHelper

  def example content = nil, options = nil, html_options = nil, &block
    ::UiBibz::Ui::Ux::Example.new(content, options, html_options).tap(&block).render
  end

end
