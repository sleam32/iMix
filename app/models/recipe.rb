class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name, :ingredients
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes
end
