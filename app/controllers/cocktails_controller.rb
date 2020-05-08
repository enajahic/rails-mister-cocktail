class CocktailsController < ApplicationController
  skip_before_action :verify_authenticity_token
def index
    @cocktails = Cocktail.all
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
    @cocktail = Cocktail.find(params[:id])
  end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])
  # end

  def cocktail_params
    params.require(:cocktail).permit(:name, :keyword)
  end
  def search
    @cocktail = Cocktail.where("name = ?", params[:keyword])
  end
end