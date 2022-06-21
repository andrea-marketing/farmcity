class ProducersController < ApplicationController
  before_action :set_producer, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token, only: :filter

  def index
    # if params[:query].present?
    #   @producers = Producer.global_search(params[:query])
    # end
    @producers = policy_scope(Producer).order(created_at: :desc).geocoded
    @address = params[:address]


    if params[:query].present?
      PgSearch::Multisearch.rebuild(@producers)

      @producers = PgSearch.multisearch(params[:query])

      producers_ids = @producers.map(&:searchable).map(&:id)
      @producers = Producer.where(id: producers_ids)
      # @producers = Producer.where(id: @producers.map(&:id))
    end

    if params[:address].present?
      @producers = @producers.near(params[:address], 200)
    end

    @markers = @producers.map do |producer|
      {
        lat: producer.latitude,
        lng: producer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { producer: producer }),
        image_url: helpers.asset_url("ble.png")
      }
    end

    @categories = Producer.category_counts
  end

  def filter
    categories_id = params[:categories_id]
    categories = ActsAsTaggableOn::Tag.find(categories_id)

    categories_name = categories.map do |category|
      category.name
    end

    @producers = Producer.tagged_with(categories_name, :any => true)

    if @producers.empty?
      respond_to do |format|
        format.html # Follow regular flow of Rails
        format.text { render partial: 'producers', locals: { producers: Producer.all }, formats: [:html] }
      end
    else
      respond_to do |format|
        format.html # Follow regular flow of Rails
        format.text { render partial: 'producers', locals: { producers: @producers }, formats: [:html] }
      end
    end

    skip_authorization

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
