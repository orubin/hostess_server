class Api::V1::OrdersController < Api::V1::ApplicationController

  def index

  end

  def create
    result = []

    render json: result
  end

  def create
    render json: { code: 500, error: 'Params missing' } unless validate_params and return

    Order.find_or_initialize(params[:id], params[:id])

    render json: { code: 200, error: nil }
  end

  def create_waiting
    render json: { code: 500, error: 'Params missing' } unless validate_params and return

    Order.find_or_initialize(params[:id], params[:id])

    render json: { code: 200, error: nil }
  end

  def history

  end

  private

  def validate_params
    return false unless params[:id].present? || params[:id].present? || params[:id].present?
    true
  end

end
