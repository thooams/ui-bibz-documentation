module ApplicationHelper

  def documentation_link name, url
    link_to "#{ glyph 'book' } #{ name }".html_safe, url
  end

  def glyph_and_text glyph_args, text
    "#{ glyph glyph_args } #{ text }".html_safe
  end

end
