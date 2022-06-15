class ProducersController < ApplicationController
  before_action :set_producer, only: %i[show edit update destroy]

  def index
    @producers = policy_scope(Producer).order(created_at: :desc)
    if params[:query].present?
      @producers = Producer.global_search(params[:query])
    end
    @markers = @producers.geocoded.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { producer: producer }),
        image_url: helpers.asset_url("https://res.cloudinary.com/dj0dllkwn/image/upload/v1655307157/radis_d7d8gz.jpg")
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
