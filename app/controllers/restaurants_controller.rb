class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reviews = Review.all
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address, :category)
  end
end
