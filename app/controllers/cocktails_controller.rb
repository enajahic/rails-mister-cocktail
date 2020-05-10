class CocktailsController < ApplicationController
  skip_before_action :verify_authenticity_token
  helper AverageHelper

  def index
    @cocktails = Cocktail.all
    @newcocktail = Cocktail.new
  end

  def new
    # @cocktail = Cocktail.find(1)
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  def show
    @newcocktail = Cocktail.new
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @dose.cocktail = @cocktail
    @review = Review.new
    @review.cocktail = @cocktail

  end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])
  # end

  def cocktail_params
    params.require(:cocktail).permit(:name, :keyword)
  end
  def search
    @cocktails = Cocktail.where("name LIKE ?", "%#{params[:keyword]}%" )
  end
end