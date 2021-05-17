class Api::V1::DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :destroy]

  # GET /users
  def index
    # @doctors = Doctor.all
    if logged_in?
      @doctors = current_user.doctors

      render json: DoctorSerializer.new(@doctors)
    else
      render json: {
        error: "You must be logged in to view doctors."
      }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def doctor_params
    params.require(:doctor).permit(:name, :phone_number, :specialty, :location)
  end
end
