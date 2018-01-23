class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      respond_with(@user)
    end
  end

  def show
   @user = User.new(user_params)
  end

  private

  helper_method :user

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
