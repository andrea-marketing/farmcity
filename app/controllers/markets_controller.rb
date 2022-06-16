class MarketsController < ApplicationController
  before_action :set_market, only: [:show]

  def index
    @markets = policy_scope(Market).order(created_at: :desc)
    @markers = @markets.geocoded.map do |market|
      {
        lat: market.latitude,
        lng: market.longitude,
        info_window: render_to_string(partial: "info_window", locals: { market: market }),
        image_url: helpers.asset_url("ble")
      }
    end
  end

  def show
    @market_producer = @market.producers
    authorize @market
  end

  private

  def market_params
    params.require(:market).permit(:address, :name, :description)
  end

  def set_market
    @market = Market.find(params[:id])
  end

  def set_point_of_sale
    @point_of_sale = PointOfSale.find(params[:id])
  end
end
