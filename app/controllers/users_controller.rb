class UsersController < ApplicationController 
  layout "application"
  before_action :require_login, only: [:show]

  def welcome
    redirect_to current_user if current_user
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
      @user = current_user
      @ratings = @user.ratings
    else 
      redirect_to root_path
    end
  end

  def sort
    @user = current_user
    case params[:sort]
    when "most"
      @ratings = @user.sort_by_top_ratings
    when "least"
      @ratings = @user.sort_by_lowest_ratings
    else 
      @ratings = @user.sort_by_franchise_name
    end
    render 'show'
  end

  private 

  def user_params 
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end