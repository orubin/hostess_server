class Api::V1::RestaurantsController < Api::V1::ApplicationController

  before_filter :set_restaurant, only: [:special_requests, :restaurant_details]

  def index

  end

  def create
    Restaurant.find_or_initialize_by(id: params[:restaurant_id])
    render json: { code: 200, error: nil }
  end

  def special_requests
    render json: { code: 404, error: 'Not found' } unless @restaurant and return

    result = @restaurant.get_special_requests

    render json: { code: 200, error: nil, body: result } and return
  end

  def restaurant_details
    #render json: { code: 404, error: 'Not found' } unless @restaurant and return

    result = Restaurant.find(params[:restaurant_id]).as_json

    render json: { code: 200, error: nil, data: result } and return
  end

  def get

  end

  def set_restaurant
    return unless params[:restaurant_id]
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
