class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.new(params.require(:user).permit(:email))
    @user.save
    redirect_to root_path
  end
end
