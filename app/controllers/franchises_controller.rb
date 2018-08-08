class FranchisesController < ApplicationController 
  def index 
    @franchises = Franchise.all
  end

  def show 
    @franchise = find
    @rating = current_user.rating_by_franchise(@franchise)  
  end

  def new 
    @franchise = Franchise.new 
  end

  private 

  def find 
    Franchise.find(params[:id])
  end
end