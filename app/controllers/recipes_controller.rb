class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create( params[:recipe] )
    flash[:notice] = "Added!"
    redirect_to new_ingredient_url
  end

  def update!
    @drink_name = Drink_Name.update
    @user_name = User_Name.update
    @state = State.update
  end

  def show
    @recipe = Recipe.find( params[:id])
  end
end
