class CreateIngredientRecipes < ActiveRecord::Migration
  def change
    create_table :ingredient_recipes do |t|
      t.integer :recipe
      t.integer :ingredient

      t.timestamps
    end
  end
end
