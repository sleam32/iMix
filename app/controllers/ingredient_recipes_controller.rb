class IngredientRecipesController < ApplicationController
  def new
    @ingredient_recipe = Ingredient.new
  end

  def destroy
    @ingredient_recipe = IngredientRecipe.find params[:id]
    @ingredient_recipe.destroy
    flash[:notice] = 'Recipe ingredients removed!'
  end
end