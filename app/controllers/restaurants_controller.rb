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

 #  user = User.find_by_email(params[:email])
 #  if user && user.authenticate(params[:password])
 #    redirect_to root_path, notice: "logged in!"
 #  else
 #   flash.now.alert = "invalid login credentials"
 #   render "new"  # sessions#new
 #  end
 # end
