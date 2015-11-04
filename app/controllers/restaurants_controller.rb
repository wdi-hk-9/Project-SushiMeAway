class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def search
    district_id = params['restaurant']['district_id']
    @restaurants = District.find(district_id).restaurants
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
