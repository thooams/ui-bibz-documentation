module ApplicationHelper

  def documentation_link name, url
    link_to "#{ glyph 'book' } #{ name }".html_safe, url
  end

  def extend_of_component name
    "#{ short_extend_of_component(name) }<br>
    Tout comme ce dernier, le composant #{ content_tag :code, name } possède des #{ content_tag :code, 'options' } et des #{ content_tag :code, 'html_options' } présents sous forme de hash.<br/>
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

end
