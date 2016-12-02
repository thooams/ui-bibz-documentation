module UiBibz::Ui::Ux
  class ComponentListOptionLink < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    def render
      content_tag :li do
        link_to content, options[:url]
      end
    end

  end
end
