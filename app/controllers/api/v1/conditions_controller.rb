class Api::V1::ConditionsController < ApplicationController
  before_action :set_condition, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @conditions = current_user.conditions
      render json: ConditionSerializer.new(@conditions)
    else
      render json: {
        error: "You must be logged in to view conditions."
      }
    end
  end

  def show
    condition_json = ConditionSerializer.new(@condition).serializable_hash
    render json: condition_json
  end

  def create
    @condition = current_user.conditions.build(condition_params)
    if @condition.save
      render json: ConditionSerializer.new(@condition), status: :created
    else
      resp = {
        error: @condition.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @condition.update(condition_params)
      render json:  ConditionSerializer.new(@condition), status: :ok
    else
      error_resp = {
        error: @condition.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    if @condition.destroy
      render json: { data: "Condition successfully deleted." }, status: :ok
    else
      error_resp = {
        error: "Condition not found and not deleted."
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
  def set_condition
    @condition = Condition.find(params[:id])
  end

  def condition_params
    params.require(:condition).permit(:name, :user_id)
  end
end
