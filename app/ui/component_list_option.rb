module UiBibz::Ui::Ux
  class ComponentListOption < UiBibz::Ui::Core::Component

    def initialize content = nil, options = nil, html_options = nil, &block
      super
      @items = []
    end

    def list name, types, examples = [], options = {}
      @items << list_format(name, types, examples, options)
    end

    def status_link
      @items << list_format(option_link('status'), "symbol", UiBibzApp::Application::STATUSES)
    end

    def glyph_link
      @items << list_format(option_link('glyph'), %w(string hash))
    end

    def table_link
      @items << list_format(link_to("table_options", components_table_path), %w(hash))
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
      content_tag :ul, @items.join.html_safe, class: 'list-options'
    end

  private

    def list_format name, types, examples = [], options = {}
      content_tag :li do
        concat content_tag :span, name, class: 'option-name'
        concat content_tag :span, types_list(types), class: 'option-types'
        concat content_tag :span, examples_list(examples), class: 'option-examples' unless examples.empty?
        concat content_tag :span, required_field unless options[:required].nil?
      end
    end

    def option_link opt
      link_to opt, components_path(anchor: opt)
    end

    def examples_list examples
      "(<code>#{ [examples].flatten.join(', ') }</code>)".html_safe
    end

    def types_list types
      "[#{ [types].flatten.join('/') }]"
    end

    def required_field
      UiBibz::Ui::Core::Tag.new('Required', status: :danger).render
    end

  end
end
