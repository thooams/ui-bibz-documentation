module ApplicationHelper

  def documentation_link name, url
    link_to "#{ glyph 'book' } #{ name }".html_safe, url
  end

  def extend_of_component name
    "#{ short_extend_of_component(name) }<br>
    Tout comme ce dernier, le composant #{ content_tag :code, name } possède des #{ content_tag :code, 'options' } et des #{ content_tag :code, 'html_options' } présentes sous forme de hash.<br/>
    Il hérite d'ailleurs des options présentes dans l'élement component.".html_safe
  end

  def short_extend_of_component name
    "Le composant #{ content_tag :code, name } est une extension de l'élément #{ link_to 'component', components_components_path }.".html_safe
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

end
