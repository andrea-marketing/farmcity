class MarketsController < ApplicationController
  before_action :set_market, only: [:show]

  def index
    if params[:query].present?
      PgSearch::Multisearch.rebuild(policy_scope(Market).order(created_at: :desc).geocoded)

      @markets = PgSearch.multisearch(params[:query])

      @markets = @markets.map(&:searchable)
      # @markets = market.where(id: @markets.map(&:id))
    else
      @markets = policy_scope(Market).order(created_at: :desc)
    end
    @markers = @markets.map do |market|
      {
        lat: market.latitude,
        lng: market.longitude,
        info_window: render_to_string(partial: "info_window", locals: { market: market }),
        image_url: helpers.asset_url("market.png")
      }
    end
    @markets = policy_scope(Market).order(created_at: :desc)
  end

  def show
    @market_producer = @market.producers
    authorize @market

    @markers = @market.producers.geocoded.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        info_window: render_to_string(partial: "producers/info_window_producers", locals: { producer: producer }),
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
    params.require(:market).permit(:address, :name, :description, :market_type, :opening_time, :photo)
  end

  def set_market
    @market = Market.find(params[:id])
  end

  def set_point_of_sale
    @point_of_sale = PointOfSale.find(params[:id])
  end
end
