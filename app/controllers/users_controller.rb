class UsersController < ApplicationController 
  layout "application"

  def welcome 
  end

  def new
    @user = User.new
  end

  def create 
  end
end