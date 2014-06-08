class CarItemsController < ApplicationController
  include CurrentLease
  before_action :authenticate_user!
  before_action :set_lease, only: [:create]
  before_action :set_car_item, only: [:show, :edit, :update, :destroy]

  # GET /car_items
  # GET /car_items.json
  def index
    @car_items = CarItem.all
  end

  # GET /car_items/1
  # GET /car_items/1.json
  def show
  end

  # GET /car_items/new
  def new
    @car_item = CarItem.new
  end

  # GET /car_items/1/edit
  def edit
  end

  # POST /car_items
  # POST /car_items.json
  def create
    car = Car.find(params[:car_id])
    @car_item = @lease.car_items.build(car: car)
    redirect_to edit_car_item_path(car)
    
    # respond_to do |format|
    #   if @car_item.save
    #     format.html { redirect_to edit_car_item_path(car), notice: 'Car item was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @car_item }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @car_item.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /car_items/1
  # PATCH/PUT /car_items/1.json
  def update
    respond_to do |format|
      if @car_item.update(car_item_params)
        format.html { redirect_to @car_item, notice: 'Car item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_items/1
  # DELETE /car_items/1.json
  def destroy
    @car_item.destroy
    respond_to do |format|
      format.html { redirect_to car_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_item
      @car_item = CarItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_item_params
      params.require(:car_item).permit(:car_id, :lease_id, :startdate, :enddate)
    end
end
