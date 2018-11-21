class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    # Create a review using the params
    #
    @review = Review.new(review_params)
    # Set the restaurant for this review
    @review.restaurant = @restaurant
    # Then we save it.
    @review.save
    # redirect
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
