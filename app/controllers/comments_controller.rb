class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content = params[:comment][:content]
    @comment.restaurant_id = params[:restaurant_id]
    @comment.user_id = current_user.id
    @comment.rating = params[:comment][:rating]
    if @comment.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      @comment.errors.messages
      redirect_to restaurant_path(params[:restaurant_id])
    end
  end
end


# /restuarant/:restaurant_id/comments
