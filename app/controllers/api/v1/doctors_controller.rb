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

  def show
    doctor_json = DoctorSerializer.new(@doctor).serializable_hash
    render json: doctor_json
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: DoctorSerializer.new(@doctor), status: :created
    else
      resp = {
        error: @doctor.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @doctor.update(doctor_params)
      render json:  DoctorSerializer.new(@doctor), status: :ok
    else
      error_resp = {
        error: @doctor.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
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
