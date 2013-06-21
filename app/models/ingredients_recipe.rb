class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredient, :recipe
  belongs_to :recipe
  belongs_to :ingredient
end
