class Cars::BuildController < ApplicationController
  include Wicked::Wizard

  steps :location, :picture

  def show
    @car = Car.find(params[:car_id])
    render_wizard
  end

  def update
    @car = Car.find(params[:car_id])
    @car.update(car_params)
    render_wizard @car
  end

  def create
    @car = Car.create
    redirect_to wizard_path(steps.first, :car_id => @car.id)
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def car_params
    params.require(:car).permit(:brand, :model, :year, :rentaldates, :price, :location, :auto_transmission, :mileage, :color, :image_url, :remarks, :avatar, :brand_id)
  end

  def finish_wizard_path
    cars_path
  end
end