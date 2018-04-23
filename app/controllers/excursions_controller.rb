class ExcursionsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_excursion, only: %i[show edit update destroy]

  def index
  @excursions = Excursion.all
  end

  def show

  end

  def new
    @excursion = Excursion.new
  end

  def create
    @excursion = Excursion.create(excursion_params)
    if @excursion.save
      redirect_to excursion_path(@excursion)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @excursion.update(excursion_params)
    redirect_to excursion_path(@excursion)
  end

  def destroy
    @excursion.destroy
    redirect_to excursions_path
  end

 private
  def set_excursion
    @excursion = Excursion.find(params[:id])
  end

  def excursion_params
    params.require(:excursion).permit(:name, :address, :country, :interest)
  end


end
