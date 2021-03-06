class BoatsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_boat, only: %i[show edit update destroy]

  def index
  #@boats = Boat.all
@search = Boat.ransack(params[:q])
@boats = @search.result

 # @boats = Boat.where.not(latitude: nil, longitude: nil)
  @markers = @boats.map do |boat|
    {
      lat: boat.latitude,
        lng: boat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show

  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.create(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
  end

  private
  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :itinerary, :country, :board, :price, :address, :description, :photo)
  end

end
