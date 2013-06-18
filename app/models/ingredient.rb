class Ingredient < ActiveRecord::Base
  attr_accessible :name, :subtype_id, :type_id, :recipe_id
  has_many :recipes
end
