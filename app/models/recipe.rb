class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name
  # has_many :recipe_ingredients
  has_many :ingredients
end
