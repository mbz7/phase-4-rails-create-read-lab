class PlantsController < ApplicationController
  # GET /birds
  def index
    plants = Plant.all
    render json: plants
  end

  # GET /birds/:id
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  # POST /birds
  def create
    # bird = Bird.create(name: params[:name], species: params[:species])
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
