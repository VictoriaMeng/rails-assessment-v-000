class UsersController < ApplicationController 
  layout "application"

  def welcome 
  end

  def new
    @user = User.new
  end

  def create 
    binding.pry
    @user = User.new(user_params)
    binding.pry
    if @user.valid?
      @user.save 
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end 
  end

  def show 
    @user = User.find(params[:id])
  end

  private 

  def user_params 
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end