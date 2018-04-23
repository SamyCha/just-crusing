class CabinsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_cabin, only: %i[show edit update destroy]

  def index
    @cabins = Cabin.all
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @cabin = Cabin.new
  end

  def create
    @cabin = Cabin.new(cabin_params)
    @cabin.boat = Boat.find(params[:boat_id])
    @cabin.save
  end

  def show
    @cart_action = @cabin.cart_action current_user.try :id
  end

  def edit
  end

  def update
  end

  def destroy
  end


def cart_action(current_user_id)
  if $redis.sismember "cart#{current_user_id}", id
    "Remove from"
  else
    "Add to"
  end
end







  private
  def set_cabin
    @cabin = Cabin.find(params[:id])
  end

  def cabin_params
    params.require(:cabin).permit(:type, :deck, :bed, :size, :boat_id)
  end



end
