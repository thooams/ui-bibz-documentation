module ApplicationHelper

  def documentation_link name, url
    link_to "#{ glyph 'book' } #{ name }".html_safe, url
  end

  def extend_of_component name, component_link = nil
    #Tout comme ce dernier, le composant #{ content_tag :code, name } possède des #{ content_tag :code, 'options' } et des #{ content_tag :code, 'html_options' } présentes sous forme de hash.<br/>
    #Il hérite d'ailleurs des options présentes dans l'élement component.".html_safe
    "#{ short_extend_of_component(name, component_link) }<br>
    Like this one, the #{ content_tag :code, name } component has #{ content_tag :code, 'options' } and #{ content_tag :code, 'html_options' } present as hash.<br/>
    It inherits options of #{ link_to('component', components_components_path) } element.".html_safe
  end

  def short_extend_of_component name, component_link = nil
    "The #{ content_tag :code, name } component is an extension of #{ component_link || link_to('component', components_components_path) } element.".html_safe
  end

  def active_icon record
    record.active ? glyph('check-circle', state: :success) : glyph('alert')
  end

  def itag text, link
    link_to(glyph_and_text('tag', text), link)
  end

  def add_sections_titles array, text = nil
    array = array.map{ |i| "#{ text } #{i}"} unless text.nil?
    @sections = array
    @titles   = array.clone
  end

  def getbootstrap_doc url
    link_to('Bootstrap doc', "http://v4-alpha.getbootstrap.com/#{ url }")
  end

  def nav_active_link path
    url_for(controller: controller_name, action: action_name) == path ? :active : nil
  end

  def option_link opt
    link_to opt, components_path(anchor: opt)
  end

  def status_link
    "#{ option_link('status') } (<code>:danger, :success, :info, :warning, :primary, :secondary</code>)"
  end

  def glyph_link
    "#{ option_link('glyph') } (<code>String || Hash</code>)"
  end

  def size_link
    "#{ option_link('size') } (<code>:lg, :md, :sm, :xs</code>)"
  end

  def state_link
    "#{ option_link('state') } (<code>:disable, :active</code>)"
  end

  def inherit_component_link name
    "#{ name} (inherit of #{ link_to 'component', components_path })"
  end

  def inherit_specific_component_link name, url
    "#{ name} (inherit of #{ link_to name, url })"
  end

end
