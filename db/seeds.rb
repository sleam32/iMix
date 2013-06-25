# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
class AddIngredientItems < ActiveRecord::Migration
  def up
    Ingredient.delete_all
    Ingredient.create(name: "Vodka")
    Ingredient.create(name: "Whiskey")
    Ingredient.create(name: "Rum")
    Ingredient.create(name: "Gin")
    Ingredient.create(name: "Bourbon")
    Ingredient.create(name: "Scotch")
    Ingredient.create(name: "Rye/Canadian")
    Ingredient.create(name: "Irish Cream")
    Ingredient.create(name: "Tequila")
    Ingredient.create(name: "Brandy/Cognac")
    Ingredient.create(name: "Orange Juice")
    Ingredient.create(name: "Cranberry Juice")
    Ingredient.create(name: "Pineapple Juice")
    Ingredient.create(name: "Tomato Juice")
    Ingredient.create(name: "Grapefruit Juice")
    Ingredient.create(name: "Lemon Juice")
    Ingredient.create(name: "Lime Juice")
    Ingredient.create(name: "Orange Slice")
    Ingredient.create(name: "Lemon Wedge")
    Ingredient.create(name: "Lime Wedge")
    Ingredient.create(name: "Cherries")
    Ingredient.create(name: "Olives")
    Ingredient.create(name: "Tabasco Sauce")
    Ingredient.create(name: "Sugar")
    Ingredient.create(name: "Salt")
    Ingredient.create(name: "Pepper")
    Ingredient.create(name: "Bitters")
    Ingredient.create(name: "Half n Half")
    Ingredient.create(name: "Whipped Cream")
    Ingredient.create(name: "Milk")
    Ingredient.create(name: "Coffee")
    Ingredient.create(name: "Sour Mix")
    Ingredient.create(name: "Grenadine")
    Ingredient.create(name: "Coke")
    Ingredient.create(name: "Sprite")
    Ingredient.create(name: "Diet Coke")
    Ingredient.create(name: "Ginger Ale")
    Ingredient.create(name: "Water")
    Ingredient.create(name: "Lemonade")
    Ingredient.create(name: "Soda Water")
    Ingredient.create(name: "Tonic")
  end

  def down
  end
end
