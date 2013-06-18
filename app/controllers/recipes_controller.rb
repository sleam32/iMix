class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new
  end

  def new
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.create( params[:recipe] )
    flash[:notice] = "#{@recipe.drink_name} Created!"
    redirect_to new_ingredient_url(@recipe)
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to recipe_path
    else
      render 'edit'
    end
  end

  def show
    Rails.logger.info params
    @recipe = Recipe.find( params[:id])
    Rails.logger.info @recipe
    Rails.logger.info Ingredient.pluck(:recipe_id).uniq
    @ingredients = Ingredient.where(recipe_id: @recipe.id).all
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.all
  end

  def destroy
    @recipe = Recipe.find( params[:id] )
    @recipe.destroy
    redirect_to :root
  end

end
