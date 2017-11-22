module UiBibz::Ui::Ux
  class SubNav < UiBibz::Ui::Core::Navigations::Nav
    # See UiBibz::Ui::Core::Component.initialize
    def initialize content = nil, options = nil, html_options = nil, &block
      super
    end

    def link content = nil, options = {}, html_options = nil, &block
      block_given? ? content.merge!({ nav_type: type }) : options.merge!({ nav_type: type })
      @items << UiBibz::Ui::Ux::SubNavLink.new(content, options, html_options, &block)
    end

  end
end
