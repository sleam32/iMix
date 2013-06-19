class Ingredient < ActiveRecord::Base
  attr_accessible :name, :subtype_id, :type_id
  has_many :ingredient_recipes
  has_many :recipes, through: :ingredient_recipes
end
