class RecipesController < ApplicationController
  def index
    @drink_name = Drink_Name.all
    @user_name = User_Name.all
    @state = State.all
  end

  def new
    @drink_name = Drink_Name.new
    @user_name = User_Name.new
    @state = State.new
  end

  def create
    @drink_name = Drink_Name.create( params[:drink_name] )
    flash[:notice] = "Added!"
    @user_name = User_Name.create( params[:user_name] )
    flash[:notice] = "Added!"
    @state = State.create( params[:state] )
    flash[:notice] = "Added!"
    # redirect_to :root
  end

  def update!
    @drink_name = Drink_Name.update
    @user_name = User_Name.update
    @state = State.update
  end
end
