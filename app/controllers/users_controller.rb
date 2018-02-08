class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    respond_with(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  private

  helper_method :user

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def user
    @user ||= User.find(params[:id])
  end
end
