class Api::V1::UsersController < Api::V1::ApplicationController

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

  def get

  end

end
