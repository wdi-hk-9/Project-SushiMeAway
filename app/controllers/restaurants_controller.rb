class RestaurantsController < ApplicationController

  def index
    district_id = params[:restaurant][:district_id]
    if district_id != ""
      @restaurants = Restaurant.where(district_id: district_id)
    else
      @restaurants = Restaurant.all
    end
    render 'index'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments
    @comment = Comment.new
    @ratings = @restaurant.ratings
    @rating = Rating.new
  end
end
