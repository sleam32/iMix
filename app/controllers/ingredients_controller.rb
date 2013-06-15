class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create( params[:ingredient] )
    # if @ingredient.save
    #   RecipeIngredient.create(recipe_id: Recipe.last.id, ingredient_id: Ingredient.last.id)
    # end
    flash[:notice] = "Your ingredient has now been added!"
    redirect_to :action => "new"
  end

  def update!
    @ingredient = Ingredient.update
  end

end