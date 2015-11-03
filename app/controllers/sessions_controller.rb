class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "logged in!"

    else
      flash[:danger] = "invalid login credentials"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "logged out!"
  end
end


# # /restuarant/:restaurant_id/comments
# def create
#   @comment = Comment.new
#   @comment.content = params[:comment][:content]
#   @comment.restaurant_id = params[:restaurant_id]
#   @comment.user_id = current_user.id
#   @comment.rating = params[:comment][:rating]
#   if @comment.save
#     redirect_to restaurant_path(params[:restaurant_id])
#   else
#     @comment.errors.messages
#     redirect_to restaurant_path(params[:restaurant_id])
#   end
# end