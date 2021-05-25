class Api::V1::MedicationsController < ApplicationController
  before_action :set_medication, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @medications = current_user.medications
      render json: MedicationSerializer.new(@medications)
    else
      render json: {
        error: "You must be logged in to view medications."
      }
    end
  end

  def show
    medication_json = MedicationSerializer.new(@medication).serializable_hash
    render json: medication_json
  end

  def create
    # @medication = Medication.new(medication_params)
    @medication = current_user.medications.build(medication_params)
    if @medication.save
      render json: MedicationSerializer.new(@medication), status: :created
    else
      resp = {
        error: @medication.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @medication.update(medication_params)
      render json:  MedicationSerializer.new(@medication), status: :ok
    else
      error_resp = {
        error: @medication.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    if @medication.destroy
      render json: { data: "Medication successfully deleted." }, status: :ok
    else
      error_resp = {
        error: "Medication not found and not deleted."
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
  def set_medication
    @medication = Medication.find(params[:id])
  end

  def medication_params
    params.require(:medication).permit(:name, :prescription, :user_id, :condition_id, :doctor_id)
  end

end
