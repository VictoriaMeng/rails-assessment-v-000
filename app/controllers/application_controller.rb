class ApplicationController < ActionController::Base
  
  def current_user 
    User.find(session[:user_id])
  end

  private 

  def require_login
    unless session.include?(:user_id)
      flash[:errors] = "You must be logged in as the correct user to view this page."
      redirect_to root_path
    end
  end

end
