class ProductsController < ApplicationController
  def new
    @producer = Producer.find(params[:producer_id])
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    categories = params[:product][:categories].reject(&:empty?)
    @product.category_list = categories
    @producer = Producer.find(params[:producer_id])
    @product.producer = @producer
    @product.user = current_user
    if @product.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
    authorize @product
  end

  def edit
    @producer = Producer.find(params[:producer_id])
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @producer = Producer.find(params[:producer_id])
    @product = Product.find(params[:id])
    categories = params[:product][:categories].reject(&:empty?)
    @product.category_list = categories
    @product.update(product_params)
    redirect_to producer_path(@producer)
    authorize @product
  end

  def destroy
    @producer = Producer.find(params[:producer_id])
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to producer_path(@producer)
    authorize @product
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :producer_id, :user, :photo)
  end
end
