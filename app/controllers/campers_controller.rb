class CampersController < ApplicationController

   

    def index 
       render json: Camper.all 
    end 

    def create 
        camper = Camper.create!(camper_permit)
        render json: camper, status: :created
    end

    def show 
        camper = get_camper
        render json: camper, serializer: CampersEachSerializer, status: :ok
    end

    def destroy 
        camper = get_camper
        camper.destroy
        render json: {message: "deleted"}, status: :no_content
    end

    private 
    def get_camper 
        Camper.find(params[:id])
    end

    def camper_permit
        params.permit(:name, :age)
    end

   
end
