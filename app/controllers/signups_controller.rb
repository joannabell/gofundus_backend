class SignupsController < ApplicationController
    def index 
        render json: Signup.all, status: :ok
    end

    def show 
        signup = Signup.find(params[:id])
        render json: signup, status: :ok 
    end

    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    def update
        signup = Signup.find(params[:id])
        signup.update(signup_params)
        render json: signup, status: :accepted
    end

    def destroy
        signup = Signup.find(params[:id])
        signup.destroy 
        render json: {}, status: :ok
    end

    private 
    
    def signup_params
        params.permit(:sponsor_id, :sponsorship_id)
    end
end
