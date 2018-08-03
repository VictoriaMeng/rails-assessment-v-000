class RatingsController < ApplicationController 
  def new 
    @rating = Rating.new
  end 

  def create 
    binding.pry
  end
end