class FranchisesController < ApplicationController 
  def index 
    @franchises = Franchise.all
  end

  def show 
    @franchise = Franchise.find(params[:id])
    @rating = current_user.rating_by_franchise(@franchise)  
  end
end