class UsersController < ApplicationController 
  layout "application"

  def welcome 
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.valid?
      @user.save 
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end 
  end

  def show 
    @user = User.find(session[:user_id])
  end

  private 

  def user_params 
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end