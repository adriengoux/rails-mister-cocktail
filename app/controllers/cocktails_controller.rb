class CocktailsController < ApplicationController
  before_action :set_cocktail, only: :show


  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save!

    redirect_to cocktail_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @dose = Dose.new
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end

end