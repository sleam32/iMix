require 'test_helper'

class EntersIngredientsTest < ActionDispatch::IntegrationTest
  test "enter a list of ingredients" do
    Ingredient.create!(name: "Jack Daniels")
    Ingredient.create!(name: "Crown Royal")
    Ingredient.create!(name: "Basil Hayden")

    assert_equal 3, Ingredient.count
    visit '/'
    assert_include page.body, "iMix"
    assert_include page.body, "Jack Daniels"
    assert_include page.body, "Crown Royal"
    assert_include page.body, "Basil Hayden"
end

  def test_enters_ingredient_ignores_duplicate_names
    Ingredient.create(name: 'foo')
    first_ingredient_count = Ingredient.count
    assert_equal first_ingredient_count, Ingredient.count
  end
end