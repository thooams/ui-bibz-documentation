class Section < UiBibz::Ui::Core::Component

  def render
    content_tag :section, html_options do
      concat content_tag :a, nil, name: title.parameterize
      concat content_tag html_tag, title
      concat @content
    end
  end

  def title
    @options[:title]
  end

  private

  def component_html_classes
    'section'
  end

  def html_tag
    @options[:tag] || :h3
  end

end
