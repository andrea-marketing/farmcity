class ProducersController < ApplicationController

  before_action :set_producer, only: %i[show edit update]

  def index
    @producers = policy_scope(Producer).order(created_at: :desc)
  end

  def show
    @producer = Producer.new
    authorize @producer
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

  private

  def set_producer
    @producer = Producer.find(params[:id])
  end

  def producer_params
    params.require(:producer).permit(:producer_type, :name, :address, :description, :contact, :user_id, :photo)
  end
end
