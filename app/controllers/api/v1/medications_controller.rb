class Api::V1::MedicationsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :destroy]

  def index
    # @doctors = Doctor.all
    if logged_in?
      @medications = current_user.medications

      render json: MedicationSerializer.new(@medications)
    else
      render json: {
        error: "You must be logged in to view medications."
      }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_medications
    @medication = Medication.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def medication_params
    params.require(:medication).permit(:name, :prescription, :user_id, :condition_id, :doctor_id)
  end
end
