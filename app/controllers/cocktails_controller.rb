class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # fetch doses, ingredients
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # do something
  end
end
