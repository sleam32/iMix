class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.create( params[:ingredient] )
    flash[:notice] = "#{@ingredient.name} Mixed!"
    redirect_to :action => "new"
  end

  def update!
    @ingredient = Ingredient.update
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    redirect_to edit_ingredient_path
  end

  def destroy
    @ingredient = Ingredient.find( params[:id] )
    @ingredient.destroy
    redirect_to :root
  end


end