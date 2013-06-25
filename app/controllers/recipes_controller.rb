class RecipesController < ApplicationController

  def index
    @recipe = Recipe.new
  end

  def new
    if params[:search].blank?
      @recipes = Recipe.all
    else
      @recipes = Recipe.search_by(params[:search])
    end
  end

  def create
    @recipe = Recipe.create( params[:recipe] )
    flash[:notice] = "#{@recipe.drink_name} Created!"
    redirect_to recipe_path(@recipe)
  end

  def update
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.find(params[:recipe][:ingredients])
    @recipe.ingredients << @ingredient
    redirect_to recipe_path(@recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @allIngredients = Ingredient.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end

  def add_ingredient
    @recipe = Recipe.find(params[:id])
    @ingredient = Ingredient.find(params[:ingredient_id])
    @recipe.ingredients << @ingredient
    redirect_to recipe_path
  end

  def destroy
    matching_recipes = Recipe.where(user_name: params[:recipes]).all
    matching_recipes.each do |recipe|
      recipe.destroy
    end
    flash[:notice] = "Successfully Deleted!"
    redirect_to :action => 'index'
  end
end

