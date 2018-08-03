class RatingsController < ApplicationController 
  def new 
    @rating = Rating.new
  end 

  def create 
    @franchise = Franchise.find(params[:franchise_id])
    @user = User.find(session[:user_id])
    @rating = Rating.new(ratings_params)
    @rating.franchise = @franchise 
    @rating.user = @user
    if @rating.valid?
      @rating.save 
      redirect_to franchise_path(@franchise)
    else 
      redirect_to new_franchise_rating_path(@franchise)
    end
  end

  private 

  def ratings_params 
    params.permit(:stars)
  end
end