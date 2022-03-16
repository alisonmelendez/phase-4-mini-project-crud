class SpicesController < ApplicationController
    
    #GET /spices
    def index
        spices = Spice.all
        render json: spices
    end

    #POST /spices
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created 
    end

    #PATCH /spices/:id
    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice 
    end

    #DELETE /spices/:id
    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
    end

    private 
    
    def spice_params
        params.permit(:description, :notes, :rating, :title, :image)
    end

end
