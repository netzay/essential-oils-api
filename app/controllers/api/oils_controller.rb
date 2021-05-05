class Api::OilsController < ApplicationController
before_action :get_oil, only: [:show, :update, :destroy]

before_action :set_oil, only: [:show, :update, :destroy]

  def index
    render json: Oil.all
  end

  def create
    oil = Oil.new(oil_params)
    if oil.save
      render json: oil
    else
      render json: { message: oil.errors }, status: 400
    end
  end

  def show
    render json: @oil
  end

  # def update
  #  @oil = Oil.find(params[:id])
  #   if @oil.update(oil_params) && @oil
  #     render json: @oil
  #   else
  #     render json: { message: oil.errors }, status: 400
  #   end
  # end

  def destroy
    @oil = Oil.find(params[:id])
    if @oil.destroy && @oil
      render json: { message: "Deleted" }, status: 201
    else
      render json: { message: "Unable to remove this oil" }, status: 400
    end
  end



  private

  def set_oil
    @oil = Oil.find_by(id: params[:id])
  end

  def get_oil
    @oil = Oil.find_by(id: params[:id])
  end

  def oil_params
    params.require(:oil).permit(:name, :uses, :description, :img_url)
  end
end