module ApplicationHelper

  def documentation_link name, url
    link_to "#{ ui_glyph 'book' } #{ name }".html_safe, url
  end

  def extend_of_component name, component_link = nil
    #Tout comme ce dernier, le composant #{ content_tag :code, name } possède des #{ content_tag :code, 'options' } et des #{ content_tag :code, 'html_options' } présentes sous forme de hash.<br/>
    #Il hérite d'ailleurs des options présentes dans l'élement component.".html_safe
    "#{ short_extend_of_component(name, component_link) }<br>
    Like this one, the #{ content_tag :code, name } component has #{ content_tag :code, 'options' } and #{ content_tag :code, 'html_options' } present as hash.<br/>
    It inherits options of #{ link_to('component', components_component_path) } element.".html_safe
  end

  def short_extend_of_component name, component_link = nil
    "The #{ content_tag :code, name } component is an extension of #{ component_link || link_to('component', components_component_path) } element.".html_safe
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
    "#{ name} (inherit of #{ link_to 'component', components_path })".html_safe
  end

  def inherit_specific_component_link name, url
    "#{ name} (inherit of #{ link_to name, url })".html_safe
  end

  def based_on link
    "This component is based on the library #{ link }.".html_safe
  end

  def see_component url
    link_to "#{ ui_glyph 'eye' } See component".html_safe, url
  end

  def title name
    content_tag :h2, ui_glyph('diamond', label: name)
  end

  def tap_warning
    content_tag :p, class: "bd-callout bd-callout-warning" do
      concat content_tag :span, "Tap option: "
      concat "To add a block type, you must add <code>tap: true</code> to the card options.".html_safe
    end
  end

  def select_options_tags
    options_for_select(5.times.map{ |i| ["option #{i}", i] })
  end

  def simple_form_text_with_input input_name
    "Ui Bibz is compatible with #{ link_to "simple form", "https://github.com/plataformatec/simple_form", target: '_blank' }.
    You can use defaults inputs of <strong>Simple Form</strong> and defaults inputs of <strong>Ui Bibz</strong> like <code>#{ input_name }</code>. You can use Simple Form input options and Ui Bibz #{ input_name } options.".html_safe
  end
end
