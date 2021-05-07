class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render json: @user
    else
      render json: {
        error: "Invalid"
      }
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
        error: "Please Log In."
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "Logged out."
    }
  end

end
