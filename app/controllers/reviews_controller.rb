class ReviewsController < ApplicationController
  def new
    @producer = Producer.find(params[:producer_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @producer = Producer.find(params[:producer_id])
    @review.producer = @producer
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to producer_path(@review.producer)
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :user, :producer)
  end
end
