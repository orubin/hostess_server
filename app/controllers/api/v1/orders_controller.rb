class Api::V1::OrdersController < Api::V1::ApplicationController

  def index

  end

  def create
    result = []

    render json: result
  end

  def create_order
    render json: { code: 200, error: nil }
  end

  def create_order_waiting
    render json: { code: 200, error: nil }
  end

  def history

  end

end
