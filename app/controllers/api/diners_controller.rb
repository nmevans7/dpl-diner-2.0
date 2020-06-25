class Api::DinersController < ApplicationController

  def index
    render json: Diner.all
  end

  def create
    @diner = Diner.new(diner_params)
    if @diner.save
      render json: @diner
    else
      render json: { errors: @diner.errors }, status: : uprocessable_entity
    end
  end

  def update
    @diner =Diner.find(params[:id])
    if @diner.update(diner_params)
      render json: @diner
    else
      render json: { errors: @diner.errors }, status: : uprocessable_entity
    end
  end

  def destroy
    Diner.find(params[:id]).destroy
    render json: { message: 'Diner destroyed'}
  end

private

  def diner_params
    params.require(:diner).permit(:name, :address, :hours)
  end


end
