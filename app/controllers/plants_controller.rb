class PlantController < ApplicationController

    before_action 

    def index
        plants = Plant.all
        
        redner json: plants, status: :found
    end

    def show
        redner json: Plant.find_by(id: params[:id]), status: :found
    end

    def create
        newPlant = Plant.create(plant_params)

        render json: newPlant, status: :created
    end

    private 

    def plant_params
        params.permit(:name, :image, :price)
    end

end
