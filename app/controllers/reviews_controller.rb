class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save # => true or false
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  def new

  end
  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

end
