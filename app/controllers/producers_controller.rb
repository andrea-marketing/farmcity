class ProducersController < ApplicationController
  before_action :set_producer, only: %i[show]

  def index
    @producers = policy_scope(Producer).order(created_at: :desc)
  end

  def show
    @producer = Producer.new
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
