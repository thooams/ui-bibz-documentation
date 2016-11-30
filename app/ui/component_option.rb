module UiBibz::Ui::Ux
  class ComponentOption < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
      @items = []
    end

    def list name, types, examples = []
      @items << list_format(name, types, examples)
    end

    def status_link
      @items << list_format(option_link('status'), "symbol", %w(:danger :success :info :warning :primary :secondary))
    end

    def glyph_link
      @items << list_format(option_link('glyph'), %w(string hash))
    end

    def size_link
      @items << list_format(option_link('size'), 'symbol', %w(:lg :md :sm :xs))
    end

    def state_link
      @items << list_format(option_link('state'), 'symbol', %w(:disabled :active))
    end

    def tap_link
      @items << list_format('tap', 'boolean')
    end

    def render
      content_tag :div, class: 'component-options' do
        concat content_tag :h2, 'Options'
        concat "The specific options for this component are:"
        concat content_tag :ul, @items.join.html_safe
      end
    end

  private

    def list_format name, types, examples = []
      content_tag :li do
        concat content_tag :span, name, class: 'option-name'
        concat content_tag :span, types_list(types), class: 'option-types'
        concat content_tag :span, examples_list(examples), class: 'option-examples'
      end
    end

    def option_link opt
      link_to opt, components_path(anchor: opt)
    end

    def examples_list examples
      unless examples.empty?
        "(#{ [examples].flatten.join(', ') })"
      end
    end

    def types_list types
      "[#{ [types].flatten.join('/') }]"
    end

  end
end
