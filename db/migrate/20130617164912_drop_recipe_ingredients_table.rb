class DropRecipeIngredientsTable < ActiveRecord::Migration
  def up
    drop_table :recipe_ingredients
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
