class MarketsController < ApplicationController
  before_action :set_market, only: [:show]

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
