class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes
end
