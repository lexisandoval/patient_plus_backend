class ApplicationController < ActionController::API
  
  def current_user
    # change this
    User.first
  end

  def logged_in?
    !!current_user
  end

end
