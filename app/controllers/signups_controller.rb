class SignupsController < ApplicationController
   
    def index 
        render json: Signup.all
    end

    def create  
        signup = Signup.create(signups_params_permit)
        render json: signup,serializer: SigupReturnSerializer, status: :created 
    end

end