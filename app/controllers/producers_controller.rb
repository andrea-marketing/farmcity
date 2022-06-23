class ProducersController < ApplicationController
  before_action :set_producer, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token, only: :filter

  def index
    # variables
      search

      respond_to do |format|
        format.html # Follow regular flow of Rails
        format.json { render json: {
          producers: (render_to_string partial: 'producers', locals: { producers: @producers }, formats: [:html]),
          markets: (render_to_string partial: 'markets', locals: { markets: @markets }, formats: [:html]),
         }
        }
      end
  end


  def filter
    search

    categories_id = params[:categories_id]
    categories = categories_id.empty? ? ActsAsTaggableOn::Tag.all : ActsAsTaggableOn::Tag.find(categories_id)

    categories_name = categories.map do |category|
      category.name
    end

    @producers = @producers.tagged_with(categories_name, :any => true)

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'producers', locals: { producers: @producers }, formats: [:html] }
    end

    skip_authorization

  end

  def search
    @producers = policy_scope(Producer).order(created_at: :desc).geocoded
    @markets = policy_scope(Market).order(created_at: :desc).geocoded
    @address = params[:address]
    @markers = []

    # index producers
    if params[:query].present?
      PgSearch::Multisearch.rebuild(@producers)

      @producers = PgSearch.multisearch(params[:query])

      producers_ids = @producers.map(&:searchable).map(&:id)
      @producers = Producer.where(id: producers_ids)
    end

    if params[:address].present?
      @producers = @producers.near(params[:address], 90)
    end

    @producers.map do |producer|
      @markers << {
        lat: producer.latitude,
        lng: producer.longitude,
        info_window: render_to_string(partial: "info_window_producers", locals: { producer: producer }, formats: [:html]),
        image_url: helpers.asset_url("ble.png")
      }
    end

    @categories = Producer.category_counts

    # index markets
    @markets = policy_scope(Market).order(created_at: :desc)
    if params[:query].present?
      PgSearch::Multisearch.rebuild(@markets)

      @markets = PgSearch.multisearch(params[:query])

      markets_ids = @markets.map(&:searchable).map(&:id)
      @markets = Market.where(id: markets_ids)
    end

    if params[:address].present?
      @markets = @markets.near(params[:address], 30)
    end

    @markets.map do |market|
      if market.market_type == "🧑‍🌾 Market"
        photo = "market.png"
      else
        photo = "panier-de-courses.png"
      end
      @markers << {
        lat: market.latitude,
        lng: market.longitude,
        info_window: render_to_string(partial: "info_window_markets", locals: { market: market }, formats: [:html]),
        image_url: helpers.asset_url(photo)
      }
    end
  end

  def show
    authorize @producer
    @product = Product.new
  end

  def new
    @producer = Producer.new
    authorize @producer
  end

  def create
    @producer = Producer.new(producer_params)
    @producer.user = current_user
    categories = params[:producer][:categories].reject(&:empty?)
    @producer.category_list = categories
    if @producer.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
    authorize @producer
  end

  def edit
    authorize @producer
  end

  def update
    categories = params[:producer][:categories].reject(&:empty?)
    @producer.category_list = categories
    @producer.update(producer_params)
    redirect_to producer_path
    authorize @producer
  end

  def destroy
    @producer.destroy
    redirect_to root_path
    authorize @producer
  end

  private

  def set_producer
    @producer = Producer.find(params[:id])
  end

  def producer_params
    params.require(:producer).permit(:producer_type, :name, :address, :description, :contact, :user_id, photos: [])
  end
end
