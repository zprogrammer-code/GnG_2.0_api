class WorkoutsController < ApplicationController
    before_action :authenticate, only: [:index, :create]
    def index
       @workouts = Workout.all
    #    .where( user: @user )
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        render json: { workout: @workouts }
    end

    def create
        @workout = Workout.create(
            name: params[:name],
            weight: params[:weight],
            sets: params[:sets],
            reps: params[:reps],
            user_id: params[:user_id]
            # user: @user
        )
        render json: { workout: @workout}, status: :created
    end


        end
