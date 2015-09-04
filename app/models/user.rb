class User < ActiveRecord::Base
  include UiBibz::Concerns::Models::Searchable

  # Constants
  GLYPH = 'user'

  # Attr_accessor
  searchable_attributes :name

  # Associations

  # Validations

  # Delegation

  # Methods

end
