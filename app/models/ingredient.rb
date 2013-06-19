class Ingredient < ActiveRecord::Base
  attr_accessible :name, :subtype_id, :type_id
  has_and_belongs_to_many :recipes
end
