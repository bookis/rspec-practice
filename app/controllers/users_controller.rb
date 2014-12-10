class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.new(params.require(:user).permit(:email))
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end
end
