class Admin::RestaurantsController < ApplicationController
  def index
    # @restaurants = current_user.restaurants
    @restaurants = Restaurant.all
  end
end
