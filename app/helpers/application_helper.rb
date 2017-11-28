module ApplicationHelper

  def documentation_link name, url
    link_to "#{ ui_glyph 'book' } #{ name }".html_safe, url
  end

  def extend_of_component name, component_link = nil
    #Tout comme ce dernier, le composant #{ content_tag :code, name } possède des #{ content_tag :code, 'options' } et des #{ content_tag :code, 'html_options' } présentes sous forme de hash.<br/>
    #Il hérite d'ailleurs des options présentes dans l'élement component.".html_safe
    "#{ short_extend_of_component(name, component_link) }<br>
    Like this one, the #{ content_tag :code, name } component has #{ content_tag :code, 'options' } and #{ content_tag :code, 'html_options' } present as hash.<br/>
    It inherits options of #{ link_to('component', component_path) } element.".html_safe
  end

  def short_extend_of_component name, component_link = nil
    "The #{ content_tag :code, name } component is an extension of #{ component_link || link_to('component', component_path) } element.".html_safe
  end

  def active_icon record
    record.active ? ui_glyph('check-circle', state: :success) : ui_glyph('alert')
  end

  def itag text, link
    link_to(ui_glyph_and_text('tag', text), link)
  end

  def add_sections_titles array, text = nil
    array = array.map{ |i| "#{ text } #{i}"} unless text.nil?
    @sections = array
    @titles   = array.clone
  end

  def getbootstrap_doc url
    link_to('Bootstrap doc', "http://v4-alpha.getbootstrap.com/#{ url }", target: '_blank')
  end

  def nav_active_link path
    url_for(controller: controller_name, action: action_name) == path ? :active : nil
  end

  def nav_options path
    { url: path, state: nav_active_link(path) }
  end

  def inherit_component_link name
    "#{ name} (inherit of #{ link_to 'component', component_path })".html_safe
  end

  def inherit_specific_component_link name, url, other_name = nil
    "#{ name} (inherit of #{ link_to (other_name || name), url })".html_safe
  end

  def based_on link
    "This component is based on the library #{ link }.".html_safe
  end

  def see_component url
    link_to "#{ ui_glyph 'eye' } See component".html_safe, url
  end

  def spacer_values
    ("Spacer values: " + content_tag(:ul) do
      concat content_tag :li, 'nil'
      concat content_tag :li, 'auto'
      5.times.each do |i|
        concat content_tag(:li, i+1)
      end
    end).html_safe
  end

  def position_description
    content_tag :div do
      concat "The <code>position</code> option has following symbols for argument:".html_safe
      concat content_tag :ul, %w(left center right).map{ |size| content_tag(:li, ":#{ size }") }.join.html_safe
    end
  end

  def title name, display_ui = true, logo_name = 'bootstrap'
    content_tag :h2 do
      concat ui_glyph('diamond', label: name)
      concat content_tag :span, "(ui_#{ name.parameterize.underscore })" if display_ui
      concat bootstrap_or_ui_bibz_logo logo_name                         if display_ui
    end
  end

  def tap_warning
    warning_message "Tap option: ", "To add a block type, you must add <code>tap: true</code> to the card options."
  end

  def warning_message title, content
    content_tag :p, class: "bd-callout bd-callout-warning" do
      concat content_tag :span, title
      concat content.html_safe
    end
  end

  def select_options_tags
    options_for_select(5.times.map{ |i| ["option #{i}", i] })
  end

  def simple_form_text_with_input input_name
    "Ui Bibz is compatible with #{ link_to "simple form", "https://github.com/plataformatec/simple_form", target: '_blank' }.
    You can use defaults inputs of <strong>Simple Form</strong> and defaults inputs of <strong>Ui Bibz</strong> like <code>#{ input_name }</code>. You can use Simple Form input options and Ui Bibz #{ input_name } options.".html_safe
  end

  def size_description
    content_tag :div do
      concat "The <code>size</code> option has following symbols for argument:".html_safe
      concat content_tag :ul, UiBibzApp::Application::SIZES.map{ |size| content_tag(:li, ":#{ size }") }.join.html_safe
    end
  end

  def status_description
    content_tag :div do
      concat "The <code>status</code> option has following symbols for argument:".html_safe
      concat content_tag :ul, UiBibzApp::Application::STATUSES.map{ |status| content_tag(:li, ":#{ status }") }.join.html_safe
    end
  end

  def exclusiveness
    ui_badge('Exclu.', { status: :danger }, { title: 'Ui Bibz exclusiveness'})
  end

  def bootstrap_or_ui_bibz_logo name = 'bootstrap'
    image_tag "#{ name.parameterize }-icon.png", class: 'icon-indicator', title: "#{ name.titleize } component"
  end
end
