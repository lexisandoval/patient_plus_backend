class ApplicationController < ActionController::API

  helpers do
    
    def current_user
      # change this
      User.first
    end

    def logged_in?
      !!current_user
    end

  end

end
