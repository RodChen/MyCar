class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_car, only: [:edit, :update, :destroy,
    :edit_location, :edit_pictures, :edit_calendar]
  
  # GET /cars
  # GET /cars.json
  def index
    if current_user.blank?
      #redirect_to user_session_path
      @cars = {}
    else
      @cars = current_user.cars
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.find(params[:id]) #current_user.cars.find(params[:id])
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # GET /cars/1/edit_location
  def edit_location
  end

  # GET /cars/1/edit_pictures
  def edit_pictures

  end

  # GET /cars/1/edit_calendar
  def edit_calendar    
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = current_user.cars.new(car_params)
  
    respond_to do |format|
      if @car.save
        format.html { redirect_to car_build_index_path @car }

        #format.html { redirect_to @car, notice: 'Car was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @car }
      else
        format.html { render action: 'new' }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update

    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :no_content }
    end
  end

  def search
    @cars = Car.search params[:search]
    @hash = Gmaps4rails.build_markers(@cars) do |car, marker|
      marker.lat car.latitude
      marker.lng car.longitude
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
    #  if (params[:id].is_a? Integer)
        @car = current_user.cars.find(params[:id])
    #  else
    #    @car = current_user.cars.find(21)
    #  end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:brand, :model, :year, :rentaldates, :price, :location,
        :auto_transmission, :mileage, :color, :image_url, :remarks, :avatar, :brand_id, pictures_attributes: [:id, :title, :image, :_destroy])
    end
end
