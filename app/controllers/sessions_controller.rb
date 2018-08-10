class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id.to_s
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

  def fb_create 
    binding.pry
    @user = User.find_or_create_by(id: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.password = auth['info']['name']
      u.password_confirmation = auth['info']['name']
    end
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy 
    session.clear
    redirect_to root_path
  end

  private 
    
  def auth
    request.env['omniauth.auth']
  end

end