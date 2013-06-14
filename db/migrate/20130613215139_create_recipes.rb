class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :drink_name
      t.string :user_name
      t.string :state

      t.timestamps
    end
  end
end
