class UsersController < ApplicationController 
  layout "application"

  def welcome 
  end

  def login 
    @user = User.new 
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.find_or_create_by(name: params[:user][:name])
    if @user.valid? && @user.authenticate(params[:user][:password])
      @user.save 
      session[:user_id] = @user.id.to_s
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end 
  end

  def show 
    binding.pry
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