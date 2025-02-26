class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  private 

  def render_unprocessable_entity(error)
    # render json: {error: error.record.errors}, status: :unprocessable_entity
    render json: {error: error}, status: :unprocessable_entity
  end

  def render_not_found(error)
    render json: {error: error}, status: :not_found
  end

  def signups_params_permit 
    params.permit(:time, :camper_id, :activity_id)
  end
end
