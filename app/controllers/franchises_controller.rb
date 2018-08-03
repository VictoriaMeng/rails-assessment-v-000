class FranchisesController < ApplicationController 
  def index 
    @franchises = Franchise.all
  end

  def show 
    @franchise = Franchise.find(params[:id])
  end
end