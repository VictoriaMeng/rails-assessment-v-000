class UsersController < ApplicationController 
  layout "application"
  before_action :require_login, only: [:show]
  before_action :require_correct_user, only: [:show]

  def welcome
    redirect_to current_user if logged_in?
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
    @user = current_user
    @ratings = @user.ratings
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

  def require_correct_user
    unless correct_user?
      flash[:errors] = "Cannot view another user's page"
      redirect_to user_path(session[:user_id])
    end
  end

  def correct_user?
    session[:user_id] == params[:id].to_i
  end

end