class Recipe < ActiveRecord::Base
  attr_accessible :drink_name, :state, :user_name, :ingredients
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  def self.search_by(text)
    where(user_name: text)
  end

  def ingredients_list
    'Whiskey, Sour Mix, 2 Cherries'
  end

end






