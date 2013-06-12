class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create( params[:ingredient] )
    flash[:notice] = "Your ingredient has now been added!"
    redirect_to :root
  end

end