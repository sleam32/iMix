class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.create( params[:ingredient] )
    flash[:notice] = "#{@IngredientsRecipe.name} Mixed!"
    redirect_to :root(@ingredient)
    @IngredientsRecipe.save
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @recipe = Recipe.find(params[:ingredients][:recipe])
    @ingredient.recipes << @recipe
    redirect_to recipe_path(@ingredient)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    redirect_to edit_ingredient_path
  end

  def destroy
    Ingredient.destroy_all("id IN ?", params[:ingredients])
    redirect_to :action =>
  end


end