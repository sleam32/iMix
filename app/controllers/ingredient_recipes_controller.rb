class IngredientRecipesController < ApplicationController

  def new
    @ingredient_recipe = IngredientRecipe.new
    @ingredients = Ingredients.all
  end

  def destroy
    @ingredient_recipe = IngredientRecipe.find params[:id]
    @ingredient_recipe.destroy
    flash[:notice] = 'Recipe ingredients removed!'
  end
end