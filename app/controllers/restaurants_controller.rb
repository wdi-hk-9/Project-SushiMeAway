class RestaurantsController < ApplicationController
  before_action :get_id

  def index
    district_id = get_id
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

  private
  def get_id
    if params[:restaurant]
      return params[:restaurant][:district_id]
    else
      return ""
    end
  end
end
