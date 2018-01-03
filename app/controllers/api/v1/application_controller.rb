class Api::V1::ApplicationController < ActionController::Base

  before_action :set_default_json_format

  protected

  def set_default_json_format
    request.format = :json
  end

  # def handle_error(error, notify = false)
  #   @errored = true
  #   Gett::Ops.report_error(error, parameters: params) if notify && Rails.env.production?
  #   return if performed?
  #   render_error error
  # end
  #
  # def render_error(error)
  #   status = error.try(:status_code) || 500
  #   render json: error.to_json, status: status
  # end
end
