class RatingsController < ApplicationController
  before_filter :set_restaurant

  def create
    @rating = @restaurant.ratings.new(rating_params)
    @rating.user_id = current_user.id
    if @rating.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to restaurant_path(@restaurant)
    end
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update_attribute :value, params[:value]
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def rating_params
      params.require(:rating).permit(:value)
    end
end