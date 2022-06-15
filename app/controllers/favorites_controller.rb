class FavoritesController < ApplicationController
  def index
    @favorites = policy_scope(Favorite).order(created_at: :desc)
  end

  def create
    @favorite = Favorite.new
    @producer = Producer.find(params[:producer_id])
    @favorite.producer = @producer
    @favorite.user = current_user
    authorize @favorite
    if @favorite.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
    authorize @favorite
  end
end
