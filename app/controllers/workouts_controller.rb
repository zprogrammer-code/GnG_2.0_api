class WorkoutsController < ApplicationController
    def index
        @user = User.all 

        render json: { user: @user}
    end

    def create
        @user Workout.create(
            name: params[:name],
            weight: params[:weight],
            sets: params[:sets],
            reps: params[:reps]
        )
        render json: { workout: @workout}, status: :created
end
