class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.string :name
      t.string :ingredient

      t.timestamps
    end
  end
end
