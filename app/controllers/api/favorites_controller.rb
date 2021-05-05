class FavoritesController < ApplicationController
  def index
    render :json => Favorite.all
  end

  def create
    @favorite = Favorite.find_or_create_by(
      oil: params["id"],
    )
    render json: @favorite
  end

  def show
    render json: @favorite
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json: @favorite
  end


end
