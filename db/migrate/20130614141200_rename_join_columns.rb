class RenameJoinColumns < ActiveRecord::Migration
  def change
    rename_column(:recipe_ingredients, :name, :recipe_id)
    rename_column(:recipe_ingredients, :ingredient, :ingredient_id)

  end
end