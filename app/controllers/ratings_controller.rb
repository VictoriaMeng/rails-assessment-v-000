class RatingsController < ApplicationController 
  def new 
    @rating = Rating.new(franchise_id: params[:franchise_id], user_id: session[:user_id])
  end 

  def create 
    @rating = Rating.new(ratings_params)
    binding.pry
    if @rating.valid?
      @rating.save 
      redirect_to franchise_path(@rating.franchise)
    else 
      redirect_to new_franchise_rating_path(@rating.franchise)
    end
  end

  private 

  def ratings_params 
    params.require(:rating).permit(:stars, :franchise_id, :user_id)
  end
end