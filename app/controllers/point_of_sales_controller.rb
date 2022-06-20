class PointOfSalesController < ApplicationController
  before_action :set_producer, only: [:new, :create, :show, :destroy]

  def new
    @point_of_sale = PointOfSale.new
    authorize @point_of_sale
  end

  def create
    @point_of_sale = PointOfSale.new(point_of_sale_params)
    @point_of_sale.producer = @producer
    if @point_of_sale.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
    authorize @point_of_sale
  end

  def show
    set_point_of_sale
    @point_producer = @point_of_sale.producer
    authorize @point_of_sale
  end

  def destroy
    set_point_of_sale
    @point_of_sale.destroy
    redirect_to producer_path(@producer)
    authorize @point_of_sale
  end

  private

  def point_of_sale_params
    params.require(:point_of_sale).permit(:producer_id, :market_id)
  end

  def set_point_of_sale
    @point_of_sale = PointOfSale.find(params[:id])
  end

  def set_producer
    @producer = Producer.find(params[:producer_id])
  end
end
