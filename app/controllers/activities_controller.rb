class ActivitiesController < ApplicationController

    def index 
        render json: Activity.all
    end

    def show 
        activity = Activity.find(params[:id])
        render json: activity, status: :ok 
    end
    
    def destroy 
        Activity.find(params[:id]).destroy
        head :no_content
    end
end