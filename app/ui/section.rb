module UiBibz::Ui::Ux
  class Section < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    def render
      content_tag :section, class_and_html_options('section') do
        concat content_tag :a, nil, name: title.parameterize
        concat content_tag html_tag, title
        concat @content
      end
    end

    def html_tag
      @options[:tag] || :h2
    end

    def title
      @options[:title]
    end

  end
end
