class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]
  def index
    @destination = Destination.all
  end

  def show

  end
  def edit
  end


  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.save
    redirect_to destination_path(@destination)
  end

  def update
    @destination.update(destination_params)
    redirect_to destination_path(@destination)
  end

  def destroy
    @destination.delete(destination_params)
  end

  private

  def set_destination
    @restaurant = Destination.find(params[:id])
  end
  def destination_params
    params.require(:destination).permit(:name, :distance)
  end
end
end