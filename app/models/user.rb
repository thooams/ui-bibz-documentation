class User < ApplicationRecord
  include UiBibz::Concerns::Models::Searchable

  # Constants
  GLYPH = 'user'

  # Attr_accessor
  searchable_attributes :email
  self.per_page = 3

  # Associations
  belongs_to :country

  # Validations

  # Delegation

  # Methods

end
