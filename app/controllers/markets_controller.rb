class MarketsController < ApplicationController
  before_action :set_market, only: [:show]

  def index
    @markets = policy_scope(Market).order(created_at: :desc)
  end

  def show
    @market_producer = @market.producers
    authorize @market

    @markers = @market.producers.geocoded.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        info_window: render_to_string(partial: "producers/info_window", locals: { producer: producer }),
        image_url: helpers.asset_url("ble.png")
      }
    end

    @markers << {
      lat: @market.latitude,
      lng: @market.longitude,
      info_window: render_to_string(partial: "info_window", locals: { market: @market }),
      image_url: helpers.asset_url("market.png")
    }
  end

  private

  def market_params
    params.require(:market).permit(:address, :name, :description, :market_type, :opening_time)
  end

  def set_market
    @market = Market.find(params[:id])
  end

  def set_point_of_sale
    @point_of_sale = PointOfSale.find(params[:id])
  end
end
