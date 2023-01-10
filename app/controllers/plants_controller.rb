class PlantsController < ApplicationController
wrap_parameters format: []

# GET /birds
def index
    plants = Plant.all
    render json: plants
end

# GET /birds/:id with
def show
    plants = Plant.find_by(id: params[:id])
    render json: plants
end

# POST /birds

    def create
    plants = Plant.create(plant_params)
    render json: plants, status: :created
    end


private

    def plant_params
        params.permit(:name, :image, :price)
    end

end


