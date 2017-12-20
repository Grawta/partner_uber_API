class UberPickupsController < ApplicationController
  before_action :set_uber_pickup, only: [:show, :update, :destroy]

  # GET /uber_pickups
  def index
    @uber_pickups = UberPickup.all

    render json: @uber_pickups
  end

  # GET /uber_pickups/1
  def show
    render json: @uber_pickup
  end

  # POST /uber_pickups
  def create
    @uber_pickup = UberPickup.new(uber_pickup_params)

    if @uber_pickup.save
      render json: @uber_pickup, status: :created, location: @uber_pickup
    else
      render json: @uber_pickup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /uber_pickups/1
  def update
    if @uber_pickup.update(uber_pickup_params)
      render json: @uber_pickup
    else
      render json: @uber_pickup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uber_pickups/1
  def destroy
    @uber_pickup.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uber_pickup
      @uber_pickup = UberPickup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def uber_pickup_params
      params.require(:uber_pickup).permit(:pickup_time, :pickup_place)
    end
end
