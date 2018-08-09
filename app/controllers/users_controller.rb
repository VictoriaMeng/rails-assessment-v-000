class UsersController < ApplicationController 
  layout "application"
  before_action :require_login, only: [:show]

  def welcome 
  end

  def logout 
    session.delete(:user_id)
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.valid?
      @user.save 
      session[:user_id] = @user.id.to_s
      redirect_to user_path(@user)
    else
      render new_user_path
    end 
  end

  def show 
    if session[:user_id] == params[:id]
      @user = User.find(session[:user_id])
    else 
      redirect_to root_path
    end
  end

  private 

  def user_params 
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end