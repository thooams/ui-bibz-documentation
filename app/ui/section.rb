module UiBibz::Ui::Ux
  class Section < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

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
      @options[:tag] || :h2
    end

  end
end
