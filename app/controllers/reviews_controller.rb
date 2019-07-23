class ReviewsController < ApplicationController
  def index

  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(params[review_params])
    @review.restaurant = Restaurant.find(params[:restaurant_id])

    if @review.save
      redirect_to restaurant_path(@review[:restaurant_id])
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
