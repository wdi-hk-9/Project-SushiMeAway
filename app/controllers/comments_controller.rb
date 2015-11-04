class CommentsController < ApplicationController
  before_action :authenticate
  before_filter :set_restaurant

  def create
    @comment = @restaurant.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to restaurant_path(@restaurant)
    end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end
end
