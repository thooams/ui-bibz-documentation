class ComponentListOption < UiBibz::Ui::Core::Component

  def initialize content = nil, options = nil, html_options = nil, &block
    super
    @items = []
  end

  def list name = nil, options = nil, html_options = nil, &block
    if UiBibz::Utils::Screwdriver.tapped?(block)
      options = {} if options.nil?
      options[:tree] = ComponentListOption.new.tap(&block).render
      @items << ComponentList::ComponentListOptionList.new(name, options, html_options).render
    else
      @items << ComponentList::ComponentListOptionList.new(name, options, html_options, &block).render
    end
  end

  def status_link
    list("status", { types: :symbol, values: UiBibzApp::Application::STATUSES.map{ |s| ":#{ s }" }, description: "(use component #{ option_link('status') } method)" })
  end

  def cache_link
    list("cache", { types: :string, description: "(use to #{ option_link('cache') } your component)" })
  end

  def stimulus_controller_link
    list("controller", { types: :string, description: "(use component #{ option_link('stimulus-options') } method)" })
  end

  def stimulus_action_link
    list("action", { types: :string, description: "(use component #{ option_link('stimulus-options') } method)" })
  end

  def stimulus_target_link
    list("target", { types: :string, description: "(use component #{ option_link('stimulus-options') } method)" })
  end

  def turbolinks_link
    list("turbolinks", { types: :string, description: "(use component #{ option_link('turbolinks') } method)" })
  end

  def glyph_link
    list('glyph', { types: %w(string hash), description: "(use component #{ option_link('glyph') } method)" })
  end

  def table_link
    list(link_to("table_options", components_tables_table_path), { types: :hash })
  end

  def size_link
    list('size', { types: :symbol, values: UiBibzApp::Application::SIZES.map{ |a| ":#{a}" }, description: "(use component #{ option_link('size') } method)" })
  end

  def popover_link
    list('popover', { types: [:string, :hash], description: "(use component #{ option_link('popover') } method)" })
  end

  def tooltip_link
    list('tooltip', { types: [:string, :hash], description: "(use component #{ option_link('tooltip') } method)" })
  end

  def state_link
    list('state', { types: :symbol, values: %w(:disabled :active), description: "(use component #{ option_link('state') } method)" })
  end

  def html_link
    list('html', { types: %i[html string], description: "Insert html as a component"})
  end

  def append_and_prepend_list
    list('append', types: 'html', description: "Add a content before the field")
    list('prepend', types: 'html', description: "Add a content after the field")
  end

  def inherit_component name = nil, path = nil, other_name = nil
    list(name, description: inherit_component_link(other_name || name, path))
  end

  def render
    content_tag :ul, @items.sort.join.html_safe, class: 'list-options'
  end

  def inherit_options_links(except: [])
    status_link unless except.include?(:status)
    glyph_link unless except.include?(:glyph)
    cache_link unless except.include?(:cache)
    state_link unless except.include?(:state)
    size_link unless except.include?(:size)
    popover_link unless except.include?(:popover)
    tooltip_link unless except.include?(:tooltip)
    stimulus_controller_link unless except.include?(:stimulus_controller)
    stimulus_target_link unless except.include?(:stimulus_target)
    stimulus_action_link unless except.include?(:stimulus_action)
    turbolinks_link  unless except.include?(:turbolinks)
  end

private

  def inherit_component_link name = nil, path = nil
    "(inherit of #{ link_to(path.nil? ? 'component' : name, path || component_path) })"
  end

  def option_link opt
    link_to opt, component_path(anchor: opt)
  end
end
