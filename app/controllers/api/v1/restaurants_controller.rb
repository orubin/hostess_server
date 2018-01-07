class Api::V1::RestaurantsController < Api::V1::ApplicationController

  def index

  end

  def create
    if params[:consumer] == AvailableConsumers::APPBOY
      authenticate_user! # adds this one to GT in version 7.7
      with_consumer(AppboyCouponCreator)
    elsif params[:consumer] == AvailableConsumers::CPS
      with_consumer(CouponCreator)
    elsif params[:consumer] == AvailableConsumers::GT
      with_consumer(CodeCouponCreator)
    else
      handle_error(Api::V1::Errors::NoConsumerProvided.new('must provide a valid consumer'))
    end

    render json: result
  end

  def special_requests
    restaurant = Restaurant.find(params[:restaurant_id])
    render json: { code: 404, error: 'Not found' } unless restaurant and return

    render json: { code: 200, error: nil, body: result }
  end

  def restaurant_details
    restaurant = Restaurant.find(params[:restaurant_id])
    render json: { code: 404, error: 'Not found' } unless restaurant and return

    result = restaurant.as_json

    render json: { code: 200, error: nil, data: result }
  end

  def get

  end

  def set_restaurant

  end

end
