class ReviewsController < ApplicationController
    before_action :set_cocktail,  only: [:new, :create]
    before_action :set_review, only: [:edit, :update, :destroy]
    helper ReviewsHelper

    def new
      @review = Review.new
    end
  
    def create
      @review = Review.new(review_params)
      @review.cocktail = @cocktail
  
      if @review.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @review.update(review_params)
        redirect_to cocktails_path(@review.cocktail)
      else
        render :edit
      end
    end
  
    def destroy
      @review.destroy
      flash[:success] = "Review has been destroyed successfully!"
      redirect_to cocktail_path(@review.cocktail)
    end
  
  
    private
  
    def set_review
      @review = Review.find(params[:review_id])
    end
  
    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end
  
    def review_params
      params.require(:review).permit(:title, :content, :rating)
    end
  end