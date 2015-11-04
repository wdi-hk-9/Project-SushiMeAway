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
    @comments = Comment.all
    @comment = Comment.new
    @restaurant = Restaurant.find(params[:id])
  end
end

# /restaurant/1
