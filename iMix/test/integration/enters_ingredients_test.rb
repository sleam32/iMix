require 'test_helper'

class EntersIngredientsTest < ActionDispatch::IntegrationTest
  test "enter a list of ingredients" do
    Ingredient.create!(name: "Jack Daniels")
    Ingredient.create!(name: "Crown Royal")
    Ingredient.create!(name: "Basil Hayden")


    assert_equal 3, Ingredient.count
    assert_include page.body, "Drunko_Dex"
    assert_include page.body, "Jack Daniels"
    assert_include page.body, "Crown Royal"
    assert_include body, "Basil Hayden"

  end
end